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
	<24.586979, 34.984299, 35.022785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190647, 35.037907, 35.015942>,  <23.952848, 35.070072, 35.011837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.190647, 35.037907, 35.015942>,  <24.586979, 34.984299, 35.022785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.190647, 35.037907, 35.015942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019046, 0.013187, -0.999732,
		-0.133763, -0.990890, -0.015618,
		-0.990830, 0.134024, -0.017109,
		23.893398, 35.078114, 35.010807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.407017, 34.469639, 35.546387>,  <24.586979, 34.984299, 35.022785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.407017, 34.469639, 35.546387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431200, 34.300621, 35.184658>,  <24.445709, 34.199211, 34.967621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431200, 34.300621, 35.184658>,  <24.407017, 34.469639, 35.546387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431200, 34.300621, 35.184658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711420, -0.617256, 0.335970,
		-0.700161, -0.663668, 0.263286,
		0.060457, -0.422540, -0.904325,
		24.449337, 34.173859, 34.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322170, 33.851189, 35.797600>,  <24.407017, 34.469639, 35.546387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322170, 33.851189, 35.797600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458447, 33.858868, 35.421608>,  <24.540213, 33.863476, 35.196014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458447, 33.858868, 35.421608>,  <24.322170, 33.851189, 35.797600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458447, 33.858868, 35.421608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386408, -0.914306, 0.121379,
		-0.857098, -0.404568, -0.318914,
		0.340691, 0.019197, -0.939979,
		24.560654, 33.864628, 35.139614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220764, 33.158424, 35.523880>,  <24.322170, 33.851189, 35.797600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220764, 33.158424, 35.523880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527588, 33.345463, 35.348167>,  <24.711683, 33.457687, 35.242741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527588, 33.345463, 35.348167>,  <24.220764, 33.158424, 35.523880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527588, 33.345463, 35.348167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449023, -0.880323, -0.153003,
		-0.458252, -0.079883, -0.885226,
		0.767062, 0.467601, -0.439279,
		24.757706, 33.485744, 35.216385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215942, 32.993370, 34.757339>,  <24.220764, 33.158424, 35.523880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215942, 32.993370, 34.757339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568525, 33.100098, 34.913204>,  <24.780075, 33.164135, 35.006721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.568525, 33.100098, 34.913204>,  <24.215942, 32.993370, 34.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.568525, 33.100098, 34.913204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348194, -0.924597, -0.154533,
		0.319048, 0.271892, -0.907900,
		0.881458, 0.266823, 0.389662,
		24.832962, 33.180145, 35.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776606, 32.695621, 34.178543>,  <24.215942, 32.993370, 34.757339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776606, 32.695621, 34.178543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969538, 32.768234, 34.521332>,  <25.085297, 32.811802, 34.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969538, 32.768234, 34.521332>,  <24.776606, 32.695621, 34.178543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969538, 32.768234, 34.521332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583393, -0.796342, -0.159662,
		0.653461, 0.576963, -0.490003,
		0.482329, 0.181532, 0.856974,
		25.114237, 32.822693, 34.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479818, 32.549812, 33.926861>,  <24.776606, 32.695621, 34.178543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479818, 32.549812, 33.926861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466307, 32.545929, 34.326614>,  <25.458200, 32.543598, 34.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466307, 32.545929, 34.326614>,  <25.479818, 32.549812, 33.926861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466307, 32.545929, 34.326614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715748, -0.698142, 0.017411,
		0.697541, 0.715894, 0.030529,
		-0.033778, -0.009706, 0.999382,
		25.456173, 32.543018, 34.626431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196342, 32.691715, 34.230106>,  <25.479818, 32.549812, 33.926861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196342, 32.691715, 34.230106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966103, 32.492649, 34.489651>,  <25.827959, 32.373211, 34.645378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966103, 32.492649, 34.489651>,  <26.196342, 32.691715, 34.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966103, 32.492649, 34.489651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671132, -0.740841, 0.027150,
		0.467188, 0.451096, 0.760426,
		-0.575602, -0.497662, 0.648857,
		25.793423, 32.343349, 34.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703848, 32.269543, 34.496895>,  <26.196342, 32.691715, 34.230106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703848, 32.269543, 34.496895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365721, 32.085766, 34.605961>,  <26.162844, 31.975498, 34.671402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.365721, 32.085766, 34.605961>,  <26.703848, 32.269543, 34.496895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365721, 32.085766, 34.605961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502199, -0.857456, 0.112095,
		0.182295, 0.231688, 0.955557,
		-0.845319, -0.459446, 0.272663,
		26.112125, 31.947931, 34.687759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893011, 31.748875, 34.950802>,  <26.703848, 32.269543, 34.496895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893011, 31.748875, 34.950802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533417, 31.620054, 34.832073>,  <26.317659, 31.542763, 34.760838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533417, 31.620054, 34.832073>,  <26.893011, 31.748875, 34.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533417, 31.620054, 34.832073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349277, -0.936068, -0.042227,
		-0.264246, -0.141634, 0.953999,
		-0.898988, -0.322051, -0.296821,
		26.263720, 31.523439, 34.743027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703482, 31.102863, 35.345104>,  <26.893011, 31.748875, 34.950802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703482, 31.102863, 35.345104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470480, 31.093040, 35.020123>,  <26.330679, 31.087147, 34.825134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470480, 31.093040, 35.020123>,  <26.703482, 31.102863, 35.345104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470480, 31.093040, 35.020123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371132, -0.897304, -0.238969,
		-0.723154, -0.440729, 0.531796,
		-0.582503, -0.024555, -0.812457,
		26.295729, 31.085674, 34.776386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443258, 30.421520, 35.285065>,  <26.703482, 31.102863, 35.345104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443258, 30.421520, 35.285065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416676, 30.580290, 34.918888>,  <26.400726, 30.675552, 34.699181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416676, 30.580290, 34.918888>,  <26.443258, 30.421520, 35.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416676, 30.580290, 34.918888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364642, -0.844349, -0.392570,
		-0.928773, -0.359898, -0.088621,
		-0.066458, 0.396924, -0.915442,
		26.396738, 30.699368, 34.644257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408583, 29.827147, 34.853687>,  <26.443258, 30.421520, 35.285065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408583, 29.827147, 34.853687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408978, 30.113697, 34.574600>,  <26.409214, 30.285627, 34.407150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408978, 30.113697, 34.574600>,  <26.408583, 29.827147, 34.853687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408978, 30.113697, 34.574600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453719, -0.622086, -0.638081,
		-0.891144, -0.315936, -0.325648,
		0.000988, 0.716375, -0.697715,
		26.409273, 30.328609, 34.365284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981981, 29.584330, 34.295818>,  <26.408583, 29.827147, 34.853687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981981, 29.584330, 34.295818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263165, 29.847494, 34.187740>,  <26.431875, 30.005392, 34.122894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263165, 29.847494, 34.187740>,  <25.981981, 29.584330, 34.295818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263165, 29.847494, 34.187740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305622, -0.622453, -0.720519,
		-0.642218, 0.423919, -0.638631,
		0.702959, 0.657910, -0.270191,
		26.474052, 30.044867, 34.106682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012115, 29.579586, 33.468029>,  <25.981981, 29.584330, 34.295818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012115, 29.579586, 33.468029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350697, 29.726151, 33.622566>,  <26.553844, 29.814089, 33.715290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350697, 29.726151, 33.622566>,  <26.012115, 29.579586, 33.468029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350697, 29.726151, 33.622566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525001, -0.453244, -0.720378,
		-0.088848, 0.812596, -0.576016,
		0.846451, 0.366413, 0.386344,
		26.604631, 29.836075, 33.738468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456280, 29.684637, 32.900227>,  <26.012115, 29.579586, 33.468029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456280, 29.684637, 32.900227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717731, 29.698328, 33.202644>,  <26.874603, 29.706543, 33.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717731, 29.698328, 33.202644>,  <26.456280, 29.684637, 32.900227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717731, 29.698328, 33.202644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737970, -0.250365, -0.626671,
		0.167836, 0.967546, -0.188906,
		0.653629, 0.034229, 0.756041,
		26.913820, 29.708597, 33.429455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020931, 30.165859, 32.719013>,  <26.456280, 29.684637, 32.900227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020931, 30.165859, 32.719013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167336, 29.901443, 32.981026>,  <27.255178, 29.742794, 33.138233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167336, 29.901443, 32.981026>,  <27.020931, 30.165859, 32.719013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167336, 29.901443, 32.981026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829174, -0.087909, -0.552035,
		0.422500, 0.745183, 0.515942,
		0.366011, -0.661040, 0.655028,
		27.277140, 29.703131, 33.177536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581758, 30.137314, 32.393848>,  <27.020931, 30.165859, 32.719013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581758, 30.137314, 32.393848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621445, 29.843678, 32.662556>,  <27.645256, 29.667496, 32.823780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621445, 29.843678, 32.662556>,  <27.581758, 30.137314, 32.393848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621445, 29.843678, 32.662556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795151, -0.347384, -0.497050,
		0.598240, 0.583470, 0.549247,
		0.099214, -0.734089, 0.671766,
		27.651209, 29.623451, 32.864086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378668, 29.988934, 32.419338>,  <27.581758, 30.137314, 32.393848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378668, 29.988934, 32.419338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194334, 29.662397, 32.558605>,  <28.083733, 29.466476, 32.642166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194334, 29.662397, 32.558605>,  <28.378668, 29.988934, 32.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194334, 29.662397, 32.558605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563095, -0.572183, -0.596264,
		0.685970, -0.078728, 0.723358,
		-0.460836, -0.816339, 0.348168,
		28.056084, 29.417496, 32.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915924, 29.642065, 32.721848>,  <28.378668, 29.988934, 32.419338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915924, 29.642065, 32.721848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632395, 29.378561, 32.620972>,  <28.462276, 29.220459, 32.560444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632395, 29.378561, 32.620972>,  <28.915924, 29.642065, 32.721848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632395, 29.378561, 32.620972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645662, -0.461951, -0.608047,
		0.284057, -0.593830, 0.752780,
		-0.708824, -0.658762, -0.252193,
		28.419748, 29.180933, 32.545315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187513, 29.005600, 32.651390>,  <28.915924, 29.642065, 32.721848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187513, 29.005600, 32.651390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864237, 28.918602, 32.432476>,  <28.670271, 28.866404, 32.301128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864237, 28.918602, 32.432476>,  <29.187513, 29.005600, 32.651390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864237, 28.918602, 32.432476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569217, -0.526869, -0.631191,
		-0.151068, -0.821648, 0.549612,
		-0.808190, -0.217496, -0.547289,
		28.621780, 28.853354, 32.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183397, 28.235437, 32.608852>,  <29.187513, 29.005600, 32.651390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183397, 28.235437, 32.608852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020168, 28.437691, 32.304794>,  <28.922232, 28.559042, 32.122360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020168, 28.437691, 32.304794>,  <29.183397, 28.235437, 32.608852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020168, 28.437691, 32.304794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468235, -0.598856, -0.649713,
		-0.783731, -0.621053, 0.007621,
		-0.408071, 0.505632, -0.760141,
		28.897747, 28.589380, 32.076752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788511, 27.796007, 32.168102>,  <29.183397, 28.235437, 32.608852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788511, 27.796007, 32.168102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950542, 28.089981, 31.950558>,  <29.047762, 28.266365, 31.820032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950542, 28.089981, 31.950558>,  <28.788511, 27.796007, 32.168102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950542, 28.089981, 31.950558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431823, -0.678112, -0.594720,
		-0.805878, 0.006057, -0.592051,
		0.405079, 0.734933, -0.543860,
		29.072065, 28.310461, 31.787399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602446, 27.765823, 31.447580>,  <28.788511, 27.796007, 32.168102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602446, 27.765823, 31.447580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946198, 27.967749, 31.480154>,  <29.152449, 28.088903, 31.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946198, 27.967749, 31.480154>,  <28.602446, 27.765823, 31.447580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946198, 27.967749, 31.480154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457460, -0.687860, -0.563541,
		-0.228465, 0.521550, -0.822064,
		0.859380, 0.504811, 0.081436,
		29.204012, 28.119192, 31.504585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924065, 27.832806, 30.843185>,  <28.602446, 27.765823, 31.447580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924065, 27.832806, 30.843185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202461, 27.836538, 31.130381>,  <29.369499, 27.838778, 31.302698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202461, 27.836538, 31.130381>,  <28.924065, 27.832806, 30.843185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202461, 27.836538, 31.130381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450007, -0.784859, -0.426016,
		0.559545, 0.619604, -0.550455,
		0.695991, 0.009333, 0.717990,
		29.411259, 27.839338, 31.345778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580841, 27.995279, 30.540831>,  <28.924065, 27.832806, 30.843185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580841, 27.995279, 30.540831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615850, 27.784765, 30.879148>,  <29.636856, 27.658457, 31.082138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615850, 27.784765, 30.879148>,  <29.580841, 27.995279, 30.540831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615850, 27.784765, 30.879148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429778, -0.746018, -0.508673,
		0.898683, 0.408023, 0.160892,
		0.087522, -0.526284, 0.845793,
		29.642107, 27.626881, 31.132887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458096, 27.423498, 29.898310>,  <29.580841, 27.995279, 30.540831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458096, 27.423498, 29.898310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376675, 27.614840, 29.556610>,  <29.327822, 27.729645, 29.351589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376675, 27.614840, 29.556610>,  <29.458096, 27.423498, 29.898310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376675, 27.614840, 29.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213293, 0.873228, 0.438155,
		0.955548, -0.093018, -0.279778,
		-0.203553, 0.478353, -0.854251,
		29.315609, 27.758345, 29.300335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816133, 27.753649, 29.747696>,  <29.458096, 27.423498, 29.898310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816133, 27.753649, 29.747696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932678, 27.404638, 29.590824>,  <29.002605, 27.195232, 29.496700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932678, 27.404638, 29.590824>,  <28.816133, 27.753649, 29.747696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932678, 27.404638, 29.590824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298184, 0.306704, -0.903891,
		0.908952, 0.380301, -0.170812,
		0.291362, -0.872527, -0.392180,
		29.020086, 27.142879, 29.473171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227201, 27.983692, 29.286354>,  <28.816133, 27.753649, 29.747696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227201, 27.983692, 29.286354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065189, 27.737553, 29.015860>,  <27.967981, 27.589869, 28.853563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065189, 27.737553, 29.015860>,  <28.227201, 27.983692, 29.286354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065189, 27.737553, 29.015860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671013, -0.302324, 0.677009,
		-0.621039, 0.727974, -0.290456,
		-0.405032, -0.615349, -0.676235,
		27.943680, 27.552948, 28.812988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540497, 28.107538, 29.446739>,  <28.227201, 27.983692, 29.286354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540497, 28.107538, 29.446739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659224, 27.747101, 29.320293>,  <27.730459, 27.530838, 29.244427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659224, 27.747101, 29.320293>,  <27.540497, 28.107538, 29.446739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659224, 27.747101, 29.320293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480592, -0.427013, 0.765958,
		-0.825185, -0.075428, -0.559804,
		0.296819, -0.901094, -0.316114,
		27.748270, 27.476772, 29.225460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897749, 27.621696, 29.449080>,  <27.540497, 28.107538, 29.446739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897749, 27.621696, 29.449080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246893, 27.432779, 29.498154>,  <27.456379, 27.319429, 29.527599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246893, 27.432779, 29.498154>,  <26.897749, 27.621696, 29.449080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246893, 27.432779, 29.498154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385786, -0.513959, 0.766169,
		-0.298799, -0.716091, -0.630819,
		0.872862, -0.472292, 0.122687,
		27.508751, 27.291092, 29.534960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321745, 27.861092, 28.782269>,  <26.897749, 27.621696, 29.449080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321745, 27.861092, 28.782269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079653, 28.061666, 28.534960>,  <26.934397, 28.182011, 28.386576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079653, 28.061666, 28.534960>,  <27.321745, 27.861092, 28.782269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079653, 28.061666, 28.534960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090661, 0.815036, 0.572273,
		0.790871, 0.290304, -0.538746,
		-0.605230, 0.501437, -0.618269,
		26.898085, 28.212097, 28.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530523, 28.509596, 28.454020>,  <27.321745, 27.861092, 28.782269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530523, 28.509596, 28.454020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141300, 28.596228, 28.485638>,  <26.907766, 28.648207, 28.504608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141300, 28.596228, 28.485638>,  <27.530523, 28.509596, 28.454020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141300, 28.596228, 28.485638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226399, 0.832822, 0.505125,
		0.043569, 0.509412, -0.859419,
		-0.973060, 0.216579, 0.079045,
		26.849382, 28.661201, 28.509352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509069, 29.274107, 28.411442>,  <27.530523, 28.509596, 28.454020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509069, 29.274107, 28.411442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165127, 29.150272, 28.573824>,  <26.958761, 29.075972, 28.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165127, 29.150272, 28.573824>,  <27.509069, 29.274107, 28.411442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165127, 29.150272, 28.573824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089628, 0.874349, 0.476949,
		-0.502604, 0.373723, -0.779564,
		-0.859858, -0.309587, 0.405955,
		26.907169, 29.057396, 28.695610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091158, 29.811960, 28.345959>,  <27.509069, 29.274107, 28.411442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091158, 29.811960, 28.345959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975986, 29.590363, 28.658417>,  <26.906883, 29.457403, 28.845892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975986, 29.590363, 28.658417>,  <27.091158, 29.811960, 28.345959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975986, 29.590363, 28.658417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135292, 0.783974, 0.605872,
		-0.948047, 0.280131, -0.150779,
		-0.287930, -0.553995, 0.781143,
		26.889606, 29.424164, 28.892759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696611, 30.268236, 28.759453>,  <27.091158, 29.811960, 28.345959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696611, 30.268236, 28.759453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754528, 29.970602, 29.020336>,  <26.789278, 29.792021, 29.176867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754528, 29.970602, 29.020336>,  <26.696611, 30.268236, 28.759453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754528, 29.970602, 29.020336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029405, 0.662097, 0.748841,
		-0.989026, -0.089247, 0.117745,
		0.144790, -0.744085, 0.652207,
		26.797966, 29.747377, 29.215998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112032, 30.282698, 29.295980>,  <26.696611, 30.268236, 28.759453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112032, 30.282698, 29.295980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430084, 30.107075, 29.463308>,  <26.620916, 30.001701, 29.563705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430084, 30.107075, 29.463308>,  <26.112032, 30.282698, 29.295980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430084, 30.107075, 29.463308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052639, 0.637228, 0.768875,
		-0.604148, -0.633377, 0.483569,
		0.795132, -0.439060, 0.418321,
		26.668623, 29.975357, 29.588804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901308, 30.148537, 30.063215>,  <26.112032, 30.282698, 29.295980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901308, 30.148537, 30.063215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299744, 30.139385, 30.029070>,  <26.538805, 30.133894, 30.008583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299744, 30.139385, 30.029070>,  <25.901308, 30.148537, 30.063215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299744, 30.139385, 30.029070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079243, 0.658840, 0.748098,
		0.039126, -0.751936, 0.658075,
		0.996087, -0.022878, -0.085363,
		26.598570, 30.132523, 30.003462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159151, 30.187328, 30.666851>,  <25.901308, 30.148537, 30.063215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159151, 30.187328, 30.666851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479673, 30.327362, 30.472799>,  <26.671986, 30.411383, 30.356367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479673, 30.327362, 30.472799>,  <26.159151, 30.187328, 30.666851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479673, 30.327362, 30.472799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131074, 0.688474, 0.713318,
		0.583722, -0.635173, 0.505791,
		0.801305, 0.350083, -0.485132,
		26.720064, 30.432386, 30.327259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738892, 30.191847, 31.153984>,  <26.159151, 30.187328, 30.666851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738892, 30.191847, 31.153984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828154, 30.474442, 30.885334>,  <26.881710, 30.643999, 30.724144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.828154, 30.474442, 30.885334>,  <26.738892, 30.191847, 31.153984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828154, 30.474442, 30.885334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081650, 0.673029, 0.735095,
		0.971358, -0.218877, 0.092504,
		0.223153, 0.706488, -0.671623,
		26.895100, 30.686388, 30.683847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065075, 30.554958, 31.548933>,  <26.738892, 30.191847, 31.153984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065075, 30.554958, 31.548933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044783, 30.809870, 31.241348>,  <27.032606, 30.962816, 31.056797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044783, 30.809870, 31.241348>,  <27.065075, 30.554958, 31.548933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044783, 30.809870, 31.241348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000493, 0.769936, 0.638121,
		0.998712, 0.032753, -0.038747,
		-0.050733, 0.637280, -0.768961,
		27.029562, 31.001053, 31.010660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604725, 30.864019, 31.564653>,  <27.065075, 30.554958, 31.548933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604725, 30.864019, 31.564653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337856, 31.095749, 31.377350>,  <27.177734, 31.234787, 31.264969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337856, 31.095749, 31.377350>,  <27.604725, 30.864019, 31.564653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337856, 31.095749, 31.377350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020113, 0.642394, 0.766110,
		0.744633, 0.501709, -0.440239,
		-0.667171, 0.579325, -0.468257,
		27.137705, 31.269547, 31.236874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832651, 31.450918, 31.743958>,  <27.604725, 30.864019, 31.564653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832651, 31.450918, 31.743958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473806, 31.543579, 31.593479>,  <27.258499, 31.599176, 31.503193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473806, 31.543579, 31.593479>,  <27.832651, 31.450918, 31.743958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473806, 31.543579, 31.593479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070674, 0.765293, 0.639790,
		0.436109, 0.600552, -0.670183,
		-0.897114, 0.231654, -0.376195,
		27.204672, 31.613075, 31.480621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840073, 32.185177, 31.777246>,  <27.832651, 31.450918, 31.743958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840073, 32.185177, 31.777246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456097, 32.093338, 31.712999>,  <27.225710, 32.038235, 31.674452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.456097, 32.093338, 31.712999>,  <27.840073, 32.185177, 31.777246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456097, 32.093338, 31.712999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279926, 0.811129, 0.513528,
		0.012379, 0.537919, -0.842906,
		-0.959942, -0.229594, -0.160618,
		27.168114, 32.024460, 31.664814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462074, 32.798042, 31.565645>,  <27.840073, 32.185177, 31.777246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462074, 32.798042, 31.565645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180788, 32.553669, 31.711109>,  <27.012016, 32.407043, 31.798388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180788, 32.553669, 31.711109>,  <27.462074, 32.798042, 31.565645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180788, 32.553669, 31.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401850, 0.763490, 0.505568,
		-0.586520, 0.209386, -0.782402,
		-0.703215, -0.610934, 0.363660,
		26.969824, 32.370388, 31.820208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783009, 33.157055, 31.409731>,  <27.462074, 32.798042, 31.565645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783009, 33.157055, 31.409731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737890, 32.918091, 31.727316>,  <26.710819, 32.774712, 31.917866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737890, 32.918091, 31.727316>,  <26.783009, 33.157055, 31.409731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737890, 32.918091, 31.727316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330323, 0.776159, 0.537089,
		-0.937104, -0.201682, -0.284887,
		-0.112796, -0.597413, 0.793962,
		26.704052, 32.738869, 31.965504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071798, 33.334694, 31.793789>,  <26.783009, 33.157055, 31.409731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071798, 33.334694, 31.793789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292011, 33.146225, 32.069443>,  <26.424139, 33.033142, 32.234837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292011, 33.146225, 32.069443>,  <26.071798, 33.334694, 31.793789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292011, 33.146225, 32.069443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219159, 0.714971, 0.663917,
		-0.805533, -0.516538, 0.290353,
		0.550532, -0.471173, 0.689137,
		26.457170, 33.004871, 32.276184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736395, 33.478943, 32.357624>,  <26.071798, 33.334694, 31.793789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736395, 33.478943, 32.357624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095728, 33.368938, 32.494659>,  <26.311327, 33.302937, 32.576881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.095728, 33.368938, 32.494659>,  <25.736395, 33.478943, 32.357624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095728, 33.368938, 32.494659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030306, 0.739177, 0.672829,
		-0.438270, -0.614806, 0.655692,
		0.898332, -0.275009, 0.342592,
		26.365227, 33.286434, 32.597439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639992, 33.516384, 33.070564>,  <25.736395, 33.478943, 32.357624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639992, 33.516384, 33.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039200, 33.512772, 33.045670>,  <26.278725, 33.510605, 33.030731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039200, 33.512772, 33.045670>,  <25.639992, 33.516384, 33.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039200, 33.512772, 33.045670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052892, 0.655866, 0.753022,
		0.034021, -0.754824, 0.655045,
		0.998021, -0.009028, -0.062238,
		26.338606, 33.510063, 33.026997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048153, 33.248558, 33.721085>,  <25.639992, 33.516384, 33.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048153, 33.248558, 33.721085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295408, 33.491432, 33.521389>,  <26.443762, 33.637157, 33.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295408, 33.491432, 33.521389>,  <26.048153, 33.248558, 33.721085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295408, 33.491432, 33.521389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005636, 0.631665, 0.775221,
		0.786050, -0.482007, 0.387033,
		0.618137, 0.607181, -0.499237,
		26.480850, 33.673588, 33.371616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442858, 33.631348, 34.203732>,  <26.048153, 33.248558, 33.721085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442858, 33.631348, 34.203732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513174, 33.862446, 33.884907>,  <26.555365, 34.001106, 33.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513174, 33.862446, 33.884907>,  <26.442858, 33.631348, 34.203732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513174, 33.862446, 33.884907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263270, 0.752586, 0.603575,
		0.948570, -0.315946, -0.019805,
		0.175792, 0.577747, -0.797060,
		26.565912, 34.035770, 33.645790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148201, 33.865192, 34.315037>,  <26.442858, 33.631348, 34.203732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148201, 33.865192, 34.315037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963169, 34.113644, 34.061985>,  <26.852150, 34.262714, 33.910156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963169, 34.113644, 34.061985>,  <27.148201, 33.865192, 34.315037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963169, 34.113644, 34.061985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215065, 0.770864, 0.599597,
		0.860097, 0.141305, -0.490170,
		-0.462580, 0.621130, -0.632628,
		26.824394, 34.299984, 33.872196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599899, 34.503807, 34.291733>,  <27.148201, 33.865192, 34.315037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599899, 34.503807, 34.291733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248955, 34.634254, 34.150944>,  <27.038387, 34.712524, 34.066471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248955, 34.634254, 34.150944>,  <27.599899, 34.503807, 34.291733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248955, 34.634254, 34.150944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048847, 0.790423, 0.610610,
		0.477337, 0.518533, -0.709417,
		-0.877362, 0.326120, -0.351969,
		26.985746, 34.732090, 34.045353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722124, 35.205055, 34.278992>,  <27.599899, 34.503807, 34.291733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722124, 35.205055, 34.278992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324791, 35.168568, 34.250790>,  <27.086391, 35.146675, 34.233868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324791, 35.168568, 34.250790>,  <27.722124, 35.205055, 34.278992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324791, 35.168568, 34.250790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115229, 0.805453, 0.581351,
		0.003754, 0.585598, -0.810593,
		-0.993332, -0.091221, -0.070502,
		27.026791, 35.141201, 34.229641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537321, 35.820255, 34.174198>,  <27.722124, 35.205055, 34.278992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537321, 35.820255, 34.174198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196129, 35.646660, 34.290180>,  <26.991413, 35.542503, 34.359768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196129, 35.646660, 34.290180>,  <27.537321, 35.820255, 34.174198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196129, 35.646660, 34.290180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185015, 0.770866, 0.609536,
		-0.488049, 0.466278, -0.737830,
		-0.852982, -0.433993, 0.289952,
		26.940235, 35.516460, 34.377167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913080, 36.284611, 34.092964>,  <27.537321, 35.820255, 34.174198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913080, 36.284611, 34.092964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859377, 36.026474, 34.393764>,  <26.827156, 35.871590, 34.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859377, 36.026474, 34.393764>,  <26.913080, 36.284611, 34.092964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859377, 36.026474, 34.393764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474093, 0.708217, 0.523129,
		-0.870178, -0.286285, -0.401037,
		-0.134257, -0.645344, 0.752001,
		26.819099, 35.832870, 34.619366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212769, 36.835770, 34.561089>,  <26.913080, 36.284611, 34.092964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212769, 36.835770, 34.561089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353226, 36.529724, 34.776978>,  <27.437500, 36.346096, 34.906509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353226, 36.529724, 34.776978>,  <27.212769, 36.835770, 34.561089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353226, 36.529724, 34.776978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936194, -0.277366, 0.215890,
		-0.015481, -0.581090, -0.813692,
		0.351142, -0.765116, 0.539719,
		27.458569, 36.300190, 34.938892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721552, 37.072620, 35.079559>,  <27.212769, 36.835770, 34.561089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721552, 37.072620, 35.079559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791782, 37.446621, 34.956310>,  <27.833920, 37.671021, 34.882359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791782, 37.446621, 34.956310>,  <27.721552, 37.072620, 35.079559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791782, 37.446621, 34.956310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676706, 0.341946, 0.652029,
		0.715012, 0.094032, 0.692759,
		0.175575, 0.935003, -0.308127,
		27.844456, 37.727123, 34.863873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368139, 37.291687, 34.784618>,  <27.721552, 37.072620, 35.079559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368139, 37.291687, 34.784618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580217, 37.614571, 34.888393>,  <28.707464, 37.808300, 34.950657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580217, 37.614571, 34.888393>,  <28.368139, 37.291687, 34.784618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580217, 37.614571, 34.888393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550109, -0.094660, -0.829711,
		-0.645193, 0.582625, -0.494241,
		0.530195, 0.807210, 0.259433,
		28.739275, 37.856735, 34.966225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470751, 37.721111, 34.181751>,  <28.368139, 37.291687, 34.784618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470751, 37.721111, 34.181751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779911, 37.760269, 34.432522>,  <28.965408, 37.783764, 34.582985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779911, 37.760269, 34.432522>,  <28.470751, 37.721111, 34.181751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779911, 37.760269, 34.432522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629345, 0.007739, -0.777088,
		-0.080922, 0.995167, -0.055625,
		0.772902, 0.097890, 0.626930,
		29.011782, 37.789635, 34.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775127, 37.585052, 33.560284>,  <28.470751, 37.721111, 34.181751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775127, 37.585052, 33.560284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545969, 37.911053, 33.595058>,  <28.408474, 38.106655, 33.615925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545969, 37.911053, 33.595058>,  <28.775127, 37.585052, 33.560284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545969, 37.911053, 33.595058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507963, 0.269802, 0.818035,
		0.643244, 0.512812, -0.568560,
		-0.572896, 0.815004, 0.086941,
		28.374100, 38.155556, 33.621140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195589, 38.188595, 33.726727>,  <28.775127, 37.585052, 33.560284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195589, 38.188595, 33.726727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853743, 38.261127, 33.921356>,  <28.648636, 38.304649, 34.038132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853743, 38.261127, 33.921356>,  <29.195589, 38.188595, 33.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853743, 38.261127, 33.921356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510050, 0.117426, 0.852091,
		0.097376, 0.976386, -0.192843,
		-0.854615, 0.181333, 0.486571,
		28.597359, 38.315529, 34.067329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047781, 38.932274, 34.051899>,  <29.195589, 38.188595, 33.726727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047781, 38.932274, 34.051899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914450, 38.598408, 34.227276>,  <28.834452, 38.398087, 34.332500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914450, 38.598408, 34.227276>,  <29.047781, 38.932274, 34.051899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914450, 38.598408, 34.227276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545942, 0.208261, 0.811526,
		-0.768662, 0.509865, 0.386260,
		-0.333326, -0.834665, 0.438439,
		28.814451, 38.348007, 34.358807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760605, 39.111431, 34.744640>,  <29.047781, 38.932274, 34.051899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760605, 39.111431, 34.744640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943460, 38.756401, 34.721924>,  <29.053175, 38.543381, 34.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943460, 38.756401, 34.721924>,  <28.760605, 39.111431, 34.744640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943460, 38.756401, 34.721924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734341, 0.340653, 0.587111,
		-0.501763, -0.310093, 0.807512,
		0.457140, -0.887580, -0.056787,
		29.080603, 38.490128, 34.704887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999653, 39.032448, 35.465118>,  <28.760605, 39.111431, 34.744640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999653, 39.032448, 35.465118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210428, 38.849697, 35.178455>,  <29.336893, 38.740047, 35.006458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210428, 38.849697, 35.178455>,  <28.999653, 39.032448, 35.465118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210428, 38.849697, 35.178455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849785, 0.297323, 0.435276,
		0.014214, -0.838371, 0.544915,
		0.526938, -0.456874, -0.716661,
		29.368509, 38.712635, 34.963459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413294, 38.407391, 35.721638>,  <28.999653, 39.032448, 35.465118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413294, 38.407391, 35.721638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614162, 38.564056, 35.413242>,  <29.734684, 38.658054, 35.228207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614162, 38.564056, 35.413242>,  <29.413294, 38.407391, 35.721638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614162, 38.564056, 35.413242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764041, 0.216651, 0.607703,
		0.405050, -0.894239, -0.190451,
		0.502170, 0.391663, -0.770990,
		29.764814, 38.681557, 35.181946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092810, 38.308666, 35.932297>,  <29.413294, 38.407391, 35.721638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092810, 38.308666, 35.932297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156313, 38.533070, 35.607319>,  <30.194414, 38.667713, 35.412334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156313, 38.533070, 35.607319>,  <30.092810, 38.308666, 35.932297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156313, 38.533070, 35.607319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859666, 0.326145, 0.393197,
		0.485561, -0.760852, -0.430504,
		0.158758, 0.561011, -0.812442,
		30.203939, 38.701374, 35.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756538, 38.122345, 35.771278>,  <30.092810, 38.308666, 35.932297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756538, 38.122345, 35.771278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699837, 38.487759, 35.618774>,  <30.665815, 38.707008, 35.527271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699837, 38.487759, 35.618774>,  <30.756538, 38.122345, 35.771278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699837, 38.487759, 35.618774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844654, 0.312469, 0.434652,
		0.516202, -0.260420, -0.815915,
		-0.141756, 0.913534, -0.381262,
		30.657310, 38.761818, 35.504395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369987, 38.256290, 35.532234>,  <30.756538, 38.122345, 35.771278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369987, 38.256290, 35.532234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207333, 38.621441, 35.517838>,  <31.109739, 38.840530, 35.509201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207333, 38.621441, 35.517838>,  <31.369987, 38.256290, 35.532234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207333, 38.621441, 35.517838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854096, 0.393847, 0.339714,
		0.324293, 0.107400, -0.939840,
		-0.406638, 0.912880, -0.035992,
		31.085340, 38.895306, 35.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909632, 38.654705, 35.368404>,  <31.369987, 38.256290, 35.532234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909632, 38.654705, 35.368404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637983, 38.890629, 35.543182>,  <31.474995, 39.032181, 35.648048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637983, 38.890629, 35.543182>,  <31.909632, 38.654705, 35.368404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637983, 38.890629, 35.543182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689946, 0.309746, 0.654241,
		0.250534, 0.745778, -0.617290,
		-0.679122, 0.589807, 0.436945,
		31.434246, 39.067570, 35.674267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396214, 39.119404, 35.552048>,  <31.909632, 38.654705, 35.368404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396214, 39.119404, 35.552048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079353, 39.203136, 35.781372>,  <31.889238, 39.253376, 35.918968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079353, 39.203136, 35.781372>,  <32.396214, 39.119404, 35.552048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079353, 39.203136, 35.781372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609398, 0.219356, 0.761917,
		0.033737, 0.952923, -0.301330,
		-0.792146, 0.209335, 0.573309,
		31.841709, 39.265938, 35.953365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551163, 39.761738, 35.961723>,  <32.396214, 39.119404, 35.552048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551163, 39.761738, 35.961723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252056, 39.586765, 36.161522>,  <32.072590, 39.481781, 36.281399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252056, 39.586765, 36.161522>,  <32.551163, 39.761738, 35.961723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252056, 39.586765, 36.161522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389276, 0.320596, 0.863529,
		-0.537869, 0.840162, -0.069451,
		-0.747770, -0.437430, 0.499494,
		32.027725, 39.455536, 36.311371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127949, 40.267227, 36.361519>,  <32.551163, 39.761738, 35.961723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127949, 40.267227, 36.361519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129730, 39.908184, 36.537830>,  <32.130798, 39.692760, 36.643616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129730, 39.908184, 36.537830>,  <32.127949, 40.267227, 36.361519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129730, 39.908184, 36.537830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302972, 0.421274, 0.854831,
		-0.952989, 0.129737, 0.273825,
		0.004452, -0.897606, 0.440776,
		32.131065, 39.638901, 36.670063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085052, 40.491764, 37.085773>,  <32.127949, 40.267227, 36.361519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085052, 40.491764, 37.085773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146915, 40.096764, 37.097912>,  <32.184032, 39.859764, 37.105194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146915, 40.096764, 37.097912>,  <32.085052, 40.491764, 37.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146915, 40.096764, 37.097912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280877, 0.073398, 0.956933,
		-0.947201, -0.139472, 0.288718,
		0.154657, -0.987502, 0.030348,
		32.193314, 39.800514, 37.107018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955191, 40.369106, 37.737885>,  <32.085052, 40.491764, 37.085773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955191, 40.369106, 37.737885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165497, 40.040039, 37.651367>,  <32.291679, 39.842598, 37.599457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165497, 40.040039, 37.651367>,  <31.955191, 40.369106, 37.737885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165497, 40.040039, 37.651367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322097, -0.042795, 0.945739,
		-0.787288, -0.566905, 0.242479,
		0.525767, -0.822671, -0.216290,
		32.323227, 39.793240, 37.586479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780224, 39.865639, 38.174435>,  <31.955191, 40.369106, 37.737885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780224, 39.865639, 38.174435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.739140, 38.054283>,  <32.356140, 39.663239, 37.982193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140171, 39.739140, 38.054283>,  <31.780224, 39.865639, 38.174435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140171, 39.739140, 38.054283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260614, -0.162358, 0.951693,
		-0.349743, -0.934679, -0.063681,
		0.899867, -0.316252, -0.300374,
		32.410130, 39.644264, 37.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965147, 39.257145, 38.557995>,  <31.780224, 39.865639, 38.174435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965147, 39.257145, 38.557995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323685, 39.393551, 38.444664>,  <32.538807, 39.475395, 38.376667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323685, 39.393551, 38.444664>,  <31.965147, 39.257145, 38.557995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323685, 39.393551, 38.444664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348350, -0.146398, 0.925862,
		0.274257, -0.928588, -0.250016,
		0.896346, 0.341017, -0.283322,
		32.592590, 39.495857, 38.359669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455040, 38.722237, 38.724815>,  <31.965147, 39.257145, 38.557995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455040, 38.722237, 38.724815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641422, 39.074585, 38.691456>,  <32.753250, 39.285995, 38.671440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641422, 39.074585, 38.691456>,  <32.455040, 38.722237, 38.724815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641422, 39.074585, 38.691456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299847, -0.068518, 0.951524,
		0.832454, -0.468373, -0.296052,
		0.465954, 0.880870, -0.083402,
		32.781208, 39.338844, 38.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152966, 38.631371, 39.028564>,  <32.455040, 38.722237, 38.724815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152966, 38.631371, 39.028564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036255, 39.012981, 39.056007>,  <32.966228, 39.241947, 39.072472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036255, 39.012981, 39.056007>,  <33.152966, 38.631371, 39.028564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036255, 39.012981, 39.056007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234085, 0.001680, 0.972215,
		0.927401, 0.299726, -0.223813,
		-0.291774, 0.954024, 0.068604,
		32.948723, 39.299187, 39.076588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519962, 38.888229, 39.614799>,  <33.152966, 38.631371, 39.028564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519962, 38.888229, 39.614799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230457, 39.156586, 39.550201>,  <33.056755, 39.317600, 39.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230457, 39.156586, 39.550201>,  <33.519962, 38.888229, 39.614799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230457, 39.156586, 39.550201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081591, 0.315587, 0.945382,
		0.685208, 0.671056, -0.283148,
		-0.723763, 0.670886, -0.161491,
		33.013329, 39.357853, 39.501755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813156, 39.464474, 40.007484>,  <33.519962, 38.888229, 39.614799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813156, 39.464474, 40.007484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421227, 39.509003, 39.941101>,  <33.186066, 39.535721, 39.901272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421227, 39.509003, 39.941101>,  <33.813156, 39.464474, 40.007484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421227, 39.509003, 39.941101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134132, 0.249270, 0.959100,
		0.148135, 0.962015, -0.229310,
		-0.979829, 0.111319, -0.165963,
		33.127277, 39.542397, 39.891312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697945, 39.905579, 40.450359>,  <33.813156, 39.464474, 40.007484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697945, 39.905579, 40.450359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335461, 39.753399, 40.376549>,  <33.117970, 39.662090, 40.332264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335461, 39.753399, 40.376549>,  <33.697945, 39.905579, 40.450359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335461, 39.753399, 40.376549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228263, 0.072818, 0.970873,
		-0.355929, 0.921931, -0.152830,
		-0.906207, -0.380447, -0.184525,
		33.063599, 39.639263, 40.321190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231941, 40.304432, 40.781872>,  <33.697945, 39.905579, 40.450359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231941, 40.304432, 40.781872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013416, 39.973881, 40.727268>,  <32.882301, 39.775551, 40.694504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013416, 39.973881, 40.727268>,  <33.231941, 40.304432, 40.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013416, 39.973881, 40.727268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259591, 0.012097, 0.965643,
		-0.796337, 0.562982, -0.221130,
		-0.546315, -0.826380, -0.136512,
		32.849522, 39.725967, 40.686314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529053, 40.511406, 40.871349>,  <33.231941, 40.304432, 40.781872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529053, 40.511406, 40.871349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547161, 40.116287, 40.930965>,  <32.558025, 39.879215, 40.966736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547161, 40.116287, 40.930965>,  <32.529053, 40.511406, 40.871349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547161, 40.116287, 40.930965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205201, 0.136815, 0.969110,
		-0.977672, -0.074460, -0.196502,
		0.045275, -0.987794, 0.149039,
		32.560745, 39.819950, 40.975677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938751, 40.511318, 41.271740>,  <32.529053, 40.511406, 40.871349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938751, 40.511318, 41.271740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222164, 40.234207, 41.325462>,  <32.392212, 40.067940, 41.357697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222164, 40.234207, 41.325462>,  <31.938751, 40.511318, 41.271740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222164, 40.234207, 41.325462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194772, -0.009055, 0.980807,
		-0.678266, -0.721093, -0.141349,
		0.708533, -0.692779, 0.134307,
		32.434723, 40.026375, 41.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571413, 39.973671, 41.663757>,  <31.938751, 40.511318, 41.271740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571413, 39.973671, 41.663757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958626, 39.896481, 41.727848>,  <32.190952, 39.850166, 41.766300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958626, 39.896481, 41.727848>,  <31.571413, 39.973671, 41.663757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958626, 39.896481, 41.727848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203235, -0.229120, 0.951945,
		-0.146993, -0.954078, -0.261015,
		0.968033, -0.192977, 0.160223,
		32.249035, 39.838589, 41.775913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692076, 39.427536, 42.282970>,  <31.571413, 39.973671, 41.663757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692076, 39.427536, 42.282970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034180, 39.624237, 42.217602>,  <32.239441, 39.742260, 42.178383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034180, 39.624237, 42.217602>,  <31.692076, 39.427536, 42.282970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034180, 39.624237, 42.217602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199314, -0.021074, 0.979709,
		0.478333, -0.870479, -0.116037,
		0.855261, 0.491755, -0.163418,
		32.290760, 39.771763, 42.168575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188061, 39.136738, 42.730347>,  <31.692076, 39.427536, 42.282970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188061, 39.136738, 42.730347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347462, 39.492630, 42.641281>,  <32.443100, 39.706165, 42.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347462, 39.492630, 42.641281>,  <32.188061, 39.136738, 42.730347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347462, 39.492630, 42.641281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306351, 0.099708, 0.946683,
		0.864493, -0.445466, -0.232836,
		0.398499, 0.889730, -0.222665,
		32.467010, 39.759548, 42.574482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687057, 39.234802, 43.291439>,  <32.188061, 39.136738, 42.730347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687057, 39.234802, 43.291439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703793, 39.590965, 43.110142>,  <32.713833, 39.804661, 43.001362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703793, 39.590965, 43.110142>,  <32.687057, 39.234802, 43.291439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703793, 39.590965, 43.110142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410092, 0.398363, 0.820446,
		0.911084, -0.220201, -0.348479,
		0.041842, 0.890404, -0.453245,
		32.716347, 39.858086, 42.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394657, 39.501583, 43.267593>,  <32.687057, 39.234802, 43.291439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394657, 39.501583, 43.267593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151810, 39.819229, 43.256371>,  <33.006100, 40.009819, 43.249638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151810, 39.819229, 43.256371>,  <33.394657, 39.501583, 43.267593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151810, 39.819229, 43.256371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439924, 0.365315, 0.820373,
		0.661721, 0.485720, -0.571140,
		-0.607117, 0.794117, -0.028057,
		32.969673, 40.057465, 43.247955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746635, 40.023205, 43.510681>,  <33.394657, 39.501583, 43.267593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746635, 40.023205, 43.510681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375748, 40.169464, 43.543087>,  <33.153214, 40.257221, 43.562531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375748, 40.169464, 43.543087>,  <33.746635, 40.023205, 43.510681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375748, 40.169464, 43.543087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283544, 0.544057, 0.789686,
		0.244674, 0.755183, -0.608139,
		-0.927220, 0.365650, 0.081011,
		33.097580, 40.279160, 43.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862007, 40.792000, 43.499836>,  <33.746635, 40.023205, 43.510681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862007, 40.792000, 43.499836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519779, 40.686031, 43.677742>,  <33.314442, 40.622452, 43.784485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519779, 40.686031, 43.677742>,  <33.862007, 40.792000, 43.499836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519779, 40.686031, 43.677742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257403, 0.527721, 0.809477,
		-0.449161, 0.807048, -0.383310,
		-0.855569, -0.264920, 0.444769,
		33.263107, 40.606556, 43.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631985, 41.435261, 43.890751>,  <33.862007, 40.792000, 43.499836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631985, 41.435261, 43.890751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442913, 41.124886, 44.057842>,  <33.329472, 40.938660, 44.158096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442913, 41.124886, 44.057842>,  <33.631985, 41.435261, 43.890751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442913, 41.124886, 44.057842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043827, 0.494140, 0.868277,
		-0.880144, 0.392109, -0.267577,
		-0.472679, -0.775936, 0.417729,
		33.301109, 40.892105, 44.183163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201607, 41.726337, 44.381729>,  <33.631985, 41.435261, 43.890751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201607, 41.726337, 44.381729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159332, 41.349030, 44.507637>,  <33.133968, 41.122646, 44.583183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159332, 41.349030, 44.507637>,  <33.201607, 41.726337, 44.381729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159332, 41.349030, 44.507637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128277, 0.326831, 0.936337,
		-0.986090, 0.058584, -0.155542,
		-0.105691, -0.943265, 0.314770,
		33.127625, 41.066051, 44.602070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424728, 41.615742, 44.693069>,  <33.201607, 41.726337, 44.381729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424728, 41.615742, 44.693069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633621, 41.315228, 44.854481>,  <32.758957, 41.134918, 44.951328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633621, 41.315228, 44.854481>,  <32.424728, 41.615742, 44.693069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633621, 41.315228, 44.854481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235987, 0.327394, 0.914945,
		-0.819501, -0.573043, -0.006318,
		0.522234, -0.751289, 0.403530,
		32.790291, 41.089840, 44.975540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036179, 41.220486, 45.201050>,  <32.424728, 41.615742, 44.693069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036179, 41.220486, 45.201050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406460, 41.113968, 45.308506>,  <32.628628, 41.050056, 45.372978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406460, 41.113968, 45.308506>,  <32.036179, 41.220486, 45.201050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406460, 41.113968, 45.308506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183781, 0.304110, 0.934741,
		-0.330614, -0.914660, 0.232575,
		0.925699, -0.266296, 0.268640,
		32.684170, 41.034081, 45.389099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906805, 40.876938, 45.712967>,  <32.036179, 41.220486, 45.201050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906805, 40.876938, 45.712967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295387, 40.960659, 45.757622>,  <32.528538, 41.010891, 45.784412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295387, 40.960659, 45.757622>,  <31.906805, 40.876938, 45.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295387, 40.960659, 45.757622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133990, 0.095827, 0.986339,
		0.195745, -0.973144, 0.121136,
		0.971458, 0.209302, 0.111634,
		32.586826, 41.023449, 45.791111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099007, 40.424404, 46.353966>,  <31.906805, 40.876938, 45.712967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099007, 40.424404, 46.353966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369125, 40.715916, 46.308613>,  <32.531197, 40.890823, 46.281403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369125, 40.715916, 46.308613>,  <32.099007, 40.424404, 46.353966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369125, 40.715916, 46.308613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075628, 0.084497, 0.993550,
		0.733658, -0.679516, 0.001945,
		0.675298, 0.728778, -0.113382,
		32.571716, 40.934547, 46.274597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673290, 40.336060, 46.692486>,  <32.099007, 40.424404, 46.353966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673290, 40.336060, 46.692486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627037, 40.733376, 46.692490>,  <32.599285, 40.971767, 46.692493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627037, 40.733376, 46.692490>,  <32.673290, 40.336060, 46.692486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627037, 40.733376, 46.692490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014935, -0.001747, 0.999887,
		0.993180, 0.115616, 0.015036,
		-0.115630, 0.993293, 0.000009,
		32.592350, 41.031364, 46.692493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159767, 40.584564, 47.158730>,  <32.673290, 40.336060, 46.692486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159767, 40.584564, 47.158730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878311, 40.867935, 47.136772>,  <32.709438, 41.037960, 47.123596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878311, 40.867935, 47.136772>,  <33.159767, 40.584564, 47.158730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878311, 40.867935, 47.136772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086138, -0.008356, 0.996248,
		0.705313, 0.705732, 0.066903,
		-0.703643, 0.708430, -0.054897,
		32.667217, 41.080463, 47.120304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261421, 40.977222, 47.748371>,  <33.159767, 40.584564, 47.158730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261421, 40.977222, 47.748371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885601, 41.053883, 47.634869>,  <32.660110, 41.099880, 47.566769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885601, 41.053883, 47.634869>,  <33.261421, 40.977222, 47.748371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885601, 41.053883, 47.634869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266938, 0.109044, 0.957525,
		0.214453, 0.975386, -0.051293,
		-0.939550, 0.191653, -0.283752,
		32.603737, 41.111378, 47.549744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044708, 41.536358, 48.153061>,  <33.261421, 40.977222, 47.748371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044708, 41.536358, 48.153061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709915, 41.351460, 48.035908>,  <32.509037, 41.240520, 47.965614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709915, 41.351460, 48.035908>,  <33.044708, 41.536358, 48.153061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709915, 41.351460, 48.035908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393938, 0.137477, 0.908798,
		-0.379826, 0.876028, -0.297163,
		-0.836986, -0.462249, -0.292883,
		32.458820, 41.212784, 47.948044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557224, 41.821003, 48.568398>,  <33.044708, 41.536358, 48.153061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557224, 41.821003, 48.568398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384033, 41.498486, 48.407192>,  <32.280117, 41.304974, 48.310467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384033, 41.498486, 48.407192>,  <32.557224, 41.821003, 48.568398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384033, 41.498486, 48.407192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259460, -0.316697, 0.912350,
		-0.863256, 0.499593, -0.072079,
		-0.432976, -0.806294, -0.403015,
		32.254139, 41.256596, 48.286289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880951, 41.765495, 49.021099>,  <32.557224, 41.821003, 48.568398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880951, 41.765495, 49.021099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917507, 41.424854, 48.814632>,  <31.939442, 41.220470, 48.690754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917507, 41.424854, 48.814632>,  <31.880951, 41.765495, 49.021099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917507, 41.424854, 48.814632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365635, -0.510826, 0.778054,
		-0.926260, 0.117622, -0.358059,
		0.091390, -0.851600, -0.516164,
		31.944923, 41.169373, 48.659782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182190, 41.369579, 49.048111>,  <31.880951, 41.765495, 49.021099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182190, 41.369579, 49.048111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509924, 41.141842, 49.021152>,  <31.706564, 41.005199, 49.004978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509924, 41.141842, 49.021152>,  <31.182190, 41.369579, 49.048111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509924, 41.141842, 49.021152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237511, -0.444065, 0.863941,
		-0.521807, -0.691849, -0.499062,
		0.819332, -0.569343, -0.067395,
		31.755724, 40.971039, 49.000935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984959, 40.697895, 49.137348>,  <31.182190, 41.369579, 49.048111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984959, 40.697895, 49.137348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359022, 40.688988, 49.278759>,  <31.583460, 40.683643, 49.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359022, 40.688988, 49.278759>,  <30.984959, 40.697895, 49.137348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359022, 40.688988, 49.278759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332216, -0.401440, 0.853509,
		0.122913, -0.915614, -0.382809,
		0.935160, -0.022268, 0.353524,
		31.639570, 40.682308, 49.384815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116449, 40.099812, 49.438679>,  <30.984959, 40.697895, 49.137348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116449, 40.099812, 49.438679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376358, 40.357414, 49.600201>,  <31.532303, 40.511974, 49.697113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376358, 40.357414, 49.600201>,  <31.116449, 40.099812, 49.438679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376358, 40.357414, 49.600201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240509, -0.329755, 0.912917,
		0.721078, -0.690305, -0.059376,
		0.649770, 0.644004, 0.403803,
		31.571289, 40.550617, 49.721340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564749, 39.762836, 49.968628>,  <31.116449, 40.099812, 49.438679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564749, 39.762836, 49.968628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497061, 40.146591, 50.058910>,  <31.456448, 40.376842, 50.113079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497061, 40.146591, 50.058910>,  <31.564749, 39.762836, 49.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497061, 40.146591, 50.058910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178059, -0.255001, 0.950405,
		0.969361, 0.120637, 0.213979,
		-0.169219, 0.959386, 0.225708,
		31.446295, 40.434406, 50.126621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094677, 40.089413, 50.290859>,  <31.564749, 39.762836, 49.968628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094677, 40.089413, 50.290859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714626, 40.170120, 50.385975>,  <31.486595, 40.218544, 50.443043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714626, 40.170120, 50.385975>,  <32.094677, 40.089413, 50.290859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714626, 40.170120, 50.385975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103509, -0.515231, 0.850778,
		0.294180, 0.832962, 0.468650,
		-0.950129, 0.201772, 0.237789,
		31.429588, 40.230652, 50.457314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614731, 39.518177, 50.579765>,  <32.094677, 40.089413, 50.290859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614731, 39.518177, 50.579765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759720, 39.307289, 50.272350>,  <32.846714, 39.180756, 50.087902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759720, 39.307289, 50.272350>,  <32.614731, 39.518177, 50.579765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759720, 39.307289, 50.272350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030766, -0.817397, 0.575252,
		-0.931487, -0.232157, -0.280061,
		0.362470, -0.527224, -0.768538,
		32.868462, 39.149120, 50.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464863, 38.850250, 50.741585>,  <32.614731, 39.518177, 50.579765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464863, 38.850250, 50.741585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750793, 38.810528, 50.464699>,  <32.922352, 38.786694, 50.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750793, 38.810528, 50.464699>,  <32.464863, 38.850250, 50.741585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750793, 38.810528, 50.464699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236835, -0.896987, 0.373261,
		-0.657974, -0.430757, -0.617671,
		0.714828, -0.099310, -0.692213,
		32.965240, 38.780735, 50.257034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753563, 38.816360, 50.356964>,  <32.464863, 38.850250, 50.741585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753563, 38.816360, 50.356964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728491, 38.420902, 50.302330>,  <31.713448, 38.183628, 50.269550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728491, 38.420902, 50.302330>,  <31.753563, 38.816360, 50.356964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728491, 38.420902, 50.302330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459359, 0.150070, -0.875482,
		0.886036, 0.007866, -0.463549,
		-0.062678, -0.988644, -0.136581,
		31.709688, 38.124310, 50.261356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141747, 38.595417, 49.754105>,  <31.753563, 38.816360, 50.356964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141747, 38.595417, 49.754105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810413, 38.380375, 49.817162>,  <31.611614, 38.251350, 49.854996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810413, 38.380375, 49.817162>,  <32.141747, 38.595417, 49.754105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810413, 38.380375, 49.817162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260535, 0.120540, -0.957910,
		0.495977, -0.834535, -0.239912,
		-0.828329, -0.537607, 0.157641,
		31.561914, 38.219093, 49.864452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030994, 37.954178, 49.432369>,  <32.141747, 38.595417, 49.754105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030994, 37.954178, 49.432369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661287, 38.095394, 49.490475>,  <31.439465, 38.180122, 49.525337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661287, 38.095394, 49.490475>,  <32.030994, 37.954178, 49.432369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661287, 38.095394, 49.490475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136982, 0.048471, -0.989387,
		-0.356333, -0.934352, 0.003561,
		-0.924263, 0.353039, 0.145261,
		31.384008, 38.201305, 49.534054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460871, 37.540527, 49.212925>,  <32.030994, 37.954178, 49.432369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460871, 37.540527, 49.212925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389786, 37.932568, 49.177555>,  <31.347136, 38.167793, 49.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389786, 37.932568, 49.177555>,  <31.460871, 37.540527, 49.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389786, 37.932568, 49.177555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045566, -0.081563, -0.995626,
		-0.983027, -0.180963, -0.030165,
		-0.177711, 0.980102, -0.088424,
		31.336472, 38.226597, 49.151028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881182, 37.605705, 48.746777>,  <31.460871, 37.540527, 49.212925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881182, 37.605705, 48.746777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084135, 37.950390, 48.748341>,  <31.205906, 38.157200, 48.749279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084135, 37.950390, 48.748341>,  <30.881182, 37.605705, 48.746777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084135, 37.950390, 48.748341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159211, -0.089283, -0.983199,
		-0.846886, 0.499479, -0.182495,
		0.507381, 0.861713, 0.003911,
		31.236349, 38.208904, 48.749516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646694, 38.018841, 48.264374>,  <30.881182, 37.605705, 48.746777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646694, 38.018841, 48.264374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011738, 38.179520, 48.294800>,  <31.230764, 38.275928, 48.313057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011738, 38.179520, 48.294800>,  <30.646694, 38.018841, 48.264374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011738, 38.179520, 48.294800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147835, -0.150767, -0.977453,
		-0.381173, 0.903276, -0.196976,
		0.912607, 0.401699, 0.076068,
		31.285521, 38.300030, 48.317619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538486, 38.395355, 47.650768>,  <30.646694, 38.018841, 48.264374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538486, 38.395355, 47.650768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920437, 38.348289, 47.759850>,  <31.149607, 38.320049, 47.825298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920437, 38.348289, 47.759850>,  <30.538486, 38.395355, 47.650768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920437, 38.348289, 47.759850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226038, -0.307715, -0.924239,
		0.192666, 0.944175, -0.267233,
		0.954875, -0.117665, 0.272705,
		31.206900, 38.312988, 47.841660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925957, 38.924568, 47.315083>,  <30.538486, 38.395355, 47.650768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925957, 38.924568, 47.315083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169271, 38.620415, 47.406124>,  <31.315260, 38.437923, 47.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169271, 38.620415, 47.406124>,  <30.925957, 38.924568, 47.315083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169271, 38.620415, 47.406124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254112, -0.085100, -0.963424,
		0.751941, 0.643875, 0.141457,
		0.608286, -0.760384, 0.227606,
		31.351757, 38.392300, 47.474407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249971, 38.959332, 46.767509>,  <30.925957, 38.924568, 47.315083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249971, 38.959332, 46.767509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390228, 38.603798, 46.885509>,  <31.474382, 38.390476, 46.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390228, 38.603798, 46.885509>,  <31.249971, 38.959332, 46.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390228, 38.603798, 46.885509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264733, -0.208074, -0.941606,
		0.898313, 0.408262, 0.162344,
		0.350642, -0.888835, 0.294996,
		31.495420, 38.337147, 46.974007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786400, 38.836578, 46.390671>,  <31.249971, 38.959332, 46.767509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786400, 38.836578, 46.390671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762089, 38.463566, 46.533047>,  <31.747501, 38.239758, 46.618473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762089, 38.463566, 46.533047>,  <31.786400, 38.836578, 46.390671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762089, 38.463566, 46.533047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230569, -0.360072, -0.903983,
		0.971156, 0.027126, 0.236898,
		-0.060779, -0.932530, 0.355941,
		31.743855, 38.183807, 46.639828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371933, 38.504593, 46.111958>,  <31.786400, 38.836578, 46.390671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371933, 38.504593, 46.111958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111732, 38.223904, 46.228180>,  <31.955610, 38.055489, 46.297913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111732, 38.223904, 46.228180>,  <32.371933, 38.504593, 46.111958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111732, 38.223904, 46.228180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196178, -0.524822, -0.828297,
		0.733728, -0.481811, 0.479063,
		-0.650506, -0.701726, 0.290555,
		31.916580, 38.013386, 46.315346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662342, 37.702255, 46.167294>,  <32.371933, 38.504593, 46.111958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662342, 37.702255, 46.167294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266300, 37.703972, 46.111195>,  <32.028675, 37.705002, 46.077534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266300, 37.703972, 46.111195>,  <32.662342, 37.702255, 46.167294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266300, 37.703972, 46.111195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114980, -0.548101, -0.828471,
		-0.080424, -0.836401, 0.542186,
		-0.990107, 0.004288, -0.140250,
		31.969269, 37.705257, 46.069118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569138, 37.081722, 45.867977>,  <32.662342, 37.702255, 46.167294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569138, 37.081722, 45.867977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217876, 37.255829, 45.788586>,  <32.007118, 37.360291, 45.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217876, 37.255829, 45.788586>,  <32.569138, 37.081722, 45.867977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217876, 37.255829, 45.788586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129771, -0.616083, -0.776917,
		-0.460439, -0.656497, 0.597500,
		-0.878154, 0.435262, -0.198475,
		31.954430, 37.386406, 45.729042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158890, 36.499622, 45.726341>,  <32.569138, 37.081722, 45.867977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158890, 36.499622, 45.726341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997545, 36.835835, 45.581669>,  <31.900738, 37.037560, 45.494865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997545, 36.835835, 45.581669>,  <32.158890, 36.499622, 45.726341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997545, 36.835835, 45.581669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012417, -0.400251, -0.916321,
		-0.914955, -0.365121, 0.171884,
		-0.403365, 0.840527, -0.361678,
		31.876535, 37.087994, 45.473167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577909, 36.298813, 45.215836>,  <32.158890, 36.499622, 45.726341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577909, 36.298813, 45.215836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610914, 36.687763, 45.128487>,  <31.630716, 36.921131, 45.076077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610914, 36.687763, 45.128487>,  <31.577909, 36.298813, 45.215836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610914, 36.687763, 45.128487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205177, -0.197846, -0.958519,
		-0.975241, 0.123893, 0.183184,
		0.082512, 0.972372, -0.218368,
		31.635668, 36.979473, 45.062977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962313, 36.483715, 44.660156>,  <31.577909, 36.298813, 45.215836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962313, 36.483715, 44.660156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285131, 36.719372, 44.644188>,  <31.478823, 36.860764, 44.634605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285131, 36.719372, 44.644188>,  <30.962313, 36.483715, 44.660156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285131, 36.719372, 44.644188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065417, -0.156393, -0.985526,
		-0.586853, 0.792754, -0.164756,
		0.807046, 0.589137, -0.039920,
		31.527245, 36.896114, 44.632214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876322, 36.955338, 44.041821>,  <30.962313, 36.483715, 44.660156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876322, 36.955338, 44.041821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257343, 36.910641, 44.155067>,  <31.485956, 36.883823, 44.223015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257343, 36.910641, 44.155067>,  <30.876322, 36.955338, 44.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257343, 36.910641, 44.155067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253729, -0.222237, -0.941399,
		0.168117, 0.968568, -0.183339,
		0.952553, -0.111747, 0.283116,
		31.543110, 36.877117, 44.240002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284920, 37.321163, 43.542637>,  <30.876322, 36.955338, 44.041821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284920, 37.321163, 43.542637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564312, 37.078465, 43.694416>,  <31.731947, 36.932846, 43.785484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564312, 37.078465, 43.694416>,  <31.284920, 37.321163, 43.542637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564312, 37.078465, 43.694416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446186, -0.045315, -0.893792,
		0.559500, 0.793602, 0.239070,
		0.698482, -0.606747, 0.379448,
		31.773857, 36.896439, 43.808250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846977, 37.579819, 43.207680>,  <31.284920, 37.321163, 43.542637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846977, 37.579819, 43.207680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918156, 37.211388, 43.346218>,  <31.960863, 36.990330, 43.429340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918156, 37.211388, 43.346218>,  <31.846977, 37.579819, 43.207680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918156, 37.211388, 43.346218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364293, -0.265301, -0.892696,
		0.914126, 0.285024, 0.288331,
		0.177945, -0.921074, 0.346350,
		31.971539, 36.935066, 43.450123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471169, 37.566498, 43.123734>,  <31.846977, 37.579819, 43.207680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471169, 37.566498, 43.123734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343811, 37.187439, 43.133518>,  <32.267395, 36.960003, 43.139389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343811, 37.187439, 43.133518>,  <32.471169, 37.566498, 43.123734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343811, 37.187439, 43.133518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366806, -0.146957, -0.918617,
		0.874116, -0.283508, 0.394392,
		-0.318393, -0.947643, 0.024465,
		32.248295, 36.903145, 43.140858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091286, 37.236969, 42.962688>,  <32.471169, 37.566498, 43.123734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091286, 37.236969, 42.962688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786285, 37.002335, 42.853512>,  <32.603283, 36.861553, 42.788006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786285, 37.002335, 42.853512>,  <33.091286, 37.236969, 42.962688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786285, 37.002335, 42.853512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412189, -0.115268, -0.903777,
		0.498686, -0.801638, 0.329679,
		-0.762504, -0.586591, -0.272944,
		32.557533, 36.826359, 42.771629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330803, 36.734158, 42.574356>,  <33.091286, 37.236969, 42.962688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330803, 36.734158, 42.574356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945415, 36.711994, 42.469540>,  <32.714184, 36.698696, 42.406651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945415, 36.711994, 42.469540>,  <33.330803, 36.734158, 42.574356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945415, 36.711994, 42.469540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264905, -0.052864, -0.962824,
		0.039501, -0.997063, 0.065612,
		-0.963465, -0.055413, -0.262039,
		32.656376, 36.695370, 42.390926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233784, 36.141624, 42.060020>,  <33.330803, 36.734158, 42.574356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233784, 36.141624, 42.060020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930180, 36.398560, 42.017487>,  <32.748016, 36.552719, 41.991966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930180, 36.398560, 42.017487>,  <33.233784, 36.141624, 42.060020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930180, 36.398560, 42.017487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152208, 0.016268, -0.988215,
		-0.633034, -0.766252, -0.110116,
		-0.759013, 0.642334, -0.106331,
		32.702477, 36.591259, 41.985588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064583, 35.881950, 41.424164>,  <33.233784, 36.141624, 42.060020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064583, 35.881950, 41.424164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853367, 36.219551, 41.461758>,  <32.726639, 36.422112, 41.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853367, 36.219551, 41.461758>,  <33.064583, 35.881950, 41.424164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853367, 36.219551, 41.461758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136222, 0.025054, -0.990362,
		-0.838226, -0.535748, 0.101742,
		-0.528035, 0.844006, 0.093982,
		32.694958, 36.472752, 41.489952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474899, 35.847939, 40.997189>,  <33.064583, 35.881950, 41.424164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474899, 35.847939, 40.997189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483284, 36.240993, 41.070938>,  <32.488316, 36.476826, 41.115189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483284, 36.240993, 41.070938>,  <32.474899, 35.847939, 40.997189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483284, 36.240993, 41.070938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235402, 0.184077, -0.954307,
		-0.971672, -0.023399, 0.235172,
		0.020959, 0.982633, 0.184370,
		32.489571, 36.535782, 41.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841330, 36.126305, 40.791943>,  <32.474899, 35.847939, 40.997189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841330, 36.126305, 40.791943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127216, 36.405926, 40.782948>,  <32.298748, 36.573696, 40.777550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127216, 36.405926, 40.782948>,  <31.841330, 36.126305, 40.791943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127216, 36.405926, 40.782948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367275, 0.347758, -0.862655,
		-0.595220, 0.624814, 0.505293,
		0.714718, 0.699051, -0.022486,
		32.341633, 36.615643, 40.776203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572632, 36.669800, 40.373714>,  <31.841330, 36.126305, 40.791943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572632, 36.669800, 40.373714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967573, 36.729580, 40.352562>,  <32.204536, 36.765450, 40.339870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967573, 36.729580, 40.352562>,  <31.572632, 36.669800, 40.373714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967573, 36.729580, 40.352562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091352, 0.263744, -0.960257,
		-0.129568, 0.952944, 0.274062,
		0.987354, 0.149454, -0.052880,
		32.263779, 36.774418, 40.336697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660112, 37.353428, 40.086044>,  <31.572632, 36.669800, 40.373714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660112, 37.353428, 40.086044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001038, 37.153145, 40.025570>,  <32.205593, 37.032974, 39.989285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001038, 37.153145, 40.025570>,  <31.660112, 37.353428, 40.086044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001038, 37.153145, 40.025570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066070, 0.183670, -0.980765,
		0.518843, 0.845907, 0.123463,
		0.852313, -0.500706, -0.151185,
		32.256733, 37.002934, 39.980213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048965, 37.752956, 39.680195>,  <31.660112, 37.353428, 40.086044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048965, 37.752956, 39.680195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201206, 37.387245, 39.624714>,  <32.292549, 37.167820, 39.591427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201206, 37.387245, 39.624714>,  <32.048965, 37.752956, 39.680195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201206, 37.387245, 39.624714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211748, 0.059837, -0.975491,
		0.900169, 0.400643, -0.170822,
		0.380602, -0.914278, -0.138699,
		32.315388, 37.112961, 39.583103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449348, 37.813423, 39.052990>,  <32.048965, 37.752956, 39.680195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449348, 37.813423, 39.052990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397614, 37.420082, 39.104031>,  <32.366573, 37.184078, 39.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397614, 37.420082, 39.104031>,  <32.449348, 37.813423, 39.052990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397614, 37.420082, 39.104031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036891, -0.123819, -0.991619,
		0.990914, -0.132963, -0.020262,
		-0.129340, -0.983356, 0.127599,
		32.358810, 37.125076, 39.142311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924957, 37.508324, 38.663361>,  <32.449348, 37.813423, 39.052990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924957, 37.508324, 38.663361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665306, 37.208900, 38.717457>,  <32.509514, 37.029247, 38.749916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665306, 37.208900, 38.717457>,  <32.924957, 37.508324, 38.663361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665306, 37.208900, 38.717457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018420, -0.193209, -0.980985,
		0.760457, -0.634293, 0.139206,
		-0.649127, -0.748561, 0.135243,
		32.470570, 36.984333, 38.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148746, 36.827099, 38.259995>,  <32.924957, 37.508324, 38.663361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148746, 36.827099, 38.259995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763943, 36.750175, 38.337502>,  <32.533058, 36.704021, 38.384007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763943, 36.750175, 38.337502>,  <33.148746, 36.827099, 38.259995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763943, 36.750175, 38.337502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094093, -0.432715, -0.896607,
		0.256275, -0.880780, 0.398183,
		-0.962013, -0.192312, 0.193770,
		32.475338, 36.692482, 38.395634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056984, 36.188709, 38.106167>,  <33.148746, 36.827099, 38.259995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056984, 36.188709, 38.106167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684978, 36.327419, 38.057461>,  <32.461777, 36.410645, 38.028236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684978, 36.327419, 38.057461>,  <33.056984, 36.188709, 38.106167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684978, 36.327419, 38.057461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045119, -0.436530, -0.898558,
		-0.364750, -0.830175, 0.421624,
		-0.930012, 0.346772, -0.121767,
		32.405975, 36.431450, 38.020931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703541, 35.648403, 37.836193>,  <33.056984, 36.188709, 38.106167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703541, 35.648403, 37.836193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472477, 35.963573, 37.750881>,  <32.333839, 36.152676, 37.699696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472477, 35.963573, 37.750881>,  <32.703541, 35.648403, 37.836193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472477, 35.963573, 37.750881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235900, -0.411273, -0.880458,
		-0.781449, -0.458291, 0.423446,
		-0.577657, 0.787924, -0.213278,
		32.299179, 36.199951, 37.686897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999640, 35.349968, 37.622505>,  <32.703541, 35.648403, 37.836193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999640, 35.349968, 37.622505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046413, 35.719566, 37.476868>,  <32.074478, 35.941326, 37.389484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046413, 35.719566, 37.476868>,  <31.999640, 35.349968, 37.622505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046413, 35.719566, 37.476868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287112, -0.319505, -0.903041,
		-0.950733, 0.210132, 0.227928,
		0.116933, 0.923992, -0.364096,
		32.081493, 35.996765, 37.367638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419828, 35.411358, 37.227715>,  <31.999640, 35.349968, 37.622505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419828, 35.411358, 37.227715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664860, 35.692394, 37.082882>,  <31.811878, 35.861015, 36.995983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664860, 35.692394, 37.082882>,  <31.419828, 35.411358, 37.227715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664860, 35.692394, 37.082882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389294, -0.130495, -0.911823,
		-0.687892, 0.699523, 0.193578,
		0.612580, 0.702595, -0.362086,
		31.848635, 35.903172, 36.974255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997124, 35.675995, 36.795670>,  <31.419828, 35.411358, 37.227715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997124, 35.675995, 36.795670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353729, 35.796947, 36.660748>,  <31.567692, 35.869518, 36.579796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353729, 35.796947, 36.660748>,  <30.997124, 35.675995, 36.795670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353729, 35.796947, 36.660748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308260, -0.140652, -0.940847,
		-0.331936, 0.942753, -0.032182,
		0.891512, 0.302380, -0.337301,
		31.621183, 35.887661, 36.559559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833128, 36.049362, 36.219879>,  <30.997124, 35.675995, 36.795670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833128, 36.049362, 36.219879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225071, 35.998455, 36.158325>,  <31.460238, 35.967911, 36.121395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225071, 35.998455, 36.158325>,  <30.833128, 36.049362, 36.219879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225071, 35.998455, 36.158325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170096, -0.128227, -0.977049,
		0.104620, 0.983544, -0.147292,
		0.979858, -0.127273, -0.153882,
		31.519028, 35.960274, 36.112160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121216, 36.510674, 35.673119>,  <30.833128, 36.049362, 36.219879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121216, 36.510674, 35.673119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381903, 36.208187, 35.696453>,  <31.538315, 36.026695, 35.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381903, 36.208187, 35.696453>,  <31.121216, 36.510674, 35.673119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381903, 36.208187, 35.696453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069915, -0.136479, -0.988173,
		0.755231, 0.639932, -0.141817,
		0.651719, -0.756214, 0.058333,
		31.577417, 35.981323, 35.713951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373434, 36.484947, 34.965305>,  <31.121216, 36.510674, 35.673119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373434, 36.484947, 34.965305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530848, 36.146206, 35.108395>,  <31.625296, 35.942959, 35.194248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530848, 36.146206, 35.108395>,  <31.373434, 36.484947, 34.965305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530848, 36.146206, 35.108395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072970, -0.416670, -0.906125,
		0.916410, 0.330487, -0.225768,
		0.393534, -0.846856, 0.357725,
		31.648907, 35.892151, 35.215714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937286, 36.213627, 34.512379>,  <31.373434, 36.484947, 34.965305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937286, 36.213627, 34.512379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788830, 35.911098, 34.727871>,  <31.699757, 35.729580, 34.857166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788830, 35.911098, 34.727871>,  <31.937286, 36.213627, 34.512379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788830, 35.911098, 34.727871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183674, -0.508909, -0.840997,
		0.910229, -0.411079, 0.049961,
		-0.371142, -0.756323, 0.538729,
		31.677486, 35.684200, 34.889488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293121, 35.537807, 34.431007>,  <31.937286, 36.213627, 34.512379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293121, 35.537807, 34.431007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899435, 35.532341, 34.501587>,  <31.663223, 35.529060, 34.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899435, 35.532341, 34.501587>,  <32.293121, 35.537807, 34.431007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899435, 35.532341, 34.501587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167318, -0.252981, -0.952893,
		0.057663, -0.967375, 0.246700,
		-0.984215, -0.013669, 0.176447,
		31.604170, 35.528240, 34.554520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932205, 35.923183, 34.240231>,  <32.293121, 35.537807, 34.431007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932205, 35.923183, 34.240231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685223, 36.227741, 34.161205>,  <32.537033, 36.410477, 34.113792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685223, 36.227741, 34.161205>,  <32.932205, 35.923183, 34.240231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685223, 36.227741, 34.161205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350625, -0.491230, -0.797343,
		-0.704137, -0.423055, 0.570276,
		-0.617457, 0.761392, -0.197559,
		32.499985, 36.456158, 34.101936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314117, 35.297020, 34.240192>,  <32.932205, 35.923183, 34.240231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314117, 35.297020, 34.240192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629890, 35.084698, 34.116882>,  <33.819355, 34.957302, 34.042896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629890, 35.084698, 34.116882>,  <33.314117, 35.297020, 34.240192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629890, 35.084698, 34.116882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347902, -0.026846, 0.937146,
		-0.505722, -0.847066, 0.163476,
		0.789436, -0.530810, -0.308272,
		33.866722, 34.925453, 34.024399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299988, 34.719501, 34.636929>,  <33.314117, 35.297020, 34.240192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299988, 34.719501, 34.636929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675556, 34.793755, 34.521019>,  <33.900898, 34.838306, 34.451473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675556, 34.793755, 34.521019>,  <33.299988, 34.719501, 34.636929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675556, 34.793755, 34.521019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331620, -0.263072, 0.905992,
		0.091947, -0.946750, -0.308563,
		0.938922, 0.185629, -0.289772,
		33.957233, 34.849442, 34.434086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675114, 34.199154, 34.996235>,  <33.299988, 34.719501, 34.636929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675114, 34.199154, 34.996235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953815, 34.456158, 34.868660>,  <34.121037, 34.610359, 34.792114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953815, 34.456158, 34.868660>,  <33.675114, 34.199154, 34.996235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953815, 34.456158, 34.868660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549716, -0.192643, 0.812835,
		0.460810, -0.741671, -0.487420,
		0.696754, 0.642505, -0.318937,
		34.162842, 34.648911, 34.772980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282139, 33.846851, 35.027863>,  <33.675114, 34.199154, 34.996235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282139, 33.846851, 35.027863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354023, 34.239735, 35.049698>,  <34.397152, 34.475464, 35.062798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354023, 34.239735, 35.049698>,  <34.282139, 33.846851, 35.027863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354023, 34.239735, 35.049698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544222, -0.145494, 0.826229,
		0.819467, -0.118773, -0.560684,
		0.179710, 0.982204, 0.054588,
		34.407936, 34.534397, 35.066074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834679, 33.864414, 35.349449>,  <34.282139, 33.846851, 35.027863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834679, 33.864414, 35.349449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698517, 34.233212, 35.423271>,  <34.616821, 34.454491, 35.467564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698517, 34.233212, 35.423271>,  <34.834679, 33.864414, 35.349449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698517, 34.233212, 35.423271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391616, -0.039426, 0.919284,
		0.854846, 0.385204, -0.347645,
		-0.340405, 0.921989, 0.184556,
		34.596394, 34.509808, 35.478638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391258, 34.234943, 35.761269>,  <34.834679, 33.864414, 35.349449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391258, 34.234943, 35.761269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044937, 34.420219, 35.836994>,  <34.837143, 34.531384, 35.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044937, 34.420219, 35.836994>,  <35.391258, 34.234943, 35.761269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044937, 34.420219, 35.836994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257949, 0.088951, 0.962055,
		0.428776, 0.881783, -0.196493,
		-0.865802, 0.463192, 0.189315,
		34.785198, 34.559177, 35.893787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518700, 34.911522, 36.180443>,  <35.391258, 34.234943, 35.761269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518700, 34.911522, 36.180443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137451, 34.821365, 36.261200>,  <34.908703, 34.767273, 36.309654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137451, 34.821365, 36.261200>,  <35.518700, 34.911522, 36.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137451, 34.821365, 36.261200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143172, 0.251886, 0.957108,
		-0.266576, 0.941145, -0.207808,
		-0.953121, -0.225389, 0.201892,
		34.851517, 34.753750, 36.321766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403027, 35.376682, 36.731670>,  <35.518700, 34.911522, 36.180443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403027, 35.376682, 36.731670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089130, 35.129196, 36.716839>,  <34.900791, 34.980705, 36.707939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089130, 35.129196, 36.716839>,  <35.403027, 35.376682, 36.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089130, 35.129196, 36.716839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039310, -0.010022, 0.999177,
		-0.618578, 0.785551, -0.016457,
		-0.784739, -0.618716, -0.037080,
		34.853710, 34.943581, 36.705715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871452, 35.817165, 37.008038>,  <35.403027, 35.376682, 36.731670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871452, 35.817165, 37.008038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763371, 35.436890, 37.068928>,  <34.698521, 35.208725, 37.105461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763371, 35.436890, 37.068928>,  <34.871452, 35.817165, 37.008038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763371, 35.436890, 37.068928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125969, 0.121840, 0.984524,
		-0.954527, 0.285198, 0.086836,
		-0.270204, -0.950693, 0.152226,
		34.682308, 35.151680, 37.114597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396996, 35.787231, 37.570465>,  <34.871452, 35.817165, 37.008038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396996, 35.787231, 37.570465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543766, 35.415192, 37.563740>,  <34.631828, 35.191967, 37.559704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543766, 35.415192, 37.563740>,  <34.396996, 35.787231, 37.570465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543766, 35.415192, 37.563740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059998, 0.005624, 0.998183,
		-0.928315, -0.367264, 0.057868,
		0.366922, -0.930100, -0.016815,
		34.653843, 35.136162, 37.558697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039738, 35.415745, 38.141071>,  <34.396996, 35.787231, 37.570465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039738, 35.415745, 38.141071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358162, 35.192520, 38.047390>,  <34.549217, 35.058586, 37.991180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358162, 35.192520, 38.047390>,  <34.039738, 35.415745, 38.141071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358162, 35.192520, 38.047390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191246, -0.135196, 0.972187,
		-0.574201, -0.818714, -0.000898,
		0.796064, -0.558059, -0.234206,
		34.596981, 35.025105, 37.977127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919384, 34.901489, 38.577839>,  <34.039738, 35.415745, 38.141071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919384, 34.901489, 38.577839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305485, 34.895653, 38.473469>,  <34.537144, 34.892151, 38.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305485, 34.895653, 38.473469>,  <33.919384, 34.901489, 38.577839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305485, 34.895653, 38.473469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257495, -0.117302, 0.959133,
		-0.044604, -0.992989, -0.109468,
		0.965250, -0.014594, -0.260922,
		34.595058, 34.891273, 38.395191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180363, 34.480457, 39.005627>,  <33.919384, 34.901489, 38.577839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180363, 34.480457, 39.005627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511471, 34.661942, 38.873604>,  <34.710136, 34.770832, 38.794388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511471, 34.661942, 38.873604>,  <34.180363, 34.480457, 39.005627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511471, 34.661942, 38.873604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301292, 0.136797, 0.943668,
		0.473306, -0.880585, -0.023463,
		0.827771, 0.453713, -0.330060,
		34.759804, 34.798054, 38.774586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726219, 34.138512, 39.281185>,  <34.180363, 34.480457, 39.005627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726219, 34.138512, 39.281185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877659, 34.497795, 39.191849>,  <34.968525, 34.713364, 39.138248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877659, 34.497795, 39.191849>,  <34.726219, 34.138512, 39.281185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877659, 34.497795, 39.191849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256381, 0.130085, 0.957782,
		0.889342, -0.419879, -0.181033,
		0.378603, 0.898209, -0.223339,
		34.991241, 34.767258, 39.124847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410748, 34.096802, 39.504555>,  <34.726219, 34.138512, 39.281185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410748, 34.096802, 39.504555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278687, 34.474003, 39.487873>,  <35.199448, 34.700325, 39.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278687, 34.474003, 39.487873>,  <35.410748, 34.096802, 39.504555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278687, 34.474003, 39.487873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265979, 0.135329, 0.954432,
		0.905678, 0.304020, -0.295499,
		-0.330156, 0.943005, -0.041702,
		35.179638, 34.756905, 39.475361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841339, 34.443783, 39.914391>,  <35.410748, 34.096802, 39.504555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841339, 34.443783, 39.914391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543411, 34.709354, 39.887753>,  <35.364655, 34.868698, 39.871769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543411, 34.709354, 39.887753>,  <35.841339, 34.443783, 39.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543411, 34.709354, 39.887753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022022, 0.075283, 0.996919,
		0.666900, 0.743994, -0.041452,
		-0.744822, 0.663932, -0.066591,
		35.319965, 34.908535, 39.867775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943501, 34.883289, 40.413029>,  <35.841339, 34.443783, 39.914391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943501, 34.883289, 40.413029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573345, 34.989689, 40.305035>,  <35.351250, 35.053528, 40.240238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573345, 34.989689, 40.305035>,  <35.943501, 34.883289, 40.413029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573345, 34.989689, 40.305035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263114, 0.061859, 0.962780,
		0.272800, 0.961986, 0.012744,
		-0.925393, 0.265999, -0.269987,
		35.295727, 35.069489, 40.224037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782402, 35.527706, 40.786114>,  <35.943501, 34.883289, 40.413029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782402, 35.527706, 40.786114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448742, 35.332848, 40.682659>,  <35.248547, 35.215935, 40.620586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448742, 35.332848, 40.682659>,  <35.782402, 35.527706, 40.786114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448742, 35.332848, 40.682659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365050, 0.136111, 0.920984,
		-0.413448, 0.862650, -0.291368,
		-0.834146, -0.487143, -0.258635,
		35.198498, 35.186707, 40.605068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396877, 35.863293, 41.298195>,  <35.782402, 35.527706, 40.786114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396877, 35.863293, 41.298195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186062, 35.549347, 41.167831>,  <35.059574, 35.360977, 41.089615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186062, 35.549347, 41.167831>,  <35.396877, 35.863293, 41.298195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186062, 35.549347, 41.167831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515897, -0.009271, 0.856601,
		-0.675341, 0.619593, -0.400025,
		-0.527035, -0.784869, -0.325907,
		35.027950, 35.313885, 41.070061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621250, 35.974857, 41.245392>,  <35.396877, 35.863293, 41.298195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621250, 35.974857, 41.245392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662537, 35.581146, 41.302711>,  <34.687309, 35.344917, 41.337101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662537, 35.581146, 41.302711>,  <34.621250, 35.974857, 41.245392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662537, 35.581146, 41.302711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626225, 0.047620, 0.778187,
		-0.772779, -0.170060, -0.611467,
		0.103221, -0.984282, 0.143296,
		34.693504, 35.285862, 41.345699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928463, 35.708916, 41.283031>,  <34.621250, 35.974857, 41.245392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928463, 35.708916, 41.283031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179749, 35.449615, 41.455132>,  <34.330521, 35.294037, 41.558392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179749, 35.449615, 41.455132>,  <33.928463, 35.708916, 41.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179749, 35.449615, 41.455132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604550, -0.058603, 0.794408,
		-0.489763, -0.759167, -0.428716,
		0.628213, -0.648252, 0.430253,
		34.368214, 35.255138, 41.584209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443996, 35.200539, 41.739098>,  <33.928463, 35.708916, 41.283031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443996, 35.200539, 41.739098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824818, 35.171074, 41.857868>,  <34.053310, 35.153397, 41.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824818, 35.171074, 41.857868>,  <33.443996, 35.200539, 41.739098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824818, 35.171074, 41.857868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283039, 0.156299, 0.946287,
		-0.116112, -0.984959, 0.127957,
		0.952054, -0.073659, 0.296930,
		34.110435, 35.148975, 41.946949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395985, 34.870682, 42.347107>,  <33.443996, 35.200539, 41.739098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395985, 34.870682, 42.347107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756252, 35.042900, 42.370537>,  <33.972412, 35.146233, 42.384594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756252, 35.042900, 42.370537>,  <33.395985, 34.870682, 42.347107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756252, 35.042900, 42.370537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059493, -0.011341, 0.998164,
		0.430423, -0.902496, 0.015401,
		0.900665, 0.430549, 0.058574,
		34.026451, 35.172066, 42.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766357, 34.423923, 42.845638>,  <33.395985, 34.870682, 42.347107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766357, 34.423923, 42.845638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922001, 34.792004, 42.828564>,  <34.015388, 35.012852, 42.818321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922001, 34.792004, 42.828564>,  <33.766357, 34.423923, 42.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922001, 34.792004, 42.828564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204786, -0.041232, 0.977938,
		0.898141, -0.389265, -0.204488,
		0.389109, 0.920202, -0.042684,
		34.038734, 35.068066, 42.815758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019768, 34.496361, 43.520096>,  <33.766357, 34.423923, 42.845638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019768, 34.496361, 43.520096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100033, 34.859455, 43.372723>,  <34.148190, 35.077312, 43.284298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100033, 34.859455, 43.372723>,  <34.019768, 34.496361, 43.520096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100033, 34.859455, 43.372723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143496, 0.344793, 0.927646,
		0.969095, -0.239009, -0.061071,
		0.200659, 0.907740, -0.368434,
		34.160229, 35.131779, 43.262192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747871, 34.782978, 43.783821>,  <34.019768, 34.496361, 43.520096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747871, 34.782978, 43.783821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479233, 35.069210, 43.706974>,  <34.318050, 35.240948, 43.660866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479233, 35.069210, 43.706974>,  <34.747871, 34.782978, 43.783821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479233, 35.069210, 43.706974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184067, 0.412303, 0.892259,
		0.717690, 0.563875, -0.408615,
		-0.671596, 0.715577, -0.192115,
		34.277756, 35.283882, 43.649338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894463, 35.253754, 44.230179>,  <34.747871, 34.782978, 43.783821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894463, 35.253754, 44.230179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564037, 35.437386, 44.099415>,  <34.365784, 35.547565, 44.020954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564037, 35.437386, 44.099415>,  <34.894463, 35.253754, 44.230179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564037, 35.437386, 44.099415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056201, 0.510068, 0.858296,
		0.560775, 0.727376, -0.395545,
		-0.826059, 0.459081, -0.326913,
		34.316219, 35.575111, 44.001343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957779, 35.976952, 44.114037>,  <34.894463, 35.253754, 44.230179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957779, 35.976952, 44.114037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573483, 35.912949, 44.204700>,  <34.342903, 35.874546, 44.259098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573483, 35.912949, 44.204700>,  <34.957779, 35.976952, 44.114037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573483, 35.912949, 44.204700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125834, 0.476802, 0.869957,
		-0.247274, 0.864325, -0.437948,
		-0.960740, -0.160009, 0.226663,
		34.285259, 35.864944, 44.272697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856747, 36.581783, 44.445332>,  <34.957779, 35.976952, 44.114037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856747, 36.581783, 44.445332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593571, 36.293995, 44.534306>,  <34.435665, 36.121323, 44.587692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593571, 36.293995, 44.534306>,  <34.856747, 36.581783, 44.445332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593571, 36.293995, 44.534306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005244, 0.290989, 0.956712,
		-0.753051, 0.630626, -0.187681,
		-0.657941, -0.719469, 0.222437,
		34.396187, 36.078156, 44.601036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405350, 36.937504, 44.827869>,  <34.856747, 36.581783, 44.445332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405350, 36.937504, 44.827869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354397, 36.555588, 44.935310>,  <34.323826, 36.326439, 44.999775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354397, 36.555588, 44.935310>,  <34.405350, 36.937504, 44.827869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354397, 36.555588, 44.935310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316831, 0.295793, 0.901179,
		-0.939889, 0.029694, -0.340187,
		-0.127385, -0.954790, 0.268605,
		34.316181, 36.269150, 45.015892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796982, 36.997524, 45.160011>,  <34.405350, 36.937504, 44.827869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796982, 36.997524, 45.160011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938072, 36.638889, 45.267132>,  <34.022728, 36.423710, 45.331402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938072, 36.638889, 45.267132>,  <33.796982, 36.997524, 45.160011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938072, 36.638889, 45.267132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020376, 0.278765, 0.960143,
		-0.935505, -0.344124, 0.080059,
		0.352726, -0.896587, 0.267797,
		34.043892, 36.369911, 45.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400311, 36.742172, 45.710121>,  <33.796982, 36.997524, 45.160011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400311, 36.742172, 45.710121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742374, 36.537666, 45.744301>,  <33.947613, 36.414963, 45.764809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742374, 36.537666, 45.744301>,  <33.400311, 36.742172, 45.710121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742374, 36.537666, 45.744301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082291, 0.296658, 0.951432,
		-0.511787, -0.806596, 0.295763,
		0.855162, -0.511269, 0.085450,
		33.998924, 36.384285, 45.769936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378559, 36.463520, 46.385468>,  <33.400311, 36.742172, 45.710121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378559, 36.463520, 46.385468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766216, 36.462788, 46.286869>,  <33.998810, 36.462349, 46.227711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766216, 36.462788, 46.286869>,  <33.378559, 36.463520, 46.385468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766216, 36.462788, 46.286869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236361, 0.290823, 0.927122,
		0.069990, -0.956775, 0.282281,
		0.969141, -0.001831, -0.246499,
		34.056957, 36.462238, 46.212921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812000, 36.180344, 46.911072>,  <33.378559, 36.463520, 46.385468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812000, 36.180344, 46.911072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115833, 36.391785, 46.759483>,  <34.298134, 36.518650, 46.668530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115833, 36.391785, 46.759483>,  <33.812000, 36.180344, 46.911072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115833, 36.391785, 46.759483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266421, 0.278664, 0.922695,
		0.593345, -0.801826, 0.070836,
		0.759580, 0.528604, -0.378967,
		34.343708, 36.550365, 46.645794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217731, 36.214619, 47.450359>,  <33.812000, 36.180344, 46.911072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217731, 36.214619, 47.450359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426517, 36.444290, 47.198051>,  <34.551788, 36.582092, 47.046665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426517, 36.444290, 47.198051>,  <34.217731, 36.214619, 47.450359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426517, 36.444290, 47.198051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363244, 0.519459, 0.773444,
		0.771756, -0.632833, 0.062571,
		0.521964, 0.574182, -0.630768,
		34.583107, 36.616547, 47.008820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924145, 36.079430, 47.496376>,  <34.217731, 36.214619, 47.450359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924145, 36.079430, 47.496376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874664, 36.460087, 47.383888>,  <34.844978, 36.688480, 47.316395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874664, 36.460087, 47.383888>,  <34.924145, 36.079430, 47.496376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874664, 36.460087, 47.383888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280274, 0.305358, 0.910057,
		0.951917, 0.033754, -0.304492,
		-0.123697, 0.951639, -0.281215,
		34.837555, 36.745579, 47.299522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351944, 36.473850, 47.883648>,  <34.924145, 36.079430, 47.496376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351944, 36.473850, 47.883648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120235, 36.775185, 47.759109>,  <34.981213, 36.955986, 47.684387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.120235, 36.775185, 47.759109>,  <35.351944, 36.473850, 47.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120235, 36.775185, 47.759109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338034, 0.569575, 0.749211,
		0.741742, 0.328747, -0.584589,
		-0.579269, 0.753332, -0.311350,
		34.946453, 37.001183, 47.665703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778633, 37.103352, 47.714008>,  <35.351944, 36.473850, 47.883648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778633, 37.103352, 47.714008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412746, 37.206638, 47.838345>,  <35.193214, 37.268608, 47.912945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412746, 37.206638, 47.838345>,  <35.778633, 37.103352, 47.714008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412746, 37.206638, 47.838345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403742, 0.551714, 0.729797,
		0.016949, 0.793055, -0.608913,
		-0.914716, 0.258213, 0.310839,
		35.138332, 37.284103, 47.931595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813225, 37.891758, 47.827904>,  <35.778633, 37.103352, 47.714008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813225, 37.891758, 47.827904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514404, 37.725067, 48.035080>,  <35.335114, 37.625053, 48.159386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514404, 37.725067, 48.035080>,  <35.813225, 37.891758, 47.827904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514404, 37.725067, 48.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320071, 0.457396, 0.829665,
		-0.582643, 0.785577, -0.208316,
		-0.747048, -0.416722, 0.517939,
		35.290291, 37.600052, 48.190460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746849, 38.430328, 48.360096>,  <35.813225, 37.891758, 47.827904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746849, 38.430328, 48.360096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146210, 38.436134, 48.381935>,  <36.385826, 38.439617, 48.395039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146210, 38.436134, 48.381935>,  <35.746849, 38.430328, 48.360096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146210, 38.436134, 48.381935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053868, 0.046426, -0.997468,
		-0.017011, 0.998816, 0.045570,
		0.998403, 0.014513, 0.054594,
		36.445732, 38.440487, 48.398312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990089, 38.968746, 47.924244>,  <35.746849, 38.430328, 48.360096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990089, 38.968746, 47.924244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300034, 38.716618, 47.905106>,  <36.486000, 38.565342, 47.893623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300034, 38.716618, 47.905106>,  <35.990089, 38.968746, 47.924244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300034, 38.716618, 47.905106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030828, 0.113272, -0.993086,
		0.631378, 0.768030, 0.107202,
		0.774862, -0.630317, -0.047841,
		36.532494, 38.527523, 47.890755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413399, 39.278576, 47.394642>,  <35.990089, 38.968746, 47.924244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413399, 39.278576, 47.394642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593262, 38.926910, 47.457737>,  <36.701180, 38.715912, 47.495594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593262, 38.926910, 47.457737>,  <36.413399, 39.278576, 47.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593262, 38.926910, 47.457737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420391, 0.052494, -0.905823,
		0.788087, 0.473620, 0.393197,
		0.449656, -0.879164, 0.157736,
		36.728157, 38.663162, 47.505058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125984, 39.361717, 47.381744>,  <36.413399, 39.278576, 47.394642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125984, 39.361717, 47.381744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069893, 38.976044, 47.291687>,  <37.036236, 38.744640, 47.237652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069893, 38.976044, 47.291687>,  <37.125984, 39.361717, 47.381744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069893, 38.976044, 47.291687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371391, 0.159564, -0.914663,
		0.917826, -0.211882, 0.335712,
		-0.140233, -0.964181, -0.225143,
		37.027824, 38.686790, 47.224144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710487, 39.154026, 47.044010>,  <37.125984, 39.361717, 47.381744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710487, 39.154026, 47.044010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434639, 38.883263, 46.941078>,  <37.269131, 38.720806, 46.879318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434639, 38.883263, 46.941078>,  <37.710487, 39.154026, 47.044010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434639, 38.883263, 46.941078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394434, -0.053087, -0.917390,
		0.607324, -0.734154, 0.303604,
		-0.689622, -0.676905, -0.257334,
		37.227753, 38.680191, 46.863876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128506, 38.645802, 46.740368>,  <37.710487, 39.154026, 47.044010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128506, 38.645802, 46.740368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763630, 38.564251, 46.598190>,  <37.544704, 38.515320, 46.512882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763630, 38.564251, 46.598190>,  <38.128506, 38.645802, 46.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763630, 38.564251, 46.598190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359883, 0.016182, -0.932857,
		0.195937, -0.978863, 0.058610,
		-0.912191, -0.203875, -0.355447,
		37.489971, 38.503090, 46.491558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184696, 38.056152, 46.285969>,  <38.128506, 38.645802, 46.740368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184696, 38.056152, 46.285969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836662, 38.220879, 46.177628>,  <37.627842, 38.319714, 46.112625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836662, 38.220879, 46.177628>,  <38.184696, 38.056152, 46.285969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836662, 38.220879, 46.177628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276225, -0.047720, -0.959908,
		-0.408231, -0.910017, -0.072233,
		-0.870085, 0.411817, -0.270850,
		37.575638, 38.344425, 46.096375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992264, 37.650616, 45.715206>,  <38.184696, 38.056152, 46.285969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992264, 37.650616, 45.715206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751808, 37.964802, 45.656311>,  <37.607536, 38.153313, 45.620972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751808, 37.964802, 45.656311>,  <37.992264, 37.650616, 45.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751808, 37.964802, 45.656311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050473, -0.221200, -0.973922,
		-0.797548, -0.578031, 0.172616,
		-0.601140, 0.785462, -0.147242,
		37.571465, 38.200439, 45.612137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680679, 37.388584, 45.273239>,  <37.992264, 37.650616, 45.715206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680679, 37.388584, 45.273239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611374, 37.780128, 45.229778>,  <37.569790, 38.015057, 45.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611374, 37.780128, 45.229778>,  <37.680679, 37.388584, 45.273239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611374, 37.780128, 45.229778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111198, -0.129062, -0.985382,
		-0.978577, -0.158652, 0.131210,
		-0.173267, 0.978863, -0.108656,
		37.559395, 38.073788, 45.197182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071377, 37.434208, 44.946442>,  <37.680679, 37.388584, 45.273239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071377, 37.434208, 44.946442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239677, 37.791451, 44.882790>,  <37.340660, 38.005795, 44.844597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239677, 37.791451, 44.882790>,  <37.071377, 37.434208, 44.946442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239677, 37.791451, 44.882790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030343, -0.161465, -0.986412,
		-0.906667, 0.419867, -0.040837,
		0.420755, 0.893108, -0.159135,
		37.365906, 38.059383, 44.835049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645454, 37.717045, 44.384827>,  <37.071377, 37.434208, 44.946442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645454, 37.717045, 44.384827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992325, 37.915215, 44.364548>,  <37.200447, 38.034115, 44.352379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992325, 37.915215, 44.364548>,  <36.645454, 37.717045, 44.384827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992325, 37.915215, 44.364548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022910, -0.062005, -0.997813,
		-0.497481, 0.866437, -0.042419,
		0.867173, 0.495421, -0.050697,
		37.252476, 38.063839, 44.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616184, 38.287380, 43.961929>,  <36.645454, 37.717045, 44.384827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616184, 38.287380, 43.961929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008186, 38.208992, 43.948177>,  <37.243389, 38.161957, 43.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008186, 38.208992, 43.948177>,  <36.616184, 38.287380, 43.961929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008186, 38.208992, 43.948177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035664, -0.003050, -0.999359,
		0.195744, 0.980604, -0.009978,
		0.980006, -0.195975, -0.034375,
		37.302189, 38.150200, 43.937866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791363, 38.570255, 43.322193>,  <36.616184, 38.287380, 43.961929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791363, 38.570255, 43.322193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102074, 38.338486, 43.420898>,  <37.288498, 38.199425, 43.480122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102074, 38.338486, 43.420898>,  <36.791363, 38.570255, 43.322193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102074, 38.338486, 43.420898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150179, -0.210106, -0.966075,
		0.611611, 0.787481, -0.076188,
		0.776774, -0.579421, 0.246767,
		37.335106, 38.164658, 43.494930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360901, 38.795383, 42.873848>,  <36.791363, 38.570255, 43.322193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360901, 38.795383, 42.873848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431030, 38.416214, 42.980206>,  <37.473106, 38.188713, 43.044022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431030, 38.416214, 42.980206>,  <37.360901, 38.795383, 42.873848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431030, 38.416214, 42.980206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167262, -0.237475, -0.956885,
		0.970199, 0.212235, 0.116918,
		0.175319, -0.947925, 0.265897,
		37.483627, 38.131836, 43.059975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981976, 38.565571, 42.546009>,  <37.360901, 38.795383, 42.873848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981976, 38.565571, 42.546009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791885, 38.228550, 42.647408>,  <37.677830, 38.026337, 42.708248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791885, 38.228550, 42.647408>,  <37.981976, 38.565571, 42.546009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791885, 38.228550, 42.647408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001209, -0.288736, -0.957408,
		0.879863, -0.454679, 0.138234,
		-0.475226, -0.842555, 0.253498,
		37.649319, 37.975784, 42.723457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407581, 38.141644, 42.185326>,  <37.981976, 38.565571, 42.546009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407581, 38.141644, 42.185326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078609, 37.937927, 42.286701>,  <37.881226, 37.815697, 42.347527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078609, 37.937927, 42.286701>,  <38.407581, 38.141644, 42.185326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078609, 37.937927, 42.286701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066440, -0.356468, -0.931942,
		0.564968, -0.783299, 0.259334,
		-0.822433, -0.509288, 0.253435,
		37.831879, 37.785141, 42.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433029, 37.470734, 41.910915>,  <38.407581, 38.141644, 42.185326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433029, 37.470734, 41.910915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038841, 37.491135, 41.975727>,  <37.802330, 37.503376, 42.014614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038841, 37.491135, 41.975727>,  <38.433029, 37.470734, 41.910915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038841, 37.491135, 41.975727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164553, -0.523409, -0.836042,
		0.042170, -0.850554, 0.524194,
		-0.985466, 0.051001, 0.162033,
		37.743202, 37.506435, 42.024338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174141, 36.750732, 41.880672>,  <38.433029, 37.470734, 41.910915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174141, 36.750732, 41.880672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854984, 36.980446, 41.807388>,  <37.663490, 37.118275, 41.763416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854984, 36.980446, 41.807388>,  <38.174141, 36.750732, 41.880672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854984, 36.980446, 41.807388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251845, -0.593713, -0.764250,
		-0.547671, -0.563649, 0.618350,
		-0.797892, 0.574286, -0.183207,
		37.615616, 37.152733, 41.752426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620728, 36.300140, 41.646908>,  <38.174141, 36.750732, 41.880672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620728, 36.300140, 41.646908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491360, 36.663570, 41.541161>,  <37.413738, 36.881630, 41.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491360, 36.663570, 41.541161>,  <37.620728, 36.300140, 41.646908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491360, 36.663570, 41.541161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422632, -0.388667, -0.818731,
		-0.846629, -0.153067, 0.509696,
		-0.323423, 0.908575, -0.264366,
		37.394333, 36.936142, 41.461849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833408, 36.304047, 41.620052>,  <37.620728, 36.300140, 41.646908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833408, 36.304047, 41.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012100, 36.565800, 41.376011>,  <37.119316, 36.722851, 41.229588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012100, 36.565800, 41.376011>,  <36.833408, 36.304047, 41.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012100, 36.565800, 41.376011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547027, -0.339826, -0.765036,
		-0.707952, 0.675502, 0.206155,
		0.446726, 0.654381, -0.610099,
		37.146118, 36.762115, 41.192982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318192, 36.590290, 41.158436>,  <36.833408, 36.304047, 41.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318192, 36.590290, 41.158436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651375, 36.707348, 40.970592>,  <36.851284, 36.777584, 40.857887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651375, 36.707348, 40.970592>,  <36.318192, 36.590290, 41.158436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651375, 36.707348, 40.970592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399913, -0.268163, -0.876447,
		-0.382423, 0.917849, -0.106335,
		0.832960, 0.292648, -0.469611,
		36.901264, 36.795143, 40.829708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075142, 36.728046, 40.455627>,  <36.318192, 36.590290, 41.158436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075142, 36.728046, 40.455627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473721, 36.733864, 40.422459>,  <36.712868, 36.737354, 40.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473721, 36.733864, 40.422459>,  <36.075142, 36.728046, 40.455627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473721, 36.733864, 40.422459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081281, -0.090529, -0.992571,
		-0.021945, 0.995788, -0.089025,
		0.996450, 0.014546, -0.082925,
		36.772655, 36.738228, 40.397583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180393, 37.141373, 39.822884>,  <36.075142, 36.728046, 40.455627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180393, 37.141373, 39.822884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524864, 36.943558, 39.869873>,  <36.731548, 36.824867, 39.898067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524864, 36.943558, 39.869873>,  <36.180393, 37.141373, 39.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524864, 36.943558, 39.869873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070829, -0.112112, -0.991168,
		0.503343, 0.861894, -0.061521,
		0.861179, -0.494540, 0.117477,
		36.783218, 36.795197, 39.905117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612041, 37.405682, 39.295666>,  <36.180393, 37.141373, 39.822884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612041, 37.405682, 39.295666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754398, 37.046391, 39.398834>,  <36.839813, 36.830814, 39.460735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754398, 37.046391, 39.398834>,  <36.612041, 37.405682, 39.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754398, 37.046391, 39.398834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140028, -0.221621, -0.965027,
		0.923976, 0.379564, 0.046903,
		0.355894, -0.898229, 0.257921,
		36.861168, 36.776920, 39.476212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207500, 37.287357, 38.812172>,  <36.612041, 37.405682, 39.295666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207500, 37.287357, 38.812172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106861, 36.931000, 38.963436>,  <37.046478, 36.717186, 39.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106861, 36.931000, 38.963436>,  <37.207500, 37.287357, 38.812172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106861, 36.931000, 38.963436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088251, -0.410221, -0.907706,
		0.963800, -0.195003, 0.181833,
		-0.251597, -0.890894, 0.378162,
		37.031384, 36.663731, 39.076885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693867, 36.854664, 38.451050>,  <37.207500, 37.287357, 38.812172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693867, 36.854664, 38.451050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386414, 36.635448, 38.583027>,  <37.201942, 36.503918, 38.662212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386414, 36.635448, 38.583027>,  <37.693867, 36.854664, 38.451050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386414, 36.635448, 38.583027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002244, -0.513465, -0.858108,
		0.639689, -0.660308, 0.393435,
		-0.768630, -0.548039, 0.329940,
		37.155823, 36.471035, 38.682007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866081, 36.106384, 38.362984>,  <37.693867, 36.854664, 38.451050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866081, 36.106384, 38.362984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466946, 36.129543, 38.375378>,  <37.227463, 36.143436, 38.382812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466946, 36.129543, 38.375378>,  <37.866081, 36.106384, 38.362984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466946, 36.129543, 38.375378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059516, -0.598117, -0.799196,
		-0.027738, -0.799315, 0.600272,
		-0.997842, 0.057894, 0.030982,
		37.167595, 36.146912, 38.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594280, 35.395138, 38.286587>,  <37.866081, 36.106384, 38.362984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594280, 35.395138, 38.286587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328800, 35.670662, 38.169937>,  <37.169514, 35.835976, 38.099949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328800, 35.670662, 38.169937>,  <37.594280, 35.395138, 38.286587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328800, 35.670662, 38.169937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059109, -0.340353, -0.938438,
		-0.745661, -0.640078, 0.185177,
		-0.663699, 0.688811, -0.291622,
		37.129692, 35.877304, 38.082451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014645, 35.018997, 37.799946>,  <37.594280, 35.395138, 38.286587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014645, 35.018997, 37.799946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938046, 35.405930, 37.733486>,  <36.892086, 35.638088, 37.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938046, 35.405930, 37.733486>,  <37.014645, 35.018997, 37.799946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938046, 35.405930, 37.733486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285228, -0.216826, -0.933612,
		-0.939135, -0.131392, 0.317430,
		-0.191496, 0.967328, -0.166153,
		36.880596, 35.696129, 37.683640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533951, 35.081928, 37.252899>,  <37.014645, 35.018997, 37.799946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533951, 35.081928, 37.252899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699581, 35.445805, 37.240223>,  <36.798962, 35.664131, 37.232616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699581, 35.445805, 37.240223>,  <36.533951, 35.081928, 37.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699581, 35.445805, 37.240223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118337, 0.019282, -0.992786,
		-0.902516, 0.414841, 0.115634,
		0.414079, 0.909689, -0.031688,
		36.823803, 35.718712, 37.230717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132370, 35.402084, 36.823505>,  <36.533951, 35.081928, 37.252899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132370, 35.402084, 36.823505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479755, 35.599895, 36.837456>,  <36.688187, 35.718582, 36.845825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479755, 35.599895, 36.837456>,  <36.132370, 35.402084, 36.823505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479755, 35.599895, 36.837456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064211, -0.042450, -0.997033,
		-0.491581, 0.868124, -0.068620,
		0.868461, 0.494529, 0.034875,
		36.740295, 35.748253, 36.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186710, 36.031197, 36.294487>,  <36.132370, 35.402084, 36.823505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186710, 36.031197, 36.294487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570534, 35.947445, 36.369762>,  <36.800827, 35.897194, 36.414928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570534, 35.947445, 36.369762>,  <36.186710, 36.031197, 36.294487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570534, 35.947445, 36.369762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254833, 0.361927, -0.896699,
		0.119635, 0.908389, 0.400645,
		0.959556, -0.209374, 0.188188,
		36.858402, 35.884632, 36.426220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660515, 36.589424, 36.079845>,  <36.186710, 36.031197, 36.294487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660515, 36.589424, 36.079845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971615, 36.339458, 36.106956>,  <37.158276, 36.189480, 36.123222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971615, 36.339458, 36.106956>,  <36.660515, 36.589424, 36.079845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971615, 36.339458, 36.106956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323099, 0.304956, -0.895884,
		0.539179, 0.718671, 0.439087,
		0.777748, -0.624911, 0.067776,
		37.204941, 36.151985, 36.127289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261581, 36.887379, 35.710232>,  <36.660515, 36.589424, 36.079845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261581, 36.887379, 35.710232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343536, 36.495869, 35.708565>,  <37.392712, 36.260963, 35.707565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343536, 36.495869, 35.708565>,  <37.261581, 36.887379, 35.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343536, 36.495869, 35.708565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576240, 0.124065, -0.807809,
		0.791181, 0.163111, 0.589429,
		0.204890, -0.978776, -0.004167,
		37.405003, 36.202236, 35.707314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019695, 36.756386, 35.761047>,  <37.261581, 36.887379, 35.710232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019695, 36.756386, 35.761047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844486, 36.441414, 35.587570>,  <37.739361, 36.252430, 35.483482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844486, 36.441414, 35.587570>,  <38.019695, 36.756386, 35.761047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844486, 36.441414, 35.587570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616364, 0.088125, -0.782515,
		0.654397, -0.610068, 0.446745,
		-0.438018, -0.787433, -0.433693,
		37.713081, 36.205185, 35.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615387, 36.474667, 35.518692>,  <38.019695, 36.756386, 35.761047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615387, 36.474667, 35.518692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328876, 36.314644, 35.289993>,  <38.156971, 36.218628, 35.152775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328876, 36.314644, 35.289993>,  <38.615387, 36.474667, 35.518692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328876, 36.314644, 35.289993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649112, -0.081269, -0.756339,
		0.256117, -0.912878, 0.317896,
		-0.716280, -0.400061, -0.571746,
		38.113991, 36.194626, 35.118469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881077, 35.931721, 35.232521>,  <38.615387, 36.474667, 35.518692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881077, 35.931721, 35.232521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557575, 35.993748, 35.005589>,  <38.363472, 36.030964, 34.869427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557575, 35.993748, 35.005589>,  <38.881077, 35.931721, 35.232521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557575, 35.993748, 35.005589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537513, -0.196675, -0.819999,
		-0.238736, -0.968129, 0.075711,
		-0.808755, 0.155068, -0.567335,
		38.314949, 36.040268, 34.835388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912548, 35.364506, 34.681965>,  <38.881077, 35.931721, 35.232521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912548, 35.364506, 34.681965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681053, 35.663540, 34.551624>,  <38.542156, 35.842960, 34.473419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681053, 35.663540, 34.551624>,  <38.912548, 35.364506, 34.681965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681053, 35.663540, 34.551624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524638, 0.035393, -0.850590,
		-0.624358, -0.663219, -0.412696,
		-0.578734, 0.747588, -0.325852,
		38.507435, 35.887817, 34.453869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792027, 35.122395, 33.976948>,  <38.912548, 35.364506, 34.681965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792027, 35.122395, 33.976948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686871, 35.507469, 34.002602>,  <38.623775, 35.738514, 34.017994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686871, 35.507469, 34.002602>,  <38.792027, 35.122395, 33.976948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686871, 35.507469, 34.002602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456129, 0.182589, -0.870981,
		-0.850196, -0.199719, -0.487113,
		-0.262893, 0.962691, 0.064139,
		38.608002, 35.796276, 34.021843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345245, 35.344406, 33.342735>,  <38.792027, 35.122395, 33.976948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345245, 35.344406, 33.342735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569500, 35.625801, 33.517460>,  <38.704052, 35.794636, 33.622295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569500, 35.625801, 33.517460>,  <38.345245, 35.344406, 33.342735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569500, 35.625801, 33.517460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555833, 0.071304, -0.828230,
		-0.613793, 0.707126, -0.351044,
		0.560632, 0.703483, 0.436810,
		38.737690, 35.836845, 33.648502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295357, 35.870197, 32.858604>,  <38.345245, 35.344406, 33.342735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295357, 35.870197, 32.858604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629116, 35.842293, 33.077297>,  <38.829372, 35.825550, 33.208515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629116, 35.842293, 33.077297>,  <38.295357, 35.870197, 32.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629116, 35.842293, 33.077297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530461, -0.167712, -0.830954,
		0.149661, 0.983365, -0.102933,
		0.834394, -0.069759, 0.546736,
		38.879433, 35.821365, 33.241318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906166, 36.433025, 32.683159>,  <38.295357, 35.870197, 32.858604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906166, 36.433025, 32.683159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006741, 36.063644, 32.799099>,  <39.067085, 35.842014, 32.868664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006741, 36.063644, 32.799099>,  <38.906166, 36.433025, 32.683159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006741, 36.063644, 32.799099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596048, -0.088207, -0.798089,
		0.762565, 0.373432, 0.528245,
		0.251437, -0.923455, 0.289846,
		39.082172, 35.786610, 32.886051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637318, 36.298897, 32.804707>,  <38.906166, 36.433025, 32.683159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637318, 36.298897, 32.804707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418255, 35.997044, 32.660152>,  <39.286819, 35.815929, 32.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418255, 35.997044, 32.660152>,  <39.637318, 36.298897, 32.804707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418255, 35.997044, 32.660152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684604, -0.155830, -0.712063,
		0.481033, -0.637371, 0.601968,
		-0.547653, -0.754636, -0.361388,
		39.253960, 35.770653, 32.551735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089565, 35.801109, 32.695869>,  <39.637318, 36.298897, 32.804707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089565, 35.801109, 32.695869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766556, 35.737228, 32.468750>,  <39.572750, 35.698898, 32.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766556, 35.737228, 32.468750>,  <40.089565, 35.801109, 32.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766556, 35.737228, 32.468750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589605, -0.191807, -0.784586,
		0.016392, -0.968352, 0.249051,
		-0.807525, -0.159703, -0.567801,
		39.524300, 35.689316, 32.298409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916168, 35.756645, 33.419189>,  <40.089565, 35.801109, 32.695869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916168, 35.756645, 33.419189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282120, 35.620480, 33.506016>,  <40.501690, 35.538780, 33.558109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282120, 35.620480, 33.506016>,  <39.916168, 35.756645, 33.419189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282120, 35.620480, 33.506016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396886, 0.659763, -0.638117,
		0.074012, 0.669950, 0.738708,
		0.914879, -0.340411, 0.217064,
		40.556583, 35.518356, 33.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445435, 36.307438, 33.671604>,  <39.916168, 35.756645, 33.419189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445435, 36.307438, 33.671604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638596, 36.002617, 33.499058>,  <40.754490, 35.819725, 33.395531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638596, 36.002617, 33.499058>,  <40.445435, 36.307438, 33.671604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638596, 36.002617, 33.499058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396923, 0.629586, -0.667888,
		0.780550, 0.151304, 0.606505,
		0.482901, -0.762056, -0.431367,
		40.783466, 35.773998, 33.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190083, 36.409950, 33.632015>,  <40.445435, 36.307438, 33.671604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190083, 36.409950, 33.632015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012589, 36.213509, 33.332172>,  <40.906090, 36.095642, 33.152267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012589, 36.213509, 33.332172>,  <41.190083, 36.409950, 33.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012589, 36.213509, 33.332172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196938, 0.762584, -0.616183,
		0.874250, -0.421050, -0.241670,
		-0.443737, -0.491104, -0.749610,
		40.879467, 36.066177, 33.107288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652210, 36.828938, 33.950981>,  <41.190083, 36.409950, 33.632015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652210, 36.828938, 33.950981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024715, 36.769684, 34.084133>,  <42.248219, 36.734131, 34.164024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024715, 36.769684, 34.084133>,  <41.652210, 36.828938, 33.950981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024715, 36.769684, 34.084133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208433, 0.532762, 0.820195,
		-0.298841, -0.833199, 0.465266,
		0.931262, -0.148131, 0.332877,
		42.304092, 36.725243, 34.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693260, 36.672573, 34.667870>,  <41.652210, 36.828938, 33.950981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693260, 36.672573, 34.667870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057957, 36.816555, 34.588715>,  <42.276775, 36.902946, 34.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057957, 36.816555, 34.588715>,  <41.693260, 36.672573, 34.667870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057957, 36.816555, 34.588715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104782, 0.669621, 0.735274,
		0.397177, -0.649644, 0.648238,
		0.911741, 0.359958, -0.197888,
		42.331478, 36.924541, 34.529346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958088, 36.599537, 35.380264>,  <41.693260, 36.672573, 34.667870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958088, 36.599537, 35.380264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171791, 36.867527, 35.174076>,  <42.300011, 37.028320, 35.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171791, 36.867527, 35.174076>,  <41.958088, 36.599537, 35.380264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171791, 36.867527, 35.174076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027617, 0.623298, 0.781497,
		0.844873, -0.403282, 0.351502,
		0.534254, 0.669973, -0.515470,
		42.332066, 37.068520, 35.019436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376389, 36.881977, 35.851112>,  <41.958088, 36.599537, 35.380264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376389, 36.881977, 35.851112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371330, 37.157310, 35.560997>,  <42.368294, 37.322510, 35.386929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371330, 37.157310, 35.560997>,  <42.376389, 36.881977, 35.851112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371330, 37.157310, 35.560997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000285, 0.725341, 0.688390,
		0.999920, 0.008914, -0.008979,
		-0.012649, 0.688332, -0.725285,
		42.367535, 37.363811, 35.343410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977119, 37.361877, 35.856976>,  <42.376389, 36.881977, 35.851112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977119, 37.361877, 35.856976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766106, 37.593605, 35.608429>,  <42.639500, 37.732643, 35.459301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766106, 37.593605, 35.608429>,  <42.977119, 37.361877, 35.856976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766106, 37.593605, 35.608429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126001, 0.776688, 0.617154,
		0.840140, 0.247274, -0.482722,
		-0.527530, 0.579319, -0.621370,
		42.607845, 37.767403, 35.422016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.285717, 37.931786, 35.715218>,  <42.977119, 37.361877, 35.856976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.285717, 37.931786, 35.715218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901459, 38.025898, 35.656147>,  <42.670906, 38.082363, 35.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901459, 38.025898, 35.656147>,  <43.285717, 37.931786, 35.715218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901459, 38.025898, 35.656147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073941, 0.729020, 0.680487,
		0.267763, 0.642786, -0.717725,
		-0.960643, 0.235279, -0.147676,
		42.613266, 38.096481, 35.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228127, 38.699913, 35.617966>,  <43.285717, 37.931786, 35.715218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228127, 38.699913, 35.617966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868774, 38.572517, 35.738953>,  <42.653164, 38.496078, 35.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868774, 38.572517, 35.738953>,  <43.228127, 38.699913, 35.617966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868774, 38.572517, 35.738953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000539, 0.689431, 0.724351,
		-0.439227, 0.650576, -0.619540,
		-0.898376, -0.318488, 0.302465,
		42.599262, 38.476971, 35.829693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006664, 39.232841, 35.899620>,  <43.228127, 38.699913, 35.617966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006664, 39.232841, 35.899620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741638, 38.967018, 36.037815>,  <42.582623, 38.807522, 36.120731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741638, 38.967018, 36.037815>,  <43.006664, 39.232841, 35.899620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741638, 38.967018, 36.037815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060462, 0.507217, 0.859695,
		-0.746560, 0.548715, -0.376245,
		-0.662565, -0.664562, 0.345492,
		42.542870, 38.767651, 36.141464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473293, 39.609913, 36.168880>,  <43.006664, 39.232841, 35.899620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473293, 39.609913, 36.168880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418301, 39.259319, 36.353436>,  <42.385307, 39.048965, 36.464169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418301, 39.259319, 36.353436>,  <42.473293, 39.609913, 36.168880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418301, 39.259319, 36.353436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109211, 0.476388, 0.872426,
		-0.984466, 0.069550, -0.161214,
		-0.137478, -0.876480, 0.461392,
		42.377056, 38.996376, 36.491852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961521, 39.780590, 36.642471>,  <42.473293, 39.609913, 36.168880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961521, 39.780590, 36.642471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162701, 39.454842, 36.758293>,  <42.283409, 39.259392, 36.827785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162701, 39.454842, 36.758293>,  <41.961521, 39.780590, 36.642471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162701, 39.454842, 36.758293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024609, 0.321377, 0.946632,
		-0.863966, -0.483233, 0.141595,
		0.502949, -0.814373, 0.289550,
		42.313583, 39.210529, 36.845158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574898, 39.580803, 37.192585>,  <41.961521, 39.780590, 36.642471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574898, 39.580803, 37.192585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931377, 39.406914, 37.244389>,  <42.145267, 39.302578, 37.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931377, 39.406914, 37.244389>,  <41.574898, 39.580803, 37.192585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931377, 39.406914, 37.244389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033208, 0.347271, 0.937177,
		-0.452390, -0.830913, 0.323925,
		0.891202, -0.434726, 0.129509,
		42.198738, 39.276497, 37.283241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606644, 39.404755, 37.886719>,  <41.574898, 39.580803, 37.192585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606644, 39.404755, 37.886719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992393, 39.398701, 37.781078>,  <42.223843, 39.395069, 37.717693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992393, 39.398701, 37.781078>,  <41.606644, 39.404755, 37.886719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992393, 39.398701, 37.781078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253222, 0.341669, 0.905064,
		0.076541, -0.939699, 0.333329,
		0.964375, -0.015132, -0.264104,
		42.281708, 39.394161, 37.701847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900227, 39.114796, 38.438843>,  <41.606644, 39.404755, 37.886719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900227, 39.114796, 38.438843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187565, 39.296429, 38.228024>,  <42.359970, 39.405411, 38.101532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187565, 39.296429, 38.228024>,  <41.900227, 39.114796, 38.438843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187565, 39.296429, 38.228024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340892, 0.430652, 0.835662,
		0.606438, -0.779963, 0.154564,
		0.718349, 0.454087, -0.527047,
		42.403069, 39.432655, 38.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574734, 38.901409, 38.743851>,  <41.900227, 39.114796, 38.438843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574734, 38.901409, 38.743851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632790, 39.256790, 38.569687>,  <42.667622, 39.470020, 38.465187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632790, 39.256790, 38.569687>,  <42.574734, 38.901409, 38.743851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632790, 39.256790, 38.569687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283395, 0.384300, 0.878636,
		0.947957, -0.250916, -0.196007,
		0.145138, 0.888456, -0.435408,
		42.676331, 39.523327, 38.439064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253475, 39.168804, 38.984715>,  <42.574734, 38.901409, 38.743851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253475, 39.168804, 38.984715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004444, 39.458622, 38.866440>,  <42.855026, 39.632511, 38.795475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004444, 39.458622, 38.866440>,  <43.253475, 39.168804, 38.984715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004444, 39.458622, 38.866440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234460, 0.533193, 0.812855,
		0.746609, 0.436738, -0.501831,
		-0.622578, 0.724544, -0.295689,
		42.817669, 39.675983, 38.777733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623600, 39.586987, 39.489239>,  <43.253475, 39.168804, 38.984715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623600, 39.586987, 39.489239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329769, 39.771645, 39.290329>,  <43.153469, 39.882439, 39.170982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329769, 39.771645, 39.290329>,  <43.623600, 39.586987, 39.489239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329769, 39.771645, 39.290329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027636, 0.752623, 0.657872,
		0.677962, 0.469515, -0.565618,
		-0.734577, 0.461643, -0.497274,
		43.109394, 39.910137, 39.141148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765846, 40.300102, 39.316372>,  <43.623600, 39.586987, 39.489239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765846, 40.300102, 39.316372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367210, 40.269089, 39.305035>,  <43.128029, 40.250481, 39.298233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.367210, 40.269089, 39.305035>,  <43.765846, 40.300102, 39.316372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367210, 40.269089, 39.305035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078690, 0.788566, 0.609895,
		-0.024938, 0.610044, -0.791975,
		-0.996587, -0.077530, -0.028339,
		43.068233, 40.245831, 39.296532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500149, 40.899498, 39.088531>,  <43.765846, 40.300102, 39.316372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500149, 40.899498, 39.088531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193104, 40.753658, 39.299374>,  <43.008877, 40.666157, 39.425880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193104, 40.753658, 39.299374>,  <43.500149, 40.899498, 39.088531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193104, 40.753658, 39.299374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059088, 0.859184, 0.508245,
		-0.638183, 0.358990, -0.681064,
		-0.767614, -0.364596, 0.527104,
		42.962818, 40.644279, 39.457504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925812, 41.426048, 39.152428>,  <43.500149, 40.899498, 39.088531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925812, 41.426048, 39.152428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887482, 41.164837, 39.452923>,  <42.864483, 41.008110, 39.633221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887482, 41.164837, 39.452923>,  <42.925812, 41.426048, 39.152428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887482, 41.164837, 39.452923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158460, 0.755099, 0.636172,
		-0.982704, -0.058079, -0.175839,
		-0.095827, -0.653033, 0.751243,
		42.858734, 40.968925, 39.678295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272030, 41.547607, 39.415489>,  <42.925812, 41.426048, 39.152428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272030, 41.547607, 39.415489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477104, 41.377663, 39.713924>,  <42.600147, 41.275696, 39.892986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477104, 41.377663, 39.713924>,  <42.272030, 41.547607, 39.415489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477104, 41.377663, 39.713924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047882, 0.853483, 0.518916,
		-0.857240, -0.301766, 0.417226,
		0.512686, -0.424858, 0.746089,
		42.630909, 41.250206, 39.937752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953220, 41.979076, 39.971703>,  <42.272030, 41.547607, 39.415489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953220, 41.979076, 39.971703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283234, 41.807484, 40.118832>,  <42.481243, 41.704529, 40.207108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283234, 41.807484, 40.118832>,  <41.953220, 41.979076, 39.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283234, 41.807484, 40.118832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153686, 0.796723, 0.584477,
		-0.543780, -0.425686, 0.723253,
		0.825036, -0.428981, 0.367820,
		42.530743, 41.678791, 40.229179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996647, 42.425751, 40.567474>,  <41.953220, 41.979076, 39.971703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996647, 42.425751, 40.567474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337799, 42.220207, 40.604458>,  <42.542492, 42.096882, 40.626648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.337799, 42.220207, 40.604458>,  <41.996647, 42.425751, 40.567474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337799, 42.220207, 40.604458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207774, -0.171579, 0.963011,
		-0.478986, -0.840542, -0.253103,
		0.852879, -0.513857, 0.092459,
		42.593662, 42.066051, 40.632195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068684, 43.175995, 40.255459>,  <41.996647, 42.425751, 40.567474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068684, 43.175995, 40.255459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355469, 43.435532, 40.357414>,  <42.527542, 43.591251, 40.418587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355469, 43.435532, 40.357414>,  <42.068684, 43.175995, 40.255459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355469, 43.435532, 40.357414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631373, -0.449402, -0.631985,
		-0.295511, 0.614040, -0.731866,
		0.716966, 0.648840, 0.254885,
		42.570560, 43.630184, 40.433880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277805, 43.487896, 39.663456>,  <42.068684, 43.175995, 40.255459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277805, 43.487896, 39.663456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555153, 43.452496, 39.949509>,  <42.721561, 43.431255, 40.121140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555153, 43.452496, 39.949509>,  <42.277805, 43.487896, 39.663456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555153, 43.452496, 39.949509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623270, -0.424404, -0.656823,
		0.361631, 0.901138, -0.239109,
		0.693367, -0.088498, 0.715130,
		42.763165, 43.425945, 40.164047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946712, 43.636456, 39.351883>,  <42.277805, 43.487896, 39.663456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946712, 43.636456, 39.351883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009563, 43.421505, 39.683315>,  <43.047276, 43.292534, 39.882175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009563, 43.421505, 39.683315>,  <42.946712, 43.636456, 39.351883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009563, 43.421505, 39.683315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777136, -0.450438, -0.439506,
		0.609402, 0.712976, 0.346834,
		0.157130, -0.537373, 0.828577,
		43.056702, 43.260292, 39.931889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623177, 43.669209, 39.417877>,  <42.946712, 43.636456, 39.351883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623177, 43.669209, 39.417877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451794, 43.327820, 39.536537>,  <43.348965, 43.122986, 39.607735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451794, 43.327820, 39.536537>,  <43.623177, 43.669209, 39.417877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451794, 43.327820, 39.536537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642464, -0.518618, -0.564160,
		0.635345, -0.051131, 0.770534,
		-0.428459, -0.853476, 0.296651,
		43.323257, 43.071777, 39.625534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165813, 43.302719, 39.408306>,  <43.623177, 43.669209, 39.417877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165813, 43.302719, 39.408306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862663, 43.043587, 39.439129>,  <43.680771, 42.888107, 39.457623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862663, 43.043587, 39.439129>,  <44.165813, 43.302719, 39.408306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862663, 43.043587, 39.439129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601607, -0.739675, -0.301579,
		0.252369, -0.182202, 0.950322,
		-0.757878, -0.647830, 0.077057,
		43.635300, 42.849239, 39.462246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801670, 42.887295, 39.191982>,  <44.165813, 43.302719, 39.408306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801670, 42.887295, 39.191982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132496, 42.689899, 39.084324>,  <45.330990, 42.571461, 39.019730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132496, 42.689899, 39.084324>,  <44.801670, 42.887295, 39.191982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132496, 42.689899, 39.084324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454428, 0.868819, -0.196594,
		0.330856, 0.040288, 0.942821,
		0.827061, -0.493488, -0.269146,
		45.380615, 42.541851, 39.003582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330696, 43.101727, 39.638214>,  <44.801670, 42.887295, 39.191982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330696, 43.101727, 39.638214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466068, 42.983295, 39.280933>,  <45.547291, 42.912239, 39.066566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.466068, 42.983295, 39.280933>,  <45.330696, 43.101727, 39.638214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466068, 42.983295, 39.280933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277423, 0.938414, -0.205948,
		0.899165, -0.178094, 0.399730,
		0.338434, -0.296076, -0.893197,
		45.567600, 42.894474, 39.012974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036724, 43.427513, 39.443329>,  <45.330696, 43.101727, 39.638214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036724, 43.427513, 39.443329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816261, 43.308323, 39.131577>,  <45.683983, 43.236809, 38.944523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816261, 43.308323, 39.131577>,  <46.036724, 43.427513, 39.443329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816261, 43.308323, 39.131577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284642, 0.810887, -0.511313,
		0.784349, -0.503659, -0.362111,
		-0.551158, -0.297976, -0.779381,
		45.650913, 43.218929, 38.897762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198689, 43.825302, 38.963406>,  <46.036724, 43.427513, 39.443329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198689, 43.825302, 38.963406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902203, 43.635551, 38.773430>,  <45.724312, 43.521702, 38.659443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902203, 43.635551, 38.773430>,  <46.198689, 43.825302, 38.963406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902203, 43.635551, 38.773430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000752, 0.706941, -0.707272,
		0.671259, -0.524603, -0.523644,
		-0.741223, -0.474368, -0.474935,
		45.679836, 43.493240, 38.630947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520718, 43.588665, 38.357681>,  <46.198689, 43.825302, 38.963406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520718, 43.588665, 38.357681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150776, 43.705807, 38.260616>,  <45.928810, 43.776093, 38.202377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150776, 43.705807, 38.260616>,  <46.520718, 43.588665, 38.357681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150776, 43.705807, 38.260616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142851, -0.858800, -0.491992,
		-0.352483, -0.420355, 0.836097,
		-0.924851, 0.292856, -0.242664,
		45.873322, 43.793663, 38.187817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083603, 43.071926, 38.527767>,  <46.520718, 43.588665, 38.357681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083603, 43.071926, 38.527767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894958, 43.283417, 38.245480>,  <45.781773, 43.410313, 38.076107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.894958, 43.283417, 38.245480>,  <46.083603, 43.071926, 38.527767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.894958, 43.283417, 38.245480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162196, -0.838662, -0.519941,
		-0.866762, -0.130746, 0.481279,
		-0.471611, 0.528727, -0.705713,
		45.753475, 43.442036, 38.033764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453873, 42.738689, 38.438587>,  <46.083603, 43.071926, 38.527767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453873, 42.738689, 38.438587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513729, 42.946575, 38.102135>,  <45.549644, 43.071308, 37.900265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513729, 42.946575, 38.102135>,  <45.453873, 42.738689, 38.438587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513729, 42.946575, 38.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202545, -0.816556, -0.540566,
		-0.967772, 0.251258, -0.016924,
		0.149641, 0.519717, -0.841131,
		45.558620, 43.102489, 37.849796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875645, 42.659298, 37.971928>,  <45.453873, 42.738689, 38.438587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875645, 42.659298, 37.971928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182106, 42.759357, 37.735138>,  <45.365982, 42.819393, 37.593063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182106, 42.759357, 37.735138>,  <44.875645, 42.659298, 37.971928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182106, 42.759357, 37.735138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196047, -0.786257, -0.585974,
		-0.612026, 0.565001, -0.553352,
		0.766152, 0.250148, -0.591977,
		45.411953, 42.834400, 37.557545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690456, 42.423260, 37.266449>,  <44.875645, 42.659298, 37.971928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690456, 42.423260, 37.266449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081581, 42.502136, 37.238167>,  <45.316257, 42.549461, 37.221199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081581, 42.502136, 37.238167>,  <44.690456, 42.423260, 37.266449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081581, 42.502136, 37.238167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116659, -0.792900, -0.598081,
		-0.173999, 0.576562, -0.798311,
		0.977811, 0.197196, -0.070702,
		45.374924, 42.561295, 37.216957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820805, 42.372562, 36.516464>,  <44.690456, 42.423260, 37.266449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820805, 42.372562, 36.516464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161777, 42.319572, 36.718773>,  <45.366360, 42.287777, 36.840160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.161777, 42.319572, 36.718773>,  <44.820805, 42.372562, 36.516464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161777, 42.319572, 36.718773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195445, -0.816497, -0.543261,
		0.484933, 0.561945, -0.670118,
		0.852433, -0.132474, 0.505776,
		45.417507, 42.279831, 36.870506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310776, 42.058960, 36.007904>,  <44.820805, 42.372562, 36.516464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310776, 42.058960, 36.007904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461250, 41.971226, 36.367989>,  <45.551537, 41.918583, 36.584038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461250, 41.971226, 36.367989>,  <45.310776, 42.058960, 36.007904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461250, 41.971226, 36.367989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244300, -0.913715, -0.324718,
		0.893757, 0.342075, -0.290143,
		0.376187, -0.219337, 0.900208,
		45.574108, 41.905426, 36.638050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047512, 41.764816, 35.897186>,  <45.310776, 42.058960, 36.007904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047512, 41.764816, 35.897186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883228, 41.647976, 36.242672>,  <45.784657, 41.577873, 36.449963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883228, 41.647976, 36.242672>,  <46.047512, 41.764816, 35.897186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883228, 41.647976, 36.242672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293366, -0.939255, -0.178147,
		0.863281, 0.180217, 0.471452,
		-0.410709, -0.292099, 0.863711,
		45.760017, 41.560345, 36.501785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519222, 41.175911, 36.055584>,  <46.047512, 41.764816, 35.897186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519222, 41.175911, 36.055584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205006, 41.111320, 36.294533>,  <46.016476, 41.072567, 36.437901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205006, 41.111320, 36.294533>,  <46.519222, 41.175911, 36.055584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205006, 41.111320, 36.294533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229676, -0.972479, 0.039154,
		0.574608, 0.167959, 0.801009,
		-0.785541, -0.161474, 0.597370,
		45.969345, 41.062878, 36.473743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.744099, 40.605022, 36.477379>,  <46.519222, 41.175911, 36.055584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.744099, 40.605022, 36.477379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350819, 40.619686, 36.548897>,  <46.114849, 40.628487, 36.591808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.350819, 40.619686, 36.548897>,  <46.744099, 40.605022, 36.477379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350819, 40.619686, 36.548897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023173, -0.996765, 0.076962,
		0.181040, 0.071526, 0.980871,
		-0.983203, 0.036663, 0.178797,
		46.055859, 40.630684, 36.602535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656277, 40.107613, 37.030457>,  <46.744099, 40.605022, 36.477379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656277, 40.107613, 37.030457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298073, 40.140171, 36.855442>,  <46.083149, 40.159706, 36.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.298073, 40.140171, 36.855442>,  <46.656277, 40.107613, 37.030457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298073, 40.140171, 36.855442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117433, -0.991506, 0.055902,
		-0.429267, 0.101441, 0.897463,
		-0.895511, 0.081395, -0.437534,
		46.029419, 40.164589, 36.724182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207481, 39.636543, 37.399506>,  <46.656277, 40.107613, 37.030457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207481, 39.636543, 37.399506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040646, 39.684589, 37.039150>,  <45.940544, 39.713417, 36.822937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040646, 39.684589, 37.039150>,  <46.207481, 39.636543, 37.399506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040646, 39.684589, 37.039150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211146, -0.976914, -0.032496,
		-0.883997, 0.176665, 0.432827,
		-0.417094, 0.120116, -0.900891,
		45.915516, 39.720623, 36.768883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690403, 39.197330, 37.402462>,  <46.207481, 39.636543, 37.399506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690403, 39.197330, 37.402462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707546, 39.263145, 37.008286>,  <45.717834, 39.302635, 36.771782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707546, 39.263145, 37.008286>,  <45.690403, 39.197330, 37.402462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707546, 39.263145, 37.008286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336754, -0.926247, -0.169299,
		-0.940616, 0.339108, 0.015706,
		0.042863, 0.164535, -0.985440,
		45.720406, 39.312508, 36.712654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041096, 38.870331, 37.097767>,  <45.690403, 39.197330, 37.402462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041096, 38.870331, 37.097767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284645, 38.921780, 36.784660>,  <45.430775, 38.952648, 36.596794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.284645, 38.921780, 36.784660>,  <45.041096, 38.870331, 37.097767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284645, 38.921780, 36.784660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390128, -0.810634, -0.436660,
		-0.690703, 0.571252, -0.443397,
		0.608876, 0.128620, -0.782769,
		45.467308, 38.960365, 36.549831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552425, 38.811237, 36.447231>,  <45.041096, 38.870331, 37.097767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552425, 38.811237, 36.447231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925907, 38.725098, 36.332813>,  <45.149998, 38.673416, 36.264164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925907, 38.725098, 36.332813>,  <44.552425, 38.811237, 36.447231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925907, 38.725098, 36.332813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330345, -0.826247, -0.456276,
		-0.138085, 0.520520, -0.842610,
		0.933705, -0.215346, -0.286044,
		45.206020, 38.660492, 36.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692814, 38.651226, 35.751717>,  <44.552425, 38.811237, 36.447231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692814, 38.651226, 35.751717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001358, 38.439846, 35.893559>,  <45.186485, 38.313019, 35.978664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001358, 38.439846, 35.893559>,  <44.692814, 38.651226, 35.751717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001358, 38.439846, 35.893559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309316, -0.798281, -0.516789,
		0.556173, 0.288945, -0.779219,
		0.771360, -0.528449, 0.354607,
		45.232765, 38.281311, 35.999939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796818, 38.201870, 35.177418>,  <44.692814, 38.651226, 35.751717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796818, 38.201870, 35.177418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038239, 38.067432, 35.466625>,  <45.183090, 37.986771, 35.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038239, 38.067432, 35.466625>,  <44.796818, 38.201870, 35.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038239, 38.067432, 35.466625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028266, -0.897225, -0.440668,
		0.796820, 0.286405, -0.532025,
		0.603555, -0.336095, 0.723022,
		45.219307, 37.966602, 35.683533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378666, 37.925167, 34.801987>,  <44.796818, 38.201870, 35.177418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378666, 37.925167, 34.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396736, 37.730469, 35.150936>,  <45.407578, 37.613651, 35.360306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396736, 37.730469, 35.150936>,  <45.378666, 37.925167, 34.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396736, 37.730469, 35.150936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008575, -0.873045, -0.487564,
		0.998942, 0.029507, -0.035267,
		0.045177, -0.486746, 0.872374,
		45.410290, 37.584446, 35.412647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858288, 37.448399, 34.719116>,  <45.378666, 37.925167, 34.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858288, 37.448399, 34.719116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654568, 37.304108, 35.031651>,  <45.532337, 37.217533, 35.219173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.654568, 37.304108, 35.031651>,  <45.858288, 37.448399, 34.719116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654568, 37.304108, 35.031651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060179, -0.920619, -0.385797,
		0.858483, -0.149466, 0.490578,
		-0.509299, -0.360723, 0.781341,
		45.501778, 37.195892, 35.266052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305214, 36.965275, 35.039429>,  <45.858288, 37.448399, 34.719116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305214, 36.965275, 35.039429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913376, 36.904480, 35.092037>,  <45.678272, 36.868004, 35.123604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.913376, 36.904480, 35.092037>,  <46.305214, 36.965275, 35.039429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913376, 36.904480, 35.092037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094606, -0.926001, -0.365476,
		0.177338, -0.345575, 0.921482,
		-0.979592, -0.151991, 0.131522,
		45.619499, 36.858883, 35.131493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323334, 36.149746, 35.114567>,  <46.305214, 36.965275, 35.039429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323334, 36.149746, 35.114567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953747, 36.301323, 35.135288>,  <45.731995, 36.392269, 35.147720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953747, 36.301323, 35.135288>,  <46.323334, 36.149746, 35.114567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953747, 36.301323, 35.135288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376067, -0.924807, 0.057492,
		0.069698, 0.033638, 0.997001,
		-0.923968, 0.378946, 0.051807,
		45.676556, 36.415009, 35.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499577, 35.829193, 35.788227>,  <46.323334, 36.149746, 35.114567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499577, 35.829193, 35.788227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628227, 35.450474, 35.792839>,  <46.705418, 35.223244, 35.795605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628227, 35.450474, 35.792839>,  <46.499577, 35.829193, 35.788227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628227, 35.450474, 35.792839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677647, 0.221656, -0.701187,
		0.661326, 0.233332, 0.712884,
		0.321625, -0.946797, 0.011530,
		46.724716, 35.166435, 35.796299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274723, 35.735184, 35.728058>,  <46.499577, 35.829193, 35.788227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274723, 35.735184, 35.728058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133087, 35.393436, 35.575909>,  <47.048107, 35.188389, 35.484619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133087, 35.393436, 35.575909>,  <47.274723, 35.735184, 35.728058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133087, 35.393436, 35.575909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546801, 0.140826, -0.825334,
		0.758702, -0.500230, 0.417302,
		-0.354090, -0.854364, -0.380371,
		47.026859, 35.137127, 35.461796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881268, 35.375854, 35.534912>,  <47.274723, 35.735184, 35.728058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881268, 35.375854, 35.534912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560375, 35.284969, 35.314075>,  <47.367840, 35.230438, 35.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560375, 35.284969, 35.314075>,  <47.881268, 35.375854, 35.534912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560375, 35.284969, 35.314075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492355, 0.271229, -0.827056,
		0.337661, -0.935312, -0.105718,
		-0.802230, -0.227213, -0.552089,
		47.319706, 35.216805, 35.148449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.001068, 34.810318, 35.129871>,  <47.881268, 35.375854, 35.534912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.001068, 34.810318, 35.129871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752945, 35.078911, 34.967724>,  <47.604069, 35.240067, 34.870434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.752945, 35.078911, 34.967724>,  <48.001068, 34.810318, 35.129871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.752945, 35.078911, 34.967724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662449, 0.171785, -0.729144,
		-0.419969, -0.720836, -0.551382,
		-0.620312, 0.671480, -0.405372,
		47.566853, 35.280354, 34.846111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.898373, 41.482433, 42.237057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564655, 41.699993, 42.200993>,  <35.364426, 41.830528, 42.179352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564655, 41.699993, 42.200993>,  <35.898373, 41.482433, 42.237057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564655, 41.699993, 42.200993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071658, -0.055175, -0.995902,
		-0.546649, -0.837332, 0.007057,
		-0.834290, 0.543904, -0.090163,
		35.314369, 41.863163, 42.173943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419670, 41.089954, 41.947712>,  <35.898373, 41.482433, 42.237057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419670, 41.089954, 41.947712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270290, 41.455559, 41.884315>,  <35.180660, 41.674923, 41.846279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270290, 41.455559, 41.884315>,  <35.419670, 41.089954, 41.947712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270290, 41.455559, 41.884315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127516, -0.219808, -0.967173,
		-0.918843, -0.340984, 0.198638,
		-0.373453, 0.914010, -0.158488,
		35.158253, 41.729763, 41.836769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718555, 41.016521, 41.720039>,  <35.419670, 41.089954, 41.947712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718555, 41.016521, 41.720039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851086, 41.374596, 41.600796>,  <34.930603, 41.589439, 41.529247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.851086, 41.374596, 41.600796>,  <34.718555, 41.016521, 41.720039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851086, 41.374596, 41.600796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264319, -0.215242, -0.940109,
		-0.905735, 0.390282, 0.165298,
		0.331329, 0.895182, -0.298112,
		34.950485, 41.643150, 41.511364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191933, 41.305252, 41.378147>,  <34.718555, 41.016521, 41.720039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191933, 41.305252, 41.378147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514648, 41.484268, 41.223854>,  <34.708279, 41.591679, 41.131279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.514648, 41.484268, 41.223854>,  <34.191933, 41.305252, 41.378147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514648, 41.484268, 41.223854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197271, -0.411355, -0.889871,
		-0.556931, 0.794035, -0.243590,
		0.806791, 0.447543, -0.385737,
		34.756687, 41.618530, 41.108131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955227, 41.484016, 40.753071>,  <34.191933, 41.305252, 41.378147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955227, 41.484016, 40.753071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344788, 41.538792, 40.680664>,  <34.578526, 41.571655, 40.637222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.344788, 41.538792, 40.680664>,  <33.955227, 41.484016, 40.753071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344788, 41.538792, 40.680664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120664, -0.363110, -0.923900,
		-0.192245, 0.921629, -0.337109,
		0.973900, 0.136939, -0.181013,
		34.636959, 41.579872, 40.626362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955452, 41.773247, 40.105755>,  <33.955227, 41.484016, 40.753071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955452, 41.773247, 40.105755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319351, 41.624702, 40.179993>,  <34.537693, 41.535576, 40.224537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319351, 41.624702, 40.179993>,  <33.955452, 41.773247, 40.105755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319351, 41.624702, 40.179993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106794, -0.222674, -0.969026,
		0.401183, 0.901393, -0.162919,
		0.909751, -0.371358, 0.185596,
		34.592278, 41.513294, 40.235672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334023, 42.109863, 39.682468>,  <33.955452, 41.773247, 40.105755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334023, 42.109863, 39.682468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509808, 41.763367, 39.777546>,  <34.615276, 41.555470, 39.834591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509808, 41.763367, 39.777546>,  <34.334023, 42.109863, 39.682468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509808, 41.763367, 39.777546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030389, -0.278800, -0.959868,
		0.897749, 0.414599, -0.148846,
		0.439458, -0.866244, 0.237693,
		34.641644, 41.503494, 39.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813046, 42.026558, 39.083599>,  <34.334023, 42.109863, 39.682468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813046, 42.026558, 39.083599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783463, 41.664848, 39.251801>,  <34.765713, 41.447823, 39.352722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.783463, 41.664848, 39.251801>,  <34.813046, 42.026558, 39.083599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783463, 41.664848, 39.251801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219526, -0.426075, -0.877650,
		0.972799, 0.027398, 0.230024,
		-0.073962, -0.904273, 0.420500,
		34.761272, 41.393566, 39.377949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255657, 41.707722, 38.681076>,  <34.813046, 42.026558, 39.083599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255657, 41.707722, 38.681076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076439, 41.408173, 38.876396>,  <34.968906, 41.228443, 38.993587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.076439, 41.408173, 38.876396>,  <35.255657, 41.707722, 38.681076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076439, 41.408173, 38.876396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083195, -0.578745, -0.811254,
		0.890130, -0.322857, 0.321609,
		-0.448049, -0.748877, 0.488298,
		34.942024, 41.183510, 39.022884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712345, 41.234863, 38.684555>,  <35.255657, 41.707722, 38.681076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712345, 41.234863, 38.684555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374844, 41.031868, 38.754452>,  <35.172344, 40.910069, 38.796391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.374844, 41.031868, 38.754452>,  <35.712345, 41.234863, 38.684555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374844, 41.031868, 38.754452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229845, -0.635842, -0.736802,
		0.485031, -0.581513, 0.653137,
		-0.843752, -0.507492, 0.174745,
		35.121719, 40.879620, 38.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904610, 40.516598, 38.779572>,  <35.712345, 41.234863, 38.684555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904610, 40.516598, 38.779572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525272, 40.529583, 38.653339>,  <35.297668, 40.537376, 38.577599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.525272, 40.529583, 38.653339>,  <35.904610, 40.516598, 38.779572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525272, 40.529583, 38.653339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185171, -0.751074, -0.633718,
		-0.257598, -0.659419, 0.706265,
		-0.948343, 0.032465, -0.315581,
		35.240768, 40.539322, 38.558666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713985, 39.864628, 38.657452>,  <35.904610, 40.516598, 38.779572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713985, 39.864628, 38.657452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440140, 40.055515, 38.437065>,  <35.275833, 40.170048, 38.304832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440140, 40.055515, 38.437065>,  <35.713985, 39.864628, 38.657452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440140, 40.055515, 38.437065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141462, -0.654527, -0.742686,
		-0.715048, -0.586394, 0.380589,
		-0.684613, 0.477217, -0.550971,
		35.234756, 40.198681, 38.271774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584091, 39.371941, 38.186237>,  <35.713985, 39.864628, 38.657452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584091, 39.371941, 38.186237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413353, 39.694107, 38.021748>,  <35.310909, 39.887405, 37.923054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413353, 39.694107, 38.021748>,  <35.584091, 39.371941, 38.186237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413353, 39.694107, 38.021748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176428, -0.371826, -0.911383,
		-0.886946, -0.461574, 0.016615,
		-0.426848, 0.805416, -0.411225,
		35.285297, 39.935730, 37.898380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067993, 39.137283, 37.669487>,  <35.584091, 39.371941, 38.186237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067993, 39.137283, 37.669487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194351, 39.505501, 37.577568>,  <35.270168, 39.726433, 37.522415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194351, 39.505501, 37.577568>,  <35.067993, 39.137283, 37.669487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194351, 39.505501, 37.577568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202258, -0.301971, -0.931614,
		-0.926985, 0.247815, -0.281579,
		0.315897, 0.920544, -0.229800,
		35.289120, 39.781666, 37.508629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605724, 39.401081, 37.168007>,  <35.067993, 39.137283, 37.669487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605724, 39.401081, 37.168007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939137, 39.617722, 37.124378>,  <35.139183, 39.747707, 37.098202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939137, 39.617722, 37.124378>,  <34.605724, 39.401081, 37.168007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939137, 39.617722, 37.124378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040543, -0.256859, -0.965598,
		-0.550990, 0.800430, -0.236057,
		0.833527, 0.541605, -0.109075,
		35.189194, 39.780205, 37.091656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476814, 39.683182, 36.529411>,  <34.605724, 39.401081, 37.168007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476814, 39.683182, 36.529411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866657, 39.749458, 36.589668>,  <35.100563, 39.789227, 36.625820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866657, 39.749458, 36.589668>,  <34.476814, 39.683182, 36.529411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866657, 39.749458, 36.589668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147624, 0.030435, -0.988575,
		-0.168387, 0.985707, 0.005201,
		0.974604, 0.165695, 0.150639,
		35.159039, 39.799168, 36.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691601, 40.157074, 35.983501>,  <34.476814, 39.683182, 36.529411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691601, 40.157074, 35.983501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033840, 40.001228, 36.119823>,  <35.239185, 39.907719, 36.201618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033840, 40.001228, 36.119823>,  <34.691601, 40.157074, 35.983501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033840, 40.001228, 36.119823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292410, -0.179500, -0.939296,
		0.427140, 0.903316, -0.039652,
		0.855598, -0.389616, 0.340810,
		35.290520, 39.884342, 36.222065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144012, 40.410721, 35.581276>,  <34.691601, 40.157074, 35.983501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144012, 40.410721, 35.581276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351154, 40.088333, 35.695976>,  <35.475441, 39.894901, 35.764797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351154, 40.088333, 35.695976>,  <35.144012, 40.410721, 35.581276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351154, 40.088333, 35.695976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156187, -0.240491, -0.958003,
		0.841087, 0.540898, 0.001342,
		0.517859, -0.805974, 0.286755,
		35.506512, 39.846542, 35.782001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888893, 40.362980, 35.211506>,  <35.144012, 40.410721, 35.581276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888893, 40.362980, 35.211506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772682, 39.999161, 35.330383>,  <35.702957, 39.780869, 35.401711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772682, 39.999161, 35.330383>,  <35.888893, 40.362980, 35.211506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772682, 39.999161, 35.330383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114666, -0.341442, -0.932882,
		0.949971, -0.236950, 0.203492,
		-0.290527, -0.909545, 0.297190,
		35.685524, 39.726295, 35.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276821, 40.018986, 34.809959>,  <35.888893, 40.362980, 35.211506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276821, 40.018986, 34.809959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988743, 39.765610, 34.923153>,  <35.815895, 39.613586, 34.991070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988743, 39.765610, 34.923153>,  <36.276821, 40.018986, 34.809959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988743, 39.765610, 34.923153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035367, -0.373838, -0.926819,
		0.692872, -0.677497, 0.246833,
		-0.720193, -0.633438, 0.282983,
		35.772686, 39.575577, 35.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524170, 39.352036, 34.639797>,  <36.276821, 40.018986, 34.809959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524170, 39.352036, 34.639797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128265, 39.300301, 34.663975>,  <35.890724, 39.269260, 34.678482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.128265, 39.300301, 34.663975>,  <36.524170, 39.352036, 34.639797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128265, 39.300301, 34.663975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021244, -0.285264, -0.958214,
		0.141172, -0.949683, 0.279594,
		-0.989757, -0.129334, 0.060446,
		35.831337, 39.261501, 34.682110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462219, 38.756561, 34.191616>,  <36.524170, 39.352036, 34.639797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462219, 38.756561, 34.191616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102917, 38.926315, 34.237270>,  <35.887333, 39.028168, 34.264664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102917, 38.926315, 34.237270>,  <36.462219, 38.756561, 34.191616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102917, 38.926315, 34.237270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248435, -0.276137, -0.928455,
		-0.362504, -0.862349, 0.353475,
		-0.898260, 0.424384, 0.114137,
		35.833439, 39.053631, 34.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227810, 38.487484, 34.071705>,  <36.462219, 38.756561, 34.191616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227810, 38.487484, 34.071705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591690, 38.550987, 34.225193>,  <37.810017, 38.589088, 34.317287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591690, 38.550987, 34.225193>,  <37.227810, 38.487484, 34.071705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591690, 38.550987, 34.225193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409920, 0.195473, 0.890930,
		0.066433, -0.967774, 0.242899,
		0.909699, 0.158756, 0.383724,
		37.864601, 38.598614, 34.340309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380234, 37.989204, 34.724560>,  <37.227810, 38.487484, 34.071705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380234, 37.989204, 34.724560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603321, 38.321217, 34.723351>,  <37.737171, 38.520424, 34.722626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.603321, 38.321217, 34.723351>,  <37.380234, 37.989204, 34.724560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603321, 38.321217, 34.723351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129079, 0.090333, 0.987511,
		0.819936, -0.550357, 0.157519,
		0.557713, 0.830028, -0.003028,
		37.770634, 38.570225, 34.722443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812416, 38.013348, 35.286030>,  <37.380234, 37.989204, 34.724560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812416, 38.013348, 35.286030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875637, 38.405918, 35.242550>,  <37.913570, 38.641460, 35.216461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875637, 38.405918, 35.242550>,  <37.812416, 38.013348, 35.286030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875637, 38.405918, 35.242550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187238, 0.078299, 0.979189,
		0.969517, -0.175112, -0.171385,
		0.158049, 0.981430, -0.108700,
		37.923050, 38.700348, 35.209938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367020, 38.150429, 35.724888>,  <37.812416, 38.013348, 35.286030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367020, 38.150429, 35.724888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192963, 38.504837, 35.660858>,  <38.088528, 38.717484, 35.622440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192963, 38.504837, 35.660858>,  <38.367020, 38.150429, 35.724888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192963, 38.504837, 35.660858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117743, 0.232257, 0.965502,
		0.892632, 0.401280, -0.205387,
		-0.435139, 0.886020, -0.160072,
		38.062420, 38.770641, 35.612835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850201, 38.594364, 35.963562>,  <38.367020, 38.150429, 35.724888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850201, 38.594364, 35.963562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487564, 38.763130, 35.959991>,  <38.269981, 38.864391, 35.957848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487564, 38.763130, 35.959991>,  <38.850201, 38.594364, 35.963562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487564, 38.763130, 35.959991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101036, 0.237540, 0.966109,
		0.409740, 0.874963, -0.257980,
		-0.906590, 0.421919, -0.008927,
		38.215588, 38.889706, 35.957314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018585, 39.206657, 36.189716>,  <38.850201, 38.594364, 35.963562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018585, 39.206657, 36.189716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626194, 39.154270, 36.247040>,  <38.390759, 39.122837, 36.281433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626194, 39.154270, 36.247040>,  <39.018585, 39.206657, 36.189716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626194, 39.154270, 36.247040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084766, 0.375171, 0.923072,
		-0.174659, 0.917657, -0.356931,
		-0.980973, -0.130967, 0.143313,
		38.331902, 39.114979, 36.290035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842690, 39.854794, 36.560120>,  <39.018585, 39.206657, 36.189716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842690, 39.854794, 36.560120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551624, 39.584866, 36.609303>,  <38.376984, 39.422909, 36.638813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551624, 39.584866, 36.609303>,  <38.842690, 39.854794, 36.560120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551624, 39.584866, 36.609303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174752, 0.355722, 0.918109,
		-0.663297, 0.646590, -0.376773,
		-0.727667, -0.674821, 0.122956,
		38.333324, 39.382420, 36.646191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317326, 40.245758, 36.872784>,  <38.842690, 39.854794, 36.560120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317326, 40.245758, 36.872784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189236, 39.877163, 36.960709>,  <38.112381, 39.656006, 37.013462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189236, 39.877163, 36.960709>,  <38.317326, 40.245758, 36.872784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189236, 39.877163, 36.960709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267409, 0.310517, 0.912180,
		-0.908817, 0.233323, -0.345849,
		-0.320225, -0.921488, 0.219810,
		38.093170, 39.600716, 37.026653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762070, 40.358974, 37.270176>,  <38.317326, 40.245758, 36.872784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762070, 40.358974, 37.270176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869766, 39.982059, 37.349773>,  <37.934383, 39.755909, 37.397533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869766, 39.982059, 37.349773>,  <37.762070, 40.358974, 37.270176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869766, 39.982059, 37.349773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145626, 0.164420, 0.975581,
		-0.951999, -0.291645, -0.092953,
		0.269240, -0.942289, 0.198998,
		37.950539, 39.699371, 37.409473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188263, 40.095280, 37.677307>,  <37.762070, 40.358974, 37.270176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188263, 40.095280, 37.677307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499382, 39.853748, 37.747082>,  <37.686054, 39.708828, 37.788948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.499382, 39.853748, 37.747082>,  <37.188263, 40.095280, 37.677307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499382, 39.853748, 37.747082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201691, 0.023071, 0.979177,
		-0.595278, -0.796781, -0.103842,
		0.777794, -0.603827, 0.174438,
		37.732719, 39.672600, 37.799412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940716, 39.621300, 38.216961>,  <37.188263, 40.095280, 37.677307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940716, 39.621300, 38.216961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339558, 39.621979, 38.247383>,  <37.578861, 39.622387, 38.265636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339558, 39.621979, 38.247383>,  <36.940716, 39.621300, 38.216961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339558, 39.621979, 38.247383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075147, 0.177895, 0.981176,
		-0.011863, -0.984048, 0.177507,
		0.997102, 0.001699, 0.076058,
		37.638687, 39.622490, 38.270199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031052, 39.339756, 38.834309>,  <36.940716, 39.621300, 38.216961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031052, 39.339756, 38.834309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375790, 39.531387, 38.767727>,  <37.582630, 39.646366, 38.727779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375790, 39.531387, 38.767727>,  <37.031052, 39.339756, 38.834309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375790, 39.531387, 38.767727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078465, 0.198300, 0.976996,
		0.501069, -0.855077, 0.133313,
		0.861843, 0.479082, -0.166456,
		37.634342, 39.675114, 38.717789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395370, 39.166695, 39.328354>,  <37.031052, 39.339756, 38.834309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395370, 39.166695, 39.328354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590061, 39.488941, 39.193253>,  <37.706875, 39.682289, 39.112190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590061, 39.488941, 39.193253>,  <37.395370, 39.166695, 39.328354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590061, 39.488941, 39.193253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083068, 0.342211, 0.935944,
		0.869596, -0.483605, 0.099642,
		0.486726, 0.805616, -0.337757,
		37.736080, 39.730625, 39.091927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978668, 39.287067, 39.805256>,  <37.395370, 39.166695, 39.328354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978668, 39.287067, 39.805256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884796, 39.623386, 39.610123>,  <37.828472, 39.825180, 39.493042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.884796, 39.623386, 39.610123>,  <37.978668, 39.287067, 39.805256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884796, 39.623386, 39.610123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174630, 0.530148, 0.829728,
		0.956258, 0.109530, -0.271244,
		-0.234679, 0.840801, -0.487831,
		37.814392, 39.875626, 39.463772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528713, 39.673260, 39.891716>,  <37.978668, 39.287067, 39.805256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528713, 39.673260, 39.891716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228996, 39.928776, 39.821842>,  <38.049168, 40.082085, 39.779919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.228996, 39.928776, 39.821842>,  <38.528713, 39.673260, 39.891716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228996, 39.928776, 39.821842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163613, 0.434165, 0.885851,
		0.641714, 0.635178, -0.429829,
		-0.749289, 0.638788, -0.174686,
		38.004211, 40.120411, 39.769436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675053, 40.260040, 40.129631>,  <38.528713, 39.673260, 39.891716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675053, 40.260040, 40.129631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277187, 40.299339, 40.117058>,  <38.038467, 40.322918, 40.109512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277187, 40.299339, 40.117058>,  <38.675053, 40.260040, 40.129631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277187, 40.299339, 40.117058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005797, 0.357475, 0.933905,
		0.102991, 0.928741, -0.356138,
		-0.994666, 0.098248, -0.031433,
		37.978786, 40.328815, 40.107628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577232, 40.798828, 40.501308>,  <38.675053, 40.260040, 40.129631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577232, 40.798828, 40.501308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 40.627239, 40.491138>,  <37.999340, 40.524288, 40.485039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216049, 40.627239, 40.491138>,  <38.577232, 40.798828, 40.501308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216049, 40.627239, 40.491138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208347, 0.385288, 0.898969,
		-0.375834, 0.817031, -0.437274,
		-0.902962, -0.428968, -0.025421,
		37.945160, 40.498550, 40.483513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165867, 41.258827, 40.740818>,  <38.577232, 40.798828, 40.501308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165867, 41.258827, 40.740818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954704, 40.925373, 40.805767>,  <37.828007, 40.725300, 40.844734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954704, 40.925373, 40.805767>,  <38.165867, 41.258827, 40.740818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954704, 40.925373, 40.805767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210203, 0.313478, 0.926038,
		-0.822880, 0.454730, -0.340720,
		-0.527905, -0.833638, 0.162370,
		37.796333, 40.675282, 40.854477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.560127, 41.487850, 41.025070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540527, 41.101994, 41.128658>,  <37.528767, 40.870480, 41.190811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540527, 41.101994, 41.128658>,  <37.560127, 41.487850, 41.025070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540527, 41.101994, 41.128658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317587, 0.260876, 0.911637,
		-0.946962, -0.037572, -0.319142,
		-0.049004, -0.964641, 0.258972,
		37.525826, 40.812603, 41.206348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844425, 41.439278, 41.353470>,  <37.560127, 41.487850, 41.025070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844425, 41.439278, 41.353470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061371, 41.128609, 41.481606>,  <37.191536, 40.942207, 41.558487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061371, 41.128609, 41.481606>,  <36.844425, 41.439278, 41.353470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061371, 41.128609, 41.481606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202624, 0.249117, 0.947040,
		-0.815346, -0.578546, -0.022262,
		0.542361, -0.776676, 0.320344,
		37.224079, 40.895607, 41.577709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374744, 41.094933, 41.830482>,  <36.844425, 41.439278, 41.353470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374744, 41.094933, 41.830482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746346, 40.971748, 41.912567>,  <36.969307, 40.897839, 41.961819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.746346, 40.971748, 41.912567>,  <36.374744, 41.094933, 41.830482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746346, 40.971748, 41.912567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188932, 0.082129, 0.978550,
		-0.318212, -0.947846, 0.018113,
		0.929002, -0.307964, 0.205213,
		37.025047, 40.879360, 41.974133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382137, 40.432785, 42.283062>,  <36.374744, 41.094933, 41.830482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382137, 40.432785, 42.283062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736244, 40.614483, 42.322983>,  <36.948708, 40.723499, 42.346935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.736244, 40.614483, 42.322983>,  <36.382137, 40.432785, 42.283062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736244, 40.614483, 42.322983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088911, -0.045341, 0.995007,
		0.456500, -0.889723, 0.000248,
		0.885269, 0.454243, 0.099804,
		37.001823, 40.750755, 42.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611618, 40.144169, 42.823929>,  <36.382137, 40.432785, 42.283062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611618, 40.144169, 42.823929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850925, 40.464417, 42.810764>,  <36.994511, 40.656567, 42.802864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850925, 40.464417, 42.810764>,  <36.611618, 40.144169, 42.823929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850925, 40.464417, 42.810764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003938, 0.044013, 0.999023,
		0.801285, -0.597556, 0.029484,
		0.598270, 0.800618, -0.032914,
		37.030407, 40.704601, 42.800892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101215, 40.011234, 43.452164>,  <36.611618, 40.144169, 42.823929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101215, 40.011234, 43.452164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128937, 40.397594, 43.352375>,  <37.145569, 40.629410, 43.292503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128937, 40.397594, 43.352375>,  <37.101215, 40.011234, 43.452164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128937, 40.397594, 43.352375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061813, 0.245432, 0.967441,
		0.995679, -0.082464, -0.042697,
		0.069299, 0.965900, -0.249469,
		37.149727, 40.687363, 43.277534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583920, 40.314579, 43.779922>,  <37.101215, 40.011234, 43.452164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583920, 40.314579, 43.779922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.363430, 40.638046, 43.697742>,  <37.231136, 40.832127, 43.648434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.363430, 40.638046, 43.697742>,  <37.583920, 40.314579, 43.779922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363430, 40.638046, 43.697742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184684, 0.121877, 0.975212,
		0.813664, 0.575500, 0.082167,
		-0.551220, 0.808669, -0.205453,
		37.198063, 40.880646, 43.636108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938446, 40.858418, 44.126698>,  <37.583920, 40.314579, 43.779922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938446, 40.858418, 44.126698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556179, 40.967770, 44.082939>,  <37.326820, 41.033382, 44.056686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.556179, 40.967770, 44.082939>,  <37.938446, 40.858418, 44.126698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556179, 40.967770, 44.082939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056251, 0.195168, 0.979155,
		0.289031, 0.941898, -0.171137,
		-0.955666, 0.273380, -0.109393,
		37.269478, 41.049782, 44.050121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873035, 41.386501, 44.517887>,  <37.938446, 40.858418, 44.126698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873035, 41.386501, 44.517887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493797, 41.264248, 44.482780>,  <37.266254, 41.190895, 44.461716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493797, 41.264248, 44.482780>,  <37.873035, 41.386501, 44.517887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493797, 41.264248, 44.482780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176234, 0.275288, 0.945070,
		-0.264685, 0.911484, -0.314862,
		-0.948095, -0.305636, -0.087769,
		37.209370, 41.172558, 44.456451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682430, 41.840355, 44.877827>,  <37.873035, 41.386501, 44.517887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682430, 41.840355, 44.877827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419125, 41.541130, 44.844147>,  <37.261139, 41.361595, 44.823940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.419125, 41.541130, 44.844147>,  <37.682430, 41.840355, 44.877827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419125, 41.541130, 44.844147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279562, 0.139077, 0.950001,
		-0.698948, 0.648895, -0.300679,
		-0.658268, -0.748060, -0.084199,
		37.221645, 41.316711, 44.818886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179794, 42.014442, 45.251637>,  <37.682430, 41.840355, 44.877827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179794, 42.014442, 45.251637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086246, 41.627201, 45.215687>,  <37.030117, 41.394855, 45.194118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.086246, 41.627201, 45.215687>,  <37.179794, 42.014442, 45.251637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086246, 41.627201, 45.215687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319075, -0.010895, 0.947667,
		-0.918421, 0.250306, -0.306351,
		-0.233869, -0.968106, -0.089872,
		37.016087, 41.336769, 45.188725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643795, 42.002289, 45.694267>,  <37.179794, 42.014442, 45.251637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643795, 42.002289, 45.694267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768154, 41.625477, 45.643784>,  <36.842770, 41.399391, 45.613491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768154, 41.625477, 45.643784>,  <36.643795, 42.002289, 45.694267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768154, 41.625477, 45.643784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210296, -0.197682, 0.957443,
		-0.926887, -0.271123, -0.259563,
		0.310896, -0.942026, -0.126213,
		36.861423, 41.342869, 45.605919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391590, 41.728210, 46.331821>,  <36.643795, 42.002289, 45.694267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391590, 41.728210, 46.331821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623531, 41.437397, 46.184750>,  <36.762695, 41.262909, 46.096508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623531, 41.437397, 46.184750>,  <36.391590, 41.728210, 46.331821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623531, 41.437397, 46.184750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037675, -0.474742, 0.879318,
		-0.813849, -0.496024, -0.302672,
		0.579854, -0.727035, -0.367681,
		36.797489, 41.219288, 46.074444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103199, 41.024456, 46.441494>,  <36.391590, 41.728210, 46.331821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103199, 41.024456, 46.441494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502689, 41.014534, 46.423946>,  <36.742386, 41.008579, 46.413418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.502689, 41.014534, 46.423946>,  <36.103199, 41.024456, 46.441494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502689, 41.014534, 46.423946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034233, -0.304913, 0.951765,
		-0.036987, -0.952057, -0.303677,
		0.998729, -0.024807, -0.043870,
		36.802307, 41.007092, 46.410786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251308, 40.468552, 46.905487>,  <36.103199, 41.024456, 46.441494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251308, 40.468552, 46.905487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592606, 40.667778, 46.843643>,  <36.797382, 40.787315, 46.806538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592606, 40.667778, 46.843643>,  <36.251308, 40.468552, 46.905487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592606, 40.667778, 46.843643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266337, -0.161275, 0.950292,
		0.448375, -0.852009, -0.270261,
		0.853244, 0.498068, -0.154609,
		36.848579, 40.817200, 46.797260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710999, 40.082214, 47.251263>,  <36.251308, 40.468552, 46.905487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710999, 40.082214, 47.251263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906193, 40.428162, 47.204155>,  <37.023308, 40.635731, 47.175892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906193, 40.428162, 47.204155>,  <36.710999, 40.082214, 47.251263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906193, 40.428162, 47.204155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270892, -0.021799, 0.962363,
		0.829754, -0.501518, -0.244924,
		0.487982, 0.864872, -0.117769,
		37.052586, 40.687622, 47.168823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432411, 40.016945, 47.490715>,  <36.710999, 40.082214, 47.251263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432411, 40.016945, 47.490715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335838, 40.404961, 47.501564>,  <37.277893, 40.637772, 47.508076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.335838, 40.404961, 47.501564>,  <37.432411, 40.016945, 47.490715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335838, 40.404961, 47.501564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317111, 0.052446, 0.946937,
		0.917143, 0.237224, -0.320272,
		-0.241433, 0.970038, 0.027126,
		37.263409, 40.695972, 47.509701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947483, 40.281181, 47.869835>,  <37.432411, 40.016945, 47.490715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947483, 40.281181, 47.869835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.659603, 40.557953, 47.892696>,  <37.486877, 40.724018, 47.906414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.659603, 40.557953, 47.892696>,  <37.947483, 40.281181, 47.869835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659603, 40.557953, 47.892696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241125, 0.171908, 0.955147,
		0.651073, 0.701196, -0.290564,
		-0.719696, 0.691933, 0.057152,
		37.443695, 40.765533, 47.909843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271694, 40.871437, 48.373344>,  <37.947483, 40.281181, 47.869835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271694, 40.871437, 48.373344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872711, 40.898075, 48.363174>,  <37.633320, 40.914059, 48.357075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872711, 40.898075, 48.363174>,  <38.271694, 40.871437, 48.373344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872711, 40.898075, 48.363174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007372, 0.258355, 0.966022,
		0.070900, 0.963752, -0.257207,
		-0.997456, 0.066595, -0.025423,
		37.573475, 40.918053, 48.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122208, 41.427948, 48.859642>,  <38.271694, 40.871437, 48.373344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122208, 41.427948, 48.859642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780087, 41.224895, 48.818142>,  <37.574814, 41.103065, 48.793243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.780087, 41.224895, 48.818142>,  <38.122208, 41.427948, 48.859642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780087, 41.224895, 48.818142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163702, 0.074780, 0.983671,
		-0.491580, 0.858325, -0.147059,
		-0.855307, -0.507627, -0.103750,
		37.523495, 41.072609, 48.787018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471325, 41.750999, 49.194927>,  <38.122208, 41.427948, 48.859642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471325, 41.750999, 49.194927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469414, 41.351871, 49.168621>,  <37.468266, 41.112392, 49.152836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469414, 41.351871, 49.168621>,  <37.471325, 41.750999, 49.194927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469414, 41.351871, 49.168621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017051, -0.065677, 0.997695,
		-0.999843, 0.005893, -0.016700,
		-0.004783, -0.997824, -0.065767,
		37.467979, 41.052525, 49.148891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001678, 42.277542, 49.483566>,  <37.471325, 41.750999, 49.194927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001678, 42.277542, 49.483566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973831, 41.909348, 49.329754>,  <36.957123, 41.688431, 49.237469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973831, 41.909348, 49.329754>,  <37.001678, 42.277542, 49.483566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973831, 41.909348, 49.329754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144981, -0.390707, 0.909026,
		-0.986982, 0.007534, 0.160653,
		-0.069617, -0.920484, -0.384529,
		36.952946, 41.633202, 49.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556931, 41.835533, 49.884007>,  <37.001678, 42.277542, 49.483566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556931, 41.835533, 49.884007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798870, 41.584496, 49.687931>,  <36.944035, 41.433872, 49.570286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.798870, 41.584496, 49.687931>,  <36.556931, 41.835533, 49.884007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798870, 41.584496, 49.687931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003231, -0.617484, 0.786576,
		-0.796333, -0.474176, -0.375513,
		0.604849, -0.627590, -0.490192,
		36.980324, 41.396217, 49.540874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751938, 41.722683, 49.752708>,  <36.556931, 41.835533, 49.884007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751938, 41.722683, 49.752708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427177, 41.713844, 49.986057>,  <35.232319, 41.708542, 50.126068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427177, 41.713844, 49.986057>,  <35.751938, 41.722683, 49.752708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427177, 41.713844, 49.986057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583585, 0.004292, -0.812041,
		0.015454, -0.999746, -0.016390,
		-0.811905, -0.022114, 0.583370,
		35.183605, 41.707214, 50.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406090, 41.206478, 49.479568>,  <35.751938, 41.722683, 49.752708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406090, 41.206478, 49.479568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173275, 41.470772, 49.669163>,  <35.033585, 41.629349, 49.782917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173275, 41.470772, 49.669163>,  <35.406090, 41.206478, 49.479568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173275, 41.470772, 49.669163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541084, 0.120418, -0.832303,
		-0.607009, -0.740896, 0.287426,
		-0.582039, 0.660737, 0.473981,
		34.998665, 41.668991, 49.811356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754532, 41.001347, 49.312180>,  <35.406090, 41.206478, 49.479568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754532, 41.001347, 49.312180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 41.374786, 49.440243>,  <34.651539, 41.598850, 49.517082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 41.374786, 49.440243>,  <34.754532, 41.001347, 49.312180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690163, 41.374786, 49.440243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617516, 0.157807, -0.770566,
		-0.769920, -0.321705, 0.551116,
		-0.160925, 0.933597, 0.320157,
		34.641884, 41.654865, 49.536289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134815, 41.151283, 48.960052>,  <34.754532, 41.001347, 49.312180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134815, 41.151283, 48.960052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271484, 41.501740, 49.096077>,  <34.353485, 41.712013, 49.177692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271484, 41.501740, 49.096077>,  <34.134815, 41.151283, 48.960052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271484, 41.501740, 49.096077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403649, 0.463570, -0.788778,
		-0.848720, 0.132240, 0.512042,
		0.341676, 0.876136, 0.340063,
		34.373985, 41.764580, 49.198097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513836, 41.631863, 49.072994>,  <34.134815, 41.151283, 48.960052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513836, 41.631863, 49.072994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860825, 41.808567, 48.981476>,  <34.069016, 41.914589, 48.926567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.860825, 41.808567, 48.981476>,  <33.513836, 41.631863, 49.072994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860825, 41.808567, 48.981476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408022, 0.368642, -0.835237,
		-0.284632, 0.817895, 0.500033,
		0.867469, 0.441759, -0.228792,
		34.121067, 41.941093, 48.912838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410778, 42.170731, 48.615482>,  <33.513836, 41.631863, 49.072994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410778, 42.170731, 48.615482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801628, 42.110447, 48.555462>,  <34.036137, 42.074276, 48.519451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.801628, 42.110447, 48.555462>,  <33.410778, 42.170731, 48.615482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801628, 42.110447, 48.555462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111771, 0.236344, -0.965219,
		0.180933, 0.959910, 0.214092,
		0.977124, -0.150711, -0.150053,
		34.094765, 42.065235, 48.510445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700748, 42.829762, 48.304810>,  <33.410778, 42.170731, 48.615482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700748, 42.829762, 48.304810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949341, 42.528076, 48.220028>,  <34.098495, 42.347065, 48.169159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949341, 42.528076, 48.220028>,  <33.700748, 42.829762, 48.304810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949341, 42.528076, 48.220028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008331, 0.276899, -0.960863,
		0.783385, 0.595392, 0.178371,
		0.621480, -0.754212, -0.211959,
		34.135784, 42.301811, 48.156441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411083, 43.152054, 48.018970>,  <33.700748, 42.829762, 48.304810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411083, 43.152054, 48.018970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346886, 42.774494, 47.903526>,  <34.308369, 42.547958, 47.834259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346886, 42.774494, 47.903526>,  <34.411083, 43.152054, 48.018970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346886, 42.774494, 47.903526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182117, 0.259065, -0.948535,
		0.970090, -0.204796, 0.130322,
		-0.160495, -0.943898, -0.288613,
		34.298737, 42.491325, 47.816944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799297, 43.112820, 47.414219>,  <34.411083, 43.152054, 48.018970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799297, 43.112820, 47.414219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587067, 42.775181, 47.383274>,  <34.459728, 42.572598, 47.364708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587067, 42.775181, 47.383274>,  <34.799297, 43.112820, 47.414219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587067, 42.775181, 47.383274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054562, 0.057063, -0.996879,
		0.845881, -0.533139, 0.015780,
		-0.530574, -0.844101, -0.077357,
		34.427895, 42.521950, 47.360065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214561, 42.632496, 47.091949>,  <34.799297, 43.112820, 47.414219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214561, 42.632496, 47.091949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856800, 42.472748, 47.011406>,  <34.642143, 42.376900, 46.963081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.856800, 42.472748, 47.011406>,  <35.214561, 42.632496, 47.091949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856800, 42.472748, 47.011406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214223, 0.012672, -0.976703,
		0.392619, -0.916702, 0.074221,
		-0.894405, -0.399371, -0.201354,
		34.588478, 42.352936, 46.951000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351795, 42.011868, 46.679077>,  <35.214561, 42.632496, 47.091949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351795, 42.011868, 46.679077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965916, 42.098995, 46.619862>,  <34.734386, 42.151272, 46.584332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.965916, 42.098995, 46.619862>,  <35.351795, 42.011868, 46.679077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965916, 42.098995, 46.619862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128552, -0.101144, -0.986531,
		-0.229856, -0.970734, 0.069573,
		-0.964697, 0.217817, -0.148038,
		34.676506, 42.164341, 46.575451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118523, 41.568344, 46.163860>,  <35.351795, 42.011868, 46.679077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118523, 41.568344, 46.163860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837700, 41.853172, 46.160610>,  <34.669205, 42.024071, 46.158661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.837700, 41.853172, 46.160610>,  <35.118523, 41.568344, 46.163860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837700, 41.853172, 46.160610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062801, 0.050541, -0.996746,
		-0.709347, -0.700282, -0.080202,
		-0.702056, 0.712075, -0.008127,
		34.627083, 42.066795, 46.158173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710682, 41.381462, 45.741035>,  <35.118523, 41.568344, 46.163860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710682, 41.381462, 45.741035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656063, 41.777588, 45.751148>,  <34.623291, 42.015263, 45.757214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656063, 41.777588, 45.751148>,  <34.710682, 41.381462, 45.741035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656063, 41.777588, 45.751148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029549, 0.021433, -0.999334,
		-0.990193, -0.137202, 0.026336,
		-0.136546, 0.990311, 0.025277,
		34.615101, 42.074680, 45.758732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250996, 41.421558, 45.313618>,  <34.710682, 41.381462, 45.741035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250996, 41.421558, 45.313618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343464, 41.809879, 45.339222>,  <34.398945, 42.042873, 45.354584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343464, 41.809879, 45.339222>,  <34.250996, 41.421558, 45.313618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343464, 41.809879, 45.339222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000989, 0.066023, -0.997818,
		-0.972912, 0.230606, 0.016223,
		0.231173, 0.970805, 0.064007,
		34.412815, 42.101120, 45.358425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977844, 41.556065, 44.669071>,  <34.250996, 41.421558, 45.313618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977844, 41.556065, 44.669071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216988, 41.858837, 44.774609>,  <34.360474, 42.040501, 44.837933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.216988, 41.858837, 44.774609>,  <33.977844, 41.556065, 44.669071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216988, 41.858837, 44.774609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320784, 0.075722, -0.944121,
		-0.734616, 0.649089, -0.197541,
		0.597860, 0.756934, 0.263843,
		34.396347, 42.085918, 44.853760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772137, 42.282574, 44.230980>,  <33.977844, 41.556065, 44.669071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772137, 42.282574, 44.230980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153114, 42.249538, 44.348305>,  <34.381702, 42.229717, 44.418697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153114, 42.249538, 44.348305>,  <33.772137, 42.282574, 44.230980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153114, 42.249538, 44.348305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298582, 0.060824, -0.952444,
		0.060824, 0.994725, 0.082592,
		0.952444, -0.082592, 0.293307,
		34.438847, 42.224762, 44.436298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950279, 42.718319, 43.837631>,  <33.772137, 42.282574, 44.230980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950279, 42.718319, 43.837631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292130, 42.553097, 43.963490>,  <34.497238, 42.453964, 44.039005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292130, 42.553097, 43.963490>,  <33.950279, 42.718319, 43.837631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292130, 42.553097, 43.963490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359017, 0.032266, -0.932773,
		0.375132, 0.910135, 0.175868,
		0.854624, -0.413053, 0.314650,
		34.548515, 42.429180, 44.057884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615398, 43.165062, 43.768837>,  <33.950279, 42.718319, 43.837631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615398, 43.165062, 43.768837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732845, 42.783203, 43.749092>,  <34.803314, 42.554089, 43.737244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732845, 42.783203, 43.749092>,  <34.615398, 43.165062, 43.768837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732845, 42.783203, 43.749092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236897, 0.122694, -0.963756,
		0.926105, 0.271277, 0.262178,
		0.293613, -0.954649, -0.049362,
		34.820930, 42.496807, 43.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058659, 43.222881, 43.277260>,  <34.615398, 43.165062, 43.768837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058659, 43.222881, 43.277260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017326, 42.825115, 43.285881>,  <34.992527, 42.586456, 43.291054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.017326, 42.825115, 43.285881>,  <35.058659, 43.222881, 43.277260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017326, 42.825115, 43.285881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166698, -0.038674, -0.985249,
		0.980579, -0.098215, 0.169763,
		-0.103332, -0.994413, 0.021550,
		34.986328, 42.526791, 43.292347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621902, 42.872910, 43.009190>,  <35.058659, 43.222881, 43.277260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621902, 42.872910, 43.009190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340611, 42.591072, 42.971226>,  <35.171833, 42.421970, 42.948448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340611, 42.591072, 42.971226>,  <35.621902, 42.872910, 43.009190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340611, 42.591072, 42.971226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236000, -0.105419, -0.966018,
		0.670648, -0.701733, 0.240419,
		-0.703231, -0.704597, -0.094910,
		35.129642, 42.379692, 42.942753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940899, 42.267437, 42.729053>,  <35.621902, 42.872910, 43.009190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940899, 42.267437, 42.729053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551449, 42.219147, 42.651608>,  <35.317780, 42.190174, 42.605141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.551449, 42.219147, 42.651608>,  <35.940899, 42.267437, 42.729053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551449, 42.219147, 42.651608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217873, -0.239835, -0.946050,
		0.067774, -0.963278, 0.259810,
		-0.973621, -0.120723, -0.193618,
		35.259361, 42.182930, 42.593521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.697357, 41.140835, 40.568165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340958, 41.288860, 40.462967>,  <43.127117, 41.377678, 40.399849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340958, 41.288860, 40.462967>,  <43.697357, 41.140835, 40.568165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340958, 41.288860, 40.462967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259309, -0.890321, -0.374283,
		-0.372660, -0.265289, 0.889239,
		-0.891001, 0.370068, -0.262995,
		43.073658, 41.399879, 40.384068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186756, 40.693302, 40.994137>,  <43.697357, 41.140835, 40.568165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186756, 40.693302, 40.994137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038033, 40.862286, 40.663494>,  <42.948799, 40.963676, 40.465107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038033, 40.862286, 40.663494>,  <43.186756, 40.693302, 40.994137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038033, 40.862286, 40.663494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142578, -0.905870, -0.398836,
		-0.917298, -0.030431, 0.397037,
		-0.371801, 0.422461, -0.826614,
		42.926491, 40.989025, 40.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803612, 40.148369, 40.642307>,  <43.186756, 40.693302, 40.994137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803612, 40.148369, 40.642307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821762, 40.426327, 40.355236>,  <42.832653, 40.593102, 40.182995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821762, 40.426327, 40.355236>,  <42.803612, 40.148369, 40.642307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821762, 40.426327, 40.355236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123700, -0.708980, -0.694295,
		-0.991282, 0.120281, 0.053788,
		0.045375, 0.694896, -0.717678,
		42.835373, 40.634796, 40.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167065, 40.078575, 40.263493>,  <42.803612, 40.148369, 40.642307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167065, 40.078575, 40.263493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.413277, 40.256721, 40.003407>,  <42.561005, 40.363609, 39.847355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.413277, 40.256721, 40.003407>,  <42.167065, 40.078575, 40.263493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413277, 40.256721, 40.003407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127590, -0.757826, -0.639860,
		-0.777720, 0.476812, -0.409638,
		0.615527, 0.445366, -0.650212,
		42.597935, 40.390331, 39.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909634, 39.828743, 39.552109>,  <42.167065, 40.078575, 40.263493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909634, 39.828743, 39.552109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247723, 40.023884, 39.464840>,  <42.450577, 40.140968, 39.412479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.247723, 40.023884, 39.464840>,  <41.909634, 39.828743, 39.552109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247723, 40.023884, 39.464840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087577, -0.276278, -0.957079,
		-0.527189, 0.828052, -0.190792,
		0.845223, 0.487853, -0.218169,
		42.501289, 40.170238, 39.399391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853786, 40.268860, 38.848274>,  <41.909634, 39.828743, 39.552109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853786, 40.268860, 38.848274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.246822, 40.236763, 38.915310>,  <42.482643, 40.217503, 38.955532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.246822, 40.236763, 38.915310>,  <41.853786, 40.268860, 38.848274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246822, 40.236763, 38.915310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152640, -0.165707, -0.974291,
		0.105951, 0.982905, -0.150573,
		0.982586, -0.080244, 0.167588,
		42.541599, 40.212688, 38.965588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152344, 40.738426, 38.409729>,  <41.853786, 40.268860, 38.848274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152344, 40.738426, 38.409729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402611, 40.440884, 38.503719>,  <42.552773, 40.262360, 38.560112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402611, 40.440884, 38.503719>,  <42.152344, 40.738426, 38.409729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402611, 40.440884, 38.503719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110898, -0.213344, -0.970663,
		0.772164, 0.633374, -0.050991,
		0.625671, -0.743856, 0.234976,
		42.590313, 40.217728, 38.574211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792133, 40.724197, 37.933514>,  <42.152344, 40.738426, 38.409729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792133, 40.724197, 37.933514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727402, 40.354313, 38.071342>,  <42.688564, 40.132381, 38.154041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727402, 40.354313, 38.071342>,  <42.792133, 40.724197, 37.933514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727402, 40.354313, 38.071342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004617, -0.348460, -0.937312,
		0.986808, -0.153274, 0.052121,
		-0.161827, -0.924707, 0.344571,
		42.678852, 40.076900, 38.174713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196987, 40.257526, 37.465355>,  <42.792133, 40.724197, 37.933514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196987, 40.257526, 37.465355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934860, 40.013573, 37.643612>,  <42.777584, 39.867203, 37.750568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934860, 40.013573, 37.643612>,  <43.196987, 40.257526, 37.465355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934860, 40.013573, 37.643612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015322, -0.600597, -0.799405,
		0.755195, -0.517039, 0.402928,
		-0.655321, -0.609881, 0.445645,
		42.738262, 39.830608, 37.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526985, 39.573315, 37.442394>,  <43.196987, 40.257526, 37.465355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526985, 39.573315, 37.442394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152512, 39.462383, 37.528793>,  <42.927830, 39.395824, 37.580631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152512, 39.462383, 37.528793>,  <43.526985, 39.573315, 37.442394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152512, 39.462383, 37.528793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040725, -0.524762, -0.850274,
		0.349154, -0.804806, 0.479978,
		-0.936180, -0.277330, 0.215998,
		42.871658, 39.379185, 37.593594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405807, 38.816078, 37.376438>,  <43.526985, 39.573315, 37.442394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405807, 38.816078, 37.376438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030685, 38.952854, 37.352463>,  <42.805611, 39.034920, 37.338078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030685, 38.952854, 37.352463>,  <43.405807, 38.816078, 37.376438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030685, 38.952854, 37.352463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123652, -0.490350, -0.862709,
		-0.324384, -0.801645, 0.502136,
		-0.937809, 0.341939, -0.059936,
		42.749344, 39.055435, 37.334480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999992, 38.181488, 37.284378>,  <43.405807, 38.816078, 37.376438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999992, 38.181488, 37.284378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796707, 38.496902, 37.145859>,  <42.674736, 38.686153, 37.062748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796707, 38.496902, 37.145859>,  <42.999992, 38.181488, 37.284378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796707, 38.496902, 37.145859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398856, -0.571878, -0.716847,
		-0.763302, -0.226191, 0.605151,
		-0.508217, 0.788539, -0.346298,
		42.644241, 38.733463, 37.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359661, 37.885765, 37.117184>,  <42.999992, 38.181488, 37.284378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359661, 37.885765, 37.117184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350086, 38.235439, 36.923183>,  <42.344341, 38.445244, 36.806786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350086, 38.235439, 36.923183>,  <42.359661, 37.885765, 37.117184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350086, 38.235439, 36.923183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310132, -0.467696, -0.827695,
		-0.950392, 0.130605, 0.282307,
		-0.023933, 0.874187, -0.484999,
		42.342907, 38.497696, 36.777683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736168, 37.855423, 36.670563>,  <42.359661, 37.885765, 37.117184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736168, 37.855423, 36.670563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982914, 38.124538, 36.507175>,  <42.130962, 38.286007, 36.409145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982914, 38.124538, 36.507175>,  <41.736168, 37.855423, 36.670563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982914, 38.124538, 36.507175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181730, -0.383197, -0.905612,
		-0.765805, 0.632867, -0.114114,
		0.616860, 0.672785, -0.408465,
		42.167973, 38.326374, 36.384636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389240, 38.119030, 36.049465>,  <41.736168, 37.855423, 36.670563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389240, 38.119030, 36.049465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768864, 38.231262, 35.992107>,  <41.996639, 38.298599, 35.957695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768864, 38.231262, 35.992107>,  <41.389240, 38.119030, 36.049465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768864, 38.231262, 35.992107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045888, -0.327154, -0.943856,
		-0.311735, 0.902357, -0.297614,
		0.949060, 0.280576, -0.143393,
		42.053581, 38.315434, 35.949089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394001, 38.284729, 35.371525>,  <41.389240, 38.119030, 36.049465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394001, 38.284729, 35.371525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786819, 38.250557, 35.438805>,  <42.022511, 38.230053, 35.479172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.786819, 38.250557, 35.438805>,  <41.394001, 38.284729, 35.371525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786819, 38.250557, 35.438805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098272, -0.529405, -0.842658,
		0.161032, 0.844057, -0.511504,
		0.982044, -0.085428, 0.168199,
		42.081432, 38.224930, 35.489265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738300, 38.351345, 34.705948>,  <41.394001, 38.284729, 35.371525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738300, 38.351345, 34.705948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009209, 38.177990, 34.943764>,  <42.171753, 38.073975, 35.086452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.009209, 38.177990, 34.943764>,  <41.738300, 38.351345, 34.705948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009209, 38.177990, 34.943764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213406, -0.657627, -0.722484,
		0.704101, 0.616197, -0.352906,
		0.677274, -0.433390, 0.594536,
		42.212391, 38.047974, 35.122124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434925, 38.265293, 34.425259>,  <41.738300, 38.351345, 34.705948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434925, 38.265293, 34.425259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448933, 37.991070, 34.716129>,  <42.457336, 37.826534, 34.890652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448933, 37.991070, 34.716129>,  <42.434925, 38.265293, 34.425259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448933, 37.991070, 34.716129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203829, -0.707425, -0.676759,
		0.978380, 0.171916, 0.114967,
		0.035015, -0.685561, 0.727172,
		42.459438, 37.785400, 34.934280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065384, 37.877804, 34.287769>,  <42.434925, 38.265293, 34.425259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065384, 37.877804, 34.287769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848392, 37.642010, 34.527176>,  <42.718197, 37.500534, 34.670818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848392, 37.642010, 34.527176>,  <43.065384, 37.877804, 34.287769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848392, 37.642010, 34.527176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298740, -0.801260, -0.518398,
		0.785155, -0.102420, 0.610771,
		-0.542481, -0.589485, 0.598517,
		42.685650, 37.465164, 34.706730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515259, 37.385250, 34.349468>,  <43.065384, 37.877804, 34.287769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515259, 37.385250, 34.349468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156029, 37.229286, 34.430878>,  <42.940491, 37.135708, 34.479725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156029, 37.229286, 34.430878>,  <43.515259, 37.385250, 34.349468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156029, 37.229286, 34.430878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246792, -0.829743, -0.500620,
		0.364073, -0.399368, 0.841401,
		-0.898078, -0.389913, 0.203527,
		42.886604, 37.112312, 34.491936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600826, 36.657604, 34.570938>,  <43.515259, 37.385250, 34.349468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600826, 36.657604, 34.570938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232227, 36.679207, 34.417095>,  <43.011066, 36.692169, 34.324791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232227, 36.679207, 34.417095>,  <43.600826, 36.657604, 34.570938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232227, 36.679207, 34.417095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124856, -0.896526, -0.425033,
		-0.367763, -0.439688, 0.819405,
		-0.921500, 0.054004, -0.384607,
		42.955776, 36.695408, 34.301712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330662, 36.625633, 34.951221>,  <43.600826, 36.657604, 34.570938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330662, 36.625633, 34.951221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650799, 36.510185, 35.161419>,  <44.842880, 36.440918, 35.287537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650799, 36.510185, 35.161419>,  <44.330662, 36.625633, 34.951221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650799, 36.510185, 35.161419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259347, 0.956916, 0.130579,
		-0.540542, 0.031777, 0.840717,
		0.800346, -0.288621, 0.525494,
		44.890903, 36.423599, 35.319069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339832, 36.958458, 35.635975>,  <44.330662, 36.625633, 34.951221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339832, 36.958458, 35.635975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705215, 36.854229, 35.510944>,  <44.924446, 36.791691, 35.435928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705215, 36.854229, 35.510944>,  <44.339832, 36.958458, 35.635975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705215, 36.854229, 35.510944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329862, 0.923930, 0.193764,
		0.238305, -0.280100, 0.929921,
		0.913456, -0.260571, -0.312572,
		44.979252, 36.776058, 35.417171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750687, 36.890762, 36.252090>,  <44.339832, 36.958458, 35.635975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750687, 36.890762, 36.252090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986813, 36.976452, 35.940800>,  <45.128487, 37.027866, 35.754025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986813, 36.976452, 35.940800>,  <44.750687, 36.890762, 36.252090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986813, 36.976452, 35.940800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294870, 0.840269, 0.454973,
		0.751388, -0.498051, 0.432852,
		0.590312, 0.214226, -0.778228,
		45.163906, 37.040718, 35.707333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444881, 36.990337, 36.555138>,  <44.750687, 36.890762, 36.252090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444881, 36.990337, 36.555138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418144, 37.168331, 36.197922>,  <45.402103, 37.275127, 35.983593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418144, 37.168331, 36.197922>,  <45.444881, 36.990337, 36.555138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418144, 37.168331, 36.197922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354552, 0.847221, 0.395612,
		0.932644, -0.290186, -0.214400,
		-0.066843, 0.444981, -0.893042,
		45.398090, 37.301826, 35.930008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.070259, 37.262897, 36.410004>,  <45.444881, 36.990337, 36.555138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.070259, 37.262897, 36.410004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788628, 37.480167, 36.227039>,  <45.619648, 37.610531, 36.117260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788628, 37.480167, 36.227039>,  <46.070259, 37.262897, 36.410004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788628, 37.480167, 36.227039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438791, 0.839234, 0.321167,
		0.558327, 0.025419, -0.829231,
		-0.704083, 0.543175, -0.457414,
		45.577404, 37.643120, 36.089813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.475067, 37.829258, 36.237057>,  <46.070259, 37.262897, 36.410004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.475067, 37.829258, 36.237057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.100964, 37.961384, 36.186165>,  <45.876503, 38.040661, 36.155632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.100964, 37.961384, 36.186165>,  <46.475067, 37.829258, 36.237057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100964, 37.961384, 36.186165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290066, 0.921188, 0.259374,
		0.202877, 0.205677, -0.957360,
		-0.935255, 0.330319, -0.127228,
		45.820389, 38.060478, 36.147995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.415520, 38.481857, 35.846107>,  <46.475067, 37.829258, 36.237057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.415520, 38.481857, 35.846107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040009, 38.535976, 35.972843>,  <45.814701, 38.568447, 36.048885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.040009, 38.535976, 35.972843>,  <46.415520, 38.481857, 35.846107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040009, 38.535976, 35.972843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189355, 0.970928, 0.146435,
		-0.287815, 0.197465, -0.937107,
		-0.938780, 0.135300, 0.316839,
		45.758373, 38.576565, 36.067894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.137386, 39.008644, 35.457119>,  <46.415520, 38.481857, 35.846107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.137386, 39.008644, 35.457119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915829, 39.007450, 35.790154>,  <45.782894, 39.006733, 35.989975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915829, 39.007450, 35.790154>,  <46.137386, 39.008644, 35.457119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915829, 39.007450, 35.790154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104845, 0.991783, 0.073310,
		-0.825961, 0.127898, -0.549026,
		-0.553891, -0.002989, 0.832584,
		45.749660, 39.006554, 36.039928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650494, 39.506287, 35.420380>,  <46.137386, 39.008644, 35.457119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650494, 39.506287, 35.420380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680637, 39.438847, 35.813499>,  <45.698723, 39.398380, 36.049370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680637, 39.438847, 35.813499>,  <45.650494, 39.506287, 35.420380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680637, 39.438847, 35.813499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042094, 0.985261, 0.165798,
		-0.996267, 0.028876, 0.081348,
		0.075361, -0.168604, 0.982799,
		45.703247, 39.388264, 36.108337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209789, 39.935047, 35.654617>,  <45.650494, 39.506287, 35.420380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209789, 39.935047, 35.654617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441448, 39.857826, 35.971432>,  <45.580444, 39.811493, 36.161522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441448, 39.857826, 35.971432>,  <45.209789, 39.935047, 35.654617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441448, 39.857826, 35.971432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083301, 0.980485, 0.178072,
		-0.810959, -0.037152, 0.583922,
		0.579143, -0.193050, 0.792039,
		45.615192, 39.799911, 36.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863110, 40.287075, 36.174160>,  <45.209789, 39.935047, 35.654617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863110, 40.287075, 36.174160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235847, 40.249454, 36.314342>,  <45.459492, 40.226883, 36.398453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235847, 40.249454, 36.314342>,  <44.863110, 40.287075, 36.174160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235847, 40.249454, 36.314342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029766, 0.942752, 0.332164,
		-0.361631, -0.319957, 0.875700,
		0.931846, -0.094055, 0.350452,
		45.515400, 40.221237, 36.419479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765739, 40.581356, 36.824337>,  <44.863110, 40.287075, 36.174160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765739, 40.581356, 36.824337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156807, 40.596550, 36.741665>,  <45.391449, 40.605667, 36.692062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.156807, 40.596550, 36.741665>,  <44.765739, 40.581356, 36.824337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156807, 40.596550, 36.741665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026287, 0.953698, 0.299615,
		0.208495, -0.298358, 0.931403,
		0.977670, 0.037984, -0.206684,
		45.450108, 40.607944, 36.679661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139004, 40.839836, 37.423111>,  <44.765739, 40.581356, 36.824337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139004, 40.839836, 37.423111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399971, 40.901360, 37.126274>,  <45.556553, 40.938274, 36.948174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399971, 40.901360, 37.126274>,  <45.139004, 40.839836, 37.423111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399971, 40.901360, 37.126274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309836, 0.839486, 0.446391,
		0.691631, -0.521159, 0.500040,
		0.652417, 0.153808, -0.742088,
		45.595695, 40.947502, 36.903648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599960, 41.141922, 37.730904>,  <45.139004, 40.839836, 37.423111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599960, 41.141922, 37.730904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642902, 41.257343, 37.350334>,  <45.668667, 41.326595, 37.121990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642902, 41.257343, 37.350334>,  <45.599960, 41.141922, 37.730904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642902, 41.257343, 37.350334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131793, 0.944382, 0.301287,
		0.985447, -0.157736, 0.063357,
		0.107357, 0.288552, -0.951426,
		45.675110, 41.343910, 37.064907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085865, 41.691803, 37.783119>,  <45.599960, 41.141922, 37.730904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085865, 41.691803, 37.783119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912086, 41.740234, 37.426109>,  <45.807819, 41.769291, 37.211903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912086, 41.740234, 37.426109>,  <46.085865, 41.691803, 37.783119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912086, 41.740234, 37.426109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000144, 0.990915, 0.134493,
		0.900698, 0.058558, -0.430481,
		-0.434446, 0.121075, -0.892523,
		45.781754, 41.776558, 37.158352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526913, 42.184994, 37.525860>,  <46.085865, 41.691803, 37.783119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526913, 42.184994, 37.525860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181313, 42.212376, 37.326332>,  <45.973953, 42.228806, 37.206615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.181313, 42.212376, 37.326332>,  <46.526913, 42.184994, 37.525860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181313, 42.212376, 37.326332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060546, 0.969400, 0.237903,
		0.499836, 0.235750, -0.833418,
		-0.864001, 0.068452, -0.498815,
		45.922112, 42.232910, 37.176689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686428, 42.757938, 37.188671>,  <46.526913, 42.184994, 37.525860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686428, 42.757938, 37.188671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290539, 42.705868, 37.164974>,  <46.053005, 42.674625, 37.150757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290539, 42.705868, 37.164974>,  <46.686428, 42.757938, 37.188671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290539, 42.705868, 37.164974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141912, 0.945274, 0.293799,
		0.017754, 0.299186, -0.954030,
		-0.989720, -0.130172, -0.059241,
		45.993622, 42.666817, 37.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.320179, 43.244373, 36.719727>,  <46.686428, 42.757938, 37.188671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.320179, 43.244373, 36.719727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.082058, 43.117153, 37.014874>,  <45.939186, 43.040821, 37.191963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.082058, 43.117153, 37.014874>,  <46.320179, 43.244373, 36.719727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082058, 43.117153, 37.014874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121958, 0.943448, 0.308272,
		-0.794190, 0.093527, -0.600429,
		-0.595305, -0.318053, 0.737871,
		45.903465, 43.021736, 37.236237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790749, 43.762787, 36.760860>,  <46.320179, 43.244373, 36.719727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790749, 43.762787, 36.760860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733192, 43.568401, 37.105682>,  <45.698658, 43.451771, 37.312576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.733192, 43.568401, 37.105682>,  <45.790749, 43.762787, 36.760860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733192, 43.568401, 37.105682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278798, 0.855739, 0.435871,
		-0.949509, -0.177621, -0.258618,
		-0.143890, -0.485965, 0.862052,
		45.690025, 43.422611, 37.364300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250469, 44.067936, 36.982117>,  <45.790749, 43.762787, 36.760860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250469, 44.067936, 36.982117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401516, 43.885288, 37.304337>,  <45.492146, 43.775700, 37.497669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.401516, 43.885288, 37.304337>,  <45.250469, 44.067936, 36.982117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401516, 43.885288, 37.304337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023948, 0.864850, 0.501459,
		-0.925652, -0.208651, 0.315647,
		0.377617, -0.456617, 0.805547,
		45.514801, 43.748302, 37.546001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892273, 44.296230, 37.533489>,  <45.250469, 44.067936, 36.982117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892273, 44.296230, 37.533489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207424, 44.144463, 37.727512>,  <45.396515, 44.053402, 37.843925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.207424, 44.144463, 37.727512>,  <44.892273, 44.296230, 37.533489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207424, 44.144463, 37.727512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073172, 0.724399, 0.685486,
		-0.611463, -0.575576, 0.542978,
		0.787882, -0.379419, 0.485060,
		45.443790, 44.030636, 37.873032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.753620, 40.328342, 38.527020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419724, 40.114967, 38.581638>,  <38.219387, 39.986942, 38.614410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419724, 40.114967, 38.581638>,  <38.753620, 40.328342, 38.527020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419724, 40.114967, 38.581638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195014, -0.518306, -0.832664,
		0.514952, -0.668430, 0.536680,
		-0.834742, -0.533442, 0.136549,
		38.169300, 39.954933, 38.622604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923492, 39.618961, 38.275795>,  <38.753620, 40.328342, 38.527020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923492, 39.618961, 38.275795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524036, 39.637138, 38.285992>,  <38.284363, 39.648045, 38.292110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524036, 39.637138, 38.285992>,  <38.923492, 39.618961, 38.275795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524036, 39.637138, 38.285992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041895, -0.409483, -0.911356,
		-0.030979, -0.911185, 0.410830,
		-0.998642, 0.045445, 0.025488,
		38.224445, 39.650772, 38.293636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789234, 38.920624, 38.018852>,  <38.923492, 39.618961, 38.275795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789234, 38.920624, 38.018852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461029, 39.141510, 37.959782>,  <38.264107, 39.274044, 37.924339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461029, 39.141510, 37.959782>,  <38.789234, 38.920624, 38.018852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461029, 39.141510, 37.959782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109349, -0.405204, -0.907663,
		-0.561068, -0.728604, 0.392861,
		-0.820516, 0.552219, -0.147675,
		38.214874, 39.307175, 37.915478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303211, 38.502056, 37.681026>,  <38.789234, 38.920624, 38.018852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303211, 38.502056, 37.681026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160744, 38.862530, 37.582222>,  <38.075264, 39.078815, 37.522938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160744, 38.862530, 37.582222>,  <38.303211, 38.502056, 37.681026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160744, 38.862530, 37.582222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103805, -0.300872, -0.947998,
		-0.928639, -0.312003, 0.200708,
		-0.356165, 0.901183, -0.247014,
		38.053894, 39.132885, 37.508118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724842, 38.365612, 37.304600>,  <38.303211, 38.502056, 37.681026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724842, 38.365612, 37.304600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844231, 38.737270, 37.217331>,  <37.915863, 38.960266, 37.164970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844231, 38.737270, 37.217331>,  <37.724842, 38.365612, 37.304600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844231, 38.737270, 37.217331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029476, -0.237457, -0.970951,
		-0.953964, 0.283367, -0.098261,
		0.298469, 0.929149, -0.218173,
		37.933773, 39.016014, 37.151878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276134, 38.615105, 36.744335>,  <37.724842, 38.365612, 37.304600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276134, 38.615105, 36.744335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609581, 38.833023, 36.707951>,  <37.809650, 38.963776, 36.686119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609581, 38.833023, 36.707951>,  <37.276134, 38.615105, 36.744335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609581, 38.833023, 36.707951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112266, 0.005877, -0.993661,
		-0.540808, 0.838548, 0.066062,
		0.833620, 0.544796, -0.090962,
		37.859669, 38.996464, 36.680660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083824, 39.244884, 36.472626>,  <37.276134, 38.615105, 36.744335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083824, 39.244884, 36.472626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474834, 39.195225, 36.404469>,  <37.709438, 39.165428, 36.363575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474834, 39.195225, 36.404469>,  <37.083824, 39.244884, 36.472626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474834, 39.195225, 36.404469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172992, -0.010358, -0.984869,
		0.120509, 0.992209, -0.031602,
		0.977523, -0.124153, -0.170396,
		37.768093, 39.157978, 36.353352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117626, 39.482788, 35.863850>,  <37.083824, 39.244884, 36.472626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117626, 39.482788, 35.863850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489193, 39.337872, 35.894482>,  <37.712132, 39.250923, 35.912861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489193, 39.337872, 35.894482>,  <37.117626, 39.482788, 35.863850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489193, 39.337872, 35.894482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088043, 0.015209, -0.996001,
		0.359675, 0.931942, 0.046025,
		0.928915, -0.362288, 0.076581,
		37.767868, 39.229183, 35.917458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536537, 39.927284, 35.406532>,  <37.117626, 39.482788, 35.863850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536537, 39.927284, 35.406532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732124, 39.584934, 35.473934>,  <37.849476, 39.379524, 35.514374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732124, 39.584934, 35.473934>,  <37.536537, 39.927284, 35.406532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732124, 39.584934, 35.473934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290162, -0.022583, -0.956711,
		0.822629, 0.516692, 0.237300,
		0.488966, -0.855874, 0.168502,
		37.878815, 39.328171, 35.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258331, 39.989933, 35.233902>,  <37.536537, 39.927284, 35.406532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258331, 39.989933, 35.233902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118294, 39.617050, 35.197193>,  <38.034271, 39.393322, 35.175167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118294, 39.617050, 35.197193>,  <38.258331, 39.989933, 35.233902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118294, 39.617050, 35.197193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283980, -0.012261, -0.958752,
		0.892629, -0.361720, 0.269020,
		-0.350098, -0.932206, -0.091777,
		38.013264, 39.337387, 35.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533577, 39.638611, 34.629185>,  <38.258331, 39.989933, 35.233902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533577, 39.638611, 34.629185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339184, 39.296833, 34.702667>,  <38.222546, 39.091766, 34.746758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339184, 39.296833, 34.702667>,  <38.533577, 39.638611, 34.629185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339184, 39.296833, 34.702667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440373, -0.420969, -0.793005,
		0.754910, -0.304490, 0.580858,
		-0.485985, -0.854442, 0.183705,
		38.193390, 39.040501, 34.757778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010437, 38.974747, 34.714188>,  <38.533577, 39.638611, 34.629185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010437, 38.974747, 34.714188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653084, 38.836555, 34.599285>,  <38.438671, 38.753639, 34.530346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653084, 38.836555, 34.599285>,  <39.010437, 38.974747, 34.714188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653084, 38.836555, 34.599285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431900, -0.484155, -0.760957,
		0.123818, -0.803890, 0.581747,
		-0.893382, -0.345477, -0.287253,
		38.385071, 38.732914, 34.513107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992870, 38.269775, 34.597595>,  <39.010437, 38.974747, 34.714188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992870, 38.269775, 34.597595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688873, 38.392788, 34.368565>,  <38.506477, 38.466595, 34.231148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688873, 38.392788, 34.368565>,  <38.992870, 38.269775, 34.597595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688873, 38.392788, 34.368565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351312, -0.546803, -0.759991,
		-0.546803, -0.778739, 0.307527,
		0.759991, -0.307527, 0.572574,
		38.460876, 38.485046, 34.196793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052353, 37.736870, 34.091862>,  <38.992870, 38.269775, 34.597595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052353, 37.736870, 34.091862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832645, 38.021767, 33.917042>,  <38.700821, 38.192703, 33.812149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832645, 38.021767, 33.917042>,  <39.052353, 37.736870, 34.091862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832645, 38.021767, 33.917042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299843, -0.320202, -0.898646,
		-0.779998, -0.624647, -0.037683,
		-0.549270, 0.712241, -0.437053,
		38.667866, 38.235439, 33.785927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260597, 36.990673, 34.111950>,  <39.052353, 37.736870, 34.091862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260597, 36.990673, 34.111950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065788, 36.674637, 33.963047>,  <38.948902, 36.485016, 33.873707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065788, 36.674637, 33.963047>,  <39.260597, 36.990673, 34.111950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065788, 36.674637, 33.963047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675956, 0.071073, 0.733507,
		-0.553078, 0.608859, -0.568678,
		-0.487020, -0.790088, -0.372253,
		38.919682, 36.437611, 33.851372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490780, 37.109451, 33.980042>,  <39.260597, 36.990673, 34.111950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490780, 37.109451, 33.980042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524200, 36.711578, 34.004128>,  <38.544250, 36.472855, 34.018581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524200, 36.711578, 34.004128>,  <38.490780, 37.109451, 33.980042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524200, 36.711578, 34.004128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722328, -0.018821, 0.691294,
		-0.686485, -0.101254, -0.720060,
		0.083549, -0.994682, 0.060218,
		38.549267, 36.413174, 34.022194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724018, 36.835262, 33.949940>,  <38.490780, 37.109451, 33.980042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724018, 36.835262, 33.949940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969498, 36.559288, 34.103497>,  <38.116787, 36.393703, 34.195629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969498, 36.559288, 34.103497>,  <37.724018, 36.835262, 33.949940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969498, 36.559288, 34.103497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650475, -0.166235, 0.741113,
		-0.447502, -0.704528, -0.550802,
		0.613697, -0.689932, 0.383887,
		38.153606, 36.352310, 34.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316929, 36.311440, 34.106850>,  <37.724018, 36.835262, 33.949940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316929, 36.311440, 34.106850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628521, 36.192291, 34.327560>,  <37.815475, 36.120804, 34.459988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628521, 36.192291, 34.327560>,  <37.316929, 36.311440, 34.106850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628521, 36.192291, 34.327560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622590, -0.262722, 0.737129,
		-0.074602, -0.917743, -0.390105,
		0.778984, -0.297867, 0.551778,
		37.862217, 36.102932, 34.493095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164196, 35.626312, 34.441059>,  <37.316929, 36.311440, 34.106850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164196, 35.626312, 34.441059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455818, 35.761242, 34.679283>,  <37.630791, 35.842201, 34.822216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455818, 35.761242, 34.679283>,  <37.164196, 35.626312, 34.441059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455818, 35.761242, 34.679283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497750, -0.335956, 0.799611,
		0.469809, -0.879401, -0.077029,
		0.729058, 0.337323, 0.595557,
		37.674534, 35.862438, 34.857952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268188, 35.058834, 34.969322>,  <37.164196, 35.626312, 34.441059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268188, 35.058834, 34.969322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408783, 35.406555, 35.108326>,  <37.493137, 35.615189, 35.191730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408783, 35.406555, 35.108326>,  <37.268188, 35.058834, 34.969322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408783, 35.406555, 35.108326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374072, -0.209869, 0.903341,
		0.858213, -0.447504, 0.251418,
		0.351483, 0.869307, 0.347511,
		37.514229, 35.667347, 35.212578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489113, 34.866383, 35.652905>,  <37.268188, 35.058834, 34.969322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489113, 34.866383, 35.652905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463493, 35.265480, 35.660877>,  <37.448120, 35.504940, 35.665661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463493, 35.265480, 35.660877>,  <37.489113, 34.866383, 35.652905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463493, 35.265480, 35.660877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138633, -0.028676, 0.989929,
		0.988271, 0.060639, 0.140157,
		-0.064048, 0.997748, 0.019933,
		37.444279, 35.564804, 35.666859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983345, 35.237526, 36.155495>,  <37.489113, 34.866383, 35.652905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983345, 35.237526, 36.155495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686184, 35.500793, 36.106663>,  <37.507885, 35.658752, 36.077362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686184, 35.500793, 36.106663>,  <37.983345, 35.237526, 36.155495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686184, 35.500793, 36.106663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147151, 0.017341, 0.988962,
		0.653021, 0.752671, 0.083967,
		-0.742907, 0.658169, -0.122081,
		37.463310, 35.698242, 36.070038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135410, 35.740864, 36.723804>,  <37.983345, 35.237526, 36.155495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135410, 35.740864, 36.723804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758896, 35.794918, 36.600056>,  <37.532986, 35.827351, 36.525806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758896, 35.794918, 36.600056>,  <38.135410, 35.740864, 36.723804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758896, 35.794918, 36.600056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319320, -0.058928, 0.945813,
		0.109583, 0.989073, 0.098620,
		-0.941290, 0.135137, -0.309373,
		37.476509, 35.835461, 36.507244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897278, 36.320797, 37.044277>,  <38.135410, 35.740864, 36.723804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897278, 36.320797, 37.044277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546585, 36.150833, 36.954132>,  <37.336170, 36.048855, 36.900043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546585, 36.150833, 36.954132>,  <37.897278, 36.320797, 37.044277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546585, 36.150833, 36.954132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329542, 0.189383, 0.924952,
		-0.350344, 0.885203, -0.306065,
		-0.876733, -0.424912, -0.225363,
		37.283566, 36.023361, 36.886524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356529, 36.848225, 37.143257>,  <37.897278, 36.320797, 37.044277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356529, 36.848225, 37.143257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200230, 36.482456, 37.185493>,  <37.106449, 36.262997, 37.210835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200230, 36.482456, 37.185493>,  <37.356529, 36.848225, 37.143257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200230, 36.482456, 37.185493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243829, 0.213438, 0.946040,
		-0.887616, 0.343919, -0.306363,
		-0.390750, -0.914420, 0.105594,
		37.083004, 36.208130, 37.217171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742027, 36.939991, 37.426483>,  <37.356529, 36.848225, 37.143257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742027, 36.939991, 37.426483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805389, 36.554932, 37.514313>,  <36.843407, 36.323895, 37.567009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805389, 36.554932, 37.514313>,  <36.742027, 36.939991, 37.426483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805389, 36.554932, 37.514313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208074, 0.184843, 0.960489,
		-0.965200, -0.197837, -0.171022,
		0.158408, -0.962649, 0.219575,
		36.852913, 36.266136, 37.580185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106064, 36.678688, 37.796501>,  <36.742027, 36.939991, 37.426483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106064, 36.678688, 37.796501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430813, 36.459938, 37.878269>,  <36.625664, 36.328690, 37.927330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430813, 36.459938, 37.878269>,  <36.106064, 36.678688, 37.796501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430813, 36.459938, 37.878269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119220, 0.187466, 0.975009,
		-0.571528, -0.815957, 0.087001,
		0.811875, -0.546873, 0.204420,
		36.674377, 36.295876, 37.939594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918568, 36.262863, 38.369434>,  <36.106064, 36.678688, 37.796501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918568, 36.262863, 38.369434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318184, 36.245598, 38.372570>,  <36.557953, 36.235237, 38.374451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318184, 36.245598, 38.372570>,  <35.918568, 36.262863, 38.369434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318184, 36.245598, 38.372570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005403, 0.056216, 0.998404,
		-0.043539, -0.997485, 0.055928,
		0.999037, -0.043168, 0.007837,
		36.617893, 36.232647, 38.374920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769566, 35.519016, 38.326862>,  <35.918568, 36.262863, 38.369434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769566, 35.519016, 38.326862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474384, 35.289097, 38.468304>,  <35.297276, 35.151146, 38.553169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474384, 35.289097, 38.468304>,  <35.769566, 35.519016, 38.326862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474384, 35.289097, 38.468304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113815, -0.410454, -0.904751,
		0.665189, -0.707905, 0.237474,
		-0.737950, -0.574802, 0.353600,
		35.252998, 35.116657, 38.574383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904484, 34.787811, 38.148785>,  <35.769566, 35.519016, 38.326862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904484, 34.787811, 38.148785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512283, 34.809448, 38.224354>,  <35.276962, 34.822430, 38.269695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512283, 34.809448, 38.224354>,  <35.904484, 34.787811, 38.148785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512283, 34.809448, 38.224354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196374, -0.306127, -0.931517,
		0.007447, -0.950453, 0.310780,
		-0.980501, 0.054093, 0.188924,
		35.218132, 34.825676, 38.281033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699333, 34.411205, 37.666275>,  <35.904484, 34.787811, 38.148785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699333, 34.411205, 37.666275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352409, 34.570473, 37.785763>,  <35.144257, 34.666035, 37.857456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352409, 34.570473, 37.785763>,  <35.699333, 34.411205, 37.666275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352409, 34.570473, 37.785763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378390, -0.137479, -0.915380,
		-0.323409, -0.906951, 0.269901,
		-0.867311, 0.398170, 0.298719,
		35.092216, 34.689922, 37.875378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128597, 33.953648, 37.518311>,  <35.699333, 34.411205, 37.666275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128597, 33.953648, 37.518311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970711, 34.321129, 37.523720>,  <34.875977, 34.541618, 37.526966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970711, 34.321129, 37.523720>,  <35.128597, 33.953648, 37.518311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970711, 34.321129, 37.523720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373856, -0.147149, -0.915739,
		-0.839302, -0.366516, 0.401545,
		-0.394720, 0.918702, 0.013521,
		34.852295, 34.596741, 37.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284538, 33.907017, 37.306847>,  <35.128597, 33.953648, 37.518311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284538, 33.907017, 37.306847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391697, 34.288193, 37.250095>,  <34.455990, 34.516899, 37.216045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391697, 34.288193, 37.250095>,  <34.284538, 33.907017, 37.306847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391697, 34.288193, 37.250095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342878, -0.043323, -0.938380,
		-0.900371, 0.300035, 0.315137,
		0.267894, 0.952944, -0.141882,
		34.472065, 34.574078, 37.207531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861198, 34.102703, 36.822533>,  <34.284538, 33.907017, 37.306847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861198, 34.102703, 36.822533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152962, 34.375156, 36.797165>,  <34.328018, 34.538628, 36.781944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152962, 34.375156, 36.797165>,  <33.861198, 34.102703, 36.822533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152962, 34.375156, 36.797165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222542, 0.148604, -0.963531,
		-0.646869, 0.716920, 0.259974,
		0.729408, 0.681134, -0.063417,
		34.371784, 34.579498, 36.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564903, 34.621468, 36.531906>,  <33.861198, 34.102703, 36.822533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564903, 34.621468, 36.531906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953598, 34.679119, 36.457115>,  <34.186813, 34.713711, 36.412243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953598, 34.679119, 36.457115>,  <33.564903, 34.621468, 36.531906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953598, 34.679119, 36.457115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213460, 0.198153, -0.956645,
		-0.100833, 0.969516, 0.223319,
		0.971734, 0.144131, -0.186973,
		34.245117, 34.722359, 36.401024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556759, 35.087006, 36.037251>,  <33.564903, 34.621468, 36.531906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556759, 35.087006, 36.037251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931316, 34.950626, 36.003979>,  <34.156052, 34.868797, 35.984016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931316, 34.950626, 36.003979>,  <33.556759, 35.087006, 36.037251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931316, 34.950626, 36.003979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025179, 0.171120, -0.984928,
		0.350046, 0.924375, 0.151651,
		0.936394, -0.340951, -0.083175,
		34.212234, 34.848339, 35.979027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933598, 35.623020, 35.556561>,  <33.556759, 35.087006, 36.037251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933598, 35.623020, 35.556561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130169, 35.274658, 35.554619>,  <34.248112, 35.065639, 35.553455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130169, 35.274658, 35.554619>,  <33.933598, 35.623020, 35.556561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130169, 35.274658, 35.554619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016024, 0.014613, -0.999765,
		0.870772, 0.491232, 0.021136,
		0.491426, -0.870906, -0.004853,
		34.277596, 35.013386, 35.553162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416100, 35.783791, 35.168617>,  <33.933598, 35.623020, 35.556561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416100, 35.783791, 35.168617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400372, 35.385090, 35.140511>,  <34.390934, 35.145870, 35.123646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400372, 35.385090, 35.140511>,  <34.416100, 35.783791, 35.168617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400372, 35.385090, 35.140511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072354, 0.067298, -0.995106,
		0.996604, -0.044213, 0.069473,
		-0.039321, -0.996753, -0.070269,
		34.388577, 35.086063, 35.119431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954430, 35.624241, 34.655388>,  <34.416100, 35.783791, 35.168617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954430, 35.624241, 34.655388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723774, 35.297859, 34.671955>,  <34.585381, 35.102032, 34.681896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723774, 35.297859, 34.671955>,  <34.954430, 35.624241, 34.655388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723774, 35.297859, 34.671955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097760, 0.018577, -0.995037,
		0.811131, -0.577823, -0.090480,
		-0.576636, -0.815950, 0.041419,
		34.550781, 35.053074, 34.684380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191776, 35.178207, 34.144192>,  <34.954430, 35.624241, 34.655388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191776, 35.178207, 34.144192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808670, 35.089798, 34.217758>,  <34.578804, 35.036751, 34.261898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808670, 35.089798, 34.217758>,  <35.191776, 35.178207, 34.144192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808670, 35.089798, 34.217758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230956, 0.210335, -0.949957,
		0.171277, -0.952317, -0.252499,
		-0.957770, -0.221022, 0.183918,
		34.521339, 35.023491, 34.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.266117, 34.911777, 42.403606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901634, 34.983200, 42.255112>,  <34.682945, 35.026054, 42.166016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.901634, 34.983200, 42.255112>,  <35.266117, 34.911777, 42.403606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901634, 34.983200, 42.255112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328193, -0.230016, -0.916178,
		-0.248988, -0.956665, 0.150988,
		-0.911205, 0.178564, -0.371241,
		34.628273, 35.036766, 42.143738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072136, 34.304272, 42.008350>,  <35.266117, 34.911777, 42.403606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072136, 34.304272, 42.008350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833797, 34.589828, 41.861202>,  <34.690796, 34.761162, 41.772915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.833797, 34.589828, 41.861202>,  <35.072136, 34.304272, 42.008350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833797, 34.589828, 41.861202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354109, -0.177585, -0.918189,
		-0.720816, -0.677364, -0.146983,
		-0.595846, 0.713893, -0.367866,
		34.655045, 34.803997, 41.750843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727737, 34.035702, 41.363701>,  <35.072136, 34.304272, 42.008350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727737, 34.035702, 41.363701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.745770, 34.434948, 41.380348>,  <34.756588, 34.674496, 41.390335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.745770, 34.434948, 41.380348>,  <34.727737, 34.035702, 41.363701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745770, 34.434948, 41.380348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178694, 0.032932, -0.983353,
		-0.982871, 0.051769, -0.176872,
		0.045083, 0.998116, 0.041619,
		34.759293, 34.734383, 41.392834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539879, 34.158112, 40.695480>,  <34.727737, 34.035702, 41.363701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539879, 34.158112, 40.695480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677650, 34.519249, 40.798428>,  <34.760311, 34.735931, 40.860195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677650, 34.519249, 40.798428>,  <34.539879, 34.158112, 40.695480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677650, 34.519249, 40.798428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106876, 0.234651, -0.966187,
		-0.932711, 0.360285, -0.015673,
		0.344425, 0.902848, 0.257367,
		34.780979, 34.790104, 40.875637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068001, 34.670185, 40.409668>,  <34.539879, 34.158112, 40.695480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068001, 34.670185, 40.409668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434593, 34.819580, 40.467049>,  <34.654549, 34.909218, 40.501476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434593, 34.819580, 40.467049>,  <34.068001, 34.670185, 40.409668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434593, 34.819580, 40.467049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029157, 0.295253, -0.954974,
		-0.399023, 0.879395, 0.259703,
		0.916477, 0.373484, 0.143454,
		34.709538, 34.931625, 40.510086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050022, 35.202339, 40.019642>,  <34.068001, 34.670185, 40.409668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050022, 35.202339, 40.019642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440830, 35.152397, 40.088737>,  <34.675316, 35.122433, 40.130196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440830, 35.152397, 40.088737>,  <34.050022, 35.202339, 40.019642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440830, 35.152397, 40.088737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195958, 0.207422, -0.958424,
		0.083832, 0.970251, 0.227122,
		0.977022, -0.124853, 0.172740,
		34.733936, 35.114941, 40.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397388, 35.794048, 39.850613>,  <34.050022, 35.202339, 40.019642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397388, 35.794048, 39.850613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701157, 35.533871, 39.844849>,  <34.883419, 35.377766, 39.841389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701157, 35.533871, 39.844849>,  <34.397388, 35.794048, 39.850613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701157, 35.533871, 39.844849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119651, 0.161401, -0.979609,
		0.639503, 0.742211, 0.200397,
		0.759420, -0.650441, -0.014410,
		34.928982, 35.338737, 39.840527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740631, 36.024021, 39.305817>,  <34.397388, 35.794048, 39.850613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740631, 36.024021, 39.305817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906509, 35.664684, 39.363777>,  <35.006039, 35.449081, 39.398556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906509, 35.664684, 39.363777>,  <34.740631, 36.024021, 39.305817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906509, 35.664684, 39.363777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311878, -0.009278, -0.950077,
		0.854843, 0.439189, 0.276327,
		0.414700, -0.898347, 0.144905,
		35.030918, 35.395180, 39.407249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420193, 35.971786, 39.057194>,  <34.740631, 36.024021, 39.305817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420193, 35.971786, 39.057194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298443, 35.591164, 39.039753>,  <35.225391, 35.362789, 39.029289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298443, 35.591164, 39.039753>,  <35.420193, 35.971786, 39.057194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298443, 35.591164, 39.039753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100571, 0.013415, -0.994839,
		0.947229, -0.307187, 0.091616,
		-0.304373, -0.951555, -0.043601,
		35.207130, 35.305698, 39.026672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146000, 35.775887, 39.152546>,  <35.420193, 35.971786, 39.057194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146000, 35.775887, 39.152546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457581, 35.973545, 38.998116>,  <36.644527, 36.092140, 38.905457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.457581, 35.973545, 38.998116>,  <36.146000, 35.775887, 39.152546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457581, 35.973545, 38.998116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309881, 0.231922, 0.922055,
		0.545168, -0.837875, 0.027530,
		0.778952, 0.494144, -0.386077,
		36.691265, 36.121788, 38.882294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732677, 35.454227, 39.396564>,  <36.146000, 35.775887, 39.152546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732677, 35.454227, 39.396564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807129, 35.838364, 39.313515>,  <36.851799, 36.068844, 39.263683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807129, 35.838364, 39.313515>,  <36.732677, 35.454227, 39.396564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807129, 35.838364, 39.313515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341951, 0.134791, 0.930000,
		0.921100, -0.244100, -0.303300,
		0.186131, 0.960337, -0.207626,
		36.862968, 36.126465, 39.251228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303852, 35.600780, 39.735992>,  <36.732677, 35.454227, 39.396564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303852, 35.600780, 39.735992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170452, 35.969166, 39.655380>,  <37.090412, 36.190197, 39.607014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.170452, 35.969166, 39.655380>,  <37.303852, 35.600780, 39.735992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170452, 35.969166, 39.655380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209108, 0.280703, 0.936739,
		0.919268, 0.270259, -0.286194,
		-0.333498, 0.920959, -0.201528,
		37.070404, 36.245453, 39.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717514, 35.987652, 40.188084>,  <37.303852, 35.600780, 39.735992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717514, 35.987652, 40.188084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445312, 36.262360, 40.085896>,  <37.281990, 36.427185, 40.024582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445312, 36.262360, 40.085896>,  <37.717514, 35.987652, 40.188084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445312, 36.262360, 40.085896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039517, 0.382538, 0.923095,
		0.731675, 0.618077, -0.287458,
		-0.680507, 0.686765, -0.255469,
		37.241161, 36.468388, 40.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039639, 36.721500, 40.156540>,  <37.717514, 35.987652, 40.188084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039639, 36.721500, 40.156540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647911, 36.750465, 40.232113>,  <37.412876, 36.767845, 40.277454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647911, 36.750465, 40.232113>,  <38.039639, 36.721500, 40.156540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647911, 36.750465, 40.232113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201418, 0.437582, 0.876329,
		-0.019215, 0.896258, -0.443116,
		-0.979317, 0.072413, 0.188931,
		37.354115, 36.772190, 40.288792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890141, 37.359428, 40.304783>,  <38.039639, 36.721500, 40.156540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890141, 37.359428, 40.304783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577969, 37.173531, 40.472088>,  <37.390667, 37.061993, 40.572472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.577969, 37.173531, 40.472088>,  <37.890141, 37.359428, 40.304783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577969, 37.173531, 40.472088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208607, 0.437084, 0.874895,
		-0.589419, 0.770045, -0.244164,
		-0.780428, -0.464745, 0.418262,
		37.343842, 37.034107, 40.597565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498363, 37.842194, 40.583145>,  <37.890141, 37.359428, 40.304783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498363, 37.842194, 40.583145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417645, 37.502403, 40.778149>,  <37.369213, 37.298531, 40.895153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417645, 37.502403, 40.778149>,  <37.498363, 37.842194, 40.583145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417645, 37.502403, 40.778149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095006, 0.478427, 0.872973,
		-0.974809, 0.222478, -0.015839,
		-0.201795, -0.849477, 0.487512,
		37.357105, 37.247559, 40.924400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113998, 38.139828, 41.117821>,  <37.498363, 37.842194, 40.583145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113998, 38.139828, 41.117821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171101, 37.755577, 41.213165>,  <37.205360, 37.525028, 41.270374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171101, 37.755577, 41.213165>,  <37.113998, 38.139828, 41.117821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171101, 37.755577, 41.213165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051279, 0.247685, 0.967483,
		-0.988429, -0.125887, 0.084618,
		0.142752, -0.960627, 0.238364,
		37.213924, 37.467388, 41.284676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624138, 37.971954, 41.617729>,  <37.113998, 38.139828, 41.117821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624138, 37.971954, 41.617729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933296, 37.720184, 41.649883>,  <37.118790, 37.569122, 41.669174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.933296, 37.720184, 41.649883>,  <36.624138, 37.971954, 41.617729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933296, 37.720184, 41.649883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127465, 0.278106, 0.952056,
		-0.621599, -0.725593, 0.295176,
		0.772895, -0.629422, 0.080383,
		37.165165, 37.531357, 41.674000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466972, 37.592514, 42.214005>,  <36.624138, 37.971954, 41.617729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466972, 37.592514, 42.214005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863300, 37.588120, 42.160122>,  <37.101097, 37.585484, 42.127792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863300, 37.588120, 42.160122>,  <36.466972, 37.592514, 42.214005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863300, 37.588120, 42.160122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135095, 0.109763, 0.984734,
		0.003961, -0.993897, 0.110241,
		0.990825, -0.010992, -0.134705,
		37.160549, 37.584824, 42.119709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718945, 37.167686, 42.641678>,  <36.466972, 37.592514, 42.214005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718945, 37.167686, 42.641678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054016, 37.366585, 42.551308>,  <37.255058, 37.485924, 42.497086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.054016, 37.366585, 42.551308>,  <36.718945, 37.167686, 42.641678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054016, 37.366585, 42.551308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258585, 0.003274, 0.965983,
		0.481069, -0.867605, -0.125837,
		0.837680, 0.497244, -0.225924,
		37.305321, 37.515759, 42.483532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248253, 36.788620, 42.966339>,  <36.718945, 37.167686, 42.641678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248253, 36.788620, 42.966339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337124, 37.172699, 42.898632>,  <37.390446, 37.403149, 42.858009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.337124, 37.172699, 42.898632>,  <37.248253, 36.788620, 42.966339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337124, 37.172699, 42.898632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166936, 0.133578, 0.976877,
		0.960609, -0.245297, -0.130614,
		0.222178, 0.960201, -0.169265,
		37.403778, 37.460758, 42.847851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699684, 36.988045, 43.507328>,  <37.248253, 36.788620, 42.966339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699684, 36.988045, 43.507328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640671, 37.357395, 43.365566>,  <37.605263, 37.579006, 43.280510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640671, 37.357395, 43.365566>,  <37.699684, 36.988045, 43.507328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640671, 37.357395, 43.365566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300092, 0.383228, 0.873545,
		0.942433, 0.022518, -0.333636,
		-0.147529, 0.923379, -0.354409,
		37.596413, 37.634411, 43.259243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279835, 37.380447, 43.853256>,  <37.699684, 36.988045, 43.507328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279835, 37.380447, 43.853256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004425, 37.643204, 43.730339>,  <37.839180, 37.800858, 43.656590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004425, 37.643204, 43.730339>,  <38.279835, 37.380447, 43.853256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004425, 37.643204, 43.730339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061914, 0.368934, 0.927391,
		0.722569, 0.657553, -0.213347,
		-0.688520, 0.656895, -0.307292,
		37.797871, 37.840271, 43.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.893862, 40.669498, 43.691582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281590, 40.585217, 43.640953>,  <32.514225, 40.534645, 43.610577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281590, 40.585217, 43.640953>,  <31.893862, 40.669498, 43.691582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281590, 40.585217, 43.640953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172064, -0.213912, -0.961580,
		0.175536, 0.953858, -0.243604,
		0.969320, -0.210708, -0.126575,
		32.572384, 40.522003, 43.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097095, 41.023880, 43.091911>,  <31.893862, 40.669498, 43.691582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097095, 41.023880, 43.091911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358658, 40.725857, 43.144512>,  <32.515594, 40.547043, 43.176071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358658, 40.725857, 43.144512>,  <32.097095, 41.023880, 43.091911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358658, 40.725857, 43.144512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216075, -0.350481, -0.911304,
		0.725063, 0.567495, -0.390171,
		0.653908, -0.745058, 0.131499,
		32.554829, 40.502338, 43.183964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404083, 41.053314, 42.472393>,  <32.097095, 41.023880, 43.091911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404083, 41.053314, 42.472393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503395, 40.697063, 42.624783>,  <32.562984, 40.483315, 42.716217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.503395, 40.697063, 42.624783>,  <32.404083, 41.053314, 42.472393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503395, 40.697063, 42.624783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022546, -0.398500, -0.916891,
		0.968425, 0.219059, -0.119021,
		0.248283, -0.890624, 0.380978,
		32.577881, 40.429874, 42.739075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061901, 40.859692, 42.154545>,  <32.404083, 41.053314, 42.472393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061901, 40.859692, 42.154545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871822, 40.534252, 42.288555>,  <32.757774, 40.338989, 42.368961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.871822, 40.534252, 42.288555>,  <33.061901, 40.859692, 42.154545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871822, 40.534252, 42.288555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151830, -0.450879, -0.879577,
		0.866678, -0.367108, 0.337787,
		-0.475201, -0.813596, 0.335029,
		32.729263, 40.290173, 42.389065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448410, 40.286644, 42.051826>,  <33.061901, 40.859692, 42.154545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448410, 40.286644, 42.051826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073830, 40.148460, 42.076214>,  <32.849083, 40.065548, 42.090847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073830, 40.148460, 42.076214>,  <33.448410, 40.286644, 42.051826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073830, 40.148460, 42.076214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118009, -0.473900, -0.872635,
		0.330357, -0.809984, 0.484551,
		-0.936450, -0.345463, 0.060971,
		32.792896, 40.044823, 42.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475220, 39.504787, 41.916866>,  <33.448410, 40.286644, 42.051826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475220, 39.504787, 41.916866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122208, 39.676609, 41.840309>,  <32.910400, 39.779701, 41.794376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.122208, 39.676609, 41.840309>,  <33.475220, 39.504787, 41.916866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122208, 39.676609, 41.840309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039125, -0.338508, -0.940150,
		-0.468632, -0.837196, 0.281936,
		-0.882527, 0.429554, -0.191391,
		32.857449, 39.805473, 41.782890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148434, 38.922012, 41.522964>,  <33.475220, 39.504787, 41.916866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148434, 38.922012, 41.522964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973053, 39.279148, 41.481777>,  <32.867825, 39.493427, 41.457066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.973053, 39.279148, 41.481777>,  <33.148434, 38.922012, 41.522964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973053, 39.279148, 41.481777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087434, -0.156401, -0.983816,
		-0.894493, -0.422351, 0.146638,
		-0.438450, 0.892837, -0.102972,
		32.841518, 39.547001, 41.450886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549160, 38.569569, 41.266651>,  <33.148434, 38.922012, 41.522964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549160, 38.569569, 41.266651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570076, 38.954727, 41.160748>,  <32.582626, 39.185822, 41.097206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570076, 38.954727, 41.160748>,  <32.549160, 38.569569, 41.266651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570076, 38.954727, 41.160748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322682, -0.267188, -0.908013,
		-0.945062, -0.037955, -0.324679,
		0.052287, 0.962897, -0.264757,
		32.585762, 39.243595, 41.081322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294071, 38.597832, 40.446655>,  <32.549160, 38.569569, 41.266651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294071, 38.597832, 40.446655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442856, 38.962372, 40.517189>,  <32.532127, 39.181095, 40.559509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442856, 38.962372, 40.517189>,  <32.294071, 38.597832, 40.446655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442856, 38.962372, 40.517189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034405, 0.176300, -0.983735,
		-0.927612, 0.371976, 0.034221,
		0.371959, 0.911347, 0.176336,
		32.554443, 39.235775, 40.570091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919762, 39.125355, 40.049858>,  <32.294071, 38.597832, 40.446655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919762, 39.125355, 40.049858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267578, 39.304054, 40.134056>,  <32.476269, 39.411274, 40.184574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267578, 39.304054, 40.134056>,  <31.919762, 39.125355, 40.049858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267578, 39.304054, 40.134056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107036, 0.245614, -0.963440,
		-0.482118, 0.860284, 0.165754,
		0.869543, 0.446751, 0.210496,
		32.528442, 39.438080, 40.197205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861864, 39.686932, 39.627876>,  <31.919762, 39.125355, 40.049858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861864, 39.686932, 39.627876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248291, 39.634689, 39.717010>,  <32.480148, 39.603344, 39.770493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248291, 39.634689, 39.717010>,  <31.861864, 39.686932, 39.627876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248291, 39.634689, 39.717010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253050, 0.305673, -0.917894,
		0.051768, 0.943136, 0.328351,
		0.966067, -0.130606, 0.222836,
		32.538113, 39.595509, 39.783863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126060, 40.316090, 39.289082>,  <31.861864, 39.686932, 39.627876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126060, 40.316090, 39.289082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387169, 40.023064, 39.366272>,  <32.543835, 39.847248, 39.412586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387169, 40.023064, 39.366272>,  <32.126060, 40.316090, 39.289082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387169, 40.023064, 39.366272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515579, 0.242962, -0.821674,
		0.555044, 0.635858, 0.536294,
		0.652767, -0.732567, 0.192980,
		32.583000, 39.803295, 39.424168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851978, 40.592438, 39.149784>,  <32.126060, 40.316090, 39.289082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851978, 40.592438, 39.149784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838951, 40.194294, 39.113544>,  <32.831135, 39.955410, 39.091801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838951, 40.194294, 39.113544>,  <32.851978, 40.592438, 39.149784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838951, 40.194294, 39.113544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232874, 0.080595, -0.969162,
		0.971962, -0.052662, 0.229167,
		-0.032568, -0.995355, -0.090599,
		32.829182, 39.895687, 39.086365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395428, 40.459949, 38.703529>,  <32.851978, 40.592438, 39.149784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395428, 40.459949, 38.703529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167110, 40.133163, 38.670635>,  <33.030121, 39.937092, 38.650898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167110, 40.133163, 38.670635>,  <33.395428, 40.459949, 38.703529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167110, 40.133163, 38.670635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127225, 0.010941, -0.991814,
		0.811175, -0.576585, 0.097693,
		-0.570796, -0.816964, -0.082231,
		32.995872, 39.888073, 38.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999397, 40.253811, 38.832016>,  <33.395428, 40.459949, 38.703529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999397, 40.253811, 38.832016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344414, 40.456184, 38.829044>,  <34.551422, 40.577606, 38.827263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344414, 40.456184, 38.829044>,  <33.999397, 40.253811, 38.832016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344414, 40.456184, 38.829044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137913, 0.249192, 0.958584,
		0.486827, -0.825795, 0.284713,
		0.862542, 0.505930, -0.007425,
		34.603176, 40.607964, 38.826817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146881, 40.354145, 39.560253>,  <33.999397, 40.253811, 38.832016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146881, 40.354145, 39.560253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.432568, 40.581135, 39.396362>,  <34.603977, 40.717327, 39.298027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.432568, 40.581135, 39.396362>,  <34.146881, 40.354145, 39.560253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432568, 40.581135, 39.396362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008170, 0.578585, 0.815581,
		0.699881, -0.585846, 0.408596,
		0.714213, 0.567472, -0.409727,
		34.646832, 40.751377, 39.273445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775814, 40.261860, 39.979099>,  <34.146881, 40.354145, 39.560253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775814, 40.261860, 39.979099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.772804, 40.612644, 39.786900>,  <34.771000, 40.823116, 39.671581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.772804, 40.612644, 39.786900>,  <34.775814, 40.261860, 39.979099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772804, 40.612644, 39.786900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081663, 0.479447, 0.873763,
		0.996632, -0.032667, -0.075221,
		-0.007521, 0.876962, -0.480500,
		34.770550, 40.875732, 39.642750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303345, 40.495953, 40.244995>,  <34.775814, 40.261860, 39.979099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303345, 40.495953, 40.244995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100101, 40.806923, 40.096706>,  <34.978157, 40.993504, 40.007732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100101, 40.806923, 40.096706>,  <35.303345, 40.495953, 40.244995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100101, 40.806923, 40.096706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495561, 0.615925, 0.612418,
		0.704448, 0.127456, -0.698217,
		-0.508106, 0.777426, -0.370725,
		34.947670, 41.040150, 39.985489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776081, 40.987175, 40.185360>,  <35.303345, 40.495953, 40.244995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776081, 40.987175, 40.185360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408836, 41.143242, 40.213223>,  <35.188492, 41.236881, 40.229939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408836, 41.143242, 40.213223>,  <35.776081, 40.987175, 40.185360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408836, 41.143242, 40.213223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277812, 0.508192, 0.815206,
		0.282665, 0.767798, -0.574967,
		-0.918107, 0.390163, 0.069656,
		35.133404, 41.260292, 40.234119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899158, 41.724735, 40.374104>,  <35.776081, 40.987175, 40.185360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899158, 41.724735, 40.374104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511242, 41.666046, 40.452045>,  <35.278492, 41.630833, 40.498810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.511242, 41.666046, 40.452045>,  <35.899158, 41.724735, 40.374104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511242, 41.666046, 40.452045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070204, 0.597160, 0.799044,
		-0.233601, 0.788589, -0.568822,
		-0.969795, -0.146724, 0.194859,
		35.220303, 41.622028, 40.510502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756279, 42.400486, 40.715611>,  <35.899158, 41.724735, 40.374104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756279, 42.400486, 40.715611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457150, 42.157928, 40.823723>,  <35.277672, 42.012394, 40.888592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457150, 42.157928, 40.823723>,  <35.756279, 42.400486, 40.715611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457150, 42.157928, 40.823723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074249, 0.480947, 0.873600,
		-0.659734, 0.633229, -0.404687,
		-0.747822, -0.606391, 0.270281,
		35.232803, 41.976009, 40.904808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339764, 42.845383, 41.200603>,  <35.756279, 42.400486, 40.715611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339764, 42.845383, 41.200603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229790, 42.470631, 41.287006>,  <35.163807, 42.245777, 41.338848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229790, 42.470631, 41.287006>,  <35.339764, 42.845383, 41.200603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229790, 42.470631, 41.287006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146815, 0.262941, 0.953576,
		-0.950188, 0.230458, -0.209840,
		-0.274934, -0.936884, 0.216009,
		35.147308, 42.189564, 41.351810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812592, 42.975208, 41.681332>,  <35.339764, 42.845383, 41.200603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812592, 42.975208, 41.681332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900997, 42.585899, 41.706291>,  <34.954041, 42.352314, 41.721268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900997, 42.585899, 41.706291>,  <34.812592, 42.975208, 41.681332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900997, 42.585899, 41.706291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016520, 0.067706, 0.997568,
		-0.975132, -0.219442, 0.031042,
		0.221010, -0.973274, 0.062396,
		34.967300, 42.293919, 41.725010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239269, 42.587479, 42.006374>,  <34.812592, 42.975208, 41.681332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239269, 42.587479, 42.006374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574123, 42.377724, 42.068623>,  <34.775036, 42.251873, 42.105972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574123, 42.377724, 42.068623>,  <34.239269, 42.587479, 42.006374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574123, 42.377724, 42.068623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188357, -0.009246, 0.982057,
		-0.513538, -0.851430, -0.106512,
		0.837138, -0.524386, 0.155625,
		34.825264, 42.220409, 42.115311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971371, 42.098812, 42.463646>,  <34.239269, 42.587479, 42.006374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971371, 42.098812, 42.463646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370213, 42.111881, 42.491123>,  <34.609516, 42.119720, 42.507610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.370213, 42.111881, 42.491123>,  <33.971371, 42.098812, 42.463646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370213, 42.111881, 42.491123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067966, -0.022977, 0.997423,
		0.034166, -0.999202, -0.020690,
		0.997103, 0.032672, 0.068697,
		34.669342, 42.121681, 42.511734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112617, 41.580746, 42.920063>,  <33.971371, 42.098812, 42.463646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112617, 41.580746, 42.920063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424721, 41.830929, 42.920486>,  <34.611984, 41.981037, 42.920742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424721, 41.830929, 42.920486>,  <34.112617, 41.580746, 42.920063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424721, 41.830929, 42.920486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110149, 0.135748, 0.984601,
		0.615680, -0.768361, 0.174812,
		0.780260, 0.625454, 0.001057,
		34.658798, 42.018566, 42.920803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581707, 41.327480, 43.392643>,  <34.112617, 41.580746, 42.920063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581707, 41.327480, 43.392643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722359, 41.699825, 43.352947>,  <34.806751, 41.923233, 43.329132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722359, 41.699825, 43.352947>,  <34.581707, 41.327480, 43.392643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722359, 41.699825, 43.352947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153032, 0.047423, 0.987083,
		0.923546, -0.362276, -0.125777,
		0.351632, 0.930864, -0.099237,
		34.827847, 41.979084, 43.323177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261745, 41.300888, 43.728817>,  <34.581707, 41.327480, 43.392643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261745, 41.300888, 43.728817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103512, 41.668259, 43.727741>,  <35.008572, 41.888680, 43.727097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.103512, 41.668259, 43.727741>,  <35.261745, 41.300888, 43.728817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103512, 41.668259, 43.727741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060744, 0.029089, 0.997729,
		0.916420, 0.394519, -0.067296,
		-0.395581, 0.918427, -0.002693,
		34.984837, 41.943787, 43.726933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088615, 41.540607, 43.806217>,  <35.261745, 41.300888, 43.728817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088615, 41.540607, 43.806217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452866, 41.393005, 43.880623>,  <36.671413, 41.304443, 43.925266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452866, 41.393005, 43.880623>,  <36.088615, 41.540607, 43.806217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452866, 41.393005, 43.880623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234472, 0.090729, -0.967880,
		0.340275, 0.924989, 0.169141,
		0.910624, -0.369004, 0.186012,
		36.726051, 41.282303, 43.936428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442287, 41.879169, 43.390495>,  <36.088615, 41.540607, 43.806217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442287, 41.879169, 43.390495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697258, 41.579121, 43.460938>,  <36.850239, 41.399094, 43.503201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.697258, 41.579121, 43.460938>,  <36.442287, 41.879169, 43.390495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697258, 41.579121, 43.460938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177845, -0.079147, -0.980870,
		0.749707, 0.656551, 0.082955,
		0.637425, -0.750118, 0.176102,
		36.888485, 41.354084, 43.513767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082275, 41.931877, 42.909355>,  <36.442287, 41.879169, 43.390495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082275, 41.931877, 42.909355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125828, 41.552391, 43.028069>,  <37.151958, 41.324699, 43.099297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.125828, 41.552391, 43.028069>,  <37.082275, 41.931877, 42.909355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125828, 41.552391, 43.028069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359630, -0.240744, -0.901504,
		0.926721, 0.204888, 0.314975,
		0.108879, -0.948717, 0.296786,
		37.158493, 41.267776, 43.117104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788059, 41.768307, 42.764938>,  <37.082275, 41.931877, 42.909355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788059, 41.768307, 42.764938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.552746, 41.444931, 42.772320>,  <37.411556, 41.250904, 42.776749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.552746, 41.444931, 42.772320>,  <37.788059, 41.768307, 42.764938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552746, 41.444931, 42.772320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377372, -0.294647, -0.877937,
		0.715199, -0.509515, 0.478420,
		-0.588287, -0.808442, 0.018455,
		37.376259, 41.202400, 42.777855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123768, 41.349434, 42.373264>,  <37.788059, 41.768307, 42.764938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123768, 41.349434, 42.373264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785110, 41.137363, 42.391636>,  <37.581917, 41.010120, 42.402660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.785110, 41.137363, 42.391636>,  <38.123768, 41.349434, 42.373264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785110, 41.137363, 42.391636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193740, -0.387460, -0.901299,
		0.495646, -0.754177, 0.430756,
		-0.846640, -0.530180, 0.045928,
		37.531120, 40.978310, 42.405415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351727, 40.598854, 42.172825>,  <38.123768, 41.349434, 42.373264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351727, 40.598854, 42.172825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969776, 40.701954, 42.113796>,  <37.740604, 40.763813, 42.078377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.969776, 40.701954, 42.113796>,  <38.351727, 40.598854, 42.172825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969776, 40.701954, 42.113796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083593, -0.243555, -0.966278,
		-0.285000, -0.935011, 0.211019,
		-0.954875, 0.257750, -0.147574,
		37.683311, 40.779278, 42.069523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009125, 39.928398, 41.968060>,  <38.351727, 40.598854, 42.172825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009125, 39.928398, 41.968060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770065, 40.223190, 41.841774>,  <37.626629, 40.400066, 41.766003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770065, 40.223190, 41.841774>,  <38.009125, 39.928398, 41.968060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770065, 40.223190, 41.841774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052495, -0.428900, -0.901826,
		-0.800036, -0.522405, 0.295020,
		-0.597652, 0.736980, -0.315712,
		37.590771, 40.444283, 41.747059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466610, 39.581490, 41.495663>,  <38.009125, 39.928398, 41.968060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466610, 39.581490, 41.495663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461548, 39.970066, 41.400883>,  <37.458511, 40.203213, 41.344013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461548, 39.970066, 41.400883>,  <37.466610, 39.581490, 41.495663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461548, 39.970066, 41.400883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069811, -0.237252, -0.968937,
		-0.997480, 0.004277, 0.070820,
		-0.012658, 0.971439, -0.236953,
		37.457752, 40.261497, 41.329796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087383, 39.596542, 40.904919>,  <37.466610, 39.581490, 41.495663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087383, 39.596542, 40.904919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.300880, 39.934799, 40.903816>,  <37.428978, 40.137753, 40.903156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.300880, 39.934799, 40.903816>,  <37.087383, 39.596542, 40.904919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300880, 39.934799, 40.903816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155680, -0.101459, -0.982583,
		-0.831194, 0.524017, -0.185803,
		0.533742, 0.845643, -0.002753,
		37.461002, 40.188492, 40.902988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721165, 40.089737, 40.531002>,  <37.087383, 39.596542, 40.904919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721165, 40.089737, 40.531002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107578, 40.191513, 40.512928>,  <37.339428, 40.252579, 40.502083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.107578, 40.191513, 40.512928>,  <36.721165, 40.089737, 40.531002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107578, 40.191513, 40.512928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003452, -0.162143, -0.986761,
		-0.258396, 0.953400, -0.155757,
		0.966033, 0.254438, -0.045188,
		37.397388, 40.267845, 40.499371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741528, 40.506462, 39.944374>,  <36.721165, 40.089737, 40.531002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741528, 40.506462, 39.944374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134991, 40.449108, 39.987938>,  <37.371067, 40.414696, 40.014076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134991, 40.449108, 39.987938>,  <36.741528, 40.506462, 39.944374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134991, 40.449108, 39.987938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100493, -0.064687, -0.992833,
		0.149398, 0.987551, -0.049221,
		0.983657, -0.143381, 0.108906,
		37.430088, 40.406094, 40.020611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036564, 40.964500, 39.389851>,  <36.741528, 40.506462, 39.944374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036564, 40.964500, 39.389851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334000, 40.732483, 39.522892>,  <37.512463, 40.593273, 39.602718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.334000, 40.732483, 39.522892>,  <37.036564, 40.964500, 39.389851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334000, 40.732483, 39.522892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253464, -0.215780, -0.942971,
		0.618733, 0.785487, -0.013431,
		0.743590, -0.580043, 0.332603,
		37.557076, 40.558472, 39.622673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621326, 41.061638, 39.035141>,  <37.036564, 40.964500, 39.389851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621326, 41.061638, 39.035141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 40.688663, 39.157658>,  <37.744007, 40.464878, 39.231167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698002, 40.688663, 39.157658>,  <37.621326, 41.061638, 39.035141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698002, 40.688663, 39.157658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339932, -0.229687, -0.911971,
		0.920706, 0.278937, 0.272935,
		0.191693, -0.932437, 0.306294,
		37.755508, 40.408932, 39.249546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147209, 40.869869, 38.641552>,  <37.621326, 41.061638, 39.035141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147209, 40.869869, 38.641552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039307, 40.512886, 38.786190>,  <37.974567, 40.298695, 38.872974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039307, 40.512886, 38.786190>,  <38.147209, 40.869869, 38.641552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039307, 40.512886, 38.786190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144056, -0.408691, -0.901232,
		0.952093, -0.191021, 0.238810,
		-0.269754, -0.892459, 0.361594,
		37.958382, 40.245148, 38.894669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.898085, 29.037931, 31.280840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606041, 28.777182, 31.198862>,  <29.430815, 28.620731, 31.149675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.606041, 28.777182, 31.198862>,  <29.898085, 29.037931, 31.280840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606041, 28.777182, 31.198862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533899, 0.356992, 0.766491,
		-0.426492, 0.669041, -0.608678,
		-0.730107, -0.651875, -0.204946,
		29.387009, 28.581619, 31.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288931, 29.380941, 31.155205>,  <29.898085, 29.037931, 31.280840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288931, 29.380941, 31.155205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210104, 29.020706, 31.310179>,  <29.162807, 28.804565, 31.403162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210104, 29.020706, 31.310179>,  <29.288931, 29.380941, 31.155205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210104, 29.020706, 31.310179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753045, 0.392091, 0.528381,
		-0.627764, -0.187629, -0.755452,
		-0.197066, -0.900588, 0.387434,
		29.150984, 28.750530, 31.426409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565796, 29.387094, 31.110640>,  <29.288931, 29.380941, 31.155205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565796, 29.387094, 31.110640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697458, 29.149204, 31.404022>,  <28.776457, 29.006470, 31.580051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697458, 29.149204, 31.404022>,  <28.565796, 29.387094, 31.110640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697458, 29.149204, 31.404022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668772, 0.401531, 0.625713,
		-0.666633, -0.696472, -0.265569,
		0.329158, -0.594726, 0.733455,
		28.796206, 28.970787, 31.624058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900377, 29.127552, 31.399677>,  <28.565796, 29.387094, 31.110640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900377, 29.127552, 31.399677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204966, 29.126356, 31.658955>,  <28.387718, 29.125639, 31.814522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204966, 29.126356, 31.658955>,  <27.900377, 29.127552, 31.399677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204966, 29.126356, 31.658955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613849, 0.317892, 0.722588,
		-0.208217, -0.948122, 0.240229,
		0.761469, -0.002991, 0.648195,
		28.433407, 29.125460, 31.853413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535080, 28.646372, 31.660913>,  <27.900377, 29.127552, 31.399677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535080, 28.646372, 31.660913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877775, 28.698462, 31.860531>,  <28.083393, 28.729715, 31.980301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877775, 28.698462, 31.860531>,  <27.535080, 28.646372, 31.660913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877775, 28.698462, 31.860531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509769, 0.066853, 0.857710,
		0.078316, -0.989231, 0.123650,
		0.856739, 0.130205, 0.499044,
		28.134796, 28.737530, 32.010242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423456, 28.357857, 32.235794>,  <27.535080, 28.646372, 31.660913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423456, 28.357857, 32.235794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729534, 28.600510, 32.322021>,  <27.913181, 28.746101, 32.373756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729534, 28.600510, 32.322021>,  <27.423456, 28.357857, 32.235794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729534, 28.600510, 32.322021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373879, 0.146138, 0.915892,
		0.524107, -0.781435, 0.338632,
		0.765197, 0.606633, 0.215570,
		27.959093, 28.782499, 32.386692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553057, 28.246988, 32.947571>,  <27.423456, 28.357857, 32.235794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553057, 28.246988, 32.947571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702265, 28.609207, 32.866734>,  <27.791790, 28.826538, 32.818233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702265, 28.609207, 32.866734>,  <27.553057, 28.246988, 32.947571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702265, 28.609207, 32.866734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342824, 0.336915, 0.876903,
		0.862165, -0.257820, 0.436119,
		0.373019, 0.905548, -0.202090,
		27.814171, 28.880871, 32.806107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784460, 28.518452, 33.646194>,  <27.553057, 28.246988, 32.947571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784460, 28.518452, 33.646194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747828, 28.832869, 33.401653>,  <27.725849, 29.021519, 33.254929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747828, 28.832869, 33.401653>,  <27.784460, 28.518452, 33.646194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747828, 28.832869, 33.401653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421617, 0.525583, 0.738919,
		0.902137, 0.325428, 0.283275,
		-0.091580, 0.786040, -0.611355,
		27.720354, 29.068680, 33.218246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933521, 29.017101, 34.093044>,  <27.784460, 28.518452, 33.646194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933521, 29.017101, 34.093044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712292, 29.198788, 33.813675>,  <27.579554, 29.307800, 33.646053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.712292, 29.198788, 33.813675>,  <27.933521, 29.017101, 34.093044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712292, 29.198788, 33.813675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540324, 0.442545, 0.715684,
		0.634160, 0.773201, 0.000665,
		-0.553074, 0.454218, -0.698423,
		27.546370, 29.335052, 33.604149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780613, 29.723465, 34.384045>,  <27.933521, 29.017101, 34.093044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780613, 29.723465, 34.384045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515335, 29.730869, 34.084759>,  <27.356169, 29.735312, 33.905186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515335, 29.730869, 34.084759>,  <27.780613, 29.723465, 34.384045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515335, 29.730869, 34.084759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609796, 0.566273, 0.554512,
		0.433961, 0.824010, -0.364261,
		-0.663194, 0.018512, -0.748218,
		27.316378, 29.736423, 33.860294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719362, 30.381567, 34.016796>,  <27.780613, 29.723465, 34.384045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719362, 30.381567, 34.016796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370676, 30.194889, 33.957054>,  <27.161465, 30.082882, 33.921207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370676, 30.194889, 33.957054>,  <27.719362, 30.381567, 34.016796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370676, 30.194889, 33.957054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489524, 0.843031, 0.222855,
		0.021909, 0.267381, -0.963342,
		-0.871714, -0.466696, -0.149359,
		27.109161, 30.054880, 33.912247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330263, 30.950033, 33.734257>,  <27.719362, 30.381567, 34.016796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330263, 30.950033, 33.734257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071781, 30.663290, 33.838974>,  <26.916693, 30.491245, 33.901806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071781, 30.663290, 33.838974>,  <27.330263, 30.950033, 33.734257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071781, 30.663290, 33.838974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599346, 0.689059, 0.407409,
		-0.472444, 0.106366, -0.874919,
		-0.646205, -0.716857, 0.261792,
		26.877920, 30.448233, 33.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768095, 31.226677, 33.526711>,  <27.330263, 30.950033, 33.734257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768095, 31.226677, 33.526711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676111, 30.968847, 33.818367>,  <26.620922, 30.814148, 33.993359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676111, 30.968847, 33.818367>,  <26.768095, 31.226677, 33.526711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676111, 30.968847, 33.818367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786091, 0.564718, 0.251305,
		-0.573742, -0.515378, -0.636558,
		-0.229959, -0.644576, 0.729136,
		26.607124, 30.775475, 34.037109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094126, 31.187881, 33.416553>,  <26.768095, 31.226677, 33.526711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094126, 31.187881, 33.416553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185760, 31.048773, 33.780216>,  <26.240742, 30.965307, 33.998413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.185760, 31.048773, 33.780216>,  <26.094126, 31.187881, 33.416553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185760, 31.048773, 33.780216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751833, 0.530032, 0.392191,
		-0.618278, -0.773382, -0.140044,
		0.229086, -0.347773, 0.909161,
		26.254486, 30.944441, 34.052963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412308, 31.064064, 33.774628>,  <26.094126, 31.187881, 33.416553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412308, 31.064064, 33.774628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.680807, 31.079971, 34.070694>,  <25.841908, 31.089516, 34.248333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.680807, 31.079971, 34.070694>,  <25.412308, 31.064064, 33.774628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680807, 31.079971, 34.070694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558861, 0.683125, 0.470122,
		-0.486928, -0.729218, 0.480773,
		0.671250, 0.039770, 0.740164,
		25.882181, 31.091902, 34.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099255, 31.038195, 34.392700>,  <25.412308, 31.064064, 33.774628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099255, 31.038195, 34.392700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.451797, 31.197577, 34.494244>,  <25.663322, 31.293205, 34.555172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.451797, 31.197577, 34.494244>,  <25.099255, 31.038195, 34.392700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451797, 31.197577, 34.494244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452838, 0.865675, 0.213414,
		-0.134726, -0.303051, 0.943403,
		0.881355, 0.398456, 0.253862,
		25.716204, 31.317114, 34.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883291, 31.427130, 34.933388>,  <25.099255, 31.038195, 34.392700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883291, 31.427130, 34.933388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247339, 31.578087, 34.864967>,  <25.465767, 31.668661, 34.823917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.247339, 31.578087, 34.864967>,  <24.883291, 31.427130, 34.933388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247339, 31.578087, 34.864967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326668, 0.907489, 0.264105,
		0.254896, -0.184491, 0.949206,
		0.910119, 0.377395, -0.171047,
		25.520374, 31.691305, 34.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050892, 31.808809, 35.586594>,  <24.883291, 31.427130, 34.933388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050892, 31.808809, 35.586594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.298420, 31.963446, 35.313065>,  <25.446938, 32.056229, 35.148949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.298420, 31.963446, 35.313065>,  <25.050892, 31.808809, 35.586594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298420, 31.963446, 35.313065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244093, 0.922056, 0.300384,
		0.746645, -0.018970, 0.664952,
		0.618822, 0.386590, -0.683819,
		25.484066, 32.079422, 35.107918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457104, 32.406891, 36.023003>,  <25.050892, 31.808809, 35.586594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457104, 32.406891, 36.023003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463602, 32.459721, 35.626560>,  <25.467501, 32.491417, 35.388695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.463602, 32.459721, 35.626560>,  <25.457104, 32.406891, 36.023003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463602, 32.459721, 35.626560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245653, 0.961383, 0.124085,
		0.969222, 0.241453, 0.048065,
		0.016248, 0.132073, -0.991107,
		25.468475, 32.499344, 35.329227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852674, 33.031441, 35.848259>,  <25.457104, 32.406891, 36.023003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852674, 33.031441, 35.848259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621832, 32.971756, 35.527092>,  <25.483326, 32.935944, 35.334389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621832, 32.971756, 35.527092>,  <25.852674, 33.031441, 35.848259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621832, 32.971756, 35.527092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259086, 0.965831, 0.006731,
		0.774482, 0.211911, -0.596046,
		-0.577106, -0.149214, -0.802922,
		25.448700, 32.926991, 35.286217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057953, 33.502987, 35.362976>,  <25.852674, 33.031441, 35.848259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057953, 33.502987, 35.362976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688255, 33.389572, 35.260696>,  <25.466436, 33.321526, 35.199329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688255, 33.389572, 35.260696>,  <26.057953, 33.502987, 35.362976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688255, 33.389572, 35.260696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299533, 0.953755, 0.025103,
		0.236757, 0.099792, -0.966430,
		-0.924243, -0.283535, -0.255699,
		25.410982, 33.304512, 35.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832457, 34.034103, 34.828747>,  <26.057953, 33.502987, 35.362976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832457, 34.034103, 34.828747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.503733, 33.844791, 34.955635>,  <25.306498, 33.731205, 35.031769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.503733, 33.844791, 34.955635>,  <25.832457, 34.034103, 34.828747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503733, 33.844791, 34.955635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482117, 0.874348, 0.055493,
		-0.303626, -0.107333, -0.946726,
		-0.821812, -0.473282, 0.317222,
		25.257189, 33.702808, 35.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917225, 34.748299, 34.836582>,  <25.832457, 34.034103, 34.828747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917225, 34.748299, 34.836582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202154, 34.989025, 34.692131>,  <26.373112, 35.133461, 34.605461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.202154, 34.989025, 34.692131>,  <25.917225, 34.748299, 34.836582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202154, 34.989025, 34.692131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165304, -0.643926, -0.747016,
		-0.682106, 0.472422, -0.558167,
		0.712325, 0.601812, -0.361132,
		26.415852, 35.169567, 34.583790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717798, 34.919983, 34.221470>,  <25.917225, 34.748299, 34.836582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717798, 34.919983, 34.221470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112509, 34.984688, 34.217449>,  <26.349335, 35.023510, 34.215038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.112509, 34.984688, 34.217449>,  <25.717798, 34.919983, 34.221470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112509, 34.984688, 34.217449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089643, -0.596384, -0.797678,
		-0.135029, 0.786231, -0.602999,
		0.986778, 0.161764, -0.010049,
		26.408543, 35.033218, 34.214436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869293, 35.233902, 33.527031>,  <25.717798, 34.919983, 34.221470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869293, 35.233902, 33.527031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205639, 35.082733, 33.682011>,  <26.407446, 34.992031, 33.774998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.205639, 35.082733, 33.682011>,  <25.869293, 35.233902, 33.527031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205639, 35.082733, 33.682011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094383, -0.602496, -0.792521,
		0.532952, 0.702972, -0.470948,
		0.840865, -0.377927, 0.387450,
		26.457899, 34.969357, 33.798244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269258, 34.995319, 32.923973>,  <25.869293, 35.233902, 33.527031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269258, 34.995319, 32.923973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476845, 34.805534, 33.208385>,  <26.601397, 34.691666, 33.379032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.476845, 34.805534, 33.208385>,  <26.269258, 34.995319, 32.923973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476845, 34.805534, 33.208385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057796, -0.810434, -0.582972,
		0.852839, 0.343637, -0.393165,
		0.518965, -0.474458, 0.711031,
		26.632534, 34.663197, 33.421696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956263, 34.811214, 32.701427>,  <26.269258, 34.995319, 32.923973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956263, 34.811214, 32.701427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824078, 34.559772, 32.983036>,  <26.744766, 34.408909, 33.152000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.824078, 34.559772, 32.983036>,  <26.956263, 34.811214, 32.701427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824078, 34.559772, 32.983036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030822, -0.752722, -0.657617,
		0.943316, -0.195618, 0.268121,
		-0.330462, -0.628604, 0.704025,
		26.724939, 34.371193, 33.194244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417953, 34.237949, 32.700401>,  <26.956263, 34.811214, 32.701427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417953, 34.237949, 32.700401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116634, 34.081951, 32.912231>,  <26.935843, 33.988354, 33.039330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116634, 34.081951, 32.912231>,  <27.417953, 34.237949, 32.700401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116634, 34.081951, 32.912231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116544, -0.871628, -0.476112,
		0.647271, -0.296936, 0.702047,
		-0.753298, -0.389993, 0.529573,
		26.890644, 33.964954, 33.071102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592358, 33.510201, 32.949158>,  <27.417953, 34.237949, 32.700401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592358, 33.510201, 32.949158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192959, 33.504581, 32.970348>,  <26.953320, 33.501209, 32.983063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192959, 33.504581, 32.970348>,  <27.592358, 33.510201, 32.949158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192959, 33.504581, 32.970348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007816, -0.920240, -0.391278,
		0.054244, -0.391104, 0.918747,
		-0.998497, -0.014044, 0.052975,
		26.893410, 33.500370, 32.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471664, 32.838829, 33.208752>,  <27.592358, 33.510201, 32.949158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471664, 32.838829, 33.208752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149008, 32.976299, 33.016411>,  <26.955414, 33.058781, 32.901005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.149008, 32.976299, 33.016411>,  <27.471664, 32.838829, 33.208752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.149008, 32.976299, 33.016411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092892, -0.877173, -0.471104,
		-0.583696, -0.335345, 0.739488,
		-0.806641, 0.343674, -0.480851,
		26.907015, 33.079403, 32.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109348, 32.361301, 33.223995>,  <27.471664, 32.838829, 33.208752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109348, 32.361301, 33.223995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.906162, 32.537590, 32.927959>,  <26.784250, 32.643364, 32.750340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.906162, 32.537590, 32.927959>,  <27.109348, 32.361301, 33.223995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906162, 32.537590, 32.927959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036906, -0.847268, -0.529881,
		-0.860589, -0.296473, 0.414114,
		-0.507961, 0.440727, -0.740092,
		26.753773, 32.669807, 32.705933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594629, 31.888348, 32.985355>,  <27.109348, 32.361301, 33.223995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594629, 31.888348, 32.985355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619360, 32.144806, 32.679386>,  <26.634197, 32.298679, 32.495804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619360, 32.144806, 32.679386>,  <26.594629, 31.888348, 32.985355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619360, 32.144806, 32.679386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019115, -0.767010, -0.641350,
		-0.997904, 0.025031, -0.059677,
		0.061826, 0.641146, -0.764924,
		26.637907, 32.337151, 32.449909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136595, 31.635010, 32.415146>,  <26.594629, 31.888348, 32.985355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136595, 31.635010, 32.415146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381435, 31.887056, 32.224030>,  <26.528339, 32.038284, 32.109360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381435, 31.887056, 32.224030>,  <26.136595, 31.635010, 32.415146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381435, 31.887056, 32.224030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020289, -0.591487, -0.806059,
		-0.790518, 0.503085, -0.349266,
		0.612102, 0.630119, -0.477788,
		26.565065, 32.076092, 32.080692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886837, 31.855434, 31.785286>,  <26.136595, 31.635010, 32.415146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886837, 31.855434, 31.785286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278549, 31.895918, 31.715128>,  <26.513577, 31.920208, 31.673033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278549, 31.895918, 31.715128>,  <25.886837, 31.855434, 31.785286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278549, 31.895918, 31.715128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073039, -0.631309, -0.772084,
		-0.188870, 0.768899, -0.610837,
		0.979282, 0.101209, -0.175395,
		26.572334, 31.926281, 31.662510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021202, 32.061398, 31.037317>,  <25.886837, 31.855434, 31.785286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021202, 32.061398, 31.037317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357210, 31.903786, 31.186508>,  <26.558815, 31.809219, 31.276024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357210, 31.903786, 31.186508>,  <26.021202, 32.061398, 31.037317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357210, 31.903786, 31.186508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163536, -0.471594, -0.866519,
		0.517325, 0.788887, -0.331711,
		0.840019, -0.394025, 0.372979,
		26.609215, 31.785578, 31.298401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454870, 32.134739, 30.549549>,  <26.021202, 32.061398, 31.037317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454870, 32.134739, 30.549549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.635496, 31.855860, 30.772263>,  <26.743872, 31.688532, 30.905891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.635496, 31.855860, 30.772263>,  <26.454870, 32.134739, 30.549549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635496, 31.855860, 30.772263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079226, -0.590233, -0.803335,
		0.888714, 0.406869, -0.211292,
		0.451564, -0.697196, 0.556783,
		26.770966, 31.646702, 30.939297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936035, 31.923290, 30.034143>,  <26.454870, 32.134739, 30.549549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936035, 31.923290, 30.034143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966978, 31.649189, 30.323818>,  <26.985544, 31.484728, 30.497623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.966978, 31.649189, 30.323818>,  <26.936035, 31.923290, 30.034143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966978, 31.649189, 30.323818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198293, -0.701278, -0.684755,
		0.977085, 0.196571, 0.081633,
		0.077355, -0.685252, 0.724187,
		26.990185, 31.443613, 30.541075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371405, 31.478460, 29.763994>,  <26.936035, 31.923290, 30.034143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371405, 31.478460, 29.763994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217190, 31.244389, 30.049351>,  <27.124660, 31.103945, 30.220564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217190, 31.244389, 30.049351>,  <27.371405, 31.478460, 29.763994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217190, 31.244389, 30.049351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074627, -0.790404, -0.608024,
		0.919669, -0.181178, 0.348401,
		-0.385538, -0.585181, 0.713389,
		27.101528, 31.068834, 30.263367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791584, 30.961939, 29.778021>,  <27.371405, 31.478460, 29.763994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791584, 30.961939, 29.778021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441658, 30.826204, 29.916325>,  <27.231703, 30.744762, 29.999308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441658, 30.826204, 29.916325>,  <27.791584, 30.961939, 29.778021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441658, 30.826204, 29.916325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061437, -0.785650, -0.615614,
		0.480547, -0.517305, 0.708146,
		-0.874814, -0.339338, 0.345760,
		27.179214, 30.724403, 30.020052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916399, 30.161289, 29.920992>,  <27.791584, 30.961939, 29.778021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916399, 30.161289, 29.920992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518208, 30.143475, 29.954556>,  <27.279293, 30.132786, 29.974693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.518208, 30.143475, 29.954556>,  <27.916399, 30.161289, 29.920992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518208, 30.143475, 29.954556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003981, -0.902075, -0.431561,
		0.094913, -0.429276, 0.898172,
		-0.995477, -0.044536, 0.083910,
		27.219564, 30.130114, 29.979729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704865, 29.417828, 30.011810>,  <27.916399, 30.161289, 29.920992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704865, 29.417828, 30.011810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368216, 29.594379, 29.887323>,  <27.166225, 29.700310, 29.812632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368216, 29.594379, 29.887323>,  <27.704865, 29.417828, 30.011810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368216, 29.594379, 29.887323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195634, -0.786282, -0.586079,
		-0.503388, -0.432373, 0.748101,
		-0.841622, 0.441379, -0.311218,
		27.115728, 29.726793, 29.793959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189133, 28.838192, 30.044390>,  <27.704865, 29.417828, 30.011810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189133, 28.838192, 30.044390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099575, 29.123930, 29.779186>,  <27.045839, 29.295372, 29.620064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099575, 29.123930, 29.779186>,  <27.189133, 28.838192, 30.044390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099575, 29.123930, 29.779186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144557, -0.697096, -0.702254,
		-0.963833, -0.061389, 0.259340,
		-0.223895, 0.714345, -0.663010,
		27.032406, 29.338234, 29.580284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.555767, 38.107864, 44.050056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158043, 38.086414, 44.013241>,  <37.919407, 38.073544, 43.991150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158043, 38.086414, 44.013241>,  <38.555767, 38.107864, 44.050056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158043, 38.086414, 44.013241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106287, 0.442292, 0.890551,
		-0.007044, 0.895267, -0.445475,
		-0.994311, -0.053621, -0.092040,
		37.859749, 38.070328, 43.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417625, 38.646927, 44.476871>,  <38.555767, 38.107864, 44.050056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417625, 38.646927, 44.476871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060474, 38.471489, 44.436066>,  <37.846184, 38.366226, 44.411583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.060474, 38.471489, 44.436066>,  <38.417625, 38.646927, 44.476871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060474, 38.471489, 44.436066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283409, 0.371291, 0.884208,
		-0.349930, 0.818400, -0.455818,
		-0.892877, -0.438594, -0.102016,
		37.792610, 38.339912, 44.405460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929573, 39.227886, 44.566830>,  <38.417625, 38.646927, 44.476871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929573, 39.227886, 44.566830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781452, 38.867321, 44.656578>,  <37.692581, 38.650982, 44.710426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781452, 38.867321, 44.656578>,  <37.929573, 39.227886, 44.566830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781452, 38.867321, 44.656578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287869, 0.341007, 0.894900,
		-0.883182, 0.266790, -0.385762,
		-0.370297, -0.901409, 0.224371,
		37.670364, 38.596897, 44.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183880, 39.274334, 44.887035>,  <37.929573, 39.227886, 44.566830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183880, 39.274334, 44.887035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.366764, 38.933079, 44.987522>,  <37.476494, 38.728325, 45.047813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.366764, 38.933079, 44.987522>,  <37.183880, 39.274334, 44.887035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366764, 38.933079, 44.987522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104593, 0.228931, 0.967807,
		-0.883188, -0.468764, 0.015436,
		0.457207, -0.853142, 0.251219,
		37.503925, 38.677135, 45.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977058, 39.373962, 45.564034>,  <37.183880, 39.274334, 44.887035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977058, 39.373962, 45.564034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121109, 39.000854, 45.557648>,  <37.207539, 38.776989, 45.553814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.121109, 39.000854, 45.557648>,  <36.977058, 39.373962, 45.564034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121109, 39.000854, 45.557648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308747, -0.135317, 0.941469,
		-0.880332, -0.334117, -0.336721,
		0.360125, -0.932767, -0.015967,
		37.229145, 38.721024, 45.552856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486889, 39.000015, 45.860519>,  <36.977058, 39.373962, 45.564034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486889, 39.000015, 45.860519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811882, 38.776600, 45.927326>,  <37.006878, 38.642551, 45.967411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811882, 38.776600, 45.927326>,  <36.486889, 39.000015, 45.860519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811882, 38.776600, 45.927326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369534, -0.271837, 0.888566,
		-0.450899, -0.783668, -0.427265,
		0.812487, -0.558543, 0.167021,
		37.055630, 38.609039, 45.977432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229500, 38.335960, 46.188831>,  <36.486889, 39.000015, 45.860519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229500, 38.335960, 46.188831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613712, 38.405884, 46.275379>,  <36.844242, 38.447838, 46.327309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613712, 38.405884, 46.275379>,  <36.229500, 38.335960, 46.188831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613712, 38.405884, 46.275379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154395, -0.311965, 0.937465,
		0.231376, -0.933873, -0.272664,
		0.960535, 0.174809, 0.216367,
		36.901875, 38.458324, 46.340290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287575, 37.834167, 46.589294>,  <36.229500, 38.335960, 46.188831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287575, 37.834167, 46.589294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624226, 38.038235, 46.660168>,  <36.826218, 38.160675, 46.702694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624226, 38.038235, 46.660168>,  <36.287575, 37.834167, 46.589294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624226, 38.038235, 46.660168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029143, -0.284708, 0.958171,
		0.539274, -0.811586, -0.224749,
		0.841626, 0.510167, 0.177188,
		36.876713, 38.191284, 46.713326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889511, 37.426731, 46.994106>,  <36.287575, 37.834167, 46.589294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889511, 37.426731, 46.994106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941189, 37.816483, 47.067753>,  <36.972195, 38.050331, 47.111942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941189, 37.816483, 47.067753>,  <36.889511, 37.426731, 46.994106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941189, 37.816483, 47.067753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093658, -0.172854, 0.980484,
		0.987186, -0.143920, 0.068926,
		0.129197, 0.974376, 0.184118,
		36.979950, 38.108795, 47.122990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184982, 37.441433, 47.648300>,  <36.889511, 37.426731, 46.994106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184982, 37.441433, 47.648300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066967, 37.822227, 47.615627>,  <36.996159, 38.050705, 47.596024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066967, 37.822227, 47.615627>,  <37.184982, 37.441433, 47.648300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066967, 37.822227, 47.615627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034301, 0.095981, 0.994792,
		0.954869, 0.290701, -0.060973,
		-0.295040, 0.951988, -0.081678,
		36.978455, 38.107822, 47.591125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606701, 37.850594, 47.995735>,  <37.184982, 37.441433, 47.648300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606701, 37.850594, 47.995735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255924, 38.042683, 47.988129>,  <37.045460, 38.157936, 47.983566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.255924, 38.042683, 47.988129>,  <37.606701, 37.850594, 47.995735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255924, 38.042683, 47.988129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079925, 0.184744, 0.979531,
		0.473905, 0.857471, -0.200392,
		-0.876941, 0.480221, -0.019018,
		36.992844, 38.186749, 47.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729347, 38.402267, 48.452972>,  <37.606701, 37.850594, 47.995735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729347, 38.402267, 48.452972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332138, 38.427074, 48.412838>,  <37.093815, 38.441959, 48.388756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.332138, 38.427074, 48.412838>,  <37.729347, 38.402267, 48.452972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332138, 38.427074, 48.412838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078382, 0.288772, 0.954184,
		0.088151, 0.955387, -0.281895,
		-0.993019, 0.062016, -0.100340,
		37.034233, 38.445679, 48.382736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550415, 38.787540, 48.959660>,  <37.729347, 38.402267, 48.452972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550415, 38.787540, 48.959660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198257, 38.621899, 48.867203>,  <36.986965, 38.522514, 48.811729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198257, 38.621899, 48.867203>,  <37.550415, 38.787540, 48.959660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198257, 38.621899, 48.867203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300609, 0.110316, 0.947346,
		-0.366806, 0.903518, -0.221606,
		-0.880391, -0.414109, -0.231141,
		36.934139, 38.497665, 48.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018242, 39.204456, 49.311012>,  <37.550415, 38.787540, 48.959660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018242, 39.204456, 49.311012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899773, 38.830196, 49.234241>,  <36.828690, 38.605640, 49.188179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899773, 38.830196, 49.234241>,  <37.018242, 39.204456, 49.311012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899773, 38.830196, 49.234241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324982, -0.090240, 0.941405,
		-0.898147, 0.341194, -0.277343,
		-0.296174, -0.935651, -0.191931,
		36.810921, 38.549500, 49.176662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451546, 39.815910, 49.486488>,  <37.018242, 39.204456, 49.311012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451546, 39.815910, 49.486488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264206, 40.165951, 49.535221>,  <37.151802, 40.375977, 49.564461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.264206, 40.165951, 49.535221>,  <37.451546, 39.815910, 49.486488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264206, 40.165951, 49.535221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035640, 0.156489, -0.987037,
		-0.882825, -0.457934, -0.104480,
		-0.468347, 0.875105, 0.121832,
		37.123703, 40.428482, 49.571770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903057, 39.909744, 48.922619>,  <37.451546, 39.815910, 49.486488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903057, 39.909744, 48.922619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994652, 40.274879, 49.057850>,  <37.049606, 40.493961, 49.138988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994652, 40.274879, 49.057850>,  <36.903057, 39.909744, 48.922619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994652, 40.274879, 49.057850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067870, 0.361435, -0.929924,
		-0.971061, 0.189992, 0.144717,
		0.228984, 0.912835, 0.338081,
		37.063347, 40.548729, 49.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332848, 40.477180, 48.767441>,  <36.903057, 39.909744, 48.922619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332848, 40.477180, 48.767441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703522, 40.627171, 48.777565>,  <36.925926, 40.717163, 48.783638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703522, 40.627171, 48.777565>,  <36.332848, 40.477180, 48.767441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703522, 40.627171, 48.777565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105531, 0.324249, -0.940067,
		-0.360707, 0.868479, 0.340049,
		0.926690, 0.374974, 0.025307,
		36.981529, 40.739662, 48.785156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294182, 41.069126, 48.328171>,  <36.332848, 40.477180, 48.767441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294182, 41.069126, 48.328171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692863, 41.036797, 48.331200>,  <36.932072, 41.017399, 48.333019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692863, 41.036797, 48.331200>,  <36.294182, 41.069126, 48.328171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692863, 41.036797, 48.331200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043658, 0.455032, -0.889404,
		0.068434, 0.886800, 0.457059,
		0.996700, -0.080820, 0.007577,
		36.991875, 41.012550, 48.333473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539673, 41.686348, 48.075260>,  <36.294182, 41.069126, 48.328171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539673, 41.686348, 48.075260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830418, 41.417397, 48.019299>,  <37.004864, 41.256027, 47.985722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830418, 41.417397, 48.019299>,  <36.539673, 41.686348, 48.075260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830418, 41.417397, 48.019299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033047, 0.237723, -0.970771,
		0.685984, 0.700996, 0.195012,
		0.726865, -0.672378, -0.139908,
		37.048477, 41.215683, 47.977325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016445, 41.988327, 47.589298>,  <36.539673, 41.686348, 48.075260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016445, 41.988327, 47.589298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065887, 41.591473, 47.581356>,  <37.095554, 41.353359, 47.576591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065887, 41.591473, 47.581356>,  <37.016445, 41.988327, 47.589298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065887, 41.591473, 47.581356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014330, 0.021789, -0.999660,
		0.992228, 0.123282, 0.016910,
		0.123609, -0.992132, -0.019853,
		37.102970, 41.293835, 47.575401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498051, 41.920040, 47.079781>,  <37.016445, 41.988327, 47.589298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498051, 41.920040, 47.079781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352070, 41.548141, 47.099293>,  <37.264481, 41.325001, 47.111000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352070, 41.548141, 47.099293>,  <37.498051, 41.920040, 47.079781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352070, 41.548141, 47.099293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237814, -0.143752, -0.960614,
		0.900140, -0.338981, 0.273570,
		-0.364956, -0.929746, 0.048782,
		37.242584, 41.269218, 47.113926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014587, 41.445179, 46.705238>,  <37.498051, 41.920040, 47.079781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014587, 41.445179, 46.705238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667950, 41.247349, 46.731781>,  <37.459965, 41.128651, 46.747707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667950, 41.247349, 46.731781>,  <38.014587, 41.445179, 46.705238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667950, 41.247349, 46.731781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096118, -0.295917, -0.950365,
		0.489666, -0.817205, 0.303979,
		-0.866596, -0.494579, 0.066353,
		37.407970, 41.098976, 46.751686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071842, 40.719955, 46.309586>,  <38.014587, 41.445179, 46.705238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071842, 40.719955, 46.309586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692394, 40.837326, 46.356937>,  <37.464725, 40.907749, 46.385349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692394, 40.837326, 46.356937>,  <38.071842, 40.719955, 46.309586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692394, 40.837326, 46.356937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171155, -0.161203, -0.971967,
		-0.266120, -0.942291, 0.203142,
		-0.948623, 0.293429, 0.118378,
		37.407806, 40.925354, 46.392452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834846, 40.395130, 45.770145>,  <38.071842, 40.719955, 46.309586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834846, 40.395130, 45.770145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532818, 40.635693, 45.874596>,  <37.351601, 40.780029, 45.937267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.532818, 40.635693, 45.874596>,  <37.834846, 40.395130, 45.770145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532818, 40.635693, 45.874596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267002, 0.081704, -0.960226,
		-0.598819, -0.794757, 0.098883,
		-0.755067, 0.601404, 0.261128,
		37.306297, 40.816113, 45.952934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273170, 40.130783, 45.424805>,  <37.834846, 40.395130, 45.770145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273170, 40.130783, 45.424805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139023, 40.500240, 45.499004>,  <37.058533, 40.721916, 45.543526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139023, 40.500240, 45.499004>,  <37.273170, 40.130783, 45.424805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139023, 40.500240, 45.499004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254725, 0.100668, -0.961759,
		-0.906997, -0.369796, 0.201514,
		-0.335369, 0.923643, 0.185502,
		37.038414, 40.777332, 45.554653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638805, 40.099350, 45.027161>,  <37.273170, 40.130783, 45.424805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638805, 40.099350, 45.027161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785908, 40.465027, 45.095299>,  <36.874168, 40.684433, 45.136181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785908, 40.465027, 45.095299>,  <36.638805, 40.099350, 45.027161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785908, 40.465027, 45.095299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021296, 0.191408, -0.981279,
		-0.929679, 0.357243, 0.089860,
		0.367755, 0.914188, 0.170340,
		36.896233, 40.739285, 45.146400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104641, 40.525650, 44.821636>,  <36.638805, 40.099350, 45.027161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104641, 40.525650, 44.821636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452641, 40.721943, 44.802528>,  <36.661442, 40.839718, 44.791065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452641, 40.721943, 44.802528>,  <36.104641, 40.525650, 44.821636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452641, 40.721943, 44.802528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114036, 0.106021, -0.987803,
		-0.479681, 0.864837, 0.148200,
		0.870001, 0.490731, -0.047766,
		36.713642, 40.869164, 44.788200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920933, 40.979855, 44.301533>,  <36.104641, 40.525650, 44.821636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920933, 40.979855, 44.301533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311245, 41.043339, 44.361744>,  <36.545433, 41.081429, 44.397869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311245, 41.043339, 44.361744>,  <35.920933, 40.979855, 44.301533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311245, 41.043339, 44.361744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107801, 0.249857, -0.962263,
		-0.190330, 0.955187, 0.226697,
		0.975783, 0.158710, 0.150526,
		36.603981, 41.090950, 44.406902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490089, 41.579994, 44.362980>,  <35.920933, 40.979855, 44.301533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490089, 41.579994, 44.362980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242226, 41.877987, 44.264160>,  <35.093510, 42.056782, 44.204868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242226, 41.877987, 44.264160>,  <35.490089, 41.579994, 44.362980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242226, 41.877987, 44.264160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058811, 0.269807, 0.961117,
		0.782666, 0.610092, -0.123374,
		-0.619657, 0.744978, -0.247049,
		35.056328, 42.101479, 44.190044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717854, 42.196198, 44.721527>,  <35.490089, 41.579994, 44.362980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717854, 42.196198, 44.721527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.326637, 42.217091, 44.640820>,  <35.091908, 42.229626, 44.592396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.326637, 42.217091, 44.640820>,  <35.717854, 42.196198, 44.721527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326637, 42.217091, 44.640820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184390, 0.234454, 0.954480,
		0.097158, 0.970723, -0.219674,
		-0.978039, 0.052230, -0.201771,
		35.033226, 42.232761, 44.580288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395542, 42.849361, 45.025509>,  <35.717854, 42.196198, 44.721527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395542, 42.849361, 45.025509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088573, 42.594006, 45.001766>,  <34.904392, 42.440792, 44.987522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088573, 42.594006, 45.001766>,  <35.395542, 42.849361, 45.025509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088573, 42.594006, 45.001766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258241, 0.223035, 0.939983,
		-0.586839, 0.736689, -0.336020,
		-0.767419, -0.638392, -0.059358,
		34.858349, 42.402489, 44.983959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020973, 43.291126, 45.467693>,  <35.395542, 42.849361, 45.025509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020973, 43.291126, 45.467693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828537, 42.941998, 45.434872>,  <34.713074, 42.732521, 45.415180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828537, 42.941998, 45.434872>,  <35.020973, 43.291126, 45.467693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828537, 42.941998, 45.434872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323844, 0.089960, 0.941824,
		-0.814661, 0.479679, -0.325937,
		-0.481094, -0.872820, -0.082054,
		34.684208, 42.680153, 45.410255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372791, 43.323017, 45.793877>,  <35.020973, 43.291126, 45.467693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372791, 43.323017, 45.793877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449051, 42.930874, 45.773647>,  <34.494808, 42.695587, 45.761509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449051, 42.930874, 45.773647>,  <34.372791, 43.323017, 45.793877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449051, 42.930874, 45.773647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525145, -0.145380, 0.838503,
		-0.829382, -0.133307, -0.542545,
		0.190654, -0.980354, -0.050570,
		34.506248, 42.636768, 45.758476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813602, 43.064503, 45.996132>,  <34.372791, 43.323017, 45.793877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813602, 43.064503, 45.996132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058018, 42.753719, 46.056740>,  <34.204666, 42.567249, 46.093105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058018, 42.753719, 46.056740>,  <33.813602, 43.064503, 45.996132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058018, 42.753719, 46.056740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366113, -0.107674, 0.924320,
		-0.701846, -0.620272, -0.350249,
		0.611043, -0.776961, 0.151519,
		34.241329, 42.520630, 46.102196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424423, 42.587772, 46.404697>,  <33.813602, 43.064503, 45.996132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424423, 42.587772, 46.404697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798191, 42.462517, 46.472588>,  <34.022449, 42.387363, 46.513321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798191, 42.462517, 46.472588>,  <33.424423, 42.587772, 46.404697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798191, 42.462517, 46.472588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304676, -0.455882, 0.836268,
		-0.184490, -0.833136, -0.521390,
		0.934418, -0.313138, 0.169731,
		34.078518, 42.368576, 46.523506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329643, 41.927998, 46.061119>,  <33.424423, 42.587772, 46.404697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329643, 41.927998, 46.061119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124352, 41.593929, 46.140194>,  <33.001175, 41.393490, 46.187641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124352, 41.593929, 46.140194>,  <33.329643, 41.927998, 46.061119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124352, 41.593929, 46.140194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203385, -0.342134, -0.917376,
		0.833803, -0.430619, 0.345456,
		-0.513232, -0.835171, 0.197691,
		32.970383, 41.343376, 46.199501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805527, 41.410778, 45.964367>,  <33.329643, 41.927998, 46.061119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805527, 41.410778, 45.964367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436947, 41.264423, 45.912121>,  <33.215801, 41.176609, 45.880772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436947, 41.264423, 45.912121>,  <33.805527, 41.410778, 45.964367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436947, 41.264423, 45.912121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192152, -0.137006, -0.971755,
		0.337657, -0.920519, 0.196550,
		-0.921448, -0.365887, -0.130619,
		33.160511, 41.154655, 45.872936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877602, 40.832592, 45.652454>,  <33.805527, 41.410778, 45.964367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877602, 40.832592, 45.652454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502354, 40.934093, 45.558178>,  <33.277206, 40.994995, 45.501614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502354, 40.934093, 45.558178>,  <33.877602, 40.832592, 45.652454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502354, 40.934093, 45.558178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194759, -0.176201, -0.964895,
		-0.286372, -0.951085, 0.115877,
		-0.938115, 0.253751, -0.235691,
		33.220921, 41.010220, 45.487473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583836, 40.142262, 45.436287>,  <33.877602, 40.832592, 45.652454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583836, 40.142262, 45.436287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362381, 40.437500, 45.282043>,  <33.229507, 40.614643, 45.189499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362381, 40.437500, 45.282043>,  <33.583836, 40.142262, 45.436287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362381, 40.437500, 45.282043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067278, -0.421893, -0.904146,
		-0.830037, -0.526511, 0.183917,
		-0.553636, 0.738101, -0.385610,
		33.196289, 40.658932, 45.166359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092102, 39.797089, 44.967892>,  <33.583836, 40.142262, 45.436287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092102, 39.797089, 44.967892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120747, 40.181850, 44.862354>,  <33.137932, 40.412708, 44.799030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.120747, 40.181850, 44.862354>,  <33.092102, 39.797089, 44.967892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120747, 40.181850, 44.862354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147924, -0.251360, -0.956523,
		-0.986403, 0.107525, 0.124288,
		0.071609, 0.961903, -0.263847,
		33.142231, 40.470421, 44.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484661, 40.064758, 44.780998>,  <33.092102, 39.797089, 44.967892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484661, 40.064758, 44.780998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747692, 40.300991, 44.593895>,  <32.905510, 40.442734, 44.481632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747692, 40.300991, 44.593895>,  <32.484661, 40.064758, 44.780998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747692, 40.300991, 44.593895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370336, -0.287293, -0.883354,
		-0.656081, 0.754102, 0.029797,
		0.657578, 0.590587, -0.467759,
		32.944965, 40.478168, 44.453568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106705, 40.183399, 44.279884>,  <32.484661, 40.064758, 44.780998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106705, 40.183399, 44.279884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452579, 40.333977, 44.146854>,  <32.660103, 40.424324, 44.067036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.452579, 40.333977, 44.146854>,  <32.106705, 40.183399, 44.279884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452579, 40.333977, 44.146854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270063, -0.209862, -0.939694,
		-0.423535, 0.902358, -0.079802,
		0.864687, 0.376442, -0.332577,
		32.711987, 40.446911, 44.047081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.999573, 37.624828, 48.446884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390999, 37.563244, 48.392166>,  <34.625854, 37.526291, 48.359337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390999, 37.563244, 48.392166>,  <33.999573, 37.624828, 48.446884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390999, 37.563244, 48.392166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169961, -0.228574, -0.958576,
		0.116319, 0.961275, -0.249841,
		0.978562, -0.153964, -0.136792,
		34.684566, 37.517056, 48.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019157, 37.842068, 47.829247>,  <33.999573, 37.624828, 48.446884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019157, 37.842068, 47.829247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.375015, 37.664631, 47.872616>,  <34.588531, 37.558170, 47.898640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.375015, 37.664631, 47.872616>,  <34.019157, 37.842068, 47.829247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375015, 37.664631, 47.872616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063817, -0.355881, -0.932350,
		0.452169, 0.822542, -0.344917,
		0.889646, -0.443591, 0.108426,
		34.641911, 37.531555, 47.905144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338036, 38.020153, 47.236462>,  <34.019157, 37.842068, 47.829247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338036, 38.020153, 47.236462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544384, 37.699650, 47.357693>,  <34.668194, 37.507347, 47.430431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544384, 37.699650, 47.357693>,  <34.338036, 38.020153, 47.236462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544384, 37.699650, 47.357693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048947, -0.380784, -0.923367,
		0.855265, 0.461506, -0.235656,
		0.515873, -0.801259, 0.303082,
		34.699146, 37.459270, 47.448616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805836, 37.929390, 46.786732>,  <34.338036, 38.020153, 47.236462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805836, 37.929390, 46.786732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803295, 37.569794, 46.961903>,  <34.801769, 37.354038, 47.067005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803295, 37.569794, 46.961903>,  <34.805836, 37.929390, 46.786732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803295, 37.569794, 46.961903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002269, -0.437950, -0.898997,
		0.999977, -0.004717, 0.004821,
		-0.006352, -0.898987, 0.437929,
		34.801388, 37.300098, 47.093281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251869, 37.552670, 46.378860>,  <34.805836, 37.929390, 46.786732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251869, 37.552670, 46.378860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016373, 37.284229, 46.559082>,  <34.875076, 37.123165, 46.667217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016373, 37.284229, 46.559082>,  <35.251869, 37.552670, 46.378860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016373, 37.284229, 46.559082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220026, -0.403301, -0.888221,
		0.777800, -0.622067, 0.089779,
		-0.588741, -0.671105, 0.450558,
		34.839752, 37.082897, 46.694248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026894, 37.196953, 45.825188>,  <35.251869, 37.552670, 46.378860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026894, 37.196953, 45.825188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879295, 36.942093, 46.095856>,  <34.790737, 36.789177, 46.258259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879295, 36.942093, 46.095856>,  <35.026894, 37.196953, 45.825188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879295, 36.942093, 46.095856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361101, -0.572577, -0.736044,
		0.856416, -0.515943, -0.018796,
		-0.368995, -0.637148, 0.676672,
		34.768597, 36.750950, 46.298859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267788, 36.514870, 45.680763>,  <35.026894, 37.196953, 45.825188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267788, 36.514870, 45.680763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.919701, 36.491596, 45.876450>,  <34.710850, 36.477634, 45.993862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.919701, 36.491596, 45.876450>,  <35.267788, 36.514870, 45.680763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919701, 36.491596, 45.876450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340066, -0.647563, -0.681922,
		0.356474, -0.759787, 0.543736,
		-0.870219, -0.058182, 0.489218,
		34.658634, 36.474140, 46.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121410, 35.799644, 45.900696>,  <35.267788, 36.514870, 45.680763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121410, 35.799644, 45.900696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760822, 35.970131, 45.870510>,  <34.544468, 36.072422, 45.852398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760822, 35.970131, 45.870510>,  <35.121410, 35.799644, 45.900696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760822, 35.970131, 45.870510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181836, -0.531117, -0.827557,
		-0.392794, -0.732296, 0.556287,
		-0.901470, 0.426213, -0.075461,
		34.490383, 36.097996, 45.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667107, 35.262218, 45.752884>,  <35.121410, 35.799644, 45.900696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667107, 35.262218, 45.752884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489971, 35.596996, 45.624249>,  <34.383690, 35.797863, 45.547070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.489971, 35.596996, 45.624249>,  <34.667107, 35.262218, 45.752884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489971, 35.596996, 45.624249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251045, -0.460068, -0.851654,
		-0.860739, -0.296410, 0.413846,
		-0.442836, 0.836946, -0.321586,
		34.357121, 35.848080, 45.527771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012505, 35.028214, 45.355862>,  <34.667107, 35.262218, 45.752884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012505, 35.028214, 45.355862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101158, 35.404366, 45.252659>,  <34.154350, 35.630058, 45.190739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.101158, 35.404366, 45.252659>,  <34.012505, 35.028214, 45.355862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101158, 35.404366, 45.252659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285265, -0.190483, -0.939330,
		-0.932471, 0.281787, 0.226040,
		0.221634, 0.940379, -0.258004,
		34.167648, 35.686478, 45.175259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419788, 35.259651, 45.038074>,  <34.012505, 35.028214, 45.355862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419788, 35.259651, 45.038074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709488, 35.499271, 44.901485>,  <33.883308, 35.643044, 44.819530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709488, 35.499271, 44.901485>,  <33.419788, 35.259651, 45.038074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709488, 35.499271, 44.901485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390848, -0.051333, -0.919023,
		-0.568067, 0.799066, 0.196959,
		0.724250, 0.599048, -0.341474,
		33.926762, 35.678986, 44.799042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069588, 35.704960, 44.584236>,  <33.419788, 35.259651, 45.038074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069588, 35.704960, 44.584236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457500, 35.713337, 44.487011>,  <33.690250, 35.718361, 44.428677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.457500, 35.713337, 44.487011>,  <33.069588, 35.704960, 44.584236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457500, 35.713337, 44.487011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239153, -0.115333, -0.964108,
		-0.048222, 0.993106, -0.106840,
		0.969784, 0.020941, -0.243066,
		33.748436, 35.719620, 44.414093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692253, 36.177433, 44.313736>,  <33.069588, 35.704960, 44.584236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692253, 36.177433, 44.313736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.406471, 36.396786, 44.139915>,  <32.235004, 36.528397, 44.035622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.406471, 36.396786, 44.139915>,  <32.692253, 36.177433, 44.313736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406471, 36.396786, 44.139915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079729, 0.553218, 0.829213,
		0.695127, 0.627079, -0.351525,
		-0.714452, 0.548382, -0.434553,
		32.192135, 36.561298, 44.009548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758999, 36.850021, 44.511410>,  <32.692253, 36.177433, 44.313736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758999, 36.850021, 44.511410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370869, 36.839413, 44.415276>,  <32.137989, 36.833050, 44.357594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370869, 36.839413, 44.415276>,  <32.758999, 36.850021, 44.511410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370869, 36.839413, 44.415276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206436, 0.608376, 0.766331,
		0.125894, 0.793206, -0.595798,
		-0.970327, -0.026517, -0.240337,
		32.079769, 36.831459, 44.343174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561218, 37.611423, 44.508686>,  <32.758999, 36.850021, 44.511410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561218, 37.611423, 44.508686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.241711, 37.377087, 44.563473>,  <32.050007, 37.236485, 44.596344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.241711, 37.377087, 44.563473>,  <32.561218, 37.611423, 44.508686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241711, 37.377087, 44.563473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248038, 0.528069, 0.812171,
		-0.548135, 0.614760, -0.567114,
		-0.798765, -0.585845, 0.136970,
		32.002083, 37.201332, 44.604565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090202, 38.062412, 44.656994>,  <32.561218, 37.611423, 44.508686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090202, 38.062412, 44.656994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961725, 37.704266, 44.780384>,  <31.884640, 37.489380, 44.854420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961725, 37.704266, 44.780384>,  <32.090202, 38.062412, 44.656994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961725, 37.704266, 44.780384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314113, 0.408020, 0.857236,
		-0.893403, 0.178442, -0.412299,
		-0.321193, -0.895365, 0.308475,
		31.865368, 37.435658, 44.872925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391600, 38.196159, 44.883472>,  <32.090202, 38.062412, 44.656994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391600, 38.196159, 44.883472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554482, 37.872219, 45.052387>,  <31.652210, 37.677856, 45.153736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.554482, 37.872219, 45.052387>,  <31.391600, 38.196159, 44.883472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554482, 37.872219, 45.052387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258411, 0.341304, 0.903734,
		-0.876017, -0.477129, -0.070293,
		0.407207, -0.809852, 0.422283,
		31.676643, 37.629265, 45.179073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909056, 37.989334, 45.368877>,  <31.391600, 38.196159, 44.883472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909056, 37.989334, 45.368877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242310, 37.795799, 45.476051>,  <31.442261, 37.679676, 45.540356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.242310, 37.795799, 45.476051>,  <30.909056, 37.989334, 45.368877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242310, 37.795799, 45.476051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193994, 0.198022, 0.960809,
		-0.517935, -0.852459, 0.071117,
		0.833133, -0.483840, 0.267935,
		31.492249, 37.650646, 45.556431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695478, 37.442261, 45.811924>,  <30.909056, 37.989334, 45.368877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695478, 37.442261, 45.811924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079475, 37.523361, 45.889183>,  <31.309874, 37.572021, 45.935539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.079475, 37.523361, 45.889183>,  <30.695478, 37.442261, 45.811924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079475, 37.523361, 45.889183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222507, 0.133524, 0.965744,
		0.170017, -0.970084, 0.173296,
		0.959992, 0.202753, 0.193149,
		31.367474, 37.584187, 45.947128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833529, 37.084679, 46.446789>,  <30.695478, 37.442261, 45.811924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833529, 37.084679, 46.446789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119656, 37.359882, 46.397858>,  <31.291332, 37.525005, 46.368500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.119656, 37.359882, 46.397858>,  <30.833529, 37.084679, 46.446789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119656, 37.359882, 46.397858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070436, 0.245150, 0.966923,
		0.695243, -0.683039, 0.223821,
		0.715316, 0.688011, -0.122328,
		31.334249, 37.566284, 46.361160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236923, 36.995991, 46.976048>,  <30.833529, 37.084679, 46.446789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236923, 36.995991, 46.976048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339958, 37.365677, 46.863277>,  <31.401779, 37.587486, 46.795616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339958, 37.365677, 46.863277>,  <31.236923, 36.995991, 46.976048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339958, 37.365677, 46.863277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245627, 0.219554, 0.944173,
		0.934514, -0.312455, -0.170458,
		0.257587, 0.924212, -0.281924,
		31.417234, 37.642941, 46.778702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780792, 37.143120, 47.442787>,  <31.236923, 36.995991, 46.976048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780792, 37.143120, 47.442787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.708927, 37.511715, 47.305042>,  <31.665808, 37.732872, 47.222397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.708927, 37.511715, 47.305042>,  <31.780792, 37.143120, 47.442787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708927, 37.511715, 47.305042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006920, 0.348865, 0.937147,
		0.983704, 0.170752, -0.056301,
		-0.179661, 0.921486, -0.344362,
		31.655029, 37.788162, 47.201733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249271, 37.599194, 47.783005>,  <31.780792, 37.143120, 47.442787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249271, 37.599194, 47.783005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.942541, 37.832130, 47.675037>,  <31.758503, 37.971893, 47.610256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.942541, 37.832130, 47.675037>,  <32.249271, 37.599194, 47.783005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942541, 37.832130, 47.675037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132250, 0.268161, 0.954254,
		0.628083, 0.767443, -0.128618,
		-0.766826, 0.582341, -0.269921,
		31.712494, 38.006832, 47.594063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495663, 38.151810, 48.169403>,  <32.249271, 37.599194, 47.783005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495663, 38.151810, 48.169403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113277, 38.217026, 48.071785>,  <31.883846, 38.256157, 48.013214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.113277, 38.217026, 48.071785>,  <32.495663, 38.151810, 48.169403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113277, 38.217026, 48.071785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144375, 0.462726, 0.874666,
		0.255535, 0.871379, -0.418808,
		-0.955959, 0.163042, -0.244048,
		31.826490, 38.265938, 47.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443707, 38.822010, 48.389874>,  <32.495663, 38.151810, 48.169403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443707, 38.822010, 48.389874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077824, 38.662968, 48.360977>,  <31.858294, 38.567543, 48.343639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077824, 38.662968, 48.360977>,  <32.443707, 38.822010, 48.389874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077824, 38.662968, 48.360977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213013, 0.322469, 0.922301,
		-0.343412, 0.859027, -0.379660,
		-0.914710, -0.397601, -0.072244,
		31.803411, 38.543686, 48.339302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987604, 39.327423, 48.655331>,  <32.443707, 38.822010, 48.389874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987604, 39.327423, 48.655331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799349, 38.976463, 48.692593>,  <31.686396, 38.765888, 48.714951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.799349, 38.976463, 48.692593>,  <31.987604, 39.327423, 48.655331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799349, 38.976463, 48.692593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363701, 0.289109, 0.885515,
		-0.803879, 0.382875, -0.455175,
		-0.470637, -0.877395, 0.093156,
		31.658157, 38.713245, 48.720539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232304, 40.002396, 48.863575>,  <31.987604, 39.327423, 48.655331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232304, 40.002396, 48.863575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981018, 40.306335, 48.796680>,  <31.830246, 40.488701, 48.756542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981018, 40.306335, 48.796680>,  <32.232304, 40.002396, 48.863575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981018, 40.306335, 48.796680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633106, 0.374303, -0.677550,
		-0.452238, -0.531530, -0.716210,
		-0.628218, 0.759850, -0.167241,
		31.792553, 40.534290, 48.746510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119690, 40.031090, 48.114517>,  <32.232304, 40.002396, 48.863575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119690, 40.031090, 48.114517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036201, 40.391655, 48.266243>,  <31.986107, 40.607994, 48.357281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036201, 40.391655, 48.266243>,  <32.119690, 40.031090, 48.114517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036201, 40.391655, 48.266243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432356, 0.432951, -0.790963,
		-0.877213, -0.001094, -0.480100,
		-0.208725, 0.901417, 0.379317,
		31.973583, 40.662079, 48.380039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516966, 40.307892, 47.785435>,  <32.119690, 40.031090, 48.114517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516966, 40.307892, 47.785435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.743019, 40.600471, 47.938065>,  <31.878651, 40.776020, 48.029644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.743019, 40.600471, 47.938065>,  <31.516966, 40.307892, 47.785435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743019, 40.600471, 47.938065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137921, 0.372247, -0.917829,
		-0.813389, 0.571324, 0.109486,
		0.565134, 0.731451, 0.381579,
		31.912560, 40.819908, 48.052540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233089, 41.023979, 47.611935>,  <31.516966, 40.307892, 47.785435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233089, 41.023979, 47.611935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.627384, 41.043327, 47.676407>,  <31.863962, 41.054935, 47.715092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.627384, 41.043327, 47.676407>,  <31.233089, 41.023979, 47.611935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627384, 41.043327, 47.676407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127094, 0.413806, -0.901450,
		-0.110298, 0.909079, 0.401758,
		0.985739, 0.048367, 0.161181,
		31.923105, 41.057838, 47.724762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456743, 41.588585, 47.256771>,  <31.233089, 41.023979, 47.611935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456743, 41.588585, 47.256771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819546, 41.444321, 47.343735>,  <32.037228, 41.357761, 47.395912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819546, 41.444321, 47.343735>,  <31.456743, 41.588585, 47.256771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819546, 41.444321, 47.343735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319234, 0.252156, -0.913513,
		0.274650, 0.897964, 0.343843,
		0.907004, -0.360663, 0.217406,
		32.091648, 41.336121, 47.408958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934807, 42.129147, 47.005669>,  <31.456743, 41.588585, 47.256771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934807, 42.129147, 47.005669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.172352, 41.809628, 47.044151>,  <32.314880, 41.617916, 47.067242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.172352, 41.809628, 47.044151>,  <31.934807, 42.129147, 47.005669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172352, 41.809628, 47.044151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382915, 0.175448, -0.906970,
		0.707602, 0.575454, 0.410062,
		0.593864, -0.798793, 0.096203,
		32.350510, 41.569988, 47.073013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681149, 42.364433, 46.749954>,  <31.934807, 42.129147, 47.005669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681149, 42.364433, 46.749954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.663784, 41.965603, 46.724804>,  <32.653366, 41.726303, 46.709713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.663784, 41.965603, 46.724804>,  <32.681149, 42.364433, 46.749954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663784, 41.965603, 46.724804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343663, 0.044193, -0.938053,
		0.938089, -0.062326, 0.340740,
		-0.043407, -0.997077, -0.062876,
		32.650761, 41.666481, 46.705940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409248, 41.858421, 46.777924>,  <32.681149, 42.364433, 46.749954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409248, 41.858421, 46.777924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784180, 41.984802, 46.836708>,  <34.009136, 42.060631, 46.871979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784180, 41.984802, 46.836708>,  <33.409248, 41.858421, 46.777924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784180, 41.984802, 46.836708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112637, -0.124380, 0.985821,
		0.329752, -0.940587, -0.080997,
		0.937324, 0.315953, 0.146959,
		34.065376, 42.079590, 46.880795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791534, 41.373554, 47.255474>,  <33.409248, 41.858421, 46.777924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791534, 41.373554, 47.255474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979565, 41.725731, 47.280277>,  <34.092384, 41.937038, 47.295158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.979565, 41.725731, 47.280277>,  <33.791534, 41.373554, 47.255474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979565, 41.725731, 47.280277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278402, -0.214572, 0.936190,
		0.837568, -0.422819, -0.345983,
		0.470077, 0.880445, 0.062005,
		34.120586, 41.989864, 47.298878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446041, 41.267838, 47.429855>,  <33.791534, 41.373554, 47.255474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446041, 41.267838, 47.429855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372814, 41.638252, 47.561878>,  <34.328880, 41.860500, 47.641090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372814, 41.638252, 47.561878>,  <34.446041, 41.267838, 47.429855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372814, 41.638252, 47.561878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302302, -0.266435, 0.915219,
		0.935468, 0.267320, -0.231169,
		-0.183065, 0.926041, 0.330053,
		34.317894, 41.916065, 47.660892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950748, 41.330360, 47.943192>,  <34.446041, 41.267838, 47.429855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950748, 41.330360, 47.943192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718723, 41.651077, 48.000679>,  <34.579510, 41.843510, 48.035172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.718723, 41.651077, 48.000679>,  <34.950748, 41.330360, 47.943192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718723, 41.651077, 48.000679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217394, -0.017657, 0.975924,
		0.785029, 0.597337, -0.164063,
		-0.580059, 0.801796, 0.143719,
		34.544704, 41.891617, 48.043793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338779, 41.893387, 48.251434>,  <34.950748, 41.330360, 47.943192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338779, 41.893387, 48.251434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.956066, 41.963638, 48.344151>,  <34.726440, 42.005791, 48.399780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.956066, 41.963638, 48.344151>,  <35.338779, 41.893387, 48.251434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956066, 41.963638, 48.344151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241030, 0.032967, 0.969958,
		0.162713, 0.983904, -0.073874,
		-0.956781, 0.175630, 0.231786,
		34.669033, 42.016327, 48.413685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262691, 42.536182, 48.696156>,  <35.338779, 41.893387, 48.251434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262691, 42.536182, 48.696156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917267, 42.344402, 48.758636>,  <34.710014, 42.229336, 48.796124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917267, 42.344402, 48.758636>,  <35.262691, 42.536182, 48.696156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917267, 42.344402, 48.758636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174159, 0.007115, 0.984692,
		-0.473218, 0.877542, 0.077356,
		-0.863558, -0.479446, 0.156199,
		34.658199, 42.200569, 48.805496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794392, 42.955589, 49.273136>,  <35.262691, 42.536182, 48.696156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794392, 42.955589, 49.273136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680973, 42.572079, 49.265678>,  <34.612923, 42.341972, 49.261204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680973, 42.572079, 49.265678>,  <34.794392, 42.955589, 49.273136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680973, 42.572079, 49.265678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097653, -0.048215, 0.994052,
		-0.953972, 0.280043, 0.107299,
		-0.283551, -0.958776, -0.018649,
		34.595909, 42.284447, 49.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415916, 42.856842, 49.948524>,  <34.794392, 42.955589, 49.273136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415916, 42.856842, 49.948524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.525814, 42.500084, 49.804836>,  <34.591751, 42.286030, 49.718624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.525814, 42.500084, 49.804836>,  <34.415916, 42.856842, 49.948524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525814, 42.500084, 49.804836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383632, -0.240889, 0.891515,
		-0.881671, -0.382744, 0.275978,
		0.274742, -0.891897, -0.359217,
		34.608238, 42.232513, 49.697071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168240, 42.334400, 50.421436>,  <34.415916, 42.856842, 49.948524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168240, 42.334400, 50.421436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476318, 42.199345, 50.204998>,  <34.661167, 42.118309, 50.075134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476318, 42.199345, 50.204998>,  <34.168240, 42.334400, 50.421436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476318, 42.199345, 50.204998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517735, -0.164486, 0.839580,
		-0.372482, -0.926791, 0.048123,
		0.770200, -0.337643, -0.541100,
		34.707378, 42.098053, 50.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.625935, 39.478813, 34.353237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991276, 39.315945, 34.352493>,  <35.210480, 39.218224, 34.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991276, 39.315945, 34.352493>,  <34.625935, 39.478813, 34.353237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991276, 39.315945, 34.352493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069895, 0.152287, 0.985862,
		-0.401133, -0.900566, 0.167550,
		0.913349, -0.407173, -0.001857,
		35.265282, 39.193794, 34.351936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574348, 39.152050, 34.915154>,  <34.625935, 39.478813, 34.353237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574348, 39.152050, 34.915154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966412, 39.151482, 34.835873>,  <35.201649, 39.151138, 34.788303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966412, 39.151482, 34.835873>,  <34.574348, 39.152050, 34.915154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966412, 39.151482, 34.835873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198203, -0.001740, 0.980159,
		-0.001740, -0.999998, -0.001423,
		-0.980159, 0.001423, 0.198206,
		35.260460, 39.151054, 34.776409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939953, 38.635536, 35.354401>,  <34.574348, 39.152050, 34.915154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939953, 38.635536, 35.354401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226067, 38.897331, 35.256401>,  <35.397736, 39.054409, 35.197601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226067, 38.897331, 35.256401>,  <34.939953, 38.635536, 35.354401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226067, 38.897331, 35.256401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258714, 0.077675, 0.962826,
		0.649186, -0.752074, -0.113765,
		0.715280, 0.654486, -0.244998,
		35.440651, 39.093678, 35.182903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577538, 38.485710, 35.683876>,  <34.939953, 38.635536, 35.354401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577538, 38.485710, 35.683876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606697, 38.878735, 35.615452>,  <35.624191, 39.114548, 35.574398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606697, 38.878735, 35.615452>,  <35.577538, 38.485710, 35.683876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606697, 38.878735, 35.615452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155752, 0.158195, 0.975047,
		0.985103, -0.097719, -0.141504,
		0.072895, 0.982561, -0.171058,
		35.628567, 39.173504, 35.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998833, 38.773190, 36.267696>,  <35.577538, 38.485710, 35.683876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998833, 38.773190, 36.267696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839550, 39.104370, 36.109745>,  <35.743980, 39.303078, 36.014973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839550, 39.104370, 36.109745>,  <35.998833, 38.773190, 36.267696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839550, 39.104370, 36.109745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024192, 0.439810, 0.897765,
		0.916975, 0.347945, -0.195166,
		-0.398209, 0.827950, -0.394878,
		35.720089, 39.352757, 35.991283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360126, 39.252880, 36.583633>,  <35.998833, 38.773190, 36.267696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360126, 39.252880, 36.583633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037750, 39.461201, 36.471050>,  <35.844326, 39.586193, 36.403500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037750, 39.461201, 36.471050>,  <36.360126, 39.252880, 36.583633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037750, 39.461201, 36.471050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029123, 0.509747, 0.859831,
		0.591279, 0.684776, -0.425994,
		-0.805941, 0.520806, -0.281460,
		35.795967, 39.617443, 36.386612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503025, 39.960365, 36.749889>,  <36.360126, 39.252880, 36.583633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503025, 39.960365, 36.749889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105877, 39.923069, 36.720196>,  <35.867588, 39.900692, 36.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105877, 39.923069, 36.720196>,  <36.503025, 39.960365, 36.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105877, 39.923069, 36.720196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097124, 0.272021, 0.957377,
		-0.069073, 0.957764, -0.279138,
		-0.992873, -0.093240, -0.074232,
		35.808014, 39.895096, 36.697926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221016, 40.567257, 37.071045>,  <36.503025, 39.960365, 36.749889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221016, 40.567257, 37.071045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893929, 40.337368, 37.058155>,  <35.697678, 40.199436, 37.050423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893929, 40.337368, 37.058155>,  <36.221016, 40.567257, 37.071045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893929, 40.337368, 37.058155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261676, 0.321288, 0.910110,
		-0.512704, 0.752644, -0.413113,
		-0.817717, -0.574718, -0.032223,
		35.648613, 40.164951, 37.048489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685234, 40.989864, 37.243473>,  <36.221016, 40.567257, 37.071045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685234, 40.989864, 37.243473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565636, 40.616043, 37.320641>,  <35.493877, 40.391750, 37.366943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565636, 40.616043, 37.320641>,  <35.685234, 40.989864, 37.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565636, 40.616043, 37.320641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418302, 0.310072, 0.853744,
		-0.857685, 0.174568, -0.483634,
		-0.298998, -0.934549, 0.192921,
		35.475937, 40.335678, 37.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918182, 41.052147, 37.344532>,  <35.685234, 40.989864, 37.243473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918182, 41.052147, 37.344532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045609, 40.715458, 37.518898>,  <35.122063, 40.513443, 37.623516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045609, 40.715458, 37.518898>,  <34.918182, 41.052147, 37.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045609, 40.715458, 37.518898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461917, 0.263730, 0.846806,
		-0.827739, -0.471115, -0.304792,
		0.318561, -0.841722, 0.435916,
		35.141178, 40.462940, 37.649673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273018, 40.661827, 37.585716>,  <34.918182, 41.052147, 37.344532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273018, 40.661827, 37.585716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614414, 40.583305, 37.778801>,  <34.819252, 40.536194, 37.894653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614414, 40.583305, 37.778801>,  <34.273018, 40.661827, 37.585716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614414, 40.583305, 37.778801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292621, 0.585947, 0.755672,
		-0.431186, -0.786213, 0.442659,
		0.853494, -0.196304, 0.482714,
		34.870461, 40.524414, 37.923615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004551, 40.616840, 38.219875>,  <34.273018, 40.661827, 37.585716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004551, 40.616840, 38.219875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392605, 40.605778, 38.316269>,  <34.625439, 40.599140, 38.374104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392605, 40.605778, 38.316269>,  <34.004551, 40.616840, 38.219875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392605, 40.605778, 38.316269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212107, 0.385271, 0.898096,
		-0.117684, -0.922389, 0.367898,
		0.970134, -0.027657, 0.240985,
		34.683643, 40.597481, 38.388565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645073, 40.042847, 37.921436>,  <34.004551, 40.616840, 38.219875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645073, 40.042847, 37.921436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332050, 39.826408, 38.044605>,  <33.144238, 39.696545, 38.118507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332050, 39.826408, 38.044605>,  <33.645073, 40.042847, 37.921436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332050, 39.826408, 38.044605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286617, -0.125941, -0.949731,
		0.552677, -0.831476, -0.056532,
		-0.782559, -0.541098, 0.307919,
		33.097282, 39.664078, 38.136982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596348, 39.427452, 37.571697>,  <33.645073, 40.042847, 37.921436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596348, 39.427452, 37.571697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217087, 39.477036, 37.688759>,  <32.989532, 39.506786, 37.758995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217087, 39.477036, 37.688759>,  <33.596348, 39.427452, 37.571697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217087, 39.477036, 37.688759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316210, -0.275129, -0.907918,
		-0.032028, -0.953382, 0.300061,
		-0.948149, 0.123961, 0.292657,
		32.932644, 39.514225, 37.776554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232822, 38.872078, 37.382603>,  <33.596348, 39.427452, 37.571697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232822, 38.872078, 37.382603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946774, 39.145397, 37.441536>,  <32.775146, 39.309387, 37.476894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946774, 39.145397, 37.441536>,  <33.232822, 38.872078, 37.382603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946774, 39.145397, 37.441536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385439, -0.209628, -0.898606,
		-0.583132, -0.699398, 0.413279,
		-0.715118, 0.683299, 0.147335,
		32.732239, 39.350388, 37.485737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541004, 38.545078, 37.111092>,  <33.232822, 38.872078, 37.382603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541004, 38.545078, 37.111092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445530, 38.933510, 37.113308>,  <32.388245, 39.166569, 37.114639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445530, 38.933510, 37.113308>,  <32.541004, 38.545078, 37.111092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445530, 38.933510, 37.113308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535518, -0.126862, -0.834941,
		-0.810093, -0.202252, 0.550311,
		-0.238683, 0.971082, 0.005540,
		32.373924, 39.224834, 37.114971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876169, 38.521675, 37.118629>,  <32.541004, 38.545078, 37.111092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876169, 38.521675, 37.118629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959505, 38.895962, 37.004768>,  <32.009506, 39.120533, 36.936451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959505, 38.895962, 37.004768>,  <31.876169, 38.521675, 37.118629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959505, 38.895962, 37.004768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601822, -0.106774, -0.791461,
		-0.770977, 0.336203, 0.540890,
		0.208339, 0.935717, -0.284655,
		32.022007, 39.176678, 36.919373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177788, 38.904064, 37.108189>,  <31.876169, 38.521675, 37.118629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177788, 38.904064, 37.108189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440149, 39.054222, 36.846237>,  <31.597567, 39.144318, 36.689068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440149, 39.054222, 36.846237>,  <31.177788, 38.904064, 37.108189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440149, 39.054222, 36.846237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699504, -0.023783, -0.714233,
		-0.283697, 0.926558, 0.246993,
		0.655904, 0.375398, -0.654879,
		31.636921, 39.166843, 36.649773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867313, 39.452927, 36.803730>,  <31.177788, 38.904064, 37.108189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867313, 39.452927, 36.803730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164373, 39.393860, 36.542450>,  <31.342609, 39.358421, 36.385681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164373, 39.393860, 36.542450>,  <30.867313, 39.452927, 36.803730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164373, 39.393860, 36.542450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661472, -0.009487, -0.749910,
		0.104537, 0.988992, -0.104720,
		0.742649, -0.147663, -0.653199,
		31.387169, 39.349560, 36.346489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694174, 39.965645, 36.357098>,  <30.867313, 39.452927, 36.803730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694174, 39.965645, 36.357098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903778, 39.690559, 36.156116>,  <31.029541, 39.525509, 36.035526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903778, 39.690559, 36.156116>,  <30.694174, 39.965645, 36.357098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903778, 39.690559, 36.156116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749663, -0.092416, -0.655336,
		0.404251, 0.720073, -0.563982,
		0.524011, -0.687716, -0.502453,
		31.060982, 39.484245, 36.005383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689877, 40.183716, 35.662037>,  <30.694174, 39.965645, 36.357098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689877, 40.183716, 35.662037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777769, 39.794182, 35.638847>,  <30.830503, 39.560463, 35.624931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777769, 39.794182, 35.638847>,  <30.689877, 40.183716, 35.662037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777769, 39.794182, 35.638847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594003, -0.086410, -0.799808,
		0.773873, 0.210180, -0.597449,
		0.219730, -0.973836, -0.057977,
		30.843689, 39.502029, 35.621452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356033, 39.985931, 35.004547>,  <30.689877, 40.183716, 35.662037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356033, 39.985931, 35.004547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436470, 39.617470, 35.137836>,  <30.484732, 39.396393, 35.217808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436470, 39.617470, 35.137836>,  <30.356033, 39.985931, 35.004547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436470, 39.617470, 35.137836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453313, -0.389063, -0.801959,
		0.868372, 0.010213, -0.495808,
		0.201091, -0.921154, 0.333221,
		30.496798, 39.341122, 35.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544195, 39.504013, 34.455906>,  <30.356033, 39.985931, 35.004547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544195, 39.504013, 34.455906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391521, 39.270916, 34.742886>,  <30.299917, 39.131058, 34.915073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391521, 39.270916, 34.742886>,  <30.544195, 39.504013, 34.455906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391521, 39.270916, 34.742886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631163, -0.402734, -0.662902,
		0.675241, -0.705844, -0.214088,
		-0.381685, -0.582743, 0.717445,
		30.277016, 39.096092, 34.958118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465929, 38.959644, 34.129955>,  <30.544195, 39.504013, 34.455906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465929, 38.959644, 34.129955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236744, 38.889137, 34.450115>,  <30.099234, 38.846832, 34.642212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236744, 38.889137, 34.450115>,  <30.465929, 38.959644, 34.129955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236744, 38.889137, 34.450115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632100, -0.526600, -0.568456,
		0.521692, -0.831638, 0.190303,
		-0.572963, -0.176268, 0.800402,
		30.064856, 38.836258, 34.690235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345972, 38.209442, 34.247044>,  <30.465929, 38.959644, 34.129955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345972, 38.209442, 34.247044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038977, 38.381786, 34.436916>,  <29.854780, 38.485191, 34.550842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038977, 38.381786, 34.436916>,  <30.345972, 38.209442, 34.247044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038977, 38.381786, 34.436916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639753, -0.562099, -0.524176,
		0.040975, -0.705979, 0.707046,
		-0.767487, 0.430857, 0.474685,
		29.808731, 38.511044, 34.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483574, 37.462486, 34.524097>,  <30.345972, 38.209442, 34.247044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483574, 37.462486, 34.524097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224512, 37.165462, 34.455807>,  <30.069075, 36.987247, 34.414833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224512, 37.165462, 34.455807>,  <30.483574, 37.462486, 34.524097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224512, 37.165462, 34.455807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594105, -0.351863, -0.723348,
		0.477059, -0.569907, 0.669045,
		-0.647653, -0.742562, -0.170725,
		30.030216, 36.942696, 34.404591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814728, 36.782230, 34.607563>,  <30.483574, 37.462486, 34.524097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814728, 36.782230, 34.607563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497101, 36.785446, 34.364452>,  <30.306524, 36.787376, 34.218586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497101, 36.785446, 34.364452>,  <30.814728, 36.782230, 34.607563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497101, 36.785446, 34.364452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526413, -0.490824, -0.694249,
		-0.303891, -0.871222, 0.385516,
		-0.794066, 0.008035, -0.607779,
		30.258881, 36.787857, 34.182117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503674, 36.104870, 34.584782>,  <30.814728, 36.782230, 34.607563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503674, 36.104870, 34.584782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507229, 36.341709, 34.262455>,  <30.509361, 36.483814, 34.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507229, 36.341709, 34.262455>,  <30.503674, 36.104870, 34.584782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507229, 36.341709, 34.262455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524588, -0.688813, -0.500344,
		-0.851310, -0.418274, -0.316731,
		0.008887, 0.592101, -0.805815,
		30.509895, 36.519341, 34.020710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131489, 35.762615, 34.085415>,  <30.503674, 36.104870, 34.584782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131489, 35.762615, 34.085415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415178, 35.986298, 33.913704>,  <30.585392, 36.120506, 33.810677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415178, 35.986298, 33.913704>,  <30.131489, 35.762615, 34.085415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415178, 35.986298, 33.913704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312935, -0.795370, -0.519094,
		-0.631720, 0.233817, -0.739093,
		0.709226, 0.559210, -0.429281,
		30.627947, 36.154060, 33.784920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622869, 35.291752, 34.599995>,  <30.131489, 35.762615, 34.085415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622869, 35.291752, 34.599995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961737, 35.085350, 34.549332>,  <31.165058, 34.961510, 34.518932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961737, 35.085350, 34.549332>,  <30.622869, 35.291752, 34.599995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961737, 35.085350, 34.549332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346657, 0.356137, 0.867753,
		-0.402657, -0.779041, 0.480585,
		0.847170, -0.516005, -0.126659,
		31.215887, 34.930550, 34.511333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785419, 34.922829, 35.178276>,  <30.622869, 35.291752, 34.599995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785419, 34.922829, 35.178276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129925, 35.007069, 34.993290>,  <31.336628, 35.057613, 34.882298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129925, 35.007069, 34.993290>,  <30.785419, 34.922829, 35.178276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129925, 35.007069, 34.993290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363359, 0.380991, 0.850186,
		0.355234, -0.900277, 0.251616,
		0.861266, 0.210588, -0.462465,
		31.388304, 35.070248, 34.854549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338137, 34.695160, 35.623173>,  <30.785419, 34.922829, 35.178276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338137, 34.695160, 35.623173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462461, 34.984798, 35.376896>,  <31.537056, 35.158581, 35.229130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462461, 34.984798, 35.376896>,  <31.338137, 34.695160, 35.623173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462461, 34.984798, 35.376896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536313, 0.401192, 0.742572,
		0.784707, -0.561002, -0.263650,
		0.310811, 0.724100, -0.615691,
		31.555704, 35.202030, 35.192188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011421, 34.784508, 35.866123>,  <31.338137, 34.695160, 35.623173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011421, 34.784508, 35.866123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914415, 35.104450, 35.646519>,  <31.856211, 35.296417, 35.514755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914415, 35.104450, 35.646519>,  <32.011421, 34.784508, 35.866123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914415, 35.104450, 35.646519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357291, 0.599768, 0.715976,
		0.901959, -0.022522, -0.431235,
		-0.242516, 0.799857, -0.549013,
		31.841661, 35.344406, 35.481815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551708, 35.110680, 35.803326>,  <32.011421, 34.784508, 35.866123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551708, 35.110680, 35.803326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251209, 35.371651, 35.763412>,  <32.070908, 35.528233, 35.739464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251209, 35.371651, 35.763412>,  <32.551708, 35.110680, 35.803326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251209, 35.371651, 35.763412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333511, 0.505708, 0.795631,
		0.569556, 0.564440, -0.597507,
		-0.751250, 0.652432, -0.099782,
		32.025833, 35.567379, 35.733479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815872, 35.737759, 36.026020>,  <32.551708, 35.110680, 35.803326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815872, 35.737759, 36.026020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425465, 35.823421, 36.041653>,  <32.191219, 35.874821, 36.051033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425465, 35.823421, 36.041653>,  <32.815872, 35.737759, 36.026020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425465, 35.823421, 36.041653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155659, 0.561065, 0.813004,
		0.152185, 0.799589, -0.580945,
		-0.976017, 0.214156, 0.039077,
		32.132660, 35.887669, 36.053375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899319, 36.320129, 36.346397>,  <32.815872, 35.737759, 36.026020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899319, 36.320129, 36.346397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519398, 36.206749, 36.399342>,  <32.291443, 36.138721, 36.431110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519398, 36.206749, 36.399342>,  <32.899319, 36.320129, 36.346397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519398, 36.206749, 36.399342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050876, 0.557431, 0.828663,
		-0.308672, 0.780336, -0.543873,
		-0.949807, -0.283455, 0.132363,
		32.234455, 36.121712, 36.439049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518810, 36.910004, 36.372253>,  <32.899319, 36.320129, 36.346397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518810, 36.910004, 36.372253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325481, 36.613117, 36.557945>,  <32.209484, 36.434986, 36.669361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325481, 36.613117, 36.557945>,  <32.518810, 36.910004, 36.372253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325481, 36.613117, 36.557945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123018, 0.582600, 0.803395,
		-0.866755, 0.331192, -0.372891,
		-0.483325, -0.742219, 0.464228,
		32.180485, 36.390453, 36.697212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145721, 37.223484, 36.784382>,  <32.518810, 36.910004, 36.372253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145721, 37.223484, 36.784382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115967, 36.875435, 36.979259>,  <32.098114, 36.666607, 37.096188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115967, 36.875435, 36.979259>,  <32.145721, 37.223484, 36.784382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115967, 36.875435, 36.979259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123124, 0.476797, 0.870347,
		-0.989599, 0.124731, 0.071664,
		-0.074390, -0.870119, 0.487196,
		32.093651, 36.614399, 37.125420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554546, 37.146961, 37.342999>,  <32.145721, 37.223484, 36.784382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554546, 37.146961, 37.342999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755728, 36.827087, 37.474171>,  <31.876436, 36.635162, 37.552876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755728, 36.827087, 37.474171>,  <31.554546, 37.146961, 37.342999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755728, 36.827087, 37.474171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106330, 0.319285, 0.941675,
		-0.857748, -0.508488, 0.075555,
		0.502954, -0.799686, 0.327933,
		31.906614, 36.587181, 37.572552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241060, 36.923687, 37.946747>,  <31.554546, 37.146961, 37.342999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241060, 36.923687, 37.946747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611784, 36.773846, 37.957348>,  <31.834217, 36.683941, 37.963707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611784, 36.773846, 37.957348>,  <31.241060, 36.923687, 37.946747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611784, 36.773846, 37.957348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043376, 0.176876, 0.983277,
		-0.373023, -0.910159, 0.180179,
		0.926808, -0.374600, 0.026499,
		31.889826, 36.661465, 37.965298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239727, 36.418633, 38.453167>,  <31.241060, 36.923687, 37.946747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239727, 36.418633, 38.453167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625389, 36.522903, 38.433353>,  <31.856787, 36.585468, 38.421467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625389, 36.522903, 38.433353>,  <31.239727, 36.418633, 38.453167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625389, 36.522903, 38.433353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067266, -0.059546, 0.995957,
		0.256679, -0.963586, -0.074947,
		0.964153, 0.260683, -0.049532,
		31.914635, 36.601109, 38.418495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619230, 35.965069, 38.817673>,  <31.239727, 36.418633, 38.453167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619230, 35.965069, 38.817673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876587, 36.271194, 38.810238>,  <32.031002, 36.454868, 38.805775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876587, 36.271194, 38.810238>,  <31.619230, 35.965069, 38.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876587, 36.271194, 38.810238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274178, -0.207690, 0.938984,
		0.714754, -0.609232, -0.343457,
		0.643392, 0.765311, -0.018591,
		32.069603, 36.500790, 38.804661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224102, 35.834187, 39.222847>,  <31.619230, 35.965069, 38.817673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224102, 35.834187, 39.222847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275570, 36.230568, 39.207638>,  <32.306450, 36.468399, 39.198513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275570, 36.230568, 39.207638>,  <32.224102, 35.834187, 39.222847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275570, 36.230568, 39.207638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346046, -0.008932, 0.938175,
		0.929352, -0.133874, -0.344067,
		0.128670, 0.990958, -0.038026,
		32.314171, 36.527855, 39.196232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845348, 35.961094, 39.439293>,  <32.224102, 35.834187, 39.222847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845348, 35.961094, 39.439293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696136, 36.328556, 39.491322>,  <32.606609, 36.549034, 39.522541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696136, 36.328556, 39.491322>,  <32.845348, 35.961094, 39.439293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696136, 36.328556, 39.491322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403658, 0.034458, 0.914261,
		0.835407, 0.393557, -0.383676,
		-0.373034, 0.918654, 0.130076,
		32.584225, 36.604153, 39.530346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408707, 36.439342, 39.770149>,  <32.845348, 35.961094, 39.439293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408707, 36.439342, 39.770149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060455, 36.620029, 39.848080>,  <32.851505, 36.728443, 39.894836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060455, 36.620029, 39.848080>,  <33.408707, 36.439342, 39.770149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060455, 36.620029, 39.848080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297299, 0.167605, 0.939959,
		0.391945, 0.876275, -0.280217,
		-0.870628, 0.451720, 0.194823,
		32.799267, 36.755547, 39.906528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530540, 37.036152, 40.181198>,  <33.408707, 36.439342, 39.770149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530540, 37.036152, 40.181198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138676, 36.977104, 40.235577>,  <32.903557, 36.941677, 40.268204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138676, 36.977104, 40.235577>,  <33.530540, 37.036152, 40.181198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138676, 36.977104, 40.235577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099815, 0.229251, 0.968236,
		-0.174094, 0.962109, -0.209853,
		-0.979657, -0.147617, 0.135944,
		32.844780, 36.932819, 40.276360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286095, 37.509548, 40.774860>,  <33.530540, 37.036152, 40.181198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286095, 37.509548, 40.774860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973759, 37.259724, 40.769112>,  <32.786358, 37.109829, 40.765663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973759, 37.259724, 40.769112>,  <33.286095, 37.509548, 40.774860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973759, 37.259724, 40.769112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015518, -0.003606, 0.999873,
		-0.624537, 0.780965, -0.006876,
		-0.780841, -0.624564, -0.014371,
		32.739506, 37.072353, 40.764801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751770, 37.801052, 41.204105>,  <33.286095, 37.509548, 40.774860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751770, 37.801052, 41.204105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665768, 37.410503, 41.195362>,  <32.614166, 37.176174, 41.190117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665768, 37.410503, 41.195362>,  <32.751770, 37.801052, 41.204105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665768, 37.410503, 41.195362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138644, 0.008356, 0.990307,
		-0.966721, 0.215952, -0.137165,
		-0.215005, -0.976368, -0.021862,
		32.601265, 37.117592, 41.188805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152069, 37.693573, 41.622528>,  <32.751770, 37.801052, 41.204105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152069, 37.693573, 41.622528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286503, 37.316849, 41.620052>,  <32.367165, 37.090813, 41.618568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286503, 37.316849, 41.620052>,  <32.152069, 37.693573, 41.622528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286503, 37.316849, 41.620052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286850, -0.108617, 0.951798,
		-0.897087, -0.318109, -0.306663,
		0.336085, -0.941812, -0.006189,
		32.387329, 37.034306, 41.618195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634113, 37.239086, 41.940189>,  <32.152069, 37.693573, 41.622528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634113, 37.239086, 41.940189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954844, 37.000141, 41.946327>,  <32.147282, 36.856773, 41.950008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954844, 37.000141, 41.946327>,  <31.634113, 37.239086, 41.940189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954844, 37.000141, 41.946327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135323, -0.156510, 0.978362,
		-0.582035, -0.786551, -0.206330,
		0.801825, -0.597363, 0.015344,
		32.195393, 36.820930, 41.950932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405090, 36.521267, 42.130745>,  <31.634113, 37.239086, 41.940189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405090, 36.521267, 42.130745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795496, 36.569935, 42.202957>,  <32.029739, 36.599136, 42.246284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795496, 36.569935, 42.202957>,  <31.405090, 36.521267, 42.130745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795496, 36.569935, 42.202957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147254, -0.241811, 0.959085,
		0.160347, -0.962665, -0.218095,
		0.976015, 0.121671, 0.180530,
		32.088299, 36.606438, 42.257114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632021, 35.887306, 42.557426>,  <31.405090, 36.521267, 42.130745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632021, 35.887306, 42.557426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916168, 36.156223, 42.640759>,  <32.086658, 36.317574, 42.690758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916168, 36.156223, 42.640759>,  <31.632021, 35.887306, 42.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916168, 36.156223, 42.640759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133655, -0.161764, 0.977736,
		0.691023, -0.722399, -0.025057,
		0.710369, 0.672289, 0.208335,
		32.129280, 36.357910, 42.703259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940594, 35.684902, 43.206566>,  <31.632021, 35.887306, 42.557426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940594, 35.684902, 43.206566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070637, 36.062851, 43.190922>,  <32.148663, 36.289619, 43.181538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070637, 36.062851, 43.190922>,  <31.940594, 35.684902, 43.206566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070637, 36.062851, 43.190922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120003, 0.082239, 0.989362,
		0.938033, -0.316954, 0.140123,
		0.325106, 0.944869, -0.039108,
		32.168167, 36.346310, 43.179188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320698, 35.761036, 43.812611>,  <31.940594, 35.684902, 43.206566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320698, 35.761036, 43.812611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223816, 36.130474, 43.693741>,  <32.165688, 36.352135, 43.622417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223816, 36.130474, 43.693741>,  <32.320698, 35.761036, 43.812611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223816, 36.130474, 43.693741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278998, 0.227060, 0.933061,
		0.929244, 0.308907, 0.202685,
		-0.242208, 0.923591, -0.297179,
		32.151154, 36.407551, 43.604588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091030, 35.912868, 43.784397>,  <32.320698, 35.761036, 43.812611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091030, 35.912868, 43.784397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470413, 35.802258, 43.846325>,  <33.698044, 35.735889, 43.883480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470413, 35.802258, 43.846325>,  <33.091030, 35.912868, 43.784397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470413, 35.802258, 43.846325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107391, -0.179170, -0.977939,
		0.298166, 0.944156, -0.140238,
		0.948454, -0.276528, 0.154816,
		33.754948, 35.719299, 43.892769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575176, 36.355469, 43.395775>,  <33.091030, 35.912868, 43.784397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575176, 36.355469, 43.395775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760559, 36.010208, 43.475948>,  <33.871788, 35.803051, 43.524052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760559, 36.010208, 43.475948>,  <33.575176, 36.355469, 43.395775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760559, 36.010208, 43.475948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179562, -0.130022, -0.975116,
		0.867737, 0.487913, 0.094730,
		0.463455, -0.863154, 0.200435,
		33.899597, 35.751263, 43.536079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227200, 36.451786, 43.121044>,  <33.575176, 36.355469, 43.395775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227200, 36.451786, 43.121044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217102, 36.052784, 43.147442>,  <34.211044, 35.813385, 43.163280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217102, 36.052784, 43.147442>,  <34.227200, 36.451786, 43.121044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217102, 36.052784, 43.147442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512503, -0.069588, -0.855861,
		0.858314, 0.012217, 0.512979,
		-0.025241, -0.997501, 0.065990,
		34.209530, 35.753532, 43.167240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805595, 36.166573, 42.753716>,  <34.227200, 36.451786, 43.121044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805595, 36.166573, 42.753716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599682, 35.825314, 42.787491>,  <34.476131, 35.620556, 42.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599682, 35.825314, 42.787491>,  <34.805595, 36.166573, 42.753716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599682, 35.825314, 42.787491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306156, -0.274936, -0.911416,
		0.800788, -0.443336, 0.402731,
		-0.514788, -0.853149, 0.084435,
		34.445244, 35.569370, 42.812820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183022, 35.585453, 42.622589>,  <34.805595, 36.166573, 42.753716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183022, 35.585453, 42.622589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808308, 35.473877, 42.538097>,  <34.583477, 35.406933, 42.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808308, 35.473877, 42.538097>,  <35.183022, 35.585453, 42.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808308, 35.473877, 42.538097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313669, -0.401995, -0.860239,
		0.155040, -0.872119, 0.464080,
		-0.936789, -0.278939, -0.211232,
		34.527271, 35.390194, 42.474728>
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
