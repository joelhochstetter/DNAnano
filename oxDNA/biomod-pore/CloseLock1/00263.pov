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
	<23.936037, 34.783798, 35.100929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309416, 34.922958, 35.135902>,  <24.533443, 35.006454, 35.156887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.309416, 34.922958, 35.135902>,  <23.936037, 34.783798, 35.100929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.309416, 34.922958, 35.135902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062750, -0.081620, 0.994686,
		0.353190, -0.933971, -0.054357,
		0.933445, 0.347902, 0.087434,
		24.589449, 35.027328, 35.162132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372429, 34.299175, 35.530018>,  <23.936037, 34.783798, 35.100929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372429, 34.299175, 35.530018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474962, 34.685558, 35.543968>,  <24.536482, 34.917389, 35.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474962, 34.685558, 35.543968>,  <24.372429, 34.299175, 35.530018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474962, 34.685558, 35.543968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086026, -0.013138, 0.996206,
		0.962752, -0.258363, 0.079730,
		0.256335, 0.965959, 0.034874,
		24.551863, 34.975346, 35.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950298, 34.346588, 36.099701>,  <24.372429, 34.299175, 35.530018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950298, 34.346588, 36.099701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742233, 34.682297, 36.036377>,  <24.617393, 34.883720, 35.998383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742233, 34.682297, 36.036377>,  <24.950298, 34.346588, 36.099701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742233, 34.682297, 36.036377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098391, 0.125238, 0.987236,
		0.848381, 0.529100, 0.017432,
		-0.520163, 0.839267, -0.158308,
		24.586184, 34.934078, 35.988884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182983, 34.796635, 36.492863>,  <24.950298, 34.346588, 36.099701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182983, 34.796635, 36.492863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815105, 34.945694, 36.443398>,  <24.594379, 35.035130, 36.413719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.815105, 34.945694, 36.443398>,  <25.182983, 34.796635, 36.492863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815105, 34.945694, 36.443398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050926, 0.199071, 0.978661,
		0.389318, 0.906367, -0.164107,
		-0.919695, 0.372653, -0.123660,
		24.539198, 35.057491, 36.406300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889675, 34.600155, 36.790699>,  <25.182983, 34.796635, 36.492863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889675, 34.600155, 36.790699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767277, 34.657032, 36.414158>,  <25.693838, 34.691158, 36.188232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767277, 34.657032, 36.414158>,  <25.889675, 34.600155, 36.790699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767277, 34.657032, 36.414158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193706, 0.958801, 0.207796,
		0.932119, 0.245931, -0.265843,
		-0.305994, 0.142195, -0.941354,
		25.675478, 34.699692, 36.131752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673147, 34.354179, 36.726185>,  <25.889675, 34.600155, 36.790699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673147, 34.354179, 36.726185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972940, 34.489559, 36.953773>,  <27.152817, 34.570786, 37.090328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972940, 34.489559, 36.953773>,  <26.673147, 34.354179, 36.726185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972940, 34.489559, 36.953773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487326, 0.863769, 0.128124,
		-0.448096, -0.373301, 0.812316,
		0.749482, 0.338451, 0.568970,
		27.197784, 34.591095, 37.124466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434256, 34.609642, 37.442715>,  <26.673147, 34.354179, 36.726185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434256, 34.609642, 37.442715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779060, 34.797668, 37.366848>,  <26.985943, 34.910484, 37.321327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779060, 34.797668, 37.366848>,  <26.434256, 34.609642, 37.442715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779060, 34.797668, 37.366848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451558, 0.882126, 0.133974,
		0.230286, -0.029842, 0.972665,
		0.862012, 0.470067, -0.189666,
		27.037664, 34.938690, 37.309948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619045, 35.055759, 38.058399>,  <26.434256, 34.609642, 37.442715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619045, 35.055759, 38.058399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783018, 35.198315, 37.722557>,  <26.881401, 35.283848, 37.521049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783018, 35.198315, 37.722557>,  <26.619045, 35.055759, 38.058399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783018, 35.198315, 37.722557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557911, 0.826199, 0.078305,
		0.721590, 0.436326, 0.537520,
		0.409931, 0.356392, -0.839608,
		26.905998, 35.305233, 37.470676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769276, 35.674610, 38.296925>,  <26.619045, 35.055759, 38.058399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769276, 35.674610, 38.296925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787556, 35.702984, 37.898350>,  <26.798525, 35.720009, 37.659206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787556, 35.702984, 37.898350>,  <26.769276, 35.674610, 38.296925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787556, 35.702984, 37.898350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226287, 0.972282, 0.058837,
		0.972988, 0.222790, 0.060493,
		0.045708, 0.070936, -0.996433,
		26.801266, 35.724266, 37.599419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177654, 36.216694, 38.120377>,  <26.769276, 35.674610, 38.296925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177654, 36.216694, 38.120377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952608, 36.170914, 37.792873>,  <26.817579, 36.143444, 37.596371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952608, 36.170914, 37.792873>,  <27.177654, 36.216694, 38.120377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952608, 36.170914, 37.792873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216008, 0.976318, 0.011952,
		0.797999, 0.183582, -0.574017,
		-0.562617, -0.114455, -0.818756,
		26.783823, 36.136578, 37.547245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263346, 36.885811, 37.812012>,  <27.177654, 36.216694, 38.120377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263346, 36.885811, 37.812012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945524, 36.697525, 37.658592>,  <26.754831, 36.584553, 37.566540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945524, 36.697525, 37.658592>,  <27.263346, 36.885811, 37.812012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945524, 36.697525, 37.658592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531296, 0.844776, 0.063865,
		0.293951, 0.254522, -0.921310,
		-0.794555, -0.470715, -0.383549,
		26.707157, 36.556309, 37.543526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995142, 37.354477, 37.292030>,  <27.263346, 36.885811, 37.812012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995142, 37.354477, 37.292030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697855, 37.110386, 37.401756>,  <26.519484, 36.963932, 37.467594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697855, 37.110386, 37.401756>,  <26.995142, 37.354477, 37.292030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697855, 37.110386, 37.401756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605315, 0.787951, 0.112817,
		-0.284994, -0.082202, -0.954998,
		-0.743218, -0.610227, 0.274319,
		26.474890, 36.927319, 37.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467119, 37.598179, 37.014961>,  <26.995142, 37.354477, 37.292030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467119, 37.598179, 37.014961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274080, 37.372417, 37.282856>,  <26.158257, 37.236961, 37.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274080, 37.372417, 37.282856>,  <26.467119, 37.598179, 37.014961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274080, 37.372417, 37.282856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652984, 0.741480, 0.154335,
		-0.583706, -0.362848, -0.726380,
		-0.482596, -0.564401, 0.669741,
		26.129301, 37.203098, 37.483780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693489, 37.791920, 36.939602>,  <26.467119, 37.598179, 37.014961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693489, 37.791920, 36.939602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 37.607491, 37.291794>,  <25.764082, 37.496834, 37.503109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737610, 37.607491, 37.291794>,  <25.693489, 37.791920, 36.939602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737610, 37.607491, 37.291794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585989, 0.685366, 0.432309,
		-0.802777, -0.563635, -0.194589,
		0.110300, -0.461075, 0.880479,
		25.770700, 37.469170, 37.555939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050320, 37.715858, 37.178509>,  <25.693489, 37.791920, 36.939602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050320, 37.715858, 37.178509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300028, 37.726505, 37.490810>,  <25.449854, 37.732891, 37.678192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300028, 37.726505, 37.490810>,  <25.050320, 37.715858, 37.178509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300028, 37.726505, 37.490810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541789, 0.734761, 0.408156,
		-0.562805, -0.677804, 0.473110,
		0.624272, 0.026613, 0.780754,
		25.487309, 37.734489, 37.725037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619123, 38.048611, 37.648277>,  <25.050320, 37.715858, 37.178509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619123, 38.048611, 37.648277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979950, 38.065899, 37.820049>,  <25.196445, 38.076271, 37.923115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979950, 38.065899, 37.820049>,  <24.619123, 38.048611, 37.648277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979950, 38.065899, 37.820049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283012, 0.810437, 0.512929,
		-0.325859, -0.584230, 0.743298,
		0.902064, 0.043219, 0.429432,
		25.250568, 38.078865, 37.948879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.555243, 38.099457, 38.367126>,  <24.619123, 38.048611, 37.648277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.555243, 38.099457, 38.367126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926826, 38.227913, 38.293468>,  <25.149776, 38.304985, 38.249275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.926826, 38.227913, 38.293468>,  <24.555243, 38.099457, 38.367126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926826, 38.227913, 38.293468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114538, 0.722372, 0.681953,
		0.352020, -0.612414, 0.707835,
		0.928958, 0.321136, -0.184145,
		25.205513, 38.324253, 38.238224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759552, 38.308586, 39.068130>,  <24.555243, 38.099457, 38.367126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759552, 38.308586, 39.068130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032049, 38.486881, 38.835850>,  <25.195547, 38.593861, 38.696480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032049, 38.486881, 38.835850>,  <24.759552, 38.308586, 39.068130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032049, 38.486881, 38.835850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122280, 0.712822, 0.690603,
		0.721766, -0.541482, 0.431105,
		0.681250, 0.445739, -0.580703,
		25.236423, 38.620605, 38.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.372200, 38.508320, 39.471703>,  <24.759552, 38.308586, 39.068130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.372200, 38.508320, 39.471703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423416, 38.757519, 39.163033>,  <25.454145, 38.907040, 38.977833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423416, 38.757519, 39.163033>,  <25.372200, 38.508320, 39.471703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423416, 38.757519, 39.163033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074009, 0.769905, 0.633852,
		0.989004, -0.138270, 0.052473,
		0.128042, 0.622998, -0.771672,
		25.461828, 38.944420, 38.931530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980249, 38.879616, 39.612640>,  <25.372200, 38.508320, 39.471703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980249, 38.879616, 39.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745750, 39.093571, 39.369263>,  <25.605051, 39.221943, 39.223236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745750, 39.093571, 39.369263>,  <25.980249, 38.879616, 39.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745750, 39.093571, 39.369263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037353, 0.768093, 0.639248,
		0.809271, 0.352030, -0.470272,
		-0.586247, 0.534891, -0.608446,
		25.569876, 39.254040, 39.186729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190495, 39.526451, 39.816071>,  <25.980249, 38.879616, 39.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190495, 39.526451, 39.816071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854954, 39.573524, 39.603477>,  <25.653629, 39.601768, 39.475922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854954, 39.573524, 39.603477>,  <26.190495, 39.526451, 39.816071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854954, 39.573524, 39.603477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342893, 0.644069, 0.683812,
		0.422786, 0.755860, -0.499927,
		-0.838854, 0.117685, -0.531483,
		25.603298, 39.608829, 39.444031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119226, 40.198788, 39.726368>,  <26.190495, 39.526451, 39.816071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119226, 40.198788, 39.726368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753031, 40.038231, 39.715309>,  <25.533314, 39.941898, 39.708675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753031, 40.038231, 39.715309>,  <26.119226, 40.198788, 39.726368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753031, 40.038231, 39.715309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270522, 0.563235, 0.780759,
		-0.297819, 0.722255, -0.624221,
		-0.915490, -0.401390, -0.027644,
		25.478384, 39.917812, 39.707016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809017, 40.749104, 39.854179>,  <26.119226, 40.198788, 39.726368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809017, 40.749104, 39.854179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540518, 40.460217, 39.920918>,  <25.379419, 40.286884, 39.960960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540518, 40.460217, 39.920918>,  <25.809017, 40.749104, 39.854179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540518, 40.460217, 39.920918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343812, 0.502768, 0.793106,
		-0.656674, 0.475008, -0.585787,
		-0.671247, -0.722213, 0.166841,
		25.339144, 40.243553, 39.970970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154556, 41.055439, 39.956371>,  <25.809017, 40.749104, 39.854179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154556, 41.055439, 39.956371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143303, 40.695206, 40.129875>,  <25.136551, 40.479065, 40.233978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143303, 40.695206, 40.129875>,  <25.154556, 41.055439, 39.956371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143303, 40.695206, 40.129875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427390, 0.403110, 0.809222,
		-0.903630, -0.162620, -0.396243,
		-0.028134, -0.900587, 0.433764,
		25.134863, 40.425030, 40.260006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953436, 41.252777, 40.561932>,  <25.154556, 41.055439, 39.956371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953436, 41.252777, 40.561932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019165, 40.869205, 40.654411>,  <25.058603, 40.639061, 40.709900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019165, 40.869205, 40.654411>,  <24.953436, 41.252777, 40.561932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019165, 40.869205, 40.654411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159422, 0.205487, 0.965588,
		-0.973438, -0.195528, -0.119107,
		0.164325, -0.958928, 0.231200,
		25.068462, 40.581528, 40.723770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651173, 41.422863, 40.711952>,  <24.953436, 41.252777, 40.561932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651173, 41.422863, 40.711952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938036, 41.454590, 40.988907>,  <26.110153, 41.473625, 41.155079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938036, 41.454590, 40.988907>,  <25.651173, 41.422863, 40.711952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938036, 41.454590, 40.988907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686328, 0.092096, -0.721437,
		-0.120989, 0.992586, 0.011609,
		0.717157, 0.079319, 0.692383,
		26.153183, 41.478386, 41.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001814, 42.110218, 40.640167>,  <25.651173, 41.422863, 40.711952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001814, 42.110218, 40.640167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234772, 41.824821, 40.795986>,  <26.374546, 41.653584, 40.889477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234772, 41.824821, 40.795986>,  <26.001814, 42.110218, 40.640167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234772, 41.824821, 40.795986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583699, 0.033520, -0.811278,
		0.565782, 0.699862, 0.435986,
		0.582397, -0.713491, 0.389543,
		26.409491, 41.610775, 40.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348700, 42.571888, 41.079666>,  <26.001814, 42.110218, 40.640167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348700, 42.571888, 41.079666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327435, 42.936218, 40.915928>,  <26.314676, 43.154816, 40.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327435, 42.936218, 40.915928>,  <26.348700, 42.571888, 41.079666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327435, 42.936218, 40.915928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954048, -0.074730, -0.290184,
		-0.294899, -0.405962, -0.865003,
		-0.053163, 0.910829, -0.409345,
		26.311485, 43.209469, 40.793125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604204, 42.527637, 40.408676>,  <26.348700, 42.571888, 41.079666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604204, 42.527637, 40.408676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640484, 42.900898, 40.547813>,  <26.662251, 43.124855, 40.631298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640484, 42.900898, 40.547813>,  <26.604204, 42.527637, 40.408676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640484, 42.900898, 40.547813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995567, -0.076218, -0.055117,
		-0.024921, 0.351304, -0.935930,
		0.090698, 0.933154, 0.347847,
		26.667692, 43.180843, 40.652168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916929, 42.886322, 39.838882>,  <26.604204, 42.527637, 40.408676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916929, 42.886322, 39.838882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030235, 43.026772, 40.195866>,  <27.098219, 43.111042, 40.410053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030235, 43.026772, 40.195866>,  <26.916929, 42.886322, 39.838882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030235, 43.026772, 40.195866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955154, -0.019586, -0.295461,
		-0.086264, 0.936124, -0.340925,
		0.283266, 0.351123, 0.892453,
		27.115215, 43.132107, 40.463600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149393, 43.576370, 39.758102>,  <26.916929, 42.886322, 39.838882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149393, 43.576370, 39.758102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343273, 43.376678, 40.045391>,  <27.459600, 43.256863, 40.217762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343273, 43.376678, 40.045391>,  <27.149393, 43.576370, 39.758102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343273, 43.376678, 40.045391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863270, 0.140829, -0.484698,
		0.140829, 0.854949, 0.499229,
		0.484698, -0.499229, 0.718219,
		27.488682, 43.226910, 40.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731482, 44.034679, 39.959141>,  <27.149393, 43.576370, 39.758102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731482, 44.034679, 39.959141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823994, 43.653866, 40.039280>,  <27.879501, 43.425377, 40.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823994, 43.653866, 40.039280>,  <27.731482, 44.034679, 39.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823994, 43.653866, 40.039280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863373, 0.105925, -0.493322,
		0.448437, 0.287073, 0.846459,
		0.231280, -0.952034, 0.200350,
		27.893377, 43.368256, 40.099384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508486, 43.923244, 40.266487>,  <27.731482, 44.034679, 39.959141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508486, 43.923244, 40.266487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345554, 43.650185, 40.023808>,  <28.247795, 43.486351, 39.878201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345554, 43.650185, 40.023808>,  <28.508486, 43.923244, 40.266487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345554, 43.650185, 40.023808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866671, -0.079412, -0.492519,
		0.288038, -0.726421, 0.623976,
		-0.407328, -0.682647, -0.606694,
		28.223356, 43.445389, 39.841801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659960, 43.164848, 40.372410>,  <28.508486, 43.923244, 40.266487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659960, 43.164848, 40.372410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610312, 43.304943, 40.001049>,  <28.580523, 43.389000, 39.778233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610312, 43.304943, 40.001049>,  <28.659960, 43.164848, 40.372410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610312, 43.304943, 40.001049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989803, 0.109594, -0.090987,
		0.069880, -0.930227, -0.360271,
		-0.124122, 0.350239, -0.928400,
		28.573074, 43.410015, 39.722530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082718, 42.903839, 39.694420>,  <28.659960, 43.164848, 40.372410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082718, 42.903839, 39.694420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050941, 43.302101, 39.675022>,  <29.031876, 43.541058, 39.663383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050941, 43.302101, 39.675022>,  <29.082718, 42.903839, 39.694420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050941, 43.302101, 39.675022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995366, 0.076588, -0.058152,
		-0.054185, -0.052892, -0.997129,
		-0.079443, 0.995659, -0.048497,
		29.027109, 43.600800, 39.660473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576132, 43.094025, 39.137051>,  <29.082718, 42.903839, 39.694420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576132, 43.094025, 39.137051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518501, 43.401386, 39.386463>,  <29.483923, 43.585804, 39.536110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.518501, 43.401386, 39.386463>,  <29.576132, 43.094025, 39.137051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518501, 43.401386, 39.386463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987673, 0.150630, 0.042586,
		-0.061199, 0.621981, -0.780637,
		-0.144075, 0.768408, 0.623532,
		29.475279, 43.631908, 39.573524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200405, 42.688290, 38.636307>,  <29.576132, 43.094025, 39.137051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200405, 42.688290, 38.636307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052311, 42.590214, 38.994705>,  <28.963455, 42.531368, 39.209743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052311, 42.590214, 38.994705>,  <29.200405, 42.688290, 38.636307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052311, 42.590214, 38.994705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128915, -0.968767, -0.211830,
		0.919950, 0.037081, 0.390277,
		-0.370233, -0.245186, 0.895998,
		28.941240, 42.516659, 39.263504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578316, 42.135265, 38.941872>,  <29.200405, 42.688290, 38.636307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578316, 42.135265, 38.941872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207878, 42.096512, 39.087730>,  <28.985617, 42.073257, 39.175243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207878, 42.096512, 39.087730>,  <29.578316, 42.135265, 38.941872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207878, 42.096512, 39.087730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059648, -0.991910, -0.112062,
		0.372552, -0.082029, 0.924379,
		-0.926093, -0.096886, 0.364645,
		28.930050, 42.067448, 39.197124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557058, 41.501411, 39.456944>,  <29.578316, 42.135265, 38.941872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557058, 41.501411, 39.456944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194822, 41.575397, 39.304264>,  <28.977480, 41.619789, 39.212658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194822, 41.575397, 39.304264>,  <29.557058, 41.501411, 39.456944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194822, 41.575397, 39.304264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138528, -0.979536, -0.146012,
		-0.400894, -0.079351, 0.912681,
		-0.905590, 0.184967, -0.381698,
		28.923145, 41.630886, 39.189754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208124, 41.035583, 39.712437>,  <29.557058, 41.501411, 39.456944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208124, 41.035583, 39.712437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985538, 41.143078, 39.397953>,  <28.851988, 41.207573, 39.209263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985538, 41.143078, 39.397953>,  <29.208124, 41.035583, 39.712437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985538, 41.143078, 39.397953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041371, -0.954038, -0.296817,
		-0.829841, -0.132641, 0.542005,
		-0.556464, 0.268734, -0.786213,
		28.818600, 41.223698, 39.162090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623039, 40.582249, 39.693218>,  <29.208124, 41.035583, 39.712437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623039, 40.582249, 39.693218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669340, 40.718632, 39.320049>,  <28.697121, 40.800461, 39.096146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669340, 40.718632, 39.320049>,  <28.623039, 40.582249, 39.693218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669340, 40.718632, 39.320049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143292, -0.923681, -0.355360,
		-0.982888, 0.174814, -0.058060,
		0.115751, 0.340960, -0.932925,
		28.704065, 40.820919, 39.040173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085419, 40.280231, 39.309933>,  <28.623039, 40.582249, 39.693218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085419, 40.280231, 39.309933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332392, 40.403976, 39.020638>,  <28.480576, 40.478222, 38.847061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332392, 40.403976, 39.020638>,  <28.085419, 40.280231, 39.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332392, 40.403976, 39.020638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123918, -0.869689, -0.477792,
		-0.776801, 0.384627, -0.498641,
		0.617434, 0.309359, -0.723237,
		28.517622, 40.496784, 38.803665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667734, 40.130211, 38.636513>,  <28.085419, 40.280231, 39.309933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667734, 40.130211, 38.636513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060720, 40.158230, 38.567402>,  <28.296513, 40.175041, 38.525936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060720, 40.158230, 38.567402>,  <27.667734, 40.130211, 38.636513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060720, 40.158230, 38.567402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008249, -0.942149, -0.335093,
		-0.186253, 0.327793, -0.926208,
		0.982467, 0.070052, -0.172774,
		28.355461, 40.179245, 38.515568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804760, 39.844872, 37.920021>,  <27.667734, 40.130211, 38.636513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804760, 39.844872, 37.920021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156265, 39.844444, 38.110924>,  <28.367168, 39.844189, 38.225464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156265, 39.844444, 38.110924>,  <27.804760, 39.844872, 37.920021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156265, 39.844444, 38.110924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237060, -0.866938, -0.438430,
		0.414215, 0.498415, -0.761582,
		0.878765, -0.001064, 0.477253,
		28.419895, 39.844124, 38.254101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437265, 39.765350, 37.372421>,  <27.804760, 39.844872, 37.920021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437265, 39.765350, 37.372421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549892, 39.662502, 37.742203>,  <28.617468, 39.600792, 37.964069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549892, 39.662502, 37.742203>,  <28.437265, 39.765350, 37.372421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549892, 39.662502, 37.742203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265747, -0.904846, -0.332613,
		0.922008, 0.339323, -0.186445,
		0.281567, -0.257125, 0.924450,
		28.634363, 39.585365, 38.019539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976694, 39.415134, 37.236362>,  <28.437265, 39.765350, 37.372421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976694, 39.415134, 37.236362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911879, 39.311646, 37.617268>,  <28.872990, 39.249554, 37.845810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911879, 39.311646, 37.617268>,  <28.976694, 39.415134, 37.236362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911879, 39.311646, 37.617268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263999, -0.941207, -0.210793,
		0.950814, 0.217240, 0.220814,
		-0.162039, -0.258720, 0.952264,
		28.863266, 39.234028, 37.902946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605797, 39.260815, 37.448166>,  <28.976694, 39.415134, 37.236362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605797, 39.260815, 37.448166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329742, 39.074093, 37.669365>,  <29.164110, 38.962059, 37.802082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329742, 39.074093, 37.669365>,  <29.605797, 39.260815, 37.448166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329742, 39.074093, 37.669365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369292, -0.884330, -0.285629,
		0.622363, 0.007093, 0.782697,
		-0.690136, -0.466808, 0.552993,
		29.122702, 38.934052, 37.835262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937429, 38.791618, 37.854851>,  <29.605797, 39.260815, 37.448166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937429, 38.791618, 37.854851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559141, 38.661713, 37.850044>,  <29.332169, 38.583771, 37.847160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559141, 38.661713, 37.850044>,  <29.937429, 38.791618, 37.854851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559141, 38.661713, 37.850044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324615, -0.942228, -0.082655,
		0.015526, -0.082067, 0.996506,
		-0.945719, -0.324764, -0.012012,
		29.275425, 38.564285, 37.846439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932770, 38.151520, 38.072639>,  <29.937429, 38.791618, 37.854851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932770, 38.151520, 38.072639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552568, 38.123211, 37.951618>,  <29.324448, 38.106224, 37.879005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552568, 38.123211, 37.951618>,  <29.932770, 38.151520, 38.072639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552568, 38.123211, 37.951618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107629, -0.988425, -0.106917,
		-0.291484, -0.134188, 0.947117,
		-0.950501, -0.070772, -0.302553,
		29.267418, 38.101978, 37.860851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582273, 37.653286, 38.442745>,  <29.932770, 38.151520, 38.072639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582273, 37.653286, 38.442745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397940, 37.677097, 38.088551>,  <29.287340, 37.691383, 37.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397940, 37.677097, 38.088551>,  <29.582273, 37.653286, 38.442745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397940, 37.677097, 38.088551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047839, -0.997964, -0.042194,
		-0.886196, 0.022917, 0.462744,
		-0.460835, 0.059529, -0.885487,
		29.259689, 37.694958, 37.822903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263668, 37.040054, 38.425606>,  <29.582273, 37.653286, 38.442745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263668, 37.040054, 38.425606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181141, 37.147366, 38.049210>,  <29.131624, 37.211750, 37.823372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181141, 37.147366, 38.049210>,  <29.263668, 37.040054, 38.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181141, 37.147366, 38.049210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003876, -0.961448, -0.274958,
		-0.978477, -0.060376, 0.197326,
		-0.206319, 0.268275, -0.940989,
		29.119246, 37.227848, 37.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662085, 36.665184, 38.126938>,  <29.263668, 37.040054, 38.425606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.662085, 36.665184, 38.126938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880602, 36.785698, 37.814327>,  <29.011711, 36.858006, 37.626759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880602, 36.785698, 37.814327>,  <28.662085, 36.665184, 38.126938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880602, 36.785698, 37.814327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062691, -0.915741, -0.396849,
		-0.835246, 0.265790, -0.481374,
		0.546292, 0.301289, -0.781531,
		29.044489, 36.876083, 37.579868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326385, 36.395454, 37.625053>,  <28.662085, 36.665184, 38.126938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326385, 36.395454, 37.625053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678465, 36.463192, 37.447708>,  <28.889713, 36.503834, 37.341301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678465, 36.463192, 37.447708>,  <28.326385, 36.395454, 37.625053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678465, 36.463192, 37.447708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097027, -0.850237, -0.517381,
		-0.464578, 0.498417, -0.731948,
		0.880201, 0.169346, -0.443361,
		28.942526, 36.513996, 37.314701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235174, 36.262596, 36.937580>,  <28.326385, 36.395454, 37.625053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235174, 36.262596, 36.937580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629591, 36.225128, 36.992645>,  <28.866241, 36.202648, 37.025684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629591, 36.225128, 36.992645>,  <28.235174, 36.262596, 36.937580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629591, 36.225128, 36.992645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014525, -0.872010, -0.489273,
		0.165875, 0.480443, -0.861197,
		0.986040, -0.093667, 0.137667,
		28.925404, 36.197029, 37.033947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471355, 36.097694, 36.257153>,  <28.235174, 36.262596, 36.937580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471355, 36.097694, 36.257153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763914, 35.995323, 36.509995>,  <28.939449, 35.933899, 36.661701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763914, 35.995323, 36.509995>,  <28.471355, 36.097694, 36.257153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763914, 35.995323, 36.509995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199537, -0.806026, -0.557232,
		0.652105, 0.533686, -0.538459,
		0.731399, -0.255931, 0.632104,
		28.983334, 35.918545, 36.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936588, 35.905472, 35.813942>,  <28.471355, 36.097694, 36.257153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936588, 35.905472, 35.813942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020180, 35.721901, 36.159359>,  <29.070333, 35.611759, 36.366611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020180, 35.721901, 36.159359>,  <28.936588, 35.905472, 35.813942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020180, 35.721901, 36.159359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021690, -0.880651, -0.473268,
		0.977680, 0.117632, -0.174082,
		0.208977, -0.458929, 0.863547,
		29.082872, 35.584221, 36.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313709, 35.369743, 35.537560>,  <28.936588, 35.905472, 35.813942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313709, 35.369743, 35.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228693, 35.269238, 35.915279>,  <29.177683, 35.208935, 36.141911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228693, 35.269238, 35.915279>,  <29.313709, 35.369743, 35.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228693, 35.269238, 35.915279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028708, -0.964352, -0.263059,
		0.976731, -0.083019, 0.197749,
		-0.212539, -0.251261, 0.944296,
		29.164930, 35.193859, 36.198566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767632, 34.856880, 35.824356>,  <29.313709, 35.369743, 35.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767632, 34.856880, 35.824356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398130, 34.823837, 35.973946>,  <29.176430, 34.804012, 36.063698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398130, 34.823837, 35.973946>,  <29.767632, 34.856880, 35.824356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398130, 34.823837, 35.973946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014042, -0.983108, -0.182486,
		0.382729, -0.163321, 0.909310,
		-0.923754, -0.082612, 0.373971,
		29.121004, 34.799053, 36.086136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454493, 35.144848, 35.422527>,  <29.767632, 34.856880, 35.824356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454493, 35.144848, 35.422527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493195, 35.373615, 35.748360>,  <30.516417, 35.510876, 35.943859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493195, 35.373615, 35.748360>,  <30.454493, 35.144848, 35.422527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493195, 35.373615, 35.748360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689644, -0.628639, 0.359450,
		0.717656, 0.526994, -0.455244,
		0.096757, 0.571918, 0.814585,
		30.522221, 35.545189, 35.992737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177181, 35.384975, 35.585762>,  <30.454493, 35.144848, 35.422527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177181, 35.384975, 35.585762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972792, 35.348419, 35.927650>,  <30.850159, 35.326485, 36.132786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972792, 35.348419, 35.927650>,  <31.177181, 35.384975, 35.585762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972792, 35.348419, 35.927650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669362, -0.666154, 0.328928,
		0.539316, 0.740193, 0.401562,
		-0.510972, -0.091395, 0.854725,
		30.819500, 35.320999, 36.184067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636400, 35.524025, 36.099659>,  <31.177181, 35.384975, 35.585762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636400, 35.524025, 36.099659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359224, 35.306290, 36.288776>,  <31.192919, 35.175648, 36.402248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359224, 35.306290, 36.288776>,  <31.636400, 35.524025, 36.099659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359224, 35.306290, 36.288776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720497, -0.498396, 0.482168,
		-0.026822, 0.674760, 0.737550,
		-0.692939, -0.544336, 0.472794,
		31.151342, 35.142990, 36.430614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947645, 35.584064, 36.687164>,  <31.636400, 35.524025, 36.099659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947645, 35.584064, 36.687164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696436, 35.274357, 36.655949>,  <31.545710, 35.088531, 36.637218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696436, 35.274357, 36.655949>,  <31.947645, 35.584064, 36.687164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696436, 35.274357, 36.655949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659559, -0.582823, 0.474657,
		-0.412998, 0.246622, 0.876704,
		-0.628024, -0.774271, -0.078043,
		31.508028, 35.042076, 36.632534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685783, 35.209789, 37.308887>,  <31.947645, 35.584064, 36.687164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685783, 35.209789, 37.308887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740765, 34.996010, 36.975307>,  <31.773754, 34.867741, 36.775162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740765, 34.996010, 36.975307>,  <31.685783, 35.209789, 37.308887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740765, 34.996010, 36.975307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746272, -0.497726, 0.441981,
		-0.651295, -0.683103, 0.330433,
		0.137453, -0.534452, -0.833947,
		31.782001, 34.835674, 36.725124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640882, 34.520611, 37.471462>,  <31.685783, 35.209789, 37.308887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640882, 34.520611, 37.471462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877502, 34.590290, 37.156570>,  <32.019474, 34.632095, 36.967636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877502, 34.590290, 37.156570>,  <31.640882, 34.520611, 37.471462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877502, 34.590290, 37.156570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764710, -0.430644, 0.479337,
		-0.255517, -0.885552, -0.387955,
		0.591549, 0.174195, -0.787227,
		32.054966, 34.642548, 36.920403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888912, 33.866745, 37.155926>,  <31.640882, 34.520611, 37.471462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888912, 33.866745, 37.155926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156040, 34.161247, 37.112202>,  <32.316319, 34.337948, 37.085968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156040, 34.161247, 37.112202>,  <31.888912, 33.866745, 37.155926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156040, 34.161247, 37.112202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630426, -0.481420, 0.608932,
		0.395701, -0.475571, -0.785654,
		0.667820, 0.736252, -0.109314,
		32.356384, 34.382122, 37.079407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470741, 33.564640, 37.049503>,  <31.888912, 33.866745, 37.155926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470741, 33.564640, 37.049503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615501, 33.927551, 37.135170>,  <32.702358, 34.145298, 37.186569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615501, 33.927551, 37.135170>,  <32.470741, 33.564640, 37.049503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615501, 33.927551, 37.135170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783390, -0.420519, 0.457673,
		0.505300, 0.002145, -0.862941,
		0.361901, 0.907281, 0.214169,
		32.724072, 34.199738, 37.199421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111160, 33.389328, 37.020065>,  <32.470741, 33.564640, 37.049503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111160, 33.389328, 37.020065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049332, 33.725979, 37.227051>,  <33.012234, 33.927971, 37.351242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049332, 33.725979, 37.227051>,  <33.111160, 33.389328, 37.020065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049332, 33.725979, 37.227051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655654, -0.304418, 0.690976,
		0.739071, 0.446080, -0.504764,
		-0.154571, 0.841631, 0.517460,
		33.002960, 33.978470, 37.382290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783787, 33.585739, 37.037537>,  <33.111160, 33.389328, 37.020065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783787, 33.585739, 37.037537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554264, 33.752651, 37.319420>,  <33.416550, 33.852798, 37.488552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554264, 33.752651, 37.319420>,  <33.783787, 33.585739, 37.037537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554264, 33.752651, 37.319420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697956, -0.201032, 0.687345,
		0.428484, 0.886264, -0.175889,
		-0.573810, 0.417279, 0.704713,
		33.382122, 33.877834, 37.530834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182117, 34.016418, 37.325436>,  <33.783787, 33.585739, 37.037537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182117, 34.016418, 37.325436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895065, 33.955185, 37.597191>,  <33.722836, 33.918446, 37.760246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895065, 33.955185, 37.597191>,  <34.182117, 34.016418, 37.325436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895065, 33.955185, 37.597191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694168, -0.078775, 0.715490,
		-0.056014, 0.985068, 0.162801,
		-0.717630, -0.153088, 0.679390,
		33.679775, 33.909260, 37.801006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317177, 34.493221, 37.836147>,  <34.182117, 34.016418, 37.325436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317177, 34.493221, 37.836147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072800, 34.232731, 38.016212>,  <33.926174, 34.076435, 38.124252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072800, 34.232731, 38.016212>,  <34.317177, 34.493221, 37.836147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072800, 34.232731, 38.016212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569266, 0.033786, 0.821459,
		-0.550167, 0.758129, 0.350081,
		-0.610945, -0.651229, 0.450165,
		33.889515, 34.037361, 38.151260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523323, 34.601063, 38.516068>,  <34.317177, 34.493221, 37.836147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523323, 34.601063, 38.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289715, 34.277550, 38.543774>,  <34.149551, 34.083443, 38.560398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289715, 34.277550, 38.543774>,  <34.523323, 34.601063, 38.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289715, 34.277550, 38.543774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496699, -0.288565, 0.818547,
		-0.642038, 0.512449, 0.570248,
		-0.584018, -0.808780, 0.069263,
		34.114510, 34.034916, 38.564552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521744, 34.584618, 39.188553>,  <34.523323, 34.601063, 38.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521744, 34.584618, 39.188553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412590, 34.233204, 39.031727>,  <34.347099, 34.022358, 38.937630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412590, 34.233204, 39.031727>,  <34.521744, 34.584618, 39.188553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412590, 34.233204, 39.031727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389534, -0.473532, 0.789956,
		-0.879658, 0.062844, 0.471437,
		-0.272885, -0.878532, -0.392066,
		34.330723, 33.969643, 38.914108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035469, 34.165302, 39.695782>,  <34.521744, 34.584618, 39.188553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035469, 34.165302, 39.695782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195164, 33.917557, 39.425377>,  <34.290981, 33.768909, 39.263134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195164, 33.917557, 39.425377>,  <34.035469, 34.165302, 39.695782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195164, 33.917557, 39.425377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565656, -0.413876, 0.713260,
		-0.721555, -0.667152, 0.185112,
		0.399239, -0.619366, -0.676013,
		34.314934, 33.731747, 39.222572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916866, 33.538548, 39.989498>,  <34.035469, 34.165302, 39.695782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916866, 33.538548, 39.989498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232277, 33.496796, 39.747066>,  <34.421524, 33.471745, 39.601608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232277, 33.496796, 39.747066>,  <33.916866, 33.538548, 39.989498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232277, 33.496796, 39.747066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483736, -0.503290, 0.716030,
		-0.379775, -0.857790, -0.346363,
		0.788524, -0.104382, -0.606081,
		34.468834, 33.465481, 39.565243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994583, 32.876514, 39.957333>,  <33.916866, 33.538548, 39.989498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994583, 32.876514, 39.957333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352146, 33.004009, 39.831257>,  <34.566685, 33.080505, 39.755611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352146, 33.004009, 39.831257>,  <33.994583, 32.876514, 39.957333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352146, 33.004009, 39.831257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445888, -0.560009, 0.698265,
		0.046058, -0.764719, -0.642716,
		0.893903, 0.318741, -0.315186,
		34.620316, 33.099632, 39.736702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360504, 32.288204, 39.721592>,  <33.994583, 32.876514, 39.957333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360504, 32.288204, 39.721592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601990, 32.582245, 39.844978>,  <34.746880, 32.758671, 39.919010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601990, 32.582245, 39.844978>,  <34.360504, 32.288204, 39.721592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601990, 32.582245, 39.844978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363053, -0.598005, 0.714550,
		0.709734, -0.319393, -0.627905,
		0.603713, 0.735104, 0.308468,
		34.783104, 32.802776, 39.937519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725132, 31.936605, 40.051987>,  <34.360504, 32.288204, 39.721592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725132, 31.936605, 40.051987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916546, 32.280056, 40.125492>,  <35.031395, 32.486126, 40.169594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916546, 32.280056, 40.125492>,  <34.725132, 31.936605, 40.051987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916546, 32.280056, 40.125492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548932, -0.455876, 0.700607,
		0.685330, -0.234394, -0.689480,
		0.478536, 0.858624, 0.183759,
		35.060108, 32.537643, 40.180618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460117, 31.863619, 39.880833>,  <34.725132, 31.936605, 40.051987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460117, 31.863619, 39.880833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381863, 32.138409, 40.160774>,  <35.334911, 32.303284, 40.328739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381863, 32.138409, 40.160774>,  <35.460117, 31.863619, 39.880833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381863, 32.138409, 40.160774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514535, -0.535622, 0.669599,
		0.834854, 0.491095, -0.248686,
		-0.195635, 0.686975, 0.699852,
		35.323174, 32.344501, 40.370731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083172, 31.759716, 40.345394>,  <35.460117, 31.863619, 39.880833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083172, 31.759716, 40.345394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815735, 31.967930, 40.557823>,  <35.655273, 32.092857, 40.685280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815735, 31.967930, 40.557823>,  <36.083172, 31.759716, 40.345394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815735, 31.967930, 40.557823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312018, -0.451882, 0.835732,
		0.675007, 0.724464, 0.139707,
		-0.668588, 0.520534, 0.531069,
		35.615158, 32.124088, 40.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402214, 31.841484, 40.979038>,  <36.083172, 31.759716, 40.345394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402214, 31.841484, 40.979038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032654, 31.955376, 41.081280>,  <35.810917, 32.023712, 41.142624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032654, 31.955376, 41.081280>,  <36.402214, 31.841484, 40.979038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032654, 31.955376, 41.081280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106606, -0.450011, 0.886637,
		0.367476, 0.846415, 0.385413,
		-0.923903, 0.284731, 0.255601,
		35.755482, 32.040794, 41.157959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453129, 32.096245, 41.723652>,  <36.402214, 31.841484, 40.979038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453129, 32.096245, 41.723652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078293, 32.003986, 41.618832>,  <35.853394, 31.948629, 41.555939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078293, 32.003986, 41.618832>,  <36.453129, 32.096245, 41.723652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078293, 32.003986, 41.618832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113423, -0.508759, 0.853405,
		-0.330157, 0.829436, 0.450590,
		-0.937087, -0.230650, -0.262048,
		35.797165, 31.934792, 41.540218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128307, 32.236576, 42.392746>,  <36.453129, 32.096245, 41.723652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128307, 32.236576, 42.392746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875538, 32.005219, 42.186394>,  <35.723877, 31.866404, 42.062584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875538, 32.005219, 42.186394>,  <36.128307, 32.236576, 42.392746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875538, 32.005219, 42.186394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223219, -0.501591, 0.835811,
		-0.742187, 0.643325, 0.187860,
		-0.631927, -0.578394, -0.515877,
		35.685959, 31.831701, 42.031631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542061, 32.228725, 42.804810>,  <36.128307, 32.236576, 42.392746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542061, 32.228725, 42.804810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494076, 31.903700, 42.576653>,  <35.465282, 31.708685, 42.439758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494076, 31.903700, 42.576653>,  <35.542061, 32.228725, 42.804810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494076, 31.903700, 42.576653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205004, -0.541886, 0.815066,
		-0.971381, 0.214714, -0.101570,
		-0.119967, -0.812562, -0.570395,
		35.458084, 31.659931, 42.405533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011425, 31.932169, 43.065292>,  <35.542061, 32.228725, 42.804810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011425, 31.932169, 43.065292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198559, 31.647785, 42.855274>,  <35.310841, 31.477156, 42.729263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198559, 31.647785, 42.855274>,  <35.011425, 31.932169, 43.065292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198559, 31.647785, 42.855274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241124, -0.674199, 0.698080,
		-0.850289, -0.199984, -0.486841,
		0.467833, -0.710959, -0.525043,
		35.338909, 31.434498, 42.697762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502922, 31.443293, 42.807369>,  <35.011425, 31.932169, 43.065292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502922, 31.443293, 42.807369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866451, 31.277332, 42.824810>,  <35.084568, 31.177755, 42.835274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866451, 31.277332, 42.824810>,  <34.502922, 31.443293, 42.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866451, 31.277332, 42.824810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296879, -0.569762, 0.766312,
		-0.293099, -0.709386, -0.640987,
		0.908821, -0.414901, 0.043605,
		35.139099, 31.152863, 42.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315304, 30.782717, 42.801014>,  <34.502922, 31.443293, 42.807369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315304, 30.782717, 42.801014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692497, 30.808584, 42.931610>,  <34.918816, 30.824104, 43.009968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692497, 30.808584, 42.931610>,  <34.315304, 30.782717, 42.801014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692497, 30.808584, 42.931610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211835, -0.639991, 0.738605,
		0.256715, -0.765656, -0.589803,
		0.942986, 0.064670, 0.326488,
		34.975391, 30.827986, 43.029556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549278, 29.999245, 42.963665>,  <34.315304, 30.782717, 42.801014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549278, 29.999245, 42.963665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823929, 30.224045, 43.148144>,  <34.988720, 30.358925, 43.258831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823929, 30.224045, 43.148144>,  <34.549278, 29.999245, 42.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823929, 30.224045, 43.148144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073626, -0.577353, 0.813168,
		0.723274, -0.592298, -0.355048,
		0.686625, 0.562002, 0.461193,
		35.029915, 30.392645, 43.286503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040199, 29.595007, 43.250877>,  <34.549278, 29.999245, 42.963665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040199, 29.595007, 43.250877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087563, 29.930099, 43.464111>,  <35.115982, 30.131155, 43.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087563, 29.930099, 43.464111>,  <35.040199, 29.595007, 43.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087563, 29.930099, 43.464111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248991, -0.494663, 0.832654,
		0.961240, -0.231330, 0.150015,
		0.118411, 0.837732, 0.533089,
		35.123085, 30.181419, 43.624039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361443, 29.326643, 43.912407>,  <35.040199, 29.595007, 43.250877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361443, 29.326643, 43.912407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224991, 29.688925, 44.013073>,  <35.143120, 29.906294, 44.073471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224991, 29.688925, 44.013073>,  <35.361443, 29.326643, 43.912407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224991, 29.688925, 44.013073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425282, -0.387454, 0.817933,
		0.838313, 0.171989, 0.517349,
		-0.341125, 0.905704, 0.251664,
		35.122654, 29.960636, 44.088573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485931, 29.274591, 44.573189>,  <35.361443, 29.326643, 43.912407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485931, 29.274591, 44.573189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241901, 29.588556, 44.529877>,  <35.095486, 29.776936, 44.503887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241901, 29.588556, 44.529877>,  <35.485931, 29.274591, 44.573189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241901, 29.588556, 44.529877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347522, -0.142252, 0.926819,
		0.712067, 0.603057, 0.359558,
		-0.610072, 0.784912, -0.108283,
		35.058880, 29.824030, 44.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701107, 29.756046, 45.053261>,  <35.485931, 29.274591, 44.573189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701107, 29.756046, 45.053261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 29.780155, 44.955734>,  <35.081619, 29.794621, 44.897221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 29.780155, 44.955734>,  <35.701107, 29.756046, 45.053261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313927, 29.780155, 44.955734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250571, -0.165660, 0.953819,
		0.017100, 0.984339, 0.175453,
		-0.967947, 0.060274, -0.243814,
		35.023544, 29.798237, 44.882591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408245, 30.241016, 45.546566>,  <35.701107, 29.756046, 45.053261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408245, 30.241016, 45.546566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103207, 30.044811, 45.377880>,  <34.920181, 29.927088, 45.276669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103207, 30.044811, 45.377880>,  <35.408245, 30.241016, 45.546566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103207, 30.044811, 45.377880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303033, -0.305070, 0.902831,
		-0.571501, 0.816290, 0.084004,
		-0.762599, -0.490512, -0.421711,
		34.874428, 29.897657, 45.251366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772545, 30.476332, 45.929062>,  <35.408245, 30.241016, 45.546566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772545, 30.476332, 45.929062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689262, 30.122374, 45.762398>,  <34.639294, 29.909998, 45.662399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689262, 30.122374, 45.762398>,  <34.772545, 30.476332, 45.929062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689262, 30.122374, 45.762398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580132, -0.231244, 0.781008,
		-0.787462, 0.404331, -0.465210,
		-0.208208, -0.884897, -0.416661,
		34.626801, 29.856905, 45.637398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012947, 30.442728, 45.842815>,  <34.772545, 30.476332, 45.929062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012947, 30.442728, 45.842815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183132, 30.083395, 45.886597>,  <34.285244, 29.867794, 45.912865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183132, 30.083395, 45.886597>,  <34.012947, 30.442728, 45.842815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183132, 30.083395, 45.886597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691329, -0.244581, 0.679886,
		-0.583995, -0.364931, -0.725103,
		0.425458, -0.898335, 0.109453,
		34.310768, 29.813894, 45.919434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345253, 30.093983, 46.095715>,  <34.012947, 30.442728, 45.842815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345253, 30.093983, 46.095715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655087, 29.843828, 46.133484>,  <33.840984, 29.693735, 46.156147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655087, 29.843828, 46.133484>,  <33.345253, 30.093983, 46.095715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655087, 29.843828, 46.133484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451789, -0.442619, 0.774580,
		-0.442619, -0.642634, -0.625388,
		-0.774580, 0.625388, -0.094423,
		33.887459, 29.656212, 46.161812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095089, 29.412516, 46.153179>,  <33.345253, 30.093983, 46.095715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095089, 29.412516, 46.153179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439495, 29.437603, 46.355057>,  <33.646141, 29.452656, 46.476181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439495, 29.437603, 46.355057>,  <33.095089, 29.412516, 46.153179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439495, 29.437603, 46.355057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444697, -0.388650, 0.806967,
		0.246760, -0.919248, -0.306744,
		0.861019, 0.062719, 0.504690,
		33.697800, 29.456419, 46.506462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160259, 28.773815, 46.611328>,  <33.095089, 29.412516, 46.153179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160259, 28.773815, 46.611328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449371, 28.987738, 46.786404>,  <33.622837, 29.116091, 46.891449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449371, 28.987738, 46.786404>,  <33.160259, 28.773815, 46.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449371, 28.987738, 46.786404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111005, -0.535279, 0.837350,
		0.682109, -0.653803, -0.327521,
		0.722776, 0.534807, 0.437694,
		33.666203, 29.148180, 46.917713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839470, 28.302790, 46.838692>,  <33.160259, 28.773815, 46.611328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839470, 28.302790, 46.838692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803131, 28.641567, 47.048237>,  <33.781330, 28.844833, 47.173965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803131, 28.641567, 47.048237>,  <33.839470, 28.302790, 46.838692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803131, 28.641567, 47.048237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342840, -0.520485, 0.782021,
		0.934991, -0.108561, 0.337649,
		-0.090844, 0.846942, 0.523868,
		33.775879, 28.895649, 47.205399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237797, 28.069427, 47.462402>,  <33.839470, 28.302790, 46.838692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237797, 28.069427, 47.462402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970135, 28.361753, 47.516285>,  <33.809540, 28.537149, 47.548615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970135, 28.361753, 47.516285>,  <34.237797, 28.069427, 47.462402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970135, 28.361753, 47.516285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539920, -0.602669, 0.587602,
		0.510610, 0.320466, 0.797859,
		-0.669151, 0.730816, 0.134703,
		33.769390, 28.580997, 47.556694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144924, 28.182320, 48.116409>,  <34.237797, 28.069427, 47.462402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144924, 28.182320, 48.116409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798115, 28.316559, 47.969090>,  <33.590031, 28.397102, 47.880695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798115, 28.316559, 47.969090>,  <34.144924, 28.182320, 48.116409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798115, 28.316559, 47.969090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492468, -0.464700, 0.735886,
		0.075811, 0.819407, 0.568176,
		-0.867022, 0.335597, -0.368303,
		33.538010, 28.417238, 47.858597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727600, 28.201979, 48.645546>,  <34.144924, 28.182320, 48.116409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727600, 28.201979, 48.645546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445072, 28.232645, 48.364056>,  <33.275555, 28.251045, 48.195160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445072, 28.232645, 48.364056>,  <33.727600, 28.201979, 48.645546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445072, 28.232645, 48.364056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627477, -0.527995, 0.572271,
		-0.327690, 0.845780, 0.421040,
		-0.706322, 0.076666, -0.703727,
		33.233177, 28.255644, 48.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139927, 28.415400, 48.996552>,  <33.727600, 28.201979, 48.645546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139927, 28.415400, 48.996552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014370, 28.248842, 48.655239>,  <32.939037, 28.148909, 48.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014370, 28.248842, 48.655239>,  <33.139927, 28.415400, 48.996552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014370, 28.248842, 48.655239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600084, -0.609443, 0.518148,
		-0.735781, 0.674682, -0.058573,
		-0.313888, -0.416392, -0.853283,
		32.920204, 28.123924, 48.399254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428844, 28.334402, 49.190277>,  <33.139927, 28.415400, 48.996552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428844, 28.334402, 49.190277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493870, 28.064917, 48.901920>,  <32.532887, 27.903225, 48.728905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493870, 28.064917, 48.901920>,  <32.428844, 28.334402, 49.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493870, 28.064917, 48.901920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613782, -0.641096, 0.460726,
		-0.772557, 0.367570, -0.517734,
		0.162567, -0.673713, -0.720891,
		32.542641, 27.862803, 48.685654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805033, 27.971228, 49.073025>,  <32.428844, 28.334402, 49.190277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805033, 27.971228, 49.073025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045116, 27.709038, 48.889679>,  <32.189167, 27.551723, 48.779671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045116, 27.709038, 48.889679>,  <31.805033, 27.971228, 49.073025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045116, 27.709038, 48.889679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364116, -0.734163, 0.573083,
		-0.712149, -0.177081, -0.679328,
		0.600220, -0.655474, -0.458356,
		32.225182, 27.512394, 48.752171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354160, 27.390474, 48.798641>,  <31.805033, 27.971228, 49.073025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354160, 27.390474, 48.798641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733763, 27.267160, 48.825024>,  <31.961523, 27.193172, 48.840851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733763, 27.267160, 48.825024>,  <31.354160, 27.390474, 48.798641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733763, 27.267160, 48.825024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283346, -0.742340, 0.607163,
		-0.138219, -0.594888, -0.791835,
		0.949005, -0.308285, 0.065953,
		32.018463, 27.174675, 48.844810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326063, 26.698708, 48.712357>,  <31.354160, 27.390474, 48.798641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326063, 26.698708, 48.712357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661146, 26.774572, 48.917206>,  <31.862196, 26.820091, 49.040115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661146, 26.774572, 48.917206>,  <31.326063, 26.698708, 48.712357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661146, 26.774572, 48.917206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252159, -0.697479, 0.670775,
		0.484417, -0.691051, -0.536459,
		0.837709, 0.189661, 0.512126,
		31.912458, 26.831470, 49.070843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610603, 26.286045, 48.912884>,  <31.326063, 26.698708, 48.712357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610603, 26.286045, 48.912884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737391, 26.134903, 49.260853>,  <30.813463, 26.044218, 49.469635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737391, 26.134903, 49.260853>,  <30.610603, 26.286045, 48.912884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737391, 26.134903, 49.260853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946856, 0.178991, -0.267254,
		-0.054725, 0.908399, 0.414507,
		0.316967, -0.377853, 0.869919,
		30.832481, 26.021547, 49.521828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057814, 26.703339, 49.399719>,  <30.610603, 26.286045, 48.912884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057814, 26.703339, 49.399719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188688, 26.331968, 49.470119>,  <31.267214, 26.109146, 49.512360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188688, 26.331968, 49.470119>,  <31.057814, 26.703339, 49.399719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188688, 26.331968, 49.470119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895016, 0.244720, -0.372906,
		0.303144, 0.279535, 0.911024,
		0.327186, -0.928425, 0.176003,
		31.286844, 26.053440, 49.522919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604549, 26.728407, 49.866829>,  <31.057814, 26.703339, 49.399719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604549, 26.728407, 49.866829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621319, 26.414431, 49.619568>,  <31.631380, 26.226046, 49.471210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621319, 26.414431, 49.619568>,  <31.604549, 26.728407, 49.866829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621319, 26.414431, 49.619568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875980, 0.326438, -0.355102,
		0.480522, -0.526602, 0.701277,
		0.041926, -0.784939, -0.618153,
		31.633896, 26.178949, 49.434120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378395, 26.573769, 49.848633>,  <31.604549, 26.728407, 49.866829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378395, 26.573769, 49.848633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211086, 26.442490, 49.509850>,  <32.110703, 26.363722, 49.306580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211086, 26.442490, 49.509850>,  <32.378395, 26.573769, 49.848633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211086, 26.442490, 49.509850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831326, 0.237389, -0.502538,
		0.365990, -0.914293, 0.173548,
		-0.418268, -0.328199, -0.846958,
		32.085606, 26.344030, 49.255764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948700, 26.310762, 49.518452>,  <32.378395, 26.573769, 49.848633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948700, 26.310762, 49.518452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672359, 26.377499, 49.237057>,  <32.506557, 26.417540, 49.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672359, 26.377499, 49.237057>,  <32.948700, 26.310762, 49.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672359, 26.377499, 49.237057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716894, 0.284253, -0.636603,
		0.093756, -0.944121, -0.315983,
		-0.690849, 0.166841, -0.703485,
		32.465103, 26.427551, 49.026012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083477, 25.663071, 49.727432>,  <32.948700, 26.310762, 49.518452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083477, 25.663071, 49.727432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269775, 25.310349, 49.697781>,  <33.381554, 25.098715, 49.679989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269775, 25.310349, 49.697781>,  <33.083477, 25.663071, 49.727432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269775, 25.310349, 49.697781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654798, 0.399773, -0.641421,
		0.595245, 0.250200, 0.763599,
		0.465750, -0.881806, -0.074133,
		33.409500, 25.045807, 49.675541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811447, 25.751202, 49.697865>,  <33.083477, 25.663071, 49.727432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811447, 25.751202, 49.697865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732307, 25.400267, 49.522987>,  <33.684822, 25.189707, 49.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732307, 25.400267, 49.522987>,  <33.811447, 25.751202, 49.697865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732307, 25.400267, 49.522987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478268, 0.302918, -0.824318,
		0.855638, -0.372185, 0.359670,
		-0.197848, -0.877337, -0.437192,
		33.672955, 25.137066, 49.391830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409847, 25.444393, 49.450146>,  <33.811447, 25.751202, 49.697865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409847, 25.444393, 49.450146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076046, 25.379513, 49.239510>,  <33.875767, 25.340586, 49.113129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076046, 25.379513, 49.239510>,  <34.409847, 25.444393, 49.450146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076046, 25.379513, 49.239510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428927, 0.408670, -0.805612,
		0.345871, -0.898154, -0.271464,
		-0.834502, -0.162199, -0.526590,
		33.825695, 25.330853, 49.081532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590786, 25.094069, 48.871426>,  <34.409847, 25.444393, 49.450146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590786, 25.094069, 48.871426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271492, 25.326855, 48.809292>,  <34.079914, 25.466526, 48.772011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271492, 25.326855, 48.809292>,  <34.590786, 25.094069, 48.871426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271492, 25.326855, 48.809292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341143, 0.224265, -0.912867,
		-0.496422, -0.781678, -0.377552,
		-0.798240, 0.581967, -0.155334,
		34.032021, 25.501444, 48.762691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318436, 24.982660, 48.168465>,  <34.590786, 25.094069, 48.871426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318436, 24.982660, 48.168465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221352, 25.357306, 48.269539>,  <34.163101, 25.582092, 48.330181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221352, 25.357306, 48.269539>,  <34.318436, 24.982660, 48.168465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221352, 25.357306, 48.269539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173181, 0.298119, -0.938687,
		-0.954515, -0.184072, -0.234561,
		-0.242713, 0.936612, 0.252681,
		34.148537, 25.638288, 48.345345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838257, 25.182884, 47.714535>,  <34.318436, 24.982660, 48.168465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838257, 25.182884, 47.714535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001400, 25.519478, 47.856274>,  <34.099285, 25.721434, 47.941315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001400, 25.519478, 47.856274>,  <33.838257, 25.182884, 47.714535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001400, 25.519478, 47.856274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063166, 0.361154, -0.930364,
		-0.910859, 0.401836, 0.094145,
		0.407855, 0.841484, 0.354343,
		34.123756, 25.771923, 47.962578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628223, 25.628904, 47.256138>,  <33.838257, 25.182884, 47.714535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628223, 25.628904, 47.256138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920334, 25.845390, 47.422890>,  <34.095600, 25.975281, 47.522942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920334, 25.845390, 47.422890>,  <33.628223, 25.628904, 47.256138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920334, 25.845390, 47.422890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152836, 0.465325, -0.871845,
		-0.665838, 0.700400, 0.257098,
		0.730274, 0.541214, 0.416878,
		34.139416, 26.007755, 47.547955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597198, 26.206633, 46.898304>,  <33.628223, 25.628904, 47.256138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597198, 26.206633, 46.898304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957981, 26.261976, 47.061928>,  <34.174450, 26.295183, 47.160103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957981, 26.261976, 47.061928>,  <33.597198, 26.206633, 46.898304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957981, 26.261976, 47.061928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267541, 0.564516, -0.780861,
		-0.338959, 0.813743, 0.472153,
		0.901958, 0.138360, 0.409057,
		34.228569, 26.303484, 47.184647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683098, 26.900339, 46.917778>,  <33.597198, 26.206633, 46.898304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683098, 26.900339, 46.917778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036743, 26.714041, 46.902664>,  <34.248928, 26.602261, 46.893597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036743, 26.714041, 46.902664>,  <33.683098, 26.900339, 46.917778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036743, 26.714041, 46.902664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292992, 0.615533, -0.731624,
		0.364010, 0.635766, 0.680660,
		0.884111, -0.465747, -0.037786,
		34.301975, 26.574316, 46.891327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134159, 27.470671, 46.701275>,  <33.683098, 26.900339, 46.917778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134159, 27.470671, 46.701275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331028, 27.132616, 46.617836>,  <34.449150, 26.929783, 46.567772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331028, 27.132616, 46.617836>,  <34.134159, 27.470671, 46.701275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331028, 27.132616, 46.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382382, 0.425169, -0.820375,
		0.782015, 0.324005, 0.532422,
		0.492175, -0.845134, -0.208595,
		34.478680, 26.879076, 46.555256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809158, 27.702225, 46.496613>,  <34.134159, 27.470671, 46.701275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809158, 27.702225, 46.496613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748718, 27.327549, 46.370258>,  <34.712452, 27.102743, 46.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748718, 27.327549, 46.370258>,  <34.809158, 27.702225, 46.496613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748718, 27.327549, 46.370258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508415, 0.200408, -0.837467,
		0.847751, -0.287144, 0.445944,
		-0.151103, -0.936688, -0.315884,
		34.703388, 27.046543, 46.275494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496063, 27.532385, 46.196487>,  <34.809158, 27.702225, 46.496613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496063, 27.532385, 46.196487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194508, 27.297144, 46.079327>,  <35.013577, 27.156000, 46.009029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194508, 27.297144, 46.079327>,  <35.496063, 27.532385, 46.196487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194508, 27.297144, 46.079327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378718, -0.024689, -0.925183,
		0.536871, -0.808410, 0.241337,
		-0.753885, -0.588103, -0.292905,
		34.968342, 27.120712, 45.991455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807022, 27.175207, 45.697441>,  <35.496063, 27.532385, 46.196487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807022, 27.175207, 45.697441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422043, 27.101919, 45.617321>,  <35.191055, 27.057947, 45.569248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422043, 27.101919, 45.617321>,  <35.807022, 27.175207, 45.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422043, 27.101919, 45.617321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214139, -0.058972, -0.975021,
		0.166832, -0.981302, 0.095992,
		-0.962451, -0.183220, -0.200296,
		35.133308, 27.046953, 45.557232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832737, 26.865110, 45.122787>,  <35.807022, 27.175207, 45.697441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832737, 26.865110, 45.122787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459618, 27.009220, 45.118855>,  <35.235748, 27.095686, 45.116497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459618, 27.009220, 45.118855>,  <35.832737, 26.865110, 45.122787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459618, 27.009220, 45.118855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025944, 0.039921, -0.998866,
		-0.359473, -0.931992, -0.046585,
		-0.932795, 0.360274, -0.009829,
		35.179779, 27.117302, 45.115906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514988, 26.656837, 44.527908>,  <35.832737, 26.865110, 45.122787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514988, 26.656837, 44.527908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252766, 26.936750, 44.641438>,  <35.095432, 27.104698, 44.709557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252766, 26.936750, 44.641438>,  <35.514988, 26.656837, 44.527908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252766, 26.936750, 44.641438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112391, 0.281253, -0.953029,
		-0.746738, -0.656661, -0.105727,
		-0.655554, 0.699780, 0.283825,
		35.056099, 27.146685, 44.726585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848999, 26.463953, 44.072327>,  <35.514988, 26.656837, 44.527908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848999, 26.463953, 44.072327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872349, 26.844009, 44.194847>,  <34.886356, 27.072044, 44.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872349, 26.844009, 44.194847>,  <34.848999, 26.463953, 44.072327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872349, 26.844009, 44.194847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172498, 0.311811, -0.934354,
		-0.983279, 0.001702, 0.182099,
		0.058371, 0.950143, 0.306304,
		34.889858, 27.129053, 44.286739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375687, 26.804588, 43.556999>,  <34.848999, 26.463953, 44.072327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375687, 26.804588, 43.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597549, 27.086666, 43.733662>,  <34.730667, 27.255913, 43.839657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597549, 27.086666, 43.733662>,  <34.375687, 26.804588, 43.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597549, 27.086666, 43.733662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029265, 0.513918, -0.857340,
		-0.831566, 0.488452, 0.264410,
		0.554655, 0.705197, 0.441651,
		34.763947, 27.298225, 43.866158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087505, 27.423340, 43.526798>,  <34.375687, 26.804588, 43.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087505, 27.423340, 43.526798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468018, 27.540804, 43.564396>,  <34.696323, 27.611282, 43.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468018, 27.540804, 43.564396>,  <34.087505, 27.423340, 43.526798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468018, 27.540804, 43.564396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052991, 0.456009, -0.888396,
		-0.303751, 0.840130, 0.449352,
		0.951277, 0.293663, 0.093994,
		34.753399, 27.628902, 43.592594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141979, 28.022552, 43.215153>,  <34.087505, 27.423340, 43.526798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141979, 28.022552, 43.215153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529518, 27.925531, 43.235149>,  <34.762043, 27.867319, 43.247147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529518, 27.925531, 43.235149>,  <34.141979, 28.022552, 43.215153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529518, 27.925531, 43.235149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157708, 0.448642, -0.879687,
		0.190941, 0.860168, 0.472919,
		0.968850, -0.242551, 0.049991,
		34.820171, 27.852766, 43.250145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489418, 28.558636, 42.846531>,  <34.141979, 28.022552, 43.215153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489418, 28.558636, 42.846531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781109, 28.286192, 42.872799>,  <34.956123, 28.122725, 42.888557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781109, 28.286192, 42.872799>,  <34.489418, 28.558636, 42.846531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781109, 28.286192, 42.872799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287020, 0.217351, -0.932941,
		0.621163, 0.699176, 0.353991,
		0.729230, -0.681111, 0.065666,
		34.999878, 28.081860, 42.892498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098949, 28.868734, 42.575012>,  <34.489418, 28.558636, 42.846531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098949, 28.868734, 42.575012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157917, 28.474028, 42.547993>,  <35.193298, 28.237204, 42.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157917, 28.474028, 42.547993>,  <35.098949, 28.868734, 42.575012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157917, 28.474028, 42.547993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256656, 0.104124, -0.960878,
		0.955194, 0.124314, 0.268609,
		0.147419, -0.986764, -0.067553,
		35.202145, 28.177998, 42.527725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767342, 28.764494, 42.199482>,  <35.098949, 28.868734, 42.575012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767342, 28.764494, 42.199482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557373, 28.426891, 42.155468>,  <35.431393, 28.224329, 42.129059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557373, 28.426891, 42.155468>,  <35.767342, 28.764494, 42.199482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557373, 28.426891, 42.155468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154429, 0.032687, -0.987463,
		0.837022, -0.535336, 0.113181,
		-0.524925, -0.844007, -0.110031,
		35.399895, 28.173689, 42.122459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226349, 28.335289, 41.979740>,  <35.767342, 28.764494, 42.199482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226349, 28.335289, 41.979740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872486, 28.186867, 41.866821>,  <35.660168, 28.097813, 41.799068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872486, 28.186867, 41.866821>,  <36.226349, 28.335289, 41.979740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872486, 28.186867, 41.866821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340521, -0.100632, -0.934836,
		0.318468, -0.923142, 0.215377,
		-0.884660, -0.371055, -0.282301,
		35.607086, 28.075550, 41.782131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475609, 27.782005, 41.607590>,  <36.226349, 28.335289, 41.979740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475609, 27.782005, 41.607590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099792, 27.859127, 41.494396>,  <35.874302, 27.905399, 41.426479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099792, 27.859127, 41.494396>,  <36.475609, 27.782005, 41.607590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099792, 27.859127, 41.494396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320328, 0.202815, -0.925341,
		-0.121015, -0.960048, -0.252314,
		-0.939545, 0.192804, -0.282987,
		35.817928, 27.916967, 41.409500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329494, 27.417063, 40.985683>,  <36.475609, 27.782005, 41.607590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329494, 27.417063, 40.985683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079113, 27.728825, 40.996395>,  <35.928886, 27.915882, 41.002823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079113, 27.728825, 40.996395>,  <36.329494, 27.417063, 40.985683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079113, 27.728825, 40.996395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114272, 0.125634, -0.985474,
		-0.771445, -0.613798, -0.167705,
		-0.625951, 0.779402, 0.026780,
		35.891327, 27.962645, 41.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997292, 27.304668, 40.302090>,  <36.329494, 27.417063, 40.985683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997292, 27.304668, 40.302090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876621, 27.671259, 40.407207>,  <35.804218, 27.891212, 40.470280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876621, 27.671259, 40.407207>,  <35.997292, 27.304668, 40.302090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876621, 27.671259, 40.407207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019743, 0.269577, -0.962776,
		-0.953205, -0.295639, -0.063232,
		-0.301680, 0.916475, 0.262799,
		35.786118, 27.946201, 40.486046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405663, 27.478167, 39.940372>,  <35.997292, 27.304668, 40.302090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405663, 27.478167, 39.940372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553299, 27.840591, 40.023148>,  <35.641880, 28.058046, 40.072815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553299, 27.840591, 40.023148>,  <35.405663, 27.478167, 39.940372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553299, 27.840591, 40.023148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133511, 0.272042, -0.952978,
		-0.919754, 0.324107, 0.221377,
		0.369091, 0.906062, 0.206940,
		35.664024, 28.112410, 40.085228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006550, 27.996109, 39.541248>,  <35.405663, 27.478167, 39.940372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006550, 27.996109, 39.541248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327812, 28.218954, 39.625690>,  <35.520569, 28.352661, 39.676353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327812, 28.218954, 39.625690>,  <35.006550, 27.996109, 39.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327812, 28.218954, 39.625690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148007, 0.529810, -0.835102,
		-0.577092, 0.639472, 0.507977,
		0.803155, 0.557115, 0.211103,
		35.568760, 28.386089, 39.689022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839817, 28.803335, 39.394432>,  <35.006550, 27.996109, 39.541248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839817, 28.803335, 39.394432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235626, 28.749207, 39.374336>,  <35.473114, 28.716730, 39.362278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235626, 28.749207, 39.374336>,  <34.839817, 28.803335, 39.394432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235626, 28.749207, 39.374336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042539, 0.605975, -0.794345,
		0.137934, 0.783889, 0.605386,
		0.989527, -0.135319, -0.050239,
		35.532486, 28.708611, 39.359264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228401, 29.445240, 39.489330>,  <34.839817, 28.803335, 39.394432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228401, 29.445240, 39.489330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457325, 29.194494, 39.277859>,  <35.594681, 29.044046, 39.150974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457325, 29.194494, 39.277859>,  <35.228401, 29.445240, 39.489330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457325, 29.194494, 39.277859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059752, 0.674867, -0.735516,
		0.817856, 0.389355, 0.423691,
		0.572312, -0.626863, -0.528679,
		35.629017, 29.006435, 39.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791798, 29.803923, 39.264221>,  <35.228401, 29.445240, 39.489330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791798, 29.803923, 39.264221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775383, 29.506838, 38.996880>,  <35.765533, 29.328587, 38.836475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775383, 29.506838, 38.996880>,  <35.791798, 29.803923, 39.264221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775383, 29.506838, 38.996880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000188, 0.668911, -0.743343,
		0.999158, -0.030631, -0.027311,
		-0.041038, -0.742711, -0.668353,
		35.763073, 29.284025, 38.796375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242565, 30.006315, 38.799782>,  <35.791798, 29.803923, 39.264221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242565, 30.006315, 38.799782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062763, 29.717403, 38.589539>,  <35.954884, 29.544056, 38.463394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062763, 29.717403, 38.589539>,  <36.242565, 30.006315, 38.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062763, 29.717403, 38.589539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063158, 0.612625, -0.787847,
		0.891043, -0.320944, -0.320995,
		-0.449503, -0.722279, -0.525605,
		35.927914, 29.500719, 38.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426270, 30.148888, 38.104870>,  <36.242565, 30.006315, 38.799782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426270, 30.148888, 38.104870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096584, 29.923773, 38.079762>,  <35.898773, 29.788704, 38.064697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096584, 29.923773, 38.079762>,  <36.426270, 30.148888, 38.104870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096584, 29.923773, 38.079762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362292, 0.609268, -0.705363,
		0.435215, -0.558629, -0.706061,
		-0.824216, -0.562785, -0.062775,
		35.849319, 29.754938, 38.060928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331718, 30.193840, 37.472713>,  <36.426270, 30.148888, 38.104870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331718, 30.193840, 37.472713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974022, 30.089106, 37.617912>,  <35.759403, 30.026264, 37.705032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974022, 30.089106, 37.617912>,  <36.331718, 30.193840, 37.472713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974022, 30.089106, 37.617912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435624, 0.695347, -0.571598,
		-0.102742, -0.669278, -0.735874,
		-0.894246, -0.261837, 0.362995,
		35.705750, 30.010555, 37.726810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906246, 30.300777, 36.901711>,  <36.331718, 30.193840, 37.472713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906246, 30.300777, 36.901711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642887, 30.268124, 37.201004>,  <35.484871, 30.248531, 37.380581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642887, 30.268124, 37.201004>,  <35.906246, 30.300777, 36.901711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642887, 30.268124, 37.201004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544287, 0.738266, -0.398390,
		-0.519870, -0.669551, -0.530506,
		-0.658397, -0.081637, 0.748230,
		35.445370, 30.243633, 37.425472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266941, 30.087381, 36.627186>,  <35.906246, 30.300777, 36.901711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266941, 30.087381, 36.627186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194431, 30.277929, 36.971329>,  <35.150925, 30.392258, 37.177814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194431, 30.277929, 36.971329>,  <35.266941, 30.087381, 36.627186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194431, 30.277929, 36.971329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559190, 0.669727, -0.488643,
		-0.808978, -0.569682, 0.144974,
		-0.181278, 0.476369, 0.860355,
		35.140049, 30.420839, 37.229435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467903, 30.353296, 36.663643>,  <35.266941, 30.087381, 36.627186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467903, 30.353296, 36.663643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648411, 30.572138, 36.945644>,  <34.756714, 30.703444, 37.114845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648411, 30.572138, 36.945644>,  <34.467903, 30.353296, 36.663643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648411, 30.572138, 36.945644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476397, 0.815723, -0.328088,
		-0.754589, -0.187808, 0.628747,
		0.451266, 0.547105, 0.705007,
		34.783791, 30.736269, 37.157146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895962, 30.885672, 36.778229>,  <34.467903, 30.353296, 36.663643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895962, 30.885672, 36.778229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243118, 31.037550, 36.906353>,  <34.451412, 31.128677, 36.983227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243118, 31.037550, 36.906353>,  <33.895962, 30.885672, 36.778229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243118, 31.037550, 36.906353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246402, 0.888935, -0.386109,
		-0.431336, 0.256176, 0.865057,
		0.867891, 0.379695, 0.320308,
		34.503487, 31.151459, 37.002445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783062, 31.339170, 37.239616>,  <33.895962, 30.885672, 36.778229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783062, 31.339170, 37.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147938, 31.450748, 37.119553>,  <34.366863, 31.517694, 37.047516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147938, 31.450748, 37.119553>,  <33.783062, 31.339170, 37.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147938, 31.450748, 37.119553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328848, 0.935375, -0.130121,
		0.244462, 0.217402, 0.944973,
		0.912193, 0.278943, -0.300156,
		34.421597, 31.534431, 37.029507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879459, 32.145924, 37.469826>,  <33.783062, 31.339170, 37.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879459, 32.145924, 37.469826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180344, 32.125870, 37.207020>,  <34.360874, 32.113838, 37.049335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180344, 32.125870, 37.207020>,  <33.879459, 32.145924, 37.469826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180344, 32.125870, 37.207020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248115, 0.902161, -0.352908,
		0.610430, 0.428476, 0.666171,
		0.752206, -0.050138, -0.657018,
		34.406006, 32.110828, 37.009914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098206, 32.829330, 37.403496>,  <33.879459, 32.145924, 37.469826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098206, 32.829330, 37.403496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274670, 32.660240, 37.086842>,  <34.380547, 32.558784, 36.896851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274670, 32.660240, 37.086842>,  <34.098206, 32.829330, 37.403496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274670, 32.660240, 37.086842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119068, 0.846743, -0.518507,
		0.889497, 0.323001, 0.323213,
		0.441156, -0.422725, -0.791634,
		34.407017, 32.533424, 36.849350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794086, 33.205967, 37.296623>,  <34.098206, 32.829330, 37.403496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794086, 33.205967, 37.296623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641029, 33.044315, 36.964294>,  <34.549194, 32.947323, 36.764896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641029, 33.044315, 36.964294>,  <34.794086, 33.205967, 37.296623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641029, 33.044315, 36.964294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044006, 0.906210, -0.420531,
		0.922847, -0.124352, -0.364540,
		-0.382644, -0.404128, -0.830822,
		34.526237, 32.923077, 36.715050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119583, 33.583633, 36.856838>,  <34.794086, 33.205967, 37.296623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119583, 33.583633, 36.856838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810028, 33.438354, 36.649303>,  <34.624294, 33.351189, 36.524784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810028, 33.438354, 36.649303>,  <35.119583, 33.583633, 36.856838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810028, 33.438354, 36.649303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082147, 0.869869, -0.486395,
		0.627977, -0.333792, -0.703013,
		-0.773884, -0.363196, -0.518838,
		34.577862, 33.329395, 36.493652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826324, 33.815220, 36.663998>,  <35.119583, 33.583633, 36.856838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826324, 33.815220, 36.663998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987476, 33.734573, 36.306889>,  <36.084167, 33.686184, 36.092625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987476, 33.734573, 36.306889>,  <35.826324, 33.815220, 36.663998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987476, 33.734573, 36.306889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720016, -0.532369, 0.445151,
		-0.565033, -0.822152, -0.069314,
		0.402882, -0.201618, -0.892769,
		36.108341, 33.674088, 36.039059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888504, 33.094997, 36.289528>,  <35.826324, 33.815220, 36.663998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888504, 33.094997, 36.289528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192120, 33.349567, 36.234657>,  <36.374290, 33.502308, 36.201736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192120, 33.349567, 36.234657>,  <35.888504, 33.094997, 36.289528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192120, 33.349567, 36.234657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600076, -0.602190, 0.526569,
		0.252516, -0.482005, -0.838992,
		0.759042, 0.636426, -0.137177,
		36.419830, 33.540497, 36.193504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594128, 32.708687, 36.078609>,  <35.888504, 33.094997, 36.289528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594128, 32.708687, 36.078609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718357, 33.054573, 36.236507>,  <36.792892, 33.262104, 36.331245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718357, 33.054573, 36.236507>,  <36.594128, 32.708687, 36.078609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718357, 33.054573, 36.236507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602328, -0.500286, 0.622026,
		0.735356, 0.044582, -0.676213,
		0.310569, 0.864712, 0.394741,
		36.811527, 33.313988, 36.354931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332104, 32.668373, 36.112240>,  <36.594128, 32.708687, 36.078609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332104, 32.668373, 36.112240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231335, 32.937473, 36.390503>,  <37.170872, 33.098934, 36.557461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231335, 32.937473, 36.390503>,  <37.332104, 32.668373, 36.112240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231335, 32.937473, 36.390503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709412, -0.360549, 0.605590,
		0.658231, 0.646070, -0.386428,
		-0.251927, 0.672754, 0.695654,
		37.155758, 33.139301, 36.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940296, 32.893196, 36.339828>,  <37.332104, 32.668373, 36.112240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940296, 32.893196, 36.339828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698833, 33.011604, 36.635929>,  <37.553955, 33.082649, 36.813587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698833, 33.011604, 36.635929>,  <37.940296, 32.893196, 36.339828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698833, 33.011604, 36.635929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678325, -0.297159, 0.671991,
		0.418892, 0.907784, -0.021412,
		-0.603659, 0.296016, 0.740250,
		37.517735, 33.100410, 36.858006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216606, 33.391254, 36.896442>,  <37.940296, 32.893196, 36.339828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216606, 33.391254, 36.896442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918770, 33.181328, 37.061440>,  <37.740070, 33.055370, 37.160439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918770, 33.181328, 37.061440>,  <38.216606, 33.391254, 36.896442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918770, 33.181328, 37.061440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647653, -0.418328, 0.636826,
		-0.161662, 0.741327, 0.651384,
		-0.744588, -0.524821, 0.412495,
		37.695393, 33.023880, 37.185188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491268, 33.309368, 37.496956>,  <38.216606, 33.391254, 36.896442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491268, 33.309368, 37.496956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169357, 33.073914, 37.527531>,  <37.976212, 32.932640, 37.545876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169357, 33.073914, 37.527531>,  <38.491268, 33.309368, 37.496956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169357, 33.073914, 37.527531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421068, -0.475371, 0.772479,
		-0.418377, 0.653856, 0.630423,
		-0.804775, -0.588638, 0.076433,
		37.927925, 32.897324, 37.550461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490170, 33.215237, 38.138161>,  <38.491268, 33.309368, 37.496956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490170, 33.215237, 38.138161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245129, 32.925232, 38.012260>,  <38.098103, 32.751228, 37.936722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245129, 32.925232, 38.012260>,  <38.490170, 33.215237, 38.138161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245129, 32.925232, 38.012260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184395, -0.518328, 0.835066,
		-0.768578, 0.453528, 0.451220,
		-0.612606, -0.725016, -0.314747,
		38.061348, 32.707726, 37.917835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084015, 33.108547, 38.667751>,  <38.490170, 33.215237, 38.138161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084015, 33.108547, 38.667751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047092, 32.762188, 38.471104>,  <38.024940, 32.554371, 38.353115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047092, 32.762188, 38.471104>,  <38.084015, 33.108547, 38.667751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047092, 32.762188, 38.471104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158349, -0.500212, 0.851301,
		-0.983060, 0.000729, 0.183285,
		-0.092302, -0.865903, -0.491623,
		38.019402, 32.502419, 38.323616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714737, 32.658257, 39.153553>,  <38.084015, 33.108547, 38.667751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714737, 32.658257, 39.153553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893929, 32.423370, 38.883888>,  <38.001442, 32.282440, 38.722088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893929, 32.423370, 38.883888>,  <37.714737, 32.658257, 39.153553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893929, 32.423370, 38.883888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312881, -0.603407, 0.733488,
		-0.837510, -0.539519, -0.086584,
		0.447976, -0.587213, -0.674165,
		38.028320, 32.247208, 38.681641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331177, 32.155186, 38.991219>,  <37.714737, 32.658257, 39.153553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331177, 32.155186, 38.991219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720062, 32.066795, 38.960312>,  <37.953392, 32.013763, 38.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720062, 32.066795, 38.960312>,  <37.331177, 32.155186, 38.991219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720062, 32.066795, 38.960312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129803, -0.783555, 0.607612,
		-0.194810, -0.580700, -0.790467,
		0.972214, -0.220974, -0.077268,
		38.011726, 32.000504, 38.937130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320755, 31.397425, 39.031857>,  <37.331177, 32.155186, 38.991219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320755, 31.397425, 39.031857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710239, 31.484825, 39.057583>,  <37.943932, 31.537266, 39.073017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710239, 31.484825, 39.057583>,  <37.320755, 31.397425, 39.031857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710239, 31.484825, 39.057583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135333, -0.782131, 0.608240,
		0.183205, -0.583548, -0.791143,
		0.973715, 0.218501, 0.064317,
		38.002354, 31.550375, 39.076878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797146, 30.733610, 38.977512>,  <37.320755, 31.397425, 39.031857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797146, 30.733610, 38.977512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005035, 31.014105, 39.172714>,  <38.129768, 31.182402, 39.289837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005035, 31.014105, 39.172714>,  <37.797146, 30.733610, 38.977512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005035, 31.014105, 39.172714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257878, -0.673334, 0.692907,
		0.814483, -0.234277, -0.530784,
		0.519727, 0.701238, 0.488004,
		38.160954, 31.224476, 39.319115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116814, 30.279701, 39.347797>,  <37.797146, 30.733610, 38.977512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116814, 30.279701, 39.347797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172642, 30.635334, 39.522179>,  <38.206139, 30.848713, 39.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172642, 30.635334, 39.522179>,  <38.116814, 30.279701, 39.347797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172642, 30.635334, 39.522179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148520, -0.454078, 0.878496,
		0.979011, -0.057861, -0.195421,
		0.139567, 0.889081, 0.435954,
		38.214512, 30.902058, 39.652966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697033, 30.121834, 39.822243>,  <38.116814, 30.279701, 39.347797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697033, 30.121834, 39.822243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512589, 30.454044, 39.947208>,  <38.401924, 30.653372, 40.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512589, 30.454044, 39.947208>,  <38.697033, 30.121834, 39.822243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512589, 30.454044, 39.947208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034056, -0.335256, 0.941511,
		0.886690, 0.444778, 0.126305,
		-0.461108, 0.830527, 0.312416,
		38.374256, 30.703203, 40.040932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879974, 30.131884, 40.461601>,  <38.697033, 30.121834, 39.822243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879974, 30.131884, 40.461601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576500, 30.392118, 40.448116>,  <38.394417, 30.548260, 40.440025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576500, 30.392118, 40.448116>,  <38.879974, 30.131884, 40.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576500, 30.392118, 40.448116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244780, -0.236729, 0.940235,
		0.603725, 0.721591, 0.338854,
		-0.758682, 0.650588, -0.033712,
		38.348896, 30.587296, 40.438004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936920, 30.593689, 41.107590>,  <38.879974, 30.131884, 40.461601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936920, 30.593689, 41.107590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563099, 30.575922, 40.966370>,  <38.338806, 30.565262, 40.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563099, 30.575922, 40.966370>,  <38.936920, 30.593689, 41.107590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563099, 30.575922, 40.966370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336973, -0.208226, 0.918200,
		-0.114296, 0.977072, 0.179630,
		-0.934551, -0.044416, -0.353046,
		38.282734, 30.562597, 40.860455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594257, 30.861467, 41.669514>,  <38.936920, 30.593689, 41.107590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594257, 30.861467, 41.669514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329884, 30.655617, 41.451038>,  <38.171257, 30.532106, 41.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329884, 30.655617, 41.451038>,  <38.594257, 30.861467, 41.669514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329884, 30.655617, 41.451038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437419, -0.327212, 0.837614,
		-0.609777, 0.792524, -0.008840,
		-0.660936, -0.514624, -0.546191,
		38.131603, 30.501230, 41.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991047, 31.005953, 41.984989>,  <38.594257, 30.861467, 41.669514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991047, 31.005953, 41.984989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955784, 30.662880, 41.782364>,  <37.934628, 30.457035, 41.660789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955784, 30.662880, 41.782364>,  <37.991047, 31.005953, 41.984989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955784, 30.662880, 41.782364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381394, -0.440727, 0.812587,
		-0.920199, 0.264836, -0.288263,
		-0.088157, -0.857684, -0.506563,
		37.929337, 30.405575, 41.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462444, 30.737514, 42.352001>,  <37.991047, 31.005953, 41.984989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462444, 30.737514, 42.352001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602806, 30.429525, 42.138832>,  <37.687023, 30.244732, 42.010929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602806, 30.429525, 42.138832>,  <37.462444, 30.737514, 42.352001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602806, 30.429525, 42.138832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311383, -0.632673, 0.709060,
		-0.883124, -0.082868, -0.461763,
		0.350903, -0.769973, -0.532925,
		37.708076, 30.198534, 41.978954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993446, 30.259069, 42.485271>,  <37.462444, 30.737514, 42.352001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993446, 30.259069, 42.485271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316116, 30.058933, 42.359455>,  <37.509720, 29.938852, 42.283966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316116, 30.058933, 42.359455>,  <36.993446, 30.259069, 42.485271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316116, 30.058933, 42.359455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143365, -0.681988, 0.717174,
		-0.573342, -0.533433, -0.621874,
		0.806675, -0.500341, -0.314537,
		37.558121, 29.908831, 42.265095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731754, 29.526981, 42.382343>,  <36.993446, 30.259069, 42.485271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731754, 29.526981, 42.382343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126125, 29.531279, 42.449074>,  <37.362747, 29.533857, 42.489113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126125, 29.531279, 42.449074>,  <36.731754, 29.526981, 42.382343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126125, 29.531279, 42.449074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112706, -0.694314, 0.710792,
		0.123467, -0.719592, -0.683332,
		0.985928, 0.010744, 0.166827,
		37.421906, 29.534502, 42.499123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019711, 28.804558, 42.323391>,  <36.731754, 29.526981, 42.382343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019711, 28.804558, 42.323391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295052, 29.006233, 42.531994>,  <37.460255, 29.127237, 42.657154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295052, 29.006233, 42.531994>,  <37.019711, 28.804558, 42.323391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295052, 29.006233, 42.531994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057866, -0.754821, 0.653374,
		0.723067, -0.419572, -0.548756,
		0.688350, 0.504187, 0.521507,
		37.501556, 29.157490, 42.688446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477451, 28.391716, 42.447025>,  <37.019711, 28.804558, 42.323391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477451, 28.391716, 42.447025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565002, 28.664770, 42.725910>,  <37.617535, 28.828602, 42.893242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565002, 28.664770, 42.725910>,  <37.477451, 28.391716, 42.447025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565002, 28.664770, 42.725910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190127, -0.730677, 0.655716,
		0.957049, -0.010964, -0.289717,
		0.218878, 0.682636, 0.697209,
		37.630665, 28.869560, 42.935074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088993, 28.107702, 42.777798>,  <37.477451, 28.391716, 42.447025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088993, 28.107702, 42.777798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911404, 28.370165, 43.021877>,  <37.804852, 28.527643, 43.168327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911404, 28.370165, 43.021877>,  <38.088993, 28.107702, 42.777798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911404, 28.370165, 43.021877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124456, -0.629239, 0.767183,
		0.887356, 0.416551, 0.197701,
		-0.443972, 0.656158, 0.610201,
		37.778214, 28.567013, 43.204937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547417, 28.215126, 43.304512>,  <38.088993, 28.107702, 42.777798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547417, 28.215126, 43.304512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194122, 28.328266, 43.454121>,  <37.982147, 28.396151, 43.543884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194122, 28.328266, 43.454121>,  <38.547417, 28.215126, 43.304512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194122, 28.328266, 43.454121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038188, -0.751567, 0.658550,
		0.467374, 0.595937, 0.653009,
		-0.883235, 0.282852, 0.374020,
		37.929153, 28.413122, 43.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553230, 27.940271, 43.938019>,  <38.547417, 28.215126, 43.304512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553230, 27.940271, 43.938019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171394, 28.054714, 43.971249>,  <37.942291, 28.123379, 43.991184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171394, 28.054714, 43.971249>,  <38.553230, 27.940271, 43.938019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171394, 28.054714, 43.971249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086101, -0.531880, 0.842431,
		0.285209, 0.797024, 0.532361,
		-0.954590, 0.286106, 0.083073,
		37.885017, 28.140547, 43.996170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450703, 28.285116, 44.567924>,  <38.553230, 27.940271, 43.938019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450703, 28.285116, 44.567924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109241, 28.123713, 44.436195>,  <37.904366, 28.026871, 44.357159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109241, 28.123713, 44.436195>,  <38.450703, 28.285116, 44.567924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109241, 28.123713, 44.436195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138155, -0.434215, 0.890152,
		-0.502182, 0.805380, 0.314923,
		-0.853655, -0.403510, -0.329322,
		37.853146, 28.002659, 44.337399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959747, 28.437700, 45.078930>,  <38.450703, 28.285116, 44.567924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959747, 28.437700, 45.078930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768482, 28.134275, 44.901867>,  <37.653725, 27.952221, 44.795628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768482, 28.134275, 44.901867>,  <37.959747, 28.437700, 45.078930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768482, 28.134275, 44.901867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002081, -0.504985, 0.863125,
		-0.878271, 0.411790, 0.243042,
		-0.478159, -0.758564, -0.442657,
		37.625034, 27.906706, 44.769070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362091, 28.283785, 45.532558>,  <37.959747, 28.437700, 45.078930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362091, 28.283785, 45.532558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420994, 27.954290, 45.313553>,  <37.456333, 27.756594, 45.182148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420994, 27.954290, 45.313553>,  <37.362091, 28.283785, 45.532558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420994, 27.954290, 45.313553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002268, -0.553267, 0.833001,
		-0.989096, -0.123905, -0.079602,
		0.147254, -0.823738, -0.547515,
		37.465172, 27.707169, 45.149300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764866, 27.902664, 45.606514>,  <37.362091, 28.283785, 45.532558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764866, 27.902664, 45.606514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061356, 27.649052, 45.518337>,  <37.239250, 27.496883, 45.465431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061356, 27.649052, 45.518337>,  <36.764866, 27.902664, 45.606514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061356, 27.649052, 45.518337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177502, -0.501839, 0.846552,
		-0.647366, -0.588355, -0.484516,
		0.741223, -0.634031, -0.220439,
		37.283722, 27.458843, 45.452206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601112, 27.303320, 45.878372>,  <36.764866, 27.902664, 45.606514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601112, 27.303320, 45.878372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988472, 27.211515, 45.839325>,  <37.220886, 27.156433, 45.815895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988472, 27.211515, 45.839325>,  <36.601112, 27.303320, 45.878372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988472, 27.211515, 45.839325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043670, -0.541380, 0.839643,
		-0.245556, -0.808846, -0.534294,
		0.968398, -0.229512, -0.097616,
		37.278992, 27.142662, 45.810040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733261, 26.505688, 45.902500>,  <36.601112, 27.303320, 45.878372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733261, 26.505688, 45.902500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076149, 26.683464, 46.006531>,  <37.281883, 26.790131, 46.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076149, 26.683464, 46.006531>,  <36.733261, 26.505688, 45.902500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076149, 26.683464, 46.006531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107750, -0.648688, 0.753388,
		0.503545, -0.617799, -0.603959,
		0.857224, 0.444441, 0.260076,
		37.333317, 26.816797, 46.084553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084579, 25.951296, 46.065632>,  <36.733261, 26.505688, 45.902500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084579, 25.951296, 46.065632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291496, 26.261087, 46.211285>,  <37.415646, 26.446962, 46.298676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291496, 26.261087, 46.211285>,  <37.084579, 25.951296, 46.065632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291496, 26.261087, 46.211285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237814, -0.538809, 0.808164,
		0.822105, -0.331459, -0.462902,
		0.517289, 0.774480, 0.364132,
		37.446682, 26.493431, 46.320526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764317, 25.668055, 46.248207>,  <37.084579, 25.951296, 46.065632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764317, 25.668055, 46.248207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703262, 25.995363, 46.469887>,  <37.666630, 26.191748, 46.602894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703262, 25.995363, 46.469887>,  <37.764317, 25.668055, 46.248207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703262, 25.995363, 46.469887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057901, -0.552399, 0.831567,
		0.986585, 0.159017, 0.036938,
		-0.152638, 0.818272, 0.554195,
		37.657471, 26.240845, 46.636147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131210, 25.491646, 46.840324>,  <37.764317, 25.668055, 46.248207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131210, 25.491646, 46.840324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937229, 25.819279, 46.962910>,  <37.820839, 26.015858, 47.036461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937229, 25.819279, 46.962910>,  <38.131210, 25.491646, 46.840324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937229, 25.819279, 46.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045598, -0.326274, 0.944175,
		0.873350, 0.471857, 0.120880,
		-0.484955, 0.819083, 0.306467,
		37.791744, 26.065004, 47.054852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534042, 25.717691, 47.451870>,  <38.131210, 25.491646, 46.840324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534042, 25.717691, 47.451870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164444, 25.870634, 47.449638>,  <37.942684, 25.962399, 47.448299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164444, 25.870634, 47.449638>,  <38.534042, 25.717691, 47.451870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164444, 25.870634, 47.449638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220640, -0.521159, 0.824446,
		0.312321, 0.763020, 0.565913,
		-0.923999, 0.382354, -0.005584,
		37.887245, 25.985340, 47.447964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399372, 26.011965, 48.125824>,  <38.534042, 25.717691, 47.451870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399372, 26.011965, 48.125824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045296, 25.929785, 47.958862>,  <37.832848, 25.880476, 47.858685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045296, 25.929785, 47.958862>,  <38.399372, 26.011965, 48.125824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045296, 25.929785, 47.958862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215669, -0.613753, 0.759469,
		-0.412215, 0.762297, 0.498981,
		-0.885193, -0.205450, -0.417402,
		37.779739, 25.868151, 47.833641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851181, 26.234995, 48.634315>,  <38.399372, 26.011965, 48.125824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851181, 26.234995, 48.634315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744675, 25.915089, 48.419102>,  <37.680771, 25.723145, 48.289974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744675, 25.915089, 48.419102>,  <37.851181, 26.234995, 48.634315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744675, 25.915089, 48.419102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021170, -0.553193, 0.832784,
		-0.963668, 0.233131, 0.130364,
		-0.266264, -0.799767, -0.538030,
		37.664795, 25.675159, 48.257694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241882, 26.871771, 48.699005>,  <37.851181, 26.234995, 48.634315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241882, 26.871771, 48.699005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337151, 27.127981, 48.991032>,  <38.394310, 27.281708, 49.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337151, 27.127981, 48.991032>,  <38.241882, 26.871771, 48.699005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337151, 27.127981, 48.991032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109605, 0.764625, -0.635087,
		-0.965020, 0.071237, 0.252313,
		0.238166, 0.640526, 0.730071,
		38.408600, 27.320139, 49.210052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637531, 27.368151, 48.786373>,  <38.241882, 26.871771, 48.699005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637531, 27.368151, 48.786373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989616, 27.519545, 48.900898>,  <38.200867, 27.610380, 48.969612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989616, 27.519545, 48.900898>,  <37.637531, 27.368151, 48.786373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989616, 27.519545, 48.900898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062852, 0.690956, -0.720160,
		-0.470398, 0.615899, 0.631977,
		0.880213, 0.378483, 0.286313,
		38.253681, 27.633089, 48.986794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543922, 28.062374, 48.759514>,  <37.637531, 27.368151, 48.786373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543922, 28.062374, 48.759514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940845, 28.015965, 48.742218>,  <38.178997, 27.988119, 48.731842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940845, 28.015965, 48.742218>,  <37.543922, 28.062374, 48.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940845, 28.015965, 48.742218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061401, 0.764336, -0.641888,
		0.107524, 0.634293, 0.765578,
		0.992305, -0.116026, -0.043239,
		38.238537, 27.981157, 48.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749496, 28.746050, 48.933357>,  <37.543922, 28.062374, 48.759514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749496, 28.746050, 48.933357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043350, 28.553041, 48.742577>,  <38.219662, 28.437237, 48.628109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043350, 28.553041, 48.742577>,  <37.749496, 28.746050, 48.933357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043350, 28.553041, 48.742577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070894, 0.753739, -0.653339,
		0.674746, 0.446154, 0.587932,
		0.734637, -0.482519, -0.476953,
		38.263741, 28.408285, 48.599491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176529, 29.263958, 48.700935>,  <37.749496, 28.746050, 48.933357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176529, 29.263958, 48.700935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316185, 28.961248, 48.479885>,  <38.399979, 28.779623, 48.347256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316185, 28.961248, 48.479885>,  <38.176529, 29.263958, 48.700935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316185, 28.961248, 48.479885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219824, 0.639427, -0.736757,
		0.910923, 0.135748, 0.389605,
		0.349137, -0.756773, -0.552628,
		38.420925, 28.734217, 48.314098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605957, 29.608175, 48.221706>,  <38.176529, 29.263958, 48.700935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605957, 29.608175, 48.221706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600479, 29.248993, 48.045757>,  <38.597191, 29.033484, 47.940189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600479, 29.248993, 48.045757>,  <38.605957, 29.608175, 48.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600479, 29.248993, 48.045757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031462, 0.440080, -0.897407,
		0.999411, 0.001550, -0.034279,
		-0.013695, -0.897957, -0.439870,
		38.596371, 28.979607, 47.913795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300388, 29.487051, 47.728004>,  <38.605957, 29.608175, 48.221706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300388, 29.487051, 47.728004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987019, 29.279312, 47.591457>,  <38.798996, 29.154669, 47.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987019, 29.279312, 47.591457>,  <39.300388, 29.487051, 47.728004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987019, 29.279312, 47.591457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085671, 0.453784, -0.886984,
		0.615558, -0.724128, -0.311011,
		-0.783421, -0.519345, -0.341367,
		38.751991, 29.123508, 47.489048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576447, 29.164822, 47.124218>,  <39.300388, 29.487051, 47.728004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576447, 29.164822, 47.124218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178341, 29.161047, 47.085514>,  <38.939476, 29.158783, 47.062290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178341, 29.161047, 47.085514>,  <39.576447, 29.164822, 47.124218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178341, 29.161047, 47.085514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079850, 0.488414, -0.868951,
		0.055459, -0.872561, -0.485346,
		-0.995263, -0.009437, -0.096761,
		38.879761, 29.158216, 47.056484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412418, 29.000713, 46.480587>,  <39.576447, 29.164822, 47.124218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412418, 29.000713, 46.480587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062450, 29.157326, 46.594585>,  <38.852470, 29.251293, 46.662983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062450, 29.157326, 46.594585>,  <39.412418, 29.000713, 46.480587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062450, 29.157326, 46.594585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088745, 0.448903, -0.889163,
		-0.476069, -0.803237, -0.358007,
		-0.874918, 0.391532, 0.284993,
		38.799976, 29.274786, 46.680084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981583, 29.033916, 45.884335>,  <39.412418, 29.000713, 46.480587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981583, 29.033916, 45.884335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825165, 29.294374, 46.144516>,  <38.731312, 29.450649, 46.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825165, 29.294374, 46.144516>,  <38.981583, 29.033916, 45.884335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825165, 29.294374, 46.144516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241376, 0.609436, -0.755199,
		-0.888155, -0.452322, -0.081147,
		-0.391047, 0.651147, 0.650453,
		38.707851, 29.489719, 46.339653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328304, 29.235821, 45.552120>,  <38.981583, 29.033916, 45.884335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328304, 29.235821, 45.552120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430893, 29.529549, 45.803513>,  <38.492447, 29.705786, 45.954350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430893, 29.529549, 45.803513>,  <38.328304, 29.235821, 45.552120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430893, 29.529549, 45.803513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061795, 0.661362, -0.747517,
		-0.964574, 0.152880, 0.214998,
		0.256472, 0.734322, 0.628486,
		38.507835, 29.749846, 45.992058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833347, 29.796026, 45.339081>,  <38.328304, 29.235821, 45.552120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833347, 29.796026, 45.339081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118118, 29.992455, 45.539883>,  <38.288979, 30.110312, 45.660366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118118, 29.992455, 45.539883>,  <37.833347, 29.796026, 45.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118118, 29.992455, 45.539883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079714, 0.766739, -0.636991,
		-0.697717, 0.413472, 0.585006,
		0.711924, 0.491073, 0.502007,
		38.331696, 30.139776, 45.690483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545681, 30.455193, 45.502743>,  <37.833347, 29.796026, 45.339081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545681, 30.455193, 45.502743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944298, 30.487682, 45.509727>,  <38.183468, 30.507177, 45.513920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944298, 30.487682, 45.509727>,  <37.545681, 30.455193, 45.502743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944298, 30.487682, 45.509727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062696, 0.873138, -0.483425,
		-0.054515, 0.480659, 0.875211,
		0.996543, 0.081226, 0.017464,
		38.243259, 30.512051, 45.514965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789089, 31.146349, 45.698658>,  <37.545681, 30.455193, 45.502743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789089, 31.146349, 45.698658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083012, 30.979063, 45.485058>,  <38.259365, 30.878693, 45.356899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.083012, 30.979063, 45.485058>,  <37.789089, 31.146349, 45.698658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083012, 30.979063, 45.485058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052136, 0.750136, -0.659226,
		0.676269, 0.512245, 0.529401,
		0.734808, -0.418213, -0.534000,
		38.303455, 30.853600, 45.324860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128708, 31.683041, 45.505184>,  <37.789089, 31.146349, 45.698658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128708, 31.683041, 45.505184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286446, 31.423428, 45.244957>,  <38.381088, 31.267660, 45.088821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286446, 31.423428, 45.244957>,  <38.128708, 31.683041, 45.505184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286446, 31.423428, 45.244957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204683, 0.752194, -0.626346,
		0.895876, 0.113838, 0.429473,
		0.394349, -0.649034, -0.650572,
		38.404751, 31.228718, 45.049786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725433, 31.986258, 45.260529>,  <38.128708, 31.683041, 45.505184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725433, 31.986258, 45.260529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622383, 31.726179, 44.974628>,  <38.560555, 31.570131, 44.803089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622383, 31.726179, 44.974628>,  <38.725433, 31.986258, 45.260529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622383, 31.726179, 44.974628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204926, 0.686128, -0.698021,
		0.944264, -0.326299, -0.043522,
		-0.257625, -0.650198, -0.714754,
		38.545094, 31.531120, 44.760204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119633, 32.214756, 44.779224>,  <38.725433, 31.986258, 45.260529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119633, 32.214756, 44.779224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892891, 31.958117, 44.572529>,  <38.756844, 31.804132, 44.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892891, 31.958117, 44.572529>,  <39.119633, 32.214756, 44.779224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892891, 31.958117, 44.572529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155665, 0.532532, -0.831972,
		0.808975, -0.552048, -0.201995,
		-0.566858, -0.641602, -0.516740,
		38.722832, 31.765636, 44.417507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513603, 32.133865, 44.101910>,  <39.119633, 32.214756, 44.779224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513603, 32.133865, 44.101910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140568, 32.000496, 44.046623>,  <38.916744, 31.920473, 44.013451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140568, 32.000496, 44.046623>,  <39.513603, 32.133865, 44.101910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140568, 32.000496, 44.046623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053925, 0.249915, -0.966765,
		0.356887, -0.909048, -0.215088,
		-0.932590, -0.333427, -0.138212,
		38.860790, 31.900469, 44.005161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490570, 31.613993, 43.498455>,  <39.513603, 32.133865, 44.101910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490570, 31.613993, 43.498455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125004, 31.765844, 43.555931>,  <38.905666, 31.856956, 43.590416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125004, 31.765844, 43.555931>,  <39.490570, 31.613993, 43.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125004, 31.765844, 43.555931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075192, 0.189536, -0.978991,
		-0.398890, -0.905514, -0.144673,
		-0.913911, 0.379631, 0.143692,
		38.850830, 31.879734, 43.599037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107048, 31.378632, 42.948387>,  <39.490570, 31.613993, 43.498455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107048, 31.378632, 42.948387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876583, 31.685696, 43.060627>,  <38.738304, 31.869934, 43.127972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876583, 31.685696, 43.060627>,  <39.107048, 31.378632, 42.948387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876583, 31.685696, 43.060627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024527, 0.326917, -0.944734,
		-0.816968, -0.551201, -0.169528,
		-0.576160, 0.767660, 0.280600,
		38.703735, 31.915995, 43.144806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490345, 31.345154, 42.452885>,  <39.107048, 31.378632, 42.948387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490345, 31.345154, 42.452885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503639, 31.710896, 42.614307>,  <38.511616, 31.930340, 42.711159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503639, 31.710896, 42.614307>,  <38.490345, 31.345154, 42.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503639, 31.710896, 42.614307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034823, 0.404590, -0.913835,
		-0.998841, 0.016319, 0.045287,
		0.033236, 0.914352, 0.403553,
		38.513611, 31.985201, 42.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225479, 31.731176, 41.897621>,  <38.490345, 31.345154, 42.452885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225479, 31.731176, 41.897621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382664, 32.005722, 42.142403>,  <38.476974, 32.170448, 42.289272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382664, 32.005722, 42.142403>,  <38.225479, 31.731176, 41.897621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382664, 32.005722, 42.142403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025389, 0.657133, -0.753347,
		-0.919203, 0.311576, 0.240804,
		0.392965, 0.686365, 0.611949,
		38.500553, 32.211632, 42.325989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769249, 32.324764, 41.839695>,  <38.225479, 31.731176, 41.897621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769249, 32.324764, 41.839695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128754, 32.445633, 41.966763>,  <38.344456, 32.518154, 42.043003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128754, 32.445633, 41.966763>,  <37.769249, 32.324764, 41.839695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128754, 32.445633, 41.966763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080193, 0.599038, -0.796694,
		-0.431036, 0.741516, 0.514162,
		0.898764, 0.302171, 0.317671,
		38.398384, 32.536285, 42.062065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710220, 32.986217, 41.654739>,  <37.769249, 32.324764, 41.839695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710220, 32.986217, 41.654739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097008, 32.920288, 41.732506>,  <38.329082, 32.880730, 41.779167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097008, 32.920288, 41.732506>,  <37.710220, 32.986217, 41.654739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097008, 32.920288, 41.732506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254170, 0.566530, -0.783863,
		0.019052, 0.807390, 0.589711,
		0.966972, -0.164821, 0.194420,
		38.387100, 32.870842, 41.790833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172951, 33.606388, 41.769978>,  <37.710220, 32.986217, 41.654739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172951, 33.606388, 41.769978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403114, 33.317017, 41.617371>,  <38.541214, 33.143394, 41.525806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403114, 33.317017, 41.617371>,  <38.172951, 33.606388, 41.769978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403114, 33.317017, 41.617371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386169, 0.651526, -0.652984,
		0.720956, 0.228402, 0.654259,
		0.575409, -0.723427, -0.381520,
		38.575737, 33.099987, 41.502914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669399, 33.946301, 41.719975>,  <38.172951, 33.606388, 41.769978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669399, 33.946301, 41.719975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795654, 33.641499, 41.493801>,  <38.871407, 33.458618, 41.358097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795654, 33.641499, 41.493801>,  <38.669399, 33.946301, 41.719975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795654, 33.641499, 41.493801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432040, 0.645959, -0.629348,
		0.844816, -0.045646, 0.533106,
		0.315637, -0.762006, -0.565438,
		38.890347, 33.412895, 41.324169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384541, 34.125866, 41.526531>,  <38.669399, 33.946301, 41.719975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384541, 34.125866, 41.526531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279949, 33.848446, 41.258018>,  <39.217194, 33.681995, 41.096912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279949, 33.848446, 41.258018>,  <39.384541, 34.125866, 41.526531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279949, 33.848446, 41.258018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593955, 0.432586, -0.678296,
		0.760819, -0.576071, 0.298826,
		-0.261479, -0.693550, -0.671280,
		39.201504, 33.640381, 41.056633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056744, 33.985069, 41.230667>,  <39.384541, 34.125866, 41.526531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056744, 33.985069, 41.230667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764366, 33.857841, 40.989155>,  <39.588940, 33.781506, 40.844250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764366, 33.857841, 40.989155>,  <40.056744, 33.985069, 41.230667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764366, 33.857841, 40.989155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529535, 0.293735, -0.795809,
		0.430475, -0.901415, -0.046274,
		-0.730947, -0.318072, -0.603776,
		39.545082, 33.762421, 40.808022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476162, 33.467232, 40.675453>,  <40.056744, 33.985069, 41.230667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476162, 33.467232, 40.675453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125114, 33.609409, 40.546803>,  <39.914486, 33.694717, 40.469612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125114, 33.609409, 40.546803>,  <40.476162, 33.467232, 40.675453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125114, 33.609409, 40.546803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466067, 0.475781, -0.745932,
		-0.112111, -0.804544, -0.583215,
		-0.877618, 0.355445, -0.321631,
		39.861828, 33.716042, 40.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627625, 33.562668, 39.937531>,  <40.476162, 33.467232, 40.675453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627625, 33.562668, 39.937531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291664, 33.771793, 39.995819>,  <40.090088, 33.897266, 40.030792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291664, 33.771793, 39.995819>,  <40.627625, 33.562668, 39.937531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291664, 33.771793, 39.995819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295201, 0.665359, -0.685678,
		-0.455434, -0.532886, -0.713170,
		-0.839903, 0.522810, 0.145719,
		40.039692, 33.928635, 40.039536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423073, 33.826569, 39.242138>,  <40.627625, 33.562668, 39.937531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423073, 33.826569, 39.242138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220520, 34.058907, 39.497070>,  <40.098988, 34.198311, 39.650028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220520, 34.058907, 39.497070>,  <40.423073, 33.826569, 39.242138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220520, 34.058907, 39.497070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199265, 0.797916, -0.568879,
		-0.838969, -0.161073, -0.519794,
		-0.506384, 0.580848, 0.637331,
		40.068604, 34.233162, 39.688271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864677, 34.057671, 38.960865>,  <40.423073, 33.826569, 39.242138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864677, 34.057671, 38.960865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932884, 34.338760, 39.237156>,  <39.973808, 34.507412, 39.402931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932884, 34.338760, 39.237156>,  <39.864677, 34.057671, 38.960865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932884, 34.338760, 39.237156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046917, 0.694410, -0.718048,
		-0.984237, 0.154847, 0.085440,
		0.170518, 0.702721, 0.690729,
		39.984039, 34.549576, 39.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431244, 34.642605, 38.732895>,  <39.864677, 34.057671, 38.960865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431244, 34.642605, 38.732895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717464, 34.761463, 38.985779>,  <39.889198, 34.832779, 39.137508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717464, 34.761463, 38.985779>,  <39.431244, 34.642605, 38.732895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717464, 34.761463, 38.985779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089809, 0.858380, -0.505093,
		-0.692760, 0.418199, 0.587532,
		0.715555, 0.297142, 0.632209,
		39.932133, 34.850605, 39.175442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250416, 35.418533, 38.888546>,  <39.431244, 34.642605, 38.732895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250416, 35.418533, 38.888546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636211, 35.352730, 38.971195>,  <39.867691, 35.313248, 39.020782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636211, 35.352730, 38.971195>,  <39.250416, 35.418533, 38.888546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636211, 35.352730, 38.971195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244560, 0.851692, -0.463476,
		-0.099731, 0.497550, 0.861683,
		0.964492, -0.164510, 0.206621,
		39.925560, 35.303375, 39.033180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521568, 35.991058, 39.344288>,  <39.250416, 35.418533, 38.888546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521568, 35.991058, 39.344288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848530, 35.833069, 39.176556>,  <40.044708, 35.738274, 39.075916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848530, 35.833069, 39.176556>,  <39.521568, 35.991058, 39.344288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848530, 35.833069, 39.176556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228556, 0.890550, -0.393298,
		0.528777, 0.225645, 0.818217,
		0.817409, -0.394975, -0.419330,
		40.093754, 35.714577, 39.050758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014782, 36.366306, 39.611458>,  <39.521568, 35.991058, 39.344288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014782, 36.366306, 39.611458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184254, 36.184025, 39.298325>,  <40.285938, 36.074657, 39.110443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184254, 36.184025, 39.298325>,  <40.014782, 36.366306, 39.611458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184254, 36.184025, 39.298325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483098, 0.844742, -0.230278,
		0.766231, -0.280621, 0.578051,
		0.423683, -0.455701, -0.782834,
		40.311359, 36.047314, 39.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578533, 36.773319, 39.483395>,  <40.014782, 36.366306, 39.611458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578533, 36.773319, 39.483395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547623, 36.581547, 39.133728>,  <40.529076, 36.466484, 38.923927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547623, 36.581547, 39.133728>,  <40.578533, 36.773319, 39.483395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547623, 36.581547, 39.133728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341787, 0.810923, -0.474960,
		0.936595, -0.335481, 0.101201,
		-0.077274, -0.479435, -0.874169,
		40.524441, 36.437717, 38.871479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219398, 36.925896, 39.131756>,  <40.578533, 36.773319, 39.483395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219398, 36.925896, 39.131756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955742, 36.797840, 38.859570>,  <40.797546, 36.721008, 38.696259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955742, 36.797840, 38.859570>,  <41.219398, 36.925896, 39.131756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955742, 36.797840, 38.859570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338090, 0.682105, -0.648404,
		0.671732, -0.657452, -0.341370,
		-0.659144, -0.320140, -0.680470,
		40.757999, 36.701797, 38.655430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596367, 36.742897, 38.557243>,  <41.219398, 36.925896, 39.131756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596367, 36.742897, 38.557243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246639, 36.821117, 38.379562>,  <41.036800, 36.868050, 38.272953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246639, 36.821117, 38.379562>,  <41.596367, 36.742897, 38.557243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246639, 36.821117, 38.379562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467463, 0.585453, -0.662362,
		0.130534, -0.786768, -0.603289,
		-0.874322, 0.195555, -0.444206,
		40.984344, 36.879784, 38.246300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717403, 36.619022, 37.832798>,  <41.596367, 36.742897, 38.557243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717403, 36.619022, 37.832798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420116, 36.881123, 37.886875>,  <41.241745, 37.038383, 37.919319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420116, 36.881123, 37.886875>,  <41.717403, 36.619022, 37.832798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420116, 36.881123, 37.886875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431961, 0.624255, -0.650934,
		-0.510916, -0.425389, -0.747000,
		-0.743219, 0.655248, 0.135190,
		41.197151, 37.077698, 37.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394867, 36.742294, 37.180058>,  <41.717403, 36.619022, 37.832798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394867, 36.742294, 37.180058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327744, 37.058975, 37.415024>,  <41.287472, 37.248981, 37.556004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327744, 37.058975, 37.415024>,  <41.394867, 36.742294, 37.180058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327744, 37.058975, 37.415024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160697, 0.609858, -0.776047,
		-0.972634, -0.035830, -0.229562,
		-0.167805, 0.791700, 0.587412,
		41.277401, 37.296486, 37.591248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005047, 37.177021, 36.872505>,  <41.394867, 36.742294, 37.180058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005047, 37.177021, 36.872505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214779, 37.413082, 37.118042>,  <41.340618, 37.554718, 37.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214779, 37.413082, 37.118042>,  <41.005047, 37.177021, 36.872505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214779, 37.413082, 37.118042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346395, 0.510716, -0.786880,
		-0.777877, 0.625215, 0.063357,
		0.524326, 0.590149, 0.613845,
		41.372078, 37.590126, 37.302197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696045, 37.964230, 36.868309>,  <41.005047, 37.177021, 36.872505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696045, 37.964230, 36.868309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079834, 37.852444, 36.882751>,  <41.310108, 37.785374, 36.891418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079834, 37.852444, 36.882751>,  <40.696045, 37.964230, 36.868309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079834, 37.852444, 36.882751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115219, 0.272136, -0.955336,
		0.257154, 0.920784, 0.293308,
		0.959477, -0.279463, 0.036110,
		41.367676, 37.768604, 36.893585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284836, 38.420761, 36.616379>,  <40.696045, 37.964230, 36.868309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284836, 38.420761, 36.616379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417294, 38.048923, 36.551643>,  <41.496769, 37.825821, 36.512802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417294, 38.048923, 36.551643>,  <41.284836, 38.420761, 36.616379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417294, 38.048923, 36.551643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042415, 0.186003, -0.981633,
		0.942626, 0.318198, 0.101023,
		0.331144, -0.929598, -0.161835,
		41.516636, 37.770042, 36.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792400, 38.414642, 36.131943>,  <41.284836, 38.420761, 36.616379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792400, 38.414642, 36.131943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630379, 38.049267, 36.116192>,  <41.533165, 37.830040, 36.106739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630379, 38.049267, 36.116192>,  <41.792400, 38.414642, 36.131943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630379, 38.049267, 36.116192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133899, -0.016657, -0.990855,
		0.904433, -0.406627, 0.129056,
		-0.405058, -0.913442, -0.039382,
		41.508862, 37.775234, 36.104378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318752, 37.993198, 35.735878>,  <41.792400, 38.414642, 36.131943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318752, 37.993198, 35.735878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981743, 37.778728, 35.715187>,  <41.779537, 37.650047, 35.702774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981743, 37.778728, 35.715187>,  <42.318752, 37.993198, 35.735878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981743, 37.778728, 35.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188074, -0.202818, -0.960985,
		0.504765, -0.819378, 0.271719,
		-0.842520, -0.536175, -0.051728,
		41.728989, 37.617874, 35.699669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454884, 37.310669, 35.350521>,  <42.318752, 37.993198, 35.735878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454884, 37.310669, 35.350521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080082, 37.449978, 35.339771>,  <41.855202, 37.533562, 35.333321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080082, 37.449978, 35.339771>,  <42.454884, 37.310669, 35.350521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080082, 37.449978, 35.339771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018929, -0.127455, -0.991664,
		-0.348793, -0.928689, 0.126019,
		-0.937008, 0.348271, -0.026876,
		41.798981, 37.554459, 35.331707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518875, 36.756519, 35.854111>,  <42.454884, 37.310669, 35.350521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518875, 36.756519, 35.854111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641563, 36.401600, 35.716339>,  <42.715176, 36.188648, 35.633678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641563, 36.401600, 35.716339>,  <42.518875, 36.756519, 35.854111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641563, 36.401600, 35.716339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161147, -0.405056, 0.899979,
		-0.938059, -0.220538, -0.267224,
		0.306720, -0.887295, -0.344427,
		42.733578, 36.135410, 35.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957493, 36.248913, 35.937233>,  <42.518875, 36.756519, 35.854111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957493, 36.248913, 35.937233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301952, 36.045586, 35.939484>,  <42.508629, 35.923588, 35.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301952, 36.045586, 35.939484>,  <41.957493, 36.248913, 35.937233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301952, 36.045586, 35.939484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214646, -0.353560, 0.910452,
		-0.460817, -0.785241, -0.413576,
		0.861148, -0.508324, 0.005622,
		42.560299, 35.893089, 35.941170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718208, 35.626877, 36.198662>,  <41.957493, 36.248913, 35.937233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718208, 35.626877, 36.198662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114906, 35.592030, 36.236309>,  <42.352924, 35.571121, 36.258896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114906, 35.592030, 36.236309>,  <41.718208, 35.626877, 36.198662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114906, 35.592030, 36.236309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127296, -0.579194, 0.805189,
		-0.015638, -0.810520, -0.585501,
		0.991741, -0.087123, 0.094118,
		42.412430, 35.565891, 36.264545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759388, 34.983631, 36.309269>,  <41.718208, 35.626877, 36.198662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759388, 34.983631, 36.309269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115944, 35.126274, 36.421165>,  <42.329876, 35.211861, 36.488304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115944, 35.126274, 36.421165>,  <41.759388, 34.983631, 36.309269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115944, 35.126274, 36.421165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012825, -0.597119, 0.802050,
		0.453054, -0.718527, -0.527693,
		0.891391, 0.356604, 0.279742,
		42.383362, 35.233253, 36.505089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183216, 34.433094, 36.291336>,  <41.759388, 34.983631, 36.309269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183216, 34.433094, 36.291336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352428, 34.689598, 36.547409>,  <42.453957, 34.843502, 36.701054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352428, 34.689598, 36.547409>,  <42.183216, 34.433094, 36.291336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352428, 34.689598, 36.547409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122321, -0.740460, 0.660876,
		0.897823, -0.201260, -0.391674,
		0.423027, 0.641260, 0.640183,
		42.479336, 34.881977, 36.739464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742264, 34.021458, 36.539867>,  <42.183216, 34.433094, 36.291336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742264, 34.021458, 36.539867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695610, 34.323814, 36.797554>,  <42.667618, 34.505230, 36.952168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695610, 34.323814, 36.797554>,  <42.742264, 34.021458, 36.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695610, 34.323814, 36.797554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086768, -0.638410, 0.764791,
		0.989377, 0.145101, 0.008874,
		-0.116637, 0.755896, 0.644218,
		42.660618, 34.550583, 36.990818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104710, 33.832592, 37.023594>,  <42.742264, 34.021458, 36.539867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104710, 33.832592, 37.023594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893215, 34.108833, 37.220982>,  <42.766319, 34.274578, 37.339413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893215, 34.108833, 37.220982>,  <43.104710, 33.832592, 37.023594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893215, 34.108833, 37.220982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043578, -0.558526, 0.828342,
		0.847668, 0.459477, 0.265217,
		-0.528734, 0.690601, 0.493467,
		42.734596, 34.316013, 37.369022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367416, 33.976276, 37.655235>,  <43.104710, 33.832592, 37.023594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367416, 33.976276, 37.655235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992077, 34.102196, 37.712376>,  <42.766872, 34.177746, 37.746662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992077, 34.102196, 37.712376>,  <43.367416, 33.976276, 37.655235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992077, 34.102196, 37.712376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116154, -0.676326, 0.727387,
		0.325594, 0.665948, 0.671194,
		-0.938348, 0.314795, 0.142855,
		42.710571, 34.196632, 37.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297112, 34.204746, 38.345505>,  <43.367416, 33.976276, 37.655235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297112, 34.204746, 38.345505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924976, 34.112553, 38.231422>,  <42.701694, 34.057236, 38.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924976, 34.112553, 38.231422>,  <43.297112, 34.204746, 38.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924976, 34.112553, 38.231422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040693, -0.708085, 0.704954,
		-0.364428, 0.667454, 0.649382,
		-0.930342, -0.230479, -0.285207,
		42.645874, 34.043407, 38.145859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981541, 34.061600, 38.939297>,  <43.297112, 34.204746, 38.345505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981541, 34.061600, 38.939297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711582, 33.901222, 38.691505>,  <42.549606, 33.804996, 38.542831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711582, 33.901222, 38.691505>,  <42.981541, 34.061600, 38.939297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711582, 33.901222, 38.691505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160909, -0.739339, 0.653825,
		-0.720153, 0.540945, 0.434463,
		-0.674898, -0.400945, -0.619480,
		42.509113, 33.780937, 38.505661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370949, 33.891171, 39.411842>,  <42.981541, 34.061600, 38.939297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370949, 33.891171, 39.411842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347733, 33.668262, 39.080521>,  <42.333805, 33.534519, 38.881729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347733, 33.668262, 39.080521>,  <42.370949, 33.891171, 39.411842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347733, 33.668262, 39.080521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082242, -0.824213, 0.560276,
		-0.994921, 0.100638, 0.002003,
		-0.058036, -0.557265, -0.828304,
		42.330322, 33.501083, 38.832031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695370, 33.501148, 39.434624>,  <42.370949, 33.891171, 39.411842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695370, 33.501148, 39.434624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957924, 33.311790, 39.199657>,  <42.115456, 33.198177, 39.058678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.957924, 33.311790, 39.199657>,  <41.695370, 33.501148, 39.434624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957924, 33.311790, 39.199657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097598, -0.825365, 0.556100,
		-0.748083, -0.307689, -0.587963,
		0.656390, -0.473392, -0.587411,
		42.154839, 33.169773, 39.023434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414917, 32.866657, 39.317951>,  <41.695370, 33.501148, 39.434624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414917, 32.866657, 39.317951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806664, 32.815945, 39.255005>,  <42.041714, 32.785519, 39.217236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806664, 32.815945, 39.255005>,  <41.414917, 32.866657, 39.317951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806664, 32.815945, 39.255005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046727, -0.899694, 0.434013,
		-0.196606, -0.417705, -0.887056,
		0.979368, -0.126779, -0.157367,
		42.100475, 32.777912, 39.207794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452637, 32.138950, 39.142765>,  <41.414917, 32.866657, 39.317951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452637, 32.138950, 39.142765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828754, 32.246731, 39.225956>,  <42.054424, 32.311398, 39.275871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828754, 32.246731, 39.225956>,  <41.452637, 32.138950, 39.142765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828754, 32.246731, 39.225956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171889, -0.903275, 0.393126,
		0.293784, -0.333904, -0.895655,
		0.940290, 0.269448, 0.207974,
		42.110840, 32.327564, 39.288349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946743, 31.560892, 39.063534>,  <41.452637, 32.138950, 39.142765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946743, 31.560892, 39.063534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169067, 31.802242, 39.292271>,  <42.302464, 31.947052, 39.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169067, 31.802242, 39.292271>,  <41.946743, 31.560892, 39.063534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169067, 31.802242, 39.292271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009852, -0.692621, 0.721235,
		0.831248, -0.395238, -0.390913,
		0.555814, 0.603377, 0.571846,
		42.335812, 31.983255, 39.463825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525639, 31.184048, 39.328423>,  <41.946743, 31.560892, 39.063534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525639, 31.184048, 39.328423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508492, 31.499668, 39.573555>,  <42.498203, 31.689041, 39.720634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508492, 31.499668, 39.573555>,  <42.525639, 31.184048, 39.328423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508492, 31.499668, 39.573555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131682, -0.603579, 0.786353,
		0.990364, 0.114411, -0.078027,
		-0.042872, 0.789051, 0.612830,
		42.495628, 31.736383, 39.757404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055649, 31.124884, 39.829517>,  <42.525639, 31.184048, 39.328423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055649, 31.124884, 39.829517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819401, 31.388708, 40.015484>,  <42.677650, 31.547003, 40.127064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819401, 31.388708, 40.015484>,  <43.055649, 31.124884, 39.829517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819401, 31.388708, 40.015484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246863, -0.400840, 0.882262,
		0.768263, 0.635852, 0.073923,
		-0.590619, 0.659560, 0.464919,
		42.642216, 31.586576, 40.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481056, 31.337440, 40.354881>,  <43.055649, 31.124884, 39.829517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481056, 31.337440, 40.354881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092724, 31.395748, 40.431019>,  <42.859722, 31.430733, 40.476700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092724, 31.395748, 40.431019>,  <43.481056, 31.337440, 40.354881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092724, 31.395748, 40.431019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058796, -0.624919, 0.778472,
		0.232426, 0.766960, 0.598123,
		-0.970835, 0.145769, 0.190342,
		42.801472, 31.439480, 40.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469540, 31.665499, 41.009514>,  <43.481056, 31.337440, 40.354881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469540, 31.665499, 41.009514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118023, 31.490677, 40.932873>,  <42.907112, 31.385784, 40.886887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118023, 31.490677, 40.932873>,  <43.469540, 31.665499, 41.009514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118023, 31.490677, 40.932873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066232, -0.509325, 0.858022,
		-0.472591, 0.741331, 0.476536,
		-0.878789, -0.437055, -0.191603,
		42.854385, 31.359560, 40.875393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111954, 31.660734, 41.593506>,  <43.469540, 31.665499, 41.009514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111954, 31.660734, 41.593506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932487, 31.358902, 41.401962>,  <42.824806, 31.177803, 41.287037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932487, 31.358902, 41.401962>,  <43.111954, 31.660734, 41.593506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932487, 31.358902, 41.401962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094254, -0.572784, 0.814269,
		-0.888716, 0.320199, 0.328110,
		-0.448664, -0.754580, -0.478863,
		42.797890, 31.132528, 41.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841148, 31.318382, 42.076256>,  <43.111954, 31.660734, 41.593506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841148, 31.318382, 42.076256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806137, 31.038261, 41.792873>,  <42.785130, 30.870188, 41.622845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806137, 31.038261, 41.792873>,  <42.841148, 31.318382, 42.076256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806137, 31.038261, 41.792873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413746, -0.672501, 0.613642,
		-0.906175, -0.239408, 0.348613,
		-0.087532, -0.700304, -0.708457,
		42.779877, 30.828171, 41.580338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736904, 30.593042, 42.326828>,  <42.841148, 31.318382, 42.076256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736904, 30.593042, 42.326828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928173, 30.545847, 41.978706>,  <43.042934, 30.517529, 41.769833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928173, 30.545847, 41.978706>,  <42.736904, 30.593042, 42.326828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928173, 30.545847, 41.978706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474018, -0.799541, 0.368837,
		-0.739363, -0.588908, -0.326390,
		0.478174, -0.117990, -0.870304,
		43.071625, 30.510450, 41.717613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362278, 30.221746, 42.743042>,  <42.736904, 30.593042, 42.326828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362278, 30.221746, 42.743042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383690, 29.832439, 42.653698>,  <43.396538, 29.598856, 42.600094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383690, 29.832439, 42.653698>,  <43.362278, 30.221746, 42.743042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383690, 29.832439, 42.653698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974441, 0.002040, 0.224635,
		-0.218174, -0.229672, 0.948499,
		0.053527, -0.973266, -0.223357,
		43.399750, 29.540459, 42.586689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548183, 29.809221, 43.394714>,  <43.362278, 30.221746, 42.743042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548183, 29.809221, 43.394714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669197, 29.686989, 43.033585>,  <43.741806, 29.613649, 42.816906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.669197, 29.686989, 43.033585>,  <43.548183, 29.809221, 43.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669197, 29.686989, 43.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952505, 0.062361, 0.298070,
		-0.034783, -0.950122, 0.309933,
		0.302531, -0.305581, -0.902827,
		43.759956, 29.595314, 42.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904041, 29.116093, 43.370144>,  <43.548183, 29.809221, 43.394714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904041, 29.116093, 43.370144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028530, 29.420670, 43.142689>,  <44.103222, 29.603416, 43.006218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028530, 29.420670, 43.142689>,  <43.904041, 29.116093, 43.370144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028530, 29.420670, 43.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935136, -0.138776, 0.325979,
		0.169302, -0.633202, -0.755243,
		0.311220, 0.761444, -0.568635,
		44.121895, 29.649103, 42.972099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568108, 28.943827, 42.954952>,  <43.904041, 29.116093, 43.370144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568108, 28.943827, 42.954952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514603, 29.334383, 43.022804>,  <44.482502, 29.568716, 43.063515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514603, 29.334383, 43.022804>,  <44.568108, 28.943827, 42.954952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514603, 29.334383, 43.022804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917869, 0.057520, 0.392694,
		0.373664, 0.208222, -0.903891,
		-0.133760, 0.976389, 0.169627,
		44.474476, 29.627300, 43.073692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116570, 29.200411, 42.615372>,  <44.568108, 28.943827, 42.954952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116570, 29.200411, 42.615372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986477, 29.414248, 42.927380>,  <44.908421, 29.542549, 43.114586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986477, 29.414248, 42.927380>,  <45.116570, 29.200411, 42.615372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986477, 29.414248, 42.927380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855401, -0.185329, 0.483676,
		0.403130, 0.824540, -0.397014,
		-0.325232, 0.534590, 0.780024,
		44.888908, 29.574625, 43.161388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724682, 28.928371, 41.930164>,  <45.116570, 29.200411, 42.615372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724682, 28.928371, 41.930164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780579, 28.646362, 41.652050>,  <44.814117, 28.477158, 41.485184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780579, 28.646362, 41.652050>,  <44.724682, 28.928371, 41.930164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780579, 28.646362, 41.652050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134171, 0.709178, -0.692145,
		0.981055, 0.003436, 0.193697,
		0.139743, -0.705021, -0.695282,
		44.822502, 28.434856, 41.443466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398731, 28.917091, 41.522289>,  <44.724682, 28.928371, 41.930164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398731, 28.917091, 41.522289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105228, 28.781090, 41.287006>,  <44.929127, 28.699490, 41.145836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.105228, 28.781090, 41.287006>,  <45.398731, 28.917091, 41.522289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105228, 28.781090, 41.287006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265011, 0.653962, -0.708593,
		0.625588, -0.675822, -0.389750,
		-0.733764, -0.339999, -0.588210,
		44.885101, 28.679089, 41.110542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585861, 28.618000, 40.857700>,  <45.398731, 28.917091, 41.522289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585861, 28.618000, 40.857700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222240, 28.781404, 40.824833>,  <45.004070, 28.879446, 40.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222240, 28.781404, 40.824833>,  <45.585861, 28.618000, 40.857700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222240, 28.781404, 40.824833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327290, 0.577945, -0.747570,
		-0.257900, -0.706470, -0.659081,
		-0.909048, 0.408509, -0.082169,
		44.949528, 28.903957, 40.800182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728001, 29.392548, 40.672211>,  <45.585861, 28.618000, 40.857700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728001, 29.392548, 40.672211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335461, 29.454060, 40.626076>,  <45.099937, 29.490967, 40.598396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335461, 29.454060, 40.626076>,  <45.728001, 29.392548, 40.672211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335461, 29.454060, 40.626076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191528, 0.731030, -0.654914,
		-0.016398, -0.664790, -0.746850,
		-0.981350, 0.153782, -0.115338,
		45.041054, 29.500195, 40.591473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491688, 29.702616, 39.971886>,  <45.728001, 29.392548, 40.672211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491688, 29.702616, 39.971886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213455, 29.862492, 40.210690>,  <45.046516, 29.958416, 40.353970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213455, 29.862492, 40.210690>,  <45.491688, 29.702616, 39.971886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213455, 29.862492, 40.210690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042404, 0.806680, -0.589466,
		-0.717196, -0.435336, -0.544163,
		-0.695581, 0.399688, 0.597007,
		45.004780, 29.982397, 40.389793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753033, 29.693970, 39.617935>,  <45.491688, 29.702616, 39.971886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753033, 29.693970, 39.617935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778286, 29.988470, 39.887440>,  <44.793438, 30.165171, 40.049141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778286, 29.988470, 39.887440>,  <44.753033, 29.693970, 39.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778286, 29.988470, 39.887440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042523, 0.676476, -0.735236,
		-0.997099, 0.017768, 0.074017,
		0.063134, 0.736250, 0.673758,
		44.797226, 30.209345, 40.089565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350521, 30.130032, 39.420586>,  <44.753033, 29.693970, 39.617935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350521, 30.130032, 39.420586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575420, 30.372108, 39.646015>,  <44.710361, 30.517355, 39.781273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575420, 30.372108, 39.646015>,  <44.350521, 30.130032, 39.420586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575420, 30.372108, 39.646015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108713, 0.729672, -0.675100,
		-0.819790, 0.318307, 0.476051,
		0.562251, 0.605193, 0.563573,
		44.744095, 30.553667, 39.815086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867752, 30.626141, 39.478119>,  <44.350521, 30.130032, 39.420586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867752, 30.626141, 39.478119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228809, 30.775311, 39.564060>,  <44.445442, 30.864813, 39.615627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228809, 30.775311, 39.564060>,  <43.867752, 30.626141, 39.478119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228809, 30.775311, 39.564060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091904, 0.654709, -0.750273,
		-0.420466, 0.657482, 0.625241,
		0.902642, 0.372926, 0.214857,
		44.499603, 30.887188, 39.628517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908108, 31.307974, 39.354797>,  <43.867752, 30.626141, 39.478119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908108, 31.307974, 39.354797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304207, 31.261841, 39.386063>,  <44.541866, 31.234161, 39.404823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304207, 31.261841, 39.386063>,  <43.908108, 31.307974, 39.354797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304207, 31.261841, 39.386063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134525, 0.645491, -0.751827,
		0.036252, 0.755010, 0.654710,
		0.990247, -0.115330, 0.078167,
		44.601280, 31.227242, 39.409512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077091, 31.880234, 39.396931>,  <43.908108, 31.307974, 39.354797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077091, 31.880234, 39.396931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417656, 31.702993, 39.284672>,  <44.621994, 31.596649, 39.217316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417656, 31.702993, 39.284672>,  <44.077091, 31.880234, 39.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417656, 31.702993, 39.284672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127119, 0.693446, -0.709206,
		0.508864, 0.568149, 0.646733,
		0.851410, -0.443102, -0.280647,
		44.673080, 31.570063, 39.200478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549038, 32.396587, 39.175938>,  <44.077091, 31.880234, 39.396931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549038, 32.396587, 39.175938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695431, 32.066452, 39.003948>,  <44.783268, 31.868372, 38.900753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695431, 32.066452, 39.003948>,  <44.549038, 32.396587, 39.175938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695431, 32.066452, 39.003948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245607, 0.531309, -0.810794,
		0.897627, 0.191132, 0.397158,
		0.365982, -0.825336, -0.429974,
		44.805225, 31.818851, 38.874954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104031, 32.677448, 38.733768>,  <44.549038, 32.396587, 39.175938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104031, 32.677448, 38.733768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023403, 32.311600, 38.593571>,  <44.975025, 32.092091, 38.509453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023403, 32.311600, 38.593571>,  <45.104031, 32.677448, 38.733768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023403, 32.311600, 38.593571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210937, 0.308904, -0.927407,
		0.956491, -0.260868, 0.130661,
		-0.201569, -0.914618, -0.350491,
		44.962933, 32.037216, 38.488422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667862, 32.472473, 38.308273>,  <45.104031, 32.677448, 38.733768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667862, 32.472473, 38.308273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331741, 32.286861, 38.196152>,  <45.130070, 32.175495, 38.128880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331741, 32.286861, 38.196152>,  <45.667862, 32.472473, 38.308273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331741, 32.286861, 38.196152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085203, 0.397588, -0.913600,
		0.535380, -0.791583, -0.294557,
		-0.840302, -0.464026, -0.280306,
		45.079651, 32.147655, 38.112061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.891098, 32.232838, 37.719326>,  <45.667862, 32.472473, 38.308273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.891098, 32.232838, 37.719326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491360, 32.238209, 37.705868>,  <45.251518, 32.241432, 37.697792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491360, 32.238209, 37.705868>,  <45.891098, 32.232838, 37.719326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491360, 32.238209, 37.705868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036060, 0.457154, -0.888656,
		0.003448, -0.889286, -0.457338,
		-0.999344, 0.013427, -0.033644,
		45.191555, 32.242237, 37.695774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696709, 32.042778, 37.017223>,  <45.891098, 32.232838, 37.719326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696709, 32.042778, 37.017223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360210, 32.211468, 37.152550>,  <45.158310, 32.312683, 37.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360210, 32.211468, 37.152550>,  <45.696709, 32.042778, 37.017223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360210, 32.211468, 37.152550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144625, 0.427417, -0.892412,
		-0.520953, -0.799665, -0.298570,
		-0.841244, 0.421723, 0.338315,
		45.107838, 32.337986, 37.254044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197720, 31.954802, 36.503437>,  <45.696709, 32.042778, 37.017223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197720, 31.954802, 36.503437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050228, 32.265396, 36.707832>,  <44.961731, 32.451752, 36.830467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050228, 32.265396, 36.707832>,  <45.197720, 31.954802, 36.503437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050228, 32.265396, 36.707832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158660, 0.489077, -0.857689,
		-0.915895, -0.397331, -0.057141,
		-0.368733, 0.776487, 0.510984,
		44.939610, 32.498341, 36.861126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721279, 32.181011, 36.087833>,  <45.197720, 31.954802, 36.503437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721279, 32.181011, 36.087833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758694, 32.486515, 36.343307>,  <44.781143, 32.669819, 36.496590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758694, 32.486515, 36.343307>,  <44.721279, 32.181011, 36.087833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758694, 32.486515, 36.343307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124030, 0.645437, -0.753676,
		-0.987860, -0.008718, 0.155103,
		0.093538, 0.763764, 0.638682,
		44.786755, 32.715645, 36.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094444, 32.565231, 35.982910>,  <44.721279, 32.181011, 36.087833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094444, 32.565231, 35.982910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381546, 32.799797, 36.133080>,  <44.553806, 32.940536, 36.223183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381546, 32.799797, 36.133080>,  <44.094444, 32.565231, 35.982910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381546, 32.799797, 36.133080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108666, 0.626907, -0.771479,
		-0.687764, 0.512937, 0.513689,
		0.717755, 0.586416, 0.375425,
		44.596874, 32.975723, 36.245708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771408, 33.182148, 35.977139>,  <44.094444, 32.565231, 35.982910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771408, 33.182148, 35.977139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154247, 33.294495, 36.005634>,  <44.383949, 33.361904, 36.022732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154247, 33.294495, 36.005634>,  <43.771408, 33.182148, 35.977139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154247, 33.294495, 36.005634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148550, 0.686696, -0.711605,
		-0.248788, 0.670493, 0.698959,
		0.957098, 0.280869, 0.071240,
		44.441376, 33.378754, 36.027008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751736, 33.906616, 35.891434>,  <43.771408, 33.182148, 35.977139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751736, 33.906616, 35.891434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138512, 33.827263, 35.827339>,  <44.370579, 33.779652, 35.788883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138512, 33.827263, 35.827339>,  <43.751736, 33.906616, 35.891434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138512, 33.827263, 35.827339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018409, 0.681000, -0.732052,
		0.254345, 0.704900, 0.662137,
		0.966938, -0.198382, -0.160232,
		44.428593, 33.767750, 35.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087006, 34.489971, 35.843102>,  <43.751736, 33.906616, 35.891434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087006, 34.489971, 35.843102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355247, 34.249161, 35.669739>,  <44.516193, 34.104675, 35.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355247, 34.249161, 35.669739>,  <44.087006, 34.489971, 35.843102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355247, 34.249161, 35.669739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116955, 0.662758, -0.739644,
		0.732534, 0.445322, 0.514862,
		0.670608, -0.602030, -0.433410,
		44.556431, 34.068550, 35.539715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604980, 34.917297, 35.723190>,  <44.087006, 34.489971, 35.843102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604980, 34.917297, 35.723190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639202, 34.608120, 35.471718>,  <44.659737, 34.422611, 35.320835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639202, 34.608120, 35.471718>,  <44.604980, 34.917297, 35.723190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639202, 34.608120, 35.471718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243990, 0.628032, -0.738948,
		0.965997, -0.090172, 0.242320,
		0.085553, -0.772945, -0.628678,
		44.664867, 34.376236, 35.283115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314510, 34.792103, 35.405655>,  <44.604980, 34.917297, 35.723190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314510, 34.792103, 35.405655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072021, 34.601170, 35.151211>,  <44.926529, 34.486610, 34.998543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072021, 34.601170, 35.151211>,  <45.314510, 34.792103, 35.405655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072021, 34.601170, 35.151211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291668, 0.610673, -0.736212,
		0.739880, -0.631843, -0.230981,
		-0.606224, -0.477339, -0.636113,
		44.890156, 34.457970, 34.960377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701977, 34.563400, 34.766079>,  <45.314510, 34.792103, 35.405655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701977, 34.563400, 34.766079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323483, 34.569866, 34.636852>,  <45.096386, 34.573746, 34.559315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323483, 34.569866, 34.636852>,  <45.701977, 34.563400, 34.766079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323483, 34.569866, 34.636852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256213, 0.647126, -0.718041,
		0.197454, -0.762212, -0.616478,
		-0.946238, 0.016170, -0.323066,
		45.039612, 34.574718, 34.539932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637642, 34.305473, 34.035751>,  <45.701977, 34.563400, 34.766079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637642, 34.305473, 34.035751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394951, 34.592617, 34.172321>,  <45.249336, 34.764904, 34.254261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394951, 34.592617, 34.172321>,  <45.637642, 34.305473, 34.035751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394951, 34.592617, 34.172321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302710, 0.605795, -0.735784,
		-0.735019, -0.343066, -0.584853,
		-0.606724, 0.717856, 0.341421,
		45.212933, 34.807976, 34.274746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312057, 34.306717, 34.294205>,  <45.637642, 34.305473, 34.035751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312057, 34.306717, 34.294205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544365, 34.472641, 34.014019>,  <46.683750, 34.572197, 33.845909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544365, 34.472641, 34.014019>,  <46.312057, 34.306717, 34.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544365, 34.472641, 34.014019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427663, 0.576679, 0.696093,
		0.692689, -0.703826, 0.157514,
		0.580763, 0.414813, -0.700460,
		46.718594, 34.597084, 33.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058735, 34.267384, 34.406544>,  <46.312057, 34.306717, 34.294205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058735, 34.267384, 34.406544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984074, 34.600697, 34.198387>,  <46.939278, 34.800682, 34.073494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.984074, 34.600697, 34.198387>,  <47.058735, 34.267384, 34.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.984074, 34.600697, 34.198387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481317, 0.539337, 0.690977,
		0.856444, -0.121505, -0.501737,
		-0.186649, 0.833278, -0.520394,
		46.928078, 34.850681, 34.042271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.259769, 34.779179, 34.931808>,  <47.058735, 34.267384, 34.406544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.259769, 34.779179, 34.931808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870899, 34.696918, 34.976681>,  <46.637577, 34.647560, 35.003605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.870899, 34.696918, 34.976681>,  <47.259769, 34.779179, 34.931808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.870899, 34.696918, 34.976681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208333, -0.977977, 0.012588,
		0.107121, 0.035609, 0.993608,
		-0.972174, -0.205653, 0.112180,
		46.579247, 34.635223, 35.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881634, 34.837456, 35.453121>,  <47.259769, 34.779179, 34.931808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881634, 34.837456, 35.453121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774372, 34.995113, 35.101498>,  <47.710014, 35.089710, 34.890526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.774372, 34.995113, 35.101498>,  <47.881634, 34.837456, 35.453121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.774372, 34.995113, 35.101498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678985, 0.569995, 0.462693,
		0.683428, 0.720939, 0.114776,
		-0.268152, 0.394148, -0.879057,
		47.693928, 35.113358, 34.837780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.248272, 33.866516, 45.263958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875271, 33.815563, 45.128780>,  <34.651470, 33.784992, 45.047672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.875271, 33.815563, 45.128780>,  <35.248272, 33.866516, 45.263958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875271, 33.815563, 45.128780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265699, 0.391823, -0.880840,
		0.244614, -0.911180, -0.331533,
		-0.932506, -0.127378, -0.337945,
		34.595520, 33.777351, 45.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319290, 33.811619, 44.619724>,  <35.248272, 33.866516, 45.263958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319290, 33.811619, 44.619724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922352, 33.859268, 44.606678>,  <34.684189, 33.887859, 44.598850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.922352, 33.859268, 44.606678>,  <35.319290, 33.811619, 44.619724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922352, 33.859268, 44.606678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064277, 0.272618, -0.959973,
		-0.105466, -0.954719, -0.278188,
		-0.992343, 0.119125, -0.032615,
		34.624649, 33.895004, 44.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136787, 33.420841, 44.110405>,  <35.319290, 33.811619, 44.619724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136787, 33.420841, 44.110405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821411, 33.664341, 44.145706>,  <34.632187, 33.810440, 44.166885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821411, 33.664341, 44.145706>,  <35.136787, 33.420841, 44.110405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821411, 33.664341, 44.145706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068541, 0.055637, -0.996096,
		-0.611284, -0.791408, -0.002142,
		-0.788438, 0.608751, 0.088254,
		34.584881, 33.846966, 44.172184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725456, 33.315868, 43.655891>,  <35.136787, 33.420841, 44.110405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725456, 33.315868, 43.655891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587482, 33.678844, 43.751873>,  <34.504700, 33.896629, 43.809464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587482, 33.678844, 43.751873>,  <34.725456, 33.315868, 43.655891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587482, 33.678844, 43.751873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060010, 0.276441, -0.959155,
		-0.936708, -0.316442, -0.149809,
		-0.344930, 0.907438, 0.239955,
		34.484005, 33.951077, 43.823860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292351, 33.486591, 43.118641>,  <34.725456, 33.315868, 43.655891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292351, 33.486591, 43.118641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347790, 33.847466, 43.282032>,  <34.381054, 34.063988, 43.380066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347790, 33.847466, 43.282032>,  <34.292351, 33.486591, 43.118641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347790, 33.847466, 43.282032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005615, 0.413170, -0.910637,
		-0.990332, 0.123922, 0.062332,
		0.138602, 0.902183, 0.408480,
		34.389370, 34.118122, 43.404575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705830, 34.021957, 42.920269>,  <34.292351, 33.486591, 43.118641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705830, 34.021957, 42.920269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048267, 34.210705, 43.004593>,  <34.253731, 34.323952, 43.055187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048267, 34.210705, 43.004593>,  <33.705830, 34.021957, 42.920269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048267, 34.210705, 43.004593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038180, 0.464523, -0.884738,
		-0.515405, 0.749372, 0.415692,
		0.856096, 0.471870, 0.210806,
		34.305096, 34.352264, 43.067833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654129, 34.619598, 42.516071>,  <33.705830, 34.021957, 42.920269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654129, 34.619598, 42.516071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044804, 34.618176, 42.601933>,  <34.279209, 34.617321, 42.653450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.044804, 34.618176, 42.601933>,  <33.654129, 34.619598, 42.516071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044804, 34.618176, 42.601933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181768, 0.545761, -0.817988,
		-0.114240, 0.837933, 0.533683,
		0.976683, -0.003560, 0.214657,
		34.337807, 34.617107, 42.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860077, 35.053780, 41.976345>,  <33.654129, 34.619598, 42.516071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860077, 35.053780, 41.976345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202599, 34.927994, 42.140228>,  <34.408112, 34.852524, 42.238556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.202599, 34.927994, 42.140228>,  <33.860077, 35.053780, 41.976345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202599, 34.927994, 42.140228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516371, 0.505482, -0.691267,
		0.010277, 0.803494, 0.595224,
		0.856303, -0.314461, 0.409706,
		34.459488, 34.833656, 42.263142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343304, 35.694412, 41.922562>,  <33.860077, 35.053780, 41.976345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343304, 35.694412, 41.922562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572338, 35.368820, 41.961716>,  <34.709759, 35.173466, 41.985210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.572338, 35.368820, 41.961716>,  <34.343304, 35.694412, 41.922562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572338, 35.368820, 41.961716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585660, 0.322552, -0.743614,
		0.573712, 0.483114, 0.661404,
		0.572588, -0.813978, 0.097889,
		34.744114, 35.124626, 41.991081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995960, 35.858696, 41.934444>,  <34.343304, 35.694412, 41.922562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995960, 35.858696, 41.934444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048523, 35.475647, 41.831917>,  <35.080063, 35.245819, 41.770401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048523, 35.475647, 41.831917>,  <34.995960, 35.858696, 41.934444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048523, 35.475647, 41.831917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470753, 0.287825, -0.833995,
		0.872424, -0.011066, 0.488625,
		0.131410, -0.957619, -0.256315,
		35.087944, 35.188362, 41.755024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717602, 35.756187, 41.907562>,  <34.995960, 35.858696, 41.934444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717602, 35.756187, 41.907562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547150, 35.477566, 41.676659>,  <35.444878, 35.310390, 41.538116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547150, 35.477566, 41.676659>,  <35.717602, 35.756187, 41.907562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547150, 35.477566, 41.676659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615647, 0.244261, -0.749210,
		0.662870, -0.674642, 0.324748,
		-0.426126, -0.696559, -0.577255,
		35.419312, 35.268597, 41.503483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304253, 35.448238, 41.529793>,  <35.717602, 35.756187, 41.907562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304253, 35.448238, 41.529793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978016, 35.373482, 41.310745>,  <35.782276, 35.328629, 41.179317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978016, 35.373482, 41.310745>,  <36.304253, 35.448238, 41.529793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978016, 35.373482, 41.310745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476923, 0.318796, -0.819093,
		0.327676, -0.929211, -0.170863,
		-0.815581, -0.186909, -0.547624,
		35.733341, 35.317413, 41.146458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565212, 35.161644, 40.887939>,  <36.304253, 35.448238, 41.529793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565212, 35.161644, 40.887939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194252, 35.297638, 40.825531>,  <35.971676, 35.379234, 40.788086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194252, 35.297638, 40.825531>,  <36.565212, 35.161644, 40.887939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194252, 35.297638, 40.825531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307416, 0.455029, -0.835730,
		-0.213139, -0.823019, -0.526509,
		-0.927398, 0.339984, -0.156024,
		35.916031, 35.399632, 40.778725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423458, 35.011475, 40.233135>,  <36.565212, 35.161644, 40.887939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423458, 35.011475, 40.233135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159843, 35.301033, 40.314774>,  <36.001675, 35.474766, 40.363754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159843, 35.301033, 40.314774>,  <36.423458, 35.011475, 40.233135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159843, 35.301033, 40.314774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126147, 0.373903, -0.918849,
		-0.741458, -0.579808, -0.337732,
		-0.659035, 0.723891, 0.204093,
		35.962132, 35.518200, 40.376003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022812, 35.032860, 39.639381>,  <36.423458, 35.011475, 40.233135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022812, 35.032860, 39.639381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959328, 35.391148, 39.805511>,  <35.921238, 35.606121, 39.905190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959328, 35.391148, 39.805511>,  <36.022812, 35.032860, 39.639381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959328, 35.391148, 39.805511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154291, 0.437993, -0.885639,
		-0.975194, -0.076482, -0.207717,
		-0.158714, 0.895719, 0.415328,
		35.911713, 35.659863, 39.930111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726254, 35.354668, 39.111393>,  <36.022812, 35.032860, 39.639381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726254, 35.354668, 39.111393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839466, 35.651169, 39.354847>,  <35.907394, 35.829071, 39.500919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839466, 35.651169, 39.354847>,  <35.726254, 35.354668, 39.111393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839466, 35.651169, 39.354847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337511, 0.517016, -0.786626,
		-0.897763, 0.428063, -0.103847,
		0.283035, 0.741253, 0.608634,
		35.924377, 35.873547, 39.537437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412838, 36.016171, 38.780117>,  <35.726254, 35.354668, 39.111393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412838, 36.016171, 38.780117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729786, 36.104912, 39.007423>,  <35.919956, 36.158157, 39.143806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729786, 36.104912, 39.007423>,  <35.412838, 36.016171, 38.780117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729786, 36.104912, 39.007423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394653, 0.523908, -0.754831,
		-0.465184, 0.822374, 0.327573,
		0.792372, 0.221858, 0.568266,
		35.967499, 36.171471, 39.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526897, 36.767342, 38.716614>,  <35.412838, 36.016171, 38.780117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526897, 36.767342, 38.716614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885384, 36.641140, 38.841358>,  <36.100475, 36.565418, 38.916206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885384, 36.641140, 38.841358>,  <35.526897, 36.767342, 38.716614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885384, 36.641140, 38.841358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435890, 0.495594, -0.751257,
		0.082464, 0.809226, 0.581682,
		0.896214, -0.315500, 0.311865,
		36.154247, 36.546490, 38.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920353, 37.354012, 38.729591>,  <35.526897, 36.767342, 38.716614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920353, 37.354012, 38.729591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 37.054497, 38.715057>,  <36.343914, 36.874786, 38.706337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185078, 37.054497, 38.715057>,  <35.920353, 37.354012, 38.729591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185078, 37.054497, 38.715057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421473, 0.411722, -0.807988,
		0.619969, 0.519426, 0.588077,
		0.661815, -0.748786, -0.036331,
		36.383621, 36.829861, 38.704159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519100, 37.631371, 38.735073>,  <35.920353, 37.354012, 38.729591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519100, 37.631371, 38.735073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583431, 37.267387, 38.582176>,  <36.622028, 37.048996, 38.490437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583431, 37.267387, 38.582176>,  <36.519100, 37.631371, 38.735073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583431, 37.267387, 38.582176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416454, 0.413686, -0.809586,
		0.894819, -0.028986, 0.445487,
		0.160825, -0.909958, -0.382245,
		36.631680, 36.994400, 38.467503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194328, 37.545094, 38.542339>,  <36.519100, 37.631371, 38.735073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194328, 37.545094, 38.542339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965435, 37.316444, 38.307121>,  <36.828098, 37.179256, 38.165989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965435, 37.316444, 38.307121>,  <37.194328, 37.545094, 38.542339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965435, 37.316444, 38.307121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375216, 0.455108, -0.807521,
		0.729220, -0.682735, -0.045947,
		-0.572233, -0.571621, -0.588047,
		36.793766, 37.144958, 38.130707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777355, 37.181721, 38.033710>,  <37.194328, 37.545094, 38.542339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777355, 37.181721, 38.033710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402054, 37.187218, 37.895443>,  <37.176872, 37.190517, 37.812485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402054, 37.187218, 37.895443>,  <37.777355, 37.181721, 38.033710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402054, 37.187218, 37.895443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269194, 0.656574, -0.704589,
		0.217272, -0.754137, -0.619735,
		-0.938258, 0.013742, -0.345664,
		37.120575, 37.191341, 37.791744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126968, 37.791233, 38.134029>,  <37.777355, 37.181721, 38.033710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126968, 37.791233, 38.134029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374088, 38.061848, 38.294338>,  <38.522362, 38.224216, 38.390526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374088, 38.061848, 38.294338>,  <38.126968, 37.791233, 38.134029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374088, 38.061848, 38.294338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012707, -0.501018, 0.865344,
		0.786233, -0.539702, -0.300932,
		0.617800, 0.676538, 0.400775,
		38.559429, 38.264809, 38.414570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594376, 37.437447, 38.495960>,  <38.126968, 37.791233, 38.134029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594376, 37.437447, 38.495960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647755, 37.800468, 38.655224>,  <38.679783, 38.018284, 38.750782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.647755, 37.800468, 38.655224>,  <38.594376, 37.437447, 38.495960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647755, 37.800468, 38.655224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017609, -0.403861, 0.914651,
		0.990899, -0.115049, -0.069876,
		0.133450, 0.907557, 0.398160,
		38.687790, 38.072735, 38.774673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176067, 37.410595, 39.058929>,  <38.594376, 37.437447, 38.495960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176067, 37.410595, 39.058929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947765, 37.730240, 39.134453>,  <38.810783, 37.922028, 39.179768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.947765, 37.730240, 39.134453>,  <39.176067, 37.410595, 39.058929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947765, 37.730240, 39.134453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060925, -0.188098, 0.980259,
		0.818854, 0.570995, 0.058672,
		-0.570759, 0.799114, 0.188813,
		38.776539, 37.969975, 39.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523064, 37.830601, 39.480156>,  <39.176067, 37.410595, 39.058929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523064, 37.830601, 39.480156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139061, 37.912285, 39.556767>,  <38.908657, 37.961296, 39.602734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139061, 37.912285, 39.556767>,  <39.523064, 37.830601, 39.480156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139061, 37.912285, 39.556767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110081, -0.353664, 0.928872,
		0.257416, 0.912810, 0.317042,
		-0.960010, 0.204206, 0.191522,
		38.851059, 37.973545, 39.614223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516956, 38.097126, 40.119049>,  <39.523064, 37.830601, 39.480156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516956, 38.097126, 40.119049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139725, 37.972099, 40.073597>,  <38.913387, 37.897083, 40.046326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139725, 37.972099, 40.073597>,  <39.516956, 38.097126, 40.119049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139725, 37.972099, 40.073597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026582, -0.269734, 0.962568,
		-0.331516, 0.910794, 0.246070,
		-0.943075, -0.312566, -0.113632,
		38.856804, 37.878330, 40.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150311, 38.254433, 40.744728>,  <39.516956, 38.097126, 40.119049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150311, 38.254433, 40.744728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 37.981022, 40.573906>,  <38.771454, 37.816975, 40.471413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913525, 37.981022, 40.573906>,  <39.150311, 38.254433, 40.744728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913525, 37.981022, 40.573906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057375, -0.492785, 0.868257,
		-0.803921, 0.538477, 0.252493,
		-0.591962, -0.683524, -0.427056,
		38.735935, 37.775963, 40.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652748, 37.995323, 41.315250>,  <39.150311, 38.254433, 40.744728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652748, 37.995323, 41.315250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613674, 37.716095, 41.031517>,  <38.590229, 37.548557, 40.861279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613674, 37.716095, 41.031517>,  <38.652748, 37.995323, 41.315250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613674, 37.716095, 41.031517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180911, -0.688413, 0.702395,
		-0.978636, 0.196940, -0.059040,
		-0.097686, -0.698070, -0.709334,
		38.584370, 37.506676, 40.818718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131344, 37.597481, 41.457771>,  <38.652748, 37.995323, 41.315250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131344, 37.597481, 41.457771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314781, 37.345451, 41.207108>,  <38.424843, 37.194233, 41.056709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314781, 37.345451, 41.207108>,  <38.131344, 37.597481, 41.457771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314781, 37.345451, 41.207108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323686, -0.775178, 0.542519,
		-0.827601, -0.045951, -0.559433,
		0.458589, -0.630070, -0.626665,
		38.452358, 37.156429, 41.019108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698063, 37.139458, 41.336071>,  <38.131344, 37.597481, 41.457771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698063, 37.139458, 41.336071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060314, 36.978909, 41.281315>,  <38.277664, 36.882580, 41.248463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060314, 36.978909, 41.281315>,  <37.698063, 37.139458, 41.336071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060314, 36.978909, 41.281315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193532, -0.678399, 0.708745,
		-0.377334, -0.615368, -0.692056,
		0.905629, -0.401369, -0.136890,
		38.332005, 36.858498, 41.240246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508514, 36.513527, 41.238510>,  <37.698063, 37.139458, 41.336071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508514, 36.513527, 41.238510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893173, 36.475933, 41.341587>,  <38.123966, 36.453377, 41.403435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893173, 36.475933, 41.341587>,  <37.508514, 36.513527, 41.238510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893173, 36.475933, 41.341587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261522, -0.597504, 0.758021,
		0.082735, -0.796339, -0.599165,
		0.961645, -0.093980, 0.257695,
		38.181667, 36.447739, 41.418896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638088, 35.722767, 41.320194>,  <37.508514, 36.513527, 41.238510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638088, 35.722767, 41.320194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941395, 35.889614, 41.520615>,  <38.123379, 35.989723, 41.640865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941395, 35.889614, 41.520615>,  <37.638088, 35.722767, 41.320194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941395, 35.889614, 41.520615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131836, -0.654565, 0.744422,
		0.638480, -0.630525, -0.441341,
		0.758263, 0.417114, 0.501052,
		38.168873, 36.014748, 41.670929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983459, 35.115612, 41.664932>,  <37.638088, 35.722767, 41.320194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983459, 35.115612, 41.664932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107834, 35.426441, 41.883831>,  <38.182457, 35.612938, 42.015171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107834, 35.426441, 41.883831>,  <37.983459, 35.115612, 41.664932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107834, 35.426441, 41.883831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177344, -0.518237, 0.836647,
		0.933740, -0.357192, -0.023328,
		0.310934, 0.777074, 0.547245,
		38.201115, 35.659565, 42.048004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408836, 34.830563, 42.095108>,  <37.983459, 35.115612, 41.664932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408836, 34.830563, 42.095108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295826, 35.176296, 42.261532>,  <38.228020, 35.383736, 42.361385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.295826, 35.176296, 42.261532>,  <38.408836, 34.830563, 42.095108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295826, 35.176296, 42.261532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026306, -0.426584, 0.904065,
		0.958897, 0.266371, 0.097786,
		-0.282531, 0.864334, 0.416057,
		38.211067, 35.435596, 42.386349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899940, 35.006096, 42.546299>,  <38.408836, 34.830563, 42.095108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899940, 35.006096, 42.546299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580990, 35.197449, 42.693459>,  <38.389622, 35.312260, 42.781754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580990, 35.197449, 42.693459>,  <38.899940, 35.006096, 42.546299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580990, 35.197449, 42.693459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127095, -0.462834, 0.877286,
		0.589952, 0.746282, 0.308252,
		-0.797373, 0.478380, 0.367899,
		38.341778, 35.340961, 42.803829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919678, 35.079201, 43.227585>,  <38.899940, 35.006096, 42.546299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919678, 35.079201, 43.227585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545483, 35.219482, 43.244907>,  <38.320965, 35.303650, 43.255302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545483, 35.219482, 43.244907>,  <38.919678, 35.079201, 43.227585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545483, 35.219482, 43.244907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094320, -0.365927, 0.925852,
		0.340546, 0.862036, 0.375397,
		-0.935485, 0.350702, 0.043308,
		38.264835, 35.324692, 43.257900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707520, 35.242729, 44.018436>,  <38.919678, 35.079201, 43.227585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707520, 35.242729, 44.018436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359520, 35.194077, 43.827312>,  <38.150719, 35.164883, 43.712639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359520, 35.194077, 43.827312>,  <38.707520, 35.242729, 44.018436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359520, 35.194077, 43.827312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395996, -0.404964, 0.824131,
		-0.293738, 0.906206, 0.304153,
		-0.870003, -0.121635, -0.477807,
		38.098518, 35.157585, 43.683971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157379, 35.370945, 44.457832>,  <38.707520, 35.242729, 44.018436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157379, 35.370945, 44.457832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951729, 35.161560, 44.186047>,  <37.828339, 35.035931, 44.022976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951729, 35.161560, 44.186047>,  <38.157379, 35.370945, 44.457832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951729, 35.161560, 44.186047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493658, -0.467228, 0.733485,
		-0.701412, 0.712524, -0.018196,
		-0.514124, -0.523458, -0.679462,
		37.797493, 35.004524, 43.982208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426304, 35.420124, 44.672115>,  <38.157379, 35.370945, 44.457832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426304, 35.420124, 44.672115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457436, 35.092052, 44.445400>,  <37.476112, 34.895210, 44.309372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.457436, 35.092052, 44.445400>,  <37.426304, 35.420124, 44.672115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457436, 35.092052, 44.445400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671229, -0.463461, 0.578494,
		-0.737153, 0.335422, -0.586598,
		0.077826, -0.820180, -0.566787,
		37.480782, 34.845997, 44.275364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.748226, 35.178043, 44.617455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986549, 34.865826, 44.541809>,  <37.129543, 34.678497, 44.496422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986549, 34.865826, 44.541809>,  <36.748226, 35.178043, 44.617455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986549, 34.865826, 44.541809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510236, -0.549732, 0.661403,
		-0.620217, -0.297576, -0.725796,
		0.595811, -0.780540, -0.189119,
		37.165295, 34.631664, 44.485073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314999, 34.602524, 44.698666>,  <36.748226, 35.178043, 44.617455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314999, 34.602524, 44.698666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675083, 34.428951, 44.713219>,  <36.891132, 34.324810, 44.721951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675083, 34.428951, 44.713219>,  <36.314999, 34.602524, 44.698666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675083, 34.428951, 44.713219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341985, -0.652796, 0.675946,
		-0.269561, -0.620938, -0.736052,
		0.900212, -0.433928, 0.036383,
		36.945148, 34.298771, 44.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129475, 33.968689, 44.768230>,  <36.314999, 34.602524, 44.698666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129475, 33.968689, 44.768230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512474, 33.990059, 44.881611>,  <36.742275, 34.002880, 44.949638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512474, 33.990059, 44.881611>,  <36.129475, 33.968689, 44.768230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512474, 33.990059, 44.881611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185399, -0.638805, 0.746697,
		0.220960, -0.767512, -0.601749,
		0.957499, 0.053427, 0.283447,
		36.799725, 34.006088, 44.966644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345421, 33.284260, 44.691170>,  <36.129475, 33.968689, 44.768230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345421, 33.284260, 44.691170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580254, 33.472672, 44.954521>,  <36.721153, 33.585716, 45.112534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580254, 33.472672, 44.954521>,  <36.345421, 33.284260, 44.691170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580254, 33.472672, 44.954521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118573, -0.754487, 0.645516,
		0.800794, -0.457039, -0.387097,
		0.587086, 0.471026, 0.658381,
		36.756378, 33.613979, 45.152035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553226, 32.749836, 45.212147>,  <36.345421, 33.284260, 44.691170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553226, 32.749836, 45.212147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706261, 33.067493, 45.401020>,  <36.798080, 33.258087, 45.514343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706261, 33.067493, 45.401020>,  <36.553226, 32.749836, 45.212147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706261, 33.067493, 45.401020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154460, -0.448901, 0.880131,
		0.910918, -0.409659, -0.049079,
		0.382585, 0.794146, 0.472188,
		36.821037, 33.305737, 45.542675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931267, 32.485813, 45.707993>,  <36.553226, 32.749836, 45.212147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931267, 32.485813, 45.707993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872646, 32.845203, 45.873528>,  <36.837475, 33.060837, 45.972847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872646, 32.845203, 45.873528>,  <36.931267, 32.485813, 45.707993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872646, 32.845203, 45.873528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171542, -0.435095, 0.883893,
		0.974216, 0.058543, 0.217890,
		-0.146549, 0.898480, 0.413833,
		36.828682, 33.114746, 45.997677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483196, 32.629471, 46.284416>,  <36.931267, 32.485813, 45.707993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483196, 32.629471, 46.284416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155247, 32.849972, 46.346287>,  <36.958477, 32.982273, 46.383411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155247, 32.849972, 46.346287>,  <37.483196, 32.629471, 46.284416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155247, 32.849972, 46.346287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095957, -0.398639, 0.912074,
		0.564447, 0.732943, 0.379731,
		-0.819873, 0.551255, 0.154680,
		36.909286, 33.015347, 46.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683144, 32.947147, 46.809242>,  <37.483196, 32.629471, 46.284416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683144, 32.947147, 46.809242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284199, 32.973629, 46.797356>,  <37.044830, 32.989517, 46.790222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284199, 32.973629, 46.797356>,  <37.683144, 32.947147, 46.809242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284199, 32.973629, 46.797356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047556, -0.286979, 0.956756,
		0.054815, 0.955646, 0.289371,
		-0.997363, 0.066206, -0.029716,
		36.984989, 32.993492, 46.788441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528000, 33.243908, 47.415054>,  <37.683144, 32.947147, 46.809242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528000, 33.243908, 47.415054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180050, 33.089363, 47.292393>,  <36.971279, 32.996635, 47.218796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180050, 33.089363, 47.292393>,  <37.528000, 33.243908, 47.415054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180050, 33.089363, 47.292393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101633, -0.467957, 0.877888,
		-0.482686, 0.794820, 0.367798,
		-0.869876, -0.386364, -0.306656,
		36.919086, 32.973454, 47.200397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138515, 33.227623, 48.074162>,  <37.528000, 33.243908, 47.415054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138515, 33.227623, 48.074162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946957, 32.989429, 47.816151>,  <36.832024, 32.846512, 47.661346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946957, 32.989429, 47.816151>,  <37.138515, 33.227623, 48.074162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946957, 32.989429, 47.816151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171551, -0.657113, 0.734012,
		-0.860947, 0.462169, 0.212531,
		-0.478894, -0.595486, -0.645025,
		36.803288, 32.810783, 47.622643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532089, 33.141392, 48.420246>,  <37.138515, 33.227623, 48.074162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532089, 33.141392, 48.420246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597324, 32.833958, 48.172802>,  <36.636463, 32.649498, 48.024338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597324, 32.833958, 48.172802>,  <36.532089, 33.141392, 48.420246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597324, 32.833958, 48.172802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293595, -0.636404, 0.713296,
		-0.941916, 0.065292, -0.329442,
		0.163086, -0.768588, -0.618608,
		36.646252, 32.603382, 47.987221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946293, 32.775173, 48.389084>,  <36.532089, 33.141392, 48.420246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946293, 32.775173, 48.389084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.224384, 32.506153, 48.287632>,  <36.391239, 32.344742, 48.226761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.224384, 32.506153, 48.287632>,  <35.946293, 32.775173, 48.389084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224384, 32.506153, 48.287632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478050, -0.696144, 0.535586,
		-0.536773, -0.251109, -0.805493,
		0.695229, -0.672554, -0.253628,
		36.432953, 32.304386, 48.211544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603508, 32.109650, 48.529110>,  <35.946293, 32.775173, 48.389084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603508, 32.109650, 48.529110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982941, 31.995205, 48.474945>,  <36.210602, 31.926538, 48.442448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982941, 31.995205, 48.474945>,  <35.603508, 32.109650, 48.529110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982941, 31.995205, 48.474945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206789, -0.884015, 0.419233,
		-0.239654, -0.369674, -0.897723,
		0.948580, -0.286110, -0.135413,
		36.267513, 31.909372, 48.434322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529175, 31.382484, 48.397190>,  <35.603508, 32.109650, 48.529110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529175, 31.382484, 48.397190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918961, 31.402037, 48.484852>,  <36.152832, 31.413769, 48.537449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918961, 31.402037, 48.484852>,  <35.529175, 31.382484, 48.397190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918961, 31.402037, 48.484852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077026, -0.844027, 0.530741,
		0.210918, -0.534068, -0.818709,
		0.974464, 0.048881, 0.219158,
		36.211300, 31.416700, 48.550598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875500, 30.736555, 48.242435>,  <35.529175, 31.382484, 48.397190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875500, 30.736555, 48.242435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117985, 30.898893, 48.516018>,  <36.263474, 30.996296, 48.680168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117985, 30.898893, 48.516018>,  <35.875500, 30.736555, 48.242435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117985, 30.898893, 48.516018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108789, -0.894227, 0.434192,
		0.787829, -0.188804, -0.586241,
		0.606210, 0.405846, 0.683958,
		36.299847, 31.020647, 48.721207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555191, 30.383101, 48.221153>,  <35.875500, 30.736555, 48.242435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555191, 30.383101, 48.221153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502083, 30.533596, 48.587936>,  <36.470219, 30.623894, 48.808006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502083, 30.533596, 48.587936>,  <36.555191, 30.383101, 48.221153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502083, 30.533596, 48.587936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079916, -0.918076, 0.388266,
		0.987920, 0.124829, 0.091824,
		-0.132768, 0.376238, 0.916961,
		36.462254, 30.646467, 48.863026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871807, 30.010292, 48.684578>,  <36.555191, 30.383101, 48.221153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871807, 30.010292, 48.684578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684906, 30.211472, 48.975430>,  <36.572765, 30.332180, 49.149940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684906, 30.211472, 48.975430>,  <36.871807, 30.010292, 48.684578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684906, 30.211472, 48.975430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206576, -0.737561, 0.642908,
		0.859653, 0.450607, 0.240728,
		-0.467251, 0.502949, 0.727131,
		36.544731, 30.362356, 49.193569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340031, 30.032705, 49.217793>,  <36.871807, 30.010292, 48.684578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340031, 30.032705, 49.217793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976692, 30.095419, 49.372879>,  <36.758690, 30.133047, 49.465931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976692, 30.095419, 49.372879>,  <37.340031, 30.032705, 49.217793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976692, 30.095419, 49.372879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183268, -0.684092, 0.705997,
		0.375923, 0.712346, 0.592659,
		-0.908347, 0.156785, 0.387716,
		36.704189, 30.142454, 49.489193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499313, 29.884678, 49.848835>,  <37.340031, 30.032705, 49.217793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499313, 29.884678, 49.848835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100544, 29.853750, 49.853836>,  <36.861282, 29.835194, 49.856834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.100544, 29.853750, 49.853836>,  <37.499313, 29.884678, 49.848835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100544, 29.853750, 49.853836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069938, -0.806957, 0.586455,
		-0.035259, 0.585527, 0.809886,
		-0.996928, -0.077320, 0.012498,
		36.801464, 29.830555, 49.857586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219883, 29.893976, 50.552258>,  <37.499313, 29.884678, 49.848835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219883, 29.893976, 50.552258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947243, 29.715231, 50.320488>,  <36.783657, 29.607983, 50.181427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.947243, 29.715231, 50.320488>,  <37.219883, 29.893976, 50.552258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947243, 29.715231, 50.320488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072329, -0.829130, 0.554357,
		-0.728142, 0.335940, 0.597455,
		-0.681599, -0.446864, -0.579427,
		36.742764, 29.581171, 50.146660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709412, 29.596119, 51.015205>,  <37.219883, 29.893976, 50.552258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709412, 29.596119, 51.015205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631378, 29.422037, 50.663628>,  <36.584557, 29.317587, 50.452682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.631378, 29.422037, 50.663628>,  <36.709412, 29.596119, 51.015205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631378, 29.422037, 50.663628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201810, -0.859172, 0.470208,
		-0.959800, 0.269108, 0.079781,
		-0.195082, -0.435205, -0.878942,
		36.572853, 29.291475, 50.399944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025280, 29.464617, 51.016991>,  <36.709412, 29.596119, 51.015205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025280, 29.464617, 51.016991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197639, 29.224262, 50.747692>,  <36.301056, 29.080050, 50.586113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197639, 29.224262, 50.747692>,  <36.025280, 29.464617, 51.016991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197639, 29.224262, 50.747692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244577, -0.795903, 0.553824,
		-0.868625, -0.073981, -0.489916,
		0.430898, -0.600888, -0.673247,
		36.326908, 29.043997, 50.545719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760578, 29.556641, 50.320396>,  <36.025280, 29.464617, 51.016991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760578, 29.556641, 50.320396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859333, 29.189617, 50.445065>,  <35.918587, 28.969404, 50.519863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859333, 29.189617, 50.445065>,  <35.760578, 29.556641, 50.320396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859333, 29.189617, 50.445065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292147, 0.236182, 0.926751,
		-0.923957, -0.319854, -0.209752,
		0.246886, -0.917557, 0.311667,
		35.933399, 28.914351, 50.538563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167580, 29.324638, 50.611645>,  <35.760578, 29.556641, 50.320396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167580, 29.324638, 50.611645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495144, 29.148901, 50.759350>,  <35.691685, 29.043459, 50.847973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.495144, 29.148901, 50.759350>,  <35.167580, 29.324638, 50.611645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495144, 29.148901, 50.759350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351957, 0.123774, 0.927797,
		-0.453325, -0.889752, -0.053269,
		0.818915, -0.439342, 0.369264,
		35.740818, 29.017097, 50.870129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923752, 28.769875, 51.069885>,  <35.167580, 29.324638, 50.611645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923752, 28.769875, 51.069885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532810, 28.851583, 51.092003>,  <34.298244, 28.900608, 51.105274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532810, 28.851583, 51.092003>,  <34.923752, 28.769875, 51.069885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532810, 28.851583, 51.092003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072761, 0.569725, -0.818608,
		-0.198721, -0.796044, -0.571685,
		-0.977351, 0.204271, 0.055295,
		34.239605, 28.912865, 51.108593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752213, 28.530544, 50.437008>,  <34.923752, 28.769875, 51.069885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752213, 28.530544, 50.437008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456364, 28.769913, 50.560196>,  <34.278854, 28.913534, 50.634109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456364, 28.769913, 50.560196>,  <34.752213, 28.530544, 50.437008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456364, 28.769913, 50.560196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078705, 0.377551, -0.922638,
		-0.668404, -0.706643, -0.232147,
		-0.739623, 0.598424, 0.307973,
		34.234478, 28.949440, 50.652588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254219, 28.570131, 49.976292>,  <34.752213, 28.530544, 50.437008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254219, 28.570131, 49.976292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096733, 28.874474, 50.182625>,  <34.002243, 29.057079, 50.306423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096733, 28.874474, 50.182625>,  <34.254219, 28.570131, 49.976292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096733, 28.874474, 50.182625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131445, 0.508791, -0.850796,
		-0.909786, -0.402775, -0.100308,
		-0.393715, 0.760857, 0.515834,
		33.978619, 29.102730, 50.337376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626102, 28.740669, 49.659210>,  <34.254219, 28.570131, 49.976292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626102, 28.740669, 49.659210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724827, 29.069439, 49.864548>,  <33.784061, 29.266701, 49.987751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724827, 29.069439, 49.864548>,  <33.626102, 28.740669, 49.659210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724827, 29.069439, 49.864548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146776, 0.555327, -0.818577,
		-0.957884, 0.126685, 0.257699,
		0.246808, 0.821926, 0.513345,
		33.798870, 29.316017, 50.018551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100040, 29.277740, 49.592861>,  <33.626102, 28.740669, 49.659210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100040, 29.277740, 49.592861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398323, 29.517471, 49.709293>,  <33.577293, 29.661310, 49.779152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398323, 29.517471, 49.709293>,  <33.100040, 29.277740, 49.592861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398323, 29.517471, 49.709293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180179, 0.601997, -0.777904,
		-0.641450, 0.527641, 0.556899,
		0.745706, 0.599329, 0.291081,
		33.622036, 29.697269, 49.796619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828396, 29.945103, 49.549953>,  <33.100040, 29.277740, 49.592861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828396, 29.945103, 49.549953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224560, 29.999840, 49.557617>,  <33.462257, 30.032682, 49.562214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.224560, 29.999840, 49.557617>,  <32.828396, 29.945103, 49.549953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224560, 29.999840, 49.557617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079187, 0.675742, -0.732872,
		-0.113233, 0.724325, 0.680097,
		0.990408, 0.136840, 0.019159,
		33.521683, 30.040892, 49.563366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978085, 30.699169, 49.562557>,  <32.828396, 29.945103, 49.549953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978085, 30.699169, 49.562557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305382, 30.513695, 49.426636>,  <33.501762, 30.402411, 49.345081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.305382, 30.513695, 49.426636>,  <32.978085, 30.699169, 49.562557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305382, 30.513695, 49.426636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064590, 0.661510, -0.747149,
		0.571226, 0.589405, 0.571229,
		0.818247, -0.463687, -0.339802,
		33.550858, 30.374588, 49.324696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342224, 31.183176, 49.205345>,  <32.978085, 30.699169, 49.562557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342224, 31.183176, 49.205345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541203, 30.862366, 49.073101>,  <33.660587, 30.669880, 48.993755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.541203, 30.862366, 49.073101>,  <33.342224, 31.183176, 49.205345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541203, 30.862366, 49.073101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089688, 0.426612, -0.899977,
		0.862847, 0.418037, 0.284148,
		0.497444, -0.802027, -0.330608,
		33.690437, 30.621758, 48.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768757, 31.525167, 48.793713>,  <33.342224, 31.183176, 49.205345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768757, 31.525167, 48.793713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753735, 31.144194, 48.672745>,  <33.744720, 30.915609, 48.600163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753735, 31.144194, 48.672745>,  <33.768757, 31.525167, 48.793713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753735, 31.144194, 48.672745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128752, 0.295498, -0.946627,
		0.990965, -0.074488, 0.111531,
		-0.037555, -0.952435, -0.302419,
		33.742470, 30.858463, 48.582020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390816, 31.366438, 48.440407>,  <33.768757, 31.525167, 48.793713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390816, 31.366438, 48.440407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099953, 31.138048, 48.287968>,  <33.925434, 31.001015, 48.196507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099953, 31.138048, 48.287968>,  <34.390816, 31.366438, 48.440407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099953, 31.138048, 48.287968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195564, 0.359846, -0.912286,
		0.658027, -0.737903, -0.150002,
		-0.727155, -0.570974, -0.381095,
		33.881805, 30.966757, 48.173637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718906, 31.148634, 47.794418>,  <34.390816, 31.366438, 48.440407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718906, 31.148634, 47.794418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320950, 31.115152, 47.771820>,  <34.082176, 31.095064, 47.758263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.320950, 31.115152, 47.771820>,  <34.718906, 31.148634, 47.794418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320950, 31.115152, 47.771820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028054, 0.308318, -0.950869,
		0.097007, -0.947594, -0.304394,
		-0.994888, -0.083702, -0.056493,
		34.022484, 31.090042, 47.754871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802120, 31.119131, 47.123749>,  <34.718906, 31.148634, 47.794418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802120, 31.119131, 47.123749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411072, 31.154623, 47.200054>,  <34.176445, 31.175919, 47.245838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411072, 31.154623, 47.200054>,  <34.802120, 31.119131, 47.123749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411072, 31.154623, 47.200054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119195, 0.513561, -0.849734,
		-0.173362, -0.853453, -0.491490,
		-0.977619, 0.088729, 0.190759,
		34.117786, 31.181242, 47.257282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431778, 31.021515, 46.516487>,  <34.802120, 31.119131, 47.123749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431778, 31.021515, 46.516487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187355, 31.242188, 46.743557>,  <34.040703, 31.374592, 46.879799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187355, 31.242188, 46.743557>,  <34.431778, 31.021515, 46.516487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187355, 31.242188, 46.743557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079753, 0.756395, -0.649235,
		-0.787560, -0.351445, -0.506198,
		-0.611056, 0.551682, 0.567677,
		34.004040, 31.407692, 46.913860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940578, 31.338972, 46.081524>,  <34.431778, 31.021515, 46.516487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940578, 31.338972, 46.081524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939995, 31.580553, 46.400330>,  <33.939644, 31.725502, 46.591614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939995, 31.580553, 46.400330>,  <33.940578, 31.338972, 46.081524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939995, 31.580553, 46.400330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007033, 0.797005, -0.603931,
		-0.999974, 0.004725, -0.005410,
		-0.001458, 0.603954, 0.797018,
		33.939556, 31.761740, 46.639435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367981, 31.891071, 45.951645>,  <33.940578, 31.338972, 46.081524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367981, 31.891071, 45.951645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610893, 32.045940, 46.229149>,  <33.756641, 32.138863, 46.395653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610893, 32.045940, 46.229149>,  <33.367981, 31.891071, 45.951645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610893, 32.045940, 46.229149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067170, 0.845075, -0.530412,
		-0.791641, 0.368710, 0.487194,
		0.607283, 0.387171, 0.693762,
		33.793079, 32.162090, 46.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233391, 32.492382, 46.033943>,  <33.367981, 31.891071, 45.951645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233391, 32.492382, 46.033943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602676, 32.524605, 46.184246>,  <33.824245, 32.543938, 46.274429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.602676, 32.524605, 46.184246>,  <33.233391, 32.492382, 46.033943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602676, 32.524605, 46.184246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109388, 0.882248, -0.457901,
		-0.368401, 0.463842, 0.805687,
		0.923209, 0.080559, 0.375759,
		33.879639, 32.548771, 46.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285408, 33.104218, 46.202869>,  <33.233391, 32.492382, 46.033943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285408, 33.104218, 46.202869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675632, 33.016560, 46.209183>,  <33.909767, 32.963963, 46.212971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.675632, 33.016560, 46.209183>,  <33.285408, 33.104218, 46.202869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675632, 33.016560, 46.209183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183365, 0.772483, -0.607987,
		0.121048, 0.596024, 0.793790,
		0.975564, -0.219149, 0.015782,
		33.968300, 32.950813, 46.213917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590744, 33.685966, 46.408390>,  <33.285408, 33.104218, 46.202869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590744, 33.685966, 46.408390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829132, 33.463234, 46.176956>,  <33.972164, 33.329594, 46.038097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.829132, 33.463234, 46.176956>,  <33.590744, 33.685966, 46.408390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829132, 33.463234, 46.176956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111999, 0.771117, -0.626765,
		0.795157, 0.308734, 0.521928,
		0.595971, -0.556832, -0.578581,
		34.007923, 33.296185, 46.003384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155552, 34.189194, 46.164814>,  <33.590744, 33.685966, 46.408390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155552, 34.189194, 46.164814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209873, 33.860859, 45.942902>,  <34.242466, 33.663857, 45.809753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209873, 33.860859, 45.942902>,  <34.155552, 34.189194, 46.164814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209873, 33.860859, 45.942902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216161, 0.571028, -0.791960,
		0.966867, -0.012370, 0.254982,
		0.135805, -0.820837, -0.554782,
		34.250614, 33.614609, 45.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803459, 34.238281, 45.736923>,  <34.155552, 34.189194, 46.164814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803459, 34.238281, 45.736923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593437, 33.962864, 45.536831>,  <34.467422, 33.797615, 45.416775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593437, 33.962864, 45.536831>,  <34.803459, 34.238281, 45.736923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593437, 33.962864, 45.536831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214325, 0.461847, -0.860675,
		0.823638, -0.559116, -0.094925,
		-0.525058, -0.688540, -0.500227,
		34.435921, 33.756302, 45.386765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.573849, 29.818089, 40.812370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644913, 30.136030, 41.044456>,  <42.687550, 30.326796, 41.183708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.644913, 30.136030, 41.044456>,  <42.573849, 29.818089, 40.812370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644913, 30.136030, 41.044456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378765, 0.599399, -0.705165,
		-0.908281, -0.094486, 0.407551,
		0.177658, 0.794854, 0.580211,
		42.698212, 30.374487, 41.218521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217484, 30.342230, 40.492043>,  <42.573849, 29.818089, 40.812370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217484, 30.342230, 40.492043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350475, 30.596474, 40.770741>,  <42.430271, 30.749020, 40.937958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350475, 30.596474, 40.770741>,  <42.217484, 30.342230, 40.492043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350475, 30.596474, 40.770741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160552, 0.766137, -0.622300,
		-0.929344, 0.095039, 0.356774,
		0.332481, 0.635612, 0.696746,
		42.450218, 30.787157, 40.979763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693920, 30.825521, 40.729599>,  <42.217484, 30.342230, 40.492043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693920, 30.825521, 40.729599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056065, 30.987270, 40.781460>,  <42.273350, 31.084320, 40.812576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056065, 30.987270, 40.781460>,  <41.693920, 30.825521, 40.729599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056065, 30.987270, 40.781460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278266, 0.795565, -0.538186,
		-0.320772, 0.451174, 0.832795,
		0.905358, 0.404374, 0.129649,
		42.327671, 31.108583, 40.820354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531113, 31.591099, 40.737259>,  <41.693920, 30.825521, 40.729599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531113, 31.591099, 40.737259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923641, 31.559803, 40.666965>,  <42.159161, 31.541025, 40.624790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.923641, 31.559803, 40.666965>,  <41.531113, 31.591099, 40.737259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923641, 31.559803, 40.666965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070920, 0.702052, -0.708585,
		0.178811, 0.707815, 0.683392,
		0.981324, -0.078237, -0.175733,
		42.218037, 31.536331, 40.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869217, 32.356586, 40.891212>,  <41.531113, 31.591099, 40.737259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869217, 32.356586, 40.891212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072945, 32.109913, 40.651115>,  <42.195183, 31.961908, 40.507057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.072945, 32.109913, 40.651115>,  <41.869217, 32.356586, 40.891212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072945, 32.109913, 40.651115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063622, 0.722562, -0.688372,
		0.858222, 0.312413, 0.407251,
		0.509320, -0.616686, -0.600243,
		42.225742, 31.924908, 40.471043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213898, 32.821499, 40.474262>,  <41.869217, 32.356586, 40.891212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213898, 32.821499, 40.474262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320232, 32.486744, 40.282867>,  <42.384033, 32.285889, 40.168030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320232, 32.486744, 40.282867>,  <42.213898, 32.821499, 40.474262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320232, 32.486744, 40.282867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210068, 0.534705, -0.818512,
		0.940853, 0.117073, 0.317946,
		0.265833, -0.836890, -0.478486,
		42.399982, 32.235676, 40.139320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922768, 32.807461, 40.256340>,  <42.213898, 32.821499, 40.474262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922768, 32.807461, 40.256340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755558, 32.568336, 39.982735>,  <42.655231, 32.424862, 39.818569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755558, 32.568336, 39.982735>,  <42.922768, 32.807461, 40.256340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755558, 32.568336, 39.982735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224401, 0.661674, -0.715424,
		0.880283, -0.452559, -0.142447,
		-0.418025, -0.597811, -0.684015,
		42.630150, 32.388992, 39.777531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305882, 32.808422, 39.637249>,  <42.922768, 32.807461, 40.256340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305882, 32.808422, 39.637249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945442, 32.672577, 39.529411>,  <42.729179, 32.591072, 39.464706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945442, 32.672577, 39.529411>,  <43.305882, 32.808422, 39.637249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945442, 32.672577, 39.529411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035645, 0.561631, -0.826619,
		0.432142, -0.754477, -0.493981,
		-0.901101, -0.339609, -0.269598,
		42.675114, 32.570694, 39.448532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319290, 32.717453, 38.927773>,  <43.305882, 32.808422, 39.637249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319290, 32.717453, 38.927773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928471, 32.720913, 39.012905>,  <42.693977, 32.722988, 39.063984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928471, 32.720913, 39.012905>,  <43.319290, 32.717453, 38.927773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928471, 32.720913, 39.012905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157022, 0.645915, -0.747086,
		-0.143930, -0.763360, -0.629734,
		-0.977051, 0.008646, 0.212831,
		42.635357, 32.723507, 39.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955418, 32.625336, 38.215206>,  <43.319290, 32.717453, 38.927773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955418, 32.625336, 38.215206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698479, 32.777405, 38.481396>,  <42.544315, 32.868645, 38.641109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698479, 32.777405, 38.481396>,  <42.955418, 32.625336, 38.215206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698479, 32.777405, 38.481396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114813, 0.810771, -0.573993,
		-0.757765, -0.445109, -0.477148,
		-0.642348, 0.380169, 0.665478,
		42.505775, 32.891457, 38.681038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300106, 32.748894, 37.775116>,  <42.955418, 32.625336, 38.215206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300106, 32.748894, 37.775116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307323, 32.981228, 38.100647>,  <42.311653, 33.120628, 38.295963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307323, 32.981228, 38.100647>,  <42.300106, 32.748894, 37.775116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307323, 32.981228, 38.100647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282957, 0.783646, -0.553022,
		-0.958963, -0.220299, 0.178489,
		0.018042, 0.580833, 0.813823,
		42.312737, 33.155479, 38.344795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694214, 33.224358, 37.671745>,  <42.300106, 32.748894, 37.775116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694214, 33.224358, 37.671745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932610, 33.391514, 37.946018>,  <42.075645, 33.491810, 38.110580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.932610, 33.391514, 37.946018>,  <41.694214, 33.224358, 37.671745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932610, 33.391514, 37.946018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117989, 0.890216, -0.439994,
		-0.794277, 0.181329, 0.579866,
		0.595989, 0.417895, 0.685683,
		42.111408, 33.516884, 38.151722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432098, 33.805683, 37.913403>,  <41.694214, 33.224358, 37.671745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432098, 33.805683, 37.913403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821556, 33.872944, 37.975044>,  <42.055229, 33.913300, 38.012028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821556, 33.872944, 37.975044>,  <41.432098, 33.805683, 37.913403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821556, 33.872944, 37.975044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079185, 0.882817, -0.462995,
		-0.213894, 0.438589, 0.872863,
		0.973642, 0.168149, 0.154100,
		42.113647, 33.923389, 38.021275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469814, 34.580662, 37.910839>,  <41.432098, 33.805683, 37.913403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469814, 34.580662, 37.910839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844795, 34.460316, 37.840805>,  <42.069786, 34.388107, 37.798782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844795, 34.460316, 37.840805>,  <41.469814, 34.580662, 37.910839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844795, 34.460316, 37.840805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187027, 0.859538, -0.475621,
		0.293592, 0.413127, 0.862049,
		0.937456, -0.300865, -0.175088,
		42.126034, 34.370056, 37.788280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979542, 35.122986, 38.028183>,  <41.469814, 34.580662, 37.910839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979542, 35.122986, 38.028183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219891, 34.885475, 37.814125>,  <42.364101, 34.742970, 37.685688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219891, 34.885475, 37.814125>,  <41.979542, 35.122986, 38.028183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219891, 34.885475, 37.814125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246727, 0.774563, -0.582390,
		0.760314, 0.217907, 0.611914,
		0.600873, -0.593775, -0.535148,
		42.400154, 34.707344, 37.653580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550533, 35.459488, 37.919247>,  <41.979542, 35.122986, 38.028183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550533, 35.459488, 37.919247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572350, 35.186089, 37.628082>,  <42.585442, 35.022049, 37.453384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572350, 35.186089, 37.628082>,  <42.550533, 35.459488, 37.919247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572350, 35.186089, 37.628082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237855, 0.716906, -0.655340,
		0.969768, -0.137392, 0.201676,
		0.054544, -0.683497, -0.727912,
		42.588715, 34.981041, 37.409710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141624, 35.713703, 37.523884>,  <42.550533, 35.459488, 37.919247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141624, 35.713703, 37.523884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928791, 35.462864, 37.296329>,  <42.801090, 35.312359, 37.159798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.928791, 35.462864, 37.296329>,  <43.141624, 35.713703, 37.523884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928791, 35.462864, 37.296329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195752, 0.562576, -0.803237,
		0.823753, -0.538748, -0.176580,
		-0.532082, -0.627103, -0.568885,
		42.769165, 35.274734, 37.125664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528931, 35.661861, 36.894890>,  <43.141624, 35.713703, 37.523884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528931, 35.661861, 36.894890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183212, 35.496559, 36.780201>,  <42.975780, 35.397377, 36.711388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183212, 35.496559, 36.780201>,  <43.528931, 35.661861, 36.894890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183212, 35.496559, 36.780201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122533, 0.379876, -0.916886,
		0.487824, -0.827597, -0.277689,
		-0.864299, -0.413253, -0.286721,
		42.923923, 35.372585, 36.694183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703152, 35.307407, 36.287991>,  <43.528931, 35.661861, 36.894890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703152, 35.307407, 36.287991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310810, 35.383533, 36.271481>,  <43.075405, 35.429211, 36.261574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310810, 35.383533, 36.271481>,  <43.703152, 35.307407, 36.287991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310810, 35.383533, 36.271481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092980, 0.271423, -0.957959,
		-0.171114, -0.943456, -0.283922,
		-0.980854, 0.190319, -0.041278,
		43.016552, 35.440628, 36.259098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549606, 34.993320, 35.706387>,  <43.703152, 35.307407, 36.287991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549606, 34.993320, 35.706387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269196, 35.266403, 35.788830>,  <43.100948, 35.430252, 35.838295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269196, 35.266403, 35.788830>,  <43.549606, 34.993320, 35.706387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269196, 35.266403, 35.788830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049732, 0.241510, -0.969123,
		-0.711403, -0.689627, -0.135351,
		-0.701022, 0.682706, 0.206108,
		43.058887, 35.471214, 35.850662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062054, 34.918690, 35.212379>,  <43.549606, 34.993320, 35.706387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062054, 34.918690, 35.212379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996212, 35.292164, 35.339592>,  <42.956707, 35.516247, 35.415920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996212, 35.292164, 35.339592>,  <43.062054, 34.918690, 35.212379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996212, 35.292164, 35.339592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039121, 0.315999, -0.947953,
		-0.985584, -0.168475, -0.015487,
		-0.164600, 0.933681, 0.318035,
		42.946831, 35.572269, 35.435001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203430, 34.331993, 34.821583>,  <43.062054, 34.918690, 35.212379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203430, 34.331993, 34.821583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895145, 34.520035, 34.649532>,  <42.710175, 34.632858, 34.546303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.895145, 34.520035, 34.649532>,  <43.203430, 34.331993, 34.821583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895145, 34.520035, 34.649532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417527, 0.882518, 0.216408,
		0.481328, -0.012801, -0.876447,
		-0.770710, 0.470104, -0.430126,
		42.663933, 34.661064, 34.520493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793842, 34.506435, 34.192055>,  <43.203430, 34.331993, 34.821583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793842, 34.506435, 34.192055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180759, 34.525703, 34.291668>,  <44.412910, 34.537266, 34.351437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180759, 34.525703, 34.291668>,  <43.793842, 34.506435, 34.192055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180759, 34.525703, 34.291668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120917, -0.775492, 0.619670,
		0.222972, -0.629517, -0.744306,
		0.967297, 0.048170, 0.249033,
		44.470947, 34.540154, 34.366379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210331, 33.850952, 34.063934>,  <43.793842, 34.506435, 34.192055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210331, 33.850952, 34.063934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385181, 34.046734, 34.365757>,  <44.490093, 34.164204, 34.546852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.385181, 34.046734, 34.365757>,  <44.210331, 33.850952, 34.063934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385181, 34.046734, 34.365757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060070, -0.821193, 0.567480,
		0.897391, -0.293387, -0.329565,
		0.437128, 0.489455, 0.754556,
		44.516319, 34.193569, 34.592125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636272, 33.377354, 34.413197>,  <44.210331, 33.850952, 34.063934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636272, 33.377354, 34.413197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650928, 33.675697, 34.679234>,  <44.659721, 33.854702, 34.838856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650928, 33.675697, 34.679234>,  <44.636272, 33.377354, 34.413197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650928, 33.675697, 34.679234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152999, -0.661882, 0.733828,
		0.987547, 0.074873, -0.138366,
		0.036638, 0.745860, 0.665095,
		44.661919, 33.899456, 34.878761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292492, 33.297947, 34.796806>,  <44.636272, 33.377354, 34.413197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292492, 33.297947, 34.796806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052227, 33.519516, 35.027416>,  <44.908070, 33.652458, 35.165783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.052227, 33.519516, 35.027416>,  <45.292492, 33.297947, 34.796806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052227, 33.519516, 35.027416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121052, -0.649779, 0.750422,
		0.790287, 0.520538, 0.323244,
		-0.600660, 0.553920, 0.576524,
		44.872028, 33.685692, 35.200375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.696949, 33.376152, 35.464390>,  <45.292492, 33.297947, 34.796806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.696949, 33.376152, 35.464390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325199, 33.492004, 35.555931>,  <45.102150, 33.561516, 35.610855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325199, 33.492004, 35.555931>,  <45.696949, 33.376152, 35.464390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325199, 33.492004, 35.555931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077742, -0.452498, 0.888370,
		0.360855, 0.843422, 0.398024,
		-0.929376, 0.289630, 0.228855,
		45.046387, 33.578892, 35.624588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722305, 33.597908, 36.165977>,  <45.696949, 33.376152, 35.464390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722305, 33.597908, 36.165977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327492, 33.537346, 36.144676>,  <45.090603, 33.501007, 36.131897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327492, 33.537346, 36.144676>,  <45.722305, 33.597908, 36.165977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327492, 33.537346, 36.144676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012862, -0.405343, 0.914074,
		-0.159980, 0.901539, 0.402036,
		-0.987036, -0.151405, -0.053251,
		45.031380, 33.491924, 36.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694984, 33.610397, 36.828796>,  <45.722305, 33.597908, 36.165977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694984, 33.610397, 36.828796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346554, 33.489803, 36.673702>,  <45.137497, 33.417446, 36.580647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346554, 33.489803, 36.673702>,  <45.694984, 33.610397, 36.828796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346554, 33.489803, 36.673702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198474, -0.506039, 0.839365,
		-0.449264, 0.808103, 0.380960,
		-0.871074, -0.301486, -0.387733,
		45.085232, 33.399357, 36.557381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064590, 33.709507, 37.309509>,  <45.694984, 33.610397, 36.828796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064590, 33.709507, 37.309509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975319, 33.402355, 37.069328>,  <44.921757, 33.218063, 36.925220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.975319, 33.402355, 37.069328>,  <45.064590, 33.709507, 37.309509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975319, 33.402355, 37.069328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246017, -0.551678, 0.796948,
		-0.943222, 0.325584, -0.065790,
		-0.223179, -0.767884, -0.600454,
		44.908363, 33.171989, 36.889191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381622, 33.481609, 37.516144>,  <45.064590, 33.709507, 37.309509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381622, 33.481609, 37.516144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549858, 33.177837, 37.317600>,  <44.650799, 32.995575, 37.198475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549858, 33.177837, 37.317600>,  <44.381622, 33.481609, 37.516144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549858, 33.177837, 37.317600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192140, -0.609250, 0.769347,
		-0.886671, -0.228210, -0.402162,
		0.420590, -0.759430, -0.496357,
		44.676037, 32.950008, 37.168694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006603, 32.828094, 37.824921>,  <44.381622, 33.481609, 37.516144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006603, 32.828094, 37.824921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323063, 32.670937, 37.637428>,  <44.512939, 32.576641, 37.524933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.323063, 32.670937, 37.637428>,  <44.006603, 32.828094, 37.824921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323063, 32.670937, 37.637428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125203, -0.646110, 0.752905,
		-0.598664, -0.654351, -0.461981,
		0.791155, -0.392896, -0.468729,
		44.560410, 32.553066, 37.496807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859863, 32.164333, 37.707645>,  <44.006603, 32.828094, 37.824921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859863, 32.164333, 37.707645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258930, 32.188660, 37.695274>,  <44.498371, 32.203255, 37.687851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258930, 32.188660, 37.695274>,  <43.859863, 32.164333, 37.707645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258930, 32.188660, 37.695274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065327, -0.720867, 0.689988,
		0.019668, -0.690400, -0.723160,
		0.997670, 0.060813, -0.030924,
		44.558231, 32.206905, 37.685997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059235, 31.424135, 37.776955>,  <43.859863, 32.164333, 37.707645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059235, 31.424135, 37.776955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373047, 31.653536, 37.871277>,  <44.561333, 31.791176, 37.927872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373047, 31.653536, 37.871277>,  <44.059235, 31.424135, 37.776955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373047, 31.653536, 37.871277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198045, -0.592106, 0.781146,
		0.587612, -0.566133, -0.578105,
		0.784532, 0.573502, 0.235809,
		44.608406, 31.825586, 37.942020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.509056, 30.976398, 37.914597>,  <44.059235, 31.424135, 37.776955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.509056, 30.976398, 37.914597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669987, 31.288765, 38.105721>,  <44.766544, 31.476185, 38.220394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.669987, 31.288765, 38.105721>,  <44.509056, 30.976398, 37.914597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669987, 31.288765, 38.105721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290914, -0.603915, 0.742062,
		0.868046, -0.159547, -0.470149,
		0.402323, 0.780917, 0.477812,
		44.790684, 31.523041, 38.249065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172123, 30.751734, 38.261456>,  <44.509056, 30.976398, 37.914597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172123, 30.751734, 38.261456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.067654, 31.089348, 38.448811>,  <45.004971, 31.291916, 38.561226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.067654, 31.089348, 38.448811>,  <45.172123, 30.751734, 38.261456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.067654, 31.089348, 38.448811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112581, -0.455288, 0.883198,
		0.958703, 0.283403, 0.023889,
		-0.261177, 0.844036, 0.468391,
		44.989300, 31.342558, 38.589329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698219, 30.866308, 38.650894>,  <45.172123, 30.751734, 38.261456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698219, 30.866308, 38.650894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372173, 31.043613, 38.800079>,  <45.176544, 31.149996, 38.889591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.372173, 31.043613, 38.800079>,  <45.698219, 30.866308, 38.650894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372173, 31.043613, 38.800079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228031, -0.346328, 0.909977,
		0.532526, 0.826786, 0.181221,
		-0.815119, 0.443262, 0.372962,
		45.127636, 31.176592, 38.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844296, 30.975424, 39.323666>,  <45.698219, 30.866308, 38.650894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844296, 30.975424, 39.323666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451744, 31.046879, 39.351921>,  <45.216213, 31.089752, 39.368874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451744, 31.046879, 39.351921>,  <45.844296, 30.975424, 39.323666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451744, 31.046879, 39.351921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007705, -0.330845, 0.943654,
		0.191943, 0.926623, 0.323306,
		-0.981376, 0.178636, 0.070643,
		45.157330, 31.100470, 39.373116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784176, 31.350771, 39.916698>,  <45.844296, 30.975424, 39.323666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784176, 31.350771, 39.916698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.412567, 31.225933, 39.837181>,  <45.189602, 31.151030, 39.789471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.412567, 31.225933, 39.837181>,  <45.784176, 31.350771, 39.916698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412567, 31.225933, 39.837181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080138, -0.354798, 0.931502,
		-0.361250, 0.881315, 0.304603,
		-0.929019, -0.312094, -0.198798,
		45.133862, 31.132305, 39.777542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339622, 31.332071, 40.604286>,  <45.784176, 31.350771, 39.916698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339622, 31.332071, 40.604286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161480, 31.073690, 40.356285>,  <45.054596, 30.918661, 40.207485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161480, 31.073690, 40.356285>,  <45.339622, 31.332071, 40.604286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161480, 31.073690, 40.356285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108172, -0.648579, 0.753421,
		-0.888796, 0.402606, 0.218974,
		-0.445354, -0.645951, -0.620005,
		45.027874, 30.879906, 40.170284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663704, 31.031448, 41.046974>,  <45.339622, 31.332071, 40.604286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663704, 31.031448, 41.046974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718872, 30.790850, 40.732224>,  <44.751972, 30.646490, 40.543373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718872, 30.790850, 40.732224>,  <44.663704, 31.031448, 41.046974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718872, 30.790850, 40.732224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149889, -0.797997, 0.583724,
		-0.979036, 0.037440, -0.200215,
		0.137917, -0.601497, -0.786880,
		44.760246, 30.610401, 40.496159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067791, 30.628628, 40.996834>,  <44.663704, 31.031448, 41.046974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067791, 30.628628, 40.996834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370293, 30.427929, 40.828869>,  <44.551796, 30.307508, 40.728092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.370293, 30.427929, 40.828869>,  <44.067791, 30.628628, 40.996834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370293, 30.427929, 40.828869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218016, -0.798366, 0.561321,
		-0.616882, -0.332956, -0.713159,
		0.756257, -0.501749, -0.419908,
		44.597168, 30.277405, 40.702896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.582916, 36.734116, 42.639381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466579, 36.401360, 42.450333>,  <38.396778, 36.201706, 42.336903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466579, 36.401360, 42.450333>,  <38.582916, 36.734116, 42.639381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466579, 36.401360, 42.450333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248169, 0.411473, -0.876984,
		0.924025, -0.372354, 0.086775,
		-0.290843, -0.831891, -0.472618,
		38.379326, 36.151791, 42.308548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131001, 36.603996, 42.232235>,  <38.582916, 36.734116, 42.639381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131001, 36.603996, 42.232235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826160, 36.406647, 42.064526>,  <38.643257, 36.288235, 41.963902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826160, 36.406647, 42.064526>,  <39.131001, 36.603996, 42.232235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826160, 36.406647, 42.064526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169948, 0.472422, -0.864832,
		0.624764, -0.730338, -0.276181,
		-0.762095, -0.493379, -0.419272,
		38.597530, 36.258633, 41.938744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420773, 36.269123, 41.643669>,  <39.131001, 36.603996, 42.232235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420773, 36.269123, 41.643669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029652, 36.342800, 41.603729>,  <38.794979, 36.387009, 41.579765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029652, 36.342800, 41.603729>,  <39.420773, 36.269123, 41.643669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029652, 36.342800, 41.603729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177800, 0.477372, -0.860525,
		-0.110839, -0.859179, -0.499526,
		-0.977805, 0.184195, -0.099851,
		38.736309, 36.398060, 41.573772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354488, 36.191372, 40.891350>,  <39.420773, 36.269123, 41.643669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354488, 36.191372, 40.891350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029610, 36.396534, 41.002541>,  <38.834682, 36.519630, 41.069256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029610, 36.396534, 41.002541>,  <39.354488, 36.191372, 40.891350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029610, 36.396534, 41.002541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102076, 0.594080, -0.797903,
		-0.574387, -0.619678, -0.534863,
		-0.812195, 0.512902, 0.277978,
		38.785950, 36.550404, 41.085934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096901, 36.343956, 40.276814>,  <39.354488, 36.191372, 40.891350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096901, 36.343956, 40.276814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886772, 36.581444, 40.520626>,  <38.760696, 36.723938, 40.666916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886772, 36.581444, 40.520626>,  <39.096901, 36.343956, 40.276814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886772, 36.581444, 40.520626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053860, 0.691701, -0.720173,
		-0.849197, -0.411153, -0.331388,
		-0.525323, 0.593720, 0.609535,
		38.729176, 36.759560, 40.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457245, 36.576920, 39.951633>,  <39.096901, 36.343956, 40.276814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457245, 36.576920, 39.951633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535484, 36.863106, 40.219917>,  <38.582428, 37.034817, 40.380886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535484, 36.863106, 40.219917>,  <38.457245, 36.576920, 39.951633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535484, 36.863106, 40.219917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031486, 0.688148, -0.724887,
		-0.980179, 0.120666, 0.157125,
		0.195594, 0.715467, 0.670709,
		38.594162, 37.077747, 40.421131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870468, 36.992908, 39.951775>,  <38.457245, 36.576920, 39.951633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870468, 36.992908, 39.951775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161095, 37.220608, 40.105690>,  <38.335472, 37.357227, 40.198040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161095, 37.220608, 40.105690>,  <37.870468, 36.992908, 39.951775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161095, 37.220608, 40.105690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123048, 0.658766, -0.742217,
		-0.675990, 0.491922, 0.548681,
		0.726565, 0.569246, 0.384789,
		38.379063, 37.391380, 40.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622147, 37.582859, 39.826553>,  <37.870468, 36.992908, 39.951775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622147, 37.582859, 39.826553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992012, 37.708454, 39.912727>,  <38.213932, 37.783810, 39.964432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992012, 37.708454, 39.912727>,  <37.622147, 37.582859, 39.826553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992012, 37.708454, 39.912727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077236, 0.708647, -0.701323,
		-0.372876, 0.631847, 0.679509,
		0.924661, 0.313989, 0.215436,
		38.269409, 37.802650, 39.977360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666012, 38.318600, 39.901226>,  <37.622147, 37.582859, 39.826553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666012, 38.318600, 39.901226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036213, 38.213669, 39.791950>,  <38.258331, 38.150711, 39.726387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036213, 38.213669, 39.791950>,  <37.666012, 38.318600, 39.901226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036213, 38.213669, 39.791950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000318, 0.721832, -0.692068,
		0.378746, 0.640423, 0.668139,
		0.925501, -0.262330, -0.273187,
		38.313862, 38.134968, 39.709995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971313, 38.905884, 39.578037>,  <37.666012, 38.318600, 39.901226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971313, 38.905884, 39.578037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224842, 38.624401, 39.449623>,  <38.376961, 38.455513, 39.372574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224842, 38.624401, 39.449623>,  <37.971313, 38.905884, 39.578037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224842, 38.624401, 39.449623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174571, 0.534495, -0.826946,
		0.753521, 0.468092, 0.461622,
		0.633822, -0.703707, -0.321038,
		38.414989, 38.413288, 39.353313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657940, 39.266315, 39.344051>,  <37.971313, 38.905884, 39.578037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657940, 39.266315, 39.344051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658684, 38.905827, 39.170708>,  <38.659130, 38.689533, 39.066700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658684, 38.905827, 39.170708>,  <38.657940, 39.266315, 39.344051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658684, 38.905827, 39.170708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268391, 0.417912, -0.867938,
		0.963308, -0.114692, 0.242657,
		0.001864, -0.901219, -0.433361,
		38.659245, 38.635460, 39.040699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368397, 39.097267, 39.024590>,  <38.657940, 39.266315, 39.344051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368397, 39.097267, 39.024590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103985, 38.861290, 38.839115>,  <38.945339, 38.719704, 38.727829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103985, 38.861290, 38.839115>,  <39.368397, 39.097267, 39.024590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103985, 38.861290, 38.839115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334743, 0.321206, -0.885874,
		0.671556, -0.740805, -0.014847,
		-0.661029, -0.589945, -0.463688,
		38.905678, 38.684307, 38.700008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618984, 38.554592, 38.466900>,  <39.368397, 39.097267, 39.024590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618984, 38.554592, 38.466900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241940, 38.645611, 38.369167>,  <39.015713, 38.700222, 38.310528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241940, 38.645611, 38.369167>,  <39.618984, 38.554592, 38.466900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241940, 38.645611, 38.369167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277664, 0.127875, -0.952129,
		-0.185415, -0.965333, -0.183719,
		-0.942616, 0.227551, -0.244329,
		38.959156, 38.713875, 38.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488453, 38.127766, 37.869995>,  <39.618984, 38.554592, 38.466900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488453, 38.127766, 37.869995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225979, 38.429565, 37.864922>,  <39.068497, 38.610645, 37.861877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225979, 38.429565, 37.864922>,  <39.488453, 38.127766, 37.869995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225979, 38.429565, 37.864922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197433, 0.155434, -0.967916,
		-0.728317, -0.637633, -0.250956,
		-0.656182, 0.754496, -0.012685,
		39.029125, 38.655914, 37.861115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024864, 37.687035, 38.008762>,  <39.488453, 38.127766, 37.869995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024864, 37.687035, 38.008762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346363, 37.481091, 37.889488>,  <40.539261, 37.357525, 37.817924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346363, 37.481091, 37.889488>,  <40.024864, 37.687035, 38.008762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346363, 37.481091, 37.889488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360025, -0.819866, 0.445198,
		-0.473684, -0.250472, -0.844326,
		0.803744, -0.514862, -0.298181,
		40.587486, 37.326633, 37.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856342, 37.031887, 37.702431>,  <40.024864, 37.687035, 38.008762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856342, 37.031887, 37.702431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210072, 36.979202, 37.881592>,  <40.422310, 36.947590, 37.989090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210072, 36.979202, 37.881592>,  <39.856342, 37.031887, 37.702431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210072, 36.979202, 37.881592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344321, -0.831902, 0.435182,
		0.315292, -0.539065, -0.781025,
		0.884327, -0.131713, 0.447903,
		40.475368, 36.939690, 38.015965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864788, 36.415085, 37.728199>,  <39.856342, 37.031887, 37.702431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864788, 36.415085, 37.728199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149738, 36.494793, 37.997364>,  <40.320709, 36.542618, 38.158863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149738, 36.494793, 37.997364>,  <39.864788, 36.415085, 37.728199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149738, 36.494793, 37.997364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165933, -0.883830, 0.437391,
		0.681897, -0.423246, -0.596556,
		0.712378, 0.199268, 0.672911,
		40.363453, 36.554573, 38.199238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354275, 35.932228, 37.657997>,  <39.864788, 36.415085, 37.728199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354275, 35.932228, 37.657997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422634, 36.065269, 38.028980>,  <40.463650, 36.145092, 38.251568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422634, 36.065269, 38.028980>,  <40.354275, 35.932228, 37.657997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422634, 36.065269, 38.028980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111989, -0.928644, 0.353664,
		0.978904, -0.164305, -0.121454,
		0.170896, 0.332601, 0.927454,
		40.473904, 36.165051, 38.307217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793152, 35.486717, 37.986450>,  <40.354275, 35.932228, 37.657997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793152, 35.486717, 37.986450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616909, 35.677784, 38.290474>,  <40.511162, 35.792423, 38.472889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616909, 35.677784, 38.290474>,  <40.793152, 35.486717, 37.986450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616909, 35.677784, 38.290474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021353, -0.852016, 0.523080,
		0.897445, 0.214244, 0.385606,
		-0.440609, 0.477670, 0.760063,
		40.484726, 35.821083, 38.518494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183228, 35.195030, 38.546841>,  <40.793152, 35.486717, 37.986450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183228, 35.195030, 38.546841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843250, 35.340679, 38.699162>,  <40.639263, 35.428066, 38.790554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843250, 35.340679, 38.699162>,  <41.183228, 35.195030, 38.546841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843250, 35.340679, 38.699162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055067, -0.780197, 0.623106,
		0.523984, 0.508637, 0.683176,
		-0.849946, 0.364118, 0.380802,
		40.588268, 35.449913, 38.813400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182728, 35.182247, 39.313221>,  <41.183228, 35.195030, 38.546841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182728, 35.182247, 39.313221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790985, 35.212585, 39.238274>,  <40.555939, 35.230789, 39.193306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790985, 35.212585, 39.238274>,  <41.182728, 35.182247, 39.313221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790985, 35.212585, 39.238274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192002, -0.638944, 0.744907,
		-0.063218, 0.765505, 0.640317,
		-0.979356, 0.075850, -0.187371,
		40.497177, 35.235340, 39.182064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813667, 35.280643, 39.989204>,  <41.182728, 35.182247, 39.313221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813667, 35.280643, 39.989204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551933, 35.125916, 39.729294>,  <40.394894, 35.033077, 39.573349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551933, 35.125916, 39.729294>,  <40.813667, 35.280643, 39.989204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551933, 35.125916, 39.729294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369607, -0.586038, 0.721076,
		-0.659720, 0.711991, 0.240497,
		-0.654340, -0.386819, -0.649778,
		40.355633, 35.009869, 39.534359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176060, 35.381611, 40.367058>,  <40.813667, 35.280643, 39.989204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176060, 35.381611, 40.367058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121372, 35.105202, 40.083141>,  <40.088562, 34.939358, 39.912792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121372, 35.105202, 40.083141>,  <40.176060, 35.381611, 40.367058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121372, 35.105202, 40.083141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495757, -0.572603, 0.652955,
		-0.857633, 0.441151, -0.264296,
		-0.136715, -0.691022, -0.709787,
		40.080357, 34.897896, 39.870205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515144, 35.159927, 40.393559>,  <40.176060, 35.381611, 40.367058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515144, 35.159927, 40.393559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689316, 34.857265, 40.198467>,  <39.793819, 34.675671, 40.081413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689316, 34.857265, 40.198467>,  <39.515144, 35.159927, 40.393559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689316, 34.857265, 40.198467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509381, -0.653802, 0.559529,
		-0.742250, 0.004809, -0.670106,
		0.435426, -0.756650, -0.487734,
		39.819942, 34.630272, 40.052147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019192, 34.698357, 40.253483>,  <39.515144, 35.159927, 40.393559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019192, 34.698357, 40.253483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319275, 34.447189, 40.170620>,  <39.499325, 34.296490, 40.120903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319275, 34.447189, 40.170620>,  <39.019192, 34.698357, 40.253483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319275, 34.447189, 40.170620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460397, -0.720941, 0.517956,
		-0.474583, -0.293197, -0.829944,
		0.750204, -0.627917, -0.207160,
		39.544334, 34.258816, 40.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670406, 34.048874, 40.037701>,  <39.019192, 34.698357, 40.253483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670406, 34.048874, 40.037701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043041, 33.948212, 40.142635>,  <39.266621, 33.887814, 40.205597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043041, 33.948212, 40.142635>,  <38.670406, 34.048874, 40.037701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043041, 33.948212, 40.142635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362145, -0.705286, 0.609445,
		0.031649, -0.662752, -0.748170,
		0.931584, -0.251658, 0.262334,
		39.322517, 33.872715, 40.221336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582611, 33.400135, 39.977108>,  <38.670406, 34.048874, 40.037701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582611, 33.400135, 39.977108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898342, 33.465992, 40.213699>,  <39.087780, 33.505505, 40.355656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898342, 33.465992, 40.213699>,  <38.582611, 33.400135, 39.977108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898342, 33.465992, 40.213699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380026, -0.625634, 0.681295,
		0.482219, -0.762546, -0.431265,
		0.789332, 0.164641, 0.591480,
		39.135143, 33.515385, 40.391144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756821, 32.809711, 40.119617>,  <38.582611, 33.400135, 39.977108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756821, 32.809711, 40.119617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916870, 33.037174, 40.407101>,  <39.012901, 33.173653, 40.579590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916870, 33.037174, 40.407101>,  <38.756821, 32.809711, 40.119617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916870, 33.037174, 40.407101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459465, -0.554069, 0.694189,
		0.792964, -0.607982, 0.039579,
		0.400125, 0.568653, 0.718703,
		39.036907, 33.207771, 40.622711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949650, 32.112228, 39.830368>,  <38.756821, 32.809711, 40.119617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949650, 32.112228, 39.830368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727032, 31.822479, 39.667622>,  <38.593460, 31.648630, 39.569973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727032, 31.822479, 39.667622>,  <38.949650, 32.112228, 39.830368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727032, 31.822479, 39.667622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051888, 0.519070, -0.853155,
		0.829196, -0.453707, -0.326472,
		-0.556544, -0.724373, -0.406869,
		38.560070, 31.605167, 39.545563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190517, 31.940989, 39.090752>,  <38.949650, 32.112228, 39.830368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190517, 31.940989, 39.090752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817482, 31.796980, 39.080482>,  <38.593658, 31.710575, 39.074322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817482, 31.796980, 39.080482>,  <39.190517, 31.940989, 39.090752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817482, 31.796980, 39.080482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123774, 0.385812, -0.914237,
		0.339046, -0.849433, -0.404367,
		-0.932592, -0.360018, -0.025670,
		38.537704, 31.688974, 39.072781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108089, 31.485218, 38.471333>,  <39.190517, 31.940989, 39.090752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108089, 31.485218, 38.471333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779640, 31.672318, 38.602154>,  <38.582569, 31.784578, 38.680645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779640, 31.672318, 38.602154>,  <39.108089, 31.485218, 38.471333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779640, 31.672318, 38.602154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223434, 0.263844, -0.938330,
		-0.525194, -0.843562, -0.112138,
		-0.821126, 0.467750, 0.327049,
		38.533302, 31.812643, 38.700268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679386, 31.422829, 37.854290>,  <39.108089, 31.485218, 38.471333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679386, 31.422829, 37.854290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470390, 31.657703, 38.101582>,  <38.344994, 31.798628, 38.249958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470390, 31.657703, 38.101582>,  <38.679386, 31.422829, 37.854290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470390, 31.657703, 38.101582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411882, 0.461049, -0.785994,
		-0.746562, -0.665316, 0.000957,
		-0.522493, 0.587187, 0.618233,
		38.313641, 31.833860, 38.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926537, 31.354351, 37.633015>,  <38.679386, 31.422829, 37.854290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926537, 31.354351, 37.633015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963013, 31.694765, 37.839867>,  <37.984898, 31.899014, 37.963978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963013, 31.694765, 37.839867>,  <37.926537, 31.354351, 37.633015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963013, 31.694765, 37.839867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393188, 0.507875, -0.766463,
		-0.914925, -0.133434, 0.380931,
		0.091193, 0.851034, 0.517132,
		37.990372, 31.950075, 37.995007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462864, 31.712339, 37.323063>,  <37.926537, 31.354351, 37.633015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462864, 31.712339, 37.323063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651535, 32.010056, 37.512184>,  <37.764740, 32.188686, 37.625656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651535, 32.010056, 37.512184>,  <37.462864, 31.712339, 37.323063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651535, 32.010056, 37.512184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421747, 0.661322, -0.620309,
		-0.774368, 0.093183, 0.625836,
		0.471681, 0.744292, 0.472807,
		37.793041, 32.233345, 37.654026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915756, 32.109905, 37.526085>,  <37.462864, 31.712339, 37.323063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915756, 32.109905, 37.526085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227882, 32.360027, 37.530075>,  <37.415157, 32.510101, 37.532471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227882, 32.360027, 37.530075>,  <36.915756, 32.109905, 37.526085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227882, 32.360027, 37.530075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493311, 0.625255, -0.604731,
		-0.384379, 0.466960, 0.796367,
		0.780318, 0.625303, 0.009979,
		37.461979, 32.547619, 37.533070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693985, 32.765644, 37.884838>,  <36.915756, 32.109905, 37.526085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693985, 32.765644, 37.884838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015026, 32.865551, 37.668156>,  <37.207649, 32.925495, 37.538147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015026, 32.865551, 37.668156>,  <36.693985, 32.765644, 37.884838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015026, 32.865551, 37.668156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514185, 0.750034, -0.416008,
		0.302390, 0.612426, 0.730407,
		0.802604, 0.249768, -0.541703,
		37.255806, 32.940483, 37.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826683, 33.473888, 37.891891>,  <36.693985, 32.765644, 37.884838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826683, 33.473888, 37.891891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992523, 33.349930, 37.549648>,  <37.092026, 33.275555, 37.344303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992523, 33.349930, 37.549648>,  <36.826683, 33.473888, 37.891891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992523, 33.349930, 37.549648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548886, 0.664777, -0.506750,
		0.725833, 0.679731, 0.105514,
		0.414596, -0.309901, -0.855612,
		37.116901, 33.256958, 37.292965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775444, 34.049545, 37.465145>,  <36.826683, 33.473888, 37.891891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775444, 34.049545, 37.465145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915440, 33.789894, 37.194992>,  <36.999435, 33.634102, 37.032902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915440, 33.789894, 37.194992>,  <36.775444, 34.049545, 37.465145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915440, 33.789894, 37.194992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454314, 0.512893, -0.728381,
		0.819211, 0.561761, -0.115402,
		0.349987, -0.649127, -0.675384,
		37.020435, 33.595158, 36.992378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119690, 34.455330, 36.868168>,  <36.775444, 34.049545, 37.465145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119690, 34.455330, 36.868168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021286, 34.095894, 36.722839>,  <36.962242, 33.880230, 36.635643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021286, 34.095894, 36.722839>,  <37.119690, 34.455330, 36.868168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021286, 34.095894, 36.722839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329515, 0.430057, -0.840519,
		0.911536, -0.087057, -0.401900,
		-0.246013, -0.898595, -0.363325,
		36.947483, 33.826317, 36.613842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499779, 34.362759, 36.157524>,  <37.119690, 34.455330, 36.868168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499779, 34.362759, 36.157524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152905, 34.166168, 36.189610>,  <36.944778, 34.048214, 36.208858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152905, 34.166168, 36.189610>,  <37.499779, 34.362759, 36.157524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152905, 34.166168, 36.189610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290736, 0.368914, -0.882823,
		0.404298, -0.788893, -0.462808,
		-0.867189, -0.491478, 0.080208,
		36.892746, 34.018726, 36.213673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.732891, 29.460787, 42.621857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339455, 29.501188, 42.562061>,  <38.103394, 29.525429, 42.526184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.339455, 29.501188, 42.562061>,  <38.732891, 29.460787, 42.621857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339455, 29.501188, 42.562061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177331, 0.388727, -0.904127,
		-0.033211, -0.915800, -0.400260,
		-0.983591, 0.101005, -0.149490,
		38.044376, 29.531490, 42.517216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608051, 29.247904, 41.925316>,  <38.732891, 29.460787, 42.621857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608051, 29.247904, 41.925316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268757, 29.432646, 42.028999>,  <38.065182, 29.543491, 42.091209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.268757, 29.432646, 42.028999>,  <38.608051, 29.247904, 41.925316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268757, 29.432646, 42.028999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027125, 0.450903, -0.892161,
		-0.528928, -0.763791, -0.369943,
		-0.848233, 0.461854, 0.259213,
		38.014286, 29.571201, 42.106762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294865, 29.246008, 41.261486>,  <38.608051, 29.247904, 41.925316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294865, 29.246008, 41.261486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087128, 29.522093, 41.463036>,  <37.962486, 29.687744, 41.583965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.087128, 29.522093, 41.463036>,  <38.294865, 29.246008, 41.261486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087128, 29.522093, 41.463036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087114, 0.543790, -0.834688,
		-0.850113, -0.477385, -0.222287,
		-0.519345, 0.690214, 0.503870,
		37.931324, 29.729156, 41.614197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644753, 29.326141, 40.883251>,  <38.294865, 29.246008, 41.261486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644753, 29.326141, 40.883251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717716, 29.652697, 41.102428>,  <37.761494, 29.848629, 41.233936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.717716, 29.652697, 41.102428>,  <37.644753, 29.326141, 40.883251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717716, 29.652697, 41.102428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046424, 0.549521, -0.834189,
		-0.982127, 0.177598, 0.062335,
		0.182405, 0.816386, 0.547944,
		37.772438, 29.897612, 41.266811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250214, 29.844110, 40.577560>,  <37.644753, 29.326141, 40.883251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250214, 29.844110, 40.577560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525379, 30.043482, 40.788593>,  <37.690479, 30.163105, 40.915211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.525379, 30.043482, 40.788593>,  <37.250214, 29.844110, 40.577560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525379, 30.043482, 40.788593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144346, 0.618429, -0.772470,
		-0.711289, 0.607550, 0.353483,
		0.687918, 0.498426, 0.527579,
		37.731754, 30.193010, 40.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029381, 30.590908, 40.523026>,  <37.250214, 29.844110, 40.577560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029381, 30.590908, 40.523026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415794, 30.598976, 40.626072>,  <37.647644, 30.603817, 40.687901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415794, 30.598976, 40.626072>,  <37.029381, 30.590908, 40.523026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415794, 30.598976, 40.626072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191254, 0.614611, -0.765294,
		-0.173773, 0.788572, 0.589878,
		0.966036, 0.020171, 0.257621,
		37.705605, 30.605028, 40.703358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231628, 31.282217, 40.512489>,  <37.029381, 30.590908, 40.523026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231628, 31.282217, 40.512489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569576, 31.071318, 40.476261>,  <37.772346, 30.944778, 40.454525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.569576, 31.071318, 40.476261>,  <37.231628, 31.282217, 40.512489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569576, 31.071318, 40.476261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303529, 0.611855, -0.730413,
		0.440527, 0.589613, 0.676973,
		0.844870, -0.527248, -0.090574,
		37.823036, 30.913143, 40.449089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678406, 31.787197, 40.303566>,  <37.231628, 31.282217, 40.512489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678406, 31.787197, 40.303566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899414, 31.459032, 40.244720>,  <38.032021, 31.262133, 40.209412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899414, 31.459032, 40.244720>,  <37.678406, 31.787197, 40.303566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899414, 31.459032, 40.244720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469122, 0.451989, -0.758703,
		0.688942, 0.350187, 0.634608,
		0.552524, -0.820411, -0.147114,
		38.065170, 31.212908, 40.200584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347446, 31.961119, 40.344513>,  <37.678406, 31.787197, 40.303566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347446, 31.961119, 40.344513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316544, 31.634804, 40.115246>,  <38.298004, 31.439014, 39.977688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316544, 31.634804, 40.115246>,  <38.347446, 31.961119, 40.344513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316544, 31.634804, 40.115246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326388, 0.522513, -0.787687,
		0.942073, -0.247928, 0.225897,
		-0.077255, -0.815789, -0.573166,
		38.293365, 31.390066, 39.943295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928207, 32.338215, 40.618771>,  <38.347446, 31.961119, 40.344513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928207, 32.338215, 40.618771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931206, 32.677750, 40.830212>,  <38.933006, 32.881470, 40.957077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931206, 32.677750, 40.830212>,  <38.928207, 32.338215, 40.618771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931206, 32.677750, 40.830212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379040, -0.486761, 0.787015,
		0.925350, -0.206263, 0.318093,
		0.007497, 0.848834, 0.528606,
		38.933456, 32.932400, 40.988792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334667, 32.156151, 41.207825>,  <38.928207, 32.338215, 40.618771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334667, 32.156151, 41.207825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122101, 32.484085, 41.293121>,  <38.994560, 32.680843, 41.344299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.122101, 32.484085, 41.293121>,  <39.334667, 32.156151, 41.207825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122101, 32.484085, 41.293121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240084, -0.387167, 0.890203,
		0.812376, 0.421874, 0.402576,
		-0.531418, 0.819832, 0.213240,
		38.962677, 32.730034, 41.357094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667637, 32.477962, 41.841808>,  <39.334667, 32.156151, 41.207825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667637, 32.477962, 41.841808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291954, 32.615101, 41.834381>,  <39.066544, 32.697384, 41.829926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291954, 32.615101, 41.834381>,  <39.667637, 32.477962, 41.841808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291954, 32.615101, 41.834381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146442, -0.351095, 0.924817,
		0.310551, 0.871315, 0.379958,
		-0.939209, 0.342845, -0.018564,
		39.010193, 32.717953, 41.828812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585167, 32.806873, 42.423180>,  <39.667637, 32.477962, 41.841808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585167, 32.806873, 42.423180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205494, 32.734875, 42.319908>,  <38.977692, 32.691677, 42.257946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205494, 32.734875, 42.319908>,  <39.585167, 32.806873, 42.423180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205494, 32.734875, 42.319908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203966, -0.272954, 0.940156,
		-0.239695, 0.945039, 0.222370,
		-0.949181, -0.179994, -0.258182,
		38.920738, 32.680878, 42.242455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155937, 33.126331, 42.956474>,  <39.585167, 32.806873, 42.423180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155937, 33.126331, 42.956474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923149, 32.848625, 42.787098>,  <38.783478, 32.681999, 42.685471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923149, 32.848625, 42.787098>,  <39.155937, 33.126331, 42.956474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923149, 32.848625, 42.787098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201499, -0.381358, 0.902199,
		-0.787851, 0.610376, 0.082044,
		-0.581969, -0.694267, -0.423444,
		38.748558, 32.640347, 42.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492901, 33.287334, 43.134151>,  <39.155937, 33.126331, 42.956474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492901, 33.287334, 43.134151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486389, 32.901546, 43.028667>,  <38.482483, 32.670074, 42.965378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486389, 32.901546, 43.028667>,  <38.492901, 33.287334, 43.134151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486389, 32.901546, 43.028667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166205, -0.257463, 0.951887,
		-0.985957, 0.059321, -0.156109,
		-0.016275, -0.964465, -0.263707,
		38.481506, 32.612206, 42.949554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107708, 32.967606, 43.566868>,  <38.492901, 33.287334, 43.134151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107708, 32.967606, 43.566868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.307343, 32.646702, 43.435848>,  <38.427124, 32.454159, 43.357235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.307343, 32.646702, 43.435848>,  <38.107708, 32.967606, 43.566868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307343, 32.646702, 43.435848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092049, -0.424935, 0.900531,
		-0.861652, -0.419288, -0.285926,
		0.499082, -0.802264, -0.327551,
		38.457066, 32.406021, 43.337582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692123, 32.403595, 43.807762>,  <38.107708, 32.967606, 43.566868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692123, 32.403595, 43.807762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.035896, 32.219093, 43.719559>,  <38.242161, 32.108391, 43.666637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.035896, 32.219093, 43.719559>,  <37.692123, 32.403595, 43.807762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035896, 32.219093, 43.719559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006324, -0.440871, 0.897548,
		-0.511219, -0.769983, -0.381813,
		0.859427, -0.461258, -0.220513,
		38.293724, 32.080715, 43.653404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603706, 31.644871, 43.827751>,  <37.692123, 32.403595, 43.807762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603706, 31.644871, 43.827751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990292, 31.723955, 43.893303>,  <38.222244, 31.771406, 43.932632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.990292, 31.723955, 43.893303>,  <37.603706, 31.644871, 43.827751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990292, 31.723955, 43.893303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010326, -0.607713, 0.794089,
		0.256589, -0.769152, -0.585292,
		0.966465, 0.197711, 0.163875,
		38.280231, 31.783268, 43.942467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867275, 31.040009, 43.772453>,  <37.603706, 31.644871, 43.827751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867275, 31.040009, 43.772453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145226, 31.246237, 43.972984>,  <38.311996, 31.369974, 44.093304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145226, 31.246237, 43.972984>,  <37.867275, 31.040009, 43.772453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145226, 31.246237, 43.972984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098421, -0.758759, 0.643893,
		0.712359, -0.398087, -0.577989,
		0.694880, 0.515569, 0.501329,
		38.353691, 31.400908, 44.123383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432411, 30.619106, 43.868717>,  <37.867275, 31.040009, 43.772453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432411, 30.619106, 43.868717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468933, 30.908171, 44.142776>,  <38.490845, 31.081610, 44.307213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468933, 30.908171, 44.142776>,  <38.432411, 30.619106, 43.868717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468933, 30.908171, 44.142776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132239, -0.690727, 0.710922,
		0.987004, 0.025694, -0.158630,
		0.091303, 0.722659, 0.685148,
		38.496323, 31.124968, 44.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890923, 30.288425, 44.291126>,  <38.432411, 30.619106, 43.868717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890923, 30.288425, 44.291126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.756153, 30.578318, 44.531540>,  <38.675289, 30.752253, 44.675789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.756153, 30.578318, 44.531540>,  <38.890923, 30.288425, 44.291126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756153, 30.578318, 44.531540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285520, -0.529652, 0.798716,
		0.897194, 0.440717, -0.028471,
		-0.336928, 0.724733, 0.601034,
		38.655075, 30.795738, 44.711849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356049, 30.348797, 44.899715>,  <38.890923, 30.288425, 44.291126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356049, 30.348797, 44.899715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029488, 30.533247, 45.038765>,  <38.833549, 30.643917, 45.122196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029488, 30.533247, 45.038765>,  <39.356049, 30.348797, 44.899715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029488, 30.533247, 45.038765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156955, -0.402127, 0.902030,
		0.555738, 0.790986, 0.255924,
		-0.816407, 0.461124, 0.347626,
		38.784565, 30.671585, 45.143051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528454, 30.723505, 45.608753>,  <39.356049, 30.348797, 44.899715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528454, 30.723505, 45.608753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.134117, 30.658760, 45.591221>,  <38.897514, 30.619913, 45.580700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.134117, 30.658760, 45.591221>,  <39.528454, 30.723505, 45.608753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134117, 30.658760, 45.591221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038873, -0.474845, 0.879211,
		-0.163126, 0.865056, 0.474413,
		-0.985839, -0.161864, -0.043832,
		38.838364, 30.610201, 45.578072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.783245, 30.074913, 44.579056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163757, 30.008841, 44.683193>,  <34.392067, 29.969198, 44.745674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163757, 30.008841, 44.683193>,  <33.783245, 30.074913, 44.579056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163757, 30.008841, 44.683193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307047, 0.430901, -0.848555,
		0.027983, 0.887153, 0.460627,
		0.951283, -0.165179, 0.260340,
		34.449142, 29.959288, 44.761295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087940, 30.645931, 44.471096>,  <33.783245, 30.074913, 44.579056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087940, 30.645931, 44.471096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418880, 30.421833, 44.487160>,  <34.617443, 30.287373, 44.496799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418880, 30.421833, 44.487160>,  <34.087940, 30.645931, 44.471096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418880, 30.421833, 44.487160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259823, 0.318341, -0.911675,
		0.497979, 0.764710, 0.408945,
		0.827351, -0.560248, 0.040162,
		34.667088, 30.253759, 44.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612000, 31.134876, 44.393391>,  <34.087940, 30.645931, 44.471096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612000, 31.134876, 44.393391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765926, 30.781359, 44.286942>,  <34.858284, 30.569248, 44.223072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765926, 30.781359, 44.286942>,  <34.612000, 31.134876, 44.393391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765926, 30.781359, 44.286942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303074, 0.393329, -0.868009,
		0.871814, 0.253374, 0.419216,
		0.384820, -0.883795, -0.266118,
		34.881374, 30.516220, 44.207108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362057, 31.264467, 44.184189>,  <34.612000, 31.134876, 44.393391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362057, 31.264467, 44.184189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245350, 30.910002, 44.040195>,  <35.175327, 30.697323, 43.953800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245350, 30.910002, 44.040195>,  <35.362057, 31.264467, 44.184189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245350, 30.910002, 44.040195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452067, 0.203910, -0.868364,
		0.842917, -0.416092, 0.341112,
		-0.291763, -0.886165, -0.359980,
		35.157822, 30.644152, 43.932201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968334, 31.031143, 43.910660>,  <35.362057, 31.264467, 44.184189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968334, 31.031143, 43.910660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668419, 30.853695, 43.714287>,  <35.488468, 30.747225, 43.596462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.668419, 30.853695, 43.714287>,  <35.968334, 31.031143, 43.910660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668419, 30.853695, 43.714287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428076, 0.240526, -0.871148,
		0.504541, -0.863335, 0.009560,
		-0.749792, -0.443622, -0.490928,
		35.443481, 30.720608, 43.567009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252243, 30.683157, 43.378498>,  <35.968334, 31.031143, 43.910660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252243, 30.683157, 43.378498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871620, 30.706537, 43.257751>,  <35.643246, 30.720566, 43.185303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871620, 30.706537, 43.257751>,  <36.252243, 30.683157, 43.378498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871620, 30.706537, 43.257751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297333, 0.425002, -0.854966,
		0.078319, -0.903303, -0.421794,
		-0.951556, 0.058453, -0.301868,
		35.586155, 30.724073, 43.167191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274307, 30.489059, 42.722065>,  <36.252243, 30.683157, 43.378498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274307, 30.489059, 42.722065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925430, 30.680187, 42.763950>,  <35.716103, 30.794863, 42.789082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925430, 30.680187, 42.763950>,  <36.274307, 30.489059, 42.722065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925430, 30.680187, 42.763950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143195, 0.454099, -0.879369,
		-0.467729, -0.751986, -0.464484,
		-0.872195, 0.477818, 0.104715,
		35.663773, 30.823532, 42.795364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938652, 30.470762, 42.112770>,  <36.274307, 30.489059, 42.722065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938652, 30.470762, 42.112770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730385, 30.768833, 42.279438>,  <35.605423, 30.947676, 42.379440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730385, 30.768833, 42.279438>,  <35.938652, 30.470762, 42.112770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730385, 30.768833, 42.279438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100123, 0.431380, -0.896597,
		-0.847869, -0.508547, -0.149996,
		-0.520667, 0.745179, 0.416671,
		35.574184, 30.992386, 42.404438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375278, 30.613770, 41.589516>,  <35.938652, 30.470762, 42.112770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375278, 30.613770, 41.589516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405010, 30.933098, 41.828568>,  <35.422848, 31.124695, 41.972000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.405010, 30.933098, 41.828568>,  <35.375278, 30.613770, 41.589516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405010, 30.933098, 41.828568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024537, 0.597643, -0.801387,
		-0.996932, 0.074228, 0.024832,
		0.074326, 0.798319, 0.597631,
		35.427307, 31.172594, 42.007858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919327, 31.009546, 41.286133>,  <35.375278, 30.613770, 41.589516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919327, 31.009546, 41.286133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106110, 31.277662, 41.516842>,  <35.218178, 31.438532, 41.655266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106110, 31.277662, 41.516842>,  <34.919327, 31.009546, 41.286133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106110, 31.277662, 41.516842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019347, 0.659836, -0.751161,
		-0.884068, 0.339602, 0.321083,
		0.466958, 0.670289, 0.576769,
		35.246197, 31.478748, 41.689873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582405, 31.633287, 41.188831>,  <34.919327, 31.009546, 41.286133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582405, 31.633287, 41.188831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949692, 31.716864, 41.323425>,  <35.170063, 31.767010, 41.404182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949692, 31.716864, 41.323425>,  <34.582405, 31.633287, 41.188831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949692, 31.716864, 41.323425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003427, 0.845317, -0.534255,
		-0.396063, 0.491715, 0.775468,
		0.918217, 0.208941, 0.336483,
		35.225159, 31.779547, 41.424370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486004, 32.302010, 41.411530>,  <34.582405, 31.633287, 41.188831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486004, 32.302010, 41.411530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873631, 32.232174, 41.341751>,  <35.106205, 32.190273, 41.299885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873631, 32.232174, 41.341751>,  <34.486004, 32.302010, 41.411530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873631, 32.232174, 41.341751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021611, 0.764126, -0.644705,
		0.245856, 0.620991, 0.744261,
		0.969065, -0.174589, -0.174445,
		35.164349, 32.179798, 41.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809338, 32.900822, 41.376797>,  <34.486004, 32.302010, 41.411530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809338, 32.900822, 41.376797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050747, 32.655933, 41.172462>,  <35.195591, 32.508999, 41.049862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050747, 32.655933, 41.172462>,  <34.809338, 32.900822, 41.376797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050747, 32.655933, 41.172462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182256, 0.729625, -0.659113,
		0.776239, 0.304685, 0.551924,
		0.603520, -0.612220, -0.510833,
		35.231804, 32.472267, 41.019211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392479, 33.328014, 41.276295>,  <34.809338, 32.900822, 41.376797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392479, 33.328014, 41.276295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371758, 33.042656, 40.996758>,  <35.359325, 32.871441, 40.829037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371758, 33.042656, 40.996758>,  <35.392479, 33.328014, 41.276295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371758, 33.042656, 40.996758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136360, 0.698282, -0.702715,
		0.989304, 0.058894, -0.133449,
		-0.051800, -0.713396, -0.698844,
		35.356216, 32.828636, 40.787106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376659, 34.003155, 41.468868>,  <35.392479, 33.328014, 41.276295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376659, 34.003155, 41.468868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303890, 34.383385, 41.569519>,  <35.260227, 34.611523, 41.629910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.303890, 34.383385, 41.569519>,  <35.376659, 34.003155, 41.468868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303890, 34.383385, 41.569519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358893, -0.302436, 0.883022,
		0.915477, 0.070338, 0.396175,
		-0.181928, 0.950571, 0.251630,
		35.249313, 34.668556, 41.645008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552067, 34.018513, 42.104416>,  <35.376659, 34.003155, 41.468868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552067, 34.018513, 42.104416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307472, 34.334244, 42.082344>,  <35.160713, 34.523682, 42.069099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307472, 34.334244, 42.082344>,  <35.552067, 34.018513, 42.104416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307472, 34.334244, 42.082344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410534, -0.256874, 0.874916,
		0.676420, 0.557655, 0.481121,
		-0.611488, 0.789327, -0.055182,
		35.124027, 34.571041, 42.065788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701736, 34.396854, 42.681099>,  <35.552067, 34.018513, 42.104416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701736, 34.396854, 42.681099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.340965, 34.522690, 42.562733>,  <35.124504, 34.598190, 42.491711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.340965, 34.522690, 42.562733>,  <35.701736, 34.396854, 42.681099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340965, 34.522690, 42.562733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339949, -0.094475, 0.935686,
		0.266398, 0.944516, 0.192153,
		-0.901924, 0.314587, -0.295920,
		35.070389, 34.617065, 42.473957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532894, 34.777779, 43.139496>,  <35.701736, 34.396854, 42.681099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532894, 34.777779, 43.139496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168339, 34.718983, 42.985741>,  <34.949604, 34.683704, 42.893486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168339, 34.718983, 42.985741>,  <35.532894, 34.777779, 43.139496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168339, 34.718983, 42.985741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361615, -0.159863, 0.918520,
		-0.196461, 0.976134, 0.092545,
		-0.911393, -0.146987, -0.384392,
		34.894920, 34.674885, 42.870422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198994, 35.214622, 43.472271>,  <35.532894, 34.777779, 43.139496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198994, 35.214622, 43.472271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926868, 34.946785, 43.353062>,  <34.763596, 34.786083, 43.281536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926868, 34.946785, 43.353062>,  <35.198994, 35.214622, 43.472271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926868, 34.946785, 43.353062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161344, -0.259827, 0.952081,
		-0.714947, 0.695793, 0.068727,
		-0.680308, -0.669598, -0.298025,
		34.722775, 34.745907, 43.263653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750885, 35.193420, 43.985989>,  <35.198994, 35.214622, 43.472271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750885, 35.193420, 43.985989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619431, 34.876564, 43.780266>,  <34.540558, 34.686451, 43.656834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.619431, 34.876564, 43.780266>,  <34.750885, 35.193420, 43.985989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619431, 34.876564, 43.780266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172006, -0.485242, 0.857294,
		-0.928662, 0.370199, 0.023213,
		-0.328634, -0.792144, -0.514303,
		34.520840, 34.638920, 43.625977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196133, 35.077293, 44.356983>,  <34.750885, 35.193420, 43.985989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196133, 35.077293, 44.356983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.250248, 34.732197, 44.162098>,  <34.282719, 34.525139, 44.045166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.250248, 34.732197, 44.162098>,  <34.196133, 35.077293, 44.356983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250248, 34.732197, 44.162098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240076, -0.505624, 0.828678,
		-0.961280, 0.004856, -0.275529,
		0.135290, -0.862740, -0.487213,
		34.290836, 34.473373, 44.015934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658321, 34.773624, 44.488052>,  <34.196133, 35.077293, 44.356983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658321, 34.773624, 44.488052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922619, 34.500027, 44.364399>,  <34.081200, 34.335869, 44.290207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922619, 34.500027, 44.364399>,  <33.658321, 34.773624, 44.488052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922619, 34.500027, 44.364399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227274, -0.574825, 0.786081,
		-0.715375, -0.449141, -0.535267,
		0.660746, -0.683995, -0.309138,
		34.120842, 34.294827, 44.271656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341778, 34.100300, 44.411160>,  <33.658321, 34.773624, 44.488052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341778, 34.100300, 44.411160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730770, 34.062172, 44.496193>,  <33.964165, 34.039295, 44.547211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730770, 34.062172, 44.496193>,  <33.341778, 34.100300, 44.411160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730770, 34.062172, 44.496193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229772, -0.543158, 0.807580,
		0.038486, -0.834202, -0.550114,
		0.972483, -0.095320, 0.212580,
		34.022514, 34.033577, 44.559967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353802, 33.416595, 44.662140>,  <33.341778, 34.100300, 44.411160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353802, 33.416595, 44.662140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721516, 33.530708, 44.770599>,  <33.942146, 33.599178, 44.835674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.721516, 33.530708, 44.770599>,  <33.353802, 33.416595, 44.662140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721516, 33.530708, 44.770599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036957, -0.623304, 0.781106,
		0.391845, -0.728082, -0.562453,
		0.919289, 0.285286, 0.271147,
		33.997303, 33.616295, 44.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769966, 32.855541, 44.747971>,  <33.353802, 33.416595, 44.662140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769966, 32.855541, 44.747971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975323, 33.129910, 44.954250>,  <34.098537, 33.294529, 45.078018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975323, 33.129910, 44.954250>,  <33.769966, 32.855541, 44.747971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975323, 33.129910, 44.954250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096748, -0.643366, 0.759421,
		0.852684, -0.339987, -0.396660,
		0.513391, 0.685922, 0.515695,
		34.129341, 33.335686, 45.108959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384262, 32.537022, 45.024807>,  <33.769966, 32.855541, 44.747971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384262, 32.537022, 45.024807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333279, 32.858490, 45.257317>,  <34.302689, 33.051369, 45.396820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333279, 32.858490, 45.257317>,  <34.384262, 32.537022, 45.024807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333279, 32.858490, 45.257317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048819, -0.590423, 0.805616,
		0.990642, 0.074307, 0.114490,
		-0.127460, 0.803666, 0.581270,
		34.295040, 33.099590, 45.431698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971703, 32.538239, 45.498734>,  <34.384262, 32.537022, 45.024807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971703, 32.538239, 45.498734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669949, 32.760651, 45.638294>,  <34.488895, 32.894100, 45.722031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669949, 32.760651, 45.638294>,  <34.971703, 32.538239, 45.498734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669949, 32.760651, 45.638294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090425, -0.614467, 0.783743,
		0.650174, 0.559695, 0.513824,
		-0.754386, 0.556032, 0.348900,
		34.443634, 32.927460, 45.742966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268909, 32.713638, 46.111713>,  <34.971703, 32.538239, 45.498734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268909, 32.713638, 46.111713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872768, 32.762157, 46.138500>,  <34.635082, 32.791267, 46.154572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872768, 32.762157, 46.138500>,  <35.268909, 32.713638, 46.111713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872768, 32.762157, 46.138500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030759, -0.663732, 0.747338,
		0.135097, 0.738070, 0.661061,
		-0.990355, 0.121297, 0.066966,
		34.575661, 32.798546, 46.158588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684467, 33.184372, 46.504345>,  <35.268909, 32.713638, 46.111713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684467, 33.184372, 46.504345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063038, 33.133953, 46.623268>,  <36.290180, 33.103703, 46.694622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063038, 33.133953, 46.623268>,  <35.684467, 33.184372, 46.504345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063038, 33.133953, 46.623268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295724, 0.708168, -0.641129,
		-0.129732, 0.694701, 0.707502,
		0.946423, -0.126050, 0.297312,
		36.346966, 33.096138, 46.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940605, 33.858181, 46.550976>,  <35.684467, 33.184372, 46.504345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940605, 33.858181, 46.550976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243629, 33.601624, 46.502453>,  <36.425442, 33.447689, 46.473339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.243629, 33.601624, 46.502453>,  <35.940605, 33.858181, 46.550976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243629, 33.601624, 46.502453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413265, 0.615108, -0.671456,
		0.505289, 0.458534, 0.731047,
		0.757558, -0.641396, -0.121312,
		36.470898, 33.409206, 46.466061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640770, 34.211391, 46.621658>,  <35.940605, 33.858181, 46.550976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640770, 34.211391, 46.621658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690800, 33.881725, 46.400711>,  <36.720818, 33.683926, 46.268143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.690800, 33.881725, 46.400711>,  <36.640770, 34.211391, 46.621658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690800, 33.881725, 46.400711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640945, 0.492092, -0.589098,
		0.757329, -0.280359, 0.589790,
		0.125072, -0.824163, -0.552370,
		36.728321, 33.634476, 46.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238750, 34.236214, 46.438107>,  <36.640770, 34.211391, 46.621658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238750, 34.236214, 46.438107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106213, 33.978394, 46.162495>,  <37.026691, 33.823700, 45.997128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.106213, 33.978394, 46.162495>,  <37.238750, 34.236214, 46.438107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106213, 33.978394, 46.162495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476229, 0.516181, -0.711873,
		0.814504, -0.564011, 0.135921,
		-0.331344, -0.644553, -0.689030,
		37.006809, 33.785027, 45.955784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612904, 34.375046, 45.851181>,  <37.238750, 34.236214, 46.438107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612904, 34.375046, 45.851181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371773, 34.101131, 45.687389>,  <37.227097, 33.936783, 45.589115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371773, 34.101131, 45.687389>,  <37.612904, 34.375046, 45.851181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371773, 34.101131, 45.687389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423557, 0.160274, -0.891578,
		0.676168, -0.710903, 0.193428,
		-0.602824, -0.684784, -0.409480,
		37.190926, 33.895695, 45.564545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021446, 34.050529, 45.412231>,  <37.612904, 34.375046, 45.851181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021446, 34.050529, 45.412231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647320, 34.015160, 45.275200>,  <37.422844, 33.993938, 45.192982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647320, 34.015160, 45.275200>,  <38.021446, 34.050529, 45.412231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647320, 34.015160, 45.275200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286034, 0.380929, -0.879248,
		0.208242, -0.920367, -0.330999,
		-0.935318, -0.088419, -0.342582,
		37.366726, 33.988632, 45.172424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133118, 33.801834, 44.793636>,  <38.021446, 34.050529, 45.412231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133118, 33.801834, 44.793636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760487, 33.944798, 44.767036>,  <37.536907, 34.030575, 44.751076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760487, 33.944798, 44.767036>,  <38.133118, 33.801834, 44.793636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760487, 33.944798, 44.767036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250084, 0.497261, -0.830776,
		-0.263857, -0.790564, -0.552619,
		-0.931578, 0.357407, -0.066501,
		37.481014, 34.052021, 44.747086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908947, 33.649258, 44.141426>,  <38.133118, 33.801834, 44.793636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908947, 33.649258, 44.141426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687870, 33.957092, 44.269341>,  <37.555225, 34.141792, 44.346088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687870, 33.957092, 44.269341>,  <37.908947, 33.649258, 44.141426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687870, 33.957092, 44.269341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097493, 0.440793, -0.892299,
		-0.827665, -0.461987, -0.318651,
		-0.552690, 0.769591, 0.319788,
		37.522064, 34.187969, 44.365276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410866, 33.788986, 43.565784>,  <37.908947, 33.649258, 44.141426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410866, 33.788986, 43.565784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460934, 34.117752, 43.788059>,  <37.490974, 34.315010, 43.921425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460934, 34.117752, 43.788059>,  <37.410866, 33.788986, 43.565784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460934, 34.117752, 43.788059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204770, 0.526635, -0.825061,
		-0.970774, 0.217063, -0.102383,
		0.125171, 0.821912, 0.555691,
		37.498486, 34.364326, 43.954765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112289, 34.375278, 43.116554>,  <37.410866, 33.788986, 43.565784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112289, 34.375278, 43.116554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342968, 34.540337, 43.398586>,  <37.481377, 34.639374, 43.567806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342968, 34.540337, 43.398586>,  <37.112289, 34.375278, 43.116554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342968, 34.540337, 43.398586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319459, 0.680431, -0.659514,
		-0.751907, 0.605586, 0.260580,
		0.576699, 0.412649, 0.705081,
		37.515976, 34.664131, 43.610111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079159, 34.987480, 42.898888>,  <37.112289, 34.375278, 43.116554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079159, 34.987480, 42.898888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371536, 35.054214, 43.163582>,  <37.546963, 35.094254, 43.322399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371536, 35.054214, 43.163582>,  <37.079159, 34.987480, 42.898888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371536, 35.054214, 43.163582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344314, 0.747039, -0.568665,
		-0.589213, 0.643505, 0.488599,
		0.730942, 0.166833, 0.661733,
		37.590820, 35.104263, 43.362103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075859, 35.690189, 43.143833>,  <37.079159, 34.987480, 42.898888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075859, 35.690189, 43.143833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445808, 35.552094, 43.207600>,  <37.667778, 35.469238, 43.245861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.445808, 35.552094, 43.207600>,  <37.075859, 35.690189, 43.143833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445808, 35.552094, 43.207600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376851, 0.776067, -0.505671,
		0.050855, 0.527761, 0.847869,
		0.924877, -0.345236, 0.159421,
		37.723270, 35.448524, 43.255424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533661, 36.215355, 43.399612>,  <37.075859, 35.690189, 43.143833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533661, 36.215355, 43.399612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743248, 35.943493, 43.194275>,  <37.868999, 35.780376, 43.071072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743248, 35.943493, 43.194275>,  <37.533661, 36.215355, 43.399612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743248, 35.943493, 43.194275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361669, 0.723206, -0.588361,
		0.771137, 0.122623, 0.624749,
		0.523969, -0.679659, -0.513342,
		37.900440, 35.739594, 43.040272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071857, 36.511585, 43.078377>,  <37.533661, 36.215355, 43.399612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071857, 36.511585, 43.078377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135147, 36.188751, 42.850842>,  <38.173122, 35.995049, 42.714321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135147, 36.188751, 42.850842>,  <38.071857, 36.511585, 43.078377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135147, 36.188751, 42.850842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407516, 0.578115, -0.706904,
		0.899387, -0.119961, 0.420372,
		0.158223, -0.807088, -0.568835,
		38.182613, 35.946625, 42.680191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.358974, 39.460678, 41.143806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.238981, 39.808510, 40.986919>,  <25.166986, 40.017208, 40.892788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.238981, 39.808510, 40.986919>,  <25.358974, 39.460678, 41.143806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238981, 39.808510, 40.986919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145616, -0.448078, -0.882056,
		-0.942766, -0.207487, 0.261040,
		-0.299981, 0.869584, -0.392219,
		25.148987, 40.069386, 40.869255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.795568, 39.310623, 40.745026>,  <25.358974, 39.460678, 41.143806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.795568, 39.310623, 40.745026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.918676, 39.655773, 40.584660>,  <24.992540, 39.862862, 40.488441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.918676, 39.655773, 40.584660>,  <24.795568, 39.310623, 40.745026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918676, 39.655773, 40.584660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150435, -0.371935, -0.915988,
		-0.939493, 0.342224, 0.015336,
		0.307769, 0.862871, -0.400913,
		25.011007, 39.914635, 40.464386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259382, 39.482380, 40.255642>,  <24.795568, 39.310623, 40.745026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259382, 39.482380, 40.255642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.593271, 39.674858, 40.148544>,  <24.793604, 39.790344, 40.084286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.593271, 39.674858, 40.148544>,  <24.259382, 39.482380, 40.255642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.593271, 39.674858, 40.148544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058249, -0.406338, -0.911864,
		-0.547581, 0.776750, -0.311150,
		0.834723, 0.481195, -0.267748,
		24.843689, 39.819218, 40.068218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.278809, 39.571220, 39.576790>,  <24.259382, 39.482380, 40.255642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.278809, 39.571220, 39.576790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.666214, 39.662861, 39.615761>,  <24.898657, 39.717846, 39.639145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.666214, 39.662861, 39.615761>,  <24.278809, 39.571220, 39.576790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666214, 39.662861, 39.615761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191971, -0.438079, -0.878199,
		-0.158513, 0.869252, -0.468267,
		0.968515, 0.229100, 0.097430,
		24.956768, 39.731590, 39.644989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441696, 39.695370, 38.916374>,  <24.278809, 39.571220, 39.576790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441696, 39.695370, 38.916374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.795555, 39.651119, 39.097553>,  <25.007870, 39.624569, 39.206261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.795555, 39.651119, 39.097553>,  <24.441696, 39.695370, 38.916374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.795555, 39.651119, 39.097553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411627, -0.270991, -0.870131,
		0.219003, 0.956204, -0.194195,
		0.884647, -0.110626, 0.452947,
		25.060949, 39.617931, 39.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886892, 39.988438, 38.390690>,  <24.441696, 39.695370, 38.916374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886892, 39.988438, 38.390690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096888, 39.761887, 38.644810>,  <25.222885, 39.625957, 38.797283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096888, 39.761887, 38.644810>,  <24.886892, 39.988438, 38.390690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096888, 39.761887, 38.644810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283216, -0.587648, -0.757930,
		0.802606, 0.577832, -0.148103,
		0.524989, -0.566374, 0.635301,
		25.254385, 39.591976, 38.835400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506857, 39.756233, 37.943539>,  <24.886892, 39.988438, 38.390690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506857, 39.756233, 37.943539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507330, 39.494282, 38.245831>,  <25.507614, 39.337112, 38.427208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507330, 39.494282, 38.245831>,  <25.506857, 39.756233, 37.943539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507330, 39.494282, 38.245831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318918, -0.716025, -0.620966,
		0.947782, 0.241750, 0.208007,
		0.001181, -0.654877, 0.755734,
		25.507685, 39.297817, 38.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025272, 39.239479, 37.829845>,  <25.506857, 39.756233, 37.943539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025272, 39.239479, 37.829845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788715, 39.052177, 38.092445>,  <25.646780, 38.939796, 38.250004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788715, 39.052177, 38.092445>,  <26.025272, 39.239479, 37.829845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788715, 39.052177, 38.092445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213982, -0.876069, -0.432105,
		0.777473, -0.115065, 0.618300,
		-0.591394, -0.468255, 0.656499,
		25.611298, 38.911701, 38.289394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389954, 38.675858, 37.963200>,  <26.025272, 39.239479, 37.829845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389954, 38.675858, 37.963200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028189, 38.559872, 38.088394>,  <25.811131, 38.490280, 38.163509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028189, 38.559872, 38.088394>,  <26.389954, 38.675858, 37.963200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028189, 38.559872, 38.088394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206266, -0.939295, -0.274190,
		0.373492, -0.183422, 0.909319,
		-0.904410, -0.289969, 0.312986,
		25.756866, 38.472881, 38.182289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413176, 38.168186, 38.580158>,  <26.389954, 38.675858, 37.963200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413176, 38.168186, 38.580158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061832, 38.120102, 38.395100>,  <25.851027, 38.091251, 38.284065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061832, 38.120102, 38.395100>,  <26.413176, 38.168186, 38.580158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061832, 38.120102, 38.395100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271632, -0.921929, -0.276158,
		-0.393326, -0.368234, 0.842436,
		-0.878357, -0.120212, -0.462643,
		25.798325, 38.084038, 38.256306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173182, 37.447330, 38.808472>,  <26.413176, 38.168186, 38.580158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173182, 37.447330, 38.808472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982264, 37.574635, 38.480839>,  <25.867712, 37.651016, 38.284260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.982264, 37.574635, 38.480839>,  <26.173182, 37.447330, 38.808472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982264, 37.574635, 38.480839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142988, -0.891557, -0.429745,
		-0.867030, -0.322235, 0.380032,
		-0.477299, 0.318261, -0.819082,
		25.839075, 37.670113, 38.235115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812565, 36.836956, 38.694233>,  <26.173182, 37.447330, 38.808472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812565, 36.836956, 38.694233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.791725, 37.037495, 38.348763>,  <25.779222, 37.157818, 38.141479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.791725, 37.037495, 38.348763>,  <25.812565, 36.836956, 38.694233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791725, 37.037495, 38.348763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395207, -0.783896, -0.478872,
		-0.917114, -0.366280, -0.157295,
		-0.052098, 0.501344, -0.863678,
		25.776096, 37.187897, 38.089661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507408, 36.330338, 38.298752>,  <25.812565, 36.836956, 38.694233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507408, 36.330338, 38.298752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694370, 36.609207, 38.081318>,  <25.806547, 36.776527, 37.950855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694370, 36.609207, 38.081318>,  <25.507408, 36.330338, 38.298752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694370, 36.609207, 38.081318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521337, -0.713960, -0.467406,
		-0.713960, -0.064924, -0.697170,
		0.467406, 0.697170, -0.543587,
		25.834593, 36.818359, 37.918243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461836, 36.066029, 37.570156>,  <25.507408, 36.330338, 38.298752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461836, 36.066029, 37.570156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769917, 36.321136, 37.572403>,  <25.954765, 36.474201, 37.573750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.769917, 36.321136, 37.572403>,  <25.461836, 36.066029, 37.570156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769917, 36.321136, 37.572403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588436, -0.707169, -0.391989,
		-0.246030, 0.305215, -0.919953,
		0.770203, 0.637774, 0.005615,
		26.000977, 36.512470, 37.574089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684349, 35.881111, 36.961071>,  <25.461836, 36.066029, 37.570156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684349, 35.881111, 36.961071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969555, 36.083553, 37.155174>,  <26.140678, 36.205017, 37.271637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.969555, 36.083553, 37.155174>,  <25.684349, 35.881111, 36.961071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969555, 36.083553, 37.155174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682098, -0.660924, -0.312925,
		0.162344, 0.554111, -0.816459,
		0.713013, 0.506104, 0.485255,
		26.183458, 36.235386, 37.300751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223286, 35.913189, 36.382423>,  <25.684349, 35.881111, 36.961071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223286, 35.913189, 36.382423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402185, 35.977268, 36.734402>,  <26.509525, 36.015717, 36.945587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402185, 35.977268, 36.734402>,  <26.223286, 35.913189, 36.382423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402185, 35.977268, 36.734402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498869, -0.861259, -0.096763,
		0.742361, 0.482256, -0.465113,
		0.447247, 0.160197, 0.879947,
		26.536360, 36.025326, 36.998386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875254, 35.787457, 36.285820>,  <26.223286, 35.913189, 36.382423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875254, 35.787457, 36.285820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861044, 35.777264, 36.685436>,  <26.852518, 35.771149, 36.925205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861044, 35.777264, 36.685436>,  <26.875254, 35.787457, 36.285820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861044, 35.777264, 36.685436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458028, -0.888915, -0.006386,
		0.888228, 0.457363, 0.043247,
		-0.035522, -0.025480, 0.999044,
		26.850388, 35.769619, 36.985149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608088, 35.738983, 36.491730>,  <26.875254, 35.787457, 36.285820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608088, 35.738983, 36.491730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376362, 35.618305, 36.794617>,  <27.237326, 35.545898, 36.976349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376362, 35.618305, 36.794617>,  <27.608088, 35.738983, 36.491730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376362, 35.618305, 36.794617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461888, -0.886939, -0.000004,
		0.671606, 0.349747, 0.653163,
		-0.579314, -0.301690, 0.757218,
		27.202568, 35.527798, 37.021782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172426, 35.547848, 37.133484>,  <27.608088, 35.738983, 36.491730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172426, 35.547848, 37.133484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825291, 35.358608, 37.194199>,  <27.617010, 35.245064, 37.230625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825291, 35.358608, 37.194199>,  <28.172426, 35.547848, 37.133484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825291, 35.358608, 37.194199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493999, -0.854282, 0.161761,
		0.053137, 0.215362, 0.975087,
		-0.867837, -0.473097, 0.151783,
		27.564939, 35.216679, 37.239735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300924, 35.137726, 37.758968>,  <28.172426, 35.547848, 37.133484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300924, 35.137726, 37.758968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993725, 34.975071, 37.561050>,  <27.809404, 34.877480, 37.442299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993725, 34.975071, 37.561050>,  <28.300924, 35.137726, 37.758968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993725, 34.975071, 37.561050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399480, -0.908017, 0.126181,
		-0.500595, -0.100755, 0.859798,
		-0.767998, -0.406638, -0.494798,
		27.763325, 34.853081, 37.412613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776201, 34.807369, 37.344837>,  <28.300924, 35.137726, 37.758968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776201, 34.807369, 37.344837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959494, 34.921440, 37.008099>,  <29.069469, 34.989883, 36.806057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.959494, 34.921440, 37.008099>,  <28.776201, 34.807369, 37.344837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959494, 34.921440, 37.008099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301313, 0.841211, 0.448971,
		0.836196, -0.459395, 0.299555,
		0.458243, 0.285167, -0.841839,
		29.096964, 35.006992, 36.755547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465174, 35.105278, 37.572132>,  <28.776201, 34.807369, 37.344837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465174, 35.105278, 37.572132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343937, 35.241230, 37.216015>,  <29.271194, 35.322803, 37.002346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.343937, 35.241230, 37.216015>,  <29.465174, 35.105278, 37.572132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343937, 35.241230, 37.216015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336439, 0.912240, 0.233724,
		0.891595, -0.228688, -0.390845,
		-0.303094, 0.339883, -0.890288,
		29.253008, 35.343193, 36.948929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963694, 35.480686, 37.379894>,  <29.465174, 35.105278, 37.572132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963694, 35.480686, 37.379894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654631, 35.629086, 37.173843>,  <29.469193, 35.718124, 37.050213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654631, 35.629086, 37.173843>,  <29.963694, 35.480686, 37.379894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654631, 35.629086, 37.173843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240391, 0.922017, 0.303474,
		0.587547, 0.110650, -0.801589,
		-0.772658, 0.371000, -0.515129,
		29.422832, 35.740387, 37.019306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203947, 36.161255, 37.180180>,  <29.963694, 35.480686, 37.379894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203947, 36.161255, 37.180180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806067, 36.165310, 37.139252>,  <29.567339, 36.167744, 37.114697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806067, 36.165310, 37.139252>,  <30.203947, 36.161255, 37.180180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806067, 36.165310, 37.139252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013769, 0.973028, 0.230276,
		0.101893, 0.230465, -0.967731,
		-0.994700, 0.010139, -0.102318,
		29.507656, 36.168350, 37.108555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125456, 36.738289, 36.828831>,  <30.203947, 36.161255, 37.180180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125456, 36.738289, 36.828831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747049, 36.682446, 36.945835>,  <29.520006, 36.648941, 37.016037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747049, 36.682446, 36.945835>,  <30.125456, 36.738289, 36.828831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747049, 36.682446, 36.945835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127764, 0.990030, 0.059307,
		-0.297877, 0.018733, -0.954420,
		-0.946016, -0.139607, 0.292514,
		29.463245, 36.640564, 37.033588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626034, 37.286839, 36.488239>,  <30.125456, 36.738289, 36.828831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626034, 37.286839, 36.488239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448503, 37.166374, 36.825836>,  <29.341986, 37.094097, 37.028393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448503, 37.166374, 36.825836>,  <29.626034, 37.286839, 36.488239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448503, 37.166374, 36.825836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245260, 0.946697, 0.208836,
		-0.861898, -0.114310, -0.494030,
		-0.443825, -0.301161, 0.843991,
		29.315355, 37.076027, 37.079033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115993, 37.643696, 36.482010>,  <29.626034, 37.286839, 36.488239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115993, 37.643696, 36.482010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110983, 37.539436, 36.868153>,  <29.107977, 37.476883, 37.099838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110983, 37.539436, 36.868153>,  <29.115993, 37.643696, 36.482010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110983, 37.539436, 36.868153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418744, 0.878063, 0.231643,
		-0.908018, -0.401334, -0.120144,
		-0.012527, -0.260646, 0.965353,
		29.107225, 37.461243, 37.157757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509018, 37.826649, 36.787888>,  <29.115993, 37.643696, 36.482010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509018, 37.826649, 36.787888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724304, 37.785683, 37.122513>,  <28.853476, 37.761101, 37.323288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.724304, 37.785683, 37.122513>,  <28.509018, 37.826649, 36.787888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724304, 37.785683, 37.122513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313562, 0.897002, 0.311555,
		-0.782305, -0.429998, 0.450667,
		0.538217, -0.102419, 0.836560,
		28.885769, 37.754955, 37.373482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090935, 38.062859, 37.286499>,  <28.509018, 37.826649, 36.787888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090935, 38.062859, 37.286499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455278, 38.068115, 37.451504>,  <28.673885, 38.071270, 37.550507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455278, 38.068115, 37.451504>,  <28.090935, 38.062859, 37.286499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455278, 38.068115, 37.451504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184396, 0.907147, 0.378263,
		-0.369233, -0.420609, 0.828707,
		0.910860, 0.013143, 0.412507,
		28.728537, 38.072060, 37.575256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021854, 38.249073, 37.961578>,  <28.090935, 38.062859, 37.286499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021854, 38.249073, 37.961578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402657, 38.350681, 37.893272>,  <28.631138, 38.411648, 37.852287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.402657, 38.350681, 37.893272>,  <28.021854, 38.249073, 37.961578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402657, 38.350681, 37.893272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135709, 0.850371, 0.508382,
		0.274357, -0.460807, 0.844029,
		0.952004, 0.254020, -0.170770,
		28.688257, 38.426888, 37.842041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212358, 38.436787, 38.595936>,  <28.021854, 38.249073, 37.961578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212358, 38.436787, 38.595936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482496, 38.585167, 38.340969>,  <28.644579, 38.674194, 38.187988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.482496, 38.585167, 38.340969>,  <28.212358, 38.436787, 38.595936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482496, 38.585167, 38.340969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025370, 0.875471, 0.482604,
		0.737065, -0.309753, 0.600657,
		0.675345, 0.370950, -0.637421,
		28.685101, 38.696453, 38.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590689, 38.844456, 39.128555>,  <28.212358, 38.436787, 38.595936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590689, 38.844456, 39.128555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692463, 38.967945, 38.761959>,  <28.753527, 39.042038, 38.542000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.692463, 38.967945, 38.761959>,  <28.590689, 38.844456, 39.128555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692463, 38.967945, 38.761959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110713, 0.950745, 0.289528,
		0.960732, 0.027802, 0.276080,
		0.254432, 0.308724, -0.916490,
		28.768793, 39.060562, 38.487011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176237, 39.324135, 39.102661>,  <28.590689, 38.844456, 39.128555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176237, 39.324135, 39.102661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013706, 39.426765, 38.751877>,  <28.916187, 39.488346, 38.541405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013706, 39.426765, 38.751877>,  <29.176237, 39.324135, 39.102661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013706, 39.426765, 38.751877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006339, 0.958950, 0.283506,
		0.913706, 0.120755, -0.388020,
		-0.406326, 0.256581, -0.876964,
		28.891808, 39.503738, 38.488789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574329, 39.893585, 38.793518>,  <29.176237, 39.324135, 39.102661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574329, 39.893585, 38.793518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214516, 39.886364, 38.618927>,  <28.998629, 39.882030, 38.514172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.214516, 39.886364, 38.618927>,  <29.574329, 39.893585, 38.793518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214516, 39.886364, 38.618927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093463, 0.983966, 0.151910,
		0.426738, 0.177442, -0.886797,
		-0.899533, -0.018057, -0.436480,
		28.944656, 39.880947, 38.487984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685944, 40.386639, 38.251568>,  <29.574329, 39.893585, 38.793518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685944, 40.386639, 38.251568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299509, 40.320690, 38.331059>,  <29.067648, 40.281120, 38.378754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299509, 40.320690, 38.331059>,  <29.685944, 40.386639, 38.251568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299509, 40.320690, 38.331059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153511, 0.985566, 0.071376,
		-0.207629, 0.038448, -0.977452,
		-0.966087, -0.164869, 0.198730,
		29.009684, 40.271229, 38.390678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352526, 40.958832, 37.868198>,  <29.685944, 40.386639, 38.251568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352526, 40.958832, 37.868198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093351, 40.820301, 38.139561>,  <28.937847, 40.737183, 38.302380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093351, 40.820301, 38.139561>,  <29.352526, 40.958832, 37.868198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093351, 40.820301, 38.139561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168787, 0.933795, 0.315495,
		-0.742760, 0.089913, -0.663493,
		-0.647934, -0.346326, 0.678410,
		28.898972, 40.716404, 38.343082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812994, 41.407253, 37.849377>,  <29.352526, 40.958832, 37.868198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812994, 41.407253, 37.849377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781483, 41.227699, 38.205421>,  <28.762575, 41.119968, 38.419048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.781483, 41.227699, 38.205421>,  <28.812994, 41.407253, 37.849377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781483, 41.227699, 38.205421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089860, 0.886052, 0.454793,
		-0.992834, 0.115815, -0.029467,
		-0.078781, -0.448886, 0.890110,
		28.757849, 41.093033, 38.472454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276459, 41.798000, 38.087811>,  <28.812994, 41.407253, 37.849377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276459, 41.798000, 38.087811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424309, 41.610199, 38.408546>,  <28.513018, 41.497517, 38.600986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424309, 41.610199, 38.408546>,  <28.276459, 41.798000, 38.087811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424309, 41.610199, 38.408546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146850, 0.822588, 0.549349,
		-0.917504, -0.320802, 0.235101,
		0.369624, -0.469506, 0.801837,
		28.535196, 41.469349, 38.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826815, 41.925140, 38.609253>,  <28.276459, 41.798000, 38.087811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826815, 41.925140, 38.609253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186747, 41.850716, 38.767082>,  <28.402706, 41.806061, 38.861778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186747, 41.850716, 38.767082>,  <27.826815, 41.925140, 38.609253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186747, 41.850716, 38.767082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116019, 0.769845, 0.627598,
		-0.420529, -0.610510, 0.671143,
		0.899831, -0.186058, 0.394573,
		28.456696, 41.794899, 38.885452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688990, 41.862453, 39.355408>,  <27.826815, 41.925140, 38.609253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688990, 41.862453, 39.355408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066475, 41.966866, 39.274147>,  <28.292965, 42.029514, 39.225391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066475, 41.966866, 39.274147>,  <27.688990, 41.862453, 39.355408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066475, 41.966866, 39.274147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091093, 0.795529, 0.599028,
		0.317980, -0.546804, 0.774528,
		0.943711, 0.261033, -0.203153,
		28.349588, 42.045177, 39.213200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981453, 41.988937, 39.932114>,  <27.688990, 41.862453, 39.355408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981453, 41.988937, 39.932114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229679, 42.199886, 39.699986>,  <28.378614, 42.326454, 39.560707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229679, 42.199886, 39.699986>,  <27.981453, 41.988937, 39.932114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229679, 42.199886, 39.699986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000848, 0.740515, 0.672039,
		0.784155, -0.416552, 0.459984,
		0.620565, 0.527373, -0.580325,
		28.415850, 42.358097, 39.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499981, 42.361172, 40.361553>,  <27.981453, 41.988937, 39.932114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499981, 42.361172, 40.361553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502136, 42.539570, 40.003544>,  <28.503429, 42.646606, 39.788738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.502136, 42.539570, 40.003544>,  <28.499981, 42.361172, 40.361553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502136, 42.539570, 40.003544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, 0.865364, 0.432735,
		0.967515, -0.228554, -0.108063,
		0.005389, 0.445991, -0.895021,
		28.503754, 42.673367, 39.735039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.237320, 30.781523, 46.377209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952278, 30.580820, 46.181072>,  <38.781254, 30.460398, 46.063389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.952278, 30.580820, 46.181072>,  <39.237320, 30.781523, 46.377209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952278, 30.580820, 46.181072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180418, -0.544356, 0.819223,
		-0.677974, 0.672246, 0.297383,
		-0.712601, -0.501759, -0.490345,
		38.738499, 30.430292, 46.033970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656609, 30.713326, 46.777153>,  <39.237320, 30.781523, 46.377209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656609, 30.713326, 46.777153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613911, 30.417820, 46.510971>,  <38.588291, 30.240517, 46.351261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613911, 30.417820, 46.510971>,  <38.656609, 30.713326, 46.777153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613911, 30.417820, 46.510971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243592, -0.629455, 0.737868,
		-0.963986, 0.240864, -0.112765,
		-0.106745, -0.738763, -0.665459,
		38.581886, 30.196192, 46.311333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099693, 30.423500, 46.966793>,  <38.656609, 30.713326, 46.777153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099693, 30.423500, 46.966793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291325, 30.126009, 46.780308>,  <38.406303, 29.947515, 46.668415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.291325, 30.126009, 46.780308>,  <38.099693, 30.423500, 46.966793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291325, 30.126009, 46.780308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219693, -0.615825, 0.756634,
		-0.849837, -0.260059, -0.458417,
		0.479074, -0.743726, -0.466218,
		38.435047, 29.902891, 46.640442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708233, 29.825378, 47.133327>,  <38.099693, 30.423500, 46.966793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708233, 29.825378, 47.133327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053867, 29.668787, 47.006779>,  <38.261250, 29.574833, 46.930847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053867, 29.668787, 47.006779>,  <37.708233, 29.825378, 47.133327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053867, 29.668787, 47.006779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109228, -0.759420, 0.641366,
		-0.491342, -0.519641, -0.698968,
		0.864091, -0.391476, -0.316376,
		38.313095, 29.551344, 46.911865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608021, 29.133493, 47.018665>,  <37.708233, 29.825378, 47.133327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608021, 29.133493, 47.018665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002792, 29.169729, 47.071968>,  <38.239655, 29.191471, 47.103951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002792, 29.169729, 47.071968>,  <37.608021, 29.133493, 47.018665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002792, 29.169729, 47.071968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004665, -0.842722, 0.538329,
		0.161070, -0.530672, -0.832132,
		0.986932, 0.090591, 0.133261,
		38.298870, 29.196907, 47.111946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680550, 28.428112, 47.190643>,  <37.608021, 29.133493, 47.018665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680550, 28.428112, 47.190643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015804, 28.630962, 47.270992>,  <38.216957, 28.752672, 47.319202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015804, 28.630962, 47.270992>,  <37.680550, 28.428112, 47.190643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015804, 28.630962, 47.270992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239890, -0.673443, 0.699233,
		0.489877, -0.537865, -0.686091,
		0.838137, 0.507125, 0.200876,
		38.267246, 28.783100, 47.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275620, 27.897993, 47.307907>,  <37.680550, 28.428112, 47.190643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275620, 27.897993, 47.307907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.398769, 28.239220, 47.476425>,  <38.472660, 28.443956, 47.577538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.398769, 28.239220, 47.476425>,  <38.275620, 27.897993, 47.307907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398769, 28.239220, 47.476425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277938, -0.504129, 0.817682,
		0.909926, -0.134648, -0.392307,
		0.307873, 0.853067, 0.421296,
		38.491131, 28.495140, 47.602814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853477, 27.731373, 47.568066>,  <38.275620, 27.897993, 47.307907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853477, 27.731373, 47.568066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727936, 28.039227, 47.790474>,  <38.652611, 28.223938, 47.923920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.727936, 28.039227, 47.790474>,  <38.853477, 27.731373, 47.568066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727936, 28.039227, 47.790474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170956, -0.530234, 0.830437,
		0.933954, 0.355691, 0.034842,
		-0.313853, 0.769634, 0.556022,
		38.633781, 28.270117, 47.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362743, 27.913277, 48.030865>,  <38.853477, 27.731373, 47.568066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362743, 27.913277, 48.030865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005569, 28.020336, 48.175655>,  <38.791264, 28.084572, 48.262531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005569, 28.020336, 48.175655>,  <39.362743, 27.913277, 48.030865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005569, 28.020336, 48.175655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210672, -0.462161, 0.861409,
		0.397849, 0.845441, 0.356294,
		-0.892935, 0.267650, 0.361981,
		38.737690, 28.100632, 48.284248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522839, 28.044231, 48.693291>,  <39.362743, 27.913277, 48.030865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522839, 28.044231, 48.693291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125160, 28.036926, 48.735683>,  <38.886551, 28.032543, 48.761120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.125160, 28.036926, 48.735683>,  <39.522839, 28.044231, 48.693291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125160, 28.036926, 48.735683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103247, -0.437997, 0.893028,
		0.030111, 0.898791, 0.437342,
		-0.994200, -0.018264, 0.105986,
		38.826900, 28.031446, 48.767479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429436, 28.127827, 49.409454>,  <39.522839, 28.044231, 48.693291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429436, 28.127827, 49.409454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078743, 27.997347, 49.268066>,  <38.868328, 27.919060, 49.183235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078743, 27.997347, 49.268066>,  <39.429436, 28.127827, 49.409454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078743, 27.997347, 49.268066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145042, -0.521374, 0.840911,
		-0.458592, 0.788520, 0.409792,
		-0.876730, -0.326198, -0.353467,
		38.815723, 27.899487, 49.162025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878716, 28.308245, 49.997562>,  <39.429436, 28.127827, 49.409454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878716, 28.308245, 49.997562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795868, 28.003456, 49.752121>,  <38.746159, 27.820583, 49.604858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.795868, 28.003456, 49.752121>,  <38.878716, 28.308245, 49.997562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795868, 28.003456, 49.752121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233265, -0.570647, 0.787369,
		-0.950099, 0.306211, -0.059549,
		-0.207120, -0.761969, -0.613600,
		38.733730, 27.774866, 49.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081512, 28.174726, 49.905373>,  <38.878716, 28.308245, 49.997562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081512, 28.174726, 49.905373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.353958, 27.882040, 49.915775>,  <38.517426, 27.706429, 49.922016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.353958, 27.882040, 49.915775>,  <38.081512, 28.174726, 49.905373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353958, 27.882040, 49.915775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280424, -0.227893, 0.932431,
		-0.676351, -0.642381, -0.360412,
		0.681111, -0.731718, 0.026004,
		38.558292, 27.662525, 49.923576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327507, 28.211859, 50.344151>,  <38.081512, 28.174726, 49.905373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327507, 28.211859, 50.344151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948818, 28.311256, 50.426090>,  <36.721603, 28.370895, 50.475254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948818, 28.311256, 50.426090>,  <37.327507, 28.211859, 50.344151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948818, 28.311256, 50.426090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014557, 0.668456, -0.743609,
		-0.321711, -0.701012, -0.636462,
		-0.946726, 0.248492, 0.204845,
		36.664799, 28.385803, 50.487545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918324, 28.270044, 49.782974>,  <37.327507, 28.211859, 50.344151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918324, 28.270044, 49.782974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711784, 28.492428, 50.043526>,  <36.587860, 28.625858, 50.199856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711784, 28.492428, 50.043526>,  <36.918324, 28.270044, 49.782974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711784, 28.492428, 50.043526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127413, 0.702283, -0.700403,
		-0.846848, -0.444646, -0.291786,
		-0.516348, 0.555958, 0.651380,
		36.556881, 28.659216, 50.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498219, 28.706915, 49.264103>,  <36.918324, 28.270044, 49.782974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498219, 28.706915, 49.264103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484184, 28.881157, 49.623886>,  <36.475765, 28.985703, 49.839756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484184, 28.881157, 49.623886>,  <36.498219, 28.706915, 49.264103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484184, 28.881157, 49.623886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268175, 0.862895, -0.428362,
		-0.962731, -0.256241, 0.086543,
		-0.035086, 0.435606, 0.899454,
		36.473660, 29.011839, 49.893723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856464, 29.058195, 49.318462>,  <36.498219, 28.706915, 49.264103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856464, 29.058195, 49.318462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128605, 29.220201, 49.562786>,  <36.291889, 29.317406, 49.709381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128605, 29.220201, 49.562786>,  <35.856464, 29.058195, 49.318462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128605, 29.220201, 49.562786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278376, 0.913776, -0.295838,
		-0.677960, 0.031240, 0.734435,
		0.680351, 0.405015, 0.610807,
		36.332710, 29.341705, 49.746029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522930, 29.611805, 49.616383>,  <35.856464, 29.058195, 49.318462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522930, 29.611805, 49.616383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910061, 29.689377, 49.680511>,  <36.142338, 29.735920, 49.718990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.910061, 29.689377, 49.680511>,  <35.522930, 29.611805, 49.616383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910061, 29.689377, 49.680511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137573, 0.941333, -0.308166,
		-0.210680, 0.276195, 0.937726,
		0.967826, 0.193930, 0.160323,
		36.200409, 29.747557, 49.728607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531082, 30.267609, 49.988575>,  <35.522930, 29.611805, 49.616383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531082, 30.267609, 49.988575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897621, 30.239868, 49.830845>,  <36.117546, 30.223223, 49.736206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897621, 30.239868, 49.830845>,  <35.531082, 30.267609, 49.988575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897621, 30.239868, 49.830845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071094, 0.941047, -0.330719,
		0.394016, 0.331089, 0.857398,
		0.916350, -0.069353, -0.394327,
		36.172527, 30.219063, 49.712547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836281, 30.947479, 50.122551>,  <35.531082, 30.267609, 49.988575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836281, 30.947479, 50.122551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064034, 30.757610, 49.854076>,  <36.200684, 30.643690, 49.692989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064034, 30.757610, 49.854076>,  <35.836281, 30.947479, 50.122551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064034, 30.757610, 49.854076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095146, 0.849021, -0.519721,
		0.816550, 0.232058, 0.528579,
		0.569380, -0.474670, -0.671188,
		36.234848, 30.615210, 49.652721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416367, 31.379128, 50.017696>,  <35.836281, 30.947479, 50.122551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416367, 31.379128, 50.017696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441391, 31.167522, 49.679173>,  <36.456406, 31.040560, 49.476059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.441391, 31.167522, 49.679173>,  <36.416367, 31.379128, 50.017696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441391, 31.167522, 49.679173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146327, 0.843665, -0.516544,
		0.987256, -0.091523, 0.130187,
		0.062559, -0.529011, -0.846306,
		36.460159, 31.008820, 49.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005043, 31.629845, 49.598900>,  <36.416367, 31.379128, 50.017696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005043, 31.629845, 49.598900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798382, 31.425241, 49.324257>,  <36.674385, 31.302479, 49.159473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798382, 31.425241, 49.324257>,  <37.005043, 31.629845, 49.598900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798382, 31.425241, 49.324257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146643, 0.737211, -0.659557,
		0.843541, -0.441450, -0.305875,
		-0.516657, -0.511509, -0.686603,
		36.643383, 31.271790, 49.118275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443893, 31.573021, 48.907539>,  <37.005043, 31.629845, 49.598900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443893, 31.573021, 48.907539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064125, 31.506618, 48.800922>,  <36.836266, 31.466778, 48.736950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.064125, 31.506618, 48.800922>,  <37.443893, 31.573021, 48.907539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064125, 31.506618, 48.800922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118982, 0.595364, -0.794597,
		0.290598, -0.786120, -0.545498,
		-0.949419, -0.166004, -0.266545,
		36.779301, 31.456818, 48.720959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440422, 31.439470, 48.207130>,  <37.443893, 31.573021, 48.907539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440422, 31.439470, 48.207130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071754, 31.577507, 48.278057>,  <36.850555, 31.660328, 48.320614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071754, 31.577507, 48.278057>,  <37.440422, 31.439470, 48.207130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071754, 31.577507, 48.278057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009307, 0.437237, -0.899298,
		-0.387871, -0.830504, -0.399775,
		-0.921667, 0.345091, 0.177321,
		36.795254, 31.681034, 48.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261868, 31.564642, 47.513096>,  <37.440422, 31.439470, 48.207130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261868, 31.564642, 47.513096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969009, 31.745817, 47.716591>,  <36.793297, 31.854523, 47.838688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.969009, 31.745817, 47.716591>,  <37.261868, 31.564642, 47.513096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969009, 31.745817, 47.716591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096526, 0.670350, -0.735740,
		-0.674279, -0.587772, -0.447070,
		-0.732141, 0.452940, 0.508738,
		36.749367, 31.881699, 47.869213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698723, 31.558825, 47.123901>,  <37.261868, 31.564642, 47.513096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698723, 31.558825, 47.123901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704407, 31.873213, 47.371143>,  <36.707817, 32.061844, 47.519489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.704407, 31.873213, 47.371143>,  <36.698723, 31.558825, 47.123901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704407, 31.873213, 47.371143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023128, 0.618258, -0.785635,
		-0.999632, -0.003132, 0.026962,
		0.014209, 0.785969, 0.618103,
		36.708668, 32.109005, 47.556576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337154, 31.957308, 46.769775>,  <36.698723, 31.558825, 47.123901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337154, 31.957308, 46.769775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470493, 32.204952, 47.054192>,  <36.550495, 32.353539, 47.224842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.470493, 32.204952, 47.054192>,  <36.337154, 31.957308, 46.769775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470493, 32.204952, 47.054192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045612, 0.763887, -0.643736,
		-0.941701, 0.182153, 0.282876,
		0.333344, 0.619110, 0.711045,
		36.570496, 32.390686, 47.267506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803982, 32.473904, 46.777107>,  <36.337154, 31.957308, 46.769775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803982, 32.473904, 46.777107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149895, 32.622833, 46.911877>,  <36.357445, 32.712193, 46.992741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149895, 32.622833, 46.911877>,  <35.803982, 32.473904, 46.777107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149895, 32.622833, 46.911877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038069, 0.717659, -0.695353,
		-0.500698, 0.588504, 0.634794,
		0.864784, 0.372328, 0.336927,
		36.409328, 32.734531, 47.012955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060265, 32.439095, 46.792233>,  <35.803982, 32.473904, 46.777107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060265, 32.439095, 46.792233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691681, 32.500015, 46.649281>,  <34.470531, 32.536568, 46.563511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.691681, 32.500015, 46.649281>,  <35.060265, 32.439095, 46.792233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691681, 32.500015, 46.649281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351963, -0.716680, 0.602073,
		-0.164431, 0.680569, 0.713995,
		-0.921458, 0.152301, -0.357379,
		34.415245, 32.545704, 46.542068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602104, 32.651119, 47.291985>,  <35.060265, 32.439095, 46.792233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602104, 32.651119, 47.291985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349415, 32.506363, 47.017769>,  <34.197803, 32.419510, 46.853241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.349415, 32.506363, 47.017769>,  <34.602104, 32.651119, 47.291985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349415, 32.506363, 47.017769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259379, -0.734691, 0.626858,
		-0.730515, 0.573813, 0.370252,
		-0.631721, -0.361893, -0.685538,
		34.159897, 32.397797, 46.812107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897514, 32.531677, 47.703175>,  <34.602104, 32.651119, 47.291985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897514, 32.531677, 47.703175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905979, 32.295177, 47.380692>,  <33.911057, 32.153278, 47.187202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905979, 32.295177, 47.380692>,  <33.897514, 32.531677, 47.703175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905979, 32.295177, 47.380692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359091, -0.757077, 0.545792,
		-0.933063, 0.277952, -0.228335,
		0.021163, -0.591251, -0.806210,
		33.912327, 32.117802, 47.138828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233555, 32.172981, 47.636337>,  <33.897514, 32.531677, 47.703175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233555, 32.172981, 47.636337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477329, 31.935793, 47.425827>,  <33.623596, 31.793480, 47.299522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477329, 31.935793, 47.425827>,  <33.233555, 32.172981, 47.636337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477329, 31.935793, 47.425827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298243, -0.786499, 0.540806,
		-0.734598, -0.172630, -0.656174,
		0.609439, -0.592974, -0.526275,
		33.660160, 31.757900, 47.267944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813274, 31.605770, 47.545326>,  <33.233555, 32.172981, 47.636337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813274, 31.605770, 47.545326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198441, 31.510351, 47.494915>,  <33.429543, 31.453100, 47.464668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198441, 31.510351, 47.494915>,  <32.813274, 31.605770, 47.545326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198441, 31.510351, 47.494915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103103, -0.757041, 0.645181,
		-0.249311, -0.608263, -0.753564,
		0.962919, -0.238546, -0.126025,
		33.487316, 31.438787, 47.457108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860306, 30.893734, 47.447865>,  <32.813274, 31.605770, 47.545326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860306, 30.893734, 47.447865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219856, 31.012068, 47.577175>,  <33.435585, 31.083069, 47.654762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219856, 31.012068, 47.577175>,  <32.860306, 30.893734, 47.447865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219856, 31.012068, 47.577175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056433, -0.809730, 0.584083,
		0.434558, -0.506773, -0.744540,
		0.898874, 0.295835, 0.323276,
		33.489517, 31.100819, 47.674156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164688, 30.144930, 47.567230>,  <32.860306, 30.893734, 47.447865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164688, 30.144930, 47.567230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353123, 30.413475, 47.796085>,  <33.466183, 30.574602, 47.933399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353123, 30.413475, 47.796085>,  <33.164688, 30.144930, 47.567230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353123, 30.413475, 47.796085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227639, -0.719182, 0.656473,
		0.852207, -0.179015, -0.491626,
		0.471088, 0.671365, 0.572142,
		33.494450, 30.614885, 47.967728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875610, 30.074564, 47.670029>,  <33.164688, 30.144930, 47.567230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875610, 30.074564, 47.670029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839039, 29.694790, 47.549889>,  <33.817097, 29.466925, 47.477802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839039, 29.694790, 47.549889>,  <33.875610, 30.074564, 47.670029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839039, 29.694790, 47.549889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218804, 0.275094, -0.936188,
		0.971476, -0.151311, 0.182590,
		-0.091426, -0.949436, -0.300355,
		33.811611, 29.409960, 47.459782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545395, 29.964308, 47.424286>,  <33.875610, 30.074564, 47.670029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545395, 29.964308, 47.424286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283485, 29.714184, 47.254459>,  <34.126339, 29.564110, 47.152561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283485, 29.714184, 47.254459>,  <34.545395, 29.964308, 47.424286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283485, 29.714184, 47.254459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438567, 0.143170, -0.887221,
		0.615573, -0.767132, 0.180496,
		-0.654774, -0.625309, -0.424570,
		34.087051, 29.526590, 47.127087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886120, 29.467001, 46.934280>,  <34.545395, 29.964308, 47.424286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886120, 29.467001, 46.934280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501862, 29.434509, 46.828030>,  <34.271305, 29.415014, 46.764278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501862, 29.434509, 46.828030>,  <34.886120, 29.467001, 46.934280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501862, 29.434509, 46.828030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261820, 0.054626, -0.963570,
		0.092783, -0.995197, -0.031208,
		-0.960647, -0.081232, -0.265631,
		34.213669, 29.410141, 46.748341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830101, 28.916422, 46.396992>,  <34.886120, 29.467001, 46.934280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830101, 28.916422, 46.396992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541012, 29.191599, 46.370434>,  <34.367558, 29.356705, 46.354500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541012, 29.191599, 46.370434>,  <34.830101, 28.916422, 46.396992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541012, 29.191599, 46.370434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099724, 0.008740, -0.994977,
		-0.683906, -0.725713, -0.074921,
		-0.722723, 0.687942, -0.066393,
		34.324196, 29.397982, 46.350517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696621, 28.652050, 45.648422>,  <34.830101, 28.916422, 46.396992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696621, 28.652050, 45.648422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562237, 29.012802, 45.757046>,  <34.481606, 29.229254, 45.822220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562237, 29.012802, 45.757046>,  <34.696621, 28.652050, 45.648422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562237, 29.012802, 45.757046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012513, 0.284022, -0.958736,
		-0.941794, -0.325493, -0.084134,
		-0.335958, 0.901879, 0.271563,
		34.461449, 29.283365, 45.838516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312294, 28.868792, 45.027069>,  <34.696621, 28.652050, 45.648422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312294, 28.868792, 45.027069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325890, 29.211670, 45.232616>,  <34.334045, 29.417397, 45.355946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.325890, 29.211670, 45.232616>,  <34.312294, 28.868792, 45.027069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325890, 29.211670, 45.232616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234449, 0.492978, -0.837858,
		-0.971534, 0.148950, -0.184215,
		0.033985, 0.857197, 0.513866,
		34.336086, 29.468828, 45.386776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847954, 29.369673, 44.669117>,  <34.312294, 28.868792, 45.027069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847954, 29.369673, 44.669117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156834, 29.535700, 44.861549>,  <34.342159, 29.635315, 44.977009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156834, 29.535700, 44.861549>,  <33.847954, 29.369673, 44.669117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156834, 29.535700, 44.861549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361759, 0.335238, -0.869911,
		-0.522346, 0.845775, 0.108715,
		0.772195, 0.415066, 0.481077,
		34.388493, 29.660219, 45.005871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.108997, 25.058411, 47.342102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.129330, 25.308046, 47.653980>,  <37.141529, 25.457829, 47.841106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.129330, 25.308046, 47.653980>,  <37.108997, 25.058411, 47.342102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129330, 25.308046, 47.653980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099190, 0.780001, -0.617868,
		-0.993769, -0.045930, 0.101553,
		0.050833, 0.624091, 0.779697,
		37.144581, 25.495274, 47.887890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662277, 25.613741, 47.196930>,  <37.108997, 25.058411, 47.342102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662277, 25.613741, 47.196930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.975101, 25.710268, 47.426765>,  <37.162796, 25.768185, 47.564667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.975101, 25.710268, 47.426765>,  <36.662277, 25.613741, 47.196930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975101, 25.710268, 47.426765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171457, 0.803093, -0.570652,
		-0.599154, 0.544801, 0.586691,
		0.782060, 0.241316, 0.574586,
		37.209721, 25.782663, 47.599140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661190, 26.391178, 47.469051>,  <36.662277, 25.613741, 47.196930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661190, 26.391178, 47.469051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.041176, 26.266800, 47.457230>,  <37.269169, 26.192173, 47.450138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.041176, 26.266800, 47.457230>,  <36.661190, 26.391178, 47.469051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041176, 26.266800, 47.457230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222530, 0.740161, -0.634541,
		0.219178, 0.596218, 0.772324,
		0.949969, -0.310943, -0.029550,
		37.326168, 26.173517, 47.448364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008568, 27.056429, 47.352314>,  <36.661190, 26.391178, 47.469051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008568, 27.056429, 47.352314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241913, 26.741177, 47.273796>,  <37.381920, 26.552025, 47.226685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.241913, 26.741177, 47.273796>,  <37.008568, 27.056429, 47.352314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241913, 26.741177, 47.273796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402414, 0.490393, -0.773031,
		0.705512, 0.371969, 0.603234,
		0.583366, -0.788133, -0.196293,
		37.416924, 26.504736, 47.214909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700600, 27.331631, 47.320091>,  <37.008568, 27.056429, 47.352314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700600, 27.331631, 47.320091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684525, 26.982859, 47.124901>,  <37.674877, 26.773596, 47.007786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684525, 26.982859, 47.124901>,  <37.700600, 27.331631, 47.320091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684525, 26.982859, 47.124901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302112, 0.454911, -0.837726,
		0.952425, -0.181094, 0.245136,
		-0.040193, -0.871930, -0.487979,
		37.672466, 26.721279, 46.978508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119816, 27.497967, 46.752178>,  <37.700600, 27.331631, 47.320091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119816, 27.497967, 46.752178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935745, 27.160191, 46.642517>,  <37.825302, 26.957525, 46.576721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.935745, 27.160191, 46.642517>,  <38.119816, 27.497967, 46.752178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935745, 27.160191, 46.642517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119950, 0.246823, -0.961608,
		0.879687, -0.475395, -0.012292,
		-0.460178, -0.844440, -0.274150,
		37.797691, 26.906858, 46.560272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501450, 27.229744, 46.281841>,  <38.119816, 27.497967, 46.752178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501450, 27.229744, 46.281841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132217, 27.100113, 46.198994>,  <37.910679, 27.022335, 46.149284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.132217, 27.100113, 46.198994>,  <38.501450, 27.229744, 46.281841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132217, 27.100113, 46.198994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106796, 0.301364, -0.947510,
		0.369488, -0.896745, -0.243572,
		-0.923078, -0.324081, -0.207119,
		37.855293, 27.002890, 46.136860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537502, 26.861286, 45.706200>,  <38.501450, 27.229744, 46.281841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537502, 26.861286, 45.706200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145134, 26.938433, 45.715912>,  <37.909714, 26.984720, 45.721741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.145134, 26.938433, 45.715912>,  <38.537502, 26.861286, 45.706200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145134, 26.938433, 45.715912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023211, 0.240244, -0.970435,
		-0.192998, -0.951360, -0.240138,
		-0.980925, 0.192866, 0.024285,
		37.850857, 26.996292, 45.723198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239662, 26.644104, 45.033264>,  <38.537502, 26.861286, 45.706200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239662, 26.644104, 45.033264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949318, 26.886995, 45.162506>,  <37.775112, 27.032730, 45.240051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.949318, 26.886995, 45.162506>,  <38.239662, 26.644104, 45.033264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949318, 26.886995, 45.162506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158021, 0.309962, -0.937525,
		-0.669440, -0.731573, -0.129036,
		-0.725864, 0.607227, 0.323105,
		37.731560, 27.069162, 45.259438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671154, 26.608322, 44.535912>,  <38.239662, 26.644104, 45.033264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671154, 26.608322, 44.535912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.606888, 26.953074, 44.728310>,  <37.568329, 27.159924, 44.843750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.606888, 26.953074, 44.728310>,  <37.671154, 26.608322, 44.535912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606888, 26.953074, 44.728310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170298, 0.455811, -0.873633,
		-0.972207, -0.222273, 0.073544,
		-0.160663, 0.861876, 0.480995,
		37.558689, 27.211636, 44.872608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135544, 26.903080, 44.202785>,  <37.671154, 26.608322, 44.535912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135544, 26.903080, 44.202785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310448, 27.221838, 44.369526>,  <37.415390, 27.413094, 44.469570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.310448, 27.221838, 44.369526>,  <37.135544, 26.903080, 44.202785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310448, 27.221838, 44.369526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254349, 0.554160, -0.792599,
		-0.862620, 0.240544, 0.445000,
		0.437256, 0.796897, 0.416848,
		37.441624, 27.460907, 44.494579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675671, 27.469664, 44.044983>,  <37.135544, 26.903080, 44.202785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675671, 27.469664, 44.044983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.046085, 27.602638, 44.116482>,  <37.268333, 27.682423, 44.159382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.046085, 27.602638, 44.116482>,  <36.675671, 27.469664, 44.044983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046085, 27.602638, 44.116482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114656, 0.698949, -0.705921,
		-0.359607, 0.633212, 0.685366,
		0.926033, 0.332435, 0.178746,
		37.323895, 27.702370, 44.170105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972389, 27.937643, 43.931572>,  <36.675671, 27.469664, 44.044983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972389, 27.937643, 43.931572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602722, 27.834158, 43.819160>,  <35.380920, 27.772066, 43.751713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602722, 27.834158, 43.819160>,  <35.972389, 27.937643, 43.931572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602722, 27.834158, 43.819160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297341, 0.025403, 0.954433,
		-0.239786, 0.965620, -0.100403,
		-0.924170, -0.258714, -0.281027,
		35.325470, 27.756544, 43.734852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499226, 28.226799, 44.381298>,  <35.972389, 27.937643, 43.931572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499226, 28.226799, 44.381298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277382, 27.933342, 44.224232>,  <35.144276, 27.757269, 44.129993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.277382, 27.933342, 44.224232>,  <35.499226, 28.226799, 44.381298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277382, 27.933342, 44.224232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288299, -0.273244, 0.917726,
		-0.780574, 0.622180, -0.059965,
		-0.554605, -0.733641, -0.392661,
		35.111000, 27.713249, 44.106434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893040, 28.389568, 44.685329>,  <35.499226, 28.226799, 44.381298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893040, 28.389568, 44.685329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882866, 28.013088, 44.550571>,  <34.876762, 27.787201, 44.469715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882866, 28.013088, 44.550571>,  <34.893040, 28.389568, 44.685329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882866, 28.013088, 44.550571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275713, -0.317328, 0.907351,
		-0.960903, 0.115967, -0.251428,
		-0.025438, -0.941198, -0.336895,
		34.875237, 27.730728, 44.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262550, 28.124653, 44.939941>,  <34.893040, 28.389568, 44.685329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262550, 28.124653, 44.939941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.505653, 27.813053, 44.878242>,  <34.651516, 27.626093, 44.841221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.505653, 27.813053, 44.878242>,  <34.262550, 28.124653, 44.939941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505653, 27.813053, 44.878242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186031, -0.328497, 0.926003,
		-0.772027, -0.534089, -0.344564,
		0.607756, -0.778999, -0.154251,
		34.687981, 27.579353, 44.831966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930798, 27.530453, 45.238102>,  <34.262550, 28.124653, 44.939941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930798, 27.530453, 45.238102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.307159, 27.398939, 45.205593>,  <34.532974, 27.320030, 45.186089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.307159, 27.398939, 45.205593>,  <33.930798, 27.530453, 45.238102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307159, 27.398939, 45.205593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075475, -0.437498, 0.896047,
		-0.330163, -0.836957, -0.436457,
		0.940902, -0.328784, -0.081276,
		34.589428, 27.300304, 45.181210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875931, 26.842291, 45.286659>,  <33.930798, 27.530453, 45.238102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875931, 26.842291, 45.286659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256351, 26.915365, 45.386356>,  <34.484604, 26.959209, 45.446175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256351, 26.915365, 45.386356>,  <33.875931, 26.842291, 45.286659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256351, 26.915365, 45.386356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108664, -0.557332, 0.823149,
		0.289290, -0.809942, -0.510201,
		0.951054, 0.182688, 0.249242,
		34.541668, 26.970171, 45.461128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149738, 26.105623, 45.466496>,  <33.875931, 26.842291, 45.286659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149738, 26.105623, 45.466496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.405079, 26.384987, 45.595947>,  <34.558281, 26.552605, 45.673618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.405079, 26.384987, 45.595947>,  <34.149738, 26.105623, 45.466496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405079, 26.384987, 45.595947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138305, -0.517661, 0.844333,
		0.757219, -0.494220, -0.427042,
		0.638350, 0.698408, 0.323630,
		34.596584, 26.594509, 45.693035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717739, 25.794674, 45.776814>,  <34.149738, 26.105623, 45.466496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717739, 25.794674, 45.776814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723175, 26.163675, 45.931114>,  <34.726437, 26.385077, 46.023697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.723175, 26.163675, 45.931114>,  <34.717739, 25.794674, 45.776814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723175, 26.163675, 45.931114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132409, -0.380732, 0.915156,
		0.991102, -0.063514, 0.116973,
		0.013590, 0.922502, 0.385754,
		34.727253, 26.440426, 46.046841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103828, 25.753597, 46.344006>,  <34.717739, 25.794674, 45.776814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103828, 25.753597, 46.344006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932114, 26.106647, 46.420616>,  <34.829086, 26.318478, 46.466583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932114, 26.106647, 46.420616>,  <35.103828, 25.753597, 46.344006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932114, 26.106647, 46.420616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017808, -0.220294, 0.975271,
		0.902992, 0.415261, 0.110287,
		-0.429288, 0.882626, 0.191529,
		34.803326, 26.371435, 46.478073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519730, 25.999157, 46.881054>,  <35.103828, 25.753597, 46.344006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519730, 25.999157, 46.881054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156925, 26.167549, 46.885246>,  <34.939243, 26.268585, 46.887760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.156925, 26.167549, 46.885246>,  <35.519730, 25.999157, 46.881054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156925, 26.167549, 46.885246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148741, -0.343547, 0.927282,
		0.393970, 0.839493, 0.374217,
		-0.907008, 0.420983, 0.010481,
		34.884823, 26.293844, 46.888390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470047, 26.278763, 47.555321>,  <35.519730, 25.999157, 46.881054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470047, 26.278763, 47.555321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084511, 26.280361, 47.448738>,  <34.853188, 26.281321, 47.384789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.084511, 26.280361, 47.448738>,  <35.470047, 26.278763, 47.555321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084511, 26.280361, 47.448738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266442, -0.032458, 0.963304,
		-0.004800, 0.999465, 0.032349,
		-0.963839, 0.003995, -0.266455,
		34.795361, 26.281559, 47.368801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195320, 26.567142, 48.087418>,  <35.470047, 26.278763, 47.555321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195320, 26.567142, 48.087418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865402, 26.408033, 47.926674>,  <34.667450, 26.312569, 47.830227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.865402, 26.408033, 47.926674>,  <35.195320, 26.567142, 48.087418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865402, 26.408033, 47.926674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379837, -0.136693, 0.914898,
		-0.418854, 0.907244, -0.038346,
		-0.824794, -0.397773, -0.401859,
		34.617966, 26.288702, 47.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585190, 26.925339, 48.402992>,  <35.195320, 26.567142, 48.087418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585190, 26.925339, 48.402992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444981, 26.573885, 48.273293>,  <34.360855, 26.363012, 48.195473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.444981, 26.573885, 48.273293>,  <34.585190, 26.925339, 48.402992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444981, 26.573885, 48.273293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416203, -0.164017, 0.894356,
		-0.838994, 0.448444, -0.308199,
		-0.350519, -0.878633, -0.324253,
		34.339825, 26.310295, 48.176018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858971, 26.875963, 48.654480>,  <34.585190, 26.925339, 48.402992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858971, 26.875963, 48.654480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.969025, 26.499258, 48.577141>,  <34.035057, 26.273235, 48.530739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.969025, 26.499258, 48.577141>,  <33.858971, 26.875963, 48.654480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969025, 26.499258, 48.577141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527471, -0.316009, 0.788615,
		-0.803787, -0.114992, -0.583698,
		0.275138, -0.941762, -0.193350,
		34.051567, 26.216730, 48.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195774, 26.594196, 48.866615>,  <33.858971, 26.875963, 48.654480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195774, 26.594196, 48.866615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830563, 26.755220, 48.840298>,  <32.611435, 26.851835, 48.824509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.830563, 26.755220, 48.840298>,  <33.195774, 26.594196, 48.866615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830563, 26.755220, 48.840298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330845, 0.636510, -0.696704,
		-0.238587, -0.657876, -0.714336,
		-0.913027, 0.402559, -0.065792,
		32.556656, 26.875988, 48.820560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112679, 26.740322, 48.213329>,  <33.195774, 26.594196, 48.866615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112679, 26.740322, 48.213329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847805, 26.995144, 48.371151>,  <32.688881, 27.148037, 48.465843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847805, 26.995144, 48.371151>,  <33.112679, 26.740322, 48.213329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847805, 26.995144, 48.371151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276065, 0.696899, -0.661906,
		-0.696631, -0.329385, -0.637346,
		-0.662188, 0.637053, 0.394550,
		32.649147, 27.186260, 48.489517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722908, 26.989519, 47.718723>,  <33.112679, 26.740322, 48.213329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722908, 26.989519, 47.718723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689720, 27.263821, 48.007961>,  <32.669807, 27.428402, 48.181503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.689720, 27.263821, 48.007961>,  <32.722908, 26.989519, 47.718723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689720, 27.263821, 48.007961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311601, 0.707063, -0.634797,
		-0.946583, 0.172645, -0.272348,
		-0.082973, 0.685752, 0.723090,
		32.664829, 27.469545, 48.224888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421844, 27.555637, 47.326290>,  <32.722908, 26.989519, 47.718723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421844, 27.555637, 47.326290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576569, 27.713869, 47.659492>,  <32.669403, 27.808809, 47.859413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576569, 27.713869, 47.659492>,  <32.421844, 27.555637, 47.326290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576569, 27.713869, 47.659492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395713, 0.744717, -0.537409,
		-0.832939, 0.537506, 0.131530,
		0.386813, 0.395581, 0.833002,
		32.692612, 27.832542, 47.909393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301483, 28.332014, 47.286888>,  <32.421844, 27.555637, 47.326290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301483, 28.332014, 47.286888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595619, 28.298788, 47.555923>,  <32.772099, 28.278852, 47.717346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.595619, 28.298788, 47.555923>,  <32.301483, 28.332014, 47.286888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595619, 28.298788, 47.555923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501315, 0.734503, -0.457371,
		-0.456031, 0.673503, 0.581747,
		0.735336, -0.083064, 0.672593,
		32.816219, 28.273869, 47.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443905, 28.987240, 47.513371>,  <32.301483, 28.332014, 47.286888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443905, 28.987240, 47.513371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782894, 28.802164, 47.617451>,  <32.986286, 28.691118, 47.679897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782894, 28.802164, 47.617451>,  <32.443905, 28.987240, 47.513371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782894, 28.802164, 47.617451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527603, 0.788198, -0.316825,
		-0.058497, 0.405783, 0.912095,
		0.847474, -0.462691, 0.260200,
		33.037136, 28.663357, 47.695511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854973, 29.558640, 47.819847>,  <32.443905, 28.987240, 47.513371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854973, 29.558640, 47.819847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116611, 29.269310, 47.731335>,  <33.273594, 29.095713, 47.678226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116611, 29.269310, 47.731335>,  <32.854973, 29.558640, 47.819847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116611, 29.269310, 47.731335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601630, 0.674805, -0.427410,
		0.458479, 0.146435, 0.876558,
		0.654093, -0.723322, -0.221285,
		33.312840, 29.052313, 47.664948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478748, 29.684828, 48.106331>,  <32.854973, 29.558640, 47.819847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478748, 29.684828, 48.106331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600121, 30.037560, 48.250721>,  <33.672943, 30.249199, 48.337357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600121, 30.037560, 48.250721>,  <33.478748, 29.684828, 48.106331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600121, 30.037560, 48.250721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331489, -0.452871, 0.827661,
		0.893332, -0.131481, -0.429733,
		0.303435, 0.881828, 0.360980,
		33.691151, 30.302109, 48.359016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193413, 29.638792, 48.413567>,  <33.478748, 29.684828, 48.106331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193413, 29.638792, 48.413567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016777, 29.958372, 48.576870>,  <33.910797, 30.150120, 48.674854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.016777, 29.958372, 48.576870>,  <34.193413, 29.638792, 48.413567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016777, 29.958372, 48.576870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193066, -0.359757, 0.912853,
		0.876200, 0.481925, 0.004614,
		-0.441587, 0.798951, 0.408262,
		33.884300, 30.198057, 48.699348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649078, 29.958351, 48.779503>,  <34.193413, 29.638792, 48.413567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649078, 29.958351, 48.779503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.286770, 30.042662, 48.926556>,  <34.069386, 30.093248, 49.014790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.286770, 30.042662, 48.926556>,  <34.649078, 29.958351, 48.779503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286770, 30.042662, 48.926556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263550, -0.399172, 0.878182,
		0.331848, 0.892321, 0.306008,
		-0.905769, 0.210774, 0.367636,
		34.015038, 30.105894, 49.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841373, 30.182114, 49.377228>,  <34.649078, 29.958351, 48.779503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841373, 30.182114, 49.377228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457809, 30.085657, 49.437004>,  <34.227669, 30.027782, 49.472870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.457809, 30.085657, 49.437004>,  <34.841373, 30.182114, 49.377228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457809, 30.085657, 49.437004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223048, -0.315322, 0.922400,
		-0.175307, 0.917836, 0.356153,
		-0.958915, -0.241142, 0.149443,
		34.170135, 30.013315, 49.481838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662701, 30.293932, 50.128235>,  <34.841373, 30.182114, 49.377228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662701, 30.293932, 50.128235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348938, 30.075130, 50.011276>,  <34.160679, 29.943850, 49.941101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.348938, 30.075130, 50.011276>,  <34.662701, 30.293932, 50.128235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348938, 30.075130, 50.011276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063625, -0.539889, 0.839328,
		-0.616975, 0.639771, 0.458295,
		-0.784406, -0.547004, -0.292393,
		34.113617, 29.911030, 49.923557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242229, 30.409922, 50.674217>,  <34.662701, 30.293932, 50.128235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242229, 30.409922, 50.674217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133316, 30.085531, 50.467072>,  <34.067970, 29.890898, 50.342785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133316, 30.085531, 50.467072>,  <34.242229, 30.409922, 50.674217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133316, 30.085531, 50.467072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100873, -0.511173, 0.853538,
		-0.956916, 0.284639, 0.057376,
		-0.272279, -0.810976, -0.517863,
		34.051632, 29.842237, 50.311714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600399, 30.141512, 51.103172>,  <34.242229, 30.409922, 50.674217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600399, 30.141512, 51.103172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756134, 29.866068, 50.858475>,  <33.849575, 29.700802, 50.711655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.756134, 29.866068, 50.858475>,  <33.600399, 30.141512, 51.103172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756134, 29.866068, 50.858475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086942, -0.688659, 0.719854,
		-0.916983, -0.227080, -0.327990,
		0.389338, -0.688610, -0.611746,
		33.872936, 29.659485, 50.674950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133545, 29.622635, 50.991436>,  <33.600399, 30.141512, 51.103172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133545, 29.622635, 50.991436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477352, 29.438517, 50.902569>,  <33.683636, 29.328045, 50.849247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477352, 29.438517, 50.902569>,  <33.133545, 29.622635, 50.991436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477352, 29.438517, 50.902569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197385, -0.699896, 0.686429,
		-0.471457, -0.546143, -0.692428,
		0.859516, -0.460296, -0.222171,
		33.735207, 29.300428, 50.835918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910595, 28.885138, 50.937950>,  <33.133545, 29.622635, 50.991436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910595, 28.885138, 50.937950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306515, 28.898729, 50.993301>,  <33.544067, 28.906883, 51.026512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.306515, 28.898729, 50.993301>,  <32.910595, 28.885138, 50.937950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306515, 28.898729, 50.993301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053169, -0.812936, 0.579921,
		0.132196, -0.581361, -0.802835,
		0.989797, 0.033977, 0.138377,
		33.603455, 28.908922, 51.034813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.031231, 36.943867, 37.451019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428230, 36.912327, 37.488396>,  <36.666431, 36.893402, 37.510822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428230, 36.912327, 37.488396>,  <36.031231, 36.943867, 37.451019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428230, 36.912327, 37.488396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119240, -0.455464, 0.882233,
		-0.027005, -0.886756, -0.461449,
		0.992498, -0.078848, 0.093437,
		36.725979, 36.888672, 37.516426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197197, 36.157879, 37.539600>,  <36.031231, 36.943867, 37.451019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197197, 36.157879, 37.539600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425007, 36.435707, 37.715424>,  <36.561695, 36.602406, 37.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425007, 36.435707, 37.715424>,  <36.197197, 36.157879, 37.539600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425007, 36.435707, 37.715424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166430, -0.426237, 0.889170,
		0.804946, -0.579563, -0.127158,
		0.569529, 0.694570, 0.439554,
		36.595867, 36.644077, 37.847290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732334, 35.820942, 37.939346>,  <36.197197, 36.157879, 37.539600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732334, 35.820942, 37.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693287, 36.188126, 38.093136>,  <36.669857, 36.408436, 38.185410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693287, 36.188126, 38.093136>,  <36.732334, 35.820942, 37.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693287, 36.188126, 38.093136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169008, -0.395998, 0.902564,
		0.980769, 0.023127, 0.193799,
		-0.097618, 0.917960, 0.384474,
		36.664001, 36.463512, 38.208477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189507, 35.797340, 38.566898>,  <36.732334, 35.820942, 37.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189507, 35.797340, 38.566898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929470, 36.098404, 38.608635>,  <36.773449, 36.279041, 38.633678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929470, 36.098404, 38.608635>,  <37.189507, 35.797340, 38.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929470, 36.098404, 38.608635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317413, -0.393756, 0.862673,
		0.690381, 0.527699, 0.494881,
		-0.650095, 0.752655, 0.104343,
		36.734440, 36.324200, 38.639938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299294, 36.148270, 39.282547>,  <37.189507, 35.797340, 38.566898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299294, 36.148270, 39.282547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931313, 36.249161, 39.162502>,  <36.710526, 36.309696, 39.090473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931313, 36.249161, 39.162502>,  <37.299294, 36.148270, 39.282547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931313, 36.249161, 39.162502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370860, -0.311764, 0.874795,
		0.127079, 0.916071, 0.380348,
		-0.919953, 0.252224, -0.300115,
		36.655327, 36.324829, 39.072468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062786, 36.549858, 39.894997>,  <37.299294, 36.148270, 39.282547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062786, 36.549858, 39.894997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743309, 36.430138, 39.686184>,  <36.551624, 36.358307, 39.560898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743309, 36.430138, 39.686184>,  <37.062786, 36.549858, 39.894997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743309, 36.430138, 39.686184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469617, -0.232387, 0.851737,
		-0.376238, 0.925427, 0.045048,
		-0.798689, -0.299301, -0.522029,
		36.503704, 36.340347, 39.529575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393444, 36.887154, 40.237190>,  <37.062786, 36.549858, 39.894997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393444, 36.887154, 40.237190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266579, 36.554161, 40.055473>,  <36.190460, 36.354366, 39.946445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266579, 36.554161, 40.055473>,  <36.393444, 36.887154, 40.237190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266579, 36.554161, 40.055473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512982, -0.252301, 0.820484,
		-0.797657, 0.493269, -0.347028,
		-0.317163, -0.832484, -0.454288,
		36.171429, 36.304417, 39.919186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633854, 36.874561, 40.434269>,  <36.393444, 36.887154, 40.237190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633854, 36.874561, 40.434269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715900, 36.503918, 40.308205>,  <35.765129, 36.281532, 40.232567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715900, 36.503918, 40.308205>,  <35.633854, 36.874561, 40.434269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715900, 36.503918, 40.308205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454919, -0.375370, 0.807556,
		-0.866588, -0.022275, -0.498527,
		0.205121, -0.926607, -0.315158,
		35.777435, 36.225937, 40.213657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071705, 36.428604, 40.655018>,  <35.633854, 36.874561, 40.434269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071705, 36.428604, 40.655018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331497, 36.144447, 40.546570>,  <35.487373, 35.973953, 40.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331497, 36.144447, 40.546570>,  <35.071705, 36.428604, 40.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331497, 36.144447, 40.546570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345907, -0.593575, 0.726648,
		-0.677142, -0.378161, -0.631248,
		0.649483, -0.710397, -0.271126,
		35.526340, 35.931328, 40.465233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708996, 35.800873, 40.488602>,  <35.071705, 36.428604, 40.655018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708996, 35.800873, 40.488602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079147, 35.682522, 40.583366>,  <35.301239, 35.611511, 40.640224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079147, 35.682522, 40.583366>,  <34.708996, 35.800873, 40.488602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079147, 35.682522, 40.583366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375084, -0.624736, 0.684848,
		-0.054624, -0.722607, -0.689098,
		0.925380, -0.295879, 0.236913,
		35.356762, 35.593758, 40.654442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603416, 35.069107, 40.538353>,  <34.708996, 35.800873, 40.488602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603416, 35.069107, 40.538353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944859, 35.165150, 40.723263>,  <35.149723, 35.222775, 40.834209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944859, 35.165150, 40.723263>,  <34.603416, 35.069107, 40.538353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944859, 35.165150, 40.723263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312422, -0.474129, 0.823161,
		0.416828, -0.847083, -0.329705,
		0.853608, 0.240109, 0.462277,
		35.200939, 35.237183, 40.861946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897984, 34.380394, 40.736317>,  <34.603416, 35.069107, 40.538353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897984, 34.380394, 40.736317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054348, 34.667614, 40.966652>,  <35.148167, 34.839947, 41.104855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054348, 34.667614, 40.966652>,  <34.897984, 34.380394, 40.736317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054348, 34.667614, 40.966652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427438, -0.412445, 0.804479,
		0.815158, -0.560617, 0.145691,
		0.390914, 0.718052, 0.575837,
		35.171623, 34.883030, 41.139404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375839, 33.775684, 40.590450>,  <34.897984, 34.380394, 40.736317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375839, 33.775684, 40.590450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308643, 33.402824, 40.462154>,  <35.268326, 33.179108, 40.385178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308643, 33.402824, 40.462154>,  <35.375839, 33.775684, 40.590450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308643, 33.402824, 40.462154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059674, 0.334379, -0.940547,
		0.983981, -0.138864, -0.111798,
		-0.167991, -0.932152, -0.320736,
		35.258247, 33.123180, 40.365932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856239, 33.736401, 40.008427>,  <35.375839, 33.775684, 40.590450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856239, 33.736401, 40.008427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544022, 33.486362, 40.007572>,  <35.356689, 33.336342, 40.007061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544022, 33.486362, 40.007572>,  <35.856239, 33.736401, 40.008427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544022, 33.486362, 40.007572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253808, 0.320049, -0.912770,
		0.571251, -0.711918, -0.408467,
		-0.780547, -0.625094, -0.002138,
		35.309856, 33.298836, 40.006931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769184, 33.526653, 39.341339>,  <35.856239, 33.736401, 40.008427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769184, 33.526653, 39.341339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414135, 33.380726, 39.453785>,  <35.201103, 33.293171, 39.521252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414135, 33.380726, 39.453785>,  <35.769184, 33.526653, 39.341339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414135, 33.380726, 39.453785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379611, 0.233888, -0.895093,
		0.260794, -0.901225, -0.346094,
		-0.887627, -0.364816, 0.281118,
		35.147846, 33.271282, 39.538120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442520, 33.207394, 38.776047>,  <35.769184, 33.526653, 39.341339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442520, 33.207394, 38.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140312, 33.290955, 39.024418>,  <34.958988, 33.341091, 39.173439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140312, 33.290955, 39.024418>,  <35.442520, 33.207394, 38.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140312, 33.290955, 39.024418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528161, 0.366534, -0.765963,
		-0.387604, -0.906648, -0.166588,
		-0.755520, 0.208906, 0.620926,
		34.913658, 33.353626, 39.210697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891354, 32.944023, 38.392082>,  <35.442520, 33.207394, 38.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891354, 32.944023, 38.392082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 33.181000, 38.659199>,  <34.602951, 33.323185, 38.819469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711102, 33.181000, 38.659199>,  <34.891354, 32.944023, 38.392082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711102, 33.181000, 38.659199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635661, 0.312276, -0.705988,
		-0.626793, -0.742627, 0.235873,
		-0.450628, 0.592443, 0.667791,
		34.575912, 33.358734, 38.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119514, 32.783894, 38.374683>,  <34.891354, 32.944023, 38.392082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119514, 32.783894, 38.374683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198559, 33.146862, 38.523029>,  <34.245987, 33.364643, 38.612038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198559, 33.146862, 38.523029>,  <34.119514, 32.783894, 38.374683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198559, 33.146862, 38.523029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793759, 0.370123, -0.482655,
		-0.575236, -0.198998, 0.793413,
		0.197613, 0.907419, 0.370865,
		34.257843, 33.419086, 38.634289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571426, 32.913383, 38.706589>,  <34.119514, 32.783894, 38.374683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571426, 32.913383, 38.706589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759121, 33.256313, 38.621914>,  <33.871738, 33.462070, 38.571110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759121, 33.256313, 38.621914>,  <33.571426, 32.913383, 38.706589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759121, 33.256313, 38.621914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868314, 0.404302, -0.287351,
		-0.160765, 0.318651, 0.934139,
		0.469239, 0.857322, -0.211691,
		33.899891, 33.513512, 38.558407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104774, 33.411720, 38.962959>,  <33.571426, 32.913383, 38.706589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104774, 33.411720, 38.962959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336319, 33.591991, 38.691132>,  <33.475246, 33.700153, 38.528034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336319, 33.591991, 38.691132>,  <33.104774, 33.411720, 38.962959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336319, 33.591991, 38.691132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815092, 0.296006, -0.498002,
		-0.023281, 0.842184, 0.538688,
		0.578864, 0.450674, -0.679566,
		33.509979, 33.727192, 38.487263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700390, 33.858181, 38.679070>,  <33.104774, 33.411720, 38.962959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700390, 33.858181, 38.679070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003914, 33.879536, 38.419422>,  <33.186028, 33.892349, 38.263634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003914, 33.879536, 38.419422>,  <32.700390, 33.858181, 38.679070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003914, 33.879536, 38.419422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638703, 0.256164, -0.725561,
		0.127549, 0.965158, 0.228475,
		0.758808, 0.053383, -0.649122,
		33.231556, 33.895550, 38.224686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547318, 34.502819, 38.330643>,  <32.700390, 33.858181, 38.679070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547318, 34.502819, 38.330643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832520, 34.323719, 38.114811>,  <33.003639, 34.216259, 37.985313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832520, 34.323719, 38.114811>,  <32.547318, 34.502819, 38.330643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832520, 34.323719, 38.114811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494018, 0.225295, -0.839755,
		0.497563, 0.865311, -0.060559,
		0.713006, -0.447748, -0.539578,
		33.046421, 34.189396, 37.952938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993641, 35.085815, 37.942009>,  <32.547318, 34.502819, 38.330643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993641, 35.085815, 37.942009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980236, 34.731743, 37.756393>,  <32.972195, 34.519299, 37.645023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980236, 34.731743, 37.756393>,  <32.993641, 35.085815, 37.942009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980236, 34.731743, 37.756393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454434, 0.427021, -0.781756,
		0.890150, 0.184680, -0.416565,
		-0.033508, -0.885182, -0.464037,
		32.970184, 34.466187, 37.617184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302380, 35.377403, 37.376240>,  <32.993641, 35.085815, 37.942009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302380, 35.377403, 37.376240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132301, 35.020542, 37.315228>,  <33.030254, 34.806423, 37.278618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132301, 35.020542, 37.315228>,  <33.302380, 35.377403, 37.376240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132301, 35.020542, 37.315228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414561, 0.341776, -0.843403,
		0.804580, -0.295375, -0.515175,
		-0.425194, -0.892156, -0.152535,
		33.004742, 34.752895, 37.269466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094856, 35.404495, 36.755402>,  <33.302380, 35.377403, 37.376240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094856, 35.404495, 36.755402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879356, 35.075890, 36.830086>,  <32.750057, 34.878727, 36.874897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879356, 35.075890, 36.830086>,  <33.094856, 35.404495, 36.755402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879356, 35.075890, 36.830086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501075, 0.134302, -0.854919,
		0.677254, -0.554144, -0.483996,
		-0.538750, -0.821515, 0.186711,
		32.717731, 34.829433, 36.886101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999672, 34.916832, 36.082603>,  <33.094856, 35.404495, 36.755402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999672, 34.916832, 36.082603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689629, 34.872963, 36.331501>,  <32.503601, 34.846642, 36.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689629, 34.872963, 36.331501>,  <32.999672, 34.916832, 36.082603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689629, 34.872963, 36.331501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631624, 0.159649, -0.758659,
		-0.016137, -0.981063, -0.193016,
		-0.775107, -0.109671, 0.622239,
		32.457096, 34.840061, 36.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430542, 34.396885, 35.854507>,  <32.999672, 34.916832, 36.082603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430542, 34.396885, 35.854507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329178, 34.727551, 36.055470>,  <32.268360, 34.925949, 36.176044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329178, 34.727551, 36.055470>,  <32.430542, 34.396885, 35.854507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329178, 34.727551, 36.055470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588476, 0.280468, -0.758310,
		-0.767777, -0.487813, 0.415400,
		-0.253407, 0.826666, 0.502403,
		32.253155, 34.975552, 36.206192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923798, 33.996498, 36.189617>,  <32.430542, 34.396885, 35.854507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923798, 33.996498, 36.189617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173065, 33.774624, 36.410152>,  <33.322628, 33.641499, 36.542473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173065, 33.774624, 36.410152>,  <32.923798, 33.996498, 36.189617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173065, 33.774624, 36.410152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500981, -0.824460, -0.263218,
		0.600562, -0.112181, -0.791670,
		0.623172, -0.554690, 0.551339,
		33.360016, 33.608215, 36.575554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402058, 33.506302, 35.779259>,  <32.923798, 33.996498, 36.189617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402058, 33.506302, 35.779259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781712, 33.540886, 35.900372>,  <34.009502, 33.561638, 35.973038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781712, 33.540886, 35.900372>,  <33.402058, 33.506302, 35.779259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781712, 33.540886, 35.900372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014150, -0.948880, 0.315321,
		0.314563, -0.303565, -0.899388,
		0.949131, 0.086462, 0.302778,
		34.066452, 33.566826, 35.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673676, 32.867290, 35.668667>,  <33.402058, 33.506302, 35.779259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673676, 32.867290, 35.668667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982185, 33.000427, 35.885681>,  <34.167294, 33.080311, 36.015888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982185, 33.000427, 35.885681>,  <33.673676, 32.867290, 35.668667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982185, 33.000427, 35.885681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192305, -0.934399, 0.299861,
		0.606752, -0.126944, -0.784689,
		0.771279, 0.332841, 0.542537,
		34.213570, 33.100281, 36.048443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243912, 32.474232, 35.526154>,  <33.673676, 32.867290, 35.668667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243912, 32.474232, 35.526154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322060, 32.602959, 35.896725>,  <34.368946, 32.680195, 36.119068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322060, 32.602959, 35.896725>,  <34.243912, 32.474232, 35.526154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322060, 32.602959, 35.896725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269362, -0.925910, 0.264831,
		0.943014, 0.197805, -0.267576,
		0.195367, 0.321814, 0.926427,
		34.380669, 32.699501, 36.174652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710258, 31.945042, 35.771286>,  <34.243912, 32.474232, 35.526154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710258, 31.945042, 35.771286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655659, 32.151810, 36.109318>,  <34.622898, 32.275871, 36.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655659, 32.151810, 36.109318>,  <34.710258, 31.945042, 35.771286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655659, 32.151810, 36.109318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446330, -0.729487, 0.518304,
		0.884397, 0.447933, -0.131143,
		-0.136498, 0.516919, 0.845081,
		34.614708, 32.306885, 36.362843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337738, 31.844290, 36.162777>,  <34.710258, 31.945042, 35.771286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337738, 31.844290, 36.162777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053600, 31.931339, 36.430523>,  <34.883118, 31.983568, 36.591171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053600, 31.931339, 36.430523>,  <35.337738, 31.844290, 36.162777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053600, 31.931339, 36.430523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287767, -0.778096, 0.558352,
		0.642343, 0.589244, 0.490090,
		-0.710342, 0.217622, 0.669369,
		34.840496, 31.996626, 36.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665665, 31.825247, 36.834038>,  <35.337738, 31.844290, 36.162777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665665, 31.825247, 36.834038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275364, 31.741179, 36.858479>,  <35.041183, 31.690739, 36.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275364, 31.741179, 36.858479>,  <35.665665, 31.825247, 36.834038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275364, 31.741179, 36.858479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210312, -0.823004, 0.527667,
		-0.060611, 0.527724, 0.847251,
		-0.975754, -0.210169, 0.061104,
		34.982639, 31.678127, 36.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676395, 31.593136, 37.456459>,  <35.665665, 31.825247, 36.834038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676395, 31.593136, 37.456459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331551, 31.462179, 37.301762>,  <35.124641, 31.383606, 37.208942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331551, 31.462179, 37.301762>,  <35.676395, 31.593136, 37.456459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331551, 31.462179, 37.301762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067624, -0.830757, 0.552513,
		-0.502178, 0.450177, 0.738348,
		-0.862116, -0.327390, -0.386745,
		35.072914, 31.363962, 37.185738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429470, 31.406822, 38.041981>,  <35.676395, 31.593136, 37.456459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429470, 31.406822, 38.041981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243240, 31.201839, 37.753361>,  <35.131504, 31.078850, 37.580189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243240, 31.201839, 37.753361>,  <35.429470, 31.406822, 38.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243240, 31.201839, 37.753361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182593, -0.853378, 0.488268,
		-0.865969, 0.095574, 0.490880,
		-0.465572, -0.512457, -0.721547,
		35.103569, 31.048103, 37.536896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936966, 30.880505, 38.437256>,  <35.429470, 31.406822, 38.041981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936966, 30.880505, 38.437256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974995, 30.753805, 38.059761>,  <34.997810, 30.677786, 37.833263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974995, 30.753805, 38.059761>,  <34.936966, 30.880505, 38.437256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974995, 30.753805, 38.059761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336761, -0.881899, 0.329919,
		-0.936779, -0.349177, 0.022829,
		0.095068, -0.316749, -0.943733,
		35.003513, 30.658781, 37.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540550, 30.093132, 38.334724>,  <34.936966, 30.880505, 38.437256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540550, 30.093132, 38.334724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820507, 30.161448, 38.057312>,  <34.988480, 30.202436, 37.890865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820507, 30.161448, 38.057312>,  <34.540550, 30.093132, 38.334724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820507, 30.161448, 38.057312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427532, -0.878004, 0.215232,
		-0.572166, -0.447146, -0.687522,
		0.699888, 0.170789, -0.693533,
		35.030472, 30.212685, 37.849251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525860, 29.528135, 37.929485>,  <34.540550, 30.093132, 38.334724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525860, 29.528135, 37.929485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895679, 29.674826, 37.888081>,  <35.117573, 29.762840, 37.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895679, 29.674826, 37.888081>,  <34.525860, 29.528135, 37.929485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895679, 29.674826, 37.888081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380259, -0.905471, 0.188479,
		-0.024605, -0.213620, -0.976607,
		0.924552, 0.366726, -0.103511,
		35.173046, 29.784843, 37.857029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925560, 28.949932, 37.757267>,  <34.525860, 29.528135, 37.929485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925560, 28.949932, 37.757267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227161, 29.195631, 37.850368>,  <35.408123, 29.343052, 37.906227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227161, 29.195631, 37.850368>,  <34.925560, 28.949932, 37.757267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227161, 29.195631, 37.850368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482946, -0.758572, 0.437414,
		0.445240, -0.217406, -0.868617,
		0.754005, 0.614250, 0.232751,
		35.453362, 29.379906, 37.920193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466000, 28.537565, 37.667671>,  <34.925560, 28.949932, 37.757267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466000, 28.537565, 37.667671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582893, 28.836407, 37.906479>,  <35.653030, 29.015713, 38.049763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582893, 28.836407, 37.906479>,  <35.466000, 28.537565, 37.667671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582893, 28.836407, 37.906479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384024, -0.663403, 0.642201,
		0.875855, 0.041594, -0.480778,
		0.292238, 0.747106, 0.597018,
		35.670567, 29.060539, 38.085583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087482, 28.307098, 38.093559>,  <35.466000, 28.537565, 37.667671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087482, 28.307098, 38.093559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962753, 28.617338, 38.313091>,  <35.887917, 28.803482, 38.444809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962753, 28.617338, 38.313091>,  <36.087482, 28.307098, 38.093559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962753, 28.617338, 38.313091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118532, -0.541360, 0.832393,
		0.942719, 0.324610, 0.076873,
		-0.311819, 0.775601, 0.548828,
		35.869209, 28.850019, 38.477741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539631, 28.292007, 38.573421>,  <36.087482, 28.307098, 38.093559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539631, 28.292007, 38.573421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235550, 28.499014, 38.730526>,  <36.053101, 28.623217, 38.824791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235550, 28.499014, 38.730526>,  <36.539631, 28.292007, 38.573421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235550, 28.499014, 38.730526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006375, -0.598580, 0.801038,
		0.649650, 0.611459, 0.451745,
		-0.760207, 0.517514, 0.392765,
		36.007488, 28.654268, 38.848354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753880, 28.571693, 39.254360>,  <36.539631, 28.292007, 38.573421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753880, 28.571693, 39.254360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354298, 28.588045, 39.262566>,  <36.114548, 28.597857, 39.267490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354298, 28.588045, 39.262566>,  <36.753880, 28.571693, 39.254360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354298, 28.588045, 39.262566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006909, -0.308504, 0.951198,
		0.045214, 0.950344, 0.307899,
		-0.998953, 0.040880, 0.020514,
		36.054611, 28.600309, 39.268719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715130, 28.901937, 39.911289>,  <36.753880, 28.571693, 39.254360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715130, 28.901937, 39.911289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337708, 28.778309, 39.863674>,  <36.111252, 28.704132, 39.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337708, 28.778309, 39.863674>,  <36.715130, 28.901937, 39.911289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337708, 28.778309, 39.863674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065961, -0.176860, 0.982023,
		-0.324571, 0.934449, 0.146491,
		-0.943559, -0.309073, -0.119040,
		36.054642, 28.685587, 39.827961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124554, 29.259012, 40.370125>,  <36.715130, 28.901937, 39.911289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124554, 29.259012, 40.370125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981014, 28.899609, 40.269001>,  <35.894890, 28.683966, 40.208328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981014, 28.899609, 40.269001>,  <36.124554, 29.259012, 40.370125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981014, 28.899609, 40.269001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225187, -0.179506, 0.957637,
		-0.905825, 0.400574, -0.137917,
		-0.358847, -0.898509, -0.252805,
		35.873360, 28.630056, 40.193161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476410, 29.176252, 40.784527>,  <36.124554, 29.259012, 40.370125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476410, 29.176252, 40.784527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576157, 28.798128, 40.700424>,  <35.636005, 28.571255, 40.649963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576157, 28.798128, 40.700424>,  <35.476410, 29.176252, 40.784527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576157, 28.798128, 40.700424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292364, -0.280471, 0.914254,
		-0.923222, -0.166514, -0.346314,
		0.249368, -0.945309, -0.210254,
		35.650967, 28.514536, 40.637348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948750, 28.804455, 40.904758>,  <35.476410, 29.176252, 40.784527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948750, 28.804455, 40.904758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245651, 28.537073, 40.923630>,  <35.423794, 28.376644, 40.934952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245651, 28.537073, 40.923630>,  <34.948750, 28.804455, 40.904758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245651, 28.537073, 40.923630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383768, -0.366310, 0.847667,
		-0.549345, -0.647291, -0.528427,
		0.742255, -0.668455, 0.047179,
		35.468327, 28.336536, 40.937782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539032, 28.226862, 41.110622>,  <34.948750, 28.804455, 40.904758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539032, 28.226862, 41.110622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920326, 28.135857, 41.190197>,  <35.149101, 28.081253, 41.237942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920326, 28.135857, 41.190197>,  <34.539032, 28.226862, 41.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920326, 28.135857, 41.190197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276944, -0.394008, 0.876390,
		-0.121008, -0.890502, -0.438591,
		0.953236, -0.227516, 0.198941,
		35.206299, 28.067602, 41.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523705, 27.571384, 41.423168>,  <34.539032, 28.226862, 41.110622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523705, 27.571384, 41.423168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853901, 27.762474, 41.543404>,  <35.052017, 27.877127, 41.615543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853901, 27.762474, 41.543404>,  <34.523705, 27.571384, 41.423168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853901, 27.762474, 41.543404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105848, -0.392086, 0.913819,
		0.554408, -0.786162, -0.273095,
		0.825486, 0.477722, 0.300589,
		35.101547, 27.905790, 41.633579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722408, 27.090080, 41.854332>,  <34.523705, 27.571384, 41.423168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722408, 27.090080, 41.854332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940811, 27.413715, 41.941280>,  <35.071854, 27.607897, 41.993450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940811, 27.413715, 41.941280>,  <34.722408, 27.090080, 41.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940811, 27.413715, 41.941280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092577, -0.199608, 0.975493,
		0.832651, -0.552748, -0.034084,
		0.546005, 0.809090, 0.217375,
		35.104614, 27.656443, 42.006493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164757, 26.867498, 42.408363>,  <34.722408, 27.090080, 41.854332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164757, 26.867498, 42.408363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184540, 27.264439, 42.453613>,  <35.196411, 27.502602, 42.480762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184540, 27.264439, 42.453613>,  <35.164757, 26.867498, 42.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184540, 27.264439, 42.453613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056673, -0.110293, 0.992282,
		0.997167, -0.055491, 0.050784,
		0.049462, 0.992349, 0.113126,
		35.199379, 27.562143, 42.487553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807613, 27.105829, 42.786064>,  <35.164757, 26.867498, 42.408363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807613, 27.105829, 42.786064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548584, 27.408180, 42.824646>,  <35.393166, 27.589590, 42.847794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548584, 27.408180, 42.824646>,  <35.807613, 27.105829, 42.786064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548584, 27.408180, 42.824646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054953, -0.079926, 0.995285,
		0.760021, 0.649818, 0.010219,
		-0.647571, 0.755876, 0.096455,
		35.354313, 27.634943, 42.853584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055504, 27.493546, 43.329712>,  <35.807613, 27.105829, 42.786064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055504, 27.493546, 43.329712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673367, 27.604216, 43.288200>,  <35.444084, 27.670618, 43.263294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673367, 27.604216, 43.288200>,  <36.055504, 27.493546, 43.329712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673367, 27.604216, 43.288200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158279, -0.182540, 0.970375,
		0.249535, 0.943467, 0.218180,
		-0.955343, 0.276676, -0.103781,
		35.386765, 27.687218, 43.257065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676517, 27.981384, 43.556286>,  <36.055504, 27.493546, 43.329712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676517, 27.981384, 43.556286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028553, 28.070578, 43.723961>,  <37.239773, 28.124094, 43.824566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028553, 28.070578, 43.723961>,  <36.676517, 27.981384, 43.556286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028553, 28.070578, 43.723961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022109, 0.901152, -0.432939,
		-0.474292, 0.371758, 0.798024,
		0.880090, 0.222983, 0.419190,
		37.292580, 28.137472, 43.849716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706345, 28.659306, 43.982349>,  <36.676517, 27.981384, 43.556286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706345, 28.659306, 43.982349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075802, 28.582218, 43.849846>,  <37.297478, 28.535965, 43.770344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075802, 28.582218, 43.849846>,  <36.706345, 28.659306, 43.982349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075802, 28.582218, 43.849846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038460, 0.906613, -0.420206,
		0.381309, 0.375382, 0.844803,
		0.923647, -0.192719, -0.331263,
		37.352898, 28.524403, 43.750465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237930, 29.285973, 44.087822>,  <36.706345, 28.659306, 43.982349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237930, 29.285973, 44.087822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381363, 29.071419, 43.782219>,  <37.467422, 28.942686, 43.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381363, 29.071419, 43.782219>,  <37.237930, 29.285973, 44.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381363, 29.071419, 43.782219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186040, 0.843082, -0.504581,
		0.914772, 0.038797, 0.402103,
		0.358582, -0.536384, -0.764010,
		37.488937, 28.910503, 43.553017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802242, 29.776787, 43.807774>,  <37.237930, 29.285973, 44.087822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802242, 29.776787, 43.807774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753174, 29.493362, 43.529812>,  <37.723732, 29.323309, 43.363033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753174, 29.493362, 43.529812>,  <37.802242, 29.776787, 43.807774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753174, 29.493362, 43.529812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127102, 0.683213, -0.719072,
		0.984275, -0.176533, 0.006249,
		-0.122671, -0.708559, -0.694907,
		37.716373, 29.280794, 43.321339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424541, 29.855909, 43.328430>,  <37.802242, 29.776787, 43.807774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424541, 29.855909, 43.328430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128536, 29.684450, 43.121109>,  <37.950932, 29.581573, 42.996716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128536, 29.684450, 43.121109>,  <38.424541, 29.855909, 43.328430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128536, 29.684450, 43.121109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248461, 0.541884, -0.802888,
		0.625021, -0.722924, -0.294497,
		-0.740011, -0.428651, -0.518307,
		37.906532, 29.555855, 42.965618>
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
