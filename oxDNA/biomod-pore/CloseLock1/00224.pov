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
	<24.043482, 34.890110, 34.590321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149599, 35.070164, 34.931377>,  <24.213270, 35.178196, 35.136013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149599, 35.070164, 34.931377>,  <24.043482, 34.890110, 34.590321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149599, 35.070164, 34.931377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959409, -0.210996, -0.187122,
		0.095673, 0.867674, -0.487840,
		0.265294, 0.450135, 0.852642,
		24.229187, 35.205204, 35.187168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464594, 35.455181, 34.407303>,  <24.043482, 34.890110, 34.590321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464594, 35.455181, 34.407303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542423, 35.313328, 34.773117>,  <24.589121, 35.228214, 34.992607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542423, 35.313328, 34.773117>,  <24.464594, 35.455181, 34.407303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542423, 35.313328, 34.773117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968522, -0.078117, -0.236352,
		0.155260, 0.931735, 0.328274,
		0.194574, -0.354637, 0.914535,
		24.600796, 35.206936, 35.047478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096523, 35.752735, 34.711239>,  <24.464594, 35.455181, 34.407303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096523, 35.752735, 34.711239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050016, 35.405540, 34.904354>,  <25.022112, 35.197224, 35.020226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050016, 35.405540, 34.904354>,  <25.096523, 35.752735, 34.711239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050016, 35.405540, 34.904354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979791, -0.179892, -0.087458,
		0.162762, 0.462865, 0.871358,
		-0.116269, -0.867983, 0.482790,
		25.015135, 35.145145, 35.049191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710146, 35.618374, 35.125404>,  <25.096523, 35.752735, 34.711239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710146, 35.618374, 35.125404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547817, 35.269489, 35.016178>,  <25.450420, 35.060158, 34.950642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547817, 35.269489, 35.016178>,  <25.710146, 35.618374, 35.125404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547817, 35.269489, 35.016178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890292, -0.309717, -0.333849,
		0.206613, -0.378590, 0.902209,
		-0.405821, -0.872207, -0.273064,
		25.426071, 35.007828, 34.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216925, 35.179409, 35.031254>,  <25.710146, 35.618374, 35.125404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216925, 35.179409, 35.031254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942482, 34.955353, 34.845566>,  <25.777817, 34.820919, 34.734154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942482, 34.955353, 34.845566>,  <26.216925, 35.179409, 35.031254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942482, 34.955353, 34.845566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727464, -0.534638, -0.430067,
		-0.007289, -0.632772, 0.774304,
		-0.686107, -0.560144, -0.464216,
		25.736650, 34.787312, 34.706303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178789, 34.396248, 35.231743>,  <26.216925, 35.179409, 35.031254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178789, 34.396248, 35.231743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066141, 34.477962, 34.856731>,  <25.998552, 34.526993, 34.631725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066141, 34.477962, 34.856731>,  <26.178789, 34.396248, 35.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066141, 34.477962, 34.856731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625799, -0.701567, -0.340852,
		-0.727369, -0.682694, 0.069733,
		-0.281620, 0.204286, -0.937527,
		25.981655, 34.539249, 34.575474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753860, 33.935993, 34.894810>,  <26.178789, 34.396248, 35.231743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753860, 33.935993, 34.894810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999285, 34.131763, 34.646935>,  <26.146540, 34.249226, 34.498211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999285, 34.131763, 34.646935>,  <25.753860, 33.935993, 34.894810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999285, 34.131763, 34.646935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461009, -0.859153, -0.222098,
		-0.641103, -0.149410, -0.752770,
		0.613561, 0.489422, -0.619685,
		26.183353, 34.278591, 34.461029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680712, 33.729721, 34.184376>,  <25.753860, 33.935993, 34.894810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680712, 33.729721, 34.184376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060492, 33.854042, 34.166721>,  <26.288359, 33.928635, 34.156128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060492, 33.854042, 34.166721>,  <25.680712, 33.729721, 34.184376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060492, 33.854042, 34.166721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207375, -0.726527, -0.655098,
		-0.235676, 0.612829, -0.754253,
		0.949448, 0.310805, -0.044140,
		26.345325, 33.947285, 34.153481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753849, 34.038570, 33.480824>,  <25.680712, 33.729721, 34.184376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753849, 34.038570, 33.480824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012522, 33.839268, 33.711838>,  <26.167725, 33.719685, 33.850445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012522, 33.839268, 33.711838>,  <25.753849, 34.038570, 33.480824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012522, 33.839268, 33.711838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037236, -0.735638, -0.676350,
		0.761852, 0.458887, -0.457169,
		0.646680, -0.498256, 0.577535,
		26.206526, 33.689793, 33.885098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439617, 33.841122, 33.008621>,  <25.753849, 34.038570, 33.480824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439617, 33.841122, 33.008621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380289, 33.605740, 33.326546>,  <26.344692, 33.464512, 33.517300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380289, 33.605740, 33.326546>,  <26.439617, 33.841122, 33.008621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380289, 33.605740, 33.326546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047021, -0.798594, -0.600030,
		0.987821, -0.126369, 0.090777,
		-0.148319, -0.588454, 0.794810,
		26.335793, 33.429203, 33.564987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001312, 33.318104, 32.984356>,  <26.439617, 33.841122, 33.008621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001312, 33.318104, 32.984356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729025, 33.165722, 33.234634>,  <26.565653, 33.074291, 33.384800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729025, 33.165722, 33.234634>,  <27.001312, 33.318104, 32.984356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729025, 33.165722, 33.234634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171389, -0.747608, -0.641645,
		0.712215, -0.544016, 0.443618,
		-0.680718, -0.380958, 0.625695,
		26.524809, 33.051434, 33.422344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231863, 32.669842, 33.131081>,  <27.001312, 33.318104, 32.984356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231863, 32.669842, 33.131081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838799, 32.652588, 33.203213>,  <26.602961, 32.642235, 33.246490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838799, 32.652588, 33.203213>,  <27.231863, 32.669842, 33.131081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838799, 32.652588, 33.203213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104107, -0.676429, -0.729113,
		0.153434, -0.735244, 0.660208,
		-0.982660, -0.043138, 0.180331,
		26.544001, 32.639645, 33.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177715, 32.010490, 33.291328>,  <27.231863, 32.669842, 33.131081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177715, 32.010490, 33.291328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813789, 32.117096, 33.164078>,  <26.595434, 32.181057, 33.087727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813789, 32.117096, 33.164078>,  <27.177715, 32.010490, 33.291328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813789, 32.117096, 33.164078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097270, -0.882141, -0.460832,
		-0.403449, -0.388329, 0.828510,
		-0.909817, 0.266511, -0.318126,
		26.540844, 32.197048, 33.068642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768620, 31.382505, 33.259079>,  <27.177715, 32.010490, 33.291328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768620, 31.382505, 33.259079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582024, 31.655724, 33.034283>,  <26.470066, 31.819654, 32.899406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582024, 31.655724, 33.034283>,  <26.768620, 31.382505, 33.259079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582024, 31.655724, 33.034283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016400, -0.641928, -0.766590,
		-0.884374, -0.348391, 0.310656,
		-0.466492, 0.683046, -0.561990,
		26.442076, 31.860638, 32.865685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353203, 30.981001, 32.835217>,  <26.768620, 31.382505, 33.259079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353203, 30.981001, 32.835217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353323, 31.344360, 32.667976>,  <26.353395, 31.562376, 32.567631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353323, 31.344360, 32.667976>,  <26.353203, 30.981001, 32.835217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353323, 31.344360, 32.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030813, -0.417914, -0.907964,
		-0.999525, -0.012608, -0.028117,
		0.000303, 0.908399, -0.418105,
		26.353415, 31.616880, 32.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038696, 30.858868, 32.225266>,  <26.353203, 30.981001, 32.835217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038696, 30.858868, 32.225266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215652, 31.217060, 32.205639>,  <26.321827, 31.431974, 32.193863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215652, 31.217060, 32.205639>,  <26.038696, 30.858868, 32.225266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215652, 31.217060, 32.205639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071508, -0.089755, -0.993394,
		-0.893967, 0.435959, -0.103741,
		0.442390, 0.895480, -0.049063,
		26.348370, 31.485704, 32.190922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620703, 31.257446, 31.681566>,  <26.038696, 30.858868, 32.225266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620703, 31.257446, 31.681566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991667, 31.403770, 31.712799>,  <26.214245, 31.491566, 31.731539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991667, 31.403770, 31.712799>,  <25.620703, 31.257446, 31.681566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991667, 31.403770, 31.712799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082123, 0.004522, -0.996612,
		-0.364925, 0.930678, -0.025847,
		0.927408, 0.365812, 0.078080,
		26.269890, 31.513514, 31.736223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696012, 31.836067, 31.237656>,  <25.620703, 31.257446, 31.681566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696012, 31.836067, 31.237656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075508, 31.719461, 31.286505>,  <26.303205, 31.649498, 31.315815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.075508, 31.719461, 31.286505>,  <25.696012, 31.836067, 31.237656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075508, 31.719461, 31.286505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183164, 0.192218, -0.964107,
		0.257575, 0.937055, 0.235760,
		0.948739, -0.291513, 0.122124,
		26.360130, 31.632008, 31.323143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026281, 32.294090, 30.791672>,  <25.696012, 31.836067, 31.237656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026281, 32.294090, 30.791672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305349, 32.019470, 30.873560>,  <26.472790, 31.854698, 30.922693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305349, 32.019470, 30.873560>,  <26.026281, 32.294090, 30.791672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305349, 32.019470, 30.873560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350706, 0.078113, -0.933222,
		0.624711, 0.722876, 0.295273,
		0.697669, -0.686548, 0.204719,
		26.514650, 31.813505, 30.934977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751036, 32.557888, 30.794849>,  <26.026281, 32.294090, 30.791672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751036, 32.557888, 30.794849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779942, 32.168995, 30.705820>,  <26.797285, 31.935659, 30.652403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779942, 32.168995, 30.705820>,  <26.751036, 32.557888, 30.794849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779942, 32.168995, 30.705820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450525, 0.230910, -0.862385,
		0.889834, -0.037954, 0.454703,
		0.072265, -0.972234, -0.222571,
		26.801620, 31.877325, 30.639050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489195, 32.461487, 30.631220>,  <26.751036, 32.557888, 30.794849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489195, 32.461487, 30.631220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295755, 32.142326, 30.487286>,  <27.179691, 31.950830, 30.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295755, 32.142326, 30.487286>,  <27.489195, 32.461487, 30.631220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295755, 32.142326, 30.487286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316495, 0.223886, -0.921795,
		0.816065, -0.559667, 0.144261,
		-0.483600, -0.797902, -0.359837,
		27.150675, 31.902956, 30.379335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899635, 32.107906, 30.133121>,  <27.489195, 32.461487, 30.631220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899635, 32.107906, 30.133121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547544, 31.947599, 30.031467>,  <27.336290, 31.851416, 29.970476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547544, 31.947599, 30.031467>,  <27.899635, 32.107906, 30.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547544, 31.947599, 30.031467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270538, 0.016188, -0.962573,
		0.389883, -0.916036, 0.094174,
		-0.880227, -0.400769, -0.254134,
		27.283476, 31.827370, 29.955227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046289, 31.573425, 29.633152>,  <27.899635, 32.107906, 30.133121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046289, 31.573425, 29.633152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677029, 31.706726, 29.556492>,  <27.455471, 31.786707, 29.510496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677029, 31.706726, 29.556492>,  <28.046289, 31.573425, 29.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677029, 31.706726, 29.556492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201835, -0.004133, -0.979411,
		-0.327184, -0.942828, -0.063446,
		-0.923154, 0.333253, -0.191648,
		27.400082, 31.806702, 29.498997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745787, 31.057837, 29.246841>,  <28.046289, 31.573425, 29.633152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745787, 31.057837, 29.246841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537058, 31.391392, 29.174915>,  <27.411821, 31.591524, 29.131760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537058, 31.391392, 29.174915>,  <27.745787, 31.057837, 29.246841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537058, 31.391392, 29.174915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035959, -0.189101, -0.981299,
		-0.852297, -0.518529, 0.068690,
		-0.521821, 0.833888, -0.179816,
		27.380512, 31.641558, 29.120970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303791, 30.816378, 28.704592>,  <27.745787, 31.057837, 29.246841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303791, 30.816378, 28.704592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270874, 31.213587, 28.738379>,  <27.251123, 31.451912, 28.758650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270874, 31.213587, 28.738379>,  <27.303791, 30.816378, 28.704592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270874, 31.213587, 28.738379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026620, 0.082533, -0.996233,
		-0.996253, -0.084232, 0.019642,
		-0.082293, 0.993022, 0.084466,
		27.246185, 31.511494, 28.763718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684010, 31.057873, 28.365528>,  <27.303791, 30.816378, 28.704592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684010, 31.057873, 28.365528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968628, 31.338352, 28.383518>,  <27.139399, 31.506639, 28.394312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968628, 31.338352, 28.383518>,  <26.684010, 31.057873, 28.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968628, 31.338352, 28.383518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150536, -0.089607, -0.984535,
		-0.686326, 0.707311, -0.169315,
		0.711545, 0.701200, 0.044976,
		27.182091, 31.548712, 28.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583857, 31.636002, 27.862621>,  <26.684010, 31.057873, 28.365528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583857, 31.636002, 27.862621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977003, 31.584515, 27.915392>,  <27.212891, 31.553623, 27.947054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977003, 31.584515, 27.915392>,  <26.583857, 31.636002, 27.862621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977003, 31.584515, 27.915392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099212, -0.233753, -0.967221,
		0.155334, 0.963738, -0.216978,
		0.982867, -0.128716, 0.131924,
		27.271864, 31.545900, 27.954969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818991, 31.984459, 27.342649>,  <26.583857, 31.636002, 27.862621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818991, 31.984459, 27.342649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058264, 31.701374, 27.493019>,  <27.201828, 31.531523, 27.583241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058264, 31.701374, 27.493019>,  <26.818991, 31.984459, 27.342649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058264, 31.701374, 27.493019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046078, -0.437958, -0.897814,
		0.800034, 0.554379, -0.229369,
		0.598182, -0.707713, 0.375926,
		27.237719, 31.489059, 27.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943205, 32.801804, 27.139620>,  <26.818991, 31.984459, 27.342649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943205, 32.801804, 27.139620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615042, 32.979996, 27.282993>,  <26.418144, 33.086910, 27.369019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615042, 32.979996, 27.282993>,  <26.943205, 32.801804, 27.139620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615042, 32.979996, 27.282993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107603, 0.495386, -0.861983,
		-0.561564, -0.745745, -0.358483,
		-0.820407, 0.445485, 0.358436,
		26.368919, 33.113640, 27.390524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530087, 32.865856, 26.635118>,  <26.943205, 32.801804, 27.139620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530087, 32.865856, 26.635118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315695, 33.134789, 26.839355>,  <26.187059, 33.296146, 26.961897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315695, 33.134789, 26.839355>,  <26.530087, 32.865856, 26.635118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315695, 33.134789, 26.839355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395841, 0.334064, -0.855401,
		-0.745680, -0.660589, 0.087084,
		-0.535977, 0.672327, 0.510593,
		26.154902, 33.336487, 26.992533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728565, 32.780697, 26.683891>,  <26.530087, 32.865856, 26.635118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728565, 32.780697, 26.683891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834257, 33.165958, 26.703970>,  <25.897673, 33.397114, 26.716017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834257, 33.165958, 26.703970>,  <25.728565, 32.780697, 26.683891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834257, 33.165958, 26.703970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575063, 0.199116, -0.793508,
		-0.774265, 0.180801, 0.606486,
		0.264228, 0.963153, 0.050196,
		25.913525, 33.454903, 26.719028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148010, 33.188435, 26.391098>,  <25.728565, 32.780697, 26.683891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148010, 33.188435, 26.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460924, 33.437584, 26.394196>,  <25.648672, 33.587074, 26.396055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460924, 33.437584, 26.394196>,  <25.148010, 33.188435, 26.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460924, 33.437584, 26.394196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270691, 0.351112, -0.896352,
		-0.561034, 0.699105, 0.443276,
		0.782283, 0.622875, 0.007745,
		25.695610, 33.624447, 26.396519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981943, 33.924393, 26.444386>,  <25.148010, 33.188435, 26.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981943, 33.924393, 26.444386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302748, 33.852020, 26.216688>,  <25.495230, 33.808598, 26.080069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302748, 33.852020, 26.216688>,  <24.981943, 33.924393, 26.444386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302748, 33.852020, 26.216688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456281, 0.429438, -0.779353,
		0.385467, 0.884786, 0.261857,
		0.802012, -0.180934, -0.569245,
		25.543352, 33.797741, 26.045916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317341, 34.568985, 26.000807>,  <24.981943, 33.924393, 26.444386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317341, 34.568985, 26.000807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393015, 34.228664, 25.804705>,  <25.438419, 34.024471, 25.687044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393015, 34.228664, 25.804705>,  <25.317341, 34.568985, 26.000807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393015, 34.228664, 25.804705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450995, 0.368211, -0.813034,
		0.872246, 0.374916, -0.314046,
		0.189185, -0.850799, -0.490256,
		25.449770, 33.973423, 25.657627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614761, 34.821049, 25.298542>,  <25.317341, 34.568985, 26.000807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614761, 34.821049, 25.298542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457830, 34.453510, 25.281570>,  <25.363672, 34.232986, 25.271387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.457830, 34.453510, 25.281570>,  <25.614761, 34.821049, 25.298542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457830, 34.453510, 25.281570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564750, 0.277034, -0.777374,
		0.726041, -0.281024, -0.627607,
		-0.392328, -0.918846, -0.042430,
		25.340132, 34.177856, 25.268841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742176, 35.373028, 25.003006>,  <25.614761, 34.821049, 25.298542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742176, 35.373028, 25.003006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934814, 35.715927, 24.930140>,  <26.050398, 35.921669, 24.886419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934814, 35.715927, 24.930140>,  <25.742176, 35.373028, 25.003006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934814, 35.715927, 24.930140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316986, 0.023398, 0.948141,
		0.817058, -0.514365, -0.260469,
		0.481597, 0.857252, -0.182164,
		26.079294, 35.973103, 24.875490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530519, 35.331367, 25.076262>,  <25.742176, 35.373028, 25.003006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530519, 35.331367, 25.076262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358051, 35.686523, 25.140438>,  <26.254570, 35.899616, 25.178944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358051, 35.686523, 25.140438>,  <26.530519, 35.331367, 25.076262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358051, 35.686523, 25.140438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467350, 0.067669, 0.881479,
		0.771800, 0.455050, -0.444133,
		-0.431171, 0.887891, 0.160441,
		26.228701, 35.952892, 25.188570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052174, 35.771996, 25.312723>,  <26.530519, 35.331367, 25.076262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052174, 35.771996, 25.312723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724461, 35.951797, 25.455112>,  <26.527832, 36.059681, 25.540546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724461, 35.951797, 25.455112>,  <27.052174, 35.771996, 25.312723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724461, 35.951797, 25.455112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402065, 0.007754, 0.915578,
		0.408800, 0.893242, -0.187084,
		-0.819284, 0.449509, 0.355972,
		26.478676, 36.086651, 25.561905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281713, 36.251148, 25.849112>,  <27.052174, 35.771996, 25.312723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281713, 36.251148, 25.849112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894861, 36.196976, 25.935192>,  <26.662750, 36.164471, 25.986841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894861, 36.196976, 25.935192>,  <27.281713, 36.251148, 25.849112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894861, 36.196976, 25.935192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198162, 0.128875, 0.971660,
		-0.159329, 0.982369, -0.097801,
		-0.967133, -0.135433, 0.215202,
		26.604721, 36.156345, 25.999752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198593, 36.725151, 26.306110>,  <27.281713, 36.251148, 25.849112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198593, 36.725151, 26.306110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903715, 36.459499, 26.355881>,  <26.726789, 36.300110, 26.385742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903715, 36.459499, 26.355881>,  <27.198593, 36.725151, 26.306110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903715, 36.459499, 26.355881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062930, 0.115861, 0.991270,
		-0.672744, 0.738588, -0.043618,
		-0.737194, -0.664126, 0.124424,
		26.682556, 36.260262, 26.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791698, 37.070827, 26.733873>,  <27.198593, 36.725151, 26.306110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791698, 37.070827, 26.733873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702316, 36.684963, 26.789732>,  <26.648687, 36.453445, 26.823248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702316, 36.684963, 26.789732>,  <26.791698, 37.070827, 26.733873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702316, 36.684963, 26.789732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017138, 0.139359, 0.990094,
		-0.974564, 0.223633, -0.014608,
		-0.223453, -0.964659, 0.139647,
		26.635281, 36.395565, 26.831627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266804, 37.044506, 27.304420>,  <26.791698, 37.070827, 26.733873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266804, 37.044506, 27.304420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397320, 36.666531, 27.294388>,  <26.475630, 36.439747, 27.288368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397320, 36.666531, 27.294388>,  <26.266804, 37.044506, 27.304420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397320, 36.666531, 27.294388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128616, 0.018093, 0.991529,
		-0.936479, -0.326752, 0.127437,
		0.326289, -0.944937, -0.025082,
		26.495207, 36.383049, 27.286863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825346, 36.602322, 27.920782>,  <26.266804, 37.044506, 27.304420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825346, 36.602322, 27.920782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180452, 36.449215, 27.818521>,  <26.393517, 36.357349, 27.757166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180452, 36.449215, 27.818521>,  <25.825346, 36.602322, 27.920782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180452, 36.449215, 27.818521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201894, -0.175319, 0.963588,
		-0.413655, -0.907055, -0.078363,
		0.887766, -0.382772, -0.255651,
		26.446783, 36.334385, 27.741827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852404, 35.970547, 28.335501>,  <25.825346, 36.602322, 27.920782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852404, 35.970547, 28.335501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228092, 36.032600, 28.212992>,  <26.453505, 36.069832, 28.139486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228092, 36.032600, 28.212992>,  <25.852404, 35.970547, 28.335501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228092, 36.032600, 28.212992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333001, -0.194579, 0.922632,
		0.083534, -0.968542, -0.234411,
		0.939219, 0.155130, -0.306272,
		26.509857, 36.079140, 28.121111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181749, 35.444057, 28.443880>,  <25.852404, 35.970547, 28.335501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181749, 35.444057, 28.443880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489481, 35.698853, 28.424355>,  <26.674120, 35.851730, 28.412640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489481, 35.698853, 28.424355>,  <26.181749, 35.444057, 28.443880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489481, 35.698853, 28.424355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316157, -0.313215, 0.895511,
		0.555138, -0.704376, -0.442353,
		0.769328, 0.636986, -0.048816,
		26.720280, 35.889950, 28.409710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686401, 35.059170, 28.448397>,  <26.181749, 35.444057, 28.443880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686401, 35.059170, 28.448397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830416, 35.407936, 28.581139>,  <26.916824, 35.617195, 28.660784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830416, 35.407936, 28.581139>,  <26.686401, 35.059170, 28.448397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830416, 35.407936, 28.581139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256094, -0.434414, 0.863539,
		0.897100, -0.225920, -0.379699,
		0.360037, 0.871920, 0.331857,
		26.938427, 35.669514, 28.680696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274866, 34.822647, 28.696453>,  <26.686401, 35.059170, 28.448397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274866, 34.822647, 28.696453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252542, 35.189960, 28.853245>,  <27.239149, 35.410347, 28.947321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252542, 35.189960, 28.853245>,  <27.274866, 34.822647, 28.696453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252542, 35.189960, 28.853245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409443, -0.337015, 0.847807,
		0.910627, 0.207807, -0.357176,
		-0.055807, 0.918279, 0.391980,
		27.235800, 35.465443, 28.970839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921919, 34.889412, 29.020773>,  <27.274866, 34.822647, 28.696453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921919, 34.889412, 29.020773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680605, 35.166718, 29.178469>,  <27.535816, 35.333103, 29.273087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680605, 35.166718, 29.178469>,  <27.921919, 34.889412, 29.020773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680605, 35.166718, 29.178469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273721, -0.284313, 0.918827,
		0.749081, 0.662227, -0.018240,
		-0.603286, 0.693269, 0.394239,
		27.499619, 35.374699, 29.296740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353205, 35.247570, 29.612726>,  <27.921919, 34.889412, 29.020773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353205, 35.247570, 29.612726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968634, 35.322678, 29.693127>,  <27.737892, 35.367741, 29.741367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968634, 35.322678, 29.693127>,  <28.353205, 35.247570, 29.612726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968634, 35.322678, 29.693127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162682, -0.201070, 0.965974,
		0.221797, 0.961412, 0.162768,
		-0.961426, 0.187770, 0.201001,
		27.680206, 35.379009, 29.753428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331488, 35.572525, 30.236401>,  <28.353205, 35.247570, 29.612726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331488, 35.572525, 30.236401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952286, 35.449348, 30.204262>,  <27.724764, 35.375443, 30.184978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952286, 35.449348, 30.204262>,  <28.331488, 35.572525, 30.236401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952286, 35.449348, 30.204262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028326, -0.169809, 0.985070,
		-0.316991, 0.936127, 0.152257,
		-0.948005, -0.307945, -0.080345,
		27.667885, 35.356964, 30.180159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961319, 35.852421, 30.727600>,  <28.331488, 35.572525, 30.236401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961319, 35.852421, 30.727600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742643, 35.525318, 30.655586>,  <27.611439, 35.329056, 30.612377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742643, 35.525318, 30.655586>,  <27.961319, 35.852421, 30.727600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742643, 35.525318, 30.655586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183274, -0.092938, 0.978659,
		-0.817033, 0.568017, -0.099065,
		-0.546688, -0.817752, -0.180036,
		27.578636, 35.279991, 30.601576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347254, 35.835758, 31.147043>,  <27.961319, 35.852421, 30.727600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347254, 35.835758, 31.147043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381334, 35.447517, 31.056999>,  <27.401783, 35.214573, 31.002972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381334, 35.447517, 31.056999>,  <27.347254, 35.835758, 31.147043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381334, 35.447517, 31.056999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269249, -0.239956, 0.932698,
		-0.959295, -0.018854, -0.281777,
		0.085199, -0.970601, -0.225112,
		27.406895, 35.156338, 30.989466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780945, 35.564941, 31.506371>,  <27.347254, 35.835758, 31.147043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780945, 35.564941, 31.506371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995953, 35.239315, 31.418400>,  <27.124958, 35.043938, 31.365618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995953, 35.239315, 31.418400>,  <26.780945, 35.564941, 31.506371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995953, 35.239315, 31.418400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051192, -0.291827, 0.955100,
		-0.841696, -0.502127, -0.198537,
		0.537520, -0.814067, -0.219925,
		27.157209, 34.995094, 31.352423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485155, 34.905949, 31.867559>,  <26.780945, 35.564941, 31.506371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485155, 34.905949, 31.867559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863844, 34.794994, 31.802109>,  <27.091057, 34.728424, 31.762838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863844, 34.794994, 31.802109>,  <26.485155, 34.905949, 31.867559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863844, 34.794994, 31.802109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006466, -0.491607, 0.870794,
		-0.321982, -0.825459, -0.463622,
		0.946724, -0.277382, -0.163626,
		27.147861, 34.711781, 31.753021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418093, 34.238033, 31.983315>,  <26.485155, 34.905949, 31.867559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418093, 34.238033, 31.983315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809237, 34.321301, 31.991854>,  <27.043922, 34.371262, 31.996977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809237, 34.321301, 31.991854>,  <26.418093, 34.238033, 31.983315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809237, 34.321301, 31.991854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113430, -0.613013, 0.781888,
		0.175853, -0.762155, -0.623053,
		0.977860, 0.208170, 0.021349,
		27.102594, 34.383751, 31.998259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786150, 33.568108, 32.139523>,  <26.418093, 34.238033, 31.983315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786150, 33.568108, 32.139523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041903, 33.853283, 32.254696>,  <27.195354, 34.024387, 32.323799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.041903, 33.853283, 32.254696>,  <26.786150, 33.568108, 32.139523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041903, 33.853283, 32.254696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145027, -0.479581, 0.865430,
		0.755087, -0.511583, -0.410032,
		0.639383, 0.712941, 0.287933,
		27.233717, 34.067165, 32.341076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476273, 33.222446, 32.372269>,  <26.786150, 33.568108, 32.139523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476273, 33.222446, 32.372269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459038, 33.591911, 32.524582>,  <27.448696, 33.813591, 32.615971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459038, 33.591911, 32.524582>,  <27.476273, 33.222446, 32.372269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459038, 33.591911, 32.524582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, -0.349858, 0.883802,
		0.949553, 0.156365, -0.271844,
		-0.043089, 0.923661, 0.380781,
		27.446112, 33.869011, 32.638817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174616, 33.449764, 32.345993>,  <27.476273, 33.222446, 32.372269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174616, 33.449764, 32.345993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964207, 33.632633, 32.632851>,  <27.837961, 33.742355, 32.804966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964207, 33.632633, 32.632851>,  <28.174616, 33.449764, 32.345993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964207, 33.632633, 32.632851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411958, -0.600735, 0.685133,
		0.744037, 0.655829, 0.127665,
		-0.526023, 0.457172, 0.717143,
		27.806400, 33.769783, 32.847992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593674, 33.803455, 32.862434>,  <28.174616, 33.449764, 32.345993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593674, 33.803455, 32.862434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256571, 33.661106, 33.023983>,  <28.054310, 33.575695, 33.120914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.256571, 33.661106, 33.023983>,  <28.593674, 33.803455, 32.862434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256571, 33.661106, 33.023983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528758, -0.687884, 0.497222,
		0.100870, 0.632589, 0.767891,
		-0.842757, -0.355874, 0.403873,
		28.003744, 33.554344, 33.145145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578089, 34.133415, 33.458519>,  <28.593674, 33.803455, 32.862434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578089, 34.133415, 33.458519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383846, 34.367031, 33.718697>,  <28.267300, 34.507202, 33.874805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383846, 34.367031, 33.718697>,  <28.578089, 34.133415, 33.458519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383846, 34.367031, 33.718697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733555, 0.676960, -0.060192,
		-0.475481, 0.447909, -0.757162,
		-0.485608, 0.584040, 0.650448,
		28.238163, 34.542244, 33.913830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039499, 34.657837, 33.541500>,  <28.578089, 34.133415, 33.458519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039499, 34.657837, 33.541500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707561, 34.788715, 33.722298>,  <28.508398, 34.867245, 33.830776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707561, 34.788715, 33.722298>,  <29.039499, 34.657837, 33.541500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707561, 34.788715, 33.722298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446330, 0.875375, 0.185763,
		-0.334879, 0.355891, -0.872466,
		-0.829847, 0.327200, 0.451990,
		28.458607, 34.886875, 33.857895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519413, 34.226135, 34.036327>,  <29.039499, 34.657837, 33.541500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519413, 34.226135, 34.036327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811430, 34.024876, 34.221317>,  <29.986641, 33.904121, 34.332310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811430, 34.024876, 34.221317>,  <29.519413, 34.226135, 34.036327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811430, 34.024876, 34.221317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682374, 0.499561, -0.533671,
		0.037482, 0.705182, 0.708035,
		0.730042, -0.503147, 0.462473,
		30.030443, 33.873932, 34.360058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079380, 34.717125, 34.347565>,  <29.519413, 34.226135, 34.036327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079380, 34.717125, 34.347565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217705, 34.352844, 34.257191>,  <30.300699, 34.134277, 34.202969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217705, 34.352844, 34.257191>,  <30.079380, 34.717125, 34.347565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217705, 34.352844, 34.257191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678922, 0.409059, -0.609702,
		0.647673, 0.057452, 0.759749,
		0.345810, -0.910698, -0.225931,
		30.321447, 34.079636, 34.189411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769897, 34.766521, 34.411549>,  <30.079380, 34.717125, 34.347565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769897, 34.766521, 34.411549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660097, 34.483788, 34.150772>,  <30.594217, 34.314148, 33.994305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660097, 34.483788, 34.150772>,  <30.769897, 34.766521, 34.411549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660097, 34.483788, 34.150772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624727, 0.384316, -0.679718,
		0.731003, -0.593869, 0.336087,
		-0.274500, -0.706839, -0.651942,
		30.577747, 34.271736, 33.955189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494421, 34.437008, 34.195362>,  <30.769897, 34.766521, 34.411549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494421, 34.437008, 34.195362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163174, 34.465702, 33.972984>,  <30.964426, 34.482918, 33.839558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163174, 34.465702, 33.972984>,  <31.494421, 34.437008, 34.195362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163174, 34.465702, 33.972984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506233, 0.521618, -0.686763,
		0.240724, -0.850158, -0.468277,
		-0.828118, 0.071737, -0.555944,
		30.914738, 34.487225, 33.806202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272968, 34.547333, 34.133560>,  <31.494421, 34.437008, 34.195362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272968, 34.547333, 34.133560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648029, 34.415478, 34.089478>,  <32.873066, 34.336365, 34.063026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648029, 34.415478, 34.089478>,  <32.272968, 34.547333, 34.133560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648029, 34.415478, 34.089478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162139, 0.134380, 0.977575,
		-0.307434, -0.934496, 0.179448,
		0.937654, -0.329635, -0.110205,
		32.929325, 34.316586, 34.056416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410221, 34.125309, 34.668392>,  <32.272968, 34.547333, 34.133560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410221, 34.125309, 34.668392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781155, 34.226986, 34.558533>,  <33.003716, 34.287991, 34.492615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781155, 34.226986, 34.558533>,  <32.410221, 34.125309, 34.668392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781155, 34.226986, 34.558533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281850, 0.008412, 0.959422,
		0.246185, -0.967118, -0.063843,
		0.927337, 0.254189, -0.274653,
		33.059357, 34.303242, 34.476135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789753, 33.694599, 34.979439>,  <32.410221, 34.125309, 34.668392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789753, 33.694599, 34.979439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038628, 33.996593, 34.896610>,  <33.187954, 34.177792, 34.846912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038628, 33.996593, 34.896610>,  <32.789753, 33.694599, 34.979439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038628, 33.996593, 34.896610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177648, 0.121443, 0.976572,
		0.762447, -0.644395, -0.058562,
		0.622186, 0.754988, -0.207069,
		33.225285, 34.223091, 34.834488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138317, 33.708458, 35.511700>,  <32.789753, 33.694599, 34.979439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138317, 33.708458, 35.511700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279613, 34.037949, 35.334297>,  <33.364391, 34.235641, 35.227856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279613, 34.037949, 35.334297>,  <33.138317, 33.708458, 35.511700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279613, 34.037949, 35.334297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323722, 0.337156, 0.884042,
		0.877737, -0.455855, -0.147559,
		0.353245, 0.823724, -0.443505,
		33.385586, 34.285065, 35.201244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895245, 33.865719, 35.628887>,  <33.138317, 33.708458, 35.511700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895245, 33.865719, 35.628887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691257, 34.205803, 35.576618>,  <33.568863, 34.409855, 35.545258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691257, 34.205803, 35.576618>,  <33.895245, 33.865719, 35.628887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691257, 34.205803, 35.576618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169638, 0.248329, 0.953707,
		0.843299, 0.464195, -0.270868,
		-0.509970, 0.850209, -0.130671,
		33.538265, 34.460865, 35.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306770, 34.548401, 35.746876>,  <33.895245, 33.865719, 35.628887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306770, 34.548401, 35.746876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925228, 34.633297, 35.831829>,  <33.696301, 34.684235, 35.882801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925228, 34.633297, 35.831829>,  <34.306770, 34.548401, 35.746876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925228, 34.633297, 35.831829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277282, 0.351289, 0.894265,
		0.115195, 0.911893, -0.393932,
		-0.953858, 0.212245, 0.212384,
		33.639072, 34.696972, 35.895546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306988, 35.042622, 36.293198>,  <34.306770, 34.548401, 35.746876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306988, 35.042622, 36.293198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921173, 34.942253, 36.325939>,  <33.689682, 34.882030, 36.345585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921173, 34.942253, 36.325939>,  <34.306988, 35.042622, 36.293198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921173, 34.942253, 36.325939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074654, 0.556842, 0.827257,
		-0.253157, 0.791812, -0.555828,
		-0.964540, -0.250921, 0.081857,
		33.631809, 34.866978, 36.350494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010910, 35.682610, 36.475651>,  <34.306988, 35.042622, 36.293198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010910, 35.682610, 36.475651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785988, 35.374496, 36.595963>,  <33.651035, 35.189629, 36.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785988, 35.374496, 36.595963>,  <34.010910, 35.682610, 36.475651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785988, 35.374496, 36.595963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185322, 0.471864, 0.861975,
		-0.805894, 0.428954, -0.408084,
		-0.562308, -0.770287, 0.300778,
		33.617294, 35.143410, 36.686195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509991, 36.000759, 36.925449>,  <34.010910, 35.682610, 36.475651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509991, 36.000759, 36.925449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462540, 35.613907, 37.015408>,  <33.434071, 35.381794, 37.069382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462540, 35.613907, 37.015408>,  <33.509991, 36.000759, 36.925449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462540, 35.613907, 37.015408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058138, 0.232870, 0.970768,
		-0.991235, 0.102087, -0.083852,
		-0.118629, -0.967135, 0.224894,
		33.426952, 35.323765, 37.082874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817616, 35.933643, 37.303711>,  <33.509991, 36.000759, 36.925449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817616, 35.933643, 37.303711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066776, 35.631378, 37.384682>,  <33.216270, 35.450020, 37.433262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066776, 35.631378, 37.384682>,  <32.817616, 35.933643, 37.303711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066776, 35.631378, 37.384682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109870, 0.171685, 0.979006,
		-0.774549, -0.632061, 0.023918,
		0.622898, -0.755661, 0.202423,
		33.253647, 35.404678, 37.445408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489597, 35.565304, 37.749332>,  <32.817616, 35.933643, 37.303711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489597, 35.565304, 37.749332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869900, 35.458889, 37.812939>,  <33.098080, 35.395039, 37.851101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869900, 35.458889, 37.812939>,  <32.489597, 35.565304, 37.749332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869900, 35.458889, 37.812939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177754, -0.047741, 0.982916,
		-0.253905, -0.962779, -0.092680,
		0.950755, -0.266042, 0.159016,
		33.155125, 35.379078, 37.860645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451916, 34.998360, 38.129105>,  <32.489597, 35.565304, 37.749332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451916, 34.998360, 38.129105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817371, 35.144920, 38.199535>,  <33.036644, 35.232857, 38.241795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817371, 35.144920, 38.199535>,  <32.451916, 34.998360, 38.129105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817371, 35.144920, 38.199535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149718, -0.099402, 0.983719,
		0.377942, -0.925131, -0.035960,
		0.913643, 0.366405, 0.176077,
		33.091465, 35.254841, 38.252357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850639, 34.644943, 38.689075>,  <32.451916, 34.998360, 38.129105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850639, 34.644943, 38.689075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053707, 34.989197, 38.673141>,  <33.175549, 35.195747, 38.663582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053707, 34.989197, 38.673141>,  <32.850639, 34.644943, 38.689075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053707, 34.989197, 38.673141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170586, -0.055094, 0.983801,
		0.844497, -0.506238, -0.174781,
		0.507667, 0.860632, -0.039830,
		33.206009, 35.247387, 38.661194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419033, 34.452393, 39.074020>,  <32.850639, 34.644943, 38.689075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419033, 34.452393, 39.074020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401463, 34.851475, 39.094597>,  <33.390919, 35.090923, 39.106941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401463, 34.851475, 39.094597>,  <33.419033, 34.452393, 39.074020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401463, 34.851475, 39.094597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081265, -0.047750, 0.995548,
		0.995724, 0.047914, -0.078981,
		-0.043930, 0.997709, 0.051439,
		33.388283, 35.150787, 39.110027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799671, 34.669384, 39.601173>,  <33.419033, 34.452393, 39.074020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799671, 34.669384, 39.601173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579105, 35.001610, 39.569931>,  <33.446766, 35.200947, 39.551186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579105, 35.001610, 39.569931>,  <33.799671, 34.669384, 39.601173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579105, 35.001610, 39.569931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054401, 0.129227, 0.990122,
		0.832455, 0.541719, -0.116441,
		-0.551415, 0.830566, -0.078105,
		33.413681, 35.250778, 39.546501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178490, 35.149448, 39.921246>,  <33.799671, 34.669384, 39.601173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178490, 35.149448, 39.921246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800659, 35.280735, 39.918331>,  <33.573959, 35.359505, 39.916584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800659, 35.280735, 39.918331>,  <34.178490, 35.149448, 39.921246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800659, 35.280735, 39.918331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003235, 0.012888, 0.999912,
		0.328278, 0.944516, -0.011112,
		-0.944576, 0.328213, -0.007286,
		33.517288, 35.379200, 39.916145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088085, 35.606903, 40.493679>,  <34.178490, 35.149448, 39.921246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088085, 35.606903, 40.493679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723248, 35.485588, 40.383339>,  <33.504345, 35.412800, 40.317135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723248, 35.485588, 40.383339>,  <34.088085, 35.606903, 40.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723248, 35.485588, 40.383339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287298, -0.007147, 0.957815,
		-0.292468, 0.952871, -0.080616,
		-0.912098, -0.303291, -0.275848,
		33.449619, 35.394600, 40.300583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733368, 35.959328, 40.952080>,  <34.088085, 35.606903, 40.493679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733368, 35.959328, 40.952080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433754, 35.721443, 40.835274>,  <33.253986, 35.578712, 40.765190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433754, 35.721443, 40.835274>,  <33.733368, 35.959328, 40.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433754, 35.721443, 40.835274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149676, -0.277467, 0.949004,
		-0.645405, 0.754543, 0.118818,
		-0.749033, -0.594707, -0.292016,
		33.209045, 35.543030, 40.747669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102856, 36.125137, 41.407131>,  <33.733368, 35.959328, 40.952080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102856, 36.125137, 41.407131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046242, 35.758282, 41.258095>,  <33.012272, 35.538170, 41.168674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046242, 35.758282, 41.258095>,  <33.102856, 36.125137, 41.407131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046242, 35.758282, 41.258095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112361, -0.359063, 0.926525,
		-0.983536, 0.173003, -0.052229,
		-0.141538, -0.917139, -0.372590,
		33.003780, 35.483139, 41.146317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539108, 35.999317, 41.696972>,  <33.102856, 36.125137, 41.407131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539108, 35.999317, 41.696972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718330, 35.653786, 41.604836>,  <32.825863, 35.446468, 41.549553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718330, 35.653786, 41.604836>,  <32.539108, 35.999317, 41.696972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718330, 35.653786, 41.604836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180778, -0.339871, 0.922934,
		-0.875540, -0.371880, -0.308440,
		0.448050, -0.863824, -0.230343,
		32.852745, 35.394638, 41.535732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071495, 35.529739, 41.821667>,  <32.539108, 35.999317, 41.696972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071495, 35.529739, 41.821667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427235, 35.347252, 41.833782>,  <32.640678, 35.237759, 41.841049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427235, 35.347252, 41.833782>,  <32.071495, 35.529739, 41.821667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427235, 35.347252, 41.833782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172237, -0.272928, 0.946491,
		-0.423542, -0.846979, -0.321307,
		0.889352, -0.456219, 0.030284,
		32.694042, 35.210388, 41.842869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911282, 34.861580, 41.978790>,  <32.071495, 35.529739, 41.821667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911282, 34.861580, 41.978790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286583, 34.913361, 42.107117>,  <32.511765, 34.944431, 42.184113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286583, 34.913361, 42.107117>,  <31.911282, 34.861580, 41.978790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286583, 34.913361, 42.107117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298207, -0.167463, 0.939696,
		0.175374, -0.977342, -0.118518,
		0.938252, 0.129455, 0.320818,
		32.568058, 34.952198, 42.203362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928585, 34.387066, 42.449379>,  <31.911282, 34.861580, 41.978790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928585, 34.387066, 42.449379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255310, 34.598228, 42.542446>,  <32.451344, 34.724926, 42.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255310, 34.598228, 42.542446>,  <31.928585, 34.387066, 42.449379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255310, 34.598228, 42.542446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053673, -0.332010, 0.941748,
		0.574402, -0.781719, -0.242855,
		0.816812, 0.527907, 0.232665,
		32.500355, 34.756599, 42.612244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300594, 33.981628, 42.860046>,  <31.928585, 34.387066, 42.449379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300594, 33.981628, 42.860046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434010, 34.349819, 42.941517>,  <32.514057, 34.570732, 42.990398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434010, 34.349819, 42.941517>,  <32.300594, 33.981628, 42.860046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434010, 34.349819, 42.941517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130333, -0.168948, 0.976970,
		0.933685, -0.352398, 0.063618,
		0.333534, 0.920474, 0.203673,
		32.534069, 34.625961, 43.002621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809772, 33.940899, 43.330505>,  <32.300594, 33.981628, 42.860046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809772, 33.940899, 43.330505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676804, 34.316799, 43.362419>,  <32.597023, 34.542339, 43.381569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676804, 34.316799, 43.362419>,  <32.809772, 33.940899, 43.330505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676804, 34.316799, 43.362419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308166, -0.188181, 0.932535,
		0.891362, 0.285413, 0.352155,
		-0.332427, 0.939748, 0.079783,
		32.577076, 34.598724, 43.386353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135967, 34.217678, 43.955437>,  <32.809772, 33.940899, 43.330505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135967, 34.217678, 43.955437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834019, 34.469753, 43.882736>,  <32.652851, 34.620998, 43.839115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834019, 34.469753, 43.882736>,  <33.135967, 34.217678, 43.955437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834019, 34.469753, 43.882736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208949, 0.031606, 0.977416,
		0.621704, 0.775796, 0.107819,
		-0.754867, 0.630192, -0.181751,
		32.607559, 34.658810, 43.828209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229065, 34.785599, 44.338055>,  <33.135967, 34.217678, 43.955437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229065, 34.785599, 44.338055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833344, 34.814171, 44.287170>,  <32.595913, 34.831314, 44.256641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833344, 34.814171, 44.287170>,  <33.229065, 34.785599, 44.338055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833344, 34.814171, 44.287170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106689, 0.240504, 0.964767,
		0.099511, 0.968016, -0.230310,
		-0.989300, 0.071434, -0.127209,
		32.536552, 34.835602, 44.249008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028450, 35.431797, 44.628143>,  <33.229065, 34.785599, 44.338055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028450, 35.431797, 44.628143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695847, 35.209591, 44.628391>,  <32.496284, 35.076267, 44.628540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695847, 35.209591, 44.628391>,  <33.028450, 35.431797, 44.628143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695847, 35.209591, 44.628391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122603, 0.184597, 0.975137,
		-0.541815, 0.810759, -0.221602,
		-0.831508, -0.555513, 0.000616,
		32.446396, 35.042938, 44.628574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548496, 35.811230, 45.096188>,  <33.028450, 35.431797, 44.628143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548496, 35.811230, 45.096188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420433, 35.433800, 45.062332>,  <32.343597, 35.207340, 45.042019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420433, 35.433800, 45.062332>,  <32.548496, 35.811230, 45.096188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420433, 35.433800, 45.062332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227939, -0.009996, 0.973624,
		-0.919535, 0.331002, -0.211878,
		-0.320154, -0.943577, -0.084640,
		32.324387, 35.150726, 45.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942484, 35.908550, 45.381413>,  <32.548496, 35.811230, 45.096188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942484, 35.908550, 45.381413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037567, 35.520149, 45.391632>,  <32.094616, 35.287109, 45.397766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037567, 35.520149, 45.391632>,  <31.942484, 35.908550, 45.381413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037567, 35.520149, 45.391632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295430, -0.047214, 0.954197,
		-0.925319, -0.234371, -0.298086,
		0.237710, -0.971000, 0.025552,
		32.108879, 35.228848, 45.399296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331501, 35.498280, 45.699387>,  <31.942484, 35.908550, 45.381413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331501, 35.498280, 45.699387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643425, 35.249043, 45.723576>,  <31.830580, 35.099503, 45.738091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643425, 35.249043, 45.723576>,  <31.331501, 35.498280, 45.699387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643425, 35.249043, 45.723576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324533, -0.319761, 0.890186,
		-0.535331, -0.713799, -0.451566,
		0.779807, -0.623092, 0.060473,
		31.877367, 35.062115, 45.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076818, 34.745693, 45.753418>,  <31.331501, 35.498280, 45.699387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076818, 34.745693, 45.753418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440054, 34.814003, 45.906368>,  <31.657995, 34.854988, 45.998138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440054, 34.814003, 45.906368>,  <31.076818, 34.745693, 45.753418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440054, 34.814003, 45.906368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296739, -0.381883, 0.875278,
		0.295501, -0.908295, -0.296107,
		0.908089, 0.170778, 0.382374,
		31.712481, 34.865238, 46.021080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178364, 34.256325, 46.299713>,  <31.076818, 34.745693, 45.753418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178364, 34.256325, 46.299713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478689, 34.504612, 46.390038>,  <31.658884, 34.653584, 46.444233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478689, 34.504612, 46.390038>,  <31.178364, 34.256325, 46.299713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478689, 34.504612, 46.390038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077374, -0.256864, 0.963345,
		0.655965, -0.740766, -0.144830,
		0.750815, 0.620715, 0.225809,
		31.703934, 34.690826, 46.457779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539865, 33.894249, 46.708885>,  <31.178364, 34.256325, 46.299713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539865, 33.894249, 46.708885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673414, 34.262711, 46.788887>,  <31.753544, 34.483788, 46.836887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673414, 34.262711, 46.788887>,  <31.539865, 33.894249, 46.708885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673414, 34.262711, 46.788887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031028, -0.222802, 0.974370,
		0.942107, -0.319111, -0.102970,
		0.333874, 0.921156, 0.200002,
		31.773577, 34.539059, 46.848888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161880, 33.865414, 47.142185>,  <31.539865, 33.894249, 46.708885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161880, 33.865414, 47.142185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017227, 34.228626, 47.226746>,  <31.930435, 34.446556, 47.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017227, 34.228626, 47.226746>,  <32.161880, 33.865414, 47.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017227, 34.228626, 47.226746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068288, -0.200340, 0.977344,
		0.929815, 0.367879, 0.010442,
		-0.361636, 0.908036, 0.211401,
		31.908737, 34.501038, 47.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523785, 33.998188, 47.779324>,  <32.161880, 33.865414, 47.142185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523785, 33.998188, 47.779324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198418, 34.229382, 47.753132>,  <32.003197, 34.368099, 47.737415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198418, 34.229382, 47.753132>,  <32.523785, 33.998188, 47.779324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198418, 34.229382, 47.753132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219015, -0.200032, 0.954997,
		0.538876, 0.791151, 0.289297,
		-0.813416, 0.577985, -0.065482,
		31.954393, 34.402779, 47.733486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514618, 34.541481, 48.337433>,  <32.523785, 33.998188, 47.779324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514618, 34.541481, 48.337433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133842, 34.475342, 48.234310>,  <31.905376, 34.435658, 48.172436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133842, 34.475342, 48.234310>,  <32.514618, 34.541481, 48.337433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133842, 34.475342, 48.234310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217526, -0.227569, 0.949155,
		-0.215611, 0.959621, 0.180665,
		-0.951942, -0.165348, -0.257809,
		31.848259, 34.425735, 48.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077339, 34.591110, 49.010418>,  <32.514618, 34.541481, 48.337433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077339, 34.591110, 49.010418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805862, 34.423023, 48.769485>,  <31.642977, 34.322170, 48.624928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805862, 34.423023, 48.769485>,  <32.077339, 34.591110, 49.010418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805862, 34.423023, 48.769485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260192, -0.629363, 0.732258,
		-0.686792, 0.653696, 0.317804,
		-0.678688, -0.420219, -0.602328,
		31.602257, 34.296959, 48.588787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543310, 34.635891, 49.450970>,  <32.077339, 34.591110, 49.010418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543310, 34.635891, 49.450970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432150, 34.371590, 49.172062>,  <31.365454, 34.213009, 49.004719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432150, 34.371590, 49.172062>,  <31.543310, 34.635891, 49.450970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432150, 34.371590, 49.172062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312408, -0.624234, 0.716054,
		-0.908391, 0.416822, -0.032950,
		-0.277899, -0.660751, -0.697267,
		31.348780, 34.173363, 48.962883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872648, 34.471180, 49.614784>,  <31.543310, 34.635891, 49.450970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872648, 34.471180, 49.614784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981239, 34.150856, 49.401241>,  <31.046394, 33.958664, 49.273113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981239, 34.150856, 49.401241>,  <30.872648, 34.471180, 49.614784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981239, 34.150856, 49.401241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419383, -0.597690, 0.683290,
		-0.866266, 0.038393, -0.498105,
		0.271479, -0.800808, -0.533860,
		31.062683, 33.910614, 49.241085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285065, 34.068623, 49.514755>,  <30.872648, 34.471180, 49.614784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285065, 34.068623, 49.514755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624607, 33.857178, 49.513351>,  <30.828333, 33.730309, 49.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624607, 33.857178, 49.513351>,  <30.285065, 34.068623, 49.514755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624607, 33.857178, 49.513351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424047, -0.684872, 0.592565,
		-0.315640, -0.501515, -0.805515,
		0.848855, -0.528614, -0.003508,
		30.879263, 33.698593, 49.512299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145796, 33.317734, 49.277477>,  <30.285065, 34.068623, 49.514755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145796, 33.317734, 49.277477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456226, 33.371998, 49.523827>,  <30.642485, 33.404556, 49.671635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456226, 33.371998, 49.523827>,  <30.145796, 33.317734, 49.277477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456226, 33.371998, 49.523827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461663, -0.543081, 0.701378,
		0.429618, -0.828649, -0.358844,
		0.776078, 0.135659, 0.615874,
		30.689049, 33.412697, 49.708588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422224, 32.625347, 49.496078>,  <30.145796, 33.317734, 49.277477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422224, 32.625347, 49.496078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538721, 32.911678, 49.749935>,  <30.608620, 33.083477, 49.902248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538721, 32.911678, 49.749935>,  <30.422224, 32.625347, 49.496078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538721, 32.911678, 49.749935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539921, -0.424653, 0.726743,
		0.789724, -0.554316, 0.262812,
		0.291242, 0.715824, 0.634645,
		30.626093, 33.126427, 49.940331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232714, 32.292946, 50.041965>,  <30.422224, 32.625347, 49.496078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232714, 32.292946, 50.041965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279295, 32.659557, 50.195019>,  <30.307243, 32.879524, 50.286850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279295, 32.659557, 50.195019>,  <30.232714, 32.292946, 50.041965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279295, 32.659557, 50.195019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609975, -0.238037, 0.755823,
		0.783818, -0.321411, 0.531343,
		0.116451, 0.916533, 0.382630,
		30.314230, 32.934517, 50.309807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395187, 32.256924, 50.663143>,  <30.232714, 32.292946, 50.041965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395187, 32.256924, 50.663143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186758, 32.598145, 50.651939>,  <30.061701, 32.802876, 50.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186758, 32.598145, 50.651939>,  <30.395187, 32.256924, 50.663143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186758, 32.598145, 50.651939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697602, -0.406750, 0.589835,
		0.491765, 0.326890, 0.807038,
		-0.521074, 0.853052, -0.028014,
		30.030436, 32.854061, 50.643536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993500, 32.486893, 50.179138>,  <30.395187, 32.256924, 50.663143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993500, 32.486893, 50.179138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198254, 32.295380, 50.464443>,  <31.321106, 32.180473, 50.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198254, 32.295380, 50.464443>,  <30.993500, 32.486893, 50.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198254, 32.295380, 50.464443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391784, -0.608800, -0.689832,
		0.764514, 0.632557, -0.124055,
		0.511883, -0.478784, 0.713262,
		31.351818, 32.151745, 50.678421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650036, 32.585941, 50.053974>,  <30.993500, 32.486893, 50.179138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650036, 32.585941, 50.053974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574621, 32.243458, 50.246372>,  <31.529373, 32.037968, 50.361809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574621, 32.243458, 50.246372>,  <31.650036, 32.585941, 50.053974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574621, 32.243458, 50.246372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256295, -0.515701, -0.817536,
		0.948033, -0.030859, 0.316672,
		-0.188536, -0.856213, 0.480992,
		31.518061, 31.986593, 50.390671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081581, 32.226494, 49.655556>,  <31.650036, 32.585941, 50.053974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081581, 32.226494, 49.655556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858568, 31.984266, 49.882694>,  <31.724760, 31.838930, 50.018978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858568, 31.984266, 49.882694>,  <32.081581, 32.226494, 49.655556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858568, 31.984266, 49.882694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058678, -0.711058, -0.700681,
		0.828077, -0.357334, 0.431973,
		-0.557535, -0.605565, 0.567843,
		31.691307, 31.802597, 50.053047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410931, 31.644276, 49.793266>,  <32.081581, 32.226494, 49.655556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410931, 31.644276, 49.793266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012165, 31.636080, 49.762978>,  <31.772905, 31.631163, 49.744804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012165, 31.636080, 49.762978>,  <32.410931, 31.644276, 49.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012165, 31.636080, 49.762978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073193, -0.590270, -0.803881,
		-0.028226, -0.806946, 0.589951,
		-0.996918, -0.020490, -0.075724,
		31.713089, 31.629932, 49.740261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106438, 31.021418, 49.444218>,  <32.410931, 31.644276, 49.793266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106438, 31.021418, 49.444218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790552, 31.255571, 49.370811>,  <31.601021, 31.396063, 49.326767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790552, 31.255571, 49.370811>,  <32.106438, 31.021418, 49.444218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790552, 31.255571, 49.370811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016896, -0.319785, -0.947340,
		-0.613245, -0.745025, 0.262428,
		-0.789712, 0.585385, -0.183518,
		31.553638, 31.431187, 49.315758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601965, 30.602299, 49.132214>,  <32.106438, 31.021418, 49.444218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601965, 30.602299, 49.132214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556044, 30.984890, 49.024906>,  <31.528490, 31.214445, 48.960522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556044, 30.984890, 49.024906>,  <31.601965, 30.602299, 49.132214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556044, 30.984890, 49.024906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046700, -0.274949, -0.960324,
		-0.992290, -0.097722, 0.076233,
		-0.114805, 0.956479, -0.268265,
		31.521603, 31.271833, 48.944427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232729, 30.510777, 48.635540>,  <31.601965, 30.602299, 49.132214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232729, 30.510777, 48.635540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343990, 30.877310, 48.520329>,  <31.410748, 31.097231, 48.451202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343990, 30.877310, 48.520329>,  <31.232729, 30.510777, 48.635540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343990, 30.877310, 48.520329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067744, -0.280404, -0.957488,
		-0.958145, 0.285841, -0.015920,
		0.278153, 0.916334, -0.288032,
		31.427437, 31.152210, 48.433918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752651, 30.791243, 48.031662>,  <31.232729, 30.510777, 48.635540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752651, 30.791243, 48.031662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110798, 30.969160, 48.040382>,  <31.325686, 31.075911, 48.045612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110798, 30.969160, 48.040382>,  <30.752651, 30.791243, 48.031662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110798, 30.969160, 48.040382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100669, -0.154479, -0.982854,
		-0.433799, 0.882210, -0.183093,
		0.895368, 0.444793, 0.021798,
		31.379408, 31.102598, 48.046921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605625, 31.267321, 47.580040>,  <30.752651, 30.791243, 48.031662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605625, 31.267321, 47.580040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003342, 31.224838, 47.584221>,  <31.241972, 31.199348, 47.586731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003342, 31.224838, 47.584221>,  <30.605625, 31.267321, 47.580040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003342, 31.224838, 47.584221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014054, 0.033195, -0.999350,
		0.105788, 0.993790, 0.034498,
		0.994289, -0.106204, 0.010455,
		31.301628, 31.192978, 47.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866377, 31.723629, 46.993645>,  <30.605625, 31.267321, 47.580040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866377, 31.723629, 46.993645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178539, 31.487700, 47.076664>,  <31.365837, 31.346142, 47.126476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178539, 31.487700, 47.076664>,  <30.866377, 31.723629, 46.993645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178539, 31.487700, 47.076664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288845, 0.045678, -0.956285,
		0.554558, 0.806240, 0.206015,
		0.780406, -0.589822, 0.207547,
		31.412661, 31.310753, 47.138927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382021, 32.089043, 46.724949>,  <30.866377, 31.723629, 46.993645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382021, 32.089043, 46.724949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503391, 31.709806, 46.763012>,  <31.576214, 31.482265, 46.785851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503391, 31.709806, 46.763012>,  <31.382021, 32.089043, 46.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503391, 31.709806, 46.763012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395294, 0.034380, -0.917911,
		0.866992, 0.316135, 0.385207,
		0.303427, -0.948091, 0.095159,
		31.594419, 31.425379, 46.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122948, 32.022163, 46.459427>,  <31.382021, 32.089043, 46.724949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122948, 32.022163, 46.459427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959749, 31.657070, 46.450897>,  <31.861830, 31.438013, 46.445782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959749, 31.657070, 46.450897>,  <32.122948, 32.022163, 46.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959749, 31.657070, 46.450897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402738, -0.158969, -0.901405,
		0.819353, -0.376358, 0.432452,
		-0.407998, -0.912734, -0.021322,
		31.837349, 31.383249, 46.444500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575630, 31.648897, 46.155064>,  <32.122948, 32.022163, 46.459427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575630, 31.648897, 46.155064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285023, 31.377232, 46.113285>,  <32.110657, 31.214231, 46.088219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285023, 31.377232, 46.113285>,  <32.575630, 31.648897, 46.155064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285023, 31.377232, 46.113285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415515, -0.313155, -0.853980,
		0.547285, -0.663830, 0.509715,
		-0.726517, -0.679164, -0.104446,
		32.067066, 31.173483, 46.081951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915817, 31.061911, 45.942623>,  <32.575630, 31.648897, 46.155064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915817, 31.061911, 45.942623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532829, 31.030579, 45.831551>,  <32.303036, 31.011780, 45.764908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532829, 31.030579, 45.831551>,  <32.915817, 31.061911, 45.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532829, 31.030579, 45.831551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287967, -0.318871, -0.902993,
		-0.017813, -0.944556, 0.327868,
		-0.957475, -0.078330, -0.277681,
		32.245586, 31.007080, 45.748245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891403, 30.460081, 45.666813>,  <32.915817, 31.061911, 45.942623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891403, 30.460081, 45.666813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576584, 30.642155, 45.500267>,  <32.387691, 30.751400, 45.400341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576584, 30.642155, 45.500267>,  <32.891403, 30.460081, 45.666813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576584, 30.642155, 45.500267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383766, -0.167154, -0.908176,
		-0.482986, -0.874565, -0.043126,
		-0.787050, 0.455187, -0.416362,
		32.340469, 30.778711, 45.375359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745281, 30.008173, 45.078133>,  <32.891403, 30.460081, 45.666813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745281, 30.008173, 45.078133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568401, 30.359112, 45.003601>,  <32.462273, 30.569675, 44.958881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568401, 30.359112, 45.003601>,  <32.745281, 30.008173, 45.078133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568401, 30.359112, 45.003601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411331, 0.013767, -0.911382,
		-0.797034, -0.479657, -0.366969,
		-0.442203, 0.877348, -0.186325,
		32.435741, 30.622316, 44.947704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627438, 30.019402, 44.350552>,  <32.745281, 30.008173, 45.078133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627438, 30.019402, 44.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599129, 30.405823, 44.449936>,  <32.582142, 30.637676, 44.509567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599129, 30.405823, 44.449936>,  <32.627438, 30.019402, 44.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599129, 30.405823, 44.449936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252375, 0.258323, -0.932511,
		-0.965038, -0.003291, -0.262090,
		-0.070773, 0.966053, 0.248461,
		32.577896, 30.695639, 44.524475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125854, 30.355619, 43.851120>,  <32.627438, 30.019402, 44.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125854, 30.355619, 43.851120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369587, 30.653479, 43.960091>,  <32.515827, 30.832193, 44.025475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369587, 30.653479, 43.960091>,  <32.125854, 30.355619, 43.851120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369587, 30.653479, 43.960091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021391, 0.358888, -0.933135,
		-0.792628, 0.562760, 0.234610,
		0.609330, 0.744648, 0.272427,
		32.552387, 30.876873, 44.041821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919884, 30.881876, 43.404045>,  <32.125854, 30.355619, 43.851120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919884, 30.881876, 43.404045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252182, 31.036520, 43.564243>,  <32.451561, 31.129307, 43.660362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252182, 31.036520, 43.564243>,  <31.919884, 30.881876, 43.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252182, 31.036520, 43.564243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213655, 0.442912, -0.870736,
		-0.514018, 0.808927, 0.285346,
		0.830745, 0.386608, 0.400496,
		32.501404, 31.152502, 43.684391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856369, 31.643166, 43.444817>,  <31.919884, 30.881876, 43.404045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856369, 31.643166, 43.444817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242508, 31.550964, 43.395878>,  <32.474194, 31.495644, 43.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242508, 31.550964, 43.395878>,  <31.856369, 31.643166, 43.444817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242508, 31.550964, 43.395878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038554, 0.589654, -0.806735,
		0.258097, 0.774064, 0.578109,
		0.965349, -0.230504, -0.122345,
		32.532112, 31.481813, 43.359173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125149, 32.303547, 43.225979>,  <31.856369, 31.643166, 43.444817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125149, 32.303547, 43.225979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400448, 32.030922, 43.126545>,  <32.565628, 31.867348, 43.066883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400448, 32.030922, 43.126545>,  <32.125149, 32.303547, 43.225979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400448, 32.030922, 43.126545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028142, 0.367473, -0.929608,
		0.724932, 0.632803, 0.272092,
		0.688245, -0.681560, -0.248585,
		32.606922, 31.826454, 43.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816101, 32.621353, 42.939865>,  <32.125149, 32.303547, 43.225979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816101, 32.621353, 42.939865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774559, 32.252949, 42.789688>,  <32.749634, 32.031906, 42.699581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774559, 32.252949, 42.789688>,  <32.816101, 32.621353, 42.939865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774559, 32.252949, 42.789688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197152, 0.350929, -0.915413,
		0.974857, -0.169090, 0.145133,
		-0.103856, -0.921009, -0.375441,
		32.743401, 31.976646, 42.677055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280788, 32.710064, 42.412704>,  <32.816101, 32.621353, 42.939865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280788, 32.710064, 42.412704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111916, 32.357727, 42.327019>,  <33.010593, 32.146324, 42.275608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111916, 32.357727, 42.327019>,  <33.280788, 32.710064, 42.412704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111916, 32.357727, 42.327019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234304, 0.122248, -0.964446,
		0.875708, -0.457362, 0.154773,
		-0.422181, -0.880838, -0.214215,
		32.985260, 32.093475, 42.262753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755684, 32.451241, 41.969753>,  <33.280788, 32.710064, 42.412704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755684, 32.451241, 41.969753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417213, 32.247696, 41.906441>,  <33.214130, 32.125568, 41.868454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417213, 32.247696, 41.906441>,  <33.755684, 32.451241, 41.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417213, 32.247696, 41.906441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150503, 0.056733, -0.986980,
		0.511214, -0.858978, 0.028578,
		-0.846173, -0.508859, -0.158281,
		33.163361, 32.095039, 41.858955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878647, 31.934778, 41.502602>,  <33.755684, 32.451241, 41.969753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878647, 31.934778, 41.502602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482105, 31.940891, 41.450489>,  <33.244179, 31.944559, 41.419220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482105, 31.940891, 41.450489>,  <33.878647, 31.934778, 41.502602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482105, 31.940891, 41.450489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130976, 0.060102, -0.989562,
		-0.007298, -0.998075, -0.061585,
		-0.991359, 0.015288, -0.130285,
		33.184696, 31.945477, 41.411404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740650, 31.456696, 41.052139>,  <33.878647, 31.934778, 41.502602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740650, 31.456696, 41.052139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437504, 31.716105, 41.023693>,  <33.255615, 31.871750, 41.006626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437504, 31.716105, 41.023693>,  <33.740650, 31.456696, 41.052139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437504, 31.716105, 41.023693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135430, 0.049750, -0.989537,
		-0.638198, -0.759569, -0.125533,
		-0.757867, 0.648522, -0.071118,
		33.210144, 31.910662, 41.002357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346252, 31.224186, 40.532463>,  <33.740650, 31.456696, 41.052139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346252, 31.224186, 40.532463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232464, 31.606493, 40.562351>,  <33.164188, 31.835876, 40.580284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232464, 31.606493, 40.562351>,  <33.346252, 31.224186, 40.532463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232464, 31.606493, 40.562351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000046, 0.077950, -0.996957,
		-0.958684, -0.283604, -0.022218,
		-0.284473, 0.955768, 0.074717,
		33.147121, 31.893223, 40.584766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803108, 31.274549, 40.076080>,  <33.346252, 31.224186, 40.532463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803108, 31.274549, 40.076080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959850, 31.637398, 40.137505>,  <33.053894, 31.855106, 40.174358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959850, 31.637398, 40.137505>,  <32.803108, 31.274549, 40.076080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959850, 31.637398, 40.137505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017863, 0.159374, -0.987057,
		-0.919854, 0.389525, 0.046247,
		0.391854, 0.907122, 0.153559,
		33.077408, 31.909534, 40.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488548, 31.687466, 39.677933>,  <32.803108, 31.274549, 40.076080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488548, 31.687466, 39.677933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792336, 31.935001, 39.758175>,  <32.974609, 32.083523, 39.806320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792336, 31.935001, 39.758175>,  <32.488548, 31.687466, 39.677933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792336, 31.935001, 39.758175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109157, 0.182770, -0.977077,
		-0.641316, 0.763961, 0.071258,
		0.759472, 0.618837, 0.200605,
		33.020176, 32.120651, 39.818356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365467, 32.268311, 39.243176>,  <32.488548, 31.687466, 39.677933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365467, 32.268311, 39.243176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753384, 32.286049, 39.339130>,  <32.986134, 32.296692, 39.396702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753384, 32.286049, 39.339130>,  <32.365467, 32.268311, 39.243176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753384, 32.286049, 39.339130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226333, 0.203353, -0.952587,
		-0.091028, 0.978101, 0.187171,
		0.969787, 0.044349, 0.239887,
		33.044319, 32.299355, 39.411095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658939, 32.789188, 38.954651>,  <32.365467, 32.268311, 39.243176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658939, 32.789188, 38.954651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986320, 32.565838, 39.008827>,  <33.182751, 32.431828, 39.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986320, 32.565838, 39.008827>,  <32.658939, 32.789188, 38.954651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986320, 32.565838, 39.008827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240386, 0.118664, -0.963397,
		0.521865, 0.821057, 0.231348,
		0.818457, -0.558376, 0.135444,
		33.231857, 32.398327, 39.049461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241348, 33.207386, 38.695938>,  <32.658939, 32.789188, 38.954651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241348, 33.207386, 38.695938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376209, 32.831093, 38.681213>,  <33.457127, 32.605316, 38.672379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376209, 32.831093, 38.681213>,  <33.241348, 33.207386, 38.695938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376209, 32.831093, 38.681213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258227, 0.130010, -0.957296,
		0.905344, 0.313248, 0.286755,
		0.337152, -0.940730, -0.036814,
		33.477356, 32.548874, 38.670170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967484, 33.264408, 38.310001>,  <33.241348, 33.207386, 38.695938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967484, 33.264408, 38.310001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840038, 32.887768, 38.266399>,  <33.763569, 32.661785, 38.240238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840038, 32.887768, 38.266399>,  <33.967484, 33.264408, 38.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840038, 32.887768, 38.266399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194425, 0.047630, -0.979761,
		0.927730, -0.333359, 0.167894,
		-0.318615, -0.941596, -0.109001,
		33.744453, 32.605289, 38.233700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522766, 32.821697, 38.051758>,  <33.967484, 33.264408, 38.310001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522766, 32.821697, 38.051758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187477, 32.615948, 37.979313>,  <33.986305, 32.492500, 37.935844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187477, 32.615948, 37.979313>,  <34.522766, 32.821697, 38.051758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187477, 32.615948, 37.979313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239638, -0.049107, -0.969620,
		0.489851, -0.856160, 0.164425,
		-0.838224, -0.514372, -0.181113,
		33.936008, 32.461636, 37.924980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736141, 32.348007, 37.590580>,  <34.522766, 32.821697, 38.051758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736141, 32.348007, 37.590580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346249, 32.279202, 37.533562>,  <34.112312, 32.237919, 37.499352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346249, 32.279202, 37.533562>,  <34.736141, 32.348007, 37.590580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346249, 32.279202, 37.533562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160759, -0.096999, -0.982216,
		0.155127, -0.980308, 0.122200,
		-0.974727, -0.172013, -0.142546,
		34.053829, 32.227596, 37.490799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668007, 31.757668, 37.053684>,  <34.736141, 32.348007, 37.590580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668007, 31.757668, 37.053684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324375, 31.962406, 37.053299>,  <34.118198, 32.085251, 37.053070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324375, 31.962406, 37.053299>,  <34.668007, 31.757668, 37.053684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324375, 31.962406, 37.053299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031406, 0.050837, -0.998213,
		-0.510883, -0.857571, -0.059749,
		-0.859076, 0.511847, -0.000961,
		34.066650, 32.115959, 37.053009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329102, 31.470665, 36.473499>,  <34.668007, 31.757668, 37.053684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329102, 31.470665, 36.473499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175209, 31.829460, 36.560585>,  <34.082874, 32.044739, 36.612839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175209, 31.829460, 36.560585>,  <34.329102, 31.470665, 36.473499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175209, 31.829460, 36.560585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202916, 0.312292, -0.928062,
		-0.900450, -0.312872, -0.302161,
		-0.384727, 0.896986, 0.217717,
		34.059792, 32.098557, 36.625900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164612, 31.636049, 35.865620>,  <34.329102, 31.470665, 36.473499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164612, 31.636049, 35.865620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131546, 31.989433, 36.050083>,  <34.111706, 32.201466, 36.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131546, 31.989433, 36.050083>,  <34.164612, 31.636049, 35.865620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131546, 31.989433, 36.050083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133502, 0.468383, -0.873381,
		-0.987595, -0.010629, -0.156660,
		-0.082660, 0.883461, 0.461154,
		34.106747, 32.254471, 36.188431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651394, 32.046177, 35.399529>,  <34.164612, 31.636049, 35.865620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651394, 32.046177, 35.399529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884121, 32.272144, 35.633572>,  <34.023758, 32.407722, 35.773998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884121, 32.272144, 35.633572>,  <33.651394, 32.046177, 35.399529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884121, 32.272144, 35.633572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248527, 0.561516, -0.789262,
		-0.774416, 0.604624, 0.186304,
		0.581820, 0.564916, 0.585112,
		34.058666, 32.441620, 35.809105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696663, 32.696758, 35.084644>,  <33.651394, 32.046177, 35.399529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696663, 32.696758, 35.084644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031681, 32.711262, 35.302711>,  <34.232693, 32.719963, 35.433552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031681, 32.711262, 35.302711>,  <33.696663, 32.696758, 35.084644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031681, 32.711262, 35.302711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485517, 0.408251, -0.773049,
		-0.250593, 0.912149, 0.324324,
		0.837542, 0.036256, 0.545169,
		34.282944, 32.722137, 35.466263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033535, 33.388630, 34.918964>,  <33.696663, 32.696758, 35.084644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033535, 33.388630, 34.918964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314400, 33.135574, 35.049652>,  <34.482918, 32.983742, 35.128063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314400, 33.135574, 35.049652>,  <34.033535, 33.388630, 34.918964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314400, 33.135574, 35.049652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582951, 0.247321, -0.773951,
		0.408826, 0.733896, 0.542455,
		0.702160, -0.632636, 0.326715,
		34.525047, 32.945782, 35.147667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660782, 33.725933, 34.797417>,  <34.033535, 33.388630, 34.918964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660782, 33.725933, 34.797417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779522, 33.350307, 34.866745>,  <34.850765, 33.124931, 34.908344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779522, 33.350307, 34.866745>,  <34.660782, 33.725933, 34.797417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779522, 33.350307, 34.866745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686802, 0.083852, -0.721992,
		0.663462, 0.333364, 0.669841,
		0.296853, -0.939062, 0.173323,
		34.868576, 33.068588, 34.918743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427235, 33.701553, 34.762108>,  <34.660782, 33.725933, 34.797417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427235, 33.701553, 34.762108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293762, 33.327629, 34.713486>,  <35.213676, 33.103275, 34.684315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293762, 33.327629, 34.713486>,  <35.427235, 33.701553, 34.762108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293762, 33.327629, 34.713486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669903, -0.144429, -0.728265,
		0.663237, -0.324440, 0.674429,
		-0.333685, -0.934815, -0.121553,
		35.193657, 33.047184, 34.677021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032822, 33.169735, 34.730198>,  <35.427235, 33.701553, 34.762108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032822, 33.169735, 34.730198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705669, 33.020763, 34.554756>,  <35.509380, 32.931381, 34.449490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705669, 33.020763, 34.554756>,  <36.032822, 33.169735, 34.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705669, 33.020763, 34.554756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547187, -0.267690, -0.793050,
		0.177940, -0.888618, 0.422723,
		-0.817877, -0.372424, -0.438607,
		35.460304, 32.909035, 34.423176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243664, 32.480797, 34.532467>,  <36.032822, 33.169735, 34.730198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243664, 32.480797, 34.532467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933693, 32.599857, 34.309433>,  <35.747711, 32.671291, 34.175613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933693, 32.599857, 34.309433>,  <36.243664, 32.480797, 34.532467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933693, 32.599857, 34.309433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477355, -0.302604, -0.824962,
		-0.414277, -0.905447, 0.092409,
		-0.774923, 0.297651, -0.557582,
		35.701214, 32.689152, 34.142159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808613, 32.422020, 34.148033>,  <36.243664, 32.480797, 34.532467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808613, 32.422020, 34.148033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178223, 32.462296, 34.295567>,  <37.399990, 32.486462, 34.384087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178223, 32.462296, 34.295567>,  <36.808613, 32.422020, 34.148033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178223, 32.462296, 34.295567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236076, -0.608573, 0.757566,
		0.300740, -0.787084, -0.538567,
		0.924026, 0.100688, 0.368834,
		37.455429, 32.492500, 34.406216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043819, 31.890179, 34.408333>,  <36.808613, 32.422020, 34.148033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043819, 31.890179, 34.408333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258034, 32.154648, 34.618496>,  <37.386562, 32.313328, 34.744595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258034, 32.154648, 34.618496>,  <37.043819, 31.890179, 34.408333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258034, 32.154648, 34.618496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122486, -0.554754, 0.822949,
		0.835585, -0.505071, -0.216105,
		0.535533, 0.661174, 0.525408,
		37.418694, 32.353001, 34.776119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453228, 31.460617, 34.710442>,  <37.043819, 31.890179, 34.408333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453228, 31.460617, 34.710442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483879, 31.787647, 34.938721>,  <37.502270, 31.983866, 35.075687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483879, 31.787647, 34.938721>,  <37.453228, 31.460617, 34.710442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483879, 31.787647, 34.938721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267117, -0.534629, 0.801761,
		0.960613, -0.213878, 0.177423,
		0.076624, 0.817574, 0.570702,
		37.506866, 32.032921, 35.109932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887798, 31.238241, 35.265663>,  <37.453228, 31.460617, 34.710442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887798, 31.238241, 35.265663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678616, 31.557667, 35.384869>,  <37.553104, 31.749323, 35.456390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678616, 31.557667, 35.384869>,  <37.887798, 31.238241, 35.265663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678616, 31.557667, 35.384869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117455, -0.413815, 0.902752,
		0.844228, 0.437097, 0.310203,
		-0.522956, 0.798563, 0.298015,
		37.521729, 31.797235, 35.474274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283726, 31.585751, 35.911530>,  <37.887798, 31.238241, 35.265663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283726, 31.585751, 35.911530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903500, 31.709158, 35.925663>,  <37.675365, 31.783201, 35.934143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903500, 31.709158, 35.925663>,  <38.283726, 31.585751, 35.911530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903500, 31.709158, 35.925663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029927, -0.204261, 0.978459,
		0.309088, 0.929029, 0.203396,
		-0.950563, 0.308517, 0.035331,
		37.618332, 31.801714, 35.936264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263641, 31.756191, 36.634945>,  <38.283726, 31.585751, 35.911530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263641, 31.756191, 36.634945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878223, 31.780853, 36.530804>,  <37.646973, 31.795650, 36.468319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878223, 31.780853, 36.530804>,  <38.263641, 31.756191, 36.634945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878223, 31.780853, 36.530804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266014, -0.116505, 0.956903,
		0.028667, 0.991274, 0.128660,
		-0.963543, 0.061657, -0.260353,
		37.589161, 31.799351, 36.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858925, 32.289349, 37.016716>,  <38.263641, 31.756191, 36.634945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858925, 32.289349, 37.016716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569122, 32.041489, 36.895969>,  <37.395241, 31.892773, 36.823521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569122, 32.041489, 36.895969>,  <37.858925, 32.289349, 37.016716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569122, 32.041489, 36.895969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414884, 0.042314, 0.908890,
		-0.550423, 0.783734, -0.287741,
		-0.724504, -0.619653, -0.301868,
		37.351772, 31.855593, 36.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213223, 32.548401, 37.308346>,  <37.858925, 32.289349, 37.016716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213223, 32.548401, 37.308346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147038, 32.164490, 37.217617>,  <37.107327, 31.934143, 37.163181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147038, 32.164490, 37.217617>,  <37.213223, 32.548401, 37.308346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147038, 32.164490, 37.217617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519637, -0.110629, 0.847194,
		-0.838212, 0.258045, -0.480431,
		-0.165465, -0.959778, -0.226820,
		37.097397, 31.876556, 37.149570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464024, 32.422844, 37.544384>,  <37.213223, 32.548401, 37.308346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464024, 32.422844, 37.544384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636566, 32.063354, 37.512848>,  <36.740093, 31.847660, 37.493927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636566, 32.063354, 37.512848>,  <36.464024, 32.422844, 37.544384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636566, 32.063354, 37.512848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487916, -0.305899, 0.817535,
		-0.758858, -0.314187, -0.570457,
		0.431361, -0.898728, -0.078837,
		36.765976, 31.793736, 37.489197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966309, 32.017155, 37.884388>,  <36.464024, 32.422844, 37.544384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966309, 32.017155, 37.884388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288479, 31.781143, 37.861919>,  <36.481781, 31.639536, 37.848438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288479, 31.781143, 37.861919>,  <35.966309, 32.017155, 37.884388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288479, 31.781143, 37.861919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206054, -0.367605, 0.906867,
		-0.555726, -0.718840, -0.417657,
		0.805425, -0.590030, -0.056168,
		36.530106, 31.604134, 37.845070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719303, 31.341133, 38.011139>,  <35.966309, 32.017155, 37.884388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719303, 31.341133, 38.011139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106537, 31.353895, 38.110569>,  <36.338879, 31.361553, 38.170227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106537, 31.353895, 38.110569>,  <35.719303, 31.341133, 38.011139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106537, 31.353895, 38.110569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218988, -0.374634, 0.900940,
		0.121873, -0.926624, -0.355690,
		0.968087, 0.031908, 0.248578,
		36.396961, 31.363468, 38.185143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879616, 30.650238, 38.324432>,  <35.719303, 31.341133, 38.011139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879616, 30.650238, 38.324432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153412, 30.907873, 38.461029>,  <36.317692, 31.062454, 38.542988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153412, 30.907873, 38.461029>,  <35.879616, 30.650238, 38.324432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153412, 30.907873, 38.461029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017529, -0.453753, 0.890955,
		0.728808, -0.615839, -0.299301,
		0.684494, 0.644088, 0.341494,
		36.358761, 31.101099, 38.563477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087536, 30.177612, 38.790604>,  <35.879616, 30.650238, 38.324432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087536, 30.177612, 38.790604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264690, 30.527767, 38.868107>,  <36.370983, 30.737860, 38.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264690, 30.527767, 38.868107>,  <36.087536, 30.177612, 38.790604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264690, 30.527767, 38.868107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144230, -0.282859, 0.948256,
		0.884899, -0.392026, -0.251533,
		0.442889, 0.875389, 0.193760,
		36.397556, 30.790384, 38.926235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802399, 30.024521, 38.982494>,  <36.087536, 30.177612, 38.790604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802399, 30.024521, 38.982494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683784, 30.366432, 39.152870>,  <36.612617, 30.571579, 39.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683784, 30.366432, 39.152870>,  <36.802399, 30.024521, 38.982494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683784, 30.366432, 39.152870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172345, -0.390779, 0.904206,
		0.939343, 0.341536, -0.031438,
		-0.296534, 0.854778, 0.425937,
		36.594826, 30.622866, 39.280651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173428, 29.985004, 39.687531>,  <36.802399, 30.024521, 38.982494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173428, 29.985004, 39.687531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903252, 30.275469, 39.738869>,  <36.741146, 30.449747, 39.769672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903252, 30.275469, 39.738869>,  <37.173428, 29.985004, 39.687531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903252, 30.275469, 39.738869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056863, -0.224823, 0.972739,
		0.735223, 0.649724, 0.193145,
		-0.675436, 0.726163, 0.128350,
		36.700623, 30.493319, 39.777374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251266, 30.211391, 40.364964>,  <37.173428, 29.985004, 39.687531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251266, 30.211391, 40.364964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888340, 30.366385, 40.299686>,  <36.670582, 30.459379, 40.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888340, 30.366385, 40.299686>,  <37.251266, 30.211391, 40.364964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888340, 30.366385, 40.299686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130762, 0.108832, 0.985422,
		0.399593, 0.915431, -0.048078,
		-0.907319, 0.387481, -0.163192,
		36.616146, 30.482628, 40.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210461, 30.822006, 40.746262>,  <37.251266, 30.211391, 40.364964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210461, 30.822006, 40.746262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844601, 30.671549, 40.687023>,  <36.625084, 30.581274, 40.651482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844601, 30.671549, 40.687023>,  <37.210461, 30.822006, 40.746262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844601, 30.671549, 40.687023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265145, 0.281672, 0.922149,
		-0.305147, 0.882710, -0.357364,
		-0.914649, -0.376144, -0.148095,
		36.570206, 30.558706, 40.642593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749199, 31.350061, 41.042873>,  <37.210461, 30.822006, 40.746262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749199, 31.350061, 41.042873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540592, 31.010242, 41.011135>,  <36.415428, 30.806351, 40.992092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540592, 31.010242, 41.011135>,  <36.749199, 31.350061, 41.042873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540592, 31.010242, 41.011135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569167, 0.277096, 0.774123,
		-0.635666, 0.448877, -0.628043,
		-0.521514, -0.849545, -0.079346,
		36.384136, 30.755379, 40.987331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971516, 31.533106, 41.138798>,  <36.749199, 31.350061, 41.042873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971516, 31.533106, 41.138798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973412, 31.141251, 41.219078>,  <35.974548, 30.906137, 41.267246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973412, 31.141251, 41.219078>,  <35.971516, 31.533106, 41.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973412, 31.141251, 41.219078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562452, 0.163339, 0.810536,
		-0.826816, -0.116727, -0.550227,
		0.004738, -0.979640, 0.200704,
		35.974834, 30.847359, 41.279289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229092, 31.294386, 41.331215>,  <35.971516, 31.533106, 41.138798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229092, 31.294386, 41.331215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461937, 30.999222, 41.467823>,  <35.601643, 30.822123, 41.549789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461937, 30.999222, 41.467823>,  <35.229092, 31.294386, 41.331215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461937, 30.999222, 41.467823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524685, -0.020014, 0.851061,
		-0.621173, -0.674601, -0.398821,
		0.582109, -0.737911, 0.341520,
		35.636570, 30.777849, 41.570278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786953, 30.858953, 41.668770>,  <35.229092, 31.294386, 41.331215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786953, 30.858953, 41.668770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153580, 30.770048, 41.801743>,  <35.373554, 30.716705, 41.881527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153580, 30.770048, 41.801743>,  <34.786953, 30.858953, 41.668770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153580, 30.770048, 41.801743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318317, 0.097646, 0.942942,
		-0.242040, -0.970085, 0.018750,
		0.916564, -0.222262, 0.332429,
		35.428551, 30.703369, 41.901470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675419, 30.445900, 42.273281>,  <34.786953, 30.858953, 41.668770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675419, 30.445900, 42.273281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050457, 30.582653, 42.298672>,  <35.275478, 30.664705, 42.313908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050457, 30.582653, 42.298672>,  <34.675419, 30.445900, 42.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050457, 30.582653, 42.298672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108807, 0.115062, 0.987381,
		0.330264, -0.932672, 0.145081,
		0.937597, 0.341882, 0.063480,
		35.331738, 30.685217, 42.317715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082851, 30.066690, 42.797997>,  <34.675419, 30.445900, 42.273281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082851, 30.066690, 42.797997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278339, 30.415661, 42.795856>,  <35.395630, 30.625044, 42.794571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278339, 30.415661, 42.795856>,  <35.082851, 30.066690, 42.797997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278339, 30.415661, 42.795856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138730, 0.083766, 0.986781,
		0.861341, -0.481515, 0.161970,
		0.488718, 0.872425, -0.005350,
		35.424953, 30.677389, 42.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539791, 30.080723, 43.329609>,  <35.082851, 30.066690, 42.797997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539791, 30.080723, 43.329609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461990, 30.468866, 43.272232>,  <35.415310, 30.701752, 43.237804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461990, 30.468866, 43.272232>,  <35.539791, 30.080723, 43.329609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461990, 30.468866, 43.272232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205021, 0.102789, 0.973345,
		0.959238, 0.218723, 0.178951,
		-0.194498, 0.970358, -0.143442,
		35.403641, 30.759974, 43.229198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883995, 30.317846, 43.795448>,  <35.539791, 30.080723, 43.329609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883995, 30.317846, 43.795448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618084, 30.604261, 43.710255>,  <35.458538, 30.776110, 43.659138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618084, 30.604261, 43.710255>,  <35.883995, 30.317846, 43.795448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618084, 30.604261, 43.710255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165829, 0.136550, 0.976655,
		0.728406, 0.684575, 0.027965,
		-0.664775, 0.716038, -0.212986,
		35.418652, 30.819073, 43.646358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055004, 30.871733, 44.315323>,  <35.883995, 30.317846, 43.795448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055004, 30.871733, 44.315323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684856, 30.942766, 44.181366>,  <35.462769, 30.985386, 44.100990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684856, 30.942766, 44.181366>,  <36.055004, 30.871733, 44.315323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684856, 30.942766, 44.181366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290163, 0.236636, 0.927259,
		0.243913, 0.955232, -0.167448,
		-0.925371, 0.177583, -0.334892,
		35.407246, 30.996040, 44.080898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835354, 31.606916, 44.553036>,  <36.055004, 30.871733, 44.315323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835354, 31.606916, 44.553036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498249, 31.405315, 44.477425>,  <35.295986, 31.284355, 44.432056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498249, 31.405315, 44.477425>,  <35.835354, 31.606916, 44.553036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498249, 31.405315, 44.477425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406257, 0.365160, 0.837624,
		-0.353139, 0.782713, -0.512498,
		-0.842762, -0.504004, -0.189030,
		35.245419, 31.254114, 44.420715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355087, 32.072903, 44.658585>,  <35.835354, 31.606916, 44.553036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355087, 32.072903, 44.658585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143089, 31.735113, 44.689495>,  <35.015888, 31.532440, 44.708042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143089, 31.735113, 44.689495>,  <35.355087, 32.072903, 44.658585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143089, 31.735113, 44.689495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311363, 0.278552, 0.908549,
		-0.788768, 0.457469, -0.410569,
		-0.529998, -0.844471, 0.077274,
		34.984089, 31.481771, 44.712677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766544, 32.336872, 44.970375>,  <35.355087, 32.072903, 44.658585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766544, 32.336872, 44.970375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734123, 31.940786, 45.015827>,  <34.714672, 31.703136, 45.043098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734123, 31.940786, 45.015827>,  <34.766544, 32.336872, 44.970375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734123, 31.940786, 45.015827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281627, 0.132110, 0.950386,
		-0.956095, 0.045027, -0.289578,
		-0.081049, -0.990212, 0.113629,
		34.709808, 31.643723, 45.049915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010883, 32.162395, 45.140423>,  <34.766544, 32.336872, 44.970375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010883, 32.162395, 45.140423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250858, 31.876520, 45.284252>,  <34.394844, 31.704994, 45.370548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250858, 31.876520, 45.284252>,  <34.010883, 32.162395, 45.140423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250858, 31.876520, 45.284252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442203, 0.078325, 0.893488,
		-0.666731, -0.695042, -0.269048,
		0.599939, -0.714690, 0.359571,
		34.430840, 31.662113, 45.392124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592590, 31.750959, 45.464340>,  <34.010883, 32.162395, 45.140423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592590, 31.750959, 45.464340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950195, 31.690901, 45.633194>,  <34.164757, 31.654865, 45.734505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950195, 31.690901, 45.633194>,  <33.592590, 31.750959, 45.464340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950195, 31.690901, 45.633194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376603, 0.258562, 0.889559,
		-0.242713, -0.954254, 0.174611,
		0.894014, -0.150149, 0.422132,
		34.218399, 31.645857, 45.759834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503689, 31.438864, 46.074768>,  <33.592590, 31.750959, 45.464340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503689, 31.438864, 46.074768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859669, 31.609159, 46.140167>,  <34.073257, 31.711336, 46.179405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859669, 31.609159, 46.140167>,  <33.503689, 31.438864, 46.074768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859669, 31.609159, 46.140167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287676, 0.245881, 0.925627,
		0.353876, -0.870797, 0.341298,
		0.889952, 0.425740, 0.163496,
		34.126656, 31.736881, 46.189217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613007, 31.368816, 46.788536>,  <33.503689, 31.438864, 46.074768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613007, 31.368816, 46.788536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875820, 31.655201, 46.694130>,  <34.033508, 31.827032, 46.637486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875820, 31.655201, 46.694130>,  <33.613007, 31.368816, 46.788536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875820, 31.655201, 46.694130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083946, 0.380615, 0.920915,
		0.749169, -0.585264, 0.310180,
		0.657039, 0.715959, -0.236015,
		34.072933, 31.869989, 46.623325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030823, 31.354923, 47.326733>,  <33.613007, 31.368816, 46.788536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030823, 31.354923, 47.326733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101505, 31.718033, 47.174561>,  <34.143913, 31.935898, 47.083260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101505, 31.718033, 47.174561>,  <34.030823, 31.354923, 47.326733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101505, 31.718033, 47.174561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092202, 0.400076, 0.911832,
		0.979935, -0.126052, 0.154395,
		0.176708, 0.907772, -0.380426,
		34.154518, 31.990364, 47.060432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461166, 31.639999, 47.817341>,  <34.030823, 31.354923, 47.326733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461166, 31.639999, 47.817341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332817, 31.955233, 47.607212>,  <34.255806, 32.144375, 47.481136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332817, 31.955233, 47.607212>,  <34.461166, 31.639999, 47.817341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332817, 31.955233, 47.607212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039228, 0.565232, 0.823998,
		0.946310, 0.243790, -0.212283,
		-0.320872, 0.788085, -0.525321,
		34.236557, 32.191658, 47.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896236, 32.166485, 47.961681>,  <34.461166, 31.639999, 47.817341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896236, 32.166485, 47.961681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559250, 32.344677, 47.840488>,  <34.357059, 32.451591, 47.767773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559250, 32.344677, 47.840488>,  <34.896236, 32.166485, 47.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559250, 32.344677, 47.840488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116416, 0.398569, 0.909720,
		0.526022, 0.801680, -0.283920,
		-0.842466, 0.445480, -0.302984,
		34.306511, 32.478321, 47.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948719, 32.888985, 48.101765>,  <34.896236, 32.166485, 47.961681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948719, 32.888985, 48.101765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553814, 32.825382, 48.103722>,  <34.316872, 32.787220, 48.104897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553814, 32.825382, 48.103722>,  <34.948719, 32.888985, 48.101765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553814, 32.825382, 48.103722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082390, 0.537393, 0.839298,
		-0.136078, 0.828207, -0.543650,
		-0.987266, -0.159002, 0.004891,
		34.257633, 32.777683, 48.105190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404926, 33.472866, 48.202049>,  <34.948719, 32.888985, 48.101765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404926, 33.472866, 48.202049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264275, 33.132542, 48.358246>,  <34.179886, 32.928349, 48.451965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264275, 33.132542, 48.358246>,  <34.404926, 33.472866, 48.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264275, 33.132542, 48.358246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220254, 0.480607, 0.848826,
		-0.909862, 0.212461, -0.356387,
		-0.351625, -0.850810, 0.390491,
		34.158787, 32.877300, 48.475391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436001, 34.035839, 48.632961>,  <34.404926, 33.472866, 48.202049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436001, 34.035839, 48.632961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635506, 34.361450, 48.752018>,  <34.755207, 34.556816, 48.823452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635506, 34.361450, 48.752018>,  <34.436001, 34.035839, 48.632961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635506, 34.361450, 48.752018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477833, 0.028262, -0.877996,
		-0.723127, 0.580135, -0.374875,
		0.498761, 0.814030, 0.297644,
		34.785133, 34.605659, 48.841312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278549, 34.455101, 48.145763>,  <34.436001, 34.035839, 48.632961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278549, 34.455101, 48.145763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622375, 34.584457, 48.304035>,  <34.828671, 34.662071, 48.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622375, 34.584457, 48.304035>,  <34.278549, 34.455101, 48.145763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622375, 34.584457, 48.304035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413420, 0.015075, -0.910416,
		-0.300381, 0.946147, -0.120736,
		0.859567, 0.323387, 0.395684,
		34.880245, 34.681473, 48.422741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502819, 34.994572, 47.744045>,  <34.278549, 34.455101, 48.145763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502819, 34.994572, 47.744045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843689, 34.903442, 47.932468>,  <35.048210, 34.848763, 48.045521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.843689, 34.903442, 47.932468>,  <34.502819, 34.994572, 47.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843689, 34.903442, 47.932468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439465, -0.177020, -0.880644,
		0.284018, 0.957476, -0.050731,
		0.852176, -0.227825, 0.471054,
		35.099342, 34.835094, 48.073784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987961, 35.410900, 47.476719>,  <34.502819, 34.994572, 47.744045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987961, 35.410900, 47.476719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169971, 35.081348, 47.611877>,  <35.279179, 34.883617, 47.692970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169971, 35.081348, 47.611877>,  <34.987961, 35.410900, 47.476719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169971, 35.081348, 47.611877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460956, -0.106729, -0.880981,
		0.761887, 0.556623, 0.331209,
		0.455025, -0.823881, 0.337894,
		35.306480, 34.834183, 47.713245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468918, 35.543827, 47.084606>,  <34.987961, 35.410900, 47.476719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468918, 35.543827, 47.084606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540436, 35.177876, 47.229397>,  <35.583347, 34.958305, 47.316269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540436, 35.177876, 47.229397>,  <35.468918, 35.543827, 47.084606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540436, 35.177876, 47.229397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535269, -0.218243, -0.816000,
		0.825541, 0.339654, 0.450685,
		0.178799, -0.914880, 0.361975,
		35.594074, 34.903412, 47.337990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165379, 35.517326, 47.057564>,  <35.468918, 35.543827, 47.084606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165379, 35.517326, 47.057564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022369, 35.144604, 47.032532>,  <35.936565, 34.920971, 47.017513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022369, 35.144604, 47.032532>,  <36.165379, 35.517326, 47.057564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022369, 35.144604, 47.032532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514333, -0.140529, -0.845998,
		0.779511, -0.334650, 0.529501,
		-0.357524, -0.931805, -0.062578,
		35.915112, 34.865063, 47.013760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746521, 35.157307, 46.808125>,  <36.165379, 35.517326, 47.057564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746521, 35.157307, 46.808125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430885, 34.917336, 46.755310>,  <36.241505, 34.773354, 46.723621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430885, 34.917336, 46.755310>,  <36.746521, 35.157307, 46.808125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430885, 34.917336, 46.755310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373450, -0.297848, -0.878534,
		0.487727, -0.742548, 0.459069,
		-0.789087, -0.599924, -0.132036,
		36.194160, 34.737358, 46.715698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972424, 34.401096, 46.599213>,  <36.746521, 35.157307, 46.808125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972424, 34.401096, 46.599213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588806, 34.409653, 46.486237>,  <36.358635, 34.414787, 46.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588806, 34.409653, 46.486237>,  <36.972424, 34.401096, 46.599213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588806, 34.409653, 46.486237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233042, -0.507204, -0.829720,
		-0.161007, -0.861561, 0.481446,
		-0.959046, 0.021394, -0.282443,
		36.301094, 34.416073, 46.401505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879158, 33.683731, 46.315804>,  <36.972424, 34.401096, 46.599213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879158, 33.683731, 46.315804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566685, 33.891178, 46.176781>,  <36.379200, 34.015644, 46.093369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566685, 33.891178, 46.176781>,  <36.879158, 33.683731, 46.315804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566685, 33.891178, 46.176781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054669, -0.497744, -0.865600,
		-0.621907, -0.695190, 0.360475,
		-0.781180, 0.518616, -0.347556,
		36.332329, 34.046764, 46.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300468, 33.180073, 46.137119>,  <36.879158, 33.683731, 46.315804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300468, 33.180073, 46.137119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267754, 33.515148, 45.921124>,  <36.248123, 33.716194, 45.791527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267754, 33.515148, 45.921124>,  <36.300468, 33.180073, 46.137119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267754, 33.515148, 45.921124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058960, -0.544927, -0.836408,
		-0.994904, -0.036570, 0.093959,
		-0.081788, 0.837686, -0.539994,
		36.243217, 33.766453, 45.759125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790592, 33.055950, 45.641182>,  <36.300468, 33.180073, 46.137119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790592, 33.055950, 45.641182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988415, 33.381748, 45.519844>,  <36.107109, 33.577225, 45.447041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988415, 33.381748, 45.519844>,  <35.790592, 33.055950, 45.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988415, 33.381748, 45.519844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167571, -0.431824, -0.886255,
		-0.852840, 0.387468, -0.350045,
		0.494553, 0.814492, -0.303348,
		36.136780, 33.626095, 45.428841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457600, 33.269497, 44.969761>,  <35.790592, 33.055950, 45.641182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457600, 33.269497, 44.969761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833904, 33.405102, 44.972374>,  <36.059685, 33.486465, 44.973942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833904, 33.405102, 44.972374>,  <35.457600, 33.269497, 44.969761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833904, 33.405102, 44.972374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068784, -0.171936, -0.982704,
		-0.332025, 0.924937, -0.185069,
		0.940759, 0.339012, 0.006533,
		36.116131, 33.506805, 44.974335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514164, 33.772648, 44.355595>,  <35.457600, 33.269497, 44.969761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514164, 33.772648, 44.355595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889339, 33.654942, 44.429001>,  <36.114445, 33.584316, 44.473045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889339, 33.654942, 44.429001>,  <35.514164, 33.772648, 44.355595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889339, 33.654942, 44.429001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178781, -0.043158, -0.982942,
		0.297170, 0.954748, 0.012130,
		0.937938, -0.294270, 0.183516,
		36.170719, 33.566662, 44.484055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045753, 34.125046, 43.829460>,  <35.514164, 33.772648, 44.355595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045753, 34.125046, 43.829460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245789, 33.807884, 43.968719>,  <36.365810, 33.617588, 44.052277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245789, 33.807884, 43.968719>,  <36.045753, 34.125046, 43.829460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245789, 33.807884, 43.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402292, -0.143305, -0.904226,
		0.766859, 0.592252, 0.247315,
		0.500089, -0.792907, 0.348153,
		36.395817, 33.570011, 44.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737942, 34.121639, 43.582668>,  <36.045753, 34.125046, 43.829460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737942, 34.121639, 43.582668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672462, 33.737457, 43.672756>,  <36.633175, 33.506947, 43.726810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672462, 33.737457, 43.672756>,  <36.737942, 34.121639, 43.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672462, 33.737457, 43.672756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600782, -0.278139, -0.749466,
		0.782473, 0.012621, 0.622557,
		-0.163698, -0.960458, 0.225219,
		36.623352, 33.449318, 43.740322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402382, 33.911915, 43.588646>,  <36.737942, 34.121639, 43.582668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402382, 33.911915, 43.588646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176117, 33.582798, 43.566566>,  <37.040359, 33.385330, 43.553318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176117, 33.582798, 43.566566>,  <37.402382, 33.911915, 43.588646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176117, 33.582798, 43.566566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694666, -0.439364, -0.569560,
		0.444375, -0.360523, 0.820094,
		-0.565659, -0.822790, -0.055200,
		37.006420, 33.335960, 43.550007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829380, 33.457787, 43.431515>,  <37.402382, 33.911915, 43.588646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829380, 33.457787, 43.431515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481827, 33.281185, 43.341976>,  <37.273293, 33.175224, 43.288254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481827, 33.281185, 43.341976>,  <37.829380, 33.457787, 43.431515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481827, 33.281185, 43.341976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436416, -0.469827, -0.767335,
		0.233614, -0.764418, 0.600907,
		-0.868887, -0.441506, -0.223846,
		37.221161, 33.148735, 43.274822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978077, 32.643345, 43.370914>,  <37.829380, 33.457787, 43.431515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978077, 32.643345, 43.370914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638622, 32.713886, 43.171429>,  <37.434948, 32.756210, 43.051739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638622, 32.713886, 43.171429>,  <37.978077, 32.643345, 43.370914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638622, 32.713886, 43.171429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351489, -0.516562, -0.780781,
		-0.395303, -0.837894, 0.376391,
		-0.848641, 0.176348, -0.498709,
		37.384029, 32.766792, 43.021816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713123, 31.953671, 43.049702>,  <37.978077, 32.643345, 43.370914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713123, 31.953671, 43.049702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525402, 32.248234, 42.854786>,  <37.412769, 32.424973, 42.737835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525402, 32.248234, 42.854786>,  <37.713123, 31.953671, 43.049702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525402, 32.248234, 42.854786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292316, -0.391164, -0.872664,
		-0.833250, -0.551988, -0.031690,
		-0.469304, 0.736410, -0.487292,
		37.384609, 32.469158, 42.708599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478855, 31.638264, 42.479420>,  <37.713123, 31.953671, 43.049702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478855, 31.638264, 42.479420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427170, 32.024059, 42.387272>,  <37.396160, 32.255535, 42.331985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427170, 32.024059, 42.387272>,  <37.478855, 31.638264, 42.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427170, 32.024059, 42.387272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258359, -0.191545, -0.946869,
		-0.957369, -0.181863, -0.224434,
		-0.129212, 0.964487, -0.230366,
		37.388405, 32.313404, 42.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075260, 31.667629, 41.826462>,  <37.478855, 31.638264, 42.479420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075260, 31.667629, 41.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275574, 32.011074, 41.870281>,  <37.395763, 32.217140, 41.896572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275574, 32.011074, 41.870281>,  <37.075260, 31.667629, 41.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275574, 32.011074, 41.870281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205282, 0.005134, -0.978689,
		-0.840878, 0.512598, -0.173687,
		0.500783, 0.858613, 0.109544,
		37.425808, 32.268658, 41.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774632, 32.084175, 41.368958>,  <37.075260, 31.667629, 41.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774632, 32.084175, 41.368958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146145, 32.225315, 41.414322>,  <37.369053, 32.309998, 41.441540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146145, 32.225315, 41.414322>,  <36.774632, 32.084175, 41.368958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146145, 32.225315, 41.414322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117061, 0.011052, -0.993063,
		-0.351657, 0.935614, -0.031041,
		0.928781, 0.352851, 0.113411,
		37.424778, 32.331169, 41.448345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854633, 32.564289, 40.865482>,  <36.774632, 32.084175, 41.368958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854633, 32.564289, 40.865482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231621, 32.490189, 40.976788>,  <37.457813, 32.445728, 41.043571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231621, 32.490189, 40.976788>,  <36.854633, 32.564289, 40.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231621, 32.490189, 40.976788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295733, 0.073981, -0.952402,
		0.155848, 0.979902, 0.124510,
		0.942472, -0.185252, 0.278260,
		37.514362, 32.434612, 41.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216778, 33.169579, 40.707455>,  <36.854633, 32.564289, 40.865482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216778, 33.169579, 40.707455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468521, 32.859116, 40.722897>,  <37.619568, 32.672836, 40.732162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468521, 32.859116, 40.722897>,  <37.216778, 33.169579, 40.707455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468521, 32.859116, 40.722897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385848, 0.268973, -0.882482,
		0.674562, 0.570291, 0.468759,
		0.629355, -0.776158, 0.038606,
		37.657326, 32.626266, 40.734478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774273, 33.495358, 40.432426>,  <37.216778, 33.169579, 40.707455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774273, 33.495358, 40.432426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903854, 33.117981, 40.404190>,  <37.981602, 32.891556, 40.387249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903854, 33.117981, 40.404190>,  <37.774273, 33.495358, 40.432426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903854, 33.117981, 40.404190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486857, 0.230216, -0.842598,
		0.811189, 0.238594, 0.533897,
		0.323950, -0.943437, -0.070587,
		38.001038, 32.834949, 40.383015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626080, 33.464031, 40.351589>,  <37.774273, 33.495358, 40.432426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626080, 33.464031, 40.351589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398903, 33.175392, 40.193230>,  <38.262596, 33.002209, 40.098213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398903, 33.175392, 40.193230>,  <38.626080, 33.464031, 40.351589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398903, 33.175392, 40.193230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442989, 0.137405, -0.885935,
		0.693684, -0.678544, 0.241620,
		-0.567946, -0.721594, -0.395903,
		38.228519, 32.958916, 40.074459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059795, 32.991348, 40.148365>,  <38.626080, 33.464031, 40.351589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059795, 32.991348, 40.148365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750248, 32.935387, 39.901287>,  <38.564518, 32.901810, 39.753040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750248, 32.935387, 39.901287>,  <39.059795, 32.991348, 40.148365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750248, 32.935387, 39.901287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608232, 0.107741, -0.786413,
		0.176574, -0.984286, 0.001717,
		-0.773871, -0.139904, -0.617698,
		38.518085, 32.893417, 39.715977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399933, 32.812202, 39.516907>,  <39.059795, 32.991348, 40.148365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399933, 32.812202, 39.516907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022125, 32.836872, 39.387863>,  <38.795441, 32.851673, 39.310436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022125, 32.836872, 39.387863>,  <39.399933, 32.812202, 39.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022125, 32.836872, 39.387863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327449, 0.100312, -0.939529,
		-0.025580, -0.993043, -0.114941,
		-0.944522, 0.061671, -0.322605,
		38.738770, 32.855373, 39.291080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230690, 32.239304, 38.980988>,  <39.399933, 32.812202, 39.516907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230690, 32.239304, 38.980988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966808, 32.533901, 38.921158>,  <38.808479, 32.710659, 38.885258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966808, 32.533901, 38.921158>,  <39.230690, 32.239304, 38.980988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966808, 32.533901, 38.921158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362097, 0.137089, -0.922005,
		-0.658542, -0.662411, -0.357119,
		-0.659703, 0.736490, -0.149578,
		38.768898, 32.754848, 38.876286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895115, 32.156219, 38.225510>,  <39.230690, 32.239304, 38.980988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895115, 32.156219, 38.225510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817146, 32.534199, 38.330643>,  <38.770363, 32.760986, 38.393723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817146, 32.534199, 38.330643>,  <38.895115, 32.156219, 38.225510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817146, 32.534199, 38.330643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124607, 0.289656, -0.948985,
		-0.972870, -0.152231, -0.174209,
		-0.194926, 0.944947, 0.262829,
		38.758667, 32.817684, 38.409492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568264, 32.500366, 37.632660>,  <38.895115, 32.156219, 38.225510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568264, 32.500366, 37.632660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727833, 32.796150, 37.849567>,  <38.823574, 32.973621, 37.979713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727833, 32.796150, 37.849567>,  <38.568264, 32.500366, 37.632660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727833, 32.796150, 37.849567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451071, 0.356624, -0.818141,
		-0.798370, 0.570978, -0.191284,
		0.398924, 0.739462, 0.542269,
		38.847511, 33.017990, 38.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555668, 33.123379, 37.178429>,  <38.568264, 32.500366, 37.632660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555668, 33.123379, 37.178429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817734, 33.220711, 37.464520>,  <38.974972, 33.279110, 37.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817734, 33.220711, 37.464520>,  <38.555668, 33.123379, 37.178429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817734, 33.220711, 37.464520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546852, 0.500460, -0.671188,
		-0.521261, 0.830862, 0.194820,
		0.655164, 0.243326, 0.715229,
		39.014282, 33.293709, 37.679089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622147, 33.836834, 37.163273>,  <38.555668, 33.123379, 37.178429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622147, 33.836834, 37.163273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945515, 33.697559, 37.353100>,  <39.139538, 33.613995, 37.466995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945515, 33.697559, 37.353100>,  <38.622147, 33.836834, 37.163273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945515, 33.697559, 37.353100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579443, 0.612448, -0.537730,
		-0.103416, 0.709698, 0.696874,
		0.808425, -0.348189, 0.474567,
		39.188042, 33.593102, 37.495468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026493, 34.432728, 37.350159>,  <38.622147, 33.836834, 37.163273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026493, 34.432728, 37.350159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273624, 34.121120, 37.392902>,  <39.421902, 33.934155, 37.418549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273624, 34.121120, 37.392902>,  <39.026493, 34.432728, 37.350159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273624, 34.121120, 37.392902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756781, 0.552216, -0.349771,
		0.213468, 0.296968, 0.930721,
		0.617829, -0.779017, 0.106859,
		39.458973, 33.887417, 37.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612114, 34.673740, 37.910576>,  <39.026493, 34.432728, 37.350159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612114, 34.673740, 37.910576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698956, 34.398815, 37.633316>,  <39.751060, 34.233860, 37.466961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698956, 34.398815, 37.633316>,  <39.612114, 34.673740, 37.910576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698956, 34.398815, 37.633316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770158, 0.556904, -0.310991,
		0.599769, -0.466319, 0.650249,
		0.217105, -0.687317, -0.693153,
		39.764088, 34.192619, 37.425369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351067, 34.781799, 37.803726>,  <39.612114, 34.673740, 37.910576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351067, 34.781799, 37.803726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260078, 34.565811, 37.479580>,  <40.205486, 34.436218, 37.285091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260078, 34.565811, 37.479580>,  <40.351067, 34.781799, 37.803726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260078, 34.565811, 37.479580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789661, 0.384675, -0.477975,
		0.569820, -0.748637, 0.338893,
		-0.227466, -0.539971, -0.810365,
		40.191837, 34.403820, 37.236469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053848, 34.527885, 37.570866>,  <40.351067, 34.781799, 37.803726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053848, 34.527885, 37.570866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783485, 34.494633, 37.277950>,  <40.621269, 34.474682, 37.102203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783485, 34.494633, 37.277950>,  <41.053848, 34.527885, 37.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783485, 34.494633, 37.277950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705255, 0.215493, -0.675410,
		0.213872, -0.972970, -0.087109,
		-0.675925, -0.083017, -0.732279,
		40.580715, 34.469692, 37.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362522, 34.145466, 37.122097>,  <41.053848, 34.527885, 37.570866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362522, 34.145466, 37.122097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090221, 34.341419, 36.904255>,  <40.926842, 34.458992, 36.773548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090221, 34.341419, 36.904255>,  <41.362522, 34.145466, 37.122097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090221, 34.341419, 36.904255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694657, 0.195801, -0.692181,
		-0.232451, -0.849518, -0.473589,
		-0.680749, 0.489879, -0.544609,
		40.885998, 34.488384, 36.740871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440102, 34.070469, 36.488201>,  <41.362522, 34.145466, 37.122097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440102, 34.070469, 36.488201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226734, 34.403736, 36.429821>,  <41.098713, 34.603695, 36.394794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226734, 34.403736, 36.429821>,  <41.440102, 34.070469, 36.488201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226734, 34.403736, 36.429821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654408, 0.297178, -0.695295,
		-0.535924, -0.466392, -0.703750,
		-0.533419, 0.833165, -0.145946,
		41.066708, 34.653687, 36.386036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249214, 34.210876, 35.753197>,  <41.440102, 34.070469, 36.488201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249214, 34.210876, 35.753197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234554, 34.584908, 35.894215>,  <41.225758, 34.809326, 35.978825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234554, 34.584908, 35.894215>,  <41.249214, 34.210876, 35.753197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234554, 34.584908, 35.894215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781557, 0.246668, -0.572995,
		-0.622757, 0.254535, -0.739856,
		-0.036652, 0.935076, 0.352548,
		41.223560, 34.865429, 35.999977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196957, 34.782272, 35.128826>,  <41.249214, 34.210876, 35.753197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196957, 34.782272, 35.128826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385384, 34.893353, 35.463726>,  <41.498440, 34.959999, 35.664665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385384, 34.893353, 35.463726>,  <41.196957, 34.782272, 35.128826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385384, 34.893353, 35.463726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828204, 0.187446, -0.528149,
		-0.303604, 0.942204, -0.141690,
		0.471065, 0.277696, 0.837247,
		41.526703, 34.976662, 35.714901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585510, 35.452499, 35.223724>,  <41.196957, 34.782272, 35.128826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585510, 35.452499, 35.223724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788078, 35.187889, 35.444969>,  <41.909618, 35.029125, 35.577717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788078, 35.187889, 35.444969>,  <41.585510, 35.452499, 35.223724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788078, 35.187889, 35.444969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739906, 0.003970, -0.672698,
		0.442810, 0.749914, 0.491476,
		0.506417, -0.661524, 0.553108,
		41.940002, 34.989433, 35.610901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283768, 35.779938, 35.304050>,  <41.585510, 35.452499, 35.223724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283768, 35.779938, 35.304050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292698, 35.381329, 35.336155>,  <42.298054, 35.142162, 35.355415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292698, 35.381329, 35.336155>,  <42.283768, 35.779938, 35.304050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292698, 35.381329, 35.336155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860272, -0.021755, -0.509371,
		0.509347, 0.080414, 0.856796,
		0.022321, -0.996524, 0.080259,
		42.299393, 35.082371, 35.360233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947186, 35.786816, 35.380966>,  <42.283768, 35.779938, 35.304050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947186, 35.786816, 35.380966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761993, 35.454430, 35.257580>,  <42.650879, 35.254997, 35.183548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761993, 35.454430, 35.257580>,  <42.947186, 35.786816, 35.380966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761993, 35.454430, 35.257580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764394, -0.198136, -0.613550,
		0.448719, -0.519851, 0.726916,
		-0.462983, -0.830961, -0.308464,
		42.623100, 35.205143, 35.165039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436356, 35.262253, 35.400970>,  <42.947186, 35.786816, 35.380966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436356, 35.262253, 35.400970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169556, 35.200649, 35.109383>,  <43.009476, 35.163689, 34.934429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169556, 35.200649, 35.109383>,  <43.436356, 35.262253, 35.400970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169556, 35.200649, 35.109383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743013, -0.209955, -0.635492,
		-0.055181, -0.965506, 0.254467,
		-0.666998, -0.154005, -0.728969,
		42.969456, 35.154449, 34.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790043, 35.851650, 35.847736>,  <43.436356, 35.262253, 35.400970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790043, 35.851650, 35.847736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784370, 35.455673, 35.904030>,  <43.780968, 35.218086, 35.937805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.784370, 35.455673, 35.904030>,  <43.790043, 35.851650, 35.847736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784370, 35.455673, 35.904030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023187, 0.140386, 0.989825,
		-0.999631, 0.017300, 0.020963,
		-0.014181, -0.989946, 0.140735,
		43.780117, 35.158691, 35.946251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187740, 35.678928, 36.212887>,  <43.790043, 35.851650, 35.847736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187740, 35.678928, 36.212887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469498, 35.403385, 36.281372>,  <43.638550, 35.238060, 36.322464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469498, 35.403385, 36.281372>,  <43.187740, 35.678928, 36.212887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469498, 35.403385, 36.281372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016150, 0.225595, 0.974087,
		-0.709630, -0.688901, 0.147781,
		0.704389, -0.688855, 0.171215,
		43.680813, 35.196728, 36.332737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984024, 35.380062, 36.832928>,  <43.187740, 35.678928, 36.212887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984024, 35.380062, 36.832928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370411, 35.281300, 36.802094>,  <43.602242, 35.222042, 36.783592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370411, 35.281300, 36.802094>,  <42.984024, 35.380062, 36.832928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370411, 35.281300, 36.802094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092688, 0.052188, 0.994326,
		-0.241485, -0.967632, 0.073297,
		0.965968, -0.246908, -0.077085,
		43.660202, 35.207226, 36.778969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056255, 34.717213, 37.160400>,  <42.984024, 35.380062, 36.832928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056255, 34.717213, 37.160400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424500, 34.872486, 37.143459>,  <43.645447, 34.965649, 37.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424500, 34.872486, 37.143459>,  <43.056255, 34.717213, 37.160400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424500, 34.872486, 37.143459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005766, 0.094929, 0.995467,
		0.390443, -0.916680, 0.085155,
		0.920609, 0.388182, -0.042350,
		43.700684, 34.988941, 37.130753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506729, 34.328308, 37.692974>,  <43.056255, 34.717213, 37.160400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506729, 34.328308, 37.692974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670433, 34.677750, 37.587658>,  <43.768654, 34.887417, 37.524467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670433, 34.677750, 37.587658>,  <43.506729, 34.328308, 37.692974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670433, 34.677750, 37.587658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056111, 0.312113, 0.948386,
		0.910692, -0.373361, 0.176753,
		0.409258, 0.873605, -0.263289,
		43.793209, 34.939831, 37.508671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849407, 34.362442, 38.284954>,  <43.506729, 34.328308, 37.692974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849407, 34.362442, 38.284954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839973, 34.736458, 38.143448>,  <43.834312, 34.960865, 38.058544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839973, 34.736458, 38.143448>,  <43.849407, 34.362442, 38.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839973, 34.736458, 38.143448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001618, 0.353901, 0.935281,
		0.999720, 0.021487, -0.009860,
		-0.023586, 0.935036, -0.353767,
		43.832897, 35.016968, 38.037319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348782, 34.730122, 38.694794>,  <43.849407, 34.362442, 38.284954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348782, 34.730122, 38.694794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090343, 34.988934, 38.532845>,  <43.935280, 35.144222, 38.435677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090343, 34.988934, 38.532845>,  <44.348782, 34.730122, 38.694794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090343, 34.988934, 38.532845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035793, 0.504178, 0.862858,
		0.762420, 0.571976, -0.302586,
		-0.646091, 0.647030, -0.404869,
		43.896515, 35.183044, 38.411385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.537239, 35.417591, 38.953678>,  <44.348782, 34.730122, 38.694794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.537239, 35.417591, 38.953678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162872, 35.492310, 38.834229>,  <43.938251, 35.537140, 38.762558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162872, 35.492310, 38.834229>,  <44.537239, 35.417591, 38.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162872, 35.492310, 38.834229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134010, 0.595207, 0.792320,
		0.325741, 0.781561, -0.532030,
		-0.935913, 0.186794, -0.298620,
		43.882099, 35.548347, 38.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482624, 36.188847, 38.945293>,  <44.537239, 35.417591, 38.953678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482624, 36.188847, 38.945293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117184, 36.029636, 38.978554>,  <43.897919, 35.934109, 38.998512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117184, 36.029636, 38.978554>,  <44.482624, 36.188847, 38.945293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117184, 36.029636, 38.978554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135766, 0.491358, 0.860311,
		-0.383285, 0.774688, -0.502942,
		-0.913597, -0.398027, 0.083154,
		43.843105, 35.910229, 39.003502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037243, 36.785572, 39.034142>,  <44.482624, 36.188847, 38.945293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037243, 36.785572, 39.034142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848667, 36.457829, 39.164612>,  <43.735523, 36.261181, 39.242893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848667, 36.457829, 39.164612>,  <44.037243, 36.785572, 39.034142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848667, 36.457829, 39.164612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329488, 0.506721, 0.796662,
		-0.818036, 0.268107, -0.508858,
		-0.471440, -0.819361, 0.326178,
		43.707233, 36.212021, 39.262466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744514, 37.034420, 39.716919>,  <44.037243, 36.785572, 39.034142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744514, 37.034420, 39.716919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619858, 36.654373, 39.711922>,  <43.545063, 36.426346, 39.708923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619858, 36.654373, 39.711922>,  <43.744514, 37.034420, 39.716919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619858, 36.654373, 39.711922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505634, 0.154690, 0.848767,
		-0.804494, 0.270832, -0.528620,
		-0.311645, -0.950116, -0.012495,
		43.526363, 36.369339, 39.708172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952583, 36.934673, 39.736782>,  <43.744514, 37.034420, 39.716919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952583, 36.934673, 39.736782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119225, 36.609154, 39.898861>,  <43.219208, 36.413841, 39.996109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119225, 36.609154, 39.898861>,  <42.952583, 36.934673, 39.736782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119225, 36.609154, 39.898861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577807, 0.107076, 0.809119,
		-0.701843, -0.571203, -0.425609,
		0.416599, -0.813794, 0.405196,
		43.244205, 36.365017, 40.020420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420223, 36.495419, 40.079201>,  <42.952583, 36.934673, 39.736782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420223, 36.495419, 40.079201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750492, 36.335129, 40.238037>,  <42.948654, 36.238956, 40.333340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750492, 36.335129, 40.238037>,  <42.420223, 36.495419, 40.079201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750492, 36.335129, 40.238037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510378, -0.230695, 0.828429,
		-0.240390, -0.886667, -0.395012,
		0.825668, -0.400751, 0.397078,
		42.998196, 36.214912, 40.357166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292961, 35.776501, 40.390476>,  <42.420223, 36.495419, 40.079201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292961, 35.776501, 40.390476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614735, 35.931007, 40.571003>,  <42.807796, 36.023712, 40.679317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614735, 35.931007, 40.571003>,  <42.292961, 35.776501, 40.390476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614735, 35.931007, 40.571003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366629, -0.274958, 0.888809,
		0.467411, -0.880452, -0.079569,
		0.804432, 0.386267, 0.451317,
		42.856064, 36.046886, 40.706398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486530, 35.346939, 40.890289>,  <42.292961, 35.776501, 40.390476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486530, 35.346939, 40.890289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649654, 35.692867, 41.007439>,  <42.747528, 35.900425, 41.077728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649654, 35.692867, 41.007439>,  <42.486530, 35.346939, 40.890289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649654, 35.692867, 41.007439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412850, -0.111446, 0.903955,
		0.814398, -0.489557, 0.311592,
		0.407812, 0.864820, 0.292876,
		42.771999, 35.952312, 41.095303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854866, 35.176044, 41.538975>,  <42.486530, 35.346939, 40.890289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854866, 35.176044, 41.538975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846012, 35.575470, 41.558498>,  <42.840698, 35.815125, 41.570213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846012, 35.575470, 41.558498>,  <42.854866, 35.176044, 41.538975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846012, 35.575470, 41.558498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532214, -0.053096, 0.844943,
		0.846320, -0.007272, 0.532624,
		-0.022136, 0.998563, 0.048807,
		42.839371, 35.875038, 41.573139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138996, 35.178497, 42.181629>,  <42.854866, 35.176044, 41.538975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138996, 35.178497, 42.181629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966434, 35.532028, 42.109245>,  <42.862900, 35.744148, 42.065815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966434, 35.532028, 42.109245>,  <43.138996, 35.178497, 42.181629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966434, 35.532028, 42.109245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278259, 0.060447, 0.958602,
		0.858175, 0.463895, 0.219855,
		-0.431401, 0.883825, -0.180957,
		42.837013, 35.797176, 42.054958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324894, 35.518669, 42.760269>,  <43.138996, 35.178497, 42.181629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324894, 35.518669, 42.760269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008652, 35.718876, 42.619171>,  <42.818909, 35.839001, 42.534512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008652, 35.718876, 42.619171>,  <43.324894, 35.518669, 42.760269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008652, 35.718876, 42.619171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379192, 0.052127, 0.923848,
		0.480790, 0.864155, 0.148580,
		-0.790604, 0.500518, -0.352743,
		42.771469, 35.869030, 42.513348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179306, 35.920521, 43.299004>,  <43.324894, 35.518669, 42.760269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179306, 35.920521, 43.299004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845848, 35.967873, 43.083218>,  <42.645775, 35.996284, 42.953747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845848, 35.967873, 43.083218>,  <43.179306, 35.920521, 43.299004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845848, 35.967873, 43.083218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529974, 0.103447, 0.841680,
		0.155445, 0.987565, -0.023500,
		-0.833645, 0.118380, -0.539465,
		42.595753, 36.003387, 42.921379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892765, 36.502193, 43.551315>,  <43.179306, 35.920521, 43.299004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892765, 36.502193, 43.551315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624027, 36.252769, 43.391415>,  <42.462784, 36.103115, 43.295475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.624027, 36.252769, 43.391415>,  <42.892765, 36.502193, 43.551315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624027, 36.252769, 43.391415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479228, -0.045582, 0.876506,
		-0.564775, 0.780446, -0.268204,
		-0.671840, -0.623560, -0.399755,
		42.422474, 36.065701, 43.271488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135880, 36.727074, 43.719170>,  <42.892765, 36.502193, 43.551315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135880, 36.727074, 43.719170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162315, 36.340508, 43.619835>,  <42.178177, 36.108566, 43.560234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162315, 36.340508, 43.619835>,  <42.135880, 36.727074, 43.719170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162315, 36.340508, 43.619835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364715, -0.255055, 0.895505,
		-0.928770, 0.031386, -0.369324,
		0.066092, -0.966417, -0.248334,
		42.182144, 36.050583, 43.545334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494419, 36.533833, 43.788445>,  <42.135880, 36.727074, 43.719170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494419, 36.533833, 43.788445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697239, 36.190052, 43.814507>,  <41.818932, 35.983784, 43.830143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697239, 36.190052, 43.814507>,  <41.494419, 36.533833, 43.788445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697239, 36.190052, 43.814507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382790, -0.156819, 0.910428,
		-0.772252, -0.486571, -0.408504,
		0.507049, -0.859451, 0.065151,
		41.849354, 35.932217, 43.834053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023918, 36.078777, 44.148670>,  <41.494419, 36.533833, 43.788445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023918, 36.078777, 44.148670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394352, 35.931404, 44.181217>,  <41.616611, 35.842979, 44.200745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394352, 35.931404, 44.181217>,  <41.023918, 36.078777, 44.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394352, 35.931404, 44.181217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192164, -0.274954, 0.942058,
		-0.324715, -0.888063, -0.325431,
		0.926085, -0.368436, 0.081372,
		41.672176, 35.820873, 44.205627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954697, 35.457302, 44.522911>,  <41.023918, 36.078777, 44.148670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954697, 35.457302, 44.522911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346661, 35.527924, 44.560013>,  <41.581841, 35.570297, 44.582275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346661, 35.527924, 44.560013>,  <40.954697, 35.457302, 44.522911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346661, 35.527924, 44.560013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058708, -0.189116, 0.980198,
		0.190601, -0.965952, -0.174951,
		0.979911, 0.176556, 0.092754,
		41.640633, 35.580891, 44.587841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303188, 34.918739, 44.981728>,  <40.954697, 35.457302, 44.522911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303188, 34.918739, 44.981728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532261, 35.246647, 44.983013>,  <41.669704, 35.443394, 44.983784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532261, 35.246647, 44.983013>,  <41.303188, 34.918739, 44.981728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532261, 35.246647, 44.983013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069993, -0.052798, 0.996149,
		0.816784, -0.570252, -0.087615,
		0.572682, 0.819771, 0.003211,
		41.704067, 35.492577, 44.983974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899647, 34.813370, 45.253441>,  <41.303188, 34.918739, 44.981728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899647, 34.813370, 45.253441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807491, 35.197968, 45.313377>,  <41.752197, 35.428726, 45.349339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807491, 35.197968, 45.313377>,  <41.899647, 34.813370, 45.253441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807491, 35.197968, 45.313377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081356, -0.134410, 0.987580,
		0.969692, 0.239718, -0.047257,
		-0.230389, 0.961493, 0.149839,
		41.738373, 35.486416, 45.358330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073402, 34.506462, 44.616985>,  <41.899647, 34.813370, 45.253441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073402, 34.506462, 44.616985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344463, 34.233505, 44.507347>,  <42.507099, 34.069733, 44.441566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344463, 34.233505, 44.507347>,  <42.073402, 34.506462, 44.616985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344463, 34.233505, 44.507347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567083, 0.247618, 0.785558,
		-0.468187, -0.687771, 0.554772,
		0.677656, -0.682390, -0.274092,
		42.547760, 34.028790, 44.425121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237259, 34.163792, 45.282043>,  <42.073402, 34.506462, 44.616985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237259, 34.163792, 45.282043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537548, 34.159359, 45.017834>,  <42.717720, 34.156700, 44.859306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537548, 34.159359, 45.017834>,  <42.237259, 34.163792, 45.282043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537548, 34.159359, 45.017834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611390, 0.390401, 0.688323,
		0.250239, -0.920578, 0.299860,
		0.750721, -0.011086, -0.660526,
		42.762764, 34.156033, 44.819675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780769, 33.868347, 45.599113>,  <42.237259, 34.163792, 45.282043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780769, 33.868347, 45.599113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949123, 34.084484, 45.307667>,  <43.050137, 34.214165, 45.132797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949123, 34.084484, 45.307667>,  <42.780769, 33.868347, 45.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949123, 34.084484, 45.307667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625751, 0.408575, 0.664457,
		0.656731, -0.735592, -0.166159,
		0.420881, 0.540343, -0.728621,
		43.075386, 34.246586, 45.089081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494297, 33.751846, 45.526932>,  <42.780769, 33.868347, 45.599113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494297, 33.751846, 45.526932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429539, 34.123653, 45.394394>,  <43.390682, 34.346737, 45.314869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429539, 34.123653, 45.394394>,  <43.494297, 33.751846, 45.526932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429539, 34.123653, 45.394394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673626, 0.349472, 0.651227,
		0.721123, -0.117773, -0.682724,
		-0.161896, 0.929515, -0.331348,
		43.380970, 34.402508, 45.294991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806496, 33.676270, 44.892761>,  <43.494297, 33.751846, 45.526932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806496, 33.676270, 44.892761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890289, 33.287399, 44.934692>,  <43.940563, 33.054077, 44.959850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890289, 33.287399, 44.934692>,  <43.806496, 33.676270, 44.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890289, 33.287399, 44.934692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162106, -0.071190, -0.984202,
		0.964282, 0.223164, 0.142683,
		0.209481, -0.972178, 0.104824,
		43.953133, 32.995747, 44.966141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550335, 33.486801, 44.728863>,  <43.806496, 33.676270, 44.892761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550335, 33.486801, 44.728863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294830, 33.184837, 44.669395>,  <44.141529, 33.003658, 44.633717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294830, 33.184837, 44.669395>,  <44.550335, 33.486801, 44.728863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294830, 33.184837, 44.669395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180718, 0.040615, -0.982696,
		0.747881, -0.654574, 0.110482,
		-0.638760, -0.754906, -0.148669,
		44.103203, 32.958366, 44.624794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842239, 32.961552, 44.267883>,  <44.550335, 33.486801, 44.728863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842239, 32.961552, 44.267883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443848, 32.931843, 44.247849>,  <44.204811, 32.914017, 44.235828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443848, 32.931843, 44.247849>,  <44.842239, 32.961552, 44.267883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443848, 32.931843, 44.247849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036940, 0.168892, -0.984942,
		0.081614, -0.982832, -0.165470,
		-0.995979, -0.074273, -0.050090,
		44.145054, 32.909561, 44.232822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675621, 32.409336, 43.767784>,  <44.842239, 32.961552, 44.267883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675621, 32.409336, 43.767784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384060, 32.682880, 43.780579>,  <44.209122, 32.847008, 43.788254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384060, 32.682880, 43.780579>,  <44.675621, 32.409336, 43.767784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384060, 32.682880, 43.780579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014755, 0.062399, -0.997942,
		-0.684454, -0.726935, -0.055573,
		-0.728907, 0.683865, 0.031984,
		44.165386, 32.888039, 43.790173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162468, 32.265896, 43.340050>,  <44.675621, 32.409336, 43.767784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162468, 32.265896, 43.340050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116508, 32.661152, 43.380787>,  <44.088932, 32.898308, 43.405228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116508, 32.661152, 43.380787>,  <44.162468, 32.265896, 43.340050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116508, 32.661152, 43.380787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070914, 0.110420, -0.991352,
		-0.990843, -0.106680, -0.082760,
		-0.114896, 0.988143, 0.101844,
		44.082039, 32.957596, 43.411339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825356, 32.436268, 42.730179>,  <44.162468, 32.265896, 43.340050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825356, 32.436268, 42.730179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912991, 32.801811, 42.866917>,  <43.965572, 33.021137, 42.948959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912991, 32.801811, 42.866917>,  <43.825356, 32.436268, 42.730179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912991, 32.801811, 42.866917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177347, 0.307221, -0.934967,
		-0.959451, 0.265468, -0.094761,
		0.219091, 0.913861, 0.341844,
		43.978718, 33.075970, 42.969471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512959, 32.923126, 42.210716>,  <43.825356, 32.436268, 42.730179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512959, 32.923126, 42.210716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806385, 33.127975, 42.389431>,  <43.982441, 33.250885, 42.496658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.806385, 33.127975, 42.389431>,  <43.512959, 32.923126, 42.210716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806385, 33.127975, 42.389431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241120, 0.418521, -0.875615,
		-0.635410, 0.750047, 0.183529,
		0.733563, 0.512122, 0.446784,
		44.026455, 33.281612, 42.523468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423412, 33.537857, 41.982697>,  <43.512959, 32.923126, 42.210716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423412, 33.537857, 41.982697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805290, 33.507393, 42.097763>,  <44.034416, 33.489117, 42.166805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805290, 33.507393, 42.097763>,  <43.423412, 33.537857, 41.982697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805290, 33.507393, 42.097763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294327, 0.384160, -0.875096,
		-0.043867, 0.920120, 0.389171,
		0.954698, -0.076156, 0.287668,
		44.091698, 33.484547, 42.184063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652405, 34.044392, 41.542786>,  <43.423412, 33.537857, 41.982697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652405, 34.044392, 41.542786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977081, 33.841019, 41.657780>,  <44.171890, 33.718994, 41.726776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977081, 33.841019, 41.657780>,  <43.652405, 34.044392, 41.542786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977081, 33.841019, 41.657780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421327, 0.168796, -0.891062,
		0.404516, 0.844397, 0.351227,
		0.811696, -0.508430, 0.287487,
		44.220589, 33.688488, 41.744026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203236, 34.395702, 41.189304>,  <43.652405, 34.044392, 41.542786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203236, 34.395702, 41.189304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358471, 34.044144, 41.300243>,  <44.451611, 33.833206, 41.366806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358471, 34.044144, 41.300243>,  <44.203236, 34.395702, 41.189304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358471, 34.044144, 41.300243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727903, 0.107722, -0.677166,
		0.565284, 0.464685, 0.681559,
		0.388087, -0.878899, 0.277352,
		44.474895, 33.780476, 41.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948715, 34.516701, 41.318321>,  <44.203236, 34.395702, 41.189304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948715, 34.516701, 41.318321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908630, 34.126034, 41.242348>,  <44.884579, 33.891632, 41.196762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908630, 34.126034, 41.242348>,  <44.948715, 34.516701, 41.318321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908630, 34.126034, 41.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622499, 0.087376, -0.777728,
		0.776178, -0.196173, 0.599219,
		-0.100212, -0.976669, -0.189936,
		44.878567, 33.833035, 41.185368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611565, 34.172710, 41.192467>,  <44.948715, 34.516701, 41.318321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611565, 34.172710, 41.192467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352112, 33.942135, 40.993671>,  <45.196442, 33.803791, 40.874393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352112, 33.942135, 40.993671>,  <45.611565, 34.172710, 41.192467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352112, 33.942135, 40.993671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537644, 0.115161, -0.835270,
		0.538716, -0.808985, 0.235221,
		-0.648633, -0.576439, -0.496985,
		45.157520, 33.769203, 40.844578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957733, 33.702541, 40.822449>,  <45.611565, 34.172710, 41.192467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957733, 33.702541, 40.822449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603962, 33.676704, 40.637569>,  <45.391701, 33.661201, 40.526642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.603962, 33.676704, 40.637569>,  <45.957733, 33.702541, 40.822449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603962, 33.676704, 40.637569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466557, -0.099164, -0.878915,
		0.010937, -0.992972, 0.117838,
		-0.884423, -0.064590, -0.462194,
		45.338634, 33.657330, 40.498913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116997, 33.363621, 40.196548>,  <45.957733, 33.702541, 40.822449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116997, 33.363621, 40.196548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742207, 33.478012, 40.116253>,  <45.517334, 33.546646, 40.068077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742207, 33.478012, 40.116253>,  <46.116997, 33.363621, 40.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742207, 33.478012, 40.116253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224045, 0.050895, -0.973249,
		-0.268108, -0.956885, -0.111759,
		-0.936975, 0.285975, -0.200740,
		45.461113, 33.563805, 40.056030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878696, 32.923401, 39.697289>,  <46.116997, 33.363621, 40.196548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878696, 32.923401, 39.697289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650055, 33.248009, 39.648773>,  <45.512871, 33.442772, 39.619663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650055, 33.248009, 39.648773>,  <45.878696, 32.923401, 39.697289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650055, 33.248009, 39.648773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200300, -0.005347, -0.979720,
		-0.795706, -0.584307, -0.159490,
		-0.571604, 0.811515, -0.121291,
		45.478573, 33.491463, 39.612385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405426, 32.768909, 39.073608>,  <45.878696, 32.923401, 39.697289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405426, 32.768909, 39.073608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402863, 33.160900, 39.153217>,  <45.401325, 33.396095, 39.200981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402863, 33.160900, 39.153217>,  <45.405426, 32.768909, 39.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402863, 33.160900, 39.153217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098494, 0.198675, -0.975103,
		-0.995117, 0.013350, -0.097796,
		-0.006412, 0.979974, 0.199020,
		45.400940, 33.454891, 39.212925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916008, 33.130615, 38.633232>,  <45.405426, 32.768909, 39.073608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916008, 33.130615, 38.633232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165031, 33.431141, 38.720818>,  <45.314445, 33.611458, 38.773369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165031, 33.431141, 38.720818>,  <44.916008, 33.130615, 38.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165031, 33.431141, 38.720818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089587, 0.209540, -0.973688,
		-0.777430, 0.625793, 0.063142,
		0.622557, 0.751317, 0.218965,
		45.351799, 33.656536, 38.786507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685188, 33.578999, 38.128574>,  <44.916008, 33.130615, 38.633232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685188, 33.578999, 38.128574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025703, 33.720055, 38.283985>,  <45.230015, 33.804688, 38.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.025703, 33.720055, 38.283985>,  <44.685188, 33.578999, 38.128574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.025703, 33.720055, 38.283985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146705, 0.550968, -0.821530,
		-0.503770, 0.756359, 0.417298,
		0.851290, 0.352642, 0.388522,
		45.281090, 33.825848, 38.400543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696896, 34.276825, 37.999142>,  <44.685188, 33.578999, 38.128574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696896, 34.276825, 37.999142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086159, 34.222168, 38.073212>,  <45.319717, 34.189373, 38.117653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086159, 34.222168, 38.073212>,  <44.696896, 34.276825, 37.999142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086159, 34.222168, 38.073212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228546, 0.479547, -0.847231,
		0.026967, 0.866812, 0.497905,
		0.973159, -0.136642, 0.185175,
		45.378105, 34.181175, 38.128765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093735, 34.974873, 37.936508>,  <44.696896, 34.276825, 37.999142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093735, 34.974873, 37.936508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336391, 34.668892, 37.849941>,  <45.481987, 34.485306, 37.798000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336391, 34.668892, 37.849941>,  <45.093735, 34.974873, 37.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336391, 34.668892, 37.849941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240521, 0.436087, -0.867167,
		0.757715, 0.474009, 0.448536,
		0.606645, -0.764947, -0.216420,
		45.518387, 34.439407, 37.785015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770309, 35.252949, 37.820862>,  <45.093735, 34.974873, 37.936508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770309, 35.252949, 37.820862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745510, 34.901592, 37.631302>,  <45.730629, 34.690777, 37.517567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745510, 34.901592, 37.631302>,  <45.770309, 35.252949, 37.820862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745510, 34.901592, 37.631302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250572, 0.445909, -0.859290,
		0.966110, -0.172025, 0.192453,
		-0.062003, -0.878392, -0.473902,
		45.726910, 34.638073, 37.489132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323067, 35.201130, 37.286781>,  <45.770309, 35.252949, 37.820862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323067, 35.201130, 37.286781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129581, 34.871120, 37.169918>,  <46.013493, 34.673115, 37.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129581, 34.871120, 37.169918>,  <46.323067, 35.201130, 37.286781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129581, 34.871120, 37.169918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246307, 0.191994, -0.949985,
		0.839856, -0.531476, 0.110341,
		-0.483710, -0.825028, -0.292154,
		45.984470, 34.623611, 37.082272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.864346, 34.692753, 36.932911>,  <46.323067, 35.201130, 37.286781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.864346, 34.692753, 36.932911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500839, 34.602886, 36.792240>,  <46.282738, 34.548965, 36.707840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.500839, 34.602886, 36.792240>,  <46.864346, 34.692753, 36.932911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500839, 34.602886, 36.792240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353980, 0.031320, -0.934728,
		0.221015, -0.973933, 0.051064,
		-0.908763, -0.224664, -0.351675,
		46.228210, 34.535488, 36.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813629, 34.073631, 36.382790>,  <46.864346, 34.692753, 36.932911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813629, 34.073631, 36.382790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536198, 34.355564, 36.323246>,  <46.369740, 34.524723, 36.287518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536198, 34.355564, 36.323246>,  <46.813629, 34.073631, 36.382790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536198, 34.355564, 36.323246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430301, 0.239628, -0.870299,
		-0.577740, -0.667679, -0.469490,
		-0.693583, 0.704829, -0.148861,
		46.328121, 34.567013, 36.278587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734039, 33.699059, 35.816624>,  <46.813629, 34.073631, 36.382790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734039, 33.699059, 35.816624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690342, 33.865833, 35.455685>,  <46.664124, 33.965900, 35.239120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690342, 33.865833, 35.455685>,  <46.734039, 33.699059, 35.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690342, 33.865833, 35.455685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443560, 0.832834, 0.331124,
		0.889562, -0.364071, -0.275919,
		-0.109242, 0.416941, -0.902345,
		46.657570, 33.990917, 35.184982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302280, 34.034321, 35.732811>,  <46.734039, 33.699059, 35.816624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302280, 34.034321, 35.732811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074520, 34.200462, 35.449043>,  <46.937866, 34.300148, 35.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074520, 34.200462, 35.449043>,  <47.302280, 34.034321, 35.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074520, 34.200462, 35.449043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584531, 0.811350, 0.005870,
		0.578024, -0.411334, -0.704765,
		-0.569396, 0.415350, -0.709417,
		46.903702, 34.325066, 35.236217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764194, 34.298149, 35.207466>,  <47.302280, 34.034321, 35.732811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764194, 34.298149, 35.207466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436413, 34.526318, 35.229755>,  <47.239742, 34.663219, 35.243130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436413, 34.526318, 35.229755>,  <47.764194, 34.298149, 35.207466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436413, 34.526318, 35.229755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562239, 0.781191, 0.271344,
		0.111251, 0.253684, -0.960868,
		-0.819457, 0.570425, 0.055723,
		47.190575, 34.697445, 35.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.839207, 34.757919, 34.651806>,  <47.764194, 34.298149, 35.207466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.839207, 34.757919, 34.651806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651508, 34.870846, 34.986496>,  <47.538891, 34.938602, 35.187309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.651508, 34.870846, 34.986496>,  <47.839207, 34.757919, 34.651806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.651508, 34.870846, 34.986496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638193, 0.763306, 0.100363,
		-0.610342, 0.581086, -0.538352,
		-0.469247, 0.282317, 0.836723,
		47.510735, 34.955540, 35.237514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.703621, 38.241802, 42.416416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465160, 37.925297, 42.362011>,  <34.322083, 37.735394, 42.329369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465160, 37.925297, 42.362011>,  <34.703621, 38.241802, 42.416416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465160, 37.925297, 42.362011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364382, -0.115695, -0.924035,
		0.715420, -0.600429, 0.357295,
		-0.596154, -0.791265, -0.136015,
		34.286316, 37.687916, 42.321205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998299, 37.737526, 42.010246>,  <34.703621, 38.241802, 42.416416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998299, 37.737526, 42.010246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611462, 37.650276, 41.957867>,  <34.379360, 37.597927, 41.926441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611462, 37.650276, 41.957867>,  <34.998299, 37.737526, 42.010246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611462, 37.650276, 41.957867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153960, -0.092012, -0.983783,
		0.202542, -0.971573, 0.122567,
		-0.967095, -0.218128, -0.130947,
		34.321335, 37.584839, 41.918583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991421, 37.082581, 41.757187>,  <34.998299, 37.737526, 42.010246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991421, 37.082581, 41.757187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651794, 37.261433, 41.644642>,  <34.448017, 37.368744, 41.577114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651794, 37.261433, 41.644642>,  <34.991421, 37.082581, 41.757187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651794, 37.261433, 41.644642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206090, -0.210046, -0.955723,
		-0.486431, -0.869457, 0.086194,
		-0.849065, 0.447129, -0.281360,
		34.397076, 37.395573, 41.560234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814907, 36.706116, 41.145679>,  <34.991421, 37.082581, 41.757187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814907, 36.706116, 41.145679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552254, 37.005474, 41.108276>,  <34.394661, 37.185089, 41.085835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552254, 37.005474, 41.108276>,  <34.814907, 36.706116, 41.145679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552254, 37.005474, 41.108276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006767, -0.129827, -0.991513,
		-0.754181, -0.650426, 0.090313,
		-0.656631, 0.748392, -0.093512,
		34.355263, 37.229992, 41.080223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218552, 36.432617, 40.666946>,  <34.814907, 36.706116, 41.145679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218552, 36.432617, 40.666946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228027, 36.832394, 40.676350>,  <34.233711, 37.072262, 40.681992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228027, 36.832394, 40.676350>,  <34.218552, 36.432617, 40.666946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228027, 36.832394, 40.676350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124092, 0.020392, -0.992061,
		-0.991988, 0.026414, -0.123540,
		0.023685, 0.999443, 0.023506,
		34.235134, 37.132225, 40.683403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639236, 36.737507, 40.235477>,  <34.218552, 36.432617, 40.666946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639236, 36.737507, 40.235477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921925, 37.018284, 40.270859>,  <34.091537, 37.186749, 40.292088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.921925, 37.018284, 40.270859>,  <33.639236, 36.737507, 40.235477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921925, 37.018284, 40.270859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172770, -0.049993, -0.983693,
		-0.686070, 0.710481, -0.156605,
		0.706724, 0.701939, 0.088451,
		34.133942, 37.228867, 40.297394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390476, 37.244522, 39.680271>,  <33.639236, 36.737507, 40.235477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390476, 37.244522, 39.680271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774490, 37.302437, 39.776070>,  <34.004898, 37.337185, 39.833549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774490, 37.302437, 39.776070>,  <33.390476, 37.244522, 39.680271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774490, 37.302437, 39.776070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228415, 0.089097, -0.969478,
		-0.161711, 0.985443, 0.052464,
		0.960040, 0.144791, 0.239498,
		34.062504, 37.345875, 39.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627003, 37.953465, 39.416706>,  <33.390476, 37.244522, 39.680271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627003, 37.953465, 39.416706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967232, 37.743763, 39.433071>,  <34.171371, 37.617943, 39.442890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967232, 37.743763, 39.433071>,  <33.627003, 37.953465, 39.416706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967232, 37.743763, 39.433071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187139, 0.229076, -0.955250,
		0.491424, 0.820170, 0.292956,
		0.850577, -0.524256, 0.040912,
		34.222404, 37.586487, 39.445343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956120, 38.146492, 38.824718>,  <33.627003, 37.953465, 39.416706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956120, 38.146492, 38.824718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211308, 37.860107, 38.938137>,  <34.364422, 37.688278, 39.006187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.211308, 37.860107, 38.938137>,  <33.956120, 38.146492, 38.824718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211308, 37.860107, 38.938137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537903, 0.150841, -0.829402,
		0.551047, 0.681653, 0.481348,
		0.637971, -0.715958, 0.283542,
		34.402699, 37.645321, 39.023201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602371, 38.384243, 38.701191>,  <33.956120, 38.146492, 38.824718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602371, 38.384243, 38.701191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642971, 37.986343, 38.695877>,  <34.667332, 37.747604, 38.692688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642971, 37.986343, 38.695877>,  <34.602371, 38.384243, 38.701191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642971, 37.986343, 38.695877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487882, 0.061416, -0.870747,
		0.866988, 0.081900, 0.491552,
		0.101504, -0.994746, -0.013289,
		34.673424, 37.687920, 38.691891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275589, 38.247871, 38.636734>,  <34.602371, 38.384243, 38.701191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275589, 38.247871, 38.636734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096348, 37.923851, 38.485462>,  <34.988804, 37.729439, 38.394699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.096348, 37.923851, 38.485462>,  <35.275589, 38.247871, 38.636734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096348, 37.923851, 38.485462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621586, 0.021719, -0.783045,
		0.642522, -0.585953, 0.493785,
		-0.448103, -0.810054, -0.378175,
		34.961918, 37.680836, 38.372009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913277, 37.874561, 38.384319>,  <35.275589, 38.247871, 38.636734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913277, 37.874561, 38.384319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605377, 37.688728, 38.209206>,  <35.420639, 37.577229, 38.104137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605377, 37.688728, 38.209206>,  <35.913277, 37.874561, 38.384319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605377, 37.688728, 38.209206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598446, -0.286526, -0.748175,
		0.222156, -0.837892, 0.498581,
		-0.769746, -0.464585, -0.437780,
		35.374454, 37.549355, 38.077873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188690, 37.309845, 38.063602>,  <35.913277, 37.874561, 38.384319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188690, 37.309845, 38.063602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850208, 37.363117, 37.857224>,  <35.647121, 37.395081, 37.733395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850208, 37.363117, 37.857224>,  <36.188690, 37.309845, 38.063602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850208, 37.363117, 37.857224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483503, -0.215083, -0.848507,
		-0.223963, -0.967474, 0.117619,
		-0.846206, 0.133165, -0.515948,
		35.596348, 37.403072, 37.702438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225452, 36.787540, 37.699593>,  <36.188690, 37.309845, 38.063602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225452, 36.787540, 37.699593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957546, 37.024158, 37.520039>,  <35.796803, 37.166130, 37.412308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957546, 37.024158, 37.520039>,  <36.225452, 36.787540, 37.699593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957546, 37.024158, 37.520039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338129, -0.295248, -0.893587,
		-0.661126, -0.750272, -0.002271,
		-0.669762, 0.591542, -0.448885,
		35.756618, 37.201622, 37.385372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805008, 36.421040, 37.119888>,  <36.225452, 36.787540, 37.699593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805008, 36.421040, 37.119888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808151, 36.814201, 37.046314>,  <35.810036, 37.050098, 37.002171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808151, 36.814201, 37.046314>,  <35.805008, 36.421040, 37.119888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808151, 36.814201, 37.046314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482033, -0.164879, -0.860500,
		-0.876118, -0.081899, -0.475089,
		0.007858, 0.982908, -0.183932,
		35.810509, 37.109074, 36.991135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819630, 36.466297, 36.338497>,  <35.805008, 36.421040, 37.119888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819630, 36.466297, 36.338497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930889, 36.843361, 36.412292>,  <35.997643, 37.069599, 36.456570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930889, 36.843361, 36.412292>,  <35.819630, 36.466297, 36.338497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930889, 36.843361, 36.412292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615234, -0.027337, -0.787871,
		-0.737646, 0.332648, -0.587557,
		0.278146, 0.942655, 0.184491,
		36.014332, 37.126156, 36.467640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833508, 36.776970, 35.707306>,  <35.819630, 36.466297, 36.338497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833508, 36.776970, 35.707306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068218, 36.994911, 35.946915>,  <36.209045, 37.125675, 36.090679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068218, 36.994911, 35.946915>,  <35.833508, 36.776970, 35.707306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068218, 36.994911, 35.946915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757183, -0.107004, -0.644379,
		-0.286991, 0.831679, -0.475338,
		0.586779, 0.544849, 0.599024,
		36.244251, 37.158367, 36.126621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139286, 37.248768, 35.207310>,  <35.833508, 36.776970, 35.707306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139286, 37.248768, 35.207310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361351, 37.250351, 35.540005>,  <36.494591, 37.251301, 35.739620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361351, 37.250351, 35.540005>,  <36.139286, 37.248768, 35.207310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361351, 37.250351, 35.540005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824057, 0.133014, -0.550670,
		-0.112813, 0.991106, 0.070580,
		0.555161, 0.003961, 0.831734,
		36.527901, 37.251537, 35.789524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559727, 37.792404, 35.114719>,  <36.139286, 37.248768, 35.207310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559727, 37.792404, 35.114719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753651, 37.581055, 35.393513>,  <36.870007, 37.454247, 35.560787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753651, 37.581055, 35.393513>,  <36.559727, 37.792404, 35.114719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753651, 37.581055, 35.393513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838816, 0.055226, -0.541606,
		0.247677, 0.847216, 0.469980,
		0.484813, -0.528370, 0.696980,
		36.899094, 37.422543, 35.602608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156250, 38.154854, 35.375065>,  <36.559727, 37.792404, 35.114719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156250, 38.154854, 35.375065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224842, 37.768333, 35.451855>,  <37.265995, 37.536423, 35.497929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224842, 37.768333, 35.451855>,  <37.156250, 38.154854, 35.375065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224842, 37.768333, 35.451855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774085, 0.011611, -0.632975,
		0.609416, 0.257149, 0.749991,
		0.171477, -0.966302, 0.191979,
		37.276287, 37.478443, 35.509449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885685, 38.114147, 35.480980>,  <37.156250, 38.154854, 35.375065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885685, 38.114147, 35.480980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781425, 37.734627, 35.409607>,  <37.718868, 37.506916, 35.366783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781425, 37.734627, 35.409607>,  <37.885685, 38.114147, 35.480980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781425, 37.734627, 35.409607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784934, -0.100667, -0.611347,
		0.562085, -0.299403, 0.770985,
		-0.260652, -0.948801, -0.178428,
		37.703228, 37.449986, 35.356079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586353, 37.800568, 35.329067>,  <37.885685, 38.114147, 35.480980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586353, 37.800568, 35.329067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348408, 37.500992, 35.212299>,  <38.205639, 37.321247, 35.142239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348408, 37.500992, 35.212299>,  <38.586353, 37.800568, 35.329067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348408, 37.500992, 35.212299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624446, -0.201889, -0.754526,
		0.506162, -0.631129, 0.587772,
		-0.594868, -0.748944, -0.291917,
		38.169949, 37.276310, 35.124725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426273, 37.827911, 35.279667>,  <38.586353, 37.800568, 35.329067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426273, 37.827911, 35.279667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665382, 37.589588, 35.494209>,  <39.808849, 37.446594, 35.622936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665382, 37.589588, 35.494209>,  <39.426273, 37.827911, 35.279667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665382, 37.589588, 35.494209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451099, 0.303085, 0.839434,
		-0.662706, -0.743739, -0.087595,
		0.597771, -0.595812, 0.536356,
		39.844715, 37.410843, 35.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120857, 37.253700, 35.597603>,  <39.426273, 37.827911, 35.279667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120857, 37.253700, 35.597603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432320, 37.337830, 35.834064>,  <39.619198, 37.388306, 35.975941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432320, 37.337830, 35.834064>,  <39.120857, 37.253700, 35.597603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432320, 37.337830, 35.834064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619898, 0.112113, 0.776632,
		0.097059, -0.971185, 0.217669,
		0.778656, 0.210312, 0.591154,
		39.665916, 37.400925, 36.011410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927723, 37.043598, 36.294697>,  <39.120857, 37.253700, 35.597603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927723, 37.043598, 36.294697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250977, 37.259884, 36.388115>,  <39.444927, 37.389656, 36.444164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250977, 37.259884, 36.388115>,  <38.927723, 37.043598, 36.294697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250977, 37.259884, 36.388115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343351, 0.110312, 0.932706,
		0.478569, -0.833940, 0.274803,
		0.808135, 0.540718, 0.233543,
		39.493416, 37.422100, 36.458179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192593, 36.822567, 36.824265>,  <38.927723, 37.043598, 36.294697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192593, 36.822567, 36.824265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348888, 37.190315, 36.842533>,  <39.442665, 37.410965, 36.853493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348888, 37.190315, 36.842533>,  <39.192593, 36.822567, 36.824265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348888, 37.190315, 36.842533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431843, 0.139270, 0.891131,
		0.812919, -0.367917, 0.451441,
		0.390735, 0.919370, 0.045667,
		39.466110, 37.466125, 36.856232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605053, 36.822205, 37.462784>,  <39.192593, 36.822567, 36.824265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605053, 36.822205, 37.462784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540325, 37.206528, 37.372749>,  <39.501488, 37.437122, 37.318729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540325, 37.206528, 37.372749>,  <39.605053, 36.822205, 37.462784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540325, 37.206528, 37.372749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416679, 0.140239, 0.898171,
		0.894535, 0.239134, 0.377654,
		-0.161821, 0.960806, -0.225091,
		39.491779, 37.494770, 37.305222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803902, 37.131233, 37.978519>,  <39.605053, 36.822205, 37.462784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803902, 37.131233, 37.978519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574940, 37.424091, 37.830837>,  <39.437561, 37.599804, 37.742226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574940, 37.424091, 37.830837>,  <39.803902, 37.131233, 37.978519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574940, 37.424091, 37.830837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282198, 0.246868, 0.927050,
		0.769879, 0.634840, 0.065300,
		-0.572408, 0.732144, -0.369209,
		39.403217, 37.643734, 37.720074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831699, 37.443367, 38.593498>,  <39.803902, 37.131233, 37.978519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831699, 37.443367, 38.593498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568233, 37.649155, 38.373867>,  <39.410152, 37.772625, 38.242088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568233, 37.649155, 38.373867>,  <39.831699, 37.443367, 38.593498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568233, 37.649155, 38.373867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510793, 0.230096, 0.828339,
		0.552492, 0.826063, 0.111228,
		-0.658668, 0.514465, -0.549074,
		39.370632, 37.803493, 38.209145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798813, 38.109081, 38.805691>,  <39.831699, 37.443367, 38.593498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798813, 38.109081, 38.805691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455040, 38.005619, 38.629295>,  <39.248775, 37.943542, 38.523460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455040, 38.005619, 38.629295>,  <39.798813, 38.109081, 38.805691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455040, 38.005619, 38.629295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500159, 0.246719, 0.830043,
		-0.105897, 0.933930, -0.341409,
		-0.859434, -0.258658, -0.440987,
		39.197208, 37.928020, 38.496998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338326, 38.639984, 38.857315>,  <39.798813, 38.109081, 38.805691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338326, 38.639984, 38.857315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095749, 38.327213, 38.799603>,  <38.950203, 38.139549, 38.764973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095749, 38.327213, 38.799603>,  <39.338326, 38.639984, 38.857315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095749, 38.327213, 38.799603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488339, 0.223066, 0.843663,
		-0.627500, 0.582089, -0.517123,
		-0.606439, -0.781930, -0.144283,
		38.913818, 38.092636, 38.756317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677956, 38.891750, 39.012066>,  <39.338326, 38.639984, 38.857315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677956, 38.891750, 39.012066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631580, 38.494785, 39.028450>,  <38.603756, 38.256607, 39.038280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631580, 38.494785, 39.028450>,  <38.677956, 38.891750, 39.012066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631580, 38.494785, 39.028450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481226, 0.092198, 0.871734,
		-0.868895, 0.081359, -0.488264,
		-0.115941, -0.992411, 0.040958,
		38.596798, 38.197063, 39.040737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009144, 38.684261, 39.020329>,  <38.677956, 38.891750, 39.012066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009144, 38.684261, 39.020329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175720, 38.354012, 39.172596>,  <38.275665, 38.155861, 39.263958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.175720, 38.354012, 39.172596>,  <38.009144, 38.684261, 39.020329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175720, 38.354012, 39.172596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634054, 0.036333, 0.772435,
		-0.651575, -0.563042, -0.508363,
		0.416443, -0.825629, 0.380673,
		38.300652, 38.106323, 39.286797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410084, 38.266094, 39.119953>,  <38.009144, 38.684261, 39.020329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410084, 38.266094, 39.119953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686989, 38.107368, 39.361053>,  <37.853130, 38.012135, 39.505714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686989, 38.107368, 39.361053>,  <37.410084, 38.266094, 39.119953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686989, 38.107368, 39.361053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633832, 0.064985, 0.770736,
		-0.345008, -0.915596, -0.206525,
		0.692262, -0.396812, 0.602755,
		37.894669, 37.988323, 39.541882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166431, 37.591034, 39.529999>,  <37.410084, 38.266094, 39.119953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166431, 37.591034, 39.529999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454723, 37.796501, 39.716198>,  <37.627701, 37.919781, 39.827919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454723, 37.796501, 39.716198>,  <37.166431, 37.591034, 39.529999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454723, 37.796501, 39.716198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548958, 0.012870, 0.835751,
		0.423308, -0.857892, 0.291259,
		0.720733, 0.513669, 0.465499,
		37.670944, 37.950600, 39.855846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360584, 37.083710, 40.077290>,  <37.166431, 37.591034, 39.529999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360584, 37.083710, 40.077290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483616, 37.445072, 40.196785>,  <37.557434, 37.661892, 40.268482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483616, 37.445072, 40.196785>,  <37.360584, 37.083710, 40.077290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483616, 37.445072, 40.196785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244303, -0.228457, 0.942403,
		0.919625, -0.362847, 0.150437,
		0.307580, 0.903410, 0.298740,
		37.575890, 37.716095, 40.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653694, 36.900089, 40.679886>,  <37.360584, 37.083710, 40.077290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653694, 36.900089, 40.679886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630016, 37.297806, 40.715393>,  <37.615810, 37.536434, 40.736698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.630016, 37.297806, 40.715393>,  <37.653694, 36.900089, 40.679886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630016, 37.297806, 40.715393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394903, -0.104993, 0.912704,
		0.916814, 0.018975, 0.398864,
		-0.059196, 0.994292, 0.088765,
		37.612259, 37.596092, 40.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973339, 37.138943, 41.279640>,  <37.653694, 36.900089, 40.679886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973339, 37.138943, 41.279640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721233, 37.435925, 41.188843>,  <37.569969, 37.614113, 41.134365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721233, 37.435925, 41.188843>,  <37.973339, 37.138943, 41.279640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721233, 37.435925, 41.188843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460597, -0.122207, 0.879156,
		0.624992, 0.658656, 0.418995,
		-0.630266, 0.742454, -0.226996,
		37.532154, 37.658661, 41.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079834, 37.667095, 41.789524>,  <37.973339, 37.138943, 41.279640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079834, 37.667095, 41.789524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719818, 37.724045, 41.624767>,  <37.503807, 37.758213, 41.525913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719818, 37.724045, 41.624767>,  <38.079834, 37.667095, 41.789524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719818, 37.724045, 41.624767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412250, 0.028345, 0.910630,
		0.141323, 0.989407, 0.033181,
		-0.900043, 0.142372, -0.411889,
		37.449806, 37.766758, 41.501202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772209, 38.186718, 42.128742>,  <38.079834, 37.667095, 41.789524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772209, 38.186718, 42.128742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446785, 38.005928, 41.982407>,  <37.251530, 37.897453, 41.894604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446785, 38.005928, 41.982407>,  <37.772209, 38.186718, 42.128742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446785, 38.005928, 41.982407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423639, 0.029752, 0.905342,
		-0.398304, 0.891536, -0.215678,
		-0.813562, -0.451972, -0.365839,
		37.202717, 37.870338, 41.872654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.221035, 38.463921, 42.502148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042763, 38.143009, 42.343292>,  <36.935799, 37.950462, 42.247978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042763, 38.143009, 42.343292>,  <37.221035, 38.463921, 42.502148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042763, 38.143009, 42.343292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370117, -0.238800, 0.897769,
		-0.815095, 0.547108, -0.190507,
		-0.445684, -0.802276, -0.397138,
		36.909058, 37.902325, 42.224152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457500, 38.431690, 42.594002>,  <37.221035, 38.463921, 42.502148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457500, 38.431690, 42.594002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512424, 38.038437, 42.545692>,  <36.545380, 37.802483, 42.516708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512424, 38.038437, 42.545692>,  <36.457500, 38.431690, 42.594002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512424, 38.038437, 42.545692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497064, -0.173853, 0.850119,
		-0.856781, -0.056700, -0.512554,
		0.137311, -0.983138, -0.120771,
		36.553619, 37.743496, 42.509460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829247, 38.180882, 42.666500>,  <36.457500, 38.431690, 42.594002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829247, 38.180882, 42.666500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088997, 37.881641, 42.721130>,  <36.244846, 37.702099, 42.753910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088997, 37.881641, 42.721130>,  <35.829247, 38.180882, 42.666500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088997, 37.881641, 42.721130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464937, -0.248441, 0.849771,
		-0.601784, -0.615321, -0.509152,
		0.649376, -0.748102, 0.136578,
		36.283810, 37.657211, 42.762104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384735, 37.586193, 42.720432>,  <35.829247, 38.180882, 42.666500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384735, 37.586193, 42.720432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737728, 37.475594, 42.872631>,  <35.949524, 37.409233, 42.963951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737728, 37.475594, 42.872631>,  <35.384735, 37.586193, 42.720432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737728, 37.475594, 42.872631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459132, -0.330762, 0.824497,
		-0.102118, -0.902300, -0.418839,
		0.882480, -0.276498, 0.380498,
		36.002472, 37.392643, 42.986782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302311, 37.007828, 43.107769>,  <35.384735, 37.586193, 42.720432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302311, 37.007828, 43.107769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632896, 37.147449, 43.284462>,  <35.831245, 37.231224, 43.390476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632896, 37.147449, 43.284462>,  <35.302311, 37.007828, 43.107769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632896, 37.147449, 43.284462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330778, -0.333851, 0.882683,
		0.455577, -0.875616, -0.160455,
		0.826460, 0.349055, 0.441729,
		35.880833, 37.252167, 43.416981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421669, 36.493187, 43.636444>,  <35.302311, 37.007828, 43.107769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421669, 36.493187, 43.636444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666821, 36.783787, 43.760757>,  <35.813911, 36.958145, 43.835346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666821, 36.783787, 43.760757>,  <35.421669, 36.493187, 43.636444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666821, 36.783787, 43.760757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303651, -0.146569, 0.941442,
		0.729505, -0.671358, 0.130772,
		0.612877, 0.726496, 0.310781,
		35.850685, 37.001736, 43.853992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739601, 36.257355, 44.212307>,  <35.421669, 36.493187, 43.636444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739601, 36.257355, 44.212307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739529, 36.657139, 44.225479>,  <35.739483, 36.897007, 44.233383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739529, 36.657139, 44.225479>,  <35.739601, 36.257355, 44.212307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739529, 36.657139, 44.225479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235780, -0.032043, 0.971278,
		0.971806, -0.007585, 0.235658,
		-0.000184, 0.999458, 0.032928,
		35.739475, 36.956978, 44.235359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162224, 36.392918, 44.792889>,  <35.739601, 36.257355, 44.212307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162224, 36.392918, 44.792889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970657, 36.738773, 44.732162>,  <35.855717, 36.946285, 44.695728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970657, 36.738773, 44.732162>,  <36.162224, 36.392918, 44.792889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970657, 36.738773, 44.732162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233240, 0.041392, 0.971538,
		0.846311, 0.500690, 0.181845,
		-0.478912, 0.864637, -0.151811,
		35.826984, 36.998165, 44.686619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405579, 36.789276, 45.288902>,  <36.162224, 36.392918, 44.792889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405579, 36.789276, 45.288902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065266, 36.959824, 45.166016>,  <35.861080, 37.062153, 45.092285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.065266, 36.959824, 45.166016>,  <36.405579, 36.789276, 45.288902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065266, 36.959824, 45.166016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208283, 0.263144, 0.942005,
		0.482487, 0.865426, -0.135072,
		-0.850779, 0.426372, -0.307217,
		35.810032, 37.087734, 45.073849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399891, 37.452641, 45.545578>,  <36.405579, 36.789276, 45.288902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399891, 37.452641, 45.545578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008530, 37.405548, 45.477612>,  <35.773712, 37.377293, 45.436832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008530, 37.405548, 45.477612>,  <36.399891, 37.452641, 45.545578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008530, 37.405548, 45.477612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191963, 0.212435, 0.958134,
		-0.076703, 0.970057, -0.230446,
		-0.978400, -0.117729, -0.169921,
		35.715008, 37.370228, 45.426636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103889, 37.993408, 45.945168>,  <36.399891, 37.452641, 45.545578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103889, 37.993408, 45.945168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812218, 37.729095, 45.873985>,  <35.637215, 37.570507, 45.831276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812218, 37.729095, 45.873985>,  <36.103889, 37.993408, 45.945168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812218, 37.729095, 45.873985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302971, 0.078556, 0.949757,
		-0.613599, 0.746459, -0.257479,
		-0.729181, -0.660779, -0.177953,
		35.593464, 37.530861, 45.820599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444012, 38.276524, 46.227947>,  <36.103889, 37.993408, 45.945168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444012, 38.276524, 46.227947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411190, 37.877888, 46.224384>,  <35.391499, 37.638706, 46.222248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411190, 37.877888, 46.224384>,  <35.444012, 38.276524, 46.227947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411190, 37.877888, 46.224384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300241, 0.016197, 0.953726,
		-0.950328, 0.080928, -0.300546,
		-0.082052, -0.996588, -0.008905,
		35.386574, 37.578911, 46.221714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794086, 38.133930, 46.666313>,  <35.444012, 38.276524, 46.227947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794086, 38.133930, 46.666313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000874, 37.792137, 46.645874>,  <35.124947, 37.587063, 46.633610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000874, 37.792137, 46.645874>,  <34.794086, 38.133930, 46.666313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000874, 37.792137, 46.645874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210187, -0.184582, 0.960078,
		-0.829799, -0.485588, -0.275023,
		0.516967, -0.854479, -0.051101,
		35.155964, 37.535793, 46.630543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387978, 37.615814, 46.988800>,  <34.794086, 38.133930, 46.666313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387978, 37.615814, 46.988800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753761, 37.454281, 46.978382>,  <34.973232, 37.357361, 46.972134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753761, 37.454281, 46.978382>,  <34.387978, 37.615814, 46.988800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753761, 37.454281, 46.978382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122492, -0.337569, 0.933297,
		-0.385689, -0.850273, -0.358160,
		0.914461, -0.403834, -0.026045,
		35.028099, 37.333130, 46.970570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313255, 36.900097, 47.088982>,  <34.387978, 37.615814, 46.988800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313255, 36.900097, 47.088982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668362, 37.033249, 47.216145>,  <34.881424, 37.113140, 47.292442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668362, 37.033249, 47.216145>,  <34.313255, 36.900097, 47.088982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668362, 37.033249, 47.216145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226068, -0.286314, 0.931084,
		0.400958, -0.898453, -0.178927,
		0.887764, 0.332876, 0.317911,
		34.934692, 37.133110, 47.311520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543179, 36.391045, 47.583046>,  <34.313255, 36.900097, 47.088982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543179, 36.391045, 47.583046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807350, 36.688286, 47.626190>,  <34.965851, 36.866631, 47.652077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807350, 36.688286, 47.626190>,  <34.543179, 36.391045, 47.583046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807350, 36.688286, 47.626190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086810, -0.218241, 0.972026,
		0.745857, -0.632587, -0.208641,
		0.660425, 0.743105, 0.107862,
		35.005478, 36.911217, 47.658550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190147, 36.143021, 48.029896>,  <34.543179, 36.391045, 47.583046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190147, 36.143021, 48.029896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168438, 36.541180, 48.061512>,  <35.155415, 36.780075, 48.080482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168438, 36.541180, 48.061512>,  <35.190147, 36.143021, 48.029896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168438, 36.541180, 48.061512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088468, -0.083638, 0.992561,
		0.994599, 0.046873, 0.092600,
		-0.054269, 0.995393, 0.079039,
		35.152157, 36.839798, 48.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330452, 36.220760, 48.711098>,  <35.190147, 36.143021, 48.029896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330452, 36.220760, 48.711098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176800, 36.586365, 48.658890>,  <35.084610, 36.805725, 48.627563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176800, 36.586365, 48.658890>,  <35.330452, 36.220760, 48.711098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176800, 36.586365, 48.658890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262337, 0.027495, 0.964584,
		0.885226, 0.404766, 0.229216,
		-0.384129, 0.914007, -0.130524,
		35.061562, 36.860565, 48.619732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626534, 36.725918, 49.184933>,  <35.330452, 36.220760, 48.711098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626534, 36.725918, 49.184933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.269367, 36.859882, 49.064583>,  <35.055065, 36.940262, 48.992374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.269367, 36.859882, 49.064583>,  <35.626534, 36.725918, 49.184933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269367, 36.859882, 49.064583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302054, 0.049918, 0.951983,
		0.333852, 0.940925, 0.056590,
		-0.892920, 0.334915, -0.300876,
		35.001492, 36.960358, 48.974319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353085, 37.149277, 49.735592>,  <35.626534, 36.725918, 49.184933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353085, 37.149277, 49.735592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023205, 37.085983, 49.518398>,  <34.825275, 37.048008, 49.388081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023205, 37.085983, 49.518398>,  <35.353085, 37.149277, 49.735592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023205, 37.085983, 49.518398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564910, 0.183972, 0.804383,
		-0.027387, 0.970111, -0.241109,
		-0.824698, -0.158235, -0.542987,
		34.775795, 37.038513, 49.355503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806248, 37.708023, 49.915161>,  <35.353085, 37.149277, 49.735592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806248, 37.708023, 49.915161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622215, 37.375244, 49.791103>,  <34.511795, 37.175575, 49.716667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622215, 37.375244, 49.791103>,  <34.806248, 37.708023, 49.915161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622215, 37.375244, 49.791103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575958, 0.013805, 0.817363,
		-0.675721, 0.554684, -0.485517,
		-0.460081, -0.831946, -0.310146,
		34.484192, 37.125660, 49.698059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110264, 37.883785, 49.947483>,  <34.806248, 37.708023, 49.915161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110264, 37.883785, 49.947483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135143, 37.484741, 49.959557>,  <34.150070, 37.245316, 49.966801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.135143, 37.484741, 49.959557>,  <34.110264, 37.883785, 49.947483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135143, 37.484741, 49.959557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592576, -0.012575, 0.805416,
		-0.803109, -0.067984, -0.591941,
		0.062200, -0.997607, 0.030187,
		34.153805, 37.185459, 49.968613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415791, 37.662346, 50.185471>,  <34.110264, 37.883785, 49.947483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415791, 37.662346, 50.185471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657841, 37.347019, 50.229984>,  <33.803070, 37.157825, 50.256691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657841, 37.347019, 50.229984>,  <33.415791, 37.662346, 50.185471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657841, 37.347019, 50.229984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274783, -0.075622, 0.958528,
		-0.747205, -0.610609, -0.262376,
		0.605127, -0.788314, 0.111280,
		33.839378, 37.110527, 50.263367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454552, 37.951710, 49.477669>,  <33.415791, 37.662346, 50.185471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454552, 37.951710, 49.477669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766701, 37.922493, 49.229256>,  <33.953991, 37.904964, 49.080208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.766701, 37.922493, 49.229256>,  <33.454552, 37.951710, 49.477669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766701, 37.922493, 49.229256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229065, -0.957509, -0.175230,
		-0.581843, 0.279002, -0.763949,
		0.780377, -0.073038, -0.621029,
		34.000813, 37.900581, 49.042946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755371, 38.409203, 49.740364>,  <33.454552, 37.951710, 49.477669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755371, 38.409203, 49.740364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380642, 38.273998, 49.776413>,  <32.155804, 38.192875, 49.798042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380642, 38.273998, 49.776413>,  <32.755371, 38.409203, 49.740364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380642, 38.273998, 49.776413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061050, -0.411649, -0.909295,
		0.344447, -0.846343, 0.406276,
		-0.936819, -0.338007, 0.090122,
		32.099598, 38.172596, 49.803448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711140, 37.729210, 49.406116>,  <32.755371, 38.409203, 49.740364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711140, 37.729210, 49.406116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319618, 37.807194, 49.431206>,  <32.084705, 37.853985, 49.446259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319618, 37.807194, 49.431206>,  <32.711140, 37.729210, 49.406116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319618, 37.807194, 49.431206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136364, -0.391923, -0.909836,
		-0.152800, -0.899104, 0.410201,
		-0.978804, 0.194959, 0.062719,
		32.025978, 37.865681, 49.450020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324085, 37.036808, 49.301079>,  <32.711140, 37.729210, 49.406116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324085, 37.036808, 49.301079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054680, 37.326614, 49.242481>,  <31.893038, 37.500500, 49.207321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054680, 37.326614, 49.242481>,  <32.324085, 37.036808, 49.301079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054680, 37.326614, 49.242481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043981, -0.237112, -0.970486,
		-0.737869, -0.647189, 0.191562,
		-0.673509, 0.724517, -0.146493,
		31.852627, 37.543968, 49.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644627, 36.747791, 49.017056>,  <32.324085, 37.036808, 49.301079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644627, 36.747791, 49.017056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697289, 37.121983, 48.885880>,  <31.728886, 37.346497, 48.807175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.697289, 37.121983, 48.885880>,  <31.644627, 36.747791, 49.017056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697289, 37.121983, 48.885880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028870, -0.327058, -0.944563,
		-0.990875, 0.133825, -0.016052,
		0.131656, 0.935481, -0.327937,
		31.736786, 37.402626, 48.787498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386023, 36.703156, 48.430801>,  <31.644627, 36.747791, 49.017056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386023, 36.703156, 48.430801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548746, 37.066807, 48.395031>,  <31.646381, 37.284996, 48.373569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548746, 37.066807, 48.395031>,  <31.386023, 36.703156, 48.430801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548746, 37.066807, 48.395031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098811, -0.141114, -0.985050,
		-0.908153, 0.391893, -0.147238,
		0.406811, 0.909124, -0.089430,
		31.670790, 37.339542, 48.368202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069113, 37.065044, 47.847538>,  <31.386023, 36.703156, 48.430801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069113, 37.065044, 47.847538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417618, 37.251034, 47.910412>,  <31.626720, 37.362625, 47.948135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417618, 37.251034, 47.910412>,  <31.069113, 37.065044, 47.847538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417618, 37.251034, 47.910412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132807, 0.084980, -0.987492,
		-0.472512, 0.881239, 0.012288,
		0.871261, 0.464970, 0.157189,
		31.678995, 37.390526, 47.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132313, 37.546455, 47.401936>,  <31.069113, 37.065044, 47.847538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132313, 37.546455, 47.401936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507318, 37.465698, 47.515289>,  <31.732323, 37.417244, 47.583302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507318, 37.465698, 47.515289>,  <31.132313, 37.546455, 47.401936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507318, 37.465698, 47.515289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257651, -0.144553, -0.955364,
		0.233846, 0.968681, -0.083503,
		0.937514, -0.201893, 0.283385,
		31.788572, 37.405128, 47.600304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509817, 37.860897, 46.781250>,  <31.132313, 37.546455, 47.401936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509817, 37.860897, 46.781250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796907, 37.648548, 46.961491>,  <31.969162, 37.521141, 47.069637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796907, 37.648548, 46.961491>,  <31.509817, 37.860897, 46.781250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796907, 37.648548, 46.961491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460219, -0.123981, -0.879106,
		0.522557, 0.838336, 0.155331,
		0.717728, -0.530869, 0.450605,
		32.012226, 37.489288, 47.096672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186436, 38.189445, 46.608662>,  <31.509817, 37.860897, 46.781250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186436, 38.189445, 46.608662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268414, 37.816444, 46.727608>,  <32.317600, 37.592644, 46.798977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268414, 37.816444, 46.727608>,  <32.186436, 38.189445, 46.608662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268414, 37.816444, 46.727608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706548, -0.069297, -0.704264,
		0.677337, 0.354444, 0.644658,
		0.204949, -0.932506, 0.297369,
		32.329899, 37.536694, 46.816818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887180, 38.150375, 46.687565>,  <32.186436, 38.189445, 46.608662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887180, 38.150375, 46.687565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757263, 37.778530, 46.617893>,  <32.679314, 37.555424, 46.576088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757263, 37.778530, 46.617893>,  <32.887180, 38.150375, 46.687565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757263, 37.778530, 46.617893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536252, -0.029302, -0.843549,
		0.779067, -0.367381, 0.508022,
		-0.324790, -0.929609, -0.174181,
		32.659824, 37.499649, 46.565639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463551, 37.929043, 46.365986>,  <32.887180, 38.150375, 46.687565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463551, 37.929043, 46.365986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186363, 37.649429, 46.295383>,  <33.020050, 37.481663, 46.253021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.186363, 37.649429, 46.295383>,  <33.463551, 37.929043, 46.365986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186363, 37.649429, 46.295383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422662, -0.195549, -0.884939,
		0.584085, -0.687834, 0.430963,
		-0.692965, -0.699031, -0.176505,
		32.978474, 37.439720, 46.242432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725368, 37.246655, 46.333225>,  <33.463551, 37.929043, 46.365986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725368, 37.246655, 46.333225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387653, 37.247219, 46.118870>,  <33.185024, 37.247559, 45.990257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.387653, 37.247219, 46.118870>,  <33.725368, 37.246655, 46.333225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387653, 37.247219, 46.118870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532350, -0.112619, -0.839000,
		-0.061537, -0.993637, 0.094330,
		-0.844285, 0.001413, -0.535893,
		33.134369, 37.247643, 45.958103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852585, 36.733040, 45.857101>,  <33.725368, 37.246655, 46.333225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852585, 36.733040, 45.857101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559059, 36.949955, 45.693420>,  <33.382946, 37.080105, 45.595211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.559059, 36.949955, 45.693420>,  <33.852585, 36.733040, 45.857101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559059, 36.949955, 45.693420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414477, -0.119881, -0.902129,
		-0.538266, -0.831599, -0.136794,
		-0.733811, 0.542284, -0.409206,
		33.338917, 37.112640, 45.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645794, 36.335403, 45.265774>,  <33.852585, 36.733040, 45.857101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645794, 36.335403, 45.265774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489243, 36.694168, 45.183441>,  <33.395313, 36.909428, 45.134041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489243, 36.694168, 45.183441>,  <33.645794, 36.335403, 45.265774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489243, 36.694168, 45.183441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267223, -0.103269, -0.958085,
		-0.880578, -0.429974, -0.199259,
		-0.391375, 0.896916, -0.205835,
		33.371830, 36.963242, 45.121689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458065, 36.170990, 44.692867>,  <33.645794, 36.335403, 45.265774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458065, 36.170990, 44.692867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422951, 36.569386, 44.699760>,  <33.401882, 36.808422, 44.703896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422951, 36.569386, 44.699760>,  <33.458065, 36.170990, 44.692867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422951, 36.569386, 44.699760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175192, 0.032468, -0.983999,
		-0.980613, -0.083358, -0.177340,
		-0.087782, 0.995990, 0.017235,
		33.396618, 36.868183, 44.704929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028439, 36.414299, 44.045486>,  <33.458065, 36.170990, 44.692867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028439, 36.414299, 44.045486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249130, 36.736042, 44.133675>,  <33.381546, 36.929089, 44.186588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.249130, 36.736042, 44.133675>,  <33.028439, 36.414299, 44.045486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249130, 36.736042, 44.133675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146676, 0.166642, -0.975047,
		-0.821027, 0.570295, -0.026039,
		0.551725, 0.804359, 0.220466,
		33.414646, 36.977348, 44.199814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807316, 36.865147, 43.630039>,  <33.028439, 36.414299, 44.045486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807316, 36.865147, 43.630039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149681, 37.039799, 43.740871>,  <33.355099, 37.144588, 43.807369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.149681, 37.039799, 43.740871>,  <32.807316, 36.865147, 43.630039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149681, 37.039799, 43.740871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198596, 0.217186, -0.955714,
		-0.477473, 0.873031, 0.099179,
		0.855909, 0.436631, 0.277081,
		33.406452, 37.170788, 43.823997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876312, 37.566666, 43.259991>,  <32.807316, 36.865147, 43.630039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876312, 37.566666, 43.259991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242844, 37.437439, 43.354618>,  <33.462765, 37.359901, 43.411392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242844, 37.437439, 43.354618>,  <32.876312, 37.566666, 43.259991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242844, 37.437439, 43.354618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326942, 0.262562, -0.907838,
		0.231179, 0.909224, 0.346218,
		0.916332, -0.323067, 0.236565,
		33.517742, 37.340519, 43.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348808, 38.171215, 43.048000>,  <32.876312, 37.566666, 43.259991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348808, 38.171215, 43.048000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579666, 37.844883, 43.062603>,  <33.718178, 37.649082, 43.071365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.579666, 37.844883, 43.062603>,  <33.348808, 38.171215, 43.048000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579666, 37.844883, 43.062603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271069, 0.149212, -0.950924,
		0.770345, 0.558712, 0.307262,
		0.577140, -0.815829, 0.036505,
		33.752808, 37.600136, 43.073555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152794, 38.316708, 42.895054>,  <33.348808, 38.171215, 43.048000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152794, 38.316708, 42.895054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085529, 37.933632, 42.801620>,  <34.045170, 37.703789, 42.745560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085529, 37.933632, 42.801620>,  <34.152794, 38.316708, 42.895054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085529, 37.933632, 42.801620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392891, 0.152212, -0.906901,
		0.904080, -0.244275, 0.350670,
		-0.168157, -0.957686, -0.233585,
		34.035084, 37.646328, 42.731544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.770267, 35.011662, 44.339355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402298, 35.159035, 44.285679>,  <42.181519, 35.247459, 44.253471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.402298, 35.159035, 44.285679>,  <42.770267, 35.011662, 44.339355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402298, 35.159035, 44.285679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194661, 0.132030, -0.971944,
		-0.340375, -0.920232, -0.193176,
		-0.919919, 0.368430, -0.134193,
		42.126324, 35.269562, 44.245422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424496, 34.754562, 43.730618>,  <42.770267, 35.011662, 44.339355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424496, 34.754562, 43.730618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252270, 35.113529, 43.769085>,  <42.148933, 35.328911, 43.792168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252270, 35.113529, 43.769085>,  <42.424496, 34.754562, 43.730618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252270, 35.113529, 43.769085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085668, 0.146708, -0.985463,
		-0.898485, -0.416066, -0.140048,
		-0.430564, 0.897422, 0.096171,
		42.123100, 35.382755, 43.797935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004463, 34.789257, 43.120914>,  <42.424496, 34.754562, 43.730618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004463, 34.789257, 43.120914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065979, 35.156231, 43.267700>,  <42.102886, 35.376415, 43.355770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065979, 35.156231, 43.267700>,  <42.004463, 34.789257, 43.120914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065979, 35.156231, 43.267700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135327, 0.348327, -0.927553,
		-0.978793, 0.192305, -0.070586,
		0.153786, 0.917435, 0.366964,
		42.112114, 35.431461, 43.377789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576595, 35.264202, 42.738049>,  <42.004463, 34.789257, 43.120914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576595, 35.264202, 42.738049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839050, 35.518425, 42.900799>,  <41.996525, 35.670959, 42.998451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839050, 35.518425, 42.900799>,  <41.576595, 35.264202, 42.738049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839050, 35.518425, 42.900799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040950, 0.508391, -0.860152,
		-0.753528, 0.581041, 0.307549,
		0.656139, 0.635555, 0.406880,
		42.035892, 35.709091, 43.022861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475990, 35.846107, 42.322033>,  <41.576595, 35.264202, 42.738049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475990, 35.846107, 42.322033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835548, 35.888992, 42.491970>,  <42.051285, 35.914722, 42.593933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.835548, 35.888992, 42.491970>,  <41.475990, 35.846107, 42.322033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835548, 35.888992, 42.491970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370666, 0.330987, -0.867787,
		-0.233660, 0.937524, 0.257781,
		0.898894, 0.107216, 0.424846,
		42.105217, 35.921158, 42.619423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686825, 36.465187, 42.049835>,  <41.475990, 35.846107, 42.322033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686825, 36.465187, 42.049835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018261, 36.281807, 42.178371>,  <42.217121, 36.171780, 42.255493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018261, 36.281807, 42.178371>,  <41.686825, 36.465187, 42.049835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018261, 36.281807, 42.178371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487148, 0.307533, -0.817380,
		0.275908, 0.833813, 0.478153,
		0.828590, -0.458453, 0.321340,
		42.266838, 36.144272, 42.274773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129559, 36.875690, 41.767605>,  <41.686825, 36.465187, 42.049835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129559, 36.875690, 41.767605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352497, 36.552059, 41.842167>,  <42.486259, 36.357880, 41.886906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.352497, 36.552059, 41.842167>,  <42.129559, 36.875690, 41.767605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352497, 36.552059, 41.842167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453017, 0.108188, -0.884913,
		0.695799, 0.577653, 0.426826,
		0.557350, -0.809081, 0.186410,
		42.519703, 36.309334, 41.898090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733017, 37.152622, 41.544147>,  <42.129559, 36.875690, 41.767605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733017, 37.152622, 41.544147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774014, 36.755634, 41.570984>,  <42.798611, 36.517441, 41.587086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774014, 36.755634, 41.570984>,  <42.733017, 37.152622, 41.544147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774014, 36.755634, 41.570984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496967, -0.007338, -0.867738,
		0.861696, 0.122273, 0.492473,
		0.102487, -0.992469, 0.067088,
		42.804760, 36.457893, 41.591110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427128, 37.061947, 41.359917>,  <42.733017, 37.152622, 41.544147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427128, 37.061947, 41.359917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204105, 36.737408, 41.289658>,  <43.070293, 36.542683, 41.247501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.204105, 36.737408, 41.289658>,  <43.427128, 37.061947, 41.359917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204105, 36.737408, 41.289658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427694, -0.099411, -0.898440,
		0.711486, -0.576050, 0.402435,
		-0.557553, -0.811347, -0.175644,
		43.036839, 36.494003, 41.236965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940365, 36.534325, 41.172218>,  <43.427128, 37.061947, 41.359917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940365, 36.534325, 41.172218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604504, 36.367950, 41.032516>,  <43.402985, 36.268127, 40.948696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604504, 36.367950, 41.032516>,  <43.940365, 36.534325, 41.172218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604504, 36.367950, 41.032516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423845, -0.099718, -0.900229,
		0.339611, -0.903910, 0.260022,
		-0.839655, -0.415936, -0.349252,
		43.352608, 36.243168, 40.927742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203049, 36.015362, 40.855759>,  <43.940365, 36.534325, 41.172218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203049, 36.015362, 40.855759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834923, 36.068405, 40.708557>,  <43.614048, 36.100231, 40.620235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.834923, 36.068405, 40.708557>,  <44.203049, 36.015362, 40.855759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834923, 36.068405, 40.708557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328551, -0.248518, -0.911204,
		-0.212289, -0.959507, 0.185147,
		-0.920319, 0.132608, -0.368005,
		43.558826, 36.108189, 40.598156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019073, 35.429836, 40.461914>,  <44.203049, 36.015362, 40.855759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019073, 35.429836, 40.461914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751015, 35.702827, 40.345207>,  <43.590179, 35.866623, 40.275185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.751015, 35.702827, 40.345207>,  <44.019073, 35.429836, 40.461914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751015, 35.702827, 40.345207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146123, -0.264091, -0.953365,
		-0.727703, -0.681528, 0.077254,
		-0.670146, 0.682478, -0.291767,
		43.549973, 35.907570, 40.257679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574627, 35.104706, 39.987003>,  <44.019073, 35.429836, 40.461914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574627, 35.104706, 39.987003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535320, 35.492508, 39.897202>,  <43.511738, 35.725189, 39.843323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535320, 35.492508, 39.897202>,  <43.574627, 35.104706, 39.987003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535320, 35.492508, 39.897202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105638, -0.214158, -0.971070,
		-0.989538, -0.119135, -0.081373,
		-0.098262, 0.969507, -0.224502,
		43.505840, 35.783360, 39.829849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959846, 35.180576, 39.585381>,  <43.574627, 35.104706, 39.987003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959846, 35.180576, 39.585381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190048, 35.492699, 39.487461>,  <43.328167, 35.679970, 39.428707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190048, 35.492699, 39.487461>,  <42.959846, 35.180576, 39.585381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190048, 35.492699, 39.487461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082483, -0.353197, -0.931906,
		-0.813630, 0.516122, -0.267627,
		0.575502, 0.780301, -0.244801,
		43.362698, 35.726788, 39.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667194, 35.417503, 38.968235>,  <42.959846, 35.180576, 39.585381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667194, 35.417503, 38.968235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040459, 35.560833, 38.979614>,  <43.264420, 35.646832, 38.986443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.040459, 35.560833, 38.979614>,  <42.667194, 35.417503, 38.968235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040459, 35.560833, 38.979614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132085, -0.268225, -0.954258,
		-0.334307, 0.894235, -0.297627,
		0.933162, 0.358327, 0.028446,
		43.320408, 35.668331, 38.988148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636696, 35.686840, 38.366890>,  <42.667194, 35.417503, 38.968235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636696, 35.686840, 38.366890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014568, 35.629871, 38.485073>,  <43.241291, 35.595688, 38.555984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014568, 35.629871, 38.485073>,  <42.636696, 35.686840, 38.366890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014568, 35.629871, 38.485073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260399, -0.222043, -0.939622,
		0.199428, 0.964579, -0.172672,
		0.944680, -0.142423, 0.295456,
		43.297974, 35.587143, 38.573711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047264, 35.970360, 37.832840>,  <42.636696, 35.686840, 38.366890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047264, 35.970360, 37.832840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331547, 35.753963, 38.012718>,  <43.502117, 35.624126, 38.120644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331547, 35.753963, 38.012718>,  <43.047264, 35.970360, 37.832840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331547, 35.753963, 38.012718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381484, -0.240710, -0.892484,
		0.591074, 0.805844, 0.035306,
		0.710705, -0.540993, 0.449694,
		43.544758, 35.591667, 38.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696167, 36.219383, 37.639378>,  <43.047264, 35.970360, 37.832840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696167, 36.219383, 37.639378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738743, 35.835964, 37.745102>,  <43.764290, 35.605911, 37.808537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.738743, 35.835964, 37.745102>,  <43.696167, 36.219383, 37.639378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738743, 35.835964, 37.745102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382056, -0.205983, -0.900891,
		0.917989, 0.196874, 0.344293,
		0.106443, -0.958547, 0.264307,
		43.770676, 35.548401, 37.824394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326870, 36.087784, 37.370243>,  <43.696167, 36.219383, 37.639378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326870, 36.087784, 37.370243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164925, 35.726776, 37.428947>,  <44.067757, 35.510170, 37.464172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164925, 35.726776, 37.428947>,  <44.326870, 36.087784, 37.370243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164925, 35.726776, 37.428947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321078, -0.290606, -0.901364,
		0.856153, -0.317803, 0.407435,
		-0.404859, -0.902524, 0.146763,
		44.043468, 35.456020, 37.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838024, 35.573399, 37.120670>,  <44.326870, 36.087784, 37.370243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838024, 35.573399, 37.120670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.467884, 35.422157, 37.109547>,  <44.245800, 35.331413, 37.102871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.467884, 35.422157, 37.109547>,  <44.838024, 35.573399, 37.120670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467884, 35.422157, 37.109547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148056, -0.292869, -0.944620,
		0.349020, -0.878217, 0.326985,
		-0.925345, -0.378103, -0.027808,
		44.190281, 35.308727, 37.101204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953289, 34.929195, 36.812050>,  <44.838024, 35.573399, 37.120670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953289, 34.929195, 36.812050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560448, 35.002975, 36.796787>,  <44.324745, 35.047241, 36.787632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560448, 35.002975, 36.796787>,  <44.953289, 34.929195, 36.812050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560448, 35.002975, 36.796787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021286, -0.309951, -0.950514,
		-0.187146, -0.932689, 0.308329,
		-0.982102, 0.184448, -0.038153,
		44.265816, 35.058308, 36.785343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261826, 34.865585, 36.150082>,  <44.953289, 34.929195, 36.812050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261826, 34.865585, 36.150082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.527161, 34.566345, 36.142891>,  <45.686363, 34.386803, 36.138577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.527161, 34.566345, 36.142891>,  <45.261826, 34.865585, 36.150082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527161, 34.566345, 36.142891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106592, -0.118235, 0.987248,
		-0.740686, -0.652967, -0.158172,
		0.663342, -0.748100, -0.017973,
		45.726162, 34.341915, 36.137501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999454, 34.261604, 36.469181>,  <45.261826, 34.865585, 36.150082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999454, 34.261604, 36.469181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391277, 34.319874, 36.524685>,  <45.626369, 34.354836, 36.557987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391277, 34.319874, 36.524685>,  <44.999454, 34.261604, 36.469181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391277, 34.319874, 36.524685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111647, -0.180156, 0.977281,
		0.167361, -0.972792, -0.160208,
		0.979553, 0.145672, 0.138760,
		45.685143, 34.363575, 36.566315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282845, 33.605083, 36.677467>,  <44.999454, 34.261604, 36.469181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282845, 33.605083, 36.677467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523964, 33.899391, 36.800934>,  <45.668636, 34.075974, 36.875015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.523964, 33.899391, 36.800934>,  <45.282845, 33.605083, 36.677467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523964, 33.899391, 36.800934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079800, -0.440512, 0.894193,
		0.793889, -0.514391, -0.324256,
		0.602803, 0.735766, 0.308669,
		45.704803, 34.120121, 36.893536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875416, 33.452908, 36.959713>,  <45.282845, 33.605083, 36.677467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875416, 33.452908, 36.959713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847672, 33.807613, 37.142506>,  <45.831024, 34.020439, 37.252182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847672, 33.807613, 37.142506>,  <45.875416, 33.452908, 36.959713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847672, 33.807613, 37.142506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037518, -0.460078, 0.887086,
		0.996886, 0.044386, 0.065182,
		-0.069363, 0.886769, 0.456980,
		45.826862, 34.073643, 37.279598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357006, 33.488972, 37.483452>,  <45.875416, 33.452908, 36.959713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357006, 33.488972, 37.483452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083279, 33.763973, 37.580647>,  <45.919041, 33.928974, 37.638962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083279, 33.763973, 37.580647>,  <46.357006, 33.488972, 37.483452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083279, 33.763973, 37.580647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085090, -0.255660, 0.963015,
		0.724198, 0.679688, 0.116454,
		-0.684322, 0.687505, 0.242983,
		45.877983, 33.970226, 37.653542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566757, 33.768585, 38.205841>,  <46.357006, 33.488972, 37.483452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566757, 33.768585, 38.205841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.204700, 33.938030, 38.191532>,  <45.987469, 34.039696, 38.182949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.204700, 33.938030, 38.191532>,  <46.566757, 33.768585, 38.205841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204700, 33.938030, 38.191532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123197, -0.180847, 0.975765,
		0.406874, 0.887609, 0.215879,
		-0.905139, 0.423609, -0.035769,
		45.933159, 34.065113, 38.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550037, 34.070248, 38.800602>,  <46.566757, 33.768585, 38.205841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550037, 34.070248, 38.800602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170727, 34.027355, 38.681087>,  <45.943142, 34.001617, 38.609379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.170727, 34.027355, 38.681087>,  <46.550037, 34.070248, 38.800602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170727, 34.027355, 38.681087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279424, -0.164727, 0.945932,
		-0.150657, 0.980493, 0.126242,
		-0.948274, -0.107236, -0.298791,
		45.886246, 33.995186, 38.591450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150135, 34.562275, 39.279312>,  <46.550037, 34.070248, 38.800602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150135, 34.562275, 39.279312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915524, 34.286617, 39.109108>,  <45.774757, 34.121223, 39.006985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915524, 34.286617, 39.109108>,  <46.150135, 34.562275, 39.279312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915524, 34.286617, 39.109108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554472, -0.041300, 0.831177,
		-0.590372, 0.723449, -0.357886,
		-0.586533, -0.689142, -0.425515,
		45.739563, 34.079876, 38.981453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424541, 34.737621, 39.450012>,  <46.150135, 34.562275, 39.279312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424541, 34.737621, 39.450012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413124, 34.344711, 39.375916>,  <45.406273, 34.108963, 39.331459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413124, 34.344711, 39.375916>,  <45.424541, 34.737621, 39.450012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413124, 34.344711, 39.375916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351733, -0.163595, 0.921694,
		-0.935665, 0.091459, -0.340831,
		-0.028539, -0.982279, -0.185239,
		45.404564, 34.050026, 39.320343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684952, 34.475418, 39.632233>,  <45.424541, 34.737621, 39.450012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684952, 34.475418, 39.632233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906021, 34.142437, 39.616356>,  <45.038662, 33.942650, 39.606831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906021, 34.142437, 39.616356>,  <44.684952, 34.475418, 39.632233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906021, 34.142437, 39.616356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479908, -0.356833, 0.801472,
		-0.681349, -0.423906, -0.596713,
		0.552676, -0.832450, -0.039692,
		45.071823, 33.892700, 39.604450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262642, 33.999855, 39.843552>,  <44.684952, 34.475418, 39.632233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262642, 33.999855, 39.843552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631310, 33.856186, 39.902245>,  <44.852509, 33.769985, 39.937462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.631310, 33.856186, 39.902245>,  <44.262642, 33.999855, 39.843552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631310, 33.856186, 39.902245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281967, -0.360290, 0.889205,
		-0.266508, -0.860923, -0.433341,
		0.921666, -0.359168, 0.146732,
		44.907810, 33.748436, 39.946262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259483, 33.232319, 40.007671>,  <44.262642, 33.999855, 39.843552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259483, 33.232319, 40.007671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597755, 33.379360, 40.162437>,  <44.800716, 33.467587, 40.255295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597755, 33.379360, 40.162437>,  <44.259483, 33.232319, 40.007671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597755, 33.379360, 40.162437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258213, -0.352649, 0.899425,
		0.467075, -0.860527, -0.203307,
		0.845676, 0.367603, 0.386912,
		44.851460, 33.489639, 40.278511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413006, 32.743736, 40.421238>,  <44.259483, 33.232319, 40.007671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413006, 32.743736, 40.421238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626591, 33.059948, 40.541199>,  <44.754742, 33.249676, 40.613174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626591, 33.059948, 40.541199>,  <44.413006, 32.743736, 40.421238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626591, 33.059948, 40.541199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237768, -0.199997, 0.950509,
		0.811389, -0.578843, 0.081173,
		0.533962, 0.790533, 0.299905,
		44.786777, 33.297108, 40.631172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.536007, 32.587669, 41.024532>,  <44.413006, 32.743736, 40.421238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.536007, 32.587669, 41.024532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642956, 32.971367, 41.061092>,  <44.707127, 33.201588, 41.083027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642956, 32.971367, 41.061092>,  <44.536007, 32.587669, 41.024532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642956, 32.971367, 41.061092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264322, -0.018202, 0.964263,
		0.926631, -0.281978, 0.248684,
		0.267375, 0.959248, 0.091400,
		44.723167, 33.259140, 41.088512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077915, 32.652596, 41.618458>,  <44.536007, 32.587669, 41.024532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077915, 32.652596, 41.618458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885040, 32.994633, 41.542240>,  <44.769314, 33.199856, 41.496510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885040, 32.994633, 41.542240>,  <45.077915, 32.652596, 41.618458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885040, 32.994633, 41.542240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315527, 0.033389, 0.948329,
		0.817272, 0.517396, 0.253705,
		-0.482191, 0.855094, -0.190540,
		44.740383, 33.251160, 41.485077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368435, 33.078430, 42.076614>,  <45.077915, 32.652596, 41.618458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368435, 33.078430, 42.076614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014961, 33.243622, 41.988476>,  <44.802876, 33.342735, 41.935593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.014961, 33.243622, 41.988476>,  <45.368435, 33.078430, 42.076614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014961, 33.243622, 41.988476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156299, 0.183379, 0.970537,
		0.441215, 0.892089, -0.097502,
		-0.883685, 0.412977, -0.220342,
		44.749855, 33.367516, 41.922375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328354, 33.561749, 42.563637>,  <45.368435, 33.078430, 42.076614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328354, 33.561749, 42.563637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946209, 33.526501, 42.450840>,  <44.716923, 33.505352, 42.383163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.946209, 33.526501, 42.450840>,  <45.328354, 33.561749, 42.563637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946209, 33.526501, 42.450840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282626, -0.005445, 0.959215,
		-0.086065, 0.996095, -0.019704,
		-0.955361, -0.088124, -0.281991,
		44.659599, 33.500065, 42.366241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000076, 33.927231, 43.101707>,  <45.328354, 33.561749, 42.563637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000076, 33.927231, 43.101707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714901, 33.712894, 42.920780>,  <44.543797, 33.584293, 42.812222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714901, 33.712894, 42.920780>,  <45.000076, 33.927231, 43.101707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714901, 33.712894, 42.920780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442050, -0.157299, 0.883090,
		-0.544348, 0.829535, -0.124725,
		-0.712936, -0.535843, -0.452322,
		44.501019, 33.552143, 42.785084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453007, 34.260513, 43.293541>,  <45.000076, 33.927231, 43.101707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453007, 34.260513, 43.293541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298271, 33.902592, 43.204380>,  <44.205429, 33.687840, 43.150883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298271, 33.902592, 43.204380>,  <44.453007, 34.260513, 43.293541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298271, 33.902592, 43.204380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343855, -0.084316, 0.935230,
		-0.855639, 0.438430, -0.275065,
		-0.386840, -0.894802, -0.222901,
		44.182220, 33.634151, 43.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746357, 34.187107, 43.508537>,  <44.453007, 34.260513, 43.293541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746357, 34.187107, 43.508537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866299, 33.805962, 43.490063>,  <43.938263, 33.577274, 43.478977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866299, 33.805962, 43.490063>,  <43.746357, 34.187107, 43.508537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866299, 33.805962, 43.490063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459998, -0.186835, 0.868040,
		-0.835756, -0.239041, -0.494340,
		0.299857, -0.952865, -0.046190,
		43.956257, 33.520103, 43.476204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221420, 33.810253, 43.754848>,  <43.746357, 34.187107, 43.508537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221420, 33.810253, 43.754848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509979, 33.534168, 43.777466>,  <43.683113, 33.368519, 43.791035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.509979, 33.534168, 43.777466>,  <43.221420, 33.810253, 43.754848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509979, 33.534168, 43.777466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380953, -0.327325, 0.864716,
		-0.578328, -0.645342, -0.499069,
		0.721395, -0.690211, 0.056544,
		43.726398, 33.327106, 43.794430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.858368, 37.616974, 40.330330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559753, 37.729267, 40.089043>,  <38.380585, 37.796642, 39.944271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559753, 37.729267, 40.089043>,  <38.858368, 37.616974, 40.330330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559753, 37.729267, 40.089043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533314, -0.289602, -0.794800,
		-0.397822, -0.915051, 0.066477,
		-0.746534, 0.280736, -0.603220,
		38.335793, 37.813488, 39.908077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807587, 37.063240, 39.818958>,  <38.858368, 37.616974, 40.330330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807587, 37.063240, 39.818958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647419, 37.392971, 39.658882>,  <38.551319, 37.590809, 39.562836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647419, 37.392971, 39.658882>,  <38.807587, 37.063240, 39.818958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647419, 37.392971, 39.658882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418258, -0.224162, -0.880234,
		-0.815305, -0.519849, -0.255020,
		-0.400423, 0.824323, -0.400191,
		38.527290, 37.640266, 39.538826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641979, 36.862473, 39.157913>,  <38.807587, 37.063240, 39.818958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641979, 36.862473, 39.157913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636547, 37.260406, 39.117695>,  <38.633286, 37.499168, 39.093563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636547, 37.260406, 39.117695>,  <38.641979, 36.862473, 39.157913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636547, 37.260406, 39.117695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067295, -0.099421, -0.992767,
		-0.997640, -0.020253, -0.065597,
		-0.013585, 0.994839, -0.100549,
		38.632473, 37.558857, 39.087532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253319, 37.043835, 38.513988>,  <38.641979, 36.862473, 39.157913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253319, 37.043835, 38.513988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465820, 37.372810, 38.595345>,  <38.593323, 37.570194, 38.644157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465820, 37.372810, 38.595345>,  <38.253319, 37.043835, 38.513988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465820, 37.372810, 38.595345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282878, 0.054094, -0.957629,
		-0.798590, 0.566281, -0.203911,
		0.531257, 0.822435, 0.203387,
		38.625198, 37.619541, 38.656361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040390, 37.600357, 37.998482>,  <38.253319, 37.043835, 38.513988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040390, 37.600357, 37.998482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399536, 37.700829, 38.143116>,  <38.615025, 37.761112, 38.229897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399536, 37.700829, 38.143116>,  <38.040390, 37.600357, 37.998482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399536, 37.700829, 38.143116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347306, 0.100656, -0.932334,
		-0.270574, 0.962694, 0.003141,
		0.897869, 0.251174, 0.361585,
		38.668896, 37.776180, 38.251591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257252, 38.166096, 37.685619>,  <38.040390, 37.600357, 37.998482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257252, 38.166096, 37.685619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615841, 38.066376, 37.832146>,  <38.830994, 38.006542, 37.920059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615841, 38.066376, 37.832146>,  <38.257252, 38.166096, 37.685619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615841, 38.066376, 37.832146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415943, 0.188513, -0.889637,
		0.152735, 0.949901, 0.272692,
		0.896473, -0.249303, 0.366312,
		38.884781, 37.991585, 37.942039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634998, 38.560829, 37.376366>,  <38.257252, 38.166096, 37.685619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634998, 38.560829, 37.376366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863453, 38.247524, 37.474594>,  <39.000526, 38.059544, 37.533531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863453, 38.247524, 37.474594>,  <38.634998, 38.560829, 37.376366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863453, 38.247524, 37.474594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507094, 0.101423, -0.855903,
		0.645488, 0.613366, 0.455113,
		0.571140, -0.783260, 0.245567,
		39.034794, 38.012547, 37.548264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320271, 38.756542, 37.105602>,  <38.634998, 38.560829, 37.376366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320271, 38.756542, 37.105602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342834, 38.363567, 37.176754>,  <39.356373, 38.127785, 37.219444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342834, 38.363567, 37.176754>,  <39.320271, 38.756542, 37.105602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342834, 38.363567, 37.176754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530807, -0.121391, -0.838754,
		0.845614, 0.141732, 0.514636,
		0.056406, -0.982434, 0.177883,
		39.359756, 38.068836, 37.230118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984783, 38.639706, 36.815010>,  <39.320271, 38.756542, 37.105602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984783, 38.639706, 36.815010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833538, 38.270336, 36.841290>,  <39.742790, 38.048714, 36.857056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833538, 38.270336, 36.841290>,  <39.984783, 38.639706, 36.815010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833538, 38.270336, 36.841290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547131, -0.280148, -0.788774,
		0.746781, -0.262297, 0.611162,
		-0.378109, -0.923427, 0.065698,
		39.720104, 37.993309, 36.861000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539803, 38.158550, 36.657879>,  <39.984783, 38.639706, 36.815010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539803, 38.158550, 36.657879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209408, 37.936806, 36.617027>,  <40.011169, 37.803761, 36.592518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209408, 37.936806, 36.617027>,  <40.539803, 38.158550, 36.657879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209408, 37.936806, 36.617027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377041, -0.408662, -0.831165,
		0.419030, -0.725037, 0.546566,
		-0.825987, -0.554361, -0.102127,
		39.961613, 37.770496, 36.586388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840420, 37.520851, 36.472813>,  <40.539803, 38.158550, 36.657879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840420, 37.520851, 36.472813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459476, 37.498959, 36.352806>,  <40.230911, 37.485821, 36.280800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459476, 37.498959, 36.352806>,  <40.840420, 37.520851, 36.472813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459476, 37.498959, 36.352806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279186, -0.552377, -0.785452,
		-0.122730, -0.831796, 0.541344,
		-0.952362, -0.054737, -0.300019,
		40.173767, 37.482536, 36.262802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739941, 36.785397, 36.268303>,  <40.840420, 37.520851, 36.472813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739941, 36.785397, 36.268303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451683, 36.991718, 36.082993>,  <40.278728, 37.115513, 35.971806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451683, 36.991718, 36.082993>,  <40.739941, 36.785397, 36.268303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451683, 36.991718, 36.082993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166118, -0.520285, -0.837681,
		-0.673115, -0.680624, 0.289253,
		-0.720639, 0.515806, -0.463275,
		40.235493, 37.146461, 35.944012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199196, 36.334114, 35.952915>,  <40.739941, 36.785397, 36.268303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199196, 36.334114, 35.952915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237648, 36.683807, 35.762558>,  <40.260719, 36.893623, 35.648342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237648, 36.683807, 35.762558>,  <40.199196, 36.334114, 35.952915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237648, 36.683807, 35.762558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242126, -0.484287, -0.840738,
		-0.965471, -0.034410, -0.258227,
		0.096127, 0.874232, -0.475897,
		40.266487, 36.946075, 35.619789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771080, 35.963215, 35.555428>,  <40.199196, 36.334114, 35.952915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771080, 35.963215, 35.555428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882442, 36.098557, 35.195869>,  <40.949261, 36.179760, 34.980137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882442, 36.098557, 35.195869>,  <40.771080, 35.963215, 35.555428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882442, 36.098557, 35.195869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118027, -0.940853, -0.317593,
		-0.953183, -0.017672, -0.301878,
		0.278411, 0.338354, -0.898891,
		40.965965, 36.200062, 34.926201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941097, 36.024982, 36.319210>,  <40.771080, 35.963215, 35.555428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941097, 36.024982, 36.319210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015606, 35.646450, 36.213558>,  <41.060310, 35.419331, 36.150169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015606, 35.646450, 36.213558>,  <40.941097, 36.024982, 36.319210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015606, 35.646450, 36.213558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761304, -0.308954, 0.570056,
		-0.621064, 0.094897, -0.777994,
		0.186268, -0.946331, -0.264126,
		41.071487, 35.362553, 36.134319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299484, 35.717953, 36.276821>,  <40.941097, 36.024982, 36.319210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299484, 35.717953, 36.276821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551231, 35.407925, 36.299297>,  <40.702278, 35.221909, 36.312782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551231, 35.407925, 36.299297>,  <40.299484, 35.717953, 36.276821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551231, 35.407925, 36.299297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729982, -0.564861, 0.384783,
		-0.266497, -0.283186, -0.921295,
		0.629369, -0.775073, 0.056186,
		40.740044, 35.175404, 36.316154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054497, 35.042900, 35.946892>,  <40.299484, 35.717953, 36.276821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054497, 35.042900, 35.946892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310436, 34.984863, 36.248764>,  <40.464001, 34.950043, 36.429890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310436, 34.984863, 36.248764>,  <40.054497, 35.042900, 35.946892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310436, 34.984863, 36.248764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556853, -0.764314, 0.325176,
		0.529635, -0.628310, -0.569836,
		0.639845, -0.145090, 0.754683,
		40.502388, 34.941338, 36.475170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689320, 34.373722, 36.102535>,  <40.054497, 35.042900, 35.946892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689320, 34.373722, 36.102535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984032, 34.389244, 36.372543>,  <40.160858, 34.398556, 36.534550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984032, 34.389244, 36.372543>,  <39.689320, 34.373722, 36.102535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984032, 34.389244, 36.372543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423326, -0.751989, 0.505280,
		0.527215, -0.658032, -0.537622,
		0.736776, 0.038802, 0.675023,
		40.205063, 34.400887, 36.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856876, 33.670338, 36.226395>,  <39.689320, 34.373722, 36.102535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856876, 33.670338, 36.226395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959965, 33.898407, 36.538414>,  <40.021820, 34.035248, 36.725628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959965, 33.898407, 36.538414>,  <39.856876, 33.670338, 36.226395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959965, 33.898407, 36.538414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315024, -0.713624, 0.625700,
		0.913421, -0.406993, -0.004299,
		0.257723, 0.570174, 0.780052,
		40.037281, 34.069458, 36.772430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029770, 33.169617, 36.708984>,  <39.856876, 33.670338, 36.226395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029770, 33.169617, 36.708984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959793, 33.502113, 36.920052>,  <39.917809, 33.701611, 37.046692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959793, 33.502113, 36.920052>,  <40.029770, 33.169617, 36.708984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959793, 33.502113, 36.920052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529770, -0.531207, 0.661182,
		0.829903, -0.163875, 0.533297,
		-0.174940, 0.831242, 0.527667,
		39.907310, 33.751488, 37.078350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273918, 32.969772, 37.395477>,  <40.029770, 33.169617, 36.708984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273918, 32.969772, 37.395477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024601, 33.282383, 37.406261>,  <39.875011, 33.469948, 37.412731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024601, 33.282383, 37.406261>,  <40.273918, 32.969772, 37.395477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024601, 33.282383, 37.406261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485698, -0.413923, 0.769913,
		0.612865, 0.466785, 0.637580,
		-0.623293, 0.781524, 0.026963,
		39.837612, 33.516842, 37.414349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234535, 33.178288, 38.167152>,  <40.273918, 32.969772, 37.395477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234535, 33.178288, 38.167152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918419, 33.309769, 37.960308>,  <39.728748, 33.388657, 37.836201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918419, 33.309769, 37.960308>,  <40.234535, 33.178288, 38.167152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918419, 33.309769, 37.960308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612255, -0.390148, 0.687698,
		0.024296, 0.860082, 0.509577,
		-0.790287, 0.328700, -0.517111,
		39.681332, 33.408379, 37.805176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832664, 33.537766, 38.648853>,  <40.234535, 33.178288, 38.167152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832664, 33.537766, 38.648853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597080, 33.446991, 38.338596>,  <39.455730, 33.392525, 38.152443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597080, 33.446991, 38.338596>,  <39.832664, 33.537766, 38.648853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597080, 33.446991, 38.338596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745625, -0.217598, 0.629837,
		-0.311712, 0.949289, -0.041054,
		-0.588964, -0.226939, -0.775642,
		39.420391, 33.378910, 38.105904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279957, 34.053722, 38.627155>,  <39.832664, 33.537766, 38.648853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279957, 34.053722, 38.627155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155830, 33.723644, 38.438370>,  <39.081352, 33.525597, 38.325100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155830, 33.723644, 38.438370>,  <39.279957, 34.053722, 38.627155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155830, 33.723644, 38.438370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623357, -0.198197, 0.756402,
		-0.717724, 0.528927, -0.452889,
		-0.310320, -0.825200, -0.471961,
		39.062733, 33.476086, 38.296780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579357, 34.037880, 38.803062>,  <39.279957, 34.053722, 38.627155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579357, 34.037880, 38.803062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637592, 33.663109, 38.675964>,  <38.672535, 33.438244, 38.599705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637592, 33.663109, 38.675964>,  <38.579357, 34.037880, 38.803062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637592, 33.663109, 38.675964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416259, -0.349369, 0.839446,
		-0.897514, 0.010049, -0.440871,
		0.145591, -0.936931, -0.317746,
		38.681271, 33.382030, 38.580639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928677, 33.719948, 38.709805>,  <38.579357, 34.037880, 38.803062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928677, 33.719948, 38.709805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211411, 33.443333, 38.769352>,  <38.381050, 33.277363, 38.805080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211411, 33.443333, 38.769352>,  <37.928677, 33.719948, 38.709805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211411, 33.443333, 38.769352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417983, -0.238527, 0.876582,
		-0.570679, -0.681822, -0.457650,
		0.706835, -0.691537, 0.148867,
		38.423462, 33.235870, 38.814011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552635, 33.151478, 38.818707>,  <37.928677, 33.719948, 38.709805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552635, 33.151478, 38.818707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902958, 33.066479, 38.992058>,  <38.113152, 33.015480, 39.096069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902958, 33.066479, 38.992058>,  <37.552635, 33.151478, 38.818707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902958, 33.066479, 38.992058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476536, -0.523340, 0.706420,
		0.076692, -0.825204, -0.559605,
		0.875804, -0.212495, 0.433375,
		38.165699, 33.002731, 39.122070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421383, 32.536095, 39.157654>,  <37.552635, 33.151478, 38.818707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421383, 32.536095, 39.157654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774872, 32.614880, 39.327477>,  <37.986965, 32.662151, 39.429371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774872, 32.614880, 39.327477>,  <37.421383, 32.536095, 39.157654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774872, 32.614880, 39.327477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297011, -0.465053, 0.833973,
		0.361701, -0.863095, -0.352476,
		0.883717, 0.196959, 0.424559,
		38.039986, 32.673965, 39.454845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319557, 31.841923, 38.934841>,  <37.421383, 32.536095, 39.157654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319557, 31.841923, 38.934841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010983, 31.612581, 38.824455>,  <36.825840, 31.474977, 38.758224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010983, 31.612581, 38.824455>,  <37.319557, 31.841923, 38.934841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010983, 31.612581, 38.824455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176500, 0.223873, -0.958503,
		0.611341, -0.788130, -0.071506,
		-0.771433, -0.573352, -0.275968,
		36.779552, 31.440577, 38.741665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667816, 31.400126, 38.567825>,  <37.319557, 31.841923, 38.934841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667816, 31.400126, 38.567825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285702, 31.376974, 38.451836>,  <37.056435, 31.363083, 38.382240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285702, 31.376974, 38.451836>,  <37.667816, 31.400126, 38.567825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285702, 31.376974, 38.451836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282157, 0.114889, -0.952464,
		0.088436, -0.991691, -0.093423,
		-0.955284, -0.057872, -0.289973,
		36.999115, 31.359610, 38.364845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655823, 30.879915, 37.976246>,  <37.667816, 31.400126, 38.567825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655823, 30.879915, 37.976246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321217, 31.093325, 37.926296>,  <37.120453, 31.221371, 37.896324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321217, 31.093325, 37.926296>,  <37.655823, 30.879915, 37.976246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321217, 31.093325, 37.926296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180500, 0.053128, -0.982139,
		-0.517359, -0.844116, -0.140743,
		-0.836516, 0.533523, -0.124876,
		37.070263, 31.253382, 37.888832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378025, 30.661894, 37.328514>,  <37.655823, 30.879915, 37.976246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378025, 30.661894, 37.328514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188164, 31.008549, 37.390022>,  <37.074245, 31.216541, 37.426926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188164, 31.008549, 37.390022>,  <37.378025, 30.661894, 37.328514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188164, 31.008549, 37.390022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162309, 0.257891, -0.952443,
		-0.865077, -0.427125, -0.263072,
		-0.474657, 0.866635, 0.153769,
		37.045765, 31.268539, 37.436153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916100, 30.634062, 36.789219>,  <37.378025, 30.661894, 37.328514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916100, 30.634062, 36.789219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970409, 31.013447, 36.903751>,  <37.002995, 31.241077, 36.972473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970409, 31.013447, 36.903751>,  <36.916100, 30.634062, 36.789219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970409, 31.013447, 36.903751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271125, 0.242408, -0.931520,
		-0.952920, 0.204109, -0.224239,
		0.135774, 0.948461, 0.286334,
		37.011143, 31.297985, 36.989651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513851, 30.996504, 36.307171>,  <36.916100, 30.634062, 36.789219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513851, 30.996504, 36.307171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765163, 31.266510, 36.461887>,  <36.915951, 31.428514, 36.554718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765163, 31.266510, 36.461887>,  <36.513851, 30.996504, 36.307171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765163, 31.266510, 36.461887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094918, 0.426953, -0.899278,
		-0.772172, 0.601716, 0.204177,
		0.628284, 0.675018, 0.386795,
		36.953648, 31.469015, 36.577927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268047, 31.728735, 36.219204>,  <36.513851, 30.996504, 36.307171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268047, 31.728735, 36.219204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665230, 31.750927, 36.261086>,  <36.903538, 31.764242, 36.286213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665230, 31.750927, 36.261086>,  <36.268047, 31.728735, 36.219204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665230, 31.750927, 36.261086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050171, 0.603646, -0.795672,
		-0.107345, 0.795320, 0.596610,
		0.992955, 0.055479, 0.104700,
		36.963116, 31.767570, 36.292496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425488, 32.406532, 36.029156>,  <36.268047, 31.728735, 36.219204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425488, 32.406532, 36.029156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767788, 32.200424, 36.010448>,  <36.973167, 32.076759, 35.999226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767788, 32.200424, 36.010448>,  <36.425488, 32.406532, 36.029156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767788, 32.200424, 36.010448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343054, 0.632743, -0.694227,
		0.387309, 0.578040, 0.718235,
		0.855749, -0.515274, -0.046768,
		37.024513, 32.045841, 35.996418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958157, 32.941418, 36.052742>,  <36.425488, 32.406532, 36.029156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958157, 32.941418, 36.052742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111759, 32.625305, 35.861748>,  <37.203922, 32.435638, 35.747150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111759, 32.625305, 35.861748>,  <36.958157, 32.941418, 36.052742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111759, 32.625305, 35.861748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493608, 0.612739, -0.617173,
		0.780314, 0.001311, 0.625387,
		0.384007, -0.790284, -0.477482,
		37.226963, 32.388222, 35.718502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626244, 32.979168, 35.953899>,  <36.958157, 32.941418, 36.052742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626244, 32.979168, 35.953899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554729, 32.718456, 35.659084>,  <37.511822, 32.562031, 35.482197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554729, 32.718456, 35.659084>,  <37.626244, 32.979168, 35.953899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554729, 32.718456, 35.659084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433854, 0.620116, -0.653625,
		0.883067, -0.436623, 0.171912,
		-0.178783, -0.651780, -0.737035,
		37.501095, 32.522923, 35.437973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188129, 33.057117, 35.494473>,  <37.626244, 32.979168, 35.953899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188129, 33.057117, 35.494473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912170, 32.860291, 35.282089>,  <37.746597, 32.742195, 35.154659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912170, 32.860291, 35.282089>,  <38.188129, 33.057117, 35.494473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912170, 32.860291, 35.282089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237325, 0.539184, -0.808058,
		0.683904, -0.683483, -0.255199,
		-0.689893, -0.492069, -0.530957,
		37.705204, 32.712669, 35.122803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148407, 33.692432, 35.813660>,  <38.188129, 33.057117, 35.494473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148407, 33.692432, 35.813660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341862, 33.710213, 35.464005>,  <38.457935, 33.720882, 35.254211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341862, 33.710213, 35.464005>,  <38.148407, 33.692432, 35.813660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341862, 33.710213, 35.464005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869691, 0.088137, 0.485663,
		0.098632, -0.995116, 0.003968,
		0.483641, 0.044451, -0.874137,
		38.486954, 33.723549, 35.201763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.655773, 30.452166, 42.410015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295170, 30.524937, 42.252949>,  <36.078808, 30.568600, 42.158707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295170, 30.524937, 42.252949>,  <36.655773, 30.452166, 42.410015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295170, 30.524937, 42.252949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286192, -0.429987, -0.856274,
		-0.324623, -0.884315, 0.335570,
		-0.901507, 0.181929, -0.392667,
		36.024719, 30.579515, 42.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459274, 29.855274, 41.992378>,  <36.655773, 30.452166, 42.410015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459274, 29.855274, 41.992378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208176, 30.137356, 41.860550>,  <36.057518, 30.306604, 41.781452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208176, 30.137356, 41.860550>,  <36.459274, 29.855274, 41.992378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208176, 30.137356, 41.860550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223118, -0.242617, -0.944116,
		-0.745757, -0.666200, -0.005042,
		-0.627747, 0.705206, -0.329574,
		36.019852, 30.348917, 41.761677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235817, 29.564848, 41.437618>,  <36.459274, 29.855274, 41.992378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235817, 29.564848, 41.437618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141571, 29.951618, 41.398552>,  <36.085022, 30.183681, 41.375111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141571, 29.951618, 41.398552>,  <36.235817, 29.564848, 41.437618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141571, 29.951618, 41.398552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277800, -0.029295, -0.960192,
		-0.931296, -0.253366, -0.261710,
		-0.235613, 0.966927, -0.097667,
		36.070889, 30.241695, 41.369251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763973, 29.669849, 40.826698>,  <36.235817, 29.564848, 41.437618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763973, 29.669849, 40.826698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963299, 30.006220, 40.911106>,  <36.082893, 30.208042, 40.961750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963299, 30.006220, 40.911106>,  <35.763973, 29.669849, 40.826698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963299, 30.006220, 40.911106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138733, 0.162915, -0.976838,
		-0.855827, 0.516044, -0.035482,
		0.498311, 0.840926, 0.211019,
		36.112793, 30.258497, 40.974411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406464, 30.084019, 40.470490>,  <35.763973, 29.669849, 40.826698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406464, 30.084019, 40.470490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780674, 30.214361, 40.525063>,  <36.005199, 30.292566, 40.557808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780674, 30.214361, 40.525063>,  <35.406464, 30.084019, 40.470490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780674, 30.214361, 40.525063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001778, 0.390547, -0.920581,
		-0.353259, 0.860983, 0.365945,
		0.935524, 0.325854, 0.136434,
		36.061333, 30.312117, 40.565994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391048, 30.652468, 40.094990>,  <35.406464, 30.084019, 40.470490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391048, 30.652468, 40.094990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785728, 30.602270, 40.136307>,  <36.022537, 30.572151, 40.161098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785728, 30.602270, 40.136307>,  <35.391048, 30.652468, 40.094990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785728, 30.602270, 40.136307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145957, 0.404479, -0.902825,
		0.071518, 0.905896, 0.417417,
		0.986703, -0.125493, 0.103294,
		36.081738, 30.564623, 40.167294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604614, 31.242552, 39.961525>,  <35.391048, 30.652468, 40.094990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604614, 31.242552, 39.961525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932339, 31.021828, 39.899242>,  <36.128971, 30.889393, 39.861874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.932339, 31.021828, 39.899242>,  <35.604614, 31.242552, 39.961525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932339, 31.021828, 39.899242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223506, 0.557463, -0.799550,
		0.527998, 0.620275, 0.580066,
		0.819306, -0.551809, -0.155704,
		36.178131, 30.856285, 39.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165432, 31.742502, 39.806881>,  <35.604614, 31.242552, 39.961525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165432, 31.742502, 39.806881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293144, 31.398756, 39.647106>,  <36.369774, 31.192509, 39.551243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293144, 31.398756, 39.647106>,  <36.165432, 31.742502, 39.806881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293144, 31.398756, 39.647106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245221, 0.482064, -0.841119,
		0.915382, 0.170606, 0.364650,
		0.319284, -0.859365, -0.399436,
		36.388931, 31.140947, 39.527275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819931, 31.957848, 39.465168>,  <36.165432, 31.742502, 39.806881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819931, 31.957848, 39.465168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728001, 31.605513, 39.299610>,  <36.672844, 31.394112, 39.200275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728001, 31.605513, 39.299610>,  <36.819931, 31.957848, 39.465168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728001, 31.605513, 39.299610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189741, 0.376564, -0.906752,
		0.954556, -0.286929, 0.080586,
		-0.229827, -0.880836, -0.413893,
		36.659054, 31.341263, 39.175442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610748, 31.882811, 39.603321>,  <36.819931, 31.957848, 39.465168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610748, 31.882811, 39.603321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836231, 32.185753, 39.735165>,  <37.971519, 32.367519, 39.814270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.836231, 32.185753, 39.735165>,  <37.610748, 31.882811, 39.603321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836231, 32.185753, 39.735165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300360, -0.183780, 0.935953,
		0.769428, -0.626605, 0.123883,
		0.563706, 0.757358, 0.329613,
		38.005344, 32.412960, 39.834049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070587, 31.629305, 40.156937>,  <37.610748, 31.882811, 39.603321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070587, 31.629305, 40.156937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032574, 32.022930, 40.217060>,  <38.009766, 32.259106, 40.253136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032574, 32.022930, 40.217060>,  <38.070587, 31.629305, 40.156937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032574, 32.022930, 40.217060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243089, -0.169363, 0.955104,
		0.965338, 0.054224, 0.255309,
		-0.095029, 0.984061, 0.150312,
		38.004066, 32.318150, 40.262154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562035, 31.708858, 40.730194>,  <38.070587, 31.629305, 40.156937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562035, 31.708858, 40.730194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296650, 32.007950, 40.740948>,  <38.137421, 32.187405, 40.747398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296650, 32.007950, 40.740948>,  <38.562035, 31.708858, 40.730194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296650, 32.007950, 40.740948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054273, 0.012264, 0.998451,
		0.746240, 0.663892, -0.048719,
		-0.663461, 0.747728, 0.026880,
		38.097610, 32.232269, 40.749012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742336, 32.156578, 41.320961>,  <38.562035, 31.708858, 40.730194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742336, 32.156578, 41.320961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.374123, 32.283524, 41.229836>,  <38.153194, 32.359692, 41.175159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.374123, 32.283524, 41.229836>,  <38.742336, 32.156578, 41.320961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374123, 32.283524, 41.229836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148557, 0.254974, 0.955468,
		0.361319, 0.913383, -0.187565,
		-0.920532, 0.317364, -0.227817,
		38.097961, 32.378735, 41.161491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598118, 32.765240, 41.719173>,  <38.742336, 32.156578, 41.320961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598118, 32.765240, 41.719173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237385, 32.620834, 41.624207>,  <38.020947, 32.534191, 41.567226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237385, 32.620834, 41.624207>,  <38.598118, 32.765240, 41.719173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237385, 32.620834, 41.624207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347648, 0.279954, 0.894856,
		-0.256591, 0.889547, -0.377978,
		-0.901833, -0.361015, -0.237416,
		37.966835, 32.512531, 41.552982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211399, 33.256500, 42.151428>,  <38.598118, 32.765240, 41.719173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211399, 33.256500, 42.151428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957577, 32.963985, 42.051388>,  <37.805283, 32.788475, 41.991364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957577, 32.963985, 42.051388>,  <38.211399, 33.256500, 42.151428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957577, 32.963985, 42.051388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575636, 0.231255, 0.784325,
		-0.515733, 0.641665, -0.567702,
		-0.634558, -0.731291, -0.250100,
		37.767208, 32.744598, 41.976357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463085, 33.550816, 42.076385>,  <38.211399, 33.256500, 42.151428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463085, 33.550816, 42.076385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413933, 33.161819, 42.155544>,  <37.384441, 32.928421, 42.203037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413933, 33.161819, 42.155544>,  <37.463085, 33.550816, 42.076385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413933, 33.161819, 42.155544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567627, 0.232441, 0.789792,
		-0.814063, -0.015277, -0.580575,
		-0.122884, -0.972491, 0.197893,
		37.377068, 32.870071, 42.214912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779945, 33.463291, 42.126949>,  <37.463085, 33.550816, 42.076385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779945, 33.463291, 42.126949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960251, 33.160454, 42.316105>,  <37.068432, 32.978752, 42.429600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960251, 33.160454, 42.316105>,  <36.779945, 33.463291, 42.126949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960251, 33.160454, 42.316105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631090, 0.104372, 0.768656,
		-0.631300, -0.644918, -0.430746,
		0.450762, -0.757092, 0.472891,
		37.095478, 32.933327, 42.457973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260166, 33.082874, 42.478031>,  <36.779945, 33.463291, 42.126949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260166, 33.082874, 42.478031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603336, 32.969582, 42.649490>,  <36.809238, 32.901608, 42.752365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603336, 32.969582, 42.649490>,  <36.260166, 33.082874, 42.478031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603336, 32.969582, 42.649490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434110, 0.046595, 0.899654,
		-0.274784, -0.957919, -0.082979,
		0.857929, -0.283232, 0.428645,
		36.860714, 32.884613, 42.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126369, 32.490665, 42.929588>,  <36.260166, 33.082874, 42.478031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126369, 32.490665, 42.929588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454830, 32.686707, 43.046551>,  <36.651909, 32.804333, 43.116730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454830, 32.686707, 43.046551>,  <36.126369, 32.490665, 42.929588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454830, 32.686707, 43.046551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427685, 0.189221, 0.883901,
		0.377875, -0.850878, 0.364990,
		0.821155, 0.490105, 0.292406,
		36.701176, 32.833736, 43.134274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232212, 32.124855, 43.620781>,  <36.126369, 32.490665, 42.929588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232212, 32.124855, 43.620781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439388, 32.466454, 43.601097>,  <36.563694, 32.671413, 43.589287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439388, 32.466454, 43.601097>,  <36.232212, 32.124855, 43.620781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439388, 32.466454, 43.601097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418539, 0.303170, 0.856103,
		0.746031, -0.422815, 0.514457,
		0.517941, 0.854000, -0.049210,
		36.594772, 32.722652, 43.586334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453053, 32.303806, 44.379482>,  <36.232212, 32.124855, 43.620781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453053, 32.303806, 44.379482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545162, 32.621506, 44.154575>,  <36.600430, 32.812126, 44.019630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545162, 32.621506, 44.154575>,  <36.453053, 32.303806, 44.379482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545162, 32.621506, 44.154575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050215, 0.586725, 0.808228,
		0.971828, -0.157882, 0.174993,
		0.230278, 0.794246, -0.562268,
		36.614246, 32.859779, 43.985893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115669, 32.640015, 44.683506>,  <36.453053, 32.303806, 44.379482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115669, 32.640015, 44.683506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917198, 32.929657, 44.491890>,  <36.798115, 33.103443, 44.376923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.917198, 32.929657, 44.491890>,  <37.115669, 32.640015, 44.683506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917198, 32.929657, 44.491890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141288, 0.477051, 0.867445,
		0.856647, 0.498090, -0.134395,
		-0.496179, 0.724106, -0.479038,
		36.768345, 33.146889, 44.348179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394588, 33.392246, 44.844315>,  <37.115669, 32.640015, 44.683506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394588, 33.392246, 44.844315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.007771, 33.386566, 44.742634>,  <36.775681, 33.383160, 44.681625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.007771, 33.386566, 44.742634>,  <37.394588, 33.392246, 44.844315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007771, 33.386566, 44.742634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238203, 0.402936, 0.883686,
		0.089880, 0.915118, -0.393041,
		-0.967048, -0.014198, -0.254199,
		36.717655, 33.382305, 44.666374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.630730, 35.473312, 43.656349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.948330, 35.235016, 43.704781>,  <32.138889, 35.092037, 43.733837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.948330, 35.235016, 43.704781>,  <31.630730, 35.473312, 43.656349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948330, 35.235016, 43.704781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268556, 0.165055, -0.949018,
		0.545381, 0.786037, 0.291043,
		0.794001, -0.595738, 0.121077,
		32.186531, 35.056293, 43.741104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226002, 35.825813, 43.406544>,  <31.630730, 35.473312, 43.656349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226002, 35.825813, 43.406544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345013, 35.444115, 43.418533>,  <32.416420, 35.215096, 43.425728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345013, 35.444115, 43.418533>,  <32.226002, 35.825813, 43.406544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345013, 35.444115, 43.418533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482122, 0.123076, -0.867416,
		0.824036, 0.272532, 0.496680,
		0.297528, -0.954242, 0.029974,
		32.434273, 35.157841, 43.427525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001656, 35.806774, 43.202442>,  <32.226002, 35.825813, 43.406544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001656, 35.806774, 43.202442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857471, 35.438992, 43.139610>,  <32.770962, 35.218323, 43.101913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.857471, 35.438992, 43.139610>,  <33.001656, 35.806774, 43.202442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857471, 35.438992, 43.139610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407628, -0.003808, -0.913140,
		0.838993, -0.393177, 0.376168,
		-0.360458, -0.919455, -0.157075,
		32.749332, 35.163155, 43.092487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551102, 35.358662, 42.969761>,  <33.001656, 35.806774, 43.202442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551102, 35.358662, 42.969761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215282, 35.178738, 42.847889>,  <33.013790, 35.070782, 42.774765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215282, 35.178738, 42.847889>,  <33.551102, 35.358662, 42.969761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215282, 35.178738, 42.847889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391423, -0.111878, -0.913384,
		0.376764, -0.886088, 0.269994,
		-0.839546, -0.449812, -0.304684,
		32.963417, 35.043793, 42.756485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819866, 34.821667, 42.512981>,  <33.551102, 35.358662, 42.969761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819866, 34.821667, 42.512981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437115, 34.852699, 42.401009>,  <33.207462, 34.871319, 42.333824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.437115, 34.852699, 42.401009>,  <33.819866, 34.821667, 42.512981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437115, 34.852699, 42.401009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281126, 0.004696, -0.959659,
		-0.073136, -0.996975, -0.026303,
		-0.956880, 0.077580, -0.279933,
		33.150051, 34.875973, 42.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872807, 34.640835, 41.872150>,  <33.819866, 34.821667, 42.512981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872807, 34.640835, 41.872150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504330, 34.796349, 41.865818>,  <33.283241, 34.889656, 41.862019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504330, 34.796349, 41.865818>,  <33.872807, 34.640835, 41.872150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504330, 34.796349, 41.865818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063663, 0.110451, -0.991840,
		-0.383861, -0.914685, -0.126498,
		-0.921194, 0.388782, -0.015834,
		33.227970, 34.912983, 41.861069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472977, 34.347076, 41.268940>,  <33.872807, 34.640835, 41.872150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472977, 34.347076, 41.268940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236851, 34.664341, 41.328838>,  <33.095173, 34.854698, 41.364777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236851, 34.664341, 41.328838>,  <33.472977, 34.347076, 41.268940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236851, 34.664341, 41.328838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028539, 0.164888, -0.985899,
		-0.806666, -0.586267, -0.074700,
		-0.590318, 0.793160, 0.149741,
		33.059757, 34.902290, 41.373760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989426, 34.277458, 40.720604>,  <33.472977, 34.347076, 41.268940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989426, 34.277458, 40.720604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977921, 34.652264, 40.859852>,  <32.971020, 34.877148, 40.943401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977921, 34.652264, 40.859852>,  <32.989426, 34.277458, 40.720604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977921, 34.652264, 40.859852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128355, 0.341915, -0.930924,
		-0.991311, -0.071455, 0.110437,
		-0.028759, 0.937010, 0.348116,
		32.969292, 34.933365, 40.964287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339172, 34.667492, 40.425808>,  <32.989426, 34.277458, 40.720604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339172, 34.667492, 40.425808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649426, 34.910587, 40.493984>,  <32.835579, 35.056442, 40.534889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.649426, 34.910587, 40.493984>,  <32.339172, 34.667492, 40.425808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649426, 34.910587, 40.493984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041811, 0.318918, -0.946860,
		-0.629799, 0.727289, 0.272773,
		0.775632, 0.607736, 0.170445,
		32.882114, 35.092907, 40.545116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159649, 35.209766, 40.073830>,  <32.339172, 34.667492, 40.425808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159649, 35.209766, 40.073830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.547005, 35.285606, 40.138668>,  <32.779419, 35.331112, 40.177570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.547005, 35.285606, 40.138668>,  <32.159649, 35.209766, 40.073830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547005, 35.285606, 40.138668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056788, 0.465201, -0.883382,
		-0.242896, 0.864662, 0.439728,
		0.968389, 0.189599, 0.162098,
		32.837521, 35.342487, 40.187298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379719, 35.970078, 39.844608>,  <32.159649, 35.209766, 40.073830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379719, 35.970078, 39.844608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722195, 35.764179, 39.862339>,  <32.927681, 35.640640, 39.872978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.722195, 35.764179, 39.862339>,  <32.379719, 35.970078, 39.844608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722195, 35.764179, 39.862339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244345, 0.327843, -0.912587,
		0.455221, 0.792182, 0.406474,
		0.856194, -0.514749, 0.044325,
		32.979053, 35.609753, 39.875637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698177, 36.298042, 39.410458>,  <32.379719, 35.970078, 39.844608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698177, 36.298042, 39.410458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943871, 35.986572, 39.461655>,  <33.091286, 35.799690, 39.492371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943871, 35.986572, 39.461655>,  <32.698177, 36.298042, 39.410458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943871, 35.986572, 39.461655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345131, 0.119224, -0.930951,
		0.709652, 0.615991, 0.341977,
		0.614230, -0.778679, 0.127990,
		33.128139, 35.752968, 39.500053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312107, 36.473949, 39.114986>,  <32.698177, 36.298042, 39.410458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312107, 36.473949, 39.114986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322365, 36.074085, 39.113609>,  <33.328518, 35.834167, 39.112782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.322365, 36.074085, 39.113609>,  <33.312107, 36.473949, 39.114986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322365, 36.074085, 39.113609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168628, 0.007723, -0.985649,
		0.985346, 0.024696, 0.168769,
		0.025645, -0.999665, -0.003445,
		33.330059, 35.774185, 39.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878918, 36.364689, 38.747383>,  <33.312107, 36.473949, 39.114986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878918, 36.364689, 38.747383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652737, 36.035461, 38.726116>,  <33.517029, 35.837925, 38.713356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.652737, 36.035461, 38.726116>,  <33.878918, 36.364689, 38.747383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652737, 36.035461, 38.726116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223480, -0.090840, -0.970466,
		0.793927, -0.560636, 0.235304,
		-0.565453, -0.823065, -0.053170,
		33.483101, 35.788544, 38.710167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507328, 36.442497, 38.736771>,  <33.878918, 36.364689, 38.747383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507328, 36.442497, 38.736771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593460, 36.833046, 38.729534>,  <34.645142, 37.067375, 38.725193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593460, 36.833046, 38.729534>,  <34.507328, 36.442497, 38.736771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593460, 36.833046, 38.729534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224028, 0.067418, 0.972248,
		0.950496, -0.205305, 0.233253,
		0.215333, 0.976373, -0.018086,
		34.658058, 37.125957, 38.724110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086170, 36.578907, 39.198685>,  <34.507328, 36.442497, 38.736771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086170, 36.578907, 39.198685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898773, 36.930702, 39.165192>,  <34.786335, 37.141781, 39.145096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898773, 36.930702, 39.165192>,  <35.086170, 36.578907, 39.198685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898773, 36.930702, 39.165192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189762, -0.007616, 0.981801,
		0.862846, 0.475856, 0.170461,
		-0.468494, 0.879490, -0.083728,
		34.758224, 37.194550, 39.140072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418522, 37.123604, 39.549946>,  <35.086170, 36.578907, 39.198685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418522, 37.123604, 39.549946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038029, 37.246094, 39.535065>,  <34.809734, 37.319588, 39.526138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038029, 37.246094, 39.535065>,  <35.418522, 37.123604, 39.549946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038029, 37.246094, 39.535065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008335, 0.095037, 0.995439,
		0.308359, 0.947205, -0.087850,
		-0.951234, 0.306220, -0.037200,
		34.752659, 37.337959, 39.523903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430340, 37.645786, 40.026070>,  <35.418522, 37.123604, 39.549946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430340, 37.645786, 40.026070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046616, 37.542645, 39.980042>,  <34.816383, 37.480759, 39.952427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046616, 37.542645, 39.980042>,  <35.430340, 37.645786, 40.026070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046616, 37.542645, 39.980042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139798, 0.079656, 0.986971,
		-0.245330, 0.962894, -0.112463,
		-0.959307, -0.257856, -0.115069,
		34.758823, 37.465286, 39.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993690, 38.168751, 40.454403>,  <35.430340, 37.645786, 40.026070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993690, 38.168751, 40.454403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740314, 37.864326, 40.398495>,  <34.588287, 37.681671, 40.364948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740314, 37.864326, 40.398495>,  <34.993690, 38.168751, 40.454403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740314, 37.864326, 40.398495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411496, 0.178347, 0.893792,
		-0.655303, 0.623681, -0.426146,
		-0.633443, -0.761061, -0.139771,
		34.550282, 37.636009, 40.356564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364960, 38.411457, 40.794464>,  <34.993690, 38.168751, 40.454403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364960, 38.411457, 40.794464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300163, 38.018864, 40.753578>,  <34.261288, 37.783306, 40.729046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.300163, 38.018864, 40.753578>,  <34.364960, 38.411457, 40.794464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300163, 38.018864, 40.753578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540650, 0.001624, 0.841246,
		-0.825504, 0.191533, -0.530903,
		-0.161989, -0.981485, -0.102211,
		34.251568, 37.724419, 40.722916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661732, 38.312763, 41.018459>,  <34.364960, 38.411457, 40.794464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661732, 38.312763, 41.018459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864494, 37.968613, 41.039600>,  <33.986153, 37.762123, 41.052284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864494, 37.968613, 41.039600>,  <33.661732, 38.312763, 41.018459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864494, 37.968613, 41.039600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321293, -0.131688, 0.937779,
		-0.799887, -0.492344, -0.343188,
		0.506904, -0.860381, 0.052851,
		34.016567, 37.710499, 41.055454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188511, 37.813229, 41.288166>,  <33.661732, 38.312763, 41.018459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188511, 37.813229, 41.288166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557320, 37.675182, 41.358330>,  <33.778606, 37.592354, 41.400429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557320, 37.675182, 41.358330>,  <33.188511, 37.813229, 41.288166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557320, 37.675182, 41.358330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272249, -0.255892, 0.927577,
		-0.275240, -0.903001, -0.329897,
		0.922022, -0.345120, 0.175409,
		33.833927, 37.571648, 41.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088318, 37.283695, 41.817387>,  <33.188511, 37.813229, 41.288166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088318, 37.283695, 41.817387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480591, 37.360729, 41.831100>,  <33.715954, 37.406948, 41.839329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480591, 37.360729, 41.831100>,  <33.088318, 37.283695, 41.817387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480591, 37.360729, 41.831100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036608, -0.352850, 0.934964,
		0.192154, -0.915647, -0.353083,
		0.980682, 0.192582, 0.034281,
		33.774796, 37.418503, 41.841385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355789, 36.689293, 42.175167>,  <33.088318, 37.283695, 41.817387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355789, 36.689293, 42.175167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610161, 36.995022, 42.217899>,  <33.762783, 37.178459, 42.243538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610161, 36.995022, 42.217899>,  <33.355789, 36.689293, 42.175167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610161, 36.995022, 42.217899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095626, -0.215399, 0.971833,
		0.765804, -0.607797, -0.210066,
		0.635925, 0.764321, 0.106832,
		33.800938, 37.224319, 42.249950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946976, 36.354481, 42.570824>,  <33.355789, 36.689293, 42.175167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946976, 36.354481, 42.570824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975769, 36.751335, 42.611767>,  <33.993046, 36.989449, 42.636333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975769, 36.751335, 42.611767>,  <33.946976, 36.354481, 42.570824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975769, 36.751335, 42.611767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116058, -0.110255, 0.987104,
		0.990630, -0.059177, -0.123083,
		0.071985, 0.992140, 0.102354,
		33.997364, 37.048977, 42.642471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477207, 36.552525, 43.099197>,  <33.946976, 36.354481, 42.570824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477207, 36.552525, 43.099197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255592, 36.885376, 43.089397>,  <34.122623, 37.085087, 43.083519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255592, 36.885376, 43.089397>,  <34.477207, 36.552525, 43.099197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255592, 36.885376, 43.089397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039857, 0.002881, 0.999201,
		0.831537, 0.554571, 0.031570,
		-0.554037, 0.832132, -0.024499,
		34.089382, 37.135014, 43.082047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776188, 37.051323, 43.637611>,  <34.477207, 36.552525, 43.099197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776188, 37.051323, 43.637611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391293, 37.141304, 43.576294>,  <34.160355, 37.195293, 43.539501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391293, 37.141304, 43.576294>,  <34.776188, 37.051323, 43.637611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391293, 37.141304, 43.576294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104979, 0.212938, 0.971410,
		0.251161, 0.950818, -0.181282,
		-0.962236, 0.224950, -0.153298,
		34.102623, 37.208790, 43.530304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651497, 37.687485, 44.081833>,  <34.776188, 37.051323, 43.637611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651497, 37.687485, 44.081833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291183, 37.523685, 44.024014>,  <34.074993, 37.425407, 43.989323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291183, 37.523685, 44.024014>,  <34.651497, 37.687485, 44.081833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291183, 37.523685, 44.024014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124578, -0.075201, 0.989356,
		-0.416006, 0.909208, 0.016726,
		-0.900788, -0.409494, -0.144551,
		34.020947, 37.400837, 43.980648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177437, 38.110577, 44.550484>,  <34.651497, 37.687485, 44.081833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177437, 38.110577, 44.550484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384033, 37.770153, 44.588303>,  <35.507992, 37.565899, 44.610992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.384033, 37.770153, 44.588303>,  <35.177437, 38.110577, 44.550484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384033, 37.770153, 44.588303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441863, 0.170316, -0.880767,
		0.733478, 0.496688, 0.464016,
		0.516495, -0.851054, 0.094545,
		35.538982, 37.514835, 44.616665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865593, 38.205532, 44.282421>,  <35.177437, 38.110577, 44.550484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865593, 38.205532, 44.282421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866928, 37.805546, 44.279598>,  <35.867729, 37.565552, 44.277905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866928, 37.805546, 44.279598>,  <35.865593, 38.205532, 44.282421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866928, 37.805546, 44.279598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608771, 0.007636, -0.793309,
		0.793339, -0.001649, 0.608778,
		0.003341, -0.999970, -0.007061,
		35.867931, 37.505554, 44.277481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498005, 38.061958, 44.109444>,  <35.865593, 38.205532, 44.282421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498005, 38.061958, 44.109444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294231, 37.725548, 44.036610>,  <36.171967, 37.523701, 43.992908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294231, 37.725548, 44.036610>,  <36.498005, 38.061958, 44.109444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294231, 37.725548, 44.036610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537654, -0.145877, -0.830450,
		0.671864, -0.520963, 0.526494,
		-0.509438, -0.841021, -0.182088,
		36.141399, 37.473240, 43.981983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998024, 37.645782, 43.993618>,  <36.498005, 38.061958, 44.109444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998024, 37.645782, 43.993618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665607, 37.513859, 43.814468>,  <36.466156, 37.434704, 43.706978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.665607, 37.513859, 43.814468>,  <36.998024, 37.645782, 43.993618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665607, 37.513859, 43.814468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507534, -0.120252, -0.853199,
		0.227537, -0.936357, 0.267325,
		-0.831045, -0.329811, -0.447871,
		36.416294, 37.414917, 43.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161297, 37.100361, 43.486153>,  <36.998024, 37.645782, 43.993618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161297, 37.100361, 43.486153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800262, 37.187466, 43.337608>,  <36.583641, 37.239727, 43.248482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.800262, 37.187466, 43.337608>,  <37.161297, 37.100361, 43.486153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800262, 37.187466, 43.337608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295928, -0.312661, -0.902591,
		-0.312661, -0.924566, 0.217763,
		0.902591, -0.217763, 0.371362,
		36.529484, 37.252796, 43.226200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944683, 36.578243, 42.965199>,  <37.161297, 37.100361, 43.486153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944683, 36.578243, 42.965199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731010, 36.906971, 42.885944>,  <36.602806, 37.104210, 42.838390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.731010, 36.906971, 42.885944>,  <36.944683, 36.578243, 42.965199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731010, 36.906971, 42.885944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299502, -0.035197, -0.953446,
		-0.790537, -0.568656, -0.227336,
		-0.534182, 0.821822, -0.198139,
		36.570755, 37.153519, 42.826504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655357, 36.488579, 42.299377>,  <36.944683, 36.578243, 42.965199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655357, 36.488579, 42.299377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683125, 36.879166, 42.381062>,  <36.699783, 37.113518, 42.430073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683125, 36.879166, 42.381062>,  <36.655357, 36.488579, 42.299377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683125, 36.879166, 42.381062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353876, 0.167286, -0.920211,
		-0.932713, 0.136141, -0.333934,
		0.069416, 0.976463, 0.204207,
		36.703949, 37.172104, 42.442326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295464, 36.812897, 41.857361>,  <36.655357, 36.488579, 42.299377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295464, 36.812897, 41.857361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501091, 37.133152, 41.980465>,  <36.624466, 37.325306, 42.054325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501091, 37.133152, 41.980465>,  <36.295464, 36.812897, 41.857361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501091, 37.133152, 41.980465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118444, 0.289101, -0.949943,
		-0.849533, 0.524787, 0.053787,
		0.514067, 0.800637, 0.307759,
		36.655312, 37.373344, 42.072792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201347, 37.303505, 41.311329>,  <36.295464, 36.812897, 41.857361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201347, 37.303505, 41.311329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510021, 37.485611, 41.488976>,  <36.695225, 37.594875, 41.595566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.510021, 37.485611, 41.488976>,  <36.201347, 37.303505, 41.311329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510021, 37.485611, 41.488976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267202, 0.401612, -0.875963,
		-0.577158, 0.794634, 0.188269,
		0.771682, 0.455263, 0.444121,
		36.741528, 37.622189, 41.622211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309666, 37.956837, 40.912804>,  <36.201347, 37.303505, 41.311329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309666, 37.956837, 40.912804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646809, 37.881992, 41.114632>,  <36.849094, 37.837086, 41.235729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646809, 37.881992, 41.114632>,  <36.309666, 37.956837, 40.912804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646809, 37.881992, 41.114632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536633, 0.222019, -0.814084,
		0.040298, 0.956921, 0.287538,
		0.842853, -0.187109, 0.504568,
		36.899666, 37.825859, 41.266003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690617, 38.559803, 40.838394>,  <36.309666, 37.956837, 40.912804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690617, 38.559803, 40.838394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954994, 38.270428, 40.918190>,  <37.113621, 38.096802, 40.966068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.954994, 38.270428, 40.918190>,  <36.690617, 38.559803, 40.838394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954994, 38.270428, 40.918190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518989, 0.248640, -0.817819,
		0.542041, 0.644062, 0.539792,
		0.660940, -0.723438, 0.199488,
		37.153275, 38.053398, 40.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400604, 38.936714, 40.756649>,  <36.690617, 38.559803, 40.838394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400604, 38.936714, 40.756649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442890, 38.539196, 40.742771>,  <37.468262, 38.300686, 40.734444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.442890, 38.539196, 40.742771>,  <37.400604, 38.936714, 40.756649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442890, 38.539196, 40.742771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602331, 0.091759, -0.792955,
		0.791215, 0.062931, 0.608291,
		0.105718, -0.993791, -0.034696,
		37.474606, 38.241058, 40.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127480, 38.862118, 40.718025>,  <37.400604, 38.936714, 40.756649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127480, 38.862118, 40.718025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.942295, 38.534809, 40.581738>,  <37.831184, 38.338425, 40.499966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.942295, 38.534809, 40.581738>,  <38.127480, 38.862118, 40.718025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942295, 38.534809, 40.581738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680178, -0.081489, -0.728504,
		0.568350, -0.569024, 0.594298,
		-0.462965, -0.818273, -0.340723,
		37.803406, 38.289326, 40.479519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703293, 38.395794, 40.504723>,  <38.127480, 38.862118, 40.718025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703293, 38.395794, 40.504723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379707, 38.273197, 40.304066>,  <38.185558, 38.199638, 40.183670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.379707, 38.273197, 40.304066>,  <38.703293, 38.395794, 40.504723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379707, 38.273197, 40.304066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587683, -0.442829, -0.677150,
		-0.014600, -0.842594, 0.538352,
		-0.808960, -0.306494, -0.501643,
		38.137020, 38.181248, 40.153572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.183851, 32.822586, 28.642101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227203, 32.430264, 28.706926>,  <27.253214, 32.194870, 28.745821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.227203, 32.430264, 28.706926>,  <27.183851, 32.822586, 28.642101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227203, 32.430264, 28.706926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318287, 0.120204, 0.940342,
		-0.941778, -0.153496, -0.299152,
		0.108380, -0.980811, 0.162061,
		27.259718, 32.136021, 28.755545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583071, 32.659203, 29.115396>,  <27.183851, 32.822586, 28.642101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583071, 32.659203, 29.115396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816694, 32.334618, 29.107292>,  <26.956869, 32.139866, 29.102430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816694, 32.334618, 29.107292>,  <26.583071, 32.659203, 29.115396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816694, 32.334618, 29.107292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213204, -0.177444, 0.960759,
		-0.783211, -0.556820, -0.276644,
		0.584058, -0.811459, -0.020260,
		26.991911, 32.091179, 29.101213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216091, 32.068420, 29.444193>,  <26.583071, 32.659203, 29.115396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216091, 32.068420, 29.444193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589550, 31.927330, 29.469143>,  <26.813625, 31.842676, 29.484112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589550, 31.927330, 29.469143>,  <26.216091, 32.068420, 29.444193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589550, 31.927330, 29.469143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201072, -0.371981, 0.906201,
		-0.296438, -0.858612, -0.418222,
		0.933646, -0.352725, 0.062374,
		26.869644, 31.821512, 29.487854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168571, 31.296659, 29.624720>,  <26.216091, 32.068420, 29.444193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168571, 31.296659, 29.624720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522198, 31.452480, 29.728010>,  <26.734373, 31.545973, 29.789984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522198, 31.452480, 29.728010>,  <26.168571, 31.296659, 29.624720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522198, 31.452480, 29.728010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109188, -0.365068, 0.924556,
		0.454432, -0.845562, -0.280209,
		0.884064, 0.389552, 0.258224,
		26.787416, 31.569345, 29.805477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553549, 30.744783, 30.078394>,  <26.168571, 31.296659, 29.624720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553549, 30.744783, 30.078394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728172, 31.097687, 30.148867>,  <26.832947, 31.309429, 30.191151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728172, 31.097687, 30.148867>,  <26.553549, 30.744783, 30.078394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728172, 31.097687, 30.148867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052223, -0.170647, 0.983947,
		0.898159, -0.438750, -0.028424,
		0.436558, 0.882257, 0.176181,
		26.859140, 31.362364, 30.201721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024113, 30.602591, 30.570969>,  <26.553549, 30.744783, 30.078394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024113, 30.602591, 30.570969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970713, 30.998335, 30.594107>,  <26.938673, 31.235781, 30.607988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970713, 30.998335, 30.594107>,  <27.024113, 30.602591, 30.570969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970713, 30.998335, 30.594107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123503, -0.074519, 0.989542,
		0.983323, 0.124961, 0.132137,
		-0.133501, 0.989359, 0.057843,
		26.930662, 31.295143, 30.611460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433064, 30.855783, 31.160997>,  <27.024113, 30.602591, 30.570969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433064, 30.855783, 31.160997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141306, 31.124067, 31.107134>,  <26.966251, 31.285038, 31.074816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.141306, 31.124067, 31.107134>,  <27.433064, 30.855783, 31.160997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141306, 31.124067, 31.107134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137411, 0.049186, 0.989292,
		0.670149, 0.740089, 0.056286,
		-0.729396, 0.670708, -0.134658,
		26.922487, 31.325279, 31.066736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612331, 31.505098, 31.524214>,  <27.433064, 30.855783, 31.160997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612331, 31.505098, 31.524214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220600, 31.555742, 31.461117>,  <26.985561, 31.586128, 31.423258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220600, 31.555742, 31.461117>,  <27.612331, 31.505098, 31.524214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220600, 31.555742, 31.461117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136543, 0.161546, 0.977373,
		0.149229, 0.978710, -0.140919,
		-0.979330, 0.126611, -0.157744,
		26.926802, 31.593725, 31.413794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485773, 32.050514, 31.950777>,  <27.612331, 31.505098, 31.524214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485773, 32.050514, 31.950777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134806, 31.875607, 31.871847>,  <26.924225, 31.770662, 31.824490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134806, 31.875607, 31.871847>,  <27.485773, 32.050514, 31.950777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134806, 31.875607, 31.871847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341315, 0.279957, 0.897289,
		-0.337112, 0.854647, -0.394885,
		-0.877416, -0.437267, -0.197326,
		26.871580, 31.744427, 31.812649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000946, 32.570381, 31.987463>,  <27.485773, 32.050514, 31.950777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000946, 32.570381, 31.987463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779150, 32.239799, 32.026470>,  <26.646072, 32.041451, 32.049873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779150, 32.239799, 32.026470>,  <27.000946, 32.570381, 31.987463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779150, 32.239799, 32.026470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420532, 0.379390, 0.824146,
		-0.718119, 0.415970, -0.557919,
		-0.554489, -0.826458, 0.097519,
		26.612803, 31.991861, 32.055725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282389, 32.755646, 31.979948>,  <27.000946, 32.570381, 31.987463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282389, 32.755646, 31.979948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308519, 32.403919, 32.168640>,  <26.324198, 32.192883, 32.281857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.308519, 32.403919, 32.168640>,  <26.282389, 32.755646, 31.979948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308519, 32.403919, 32.168640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357060, 0.420840, 0.833908,
		-0.931794, -0.222910, -0.286479,
		0.065325, -0.879321, 0.471729,
		26.328117, 32.140121, 32.310158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709322, 32.762386, 32.338631>,  <26.282389, 32.755646, 31.979948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709322, 32.762386, 32.338631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942019, 32.478771, 32.498047>,  <26.081636, 32.308601, 32.593697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942019, 32.478771, 32.498047>,  <25.709322, 32.762386, 32.338631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942019, 32.478771, 32.498047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250023, 0.310379, 0.917144,
		-0.773993, -0.633185, 0.003283,
		0.581741, -0.709042, 0.398542,
		26.116541, 32.266060, 32.617611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377415, 32.720554, 32.889519>,  <25.709322, 32.762386, 32.338631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377415, 32.720554, 32.889519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734093, 32.556454, 32.966011>,  <25.948099, 32.457993, 33.011906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.734093, 32.556454, 32.966011>,  <25.377415, 32.720554, 32.889519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734093, 32.556454, 32.966011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000859, 0.424012, 0.905656,
		-0.452633, -0.807406, 0.378442,
		0.891696, -0.410255, 0.191228,
		26.001602, 32.433376, 33.023380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257027, 32.586788, 33.566097>,  <25.377415, 32.720554, 32.889519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257027, 32.586788, 33.566097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.645723, 32.592083, 33.471828>,  <25.878941, 32.595261, 33.415268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.645723, 32.592083, 33.471828>,  <25.257027, 32.586788, 33.566097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645723, 32.592083, 33.471828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189333, 0.552538, 0.811699,
		0.140964, -0.833383, 0.534418,
		0.971742, 0.013237, -0.235675,
		25.937246, 32.596054, 33.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691545, 32.596825, 34.276535>,  <25.257027, 32.586788, 33.566097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691545, 32.596825, 34.276535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902245, 32.748951, 33.972454>,  <26.028664, 32.840225, 33.790005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902245, 32.748951, 33.972454>,  <25.691545, 32.596825, 34.276535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902245, 32.748951, 33.972454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344894, 0.721777, 0.600071,
		0.776908, -0.578273, 0.249027,
		0.526747, 0.380312, -0.760198,
		26.060268, 32.863045, 33.744396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242010, 32.726379, 34.644634>,  <25.691545, 32.596825, 34.276535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242010, 32.726379, 34.644634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.270315, 32.937466, 34.306049>,  <26.287298, 33.064117, 34.102898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.270315, 32.937466, 34.306049>,  <26.242010, 32.726379, 34.644634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270315, 32.937466, 34.306049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411024, 0.757776, 0.506788,
		0.908874, -0.383780, -0.163282,
		0.070764, 0.527719, -0.846466,
		26.291544, 33.095783, 34.052109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887411, 32.988472, 34.672680>,  <26.242010, 32.726379, 34.644634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887411, 32.988472, 34.672680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662668, 33.214447, 34.430965>,  <26.527822, 33.350033, 34.285938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.662668, 33.214447, 34.430965>,  <26.887411, 32.988472, 34.672680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662668, 33.214447, 34.430965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211667, 0.804350, 0.555174,
		0.799697, 0.184021, -0.571508,
		-0.561856, 0.564940, -0.604285,
		26.494112, 33.383930, 34.249680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329947, 33.534836, 34.433140>,  <26.887411, 32.988472, 34.672680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329947, 33.534836, 34.433140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940605, 33.609417, 34.486530>,  <26.707001, 33.654167, 34.518566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940605, 33.609417, 34.486530>,  <27.329947, 33.534836, 34.433140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940605, 33.609417, 34.486530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229159, 0.811812, 0.537073,
		-0.008223, 0.553351, -0.832908,
		-0.973354, 0.186452, 0.133481,
		26.648600, 33.665352, 34.526573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999981, 34.030094, 33.925621>,  <27.329947, 33.534836, 34.433140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999981, 34.030094, 33.925621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340380, 34.011864, 33.716347>,  <27.544621, 34.000927, 33.590782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340380, 34.011864, 33.716347>,  <26.999981, 34.030094, 33.925621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340380, 34.011864, 33.716347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396745, 0.596924, -0.697335,
		0.344084, 0.801003, 0.489900,
		0.850999, -0.045576, -0.523185,
		27.595680, 33.998192, 33.559391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005209, 34.606861, 33.652050>,  <26.999981, 34.030094, 33.925621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005209, 34.606861, 33.652050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257383, 34.382847, 33.437046>,  <27.408688, 34.248440, 33.308044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.257383, 34.382847, 33.437046>,  <27.005209, 34.606861, 33.652050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257383, 34.382847, 33.437046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177452, 0.570133, -0.802159,
		0.755685, 0.601093, 0.260054,
		0.630437, -0.560032, -0.537507,
		27.446514, 34.214836, 33.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474323, 35.049595, 33.169533>,  <27.005209, 34.606861, 33.652050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474323, 35.049595, 33.169533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468344, 34.686790, 33.001198>,  <27.464756, 34.469109, 32.900196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.468344, 34.686790, 33.001198>,  <27.474323, 35.049595, 33.169533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468344, 34.686790, 33.001198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005554, 0.420949, -0.907067,
		0.999873, -0.011224, -0.011331,
		-0.014951, -0.907015, -0.420834,
		27.463858, 34.414684, 32.874947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149754, 34.915665, 32.671486>,  <27.474323, 35.049595, 33.169533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149754, 34.915665, 32.671486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870775, 34.654057, 32.554298>,  <27.703388, 34.497093, 32.483986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.870775, 34.654057, 32.554298>,  <28.149754, 34.915665, 32.671486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870775, 34.654057, 32.554298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091472, 0.324222, -0.941548,
		0.710777, -0.683476, -0.166303,
		-0.697445, -0.654019, -0.292969,
		27.661541, 34.457851, 32.466408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399153, 34.530323, 32.105331>,  <28.149754, 34.915665, 32.671486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399153, 34.530323, 32.105331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001879, 34.491119, 32.080101>,  <27.763514, 34.467598, 32.064960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.001879, 34.491119, 32.080101>,  <28.399153, 34.530323, 32.105331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001879, 34.491119, 32.080101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045743, 0.170006, -0.984381,
		0.107199, -0.980557, -0.164364,
		-0.993185, -0.098006, -0.063078,
		27.703924, 34.461716, 32.061176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327940, 34.239174, 31.501392>,  <28.399153, 34.530323, 32.105331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327940, 34.239174, 31.501392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955662, 34.365768, 31.574759>,  <27.732294, 34.441727, 31.618778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955662, 34.365768, 31.574759>,  <28.327940, 34.239174, 31.501392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955662, 34.365768, 31.574759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136124, 0.165744, -0.976729,
		-0.339522, -0.934005, -0.111176,
		-0.930696, 0.316487, 0.183415,
		27.676453, 34.460712, 31.629784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860741, 33.926544, 31.120747>,  <28.327940, 34.239174, 31.501392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860741, 33.926544, 31.120747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673283, 34.270752, 31.200621>,  <27.560808, 34.477276, 31.248545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673283, 34.270752, 31.200621>,  <27.860741, 33.926544, 31.120747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673283, 34.270752, 31.200621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062406, 0.193232, -0.979167,
		-0.881179, -0.471345, -0.036856,
		-0.468647, 0.860521, 0.199686,
		27.532688, 34.528908, 31.260527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482616, 33.967682, 30.548697>,  <27.860741, 33.926544, 31.120747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482616, 33.967682, 30.548697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411943, 34.324814, 30.714417>,  <27.369539, 34.539093, 30.813848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411943, 34.324814, 30.714417>,  <27.482616, 33.967682, 30.548697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411943, 34.324814, 30.714417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283177, 0.357017, -0.890140,
		-0.942652, -0.274594, 0.189749,
		-0.176684, 0.892825, 0.414301,
		27.358938, 34.592663, 30.838707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841648, 34.282471, 30.271198>,  <27.482616, 33.967682, 30.548697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841648, 34.282471, 30.271198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063040, 34.597672, 30.379059>,  <27.195875, 34.786793, 30.443775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.063040, 34.597672, 30.379059>,  <26.841648, 34.282471, 30.271198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063040, 34.597672, 30.379059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118723, 0.395105, -0.910932,
		-0.824358, 0.472168, 0.312236,
		0.553479, 0.788004, 0.269650,
		27.229084, 34.834072, 30.459953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479948, 34.873264, 30.138439>,  <26.841648, 34.282471, 30.271198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479948, 34.873264, 30.138439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861389, 34.993690, 30.138744>,  <27.090254, 35.065948, 30.138927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861389, 34.993690, 30.138744>,  <26.479948, 34.873264, 30.138439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861389, 34.993690, 30.138744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138083, 0.439613, -0.887510,
		-0.267538, 0.846226, 0.460788,
		0.953602, 0.301070, 0.000764,
		27.147470, 35.084011, 30.138973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.380758, 35.557884, 29.921406>,  <26.479948, 34.873264, 30.138439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.380758, 35.557884, 29.921406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.776701, 35.510162, 29.890556>,  <27.014267, 35.481529, 29.872047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.776701, 35.510162, 29.890556>,  <26.380758, 35.557884, 29.921406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776701, 35.510162, 29.890556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011704, 0.609523, -0.792682,
		0.141580, 0.783740, 0.604737,
		0.989858, -0.119306, -0.077124,
		27.073658, 35.474369, 29.867418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713730, 36.219898, 29.781301>,  <26.380758, 35.557884, 29.921406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713730, 36.219898, 29.781301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980560, 35.959549, 29.636316>,  <27.140657, 35.803341, 29.549326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980560, 35.959549, 29.636316>,  <26.713730, 36.219898, 29.781301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980560, 35.959549, 29.636316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016199, 0.499091, -0.866398,
		0.744814, 0.572081, 0.343475,
		0.667075, -0.650870, -0.362463,
		27.180683, 35.764290, 29.527576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236235, 36.689320, 29.518154>,  <26.713730, 36.219898, 29.781301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236235, 36.689320, 29.518154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216106, 36.322338, 29.360292>,  <27.204029, 36.102150, 29.265575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216106, 36.322338, 29.360292>,  <27.236235, 36.689320, 29.518154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216106, 36.322338, 29.360292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186517, 0.396835, -0.898740,
		0.981162, 0.028384, -0.191090,
		-0.050321, -0.917451, -0.394654,
		27.201010, 36.047104, 29.241896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515148, 36.805878, 28.929214>,  <27.236235, 36.689320, 29.518154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515148, 36.805878, 28.929214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372086, 36.444878, 28.833242>,  <27.286247, 36.228275, 28.775660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372086, 36.444878, 28.833242>,  <27.515148, 36.805878, 28.929214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372086, 36.444878, 28.833242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007899, 0.259841, -0.965619,
		0.933819, -0.343467, -0.100063,
		-0.357658, -0.902504, -0.239932,
		27.264788, 36.174126, 28.761263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868944, 36.552238, 28.334846>,  <27.515148, 36.805878, 28.929214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868944, 36.552238, 28.334846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512629, 36.371403, 28.353216>,  <27.298840, 36.262901, 28.364239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.512629, 36.371403, 28.353216>,  <27.868944, 36.552238, 28.334846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512629, 36.371403, 28.353216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128739, 0.154147, -0.979625,
		0.435804, -0.878549, -0.195514,
		-0.890787, -0.452095, 0.045925,
		27.245392, 36.235775, 28.366993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726345, 36.277847, 27.656942>,  <27.868944, 36.552238, 28.334846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726345, 36.277847, 27.656942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361572, 36.224575, 27.812193>,  <27.142708, 36.192612, 27.905344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361572, 36.224575, 27.812193>,  <27.726345, 36.277847, 27.656942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361572, 36.224575, 27.812193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387587, -0.031023, -0.921311,
		0.134742, -0.990606, -0.023329,
		-0.911932, -0.133182, 0.388126,
		27.087992, 36.184620, 27.928631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513569, 35.669773, 27.373991>,  <27.726345, 36.277847, 27.656942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513569, 35.669773, 27.373991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199314, 35.893764, 27.479208>,  <27.010761, 36.028160, 27.542339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199314, 35.893764, 27.479208>,  <27.513569, 35.669773, 27.373991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199314, 35.893764, 27.479208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412308, -0.156898, -0.897432,
		-0.461277, -0.813511, 0.354151,
		-0.785637, 0.559984, 0.263044,
		26.963623, 36.061760, 27.558121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970518, 35.210339, 27.200945>,  <27.513569, 35.669773, 27.373991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970518, 35.210339, 27.200945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813383, 35.576168, 27.239395>,  <26.719101, 35.795666, 27.262465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.813383, 35.576168, 27.239395>,  <26.970518, 35.210339, 27.200945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813383, 35.576168, 27.239395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504820, -0.127098, -0.853816,
		-0.768657, -0.383939, 0.511622,
		-0.392839, 0.914570, 0.096125,
		26.695532, 35.850540, 27.268232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163282, 35.166672, 27.019051>,  <26.970518, 35.210339, 27.200945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163282, 35.166672, 27.019051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306154, 35.535591, 26.960016>,  <26.391878, 35.756943, 26.924595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.306154, 35.535591, 26.960016>,  <26.163282, 35.166672, 27.019051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306154, 35.535591, 26.960016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350665, -0.014040, -0.936396,
		-0.865711, 0.386217, 0.318404,
		0.357182, 0.922301, -0.147587,
		26.413309, 35.812283, 26.915741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574104, 35.696167, 26.855780>,  <26.163282, 35.166672, 27.019051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574104, 35.696167, 26.855780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.922756, 35.806957, 26.694017>,  <26.131948, 35.873432, 26.596960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.922756, 35.806957, 26.694017>,  <25.574104, 35.696167, 26.855780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922756, 35.806957, 26.694017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466955, 0.218351, -0.856899,
		-0.149040, 0.935738, 0.319658,
		0.871631, 0.276978, -0.404404,
		26.184246, 35.890049, 26.572697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345358, 36.059063, 26.255417>,  <25.574104, 35.696167, 26.855780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345358, 36.059063, 26.255417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736097, 36.103191, 26.182100>,  <25.970541, 36.129669, 26.138111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736097, 36.103191, 26.182100>,  <25.345358, 36.059063, 26.255417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736097, 36.103191, 26.182100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200898, 0.178562, -0.963201,
		-0.073536, 0.977724, 0.196591,
		0.976848, 0.110325, -0.183292,
		26.029152, 36.136288, 26.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478197, 36.763798, 26.011679>,  <25.345358, 36.059063, 26.255417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478197, 36.763798, 26.011679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781448, 36.536537, 25.883652>,  <25.963400, 36.400181, 25.806835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.781448, 36.536537, 25.883652>,  <25.478197, 36.763798, 26.011679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781448, 36.536537, 25.883652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293690, 0.140744, -0.945483,
		0.582226, 0.810799, -0.060159,
		0.758129, -0.568152, -0.320068,
		26.008886, 36.366093, 25.787632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681738, 37.100182, 25.557924>,  <25.478197, 36.763798, 26.011679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681738, 37.100182, 25.557924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.805508, 36.729652, 25.471958>,  <25.879770, 36.507336, 25.420378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.805508, 36.729652, 25.471958>,  <25.681738, 37.100182, 25.557924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805508, 36.729652, 25.471958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342352, 0.102335, -0.933982,
		0.887159, 0.362575, -0.285462,
		0.309426, -0.926319, -0.214915,
		25.898335, 36.451756, 25.407484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162615, 37.132370, 24.925123>,  <25.681738, 37.100182, 25.557924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162615, 37.132370, 24.925123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970495, 36.784023, 24.966904>,  <25.855223, 36.575016, 24.991972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.970495, 36.784023, 24.966904>,  <26.162615, 37.132370, 24.925123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970495, 36.784023, 24.966904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410309, 0.117832, -0.904302,
		0.775215, -0.477195, -0.413917,
		-0.480301, -0.870862, 0.104452,
		25.826405, 36.522766, 24.998240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.208530, 34.136208, 44.930614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848534, 33.962345, 44.917397>,  <36.632534, 33.858028, 44.909466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848534, 33.962345, 44.917397>,  <37.208530, 34.136208, 44.930614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848534, 33.962345, 44.917397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283005, 0.524962, 0.802697,
		-0.331547, 0.731773, -0.595471,
		-0.899992, -0.434653, -0.033046,
		36.578537, 33.831947, 44.907482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701424, 34.709194, 44.995975>,  <37.208530, 34.136208, 44.930614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701424, 34.709194, 44.995975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504230, 34.385086, 45.122734>,  <36.385914, 34.190620, 45.198792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504230, 34.385086, 45.122734>,  <36.701424, 34.709194, 44.995975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504230, 34.385086, 45.122734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348929, 0.517790, 0.781116,
		-0.797005, 0.274501, -0.537989,
		-0.492982, -0.810273, 0.316900,
		36.356335, 34.142006, 45.217804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887104, 34.834152, 45.137959>,  <36.701424, 34.709194, 44.995975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887104, 34.834152, 45.137959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010185, 34.509941, 45.337299>,  <36.084034, 34.315414, 45.456905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.010185, 34.509941, 45.337299>,  <35.887104, 34.834152, 45.137959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010185, 34.509941, 45.337299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382238, 0.374343, 0.844844,
		-0.871328, -0.450453, -0.194628,
		0.307705, -0.810531, 0.498356,
		36.102497, 34.266781, 45.486805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385296, 34.758507, 45.543293>,  <35.887104, 34.834152, 45.137959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385296, 34.758507, 45.543293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690193, 34.551720, 45.699108>,  <35.873131, 34.427647, 45.792595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690193, 34.551720, 45.699108>,  <35.385296, 34.758507, 45.543293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690193, 34.551720, 45.699108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364158, 0.155039, 0.918342,
		-0.535145, -0.841848, -0.070081,
		0.762239, -0.516966, 0.389534,
		35.918865, 34.396629, 45.815968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108017, 34.461067, 46.048080>,  <35.385296, 34.758507, 45.543293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108017, 34.461067, 46.048080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496208, 34.452114, 46.144146>,  <35.729122, 34.446743, 46.201786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496208, 34.452114, 46.144146>,  <35.108017, 34.461067, 46.048080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496208, 34.452114, 46.144146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232137, 0.183769, 0.955166,
		-0.065514, -0.982714, 0.173147,
		0.970474, -0.022383, 0.240163,
		35.787350, 34.445400, 46.216194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245487, 33.877758, 46.503292>,  <35.108017, 34.461067, 46.048080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245487, 33.877758, 46.503292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550407, 34.125137, 46.579617>,  <35.733360, 34.273567, 46.625412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.550407, 34.125137, 46.579617>,  <35.245487, 33.877758, 46.503292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550407, 34.125137, 46.579617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360742, 0.161224, 0.918625,
		0.537363, -0.769105, 0.346003,
		0.762303, 0.618453, 0.190813,
		35.779099, 34.310673, 46.636860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375214, 33.711071, 47.070293>,  <35.245487, 33.877758, 46.503292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375214, 33.711071, 47.070293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560314, 34.065208, 47.052242>,  <35.671375, 34.277691, 47.041412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560314, 34.065208, 47.052242>,  <35.375214, 33.711071, 47.070293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560314, 34.065208, 47.052242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125989, 0.116070, 0.985218,
		0.877491, -0.450223, 0.165254,
		0.462749, 0.885340, -0.045127,
		35.699139, 34.330811, 47.038704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762650, 33.678776, 47.681252>,  <35.375214, 33.711071, 47.070293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762650, 33.678776, 47.681252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723095, 34.066231, 47.590065>,  <35.699364, 34.298702, 47.535355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723095, 34.066231, 47.590065>,  <35.762650, 33.678776, 47.681252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723095, 34.066231, 47.590065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301600, 0.189141, 0.934485,
		0.948293, 0.161159, 0.273438,
		-0.098882, 0.968635, -0.227967,
		35.693432, 34.356823, 47.521675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254215, 34.056408, 48.110062>,  <35.762650, 33.678776, 47.681252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254215, 34.056408, 48.110062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932003, 34.268620, 48.004486>,  <35.738678, 34.395947, 47.941139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.932003, 34.268620, 48.004486>,  <36.254215, 34.056408, 48.110062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932003, 34.268620, 48.004486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198306, 0.178382, 0.963771,
		0.558389, 0.828686, -0.038485,
		-0.805528, 0.530527, -0.263940,
		35.690346, 34.427776, 47.925304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171398, 34.476074, 48.696609>,  <36.254215, 34.056408, 48.110062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171398, 34.476074, 48.696609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846088, 34.589920, 48.493599>,  <35.650902, 34.658230, 48.371792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846088, 34.589920, 48.493599>,  <36.171398, 34.476074, 48.696609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846088, 34.589920, 48.493599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405645, 0.348022, 0.845182,
		0.417185, 0.893237, -0.167582,
		-0.813270, 0.284618, -0.507527,
		35.602108, 34.675304, 48.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020138, 35.158714, 48.853607>,  <36.171398, 34.476074, 48.696609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020138, 35.158714, 48.853607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669945, 35.010799, 48.729168>,  <35.459827, 34.922050, 48.654507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669945, 35.010799, 48.729168>,  <36.020138, 35.158714, 48.853607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669945, 35.010799, 48.729168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456387, 0.421088, 0.783834,
		-0.158856, 0.828215, -0.537424,
		-0.875486, -0.369790, -0.311094,
		35.407299, 34.899864, 48.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523304, 35.607998, 49.181011>,  <36.020138, 35.158714, 48.853607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523304, 35.607998, 49.181011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293999, 35.295143, 49.083340>,  <35.156414, 35.107430, 49.024738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293999, 35.295143, 49.083340>,  <35.523304, 35.607998, 49.181011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293999, 35.295143, 49.083340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577038, 0.173803, 0.798010,
		-0.581717, 0.598370, -0.550961,
		-0.573264, -0.782142, -0.244178,
		35.122021, 35.060501, 49.010086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739429, 35.708359, 49.240871>,  <35.523304, 35.607998, 49.181011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739429, 35.708359, 49.240871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821465, 35.321640, 49.301861>,  <34.870686, 35.089611, 49.338455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821465, 35.321640, 49.301861>,  <34.739429, 35.708359, 49.240871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821465, 35.321640, 49.301861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655128, -0.019861, 0.755257,
		-0.727150, -0.254783, -0.637447,
		0.205087, -0.966794, 0.152474,
		34.882992, 35.031601, 49.347603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077652, 35.289837, 49.315563>,  <34.739429, 35.708359, 49.240871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077652, 35.289837, 49.315563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398174, 35.135963, 49.498837>,  <34.590488, 35.043640, 49.608799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398174, 35.135963, 49.498837>,  <34.077652, 35.289837, 49.315563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398174, 35.135963, 49.498837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503756, -0.020744, 0.863597,
		-0.322709, -0.922814, -0.210411,
		0.801305, -0.384687, 0.458179,
		34.638565, 35.020557, 49.636292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958931, 35.886108, 49.759403>,  <34.077652, 35.289837, 49.315563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958931, 35.886108, 49.759403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019218, 36.273380, 49.839310>,  <34.055389, 36.505745, 49.887253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019218, 36.273380, 49.839310>,  <33.958931, 35.886108, 49.759403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019218, 36.273380, 49.839310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331198, 0.140944, -0.932975,
		-0.931447, 0.206776, -0.299418,
		0.150716, 0.968183, 0.199766,
		34.064434, 36.563835, 49.899239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618214, 36.219978, 49.292110>,  <33.958931, 35.886108, 49.759403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618214, 36.219978, 49.292110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902538, 36.474224, 49.412605>,  <34.073132, 36.626770, 49.484901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902538, 36.474224, 49.412605>,  <33.618214, 36.219978, 49.292110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902538, 36.474224, 49.412605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164493, 0.266186, -0.949783,
		-0.683877, 0.724669, 0.084655,
		0.710812, 0.635610, 0.301241,
		34.115784, 36.664906, 49.502979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552647, 36.761650, 48.828072>,  <33.618214, 36.219978, 49.292110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552647, 36.761650, 48.828072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903660, 36.861931, 48.991581>,  <34.114265, 36.922100, 49.089687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903660, 36.861931, 48.991581>,  <33.552647, 36.761650, 48.828072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903660, 36.861931, 48.991581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320424, 0.327631, -0.888812,
		-0.356752, 0.910937, 0.207175,
		0.877528, 0.250702, 0.408769,
		34.166920, 36.937141, 49.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887730, 37.422176, 48.517654>,  <33.552647, 36.761650, 48.828072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887730, 37.422176, 48.517654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228268, 37.265728, 48.657509>,  <34.432590, 37.171860, 48.741421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228268, 37.265728, 48.657509>,  <33.887730, 37.422176, 48.517654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228268, 37.265728, 48.657509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492666, 0.367058, -0.789018,
		0.180263, 0.843976, 0.505182,
		0.851343, -0.391117, 0.349632,
		34.483669, 37.148392, 48.762398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443127, 37.978874, 48.509705>,  <33.887730, 37.422176, 48.517654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443127, 37.978874, 48.509705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619724, 37.619968, 48.509544>,  <34.725681, 37.404625, 48.509449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619724, 37.619968, 48.509544>,  <34.443127, 37.978874, 48.509705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619724, 37.619968, 48.509544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597306, 0.294235, -0.746091,
		0.669558, 0.329156, 0.665844,
		0.441495, -0.897264, -0.000400,
		34.752174, 37.350788, 48.509426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225010, 38.095852, 48.358494>,  <34.443127, 37.978874, 48.509705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225010, 38.095852, 48.358494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171734, 37.708984, 48.271919>,  <35.139771, 37.476864, 48.219975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171734, 37.708984, 48.271919>,  <35.225010, 38.095852, 48.358494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171734, 37.708984, 48.271919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458121, 0.133572, -0.878797,
		0.878855, -0.216199, 0.425290,
		-0.133188, -0.967169, -0.216436,
		35.131779, 37.418835, 48.206989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882309, 37.926979, 47.985161>,  <35.225010, 38.095852, 48.358494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882309, 37.926979, 47.985161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599995, 37.652134, 47.916172>,  <35.430607, 37.487228, 47.874779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599995, 37.652134, 47.916172>,  <35.882309, 37.926979, 47.985161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599995, 37.652134, 47.916172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370011, -0.149930, -0.916850,
		0.604117, -0.710916, 0.360056,
		-0.705786, -0.687109, -0.172471,
		35.388260, 37.446003, 47.864429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168343, 37.391407, 47.625141>,  <35.882309, 37.926979, 47.985161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168343, 37.391407, 47.625141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784580, 37.326065, 47.533176>,  <35.554321, 37.286861, 47.477997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784580, 37.326065, 47.533176>,  <36.168343, 37.391407, 47.625141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784580, 37.326065, 47.533176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236586, -0.022412, -0.971352,
		0.153521, -0.986313, 0.060149,
		-0.959406, -0.163353, -0.229907,
		35.496758, 37.277058, 47.464203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249298, 37.001354, 47.061066>,  <36.168343, 37.391407, 47.625141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249298, 37.001354, 47.061066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872437, 37.133331, 47.037441>,  <35.646320, 37.212517, 47.023266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.872437, 37.133331, 47.037441>,  <36.249298, 37.001354, 47.061066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872437, 37.133331, 47.037441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049309, -0.037859, -0.998066,
		-0.331540, -0.943242, 0.019400,
		-0.942152, 0.329942, -0.059062,
		35.589790, 37.232315, 47.019722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898014, 36.468571, 46.551926>,  <36.249298, 37.001354, 47.061066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898014, 36.468571, 46.551926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685596, 36.806625, 46.576405>,  <35.558147, 37.009457, 46.591091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685596, 36.806625, 46.576405>,  <35.898014, 36.468571, 46.551926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685596, 36.806625, 46.576405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145448, -0.019765, -0.989168,
		-0.834770, -0.534189, 0.133419,
		-0.531040, 0.845134, 0.061198,
		35.526283, 37.060165, 46.594765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242336, 36.348099, 46.106323>,  <35.898014, 36.468571, 46.551926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242336, 36.348099, 46.106323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296978, 36.743305, 46.135075>,  <35.329765, 36.980427, 46.152325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296978, 36.743305, 46.135075>,  <35.242336, 36.348099, 46.106323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296978, 36.743305, 46.135075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032403, 0.068059, -0.997155,
		-0.990095, 0.138548, -0.022717,
		0.136608, 0.988014, 0.071874,
		35.337959, 37.039711, 46.156635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712681, 36.630630, 45.819729>,  <35.242336, 36.348099, 46.106323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712681, 36.630630, 45.819729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005962, 36.901463, 45.794491>,  <35.181931, 37.063961, 45.779350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005962, 36.901463, 45.794491>,  <34.712681, 36.630630, 45.819729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005962, 36.901463, 45.794491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094385, 0.009447, -0.995491,
		-0.673431, 0.735849, 0.070832,
		0.733200, 0.677079, -0.063091,
		35.225922, 37.104588, 45.775562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469612, 37.116241, 45.316940>,  <34.712681, 36.630630, 45.819729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469612, 37.116241, 45.316940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862198, 37.184166, 45.352489>,  <35.097748, 37.224918, 45.373817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862198, 37.184166, 45.352489>,  <34.469612, 37.116241, 45.316940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862198, 37.184166, 45.352489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051145, 0.214817, -0.975314,
		-0.184707, 0.961779, 0.202150,
		0.981462, 0.169809, 0.088868,
		35.156635, 37.235107, 45.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671200, 37.631077, 44.802330>,  <34.469612, 37.116241, 45.316940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671200, 37.631077, 44.802330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030468, 37.476128, 44.885506>,  <35.246029, 37.383160, 44.935410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030468, 37.476128, 44.885506>,  <34.671200, 37.631077, 44.802330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030468, 37.476128, 44.885506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261806, 0.091288, -0.960794,
		0.353205, 0.917392, 0.183408,
		0.898167, -0.387374, 0.207935,
		35.299919, 37.359917, 44.947887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104107, 38.019230, 44.490364>,  <34.671200, 37.631077, 44.802330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104107, 38.019230, 44.490364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894508, 37.689823, 44.403423>,  <33.768749, 37.492180, 44.351257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894508, 37.689823, 44.403423>,  <34.104107, 38.019230, 44.490364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894508, 37.689823, 44.403423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556763, 0.138068, 0.819116,
		-0.644550, 0.550228, -0.530853,
		-0.523995, -0.823521, -0.217355,
		33.737309, 37.442768, 44.338219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413589, 38.210285, 44.790806>,  <34.104107, 38.019230, 44.490364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413589, 38.210285, 44.790806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416580, 37.812904, 44.745190>,  <33.418373, 37.574478, 44.717819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416580, 37.812904, 44.745190>,  <33.413589, 38.210285, 44.790806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416580, 37.812904, 44.745190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537788, -0.100137, 0.837112,
		-0.843047, 0.055069, -0.535013,
		0.007476, -0.993449, -0.114036,
		33.418823, 37.514870, 44.710979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751419, 38.145893, 45.041084>,  <33.413589, 38.210285, 44.790806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751419, 38.145893, 45.041084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971672, 37.814846, 45.084644>,  <33.103825, 37.616219, 45.110779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971672, 37.814846, 45.084644>,  <32.751419, 38.145893, 45.041084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971672, 37.814846, 45.084644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524189, -0.241296, 0.816702,
		-0.649637, -0.506786, -0.566691,
		0.550634, -0.827613, 0.108897,
		33.136864, 37.566563, 45.117313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233932, 37.650391, 45.115898>,  <32.751419, 38.145893, 45.041084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233932, 37.650391, 45.115898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570236, 37.480755, 45.250519>,  <32.772018, 37.378975, 45.331291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570236, 37.480755, 45.250519>,  <32.233932, 37.650391, 45.115898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570236, 37.480755, 45.250519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471118, -0.266775, 0.840761,
		-0.266775, -0.865435, -0.424091,
		-0.840761, 0.424091, -0.336553,
		32.822464, 37.353527, 45.351486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967733, 37.037678, 45.417587>,  <32.233932, 37.650391, 45.115898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967733, 37.037678, 45.417587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324322, 37.123909, 45.576988>,  <32.538273, 37.175648, 45.672630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.324322, 37.123909, 45.576988>,  <31.967733, 37.037678, 45.417587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324322, 37.123909, 45.576988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365063, -0.179161, 0.913581,
		0.268350, -0.959909, -0.081015,
		0.891469, 0.215584, 0.398505,
		32.591763, 37.188583, 45.696541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069443, 36.579090, 45.967281>,  <31.967733, 37.037678, 45.417587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069443, 36.579090, 45.967281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360943, 36.837448, 46.058270>,  <32.535843, 36.992462, 46.112862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360943, 36.837448, 46.058270>,  <32.069443, 36.579090, 45.967281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360943, 36.837448, 46.058270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312893, 0.018599, 0.949606,
		0.609115, -0.763199, 0.215650,
		0.728750, 0.645896, 0.227471,
		32.579567, 37.031216, 46.126511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697029, 36.280788, 46.384499>,  <32.069443, 36.579090, 45.967281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697029, 36.280788, 46.384499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638577, 36.670887, 46.450882>,  <32.603504, 36.904945, 46.490711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638577, 36.670887, 46.450882>,  <32.697029, 36.280788, 46.384499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638577, 36.670887, 46.450882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144349, -0.186983, 0.971700,
		0.978678, 0.118037, 0.168100,
		-0.146129, 0.975246, 0.165957,
		32.594738, 36.963459, 46.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584110, 35.600189, 46.758137>,  <32.697029, 36.280788, 46.384499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584110, 35.600189, 46.758137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308884, 35.326813, 46.660587>,  <32.143745, 35.162788, 46.602058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308884, 35.326813, 46.660587>,  <32.584110, 35.600189, 46.758137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308884, 35.326813, 46.660587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374219, -0.046255, -0.926186,
		0.621709, -0.728543, 0.287581,
		-0.688069, -0.683436, -0.243877,
		32.102463, 35.121780, 46.587425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002083, 35.065968, 46.440788>,  <32.584110, 35.600189, 46.758137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002083, 35.065968, 46.440788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625675, 35.003590, 46.320679>,  <32.399830, 34.966164, 46.248615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.625675, 35.003590, 46.320679>,  <33.002083, 35.065968, 46.440788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625675, 35.003590, 46.320679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329412, -0.219611, -0.918291,
		0.077260, -0.963043, 0.258029,
		-0.941020, -0.155945, -0.300271,
		32.343369, 34.956806, 46.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007732, 34.508797, 46.003155>,  <33.002083, 35.065968, 46.440788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007732, 34.508797, 46.003155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649120, 34.666916, 45.923187>,  <32.433952, 34.761787, 45.875206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649120, 34.666916, 45.923187>,  <33.007732, 34.508797, 46.003155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649120, 34.666916, 45.923187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180999, -0.085027, -0.979801,
		-0.404316, -0.914607, 0.004680,
		-0.896531, 0.395302, -0.199921,
		32.380161, 34.785507, 45.863213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724735, 34.024426, 45.551731>,  <33.007732, 34.508797, 46.003155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724735, 34.024426, 45.551731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529701, 34.369614, 45.498749>,  <32.412682, 34.576725, 45.466961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529701, 34.369614, 45.498749>,  <32.724735, 34.024426, 45.551731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529701, 34.369614, 45.498749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015260, -0.143260, -0.989567,
		-0.872941, -0.484520, 0.056683,
		-0.487586, 0.862970, -0.132451,
		32.383427, 34.628506, 45.459015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051727, 33.874962, 45.059109>,  <32.724735, 34.024426, 45.551731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051727, 33.874962, 45.059109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133987, 34.266006, 45.041286>,  <32.183342, 34.500633, 45.030594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133987, 34.266006, 45.041286>,  <32.051727, 33.874962, 45.059109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133987, 34.266006, 45.041286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151103, -0.013260, -0.988429,
		-0.966890, 0.210003, 0.144993,
		0.205650, 0.977611, -0.044553,
		32.195683, 34.559288, 45.027920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486771, 34.237572, 44.700439>,  <32.051727, 33.874962, 45.059109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486771, 34.237572, 44.700439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785254, 34.498562, 44.647602>,  <31.964344, 34.655155, 44.615902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785254, 34.498562, 44.647602>,  <31.486771, 34.237572, 44.700439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785254, 34.498562, 44.647602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215845, 0.049431, -0.975176,
		-0.629749, 0.756195, 0.177719,
		0.746208, 0.652476, -0.132092,
		32.009117, 34.694305, 44.607975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264997, 34.759426, 44.201546>,  <31.486771, 34.237572, 44.700439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264997, 34.759426, 44.201546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664780, 34.772614, 44.201920>,  <31.904650, 34.780525, 44.202145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664780, 34.772614, 44.201920>,  <31.264997, 34.759426, 44.201546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664780, 34.772614, 44.201920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000512, 0.043927, -0.999035,
		-0.032977, 0.998491, 0.043920,
		0.999456, 0.032968, 0.000937,
		31.964617, 34.782505, 44.202202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.240364, 32.248280, 48.486088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.467491, 32.575031, 48.445530>,  <33.603767, 32.771084, 48.421196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.467491, 32.575031, 48.445530>,  <33.240364, 32.248280, 48.486088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467491, 32.575031, 48.445530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108404, -0.196312, -0.974531,
		-0.815982, 0.542369, -0.200023,
		0.567822, 0.816883, -0.101392,
		33.637836, 32.820095, 48.415112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976875, 32.644753, 47.884457>,  <33.240364, 32.248280, 48.486088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976875, 32.644753, 47.884457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368263, 32.685631, 47.956184>,  <33.603096, 32.710155, 47.999222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368263, 32.685631, 47.956184>,  <32.976875, 32.644753, 47.884457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368263, 32.685631, 47.956184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199444, -0.244636, -0.948881,
		-0.053101, 0.964215, -0.259751,
		0.978469, 0.102192, 0.179316,
		33.661804, 32.716290, 48.009979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239380, 32.952297, 47.251095>,  <32.976875, 32.644753, 47.884457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239380, 32.952297, 47.251095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581593, 32.842037, 47.426403>,  <33.786922, 32.775883, 47.531586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.581593, 32.842037, 47.426403>,  <33.239380, 32.952297, 47.251095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581593, 32.842037, 47.426403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343971, -0.330071, -0.879055,
		0.386968, 0.902813, -0.187572,
		0.855534, -0.275647, 0.438269,
		33.838253, 32.759342, 47.557884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733116, 33.165760, 46.757828>,  <33.239380, 32.952297, 47.251095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733116, 33.165760, 46.757828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885124, 32.860550, 46.966969>,  <33.976330, 32.677422, 47.092453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885124, 32.860550, 46.966969>,  <33.733116, 33.165760, 46.757828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885124, 32.860550, 46.966969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128293, -0.516317, -0.846734,
		0.916040, 0.388851, -0.098317,
		0.380015, -0.763028, 0.522854,
		33.999130, 32.631641, 47.123825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540157, 33.155125, 46.670631>,  <33.733116, 33.165760, 46.757828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540157, 33.155125, 46.670631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424759, 32.791470, 46.790791>,  <34.355518, 32.573277, 46.862888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424759, 32.791470, 46.790791>,  <34.540157, 33.155125, 46.670631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424759, 32.791470, 46.790791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411848, -0.401061, -0.818249,
		0.864379, -0.112344, 0.490131,
		-0.288498, -0.909136, 0.300400,
		34.338211, 32.518730, 46.880909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025417, 32.733871, 46.415138>,  <34.540157, 33.155125, 46.670631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025417, 32.733871, 46.415138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.732918, 32.467278, 46.473213>,  <34.557419, 32.307323, 46.508060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.732918, 32.467278, 46.473213>,  <35.025417, 32.733871, 46.415138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732918, 32.467278, 46.473213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351290, -0.550419, -0.757387,
		0.584699, -0.502833, 0.636620,
		-0.731247, -0.666482, 0.145189,
		34.513542, 32.267334, 46.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340828, 32.070148, 46.359676>,  <35.025417, 32.733871, 46.415138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340828, 32.070148, 46.359676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955582, 31.970066, 46.320053>,  <34.724434, 31.910015, 46.296280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.955582, 31.970066, 46.320053>,  <35.340828, 32.070148, 46.359676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955582, 31.970066, 46.320053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253126, -0.717381, -0.649070,
		0.091342, -0.650200, 0.754252,
		-0.963111, -0.250209, -0.099055,
		34.666649, 31.895004, 46.290337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359814, 31.264315, 46.323566>,  <35.340828, 32.070148, 46.359676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359814, 31.264315, 46.323566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035488, 31.418093, 46.147026>,  <34.840893, 31.510361, 46.041103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035488, 31.418093, 46.147026>,  <35.359814, 31.264315, 46.323566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035488, 31.418093, 46.147026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096889, -0.655481, -0.748971,
		-0.577232, -0.650035, 0.494223,
		-0.810811, 0.384445, -0.441346,
		34.792244, 31.533426, 46.014622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885269, 30.686684, 46.035183>,  <35.359814, 31.264315, 46.323566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885269, 30.686684, 46.035183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776974, 30.996843, 45.806988>,  <34.711998, 31.182940, 45.670071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.776974, 30.996843, 45.806988>,  <34.885269, 30.686684, 46.035183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776974, 30.996843, 45.806988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047921, -0.581032, -0.812469,
		-0.961460, -0.247303, 0.120148,
		-0.270735, 0.775399, -0.570490,
		34.695751, 31.229464, 45.635841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587624, 30.392658, 45.333576>,  <34.885269, 30.686684, 46.035183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587624, 30.392658, 45.333576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660698, 30.769667, 45.221664>,  <34.704544, 30.995872, 45.154518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660698, 30.769667, 45.221664>,  <34.587624, 30.392658, 45.333576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660698, 30.769667, 45.221664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165955, -0.310045, -0.936126,
		-0.969064, 0.124588, -0.213057,
		0.182687, 0.942523, -0.279778,
		34.715504, 31.052423, 45.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236225, 30.423317, 44.643787>,  <34.587624, 30.392658, 45.333576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236225, 30.423317, 44.643787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472748, 30.742897, 44.687675>,  <34.614662, 30.934645, 44.714008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.472748, 30.742897, 44.687675>,  <34.236225, 30.423317, 44.643787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472748, 30.742897, 44.687675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115414, 0.050819, -0.992017,
		-0.798148, 0.599246, -0.062160,
		0.591303, 0.798950, 0.109723,
		34.650139, 30.982582, 44.720592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088139, 30.828718, 44.063473>,  <34.236225, 30.423317, 44.643787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088139, 30.828718, 44.063473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436970, 30.981173, 44.186253>,  <34.646267, 31.072645, 44.259918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436970, 30.981173, 44.186253>,  <34.088139, 30.828718, 44.063473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436970, 30.981173, 44.186253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275081, 0.136964, -0.951615,
		-0.404737, 0.914317, 0.014599,
		0.872077, 0.381137, 0.306946,
		34.698593, 31.095514, 44.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697578, 31.449118, 44.161568>,  <34.088139, 30.828718, 44.063473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697578, 31.449118, 44.161568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326092, 31.382071, 44.029274>,  <33.103199, 31.341843, 43.949898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326092, 31.382071, 44.029274>,  <33.697578, 31.449118, 44.161568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326092, 31.382071, 44.029274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255679, -0.356479, 0.898638,
		-0.268525, 0.919145, 0.288214,
		-0.928721, -0.167616, -0.330730,
		33.047474, 31.331785, 43.930054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354038, 31.731596, 44.753277>,  <33.697578, 31.449118, 44.161568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354038, 31.731596, 44.753277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098751, 31.490721, 44.561424>,  <32.945580, 31.346195, 44.446312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098751, 31.490721, 44.561424>,  <33.354038, 31.731596, 44.753277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098751, 31.490721, 44.561424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472771, -0.185127, 0.861519,
		-0.607590, 0.776593, -0.166546,
		-0.638218, -0.602188, -0.479632,
		32.907288, 31.310064, 44.417534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549149, 31.994967, 44.834919>,  <33.354038, 31.731596, 44.753277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549149, 31.994967, 44.834919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.546978, 31.605436, 44.744026>,  <32.545677, 31.371717, 44.689491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.546978, 31.605436, 44.744026>,  <32.549149, 31.994967, 44.834919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546978, 31.605436, 44.744026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656034, -0.168036, 0.735787,
		-0.754712, 0.153062, -0.637952,
		-0.005422, -0.973826, -0.227232,
		32.545353, 31.313290, 44.675858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874899, 31.833847, 44.867012>,  <32.549149, 31.994967, 44.834919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874899, 31.833847, 44.867012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043564, 31.471170, 44.871273>,  <32.144764, 31.253565, 44.873829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.043564, 31.471170, 44.871273>,  <31.874899, 31.833847, 44.867012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043564, 31.471170, 44.871273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581381, -0.261320, 0.770524,
		-0.695842, -0.331097, -0.637322,
		0.421663, -0.906690, 0.010656,
		32.170063, 31.199163, 44.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319052, 31.385805, 44.871471>,  <31.874899, 31.833847, 44.867012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319052, 31.385805, 44.871471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648083, 31.219191, 45.026321>,  <31.845501, 31.119223, 45.119232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.648083, 31.219191, 45.026321>,  <31.319052, 31.385805, 44.871471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648083, 31.219191, 45.026321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458697, -0.083659, 0.884646,
		-0.336099, -0.905262, -0.259879,
		0.822578, -0.416534, 0.387123,
		31.894855, 31.094231, 45.142460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029339, 30.980370, 45.295116>,  <31.319052, 31.385805, 44.871471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029339, 30.980370, 45.295116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404272, 30.999474, 45.433174>,  <31.629232, 31.010935, 45.516006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.404272, 30.999474, 45.433174>,  <31.029339, 30.980370, 45.295116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404272, 30.999474, 45.433174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347775, 0.067509, 0.935145,
		0.021355, -0.996575, 0.079885,
		0.937335, 0.047752, 0.345142,
		31.685472, 31.013802, 45.536716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075724, 30.442789, 45.788506>,  <31.029339, 30.980370, 45.295116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075724, 30.442789, 45.788506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.380575, 30.682886, 45.885559>,  <31.563486, 30.826944, 45.943790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.380575, 30.682886, 45.885559>,  <31.075724, 30.442789, 45.788506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380575, 30.682886, 45.885559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278818, -0.033938, 0.959744,
		0.584314, -0.799097, 0.141494,
		0.762127, 0.600243, 0.242633,
		31.609213, 30.862959, 45.958347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341997, 30.174589, 46.508175>,  <31.075724, 30.442789, 45.788506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341997, 30.174589, 46.508175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.509649, 30.537241, 46.488762>,  <31.610241, 30.754831, 46.477112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.509649, 30.537241, 46.488762>,  <31.341997, 30.174589, 46.508175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509649, 30.537241, 46.488762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161365, 0.126992, 0.978690,
		0.893471, -0.402368, 0.199524,
		0.419131, 0.906627, -0.048535,
		31.635389, 30.809229, 46.474201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897791, 30.184870, 47.029812>,  <31.341997, 30.174589, 46.508175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897791, 30.184870, 47.029812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.812950, 30.565243, 46.939713>,  <31.762045, 30.793467, 46.885654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.812950, 30.565243, 46.939713>,  <31.897791, 30.184870, 47.029812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812950, 30.565243, 46.939713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018732, 0.226491, 0.973833,
		0.977068, 0.210772, -0.030226,
		-0.212103, 0.950935, -0.225245,
		31.749319, 30.850523, 46.872139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437954, 30.572306, 47.343811>,  <31.897791, 30.184870, 47.029812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437954, 30.572306, 47.343811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120903, 30.813198, 47.305756>,  <31.930672, 30.957733, 47.282925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.120903, 30.813198, 47.305756>,  <32.437954, 30.572306, 47.343811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120903, 30.813198, 47.305756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049731, 0.219379, 0.974371,
		0.607669, 0.767586, -0.203836,
		-0.792631, 0.602233, -0.095137,
		31.883114, 30.993868, 47.277214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600452, 31.110434, 47.753429>,  <32.437954, 30.572306, 47.343811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600452, 31.110434, 47.753429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205040, 31.125841, 47.695023>,  <31.967793, 31.135086, 47.659981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.205040, 31.125841, 47.695023>,  <32.600452, 31.110434, 47.753429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205040, 31.125841, 47.695023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132240, 0.246081, 0.960186,
		0.072917, 0.968484, -0.238165,
		-0.988532, 0.038519, -0.146015,
		31.908480, 31.137398, 47.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429272, 31.786510, 47.881969>,  <32.600452, 31.110434, 47.753429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429272, 31.786510, 47.881969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089302, 31.581419, 47.930542>,  <31.885321, 31.458364, 47.959686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089302, 31.581419, 47.930542>,  <32.429272, 31.786510, 47.881969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089302, 31.581419, 47.930542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122558, 0.416504, 0.900835,
		-0.512458, 0.750757, -0.416834,
		-0.849921, -0.512727, 0.121430,
		31.834326, 31.427601, 47.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027180, 32.223560, 48.323856>,  <32.429272, 31.786510, 47.881969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027180, 32.223560, 48.323856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813583, 31.886429, 48.350674>,  <31.685425, 31.684151, 48.366764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.813583, 31.886429, 48.350674>,  <32.027180, 32.223560, 48.323856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813583, 31.886429, 48.350674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313186, 0.270830, 0.910256,
		-0.785346, 0.465071, -0.408583,
		-0.533990, -0.842829, 0.067042,
		31.653387, 31.633581, 48.370785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270136, 32.380657, 48.349239>,  <32.027180, 32.223560, 48.323856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270136, 32.380657, 48.349239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392893, 32.055817, 48.547756>,  <31.466547, 31.860912, 48.666866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392893, 32.055817, 48.547756>,  <31.270136, 32.380657, 48.349239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392893, 32.055817, 48.547756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195191, 0.456668, 0.867960,
		-0.931513, -0.363244, -0.018366,
		0.306894, -0.812101, 0.496294,
		31.484961, 31.812187, 48.696644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624208, 33.037659, 48.484760>,  <31.270136, 32.380657, 48.349239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624208, 33.037659, 48.484760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.441851, 33.306236, 48.718452>,  <31.332436, 33.467384, 48.858665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.441851, 33.306236, 48.718452>,  <31.624208, 33.037659, 48.484760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441851, 33.306236, 48.718452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101123, 0.613083, -0.783520,
		-0.884270, -0.416282, -0.211604,
		-0.455896, 0.671445, 0.584226,
		31.305082, 33.507671, 48.893719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017132, 33.150429, 48.157513>,  <31.624208, 33.037659, 48.484760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017132, 33.150429, 48.157513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.132833, 33.449322, 48.396839>,  <31.202253, 33.628658, 48.540436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.132833, 33.449322, 48.396839>,  <31.017132, 33.150429, 48.157513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132833, 33.449322, 48.396839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056831, 0.610524, -0.789956,
		-0.955564, 0.262499, 0.134130,
		0.289252, 0.747231, 0.598313,
		31.219608, 33.673492, 48.576332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600016, 33.763988, 47.946930>,  <31.017132, 33.150429, 48.157513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600016, 33.763988, 47.946930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.921940, 33.907509, 48.136051>,  <31.115095, 33.993622, 48.249523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.921940, 33.907509, 48.136051>,  <30.600016, 33.763988, 47.946930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921940, 33.907509, 48.136051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175369, 0.617275, -0.766953,
		-0.567030, 0.700168, 0.433869,
		0.804812, 0.358798, 0.472801,
		31.163383, 34.015148, 48.277893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677328, 34.291862, 47.710110>,  <30.600016, 33.763988, 47.946930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677328, 34.291862, 47.710110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042194, 34.329456, 47.869671>,  <31.261114, 34.352013, 47.965408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042194, 34.329456, 47.869671>,  <30.677328, 34.291862, 47.710110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042194, 34.329456, 47.869671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323471, 0.432532, -0.841595,
		-0.251637, 0.896706, 0.364138,
		0.912165, 0.093988, 0.398900,
		31.315844, 34.357655, 47.989342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779327, 35.071388, 47.605087>,  <30.677328, 34.291862, 47.710110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779327, 35.071388, 47.605087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.124844, 34.871437, 47.630337>,  <31.332153, 34.751465, 47.645489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.124844, 34.871437, 47.630337>,  <30.779327, 35.071388, 47.605087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124844, 34.871437, 47.630337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296098, 0.402257, -0.866323,
		0.407664, 0.767014, 0.495479,
		0.863792, -0.499879, 0.063125,
		31.383982, 34.721474, 47.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278805, 35.537014, 47.476543>,  <30.779327, 35.071388, 47.605087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278805, 35.537014, 47.476543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.475908, 35.198143, 47.397068>,  <31.594170, 34.994820, 47.349384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.475908, 35.198143, 47.397068>,  <31.278805, 35.537014, 47.476543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475908, 35.198143, 47.397068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268509, 0.365222, -0.891356,
		0.827704, 0.385874, 0.407441,
		0.492757, -0.847180, -0.198685,
		31.623735, 34.943989, 47.337463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995970, 35.827389, 47.145706>,  <31.278805, 35.537014, 47.476543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995970, 35.827389, 47.145706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935434, 35.443523, 47.050926>,  <31.899113, 35.213203, 46.994057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935434, 35.443523, 47.050926>,  <31.995970, 35.827389, 47.145706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935434, 35.443523, 47.050926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256178, 0.193447, -0.947075,
		0.954709, -0.204033, 0.216567,
		-0.151340, -0.959661, -0.236954,
		31.890032, 35.155624, 46.979839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547405, 36.295242, 47.160679>,  <31.995970, 35.827389, 47.145706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547405, 36.295242, 47.160679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506565, 36.684223, 47.076855>,  <32.482059, 36.917610, 47.026562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506565, 36.684223, 47.076855>,  <32.547405, 36.295242, 47.160679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506565, 36.684223, 47.076855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229910, 0.181887, 0.956064,
		0.967841, 0.145798, 0.205005,
		-0.102104, 0.972450, -0.209559,
		32.475933, 36.975960, 47.013988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906517, 36.639610, 47.653355>,  <32.547405, 36.295242, 47.160679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906517, 36.639610, 47.653355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648403, 36.905140, 47.502121>,  <32.493534, 37.064457, 47.411381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.648403, 36.905140, 47.502121>,  <32.906517, 36.639610, 47.653355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648403, 36.905140, 47.502121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108470, 0.410280, 0.905486,
		0.756199, 0.625311, -0.192745,
		-0.645289, 0.663820, -0.378080,
		32.454815, 37.104286, 47.388699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002972, 37.293968, 47.944370>,  <32.906517, 36.639610, 47.653355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002972, 37.293968, 47.944370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.621731, 37.333336, 47.829895>,  <32.392986, 37.356956, 47.761211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.621731, 37.333336, 47.829895>,  <33.002972, 37.293968, 47.944370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621731, 37.333336, 47.829895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232453, 0.367460, 0.900521,
		0.193787, 0.924817, -0.327352,
		-0.953107, 0.098415, -0.286185,
		32.335800, 37.362862, 47.744038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815521, 37.922657, 48.222450>,  <33.002972, 37.293968, 47.944370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815521, 37.922657, 48.222450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460930, 37.757214, 48.139423>,  <32.248177, 37.657948, 48.089607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460930, 37.757214, 48.139423>,  <32.815521, 37.922657, 48.222450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460930, 37.757214, 48.139423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400715, 0.461712, 0.791359,
		-0.231478, 0.784698, -0.575037,
		-0.886479, -0.413609, -0.207564,
		32.194984, 37.633129, 48.077152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398842, 38.417976, 48.288086>,  <32.815521, 37.922657, 48.222450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398842, 38.417976, 48.288086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.191586, 38.078114, 48.327312>,  <32.067234, 37.874195, 48.350849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.191586, 38.078114, 48.327312>,  <32.398842, 38.417976, 48.288086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191586, 38.078114, 48.327312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395134, 0.339482, 0.853593,
		-0.758553, 0.403529, -0.511627,
		-0.518137, -0.849657, 0.098067,
		32.036144, 37.823215, 48.356731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723429, 38.657444, 48.425808>,  <32.398842, 38.417976, 48.288086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723429, 38.657444, 48.425808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.742939, 38.273090, 48.534863>,  <31.754644, 38.042480, 48.600296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.742939, 38.273090, 48.534863>,  <31.723429, 38.657444, 48.425808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742939, 38.273090, 48.534863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348391, 0.239454, 0.906248,
		-0.936080, -0.139186, -0.323083,
		0.048773, -0.960880, 0.272639,
		31.757570, 37.984825, 48.616653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198328, 38.664406, 48.953857>,  <31.723429, 38.657444, 48.425808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198328, 38.664406, 48.953857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395769, 38.320827, 49.008358>,  <31.514235, 38.114681, 49.041058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.395769, 38.320827, 49.008358>,  <31.198328, 38.664406, 48.953857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395769, 38.320827, 49.008358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193695, 0.044151, 0.980068,
		-0.847842, -0.510157, -0.144581,
		0.493605, -0.858948, 0.136248,
		31.543850, 38.063145, 49.049232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772366, 38.214527, 49.427879>,  <31.198328, 38.664406, 48.953857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772366, 38.214527, 49.427879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159723, 38.118164, 49.453716>,  <31.392138, 38.060345, 49.469219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.159723, 38.118164, 49.453716>,  <30.772366, 38.214527, 49.427879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159723, 38.118164, 49.453716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049280, 0.069063, 0.996394,
		-0.244501, -0.968088, 0.055008,
		0.968396, -0.240908, 0.064593,
		31.450243, 38.045891, 49.473095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924055, 37.609539, 49.993084>,  <30.772366, 38.214527, 49.427879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924055, 37.609539, 49.993084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.286448, 37.772362, 49.946606>,  <31.503883, 37.870056, 49.918716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.286448, 37.772362, 49.946606>,  <30.924055, 37.609539, 49.993084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286448, 37.772362, 49.946606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178104, -0.117520, 0.976969,
		0.384029, -0.905810, -0.178970,
		0.905981, 0.407059, -0.116198,
		31.558241, 37.894478, 49.911747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.340080, 36.394444, 34.567253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589252, 36.639938, 34.761276>,  <37.738758, 36.787235, 34.877689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589252, 36.639938, 34.761276>,  <37.340080, 36.394444, 34.567253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589252, 36.639938, 34.761276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665460, 0.089784, 0.741015,
		0.411240, -0.784387, 0.464348,
		0.622933, 0.613739, 0.485055,
		37.776131, 36.824059, 34.906792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414318, 36.183140, 35.210667>,  <37.340080, 36.394444, 34.567253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414318, 36.183140, 35.210667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498814, 36.572498, 35.246162>,  <37.549511, 36.806114, 35.267460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498814, 36.572498, 35.246162>,  <37.414318, 36.183140, 35.210667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498814, 36.572498, 35.246162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467464, 0.020876, 0.883765,
		0.858402, -0.228172, 0.459438,
		0.211242, 0.973397, 0.088742,
		37.562187, 36.864517, 35.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494267, 36.247349, 35.872746>,  <37.414318, 36.183140, 35.210667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494267, 36.247349, 35.872746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429504, 36.623051, 35.751690>,  <37.390648, 36.848473, 35.679058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429504, 36.623051, 35.751690>,  <37.494267, 36.247349, 35.872746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429504, 36.623051, 35.751690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435329, 0.207245, 0.876092,
		0.885593, 0.273590, 0.375331,
		-0.161905, 0.939254, -0.302637,
		37.380932, 36.904827, 35.660900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447361, 36.681740, 36.559551>,  <37.494267, 36.247349, 35.872746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447361, 36.681740, 36.559551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280640, 36.903183, 36.271164>,  <37.180607, 37.036049, 36.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280640, 36.903183, 36.271164>,  <37.447361, 36.681740, 36.559551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280640, 36.903183, 36.271164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659014, 0.362248, 0.659149,
		0.626078, 0.749864, 0.213849,
		-0.416805, 0.553608, -0.720966,
		37.155598, 37.069263, 36.054874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176662, 37.346790, 36.931423>,  <37.447361, 36.681740, 36.559551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176662, 37.346790, 36.931423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996773, 37.317116, 36.575390>,  <36.888840, 37.299313, 36.361771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996773, 37.317116, 36.575390>,  <37.176662, 37.346790, 36.931423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996773, 37.317116, 36.575390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886023, 0.162867, 0.434094,
		0.112761, 0.983855, -0.138976,
		-0.449720, -0.074187, -0.890083,
		36.861858, 37.294861, 36.308365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040218, 38.024635, 36.675583>,  <37.176662, 37.346790, 36.931423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040218, 38.024635, 36.675583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802582, 37.737247, 36.530884>,  <36.660000, 37.564816, 36.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802582, 37.737247, 36.530884>,  <37.040218, 38.024635, 36.675583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802582, 37.737247, 36.530884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763705, 0.362564, 0.534137,
		-0.252605, 0.593592, -0.764094,
		-0.594092, -0.718468, -0.361744,
		36.624355, 37.521706, 36.422359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426598, 38.288960, 36.710449>,  <37.040218, 38.024635, 36.675583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426598, 38.288960, 36.710449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305962, 37.909058, 36.676960>,  <36.233582, 37.681118, 36.656868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305962, 37.909058, 36.676960>,  <36.426598, 38.288960, 36.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305962, 37.909058, 36.676960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813658, 0.210610, 0.541853,
		-0.496996, 0.231536, -0.836293,
		-0.301590, -0.949755, -0.083719,
		36.215485, 37.624130, 36.651844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732891, 38.319435, 36.571430>,  <36.426598, 38.288960, 36.710449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732891, 38.319435, 36.571430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784721, 37.950943, 36.718155>,  <35.815819, 37.729847, 36.806190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784721, 37.950943, 36.718155>,  <35.732891, 38.319435, 36.571430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784721, 37.950943, 36.718155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846483, 0.089894, 0.524772,
		-0.516408, -0.378496, -0.768156,
		0.129572, -0.921227, 0.366813,
		35.823593, 37.674576, 36.828197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033047, 38.145729, 36.763165>,  <35.732891, 38.319435, 36.571430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033047, 38.145729, 36.763165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227692, 37.841946, 36.935875>,  <35.344479, 37.659676, 37.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227692, 37.841946, 36.935875>,  <35.033047, 38.145729, 36.763165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227692, 37.841946, 36.935875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668291, -0.005278, 0.743881,
		-0.562672, -0.650529, -0.510110,
		0.486609, -0.759463, 0.431773,
		35.373672, 37.614105, 37.065407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587307, 37.537766, 36.926361>,  <35.033047, 38.145729, 36.763165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587307, 37.537766, 36.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885101, 37.495255, 37.190014>,  <35.063778, 37.469749, 37.348206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885101, 37.495255, 37.190014>,  <34.587307, 37.537766, 36.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885101, 37.495255, 37.190014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667454, -0.095206, 0.738540,
		-0.015728, -0.989769, -0.141807,
		0.744485, -0.106266, 0.659128,
		35.108448, 37.463371, 37.387753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352448, 37.035473, 37.419670>,  <34.587307, 37.537766, 36.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352448, 37.035473, 37.419670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666054, 37.176704, 37.623886>,  <34.854218, 37.261444, 37.746418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666054, 37.176704, 37.623886>,  <34.352448, 37.035473, 37.419670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666054, 37.176704, 37.623886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478934, -0.179158, 0.859374,
		0.394898, -0.918279, 0.028641,
		0.784014, 0.353082, 0.510544,
		34.901257, 37.282627, 37.777050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507275, 36.517506, 37.974339>,  <34.352448, 37.035473, 37.419670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507275, 36.517506, 37.974339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632401, 36.874226, 38.105087>,  <34.707478, 37.088257, 38.183537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632401, 36.874226, 38.105087>,  <34.507275, 36.517506, 37.974339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632401, 36.874226, 38.105087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374989, -0.200226, 0.905148,
		0.872656, -0.405718, 0.271780,
		0.312817, 0.891797, 0.326868,
		34.726246, 37.141766, 38.203148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289940, 35.774685, 38.269333>,  <34.507275, 36.517506, 37.974339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289940, 35.774685, 38.269333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938335, 35.585686, 38.294899>,  <33.727371, 35.472286, 38.310238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938335, 35.585686, 38.294899>,  <34.289940, 35.774685, 38.269333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938335, 35.585686, 38.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192940, -0.475080, -0.858530,
		0.436019, -0.742325, 0.508765,
		-0.879012, -0.472496, 0.063919,
		33.674633, 35.443935, 38.314075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382084, 34.988121, 38.077629>,  <34.289940, 35.774685, 38.269333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382084, 34.988121, 38.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001389, 35.091343, 38.011177>,  <33.772972, 35.153278, 37.971306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001389, 35.091343, 38.011177>,  <34.382084, 34.988121, 38.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001389, 35.091343, 38.011177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053836, -0.392546, -0.918155,
		-0.302151, -0.882788, 0.359708,
		-0.951739, 0.258056, -0.166134,
		33.715866, 35.168758, 37.961338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066067, 34.400055, 37.711040>,  <34.382084, 34.988121, 38.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066067, 34.400055, 37.711040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817635, 34.704742, 37.637238>,  <33.668575, 34.887554, 37.592957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817635, 34.704742, 37.637238>,  <34.066067, 34.400055, 37.711040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817635, 34.704742, 37.637238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231602, -0.403271, -0.885287,
		-0.748748, -0.507100, 0.426879,
		-0.621077, 0.761723, -0.184503,
		33.631310, 34.933258, 37.581886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390411, 34.097073, 37.473557>,  <34.066067, 34.400055, 37.711040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390411, 34.097073, 37.473557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383617, 34.479446, 37.356327>,  <33.379539, 34.708870, 37.285988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383617, 34.479446, 37.356327>,  <33.390411, 34.097073, 37.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383617, 34.479446, 37.356327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265394, -0.286913, -0.920460,
		-0.963990, 0.062144, 0.258574,
		-0.016988, 0.955939, -0.293074,
		33.378521, 34.766228, 37.268406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762566, 34.207764, 37.091980>,  <33.390411, 34.097073, 37.473557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762566, 34.207764, 37.091980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023811, 34.485546, 36.971203>,  <33.180561, 34.652214, 36.898735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023811, 34.485546, 36.971203>,  <32.762566, 34.207764, 37.091980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023811, 34.485546, 36.971203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221977, -0.205646, -0.953119,
		-0.723992, 0.689523, 0.019842,
		0.653117, 0.694455, -0.301944,
		33.219746, 34.693882, 36.880619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395191, 34.531380, 36.481693>,  <32.762566, 34.207764, 37.091980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395191, 34.531380, 36.481693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778824, 34.641850, 36.456734>,  <33.009003, 34.708134, 36.441757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778824, 34.641850, 36.456734>,  <32.395191, 34.531380, 36.481693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778824, 34.641850, 36.456734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032010, -0.113223, -0.993054,
		-0.281325, 0.954414, -0.099749,
		0.959078, 0.276178, -0.062403,
		33.066547, 34.724705, 36.438011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327808, 34.970211, 35.896469>,  <32.395191, 34.531380, 36.481693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327808, 34.970211, 35.896469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711643, 34.865356, 35.937393>,  <32.941944, 34.802444, 35.961948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711643, 34.865356, 35.937393>,  <32.327808, 34.970211, 35.896469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711643, 34.865356, 35.937393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134736, 0.108815, -0.984888,
		0.247046, 0.958875, 0.139738,
		0.959591, -0.262141, 0.102313,
		32.999519, 34.786713, 35.968086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727543, 35.411461, 35.357693>,  <32.327808, 34.970211, 35.896469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727543, 35.411461, 35.357693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003952, 35.127319, 35.411182>,  <33.169800, 34.956837, 35.443275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003952, 35.127319, 35.411182>,  <32.727543, 35.411461, 35.357693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003952, 35.127319, 35.411182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201789, 0.011930, -0.979356,
		0.694091, 0.703747, 0.151585,
		0.691027, -0.710351, 0.133727,
		33.211262, 34.914215, 35.451302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300739, 35.494637, 34.912827>,  <32.727543, 35.411461, 35.357693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300739, 35.494637, 34.912827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351250, 35.112457, 35.019535>,  <33.381557, 34.883148, 35.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351250, 35.112457, 35.019535>,  <33.300739, 35.494637, 34.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351250, 35.112457, 35.019535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357794, -0.206957, -0.910578,
		0.925223, 0.210435, 0.315720,
		0.126277, -0.955451, 0.266774,
		33.389133, 34.825821, 35.099567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919189, 35.258835, 34.560490>,  <33.300739, 35.494637, 34.912827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919189, 35.258835, 34.560490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698261, 34.934135, 34.636398>,  <33.565704, 34.739315, 34.681942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698261, 34.934135, 34.636398>,  <33.919189, 35.258835, 34.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698261, 34.934135, 34.636398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246035, -0.376231, -0.893262,
		0.796498, -0.446676, 0.407517,
		-0.552320, -0.811745, 0.189770,
		33.532566, 34.690613, 34.693329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210903, 34.776089, 34.112503>,  <33.919189, 35.258835, 34.560490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210903, 34.776089, 34.112503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867878, 34.611298, 34.235703>,  <33.662064, 34.512424, 34.309624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867878, 34.611298, 34.235703>,  <34.210903, 34.776089, 34.112503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867878, 34.611298, 34.235703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064347, -0.508157, -0.858857,
		0.510339, -0.756343, 0.409267,
		-0.857562, -0.411974, 0.308001,
		33.610611, 34.487705, 34.328102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248604, 34.040573, 34.026939>,  <34.210903, 34.776089, 34.112503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248604, 34.040573, 34.026939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853256, 34.099449, 34.011635>,  <33.616047, 34.134773, 34.002453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853256, 34.099449, 34.011635>,  <34.248604, 34.040573, 34.026939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853256, 34.099449, 34.011635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031189, -0.442414, -0.896268,
		-0.148848, -0.884650, 0.441858,
		-0.988368, 0.147189, -0.038262,
		33.556747, 34.143604, 34.000156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747059, 33.654690, 33.538944>,  <34.248604, 34.040573, 34.026939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747059, 33.654690, 33.538944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734692, 33.828381, 33.178837>,  <34.727272, 33.932594, 32.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734692, 33.828381, 33.178837>,  <34.747059, 33.654690, 33.538944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734692, 33.828381, 33.178837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868903, -0.433497, -0.238931,
		-0.494016, -0.789637, -0.363898,
		-0.030920, 0.434228, -0.900272,
		34.725414, 33.958649, 32.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398815, 33.403614, 33.685963>,  <34.747059, 33.654690, 33.538944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398815, 33.403614, 33.685963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143890, 33.668701, 33.843258>,  <34.990936, 33.827755, 33.937634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143890, 33.668701, 33.843258>,  <35.398815, 33.403614, 33.685963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143890, 33.668701, 33.843258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737101, -0.375424, -0.561907,
		-0.224754, -0.647968, 0.727752,
		-0.637313, 0.662717, 0.393240,
		34.952698, 33.867516, 33.961227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764549, 33.277885, 33.027618>,  <35.398815, 33.403614, 33.685963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764549, 33.277885, 33.027618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687244, 32.890362, 33.089672>,  <35.640862, 32.657848, 33.126904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687244, 32.890362, 33.089672>,  <35.764549, 33.277885, 33.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687244, 32.890362, 33.089672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566480, 0.239280, 0.788572,
		-0.801093, 0.064521, -0.595052,
		-0.193263, -0.968804, 0.155136,
		35.629265, 32.599720, 33.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974930, 33.060116, 33.008781>,  <35.764549, 33.277885, 33.027618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974930, 33.060116, 33.008781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200073, 32.828178, 33.244396>,  <35.335159, 32.689014, 33.385765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200073, 32.828178, 33.244396>,  <34.974930, 33.060116, 33.008781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200073, 32.828178, 33.244396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544931, 0.275512, 0.791924,
		-0.621480, -0.766730, -0.160900,
		0.562861, -0.579844, 0.589040,
		35.368931, 32.654224, 33.421108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541542, 32.808350, 33.535156>,  <34.974930, 33.060116, 33.008781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541542, 32.808350, 33.535156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892948, 32.726128, 33.707645>,  <35.103790, 32.676792, 33.811138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892948, 32.726128, 33.707645>,  <34.541542, 32.808350, 33.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892948, 32.726128, 33.707645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427128, 0.066263, 0.901760,
		-0.213940, -0.976399, -0.029587,
		0.878516, -0.205560, 0.431224,
		35.156502, 32.664459, 33.837013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527657, 32.211464, 33.902187>,  <34.541542, 32.808350, 33.535156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527657, 32.211464, 33.902187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829643, 32.412533, 34.070637>,  <35.010834, 32.533176, 34.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829643, 32.412533, 34.070637>,  <34.527657, 32.211464, 33.902187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829643, 32.412533, 34.070637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471198, -0.030788, 0.881490,
		0.456068, -0.863927, 0.213615,
		0.754966, 0.502674, 0.421122,
		35.056133, 32.563335, 34.196972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758442, 31.811958, 34.511078>,  <34.527657, 32.211464, 33.902187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758442, 31.811958, 34.511078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898769, 32.182701, 34.564537>,  <34.982967, 32.405148, 34.596611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898769, 32.182701, 34.564537>,  <34.758442, 31.811958, 34.511078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898769, 32.182701, 34.564537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322649, -0.014343, 0.946410,
		0.879103, -0.375142, 0.294018,
		0.350821, 0.926856, 0.133649,
		35.004017, 32.460758, 34.604633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218403, 31.858162, 34.971474>,  <34.758442, 31.811958, 34.511078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218403, 31.858162, 34.971474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098076, 32.239330, 34.956245>,  <35.025879, 32.468033, 34.947109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098076, 32.239330, 34.956245>,  <35.218403, 31.858162, 34.971474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098076, 32.239330, 34.956245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168836, -0.013920, 0.985546,
		0.938618, 0.302897, 0.165075,
		-0.300817, 0.952922, -0.038075,
		35.007832, 32.525208, 34.944824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522350, 32.237560, 35.601791>,  <35.218403, 31.858162, 34.971474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522350, 32.237560, 35.601791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216961, 32.453362, 35.459778>,  <35.033730, 32.582844, 35.374569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216961, 32.453362, 35.459778>,  <35.522350, 32.237560, 35.601791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216961, 32.453362, 35.459778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433332, -0.020291, 0.901006,
		0.478891, 0.841739, 0.249276,
		-0.763470, 0.539503, -0.355035,
		34.987919, 32.615211, 35.353268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366962, 32.797333, 36.121338>,  <35.522350, 32.237560, 35.601791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366962, 32.797333, 36.121338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027874, 32.765980, 35.911488>,  <34.824421, 32.747169, 35.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027874, 32.765980, 35.911488>,  <35.366962, 32.797333, 36.121338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027874, 32.765980, 35.911488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529791, 0.075919, 0.844723,
		-0.026383, 0.994028, -0.105884,
		-0.847718, -0.078383, -0.524625,
		34.773560, 32.742466, 35.754101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853928, 33.329586, 36.367958>,  <35.366962, 32.797333, 36.121338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853928, 33.329586, 36.367958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626255, 33.042858, 36.206856>,  <34.489651, 32.870823, 36.110195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626255, 33.042858, 36.206856>,  <34.853928, 33.329586, 36.367958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626255, 33.042858, 36.206856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482478, -0.105462, 0.869536,
		-0.665772, 0.689241, -0.285821,
		-0.569177, -0.716815, -0.402758,
		34.455502, 32.827812, 36.086029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179337, 33.459312, 36.635094>,  <34.853928, 33.329586, 36.367958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179337, 33.459312, 36.635094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169125, 33.080128, 36.508156>,  <34.162998, 32.852615, 36.431992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169125, 33.080128, 36.508156>,  <34.179337, 33.459312, 36.635094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169125, 33.080128, 36.508156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533836, -0.255469, 0.806073,
		-0.845202, 0.189989, -0.499537,
		-0.025529, -0.947966, -0.317346,
		34.161465, 32.795738, 36.412952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617844, 33.297287, 36.882343>,  <34.179337, 33.459312, 36.635094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617844, 33.297287, 36.882343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747322, 32.925858, 36.809711>,  <33.825008, 32.702999, 36.766132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747322, 32.925858, 36.809711>,  <33.617844, 33.297287, 36.882343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747322, 32.925858, 36.809711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426123, -0.314417, 0.848269,
		-0.844773, -0.197205, -0.497462,
		0.323693, -0.928576, -0.181578,
		33.844429, 32.647285, 36.755238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055046, 32.879063, 36.962772>,  <33.617844, 33.297287, 36.882343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055046, 32.879063, 36.962772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371223, 32.637642, 37.004593>,  <33.560928, 32.492790, 37.029686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371223, 32.637642, 37.004593>,  <33.055046, 32.879063, 36.962772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371223, 32.637642, 37.004593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323073, -0.265770, 0.908289,
		-0.520410, -0.751728, -0.405066,
		0.790441, -0.603549, 0.104554,
		33.608356, 32.456577, 37.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760059, 32.253536, 37.236195>,  <33.055046, 32.879063, 36.962772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760059, 32.253536, 37.236195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150681, 32.263069, 37.321785>,  <33.385052, 32.268787, 37.373138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150681, 32.263069, 37.321785>,  <32.760059, 32.253536, 37.236195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150681, 32.263069, 37.321785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207179, -0.166346, 0.964057,
		0.058570, -0.985779, -0.157507,
		0.976548, 0.023833, 0.213976,
		33.443645, 32.270218, 37.385979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913662, 31.685637, 37.654118>,  <32.760059, 32.253536, 37.236195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913662, 31.685637, 37.654118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198864, 31.957432, 37.723309>,  <33.369984, 32.120510, 37.764824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198864, 31.957432, 37.723309>,  <32.913662, 31.685637, 37.654118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198864, 31.957432, 37.723309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020421, -0.266720, 0.963558,
		0.700865, -0.683486, -0.204047,
		0.713002, 0.679491, 0.172977,
		33.412766, 32.161278, 37.775200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374603, 31.343699, 38.210739>,  <32.913662, 31.685637, 37.654118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374603, 31.343699, 38.210739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465229, 31.733261, 38.216015>,  <33.519604, 31.966999, 38.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465229, 31.733261, 38.216015>,  <33.374603, 31.343699, 38.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465229, 31.733261, 38.216015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061019, -0.027711, 0.997752,
		0.972083, -0.225248, -0.065705,
		0.226562, 0.973907, 0.013193,
		33.533199, 32.025433, 38.219975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873669, 31.350340, 38.716625>,  <33.374603, 31.343699, 38.210739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873669, 31.350340, 38.716625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719448, 31.718958, 38.698242>,  <33.626915, 31.940128, 38.687214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719448, 31.718958, 38.698242>,  <33.873669, 31.350340, 38.716625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719448, 31.718958, 38.698242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048848, 0.029353, 0.998375,
		0.921394, 0.387166, 0.033699,
		-0.385548, 0.921543, -0.045958,
		33.603783, 31.995420, 38.684456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284855, 31.659901, 39.146835>,  <33.873669, 31.350340, 38.716625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284855, 31.659901, 39.146835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956661, 31.883785, 39.100315>,  <33.759743, 32.018116, 39.072403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956661, 31.883785, 39.100315>,  <34.284855, 31.659901, 39.146835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956661, 31.883785, 39.100315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093167, 0.069792, 0.993201,
		0.564023, 0.825743, -0.005116,
		-0.820487, 0.559712, -0.116296,
		33.710514, 32.051701, 39.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347134, 32.103107, 39.743778>,  <34.284855, 31.659901, 39.146835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347134, 32.103107, 39.743778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970364, 32.178200, 39.632404>,  <33.744301, 32.223255, 39.565582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970364, 32.178200, 39.632404>,  <34.347134, 32.103107, 39.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970364, 32.178200, 39.632404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264860, 0.094388, 0.959656,
		0.206442, 0.977674, -0.039183,
		-0.941930, 0.187735, -0.278432,
		33.687786, 32.234520, 39.548874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093952, 32.846638, 40.068787>,  <34.347134, 32.103107, 39.743778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093952, 32.846638, 40.068787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768921, 32.625183, 39.995903>,  <33.573902, 32.492310, 39.952171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768921, 32.625183, 39.995903>,  <34.093952, 32.846638, 40.068787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768921, 32.625183, 39.995903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213585, -0.008027, 0.976892,
		-0.542301, 0.832723, -0.111725,
		-0.812583, -0.553632, -0.182210,
		33.525146, 32.459095, 39.941238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574287, 33.043339, 40.483906>,  <34.093952, 32.846638, 40.068787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574287, 33.043339, 40.483906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395115, 32.702484, 40.375671>,  <33.287613, 32.497971, 40.310730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395115, 32.702484, 40.375671>,  <33.574287, 33.043339, 40.483906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395115, 32.702484, 40.375671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399554, -0.079957, 0.913216,
		-0.799823, 0.517170, -0.304661,
		-0.447928, -0.852140, -0.270589,
		33.260738, 32.446842, 40.294495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959957, 33.130138, 40.778320>,  <33.574287, 33.043339, 40.483906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959957, 33.130138, 40.778320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010159, 32.738541, 40.714058>,  <33.040279, 32.503582, 40.675499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010159, 32.738541, 40.714058>,  <32.959957, 33.130138, 40.778320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010159, 32.738541, 40.714058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357062, -0.195660, 0.913359,
		-0.925610, -0.057267, -0.374120,
		0.125506, -0.978998, -0.160657,
		33.047810, 32.444839, 40.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302631, 32.814529, 40.978607>,  <32.959957, 33.130138, 40.778320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302631, 32.814529, 40.978607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598103, 32.545967, 41.002506>,  <32.775387, 32.384830, 41.016846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598103, 32.545967, 41.002506>,  <32.302631, 32.814529, 40.978607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598103, 32.545967, 41.002506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262874, -0.205314, 0.942732,
		-0.620687, -0.712083, -0.328156,
		0.738678, -0.671405, 0.059752,
		32.819706, 32.344547, 41.020432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952332, 32.203049, 41.203434>,  <32.302631, 32.814529, 40.978607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952332, 32.203049, 41.203434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331898, 32.133293, 41.308620>,  <32.559639, 32.091438, 41.371731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331898, 32.133293, 41.308620>,  <31.952332, 32.203049, 41.203434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331898, 32.133293, 41.308620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307486, -0.324040, 0.894679,
		-0.070811, -0.929832, -0.361108,
		0.948915, -0.174389, 0.262964,
		32.616573, 32.080975, 41.387508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952217, 31.577215, 41.620827>,  <31.952332, 32.203049, 41.203434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952217, 31.577215, 41.620827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322010, 31.710285, 41.695301>,  <32.543884, 31.790127, 41.739986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322010, 31.710285, 41.695301>,  <31.952217, 31.577215, 41.620827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322010, 31.710285, 41.695301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105394, -0.246309, 0.963444,
		0.366372, -0.910307, -0.192646,
		0.924480, 0.332675, 0.186181,
		32.599354, 31.810087, 41.751156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369602, 31.024490, 41.876366>,  <31.952217, 31.577215, 41.620827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369602, 31.024490, 41.876366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562462, 31.342367, 42.023876>,  <32.678177, 31.533092, 42.112381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562462, 31.342367, 42.023876>,  <32.369602, 31.024490, 41.876366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562462, 31.342367, 42.023876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148929, -0.340462, 0.928389,
		0.863336, -0.502547, -0.045803,
		0.482153, 0.794690, 0.368777,
		32.707108, 31.580774, 42.134510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871117, 30.749100, 42.276272>,  <32.369602, 31.024490, 41.876366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871117, 30.749100, 42.276272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842239, 31.124836, 42.410397>,  <32.824913, 31.350277, 42.490871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842239, 31.124836, 42.410397>,  <32.871117, 30.749100, 42.276272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842239, 31.124836, 42.410397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081365, -0.329518, 0.940637,
		0.994066, 0.095190, -0.052640,
		-0.072194, 0.939338, 0.335308,
		32.820580, 31.406637, 42.510990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461086, 30.836054, 42.657646>,  <32.871117, 30.749100, 42.276272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461086, 30.836054, 42.657646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192268, 31.110338, 42.769474>,  <33.030979, 31.274908, 42.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192268, 31.110338, 42.769474>,  <33.461086, 30.836054, 42.657646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192268, 31.110338, 42.769474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021718, -0.395625, 0.918155,
		0.740192, 0.610969, 0.280769,
		-0.672044, 0.685709, 0.279570,
		32.990654, 31.316051, 42.853344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740963, 31.023106, 43.249882>,  <33.461086, 30.836054, 42.657646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740963, 31.023106, 43.249882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361305, 31.147306, 43.270744>,  <33.133511, 31.221827, 43.283264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361305, 31.147306, 43.270744>,  <33.740963, 31.023106, 43.249882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361305, 31.147306, 43.270744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116359, -0.499861, 0.858254,
		0.292563, 0.808534, 0.510568,
		-0.949140, 0.310503, 0.052161,
		33.076565, 31.240458, 43.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276363, 31.439051, 43.708424>,  <33.740963, 31.023106, 43.249882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276363, 31.439051, 43.708424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636616, 31.305487, 43.819679>,  <34.852768, 31.225348, 43.886433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636616, 31.305487, 43.819679>,  <34.276363, 31.439051, 43.708424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636616, 31.305487, 43.819679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320385, 0.077733, -0.944093,
		0.293622, 0.939394, 0.176989,
		0.900633, -0.333911, 0.278144,
		34.906807, 31.205313, 43.903122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725163, 31.850527, 43.405602>,  <34.276363, 31.439051, 43.708424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725163, 31.850527, 43.405602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929478, 31.516230, 43.486229>,  <35.052067, 31.315651, 43.534607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929478, 31.516230, 43.486229>,  <34.725163, 31.850527, 43.405602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929478, 31.516230, 43.486229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320940, -0.032147, -0.946554,
		0.797555, 0.548180, 0.251803,
		0.510787, -0.835742, 0.201572,
		35.082714, 31.265507, 43.546700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447861, 32.008545, 43.062424>,  <34.725163, 31.850527, 43.405602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447861, 32.008545, 43.062424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397728, 31.616310, 43.122738>,  <35.367649, 31.380968, 43.158928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397728, 31.616310, 43.122738>,  <35.447861, 32.008545, 43.062424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397728, 31.616310, 43.122738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387723, -0.188313, -0.902335,
		0.913215, -0.054629, 0.403799,
		-0.125335, -0.980588, 0.150789,
		35.360126, 31.322134, 43.167976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978924, 31.832148, 42.653824>,  <35.447861, 32.008545, 43.062424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978924, 31.832148, 42.653824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794479, 31.479254, 42.691845>,  <35.683811, 31.267517, 42.714657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794479, 31.479254, 42.691845>,  <35.978924, 31.832148, 42.653824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794479, 31.479254, 42.691845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402573, -0.303462, -0.863624,
		0.790766, -0.359960, 0.495094,
		-0.461113, -0.882235, 0.095057,
		35.656147, 31.214582, 42.720364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509670, 31.302921, 42.530132>,  <35.978924, 31.832148, 42.653824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509670, 31.302921, 42.530132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157402, 31.123108, 42.470337>,  <35.946041, 31.015221, 42.434460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157402, 31.123108, 42.470337>,  <36.509670, 31.302921, 42.530132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157402, 31.123108, 42.470337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270766, -0.218704, -0.937472,
		0.388730, -0.866077, 0.314323,
		-0.880667, -0.449532, -0.149488,
		35.893204, 30.988249, 42.425491>
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
