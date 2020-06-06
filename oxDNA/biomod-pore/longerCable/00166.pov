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
	<23.856558, 35.164131, 34.971298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168816, 34.914738, 34.954044>,  <24.356171, 34.765102, 34.943691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168816, 34.914738, 34.954044>,  <23.856558, 35.164131, 34.971298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168816, 34.914738, 34.954044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523501, 0.690036, -0.499796,
		0.341382, 0.367580, 0.865068,
		0.780644, -0.623486, -0.043137,
		24.403009, 34.727692, 34.941105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451044, 35.438011, 35.321579>,  <23.856558, 35.164131, 34.971298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451044, 35.438011, 35.321579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556454, 35.195129, 35.021751>,  <24.619699, 35.049400, 34.841854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.556454, 35.195129, 35.021751>,  <24.451044, 35.438011, 35.321579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.556454, 35.195129, 35.021751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632432, 0.695492, -0.341059,
		0.728412, -0.384172, 0.567299,
		0.263526, -0.607209, -0.749567,
		24.635511, 35.012966, 34.796883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126791, 35.280792, 35.250378>,  <24.451044, 35.438011, 35.321579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126791, 35.280792, 35.250378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049585, 35.323761, 34.860260>,  <25.003262, 35.349541, 34.626190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049585, 35.323761, 34.860260>,  <25.126791, 35.280792, 35.250378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049585, 35.323761, 34.860260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687647, 0.723855, -0.056363,
		0.699920, -0.681539, -0.213582,
		-0.193016, 0.107420, -0.975298,
		24.991680, 35.355988, 34.567669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705118, 35.098335, 34.651634>,  <25.126791, 35.280792, 35.250378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705118, 35.098335, 34.651634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497902, 35.432865, 34.579861>,  <25.373571, 35.633583, 34.536797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497902, 35.432865, 34.579861>,  <25.705118, 35.098335, 34.651634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497902, 35.432865, 34.579861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854171, 0.516852, -0.057064,
		0.045020, -0.182832, -0.982113,
		-0.518040, 0.836323, -0.179439,
		25.342489, 35.683762, 34.526028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000883, 35.493839, 33.963135>,  <25.705118, 35.098335, 34.651634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000883, 35.493839, 33.963135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841404, 35.692177, 34.271725>,  <25.745716, 35.811180, 34.456879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841404, 35.692177, 34.271725>,  <26.000883, 35.493839, 33.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841404, 35.692177, 34.271725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889689, 0.413200, 0.194215,
		-0.222474, 0.763808, -0.605890,
		-0.398696, 0.495846, 0.771478,
		25.721794, 35.840931, 34.503166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940519, 36.293663, 33.967976>,  <26.000883, 35.493839, 33.963135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940519, 36.293663, 33.967976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001255, 36.179237, 34.346416>,  <26.037697, 36.110580, 34.573483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001255, 36.179237, 34.346416>,  <25.940519, 36.293663, 33.967976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001255, 36.179237, 34.346416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776258, 0.627054, 0.065014,
		-0.611856, 0.724549, 0.317272,
		0.151841, -0.286064, 0.946103,
		26.046808, 36.093418, 34.630249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187292, 36.897125, 34.243961>,  <25.940519, 36.293663, 33.967976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187292, 36.897125, 34.243961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285870, 36.640831, 34.534817>,  <26.345016, 36.487057, 34.709328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285870, 36.640831, 34.534817>,  <26.187292, 36.897125, 34.243961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285870, 36.640831, 34.534817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751663, 0.599974, 0.273923,
		-0.611774, 0.479053, 0.629477,
		0.246446, -0.640734, 0.727135,
		26.359804, 36.448612, 34.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009172, 37.223633, 34.860546>,  <26.187292, 36.897125, 34.243961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009172, 37.223633, 34.860546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329657, 36.984283, 34.861988>,  <26.521948, 36.840675, 34.862854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329657, 36.984283, 34.861988>,  <26.009172, 37.223633, 34.860546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329657, 36.984283, 34.861988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588855, 0.789509, 0.172992,
		-0.106362, -0.136478, 0.984917,
		0.801210, -0.598373, 0.003608,
		26.570019, 36.804771, 34.863071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355827, 37.373638, 35.468700>,  <26.009172, 37.223633, 34.860546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355827, 37.373638, 35.468700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599363, 37.220051, 35.191029>,  <26.745485, 37.127899, 35.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599363, 37.220051, 35.191029>,  <26.355827, 37.373638, 35.468700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599363, 37.220051, 35.191029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631304, 0.764413, 0.130880,
		0.480388, -0.517924, 0.707801,
		0.608838, -0.383964, -0.694182,
		26.782015, 37.104862, 34.982773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010294, 37.501347, 35.737846>,  <26.355827, 37.373638, 35.468700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010294, 37.501347, 35.737846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061644, 37.443470, 35.345402>,  <27.092453, 37.408745, 35.109936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061644, 37.443470, 35.345402>,  <27.010294, 37.501347, 35.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061644, 37.443470, 35.345402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755915, 0.654665, 0.002360,
		0.641960, -0.741942, 0.193415,
		0.128374, -0.144690, -0.981114,
		27.100155, 37.400063, 35.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663488, 37.722729, 35.662834>,  <27.010294, 37.501347, 35.737846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663488, 37.722729, 35.662834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521809, 37.727371, 35.288795>,  <27.436802, 37.730156, 35.064373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521809, 37.727371, 35.288795>,  <27.663488, 37.722729, 35.662834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521809, 37.727371, 35.288795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579153, 0.787814, -0.209597,
		0.734252, -0.615804, -0.285762,
		-0.354198, 0.011603, -0.935099,
		27.415548, 37.730850, 35.008266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223690, 38.218391, 36.002476>,  <27.663488, 37.722729, 35.662834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223690, 38.218391, 36.002476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419233, 38.497906, 36.211365>,  <28.536558, 38.665615, 36.336697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419233, 38.497906, 36.211365>,  <28.223690, 38.218391, 36.002476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419233, 38.497906, 36.211365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866164, 0.317562, 0.385893,
		0.103820, -0.640975, 0.760508,
		0.488856, 0.698788, 0.522221,
		28.565889, 38.707542, 36.368031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227894, 38.436417, 35.304771>,  <28.223690, 38.218391, 36.002476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227894, 38.436417, 35.304771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994270, 38.443367, 35.629383>,  <27.854095, 38.447536, 35.824150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994270, 38.443367, 35.629383>,  <28.227894, 38.436417, 35.304771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994270, 38.443367, 35.629383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114233, 0.991580, 0.060985,
		-0.803633, 0.128322, -0.581126,
		-0.584059, 0.017374, 0.811525,
		27.819052, 38.448578, 35.872841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568850, 38.911766, 35.183125>,  <28.227894, 38.436417, 35.304771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568850, 38.911766, 35.183125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664375, 38.847363, 34.800076>,  <27.721691, 38.808720, 34.570248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664375, 38.847363, 34.800076>,  <27.568850, 38.911766, 35.183125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664375, 38.847363, 34.800076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412515, -0.909575, 0.050057,
		-0.879090, 0.383080, -0.283639,
		0.238815, -0.161010, -0.957624,
		27.736019, 38.799061, 34.512787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989580, 38.811253, 34.661148>,  <27.568850, 38.911766, 35.183125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989580, 38.811253, 34.661148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325611, 38.612247, 34.574657>,  <27.527229, 38.492844, 34.522762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325611, 38.612247, 34.574657>,  <26.989580, 38.811253, 34.661148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325611, 38.612247, 34.574657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494430, -0.866220, 0.072122,
		-0.223181, 0.046321, -0.973676,
		0.840077, -0.497511, -0.216226,
		27.577635, 38.462994, 34.509789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762827, 38.337067, 34.224445>,  <26.989580, 38.811253, 34.661148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762827, 38.337067, 34.224445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117870, 38.210556, 34.358383>,  <27.330896, 38.134651, 34.438744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117870, 38.210556, 34.358383>,  <26.762827, 38.337067, 34.224445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117870, 38.210556, 34.358383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376646, -0.916843, 0.132428,
		0.265113, -0.243661, -0.932922,
		0.887611, -0.316272, 0.334841,
		27.384153, 38.115673, 34.458836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057297, 37.657757, 33.752209>,  <26.762827, 38.337067, 34.224445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057297, 37.657757, 33.752209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165169, 37.666481, 34.137291>,  <27.229893, 37.671715, 34.368340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165169, 37.666481, 34.137291>,  <27.057297, 37.657757, 33.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165169, 37.666481, 34.137291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438691, -0.887189, 0.142989,
		0.857218, -0.460891, -0.229690,
		0.269681, 0.021810, 0.962703,
		27.246073, 37.673023, 34.426102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391829, 37.071136, 33.805492>,  <27.057297, 37.657757, 33.752209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391829, 37.071136, 33.805492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297218, 37.173920, 34.180305>,  <27.240452, 37.235588, 34.405193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.297218, 37.173920, 34.180305>,  <27.391829, 37.071136, 33.805492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297218, 37.173920, 34.180305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267764, -0.944291, 0.191355,
		0.934001, -0.205643, 0.292152,
		-0.236526, 0.256953, 0.937033,
		27.226261, 37.251007, 34.461414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558020, 36.424965, 34.209011>,  <27.391829, 37.071136, 33.805492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558020, 36.424965, 34.209011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337906, 36.635456, 34.468327>,  <27.205837, 36.761749, 34.623917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337906, 36.635456, 34.468327>,  <27.558020, 36.424965, 34.209011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337906, 36.635456, 34.468327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436648, -0.843146, 0.313757,
		0.711707, -0.110417, 0.693745,
		-0.550284, 0.526225, 0.648286,
		27.172821, 36.793324, 34.662811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625181, 36.045658, 34.894573>,  <27.558020, 36.424965, 34.209011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625181, 36.045658, 34.894573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302462, 36.275772, 34.840729>,  <27.108829, 36.413841, 34.808422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302462, 36.275772, 34.840729>,  <27.625181, 36.045658, 34.894573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302462, 36.275772, 34.840729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588615, -0.802327, 0.099016,
		-0.051040, 0.159120, 0.985939,
		-0.806800, 0.575285, -0.134611,
		27.060421, 36.448357, 34.800346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210779, 35.749763, 35.210945>,  <27.625181, 36.045658, 34.894573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210779, 35.749763, 35.210945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297981, 35.623447, 34.841568>,  <28.350302, 35.547657, 34.619942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297981, 35.623447, 34.841568>,  <28.210779, 35.749763, 35.210945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297981, 35.623447, 34.841568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762862, -0.535011, 0.363050,
		-0.608701, -0.783608, 0.124268,
		0.218004, -0.315789, -0.923446,
		28.363382, 35.528709, 34.564533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057302, 34.947586, 35.108124>,  <28.210779, 35.749763, 35.210945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057302, 34.947586, 35.108124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358263, 35.130394, 34.918377>,  <28.538839, 35.240078, 34.804527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358263, 35.130394, 34.918377>,  <28.057302, 34.947586, 35.108124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358263, 35.130394, 34.918377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653854, -0.430959, 0.621892,
		0.079781, -0.778082, -0.623076,
		0.752404, 0.457016, -0.474369,
		28.583984, 35.267498, 34.776066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474783, 34.476940, 34.876850>,  <28.057302, 34.947586, 35.108124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474783, 34.476940, 34.876850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700191, 34.801022, 34.941372>,  <28.835436, 34.995468, 34.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700191, 34.801022, 34.941372>,  <28.474783, 34.476940, 34.876850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700191, 34.801022, 34.941372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726657, -0.579024, 0.369730,
		0.392954, -0.091138, -0.915031,
		0.563521, 0.810200, 0.161304,
		28.869247, 35.044083, 34.989761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216337, 34.323055, 34.688591>,  <28.474783, 34.476940, 34.876850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216337, 34.323055, 34.688591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262640, 34.653885, 34.908611>,  <29.290422, 34.852383, 35.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262640, 34.653885, 34.908611>,  <29.216337, 34.323055, 34.688591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262640, 34.653885, 34.908611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865406, -0.355779, 0.352836,
		0.487516, 0.435172, -0.756937,
		0.115757, 0.827071, 0.550049,
		29.297367, 34.902008, 35.073627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870491, 34.506588, 34.565285>,  <29.216337, 34.323055, 34.688591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870491, 34.506588, 34.565285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772406, 34.664433, 34.919495>,  <29.713554, 34.759140, 35.132019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772406, 34.664433, 34.919495>,  <29.870491, 34.506588, 34.565285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772406, 34.664433, 34.919495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790278, -0.447711, 0.418348,
		0.561543, 0.802396, -0.202066,
		-0.245214, 0.394609, 0.885525,
		29.698841, 34.782814, 35.185150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515656, 34.586246, 34.837624>,  <29.870491, 34.506588, 34.565285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515656, 34.586246, 34.837624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240921, 34.570980, 35.127949>,  <30.076080, 34.561821, 35.302143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240921, 34.570980, 35.127949>,  <30.515656, 34.586246, 34.837624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240921, 34.570980, 35.127949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605756, -0.581909, 0.542625,
		0.401643, 0.812358, 0.422797,
		-0.686835, -0.038170, 0.725811,
		30.034870, 34.559528, 35.345692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812805, 34.815304, 35.580349>,  <30.515656, 34.586246, 34.837624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812805, 34.815304, 35.580349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508669, 34.558235, 35.542725>,  <30.326187, 34.403992, 35.520149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508669, 34.558235, 35.542725>,  <30.812805, 34.815304, 35.580349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508669, 34.558235, 35.542725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495578, -0.667626, 0.555588,
		-0.419859, 0.375824, 0.826120,
		-0.760343, -0.642676, -0.094059,
		30.280565, 34.365433, 35.514507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386387, 35.367207, 35.553123>,  <30.812805, 34.815304, 35.580349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386387, 35.367207, 35.553123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150318, 35.683804, 35.616673>,  <31.008677, 35.873760, 35.654800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150318, 35.683804, 35.616673>,  <31.386387, 35.367207, 35.553123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150318, 35.683804, 35.616673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028393, -0.176329, 0.983922,
		0.806778, 0.585194, 0.081592,
		-0.590172, 0.791490, 0.158874,
		30.973267, 35.921249, 35.664333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043236, 35.067730, 35.382137>,  <31.386387, 35.367207, 35.553123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043236, 35.067730, 35.382137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987677, 34.730160, 35.174870>,  <31.954342, 34.527618, 35.050510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987677, 34.730160, 35.174870>,  <32.043236, 35.067730, 35.382137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987677, 34.730160, 35.174870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509628, 0.387725, -0.768081,
		0.849109, -0.370758, 0.376233,
		-0.138897, -0.843924, -0.518170,
		31.946007, 34.476982, 35.019417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675545, 35.128677, 35.056194>,  <32.043236, 35.067730, 35.382137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675545, 35.128677, 35.056194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397308, 34.887417, 34.900055>,  <32.230366, 34.742661, 34.806374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397308, 34.887417, 34.900055>,  <32.675545, 35.128677, 35.056194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397308, 34.887417, 34.900055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356262, 0.182241, -0.916442,
		0.623887, -0.776531, 0.088114,
		-0.695588, -0.603148, -0.390346,
		32.188633, 34.706474, 34.782951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040260, 34.599590, 34.598286>,  <32.675545, 35.128677, 35.056194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040260, 34.599590, 34.598286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659515, 34.710541, 34.546101>,  <32.431068, 34.777111, 34.514790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659515, 34.710541, 34.546101>,  <33.040260, 34.599590, 34.598286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659515, 34.710541, 34.546101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230024, 0.365049, -0.902125,
		-0.202603, -0.888708, -0.411279,
		-0.951862, 0.277377, -0.130464,
		32.373959, 34.793755, 34.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787426, 34.646542, 33.965694>,  <33.040260, 34.599590, 34.598286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787426, 34.646542, 33.965694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486046, 34.886173, 34.074081>,  <32.305218, 35.029953, 34.139114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486046, 34.886173, 34.074081>,  <32.787426, 34.646542, 33.965694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486046, 34.886173, 34.074081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076406, 0.489091, -0.868880,
		-0.653054, -0.633951, -0.414278,
		-0.753447, 0.599079, 0.270966,
		32.260014, 35.065895, 34.155373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186661, 34.622459, 33.382221>,  <32.787426, 34.646542, 33.965694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186661, 34.622459, 33.382221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210590, 34.965343, 33.586815>,  <32.224949, 35.171074, 33.709572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210590, 34.965343, 33.586815>,  <32.186661, 34.622459, 33.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210590, 34.965343, 33.586815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216105, 0.489125, -0.845018,
		-0.974536, 0.161082, -0.155988,
		0.059820, 0.857210, 0.511480,
		32.228535, 35.222507, 33.740257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760466, 35.119438, 33.126236>,  <32.186661, 34.622459, 33.382221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760466, 35.119438, 33.126236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074024, 35.314701, 33.279705>,  <32.262157, 35.431858, 33.371788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074024, 35.314701, 33.279705>,  <31.760466, 35.119438, 33.126236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074024, 35.314701, 33.279705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008097, 0.609856, -0.792471,
		-0.620839, 0.624322, 0.474111,
		0.783896, 0.488158, 0.383677,
		32.309193, 35.461147, 33.394810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681532, 35.893742, 33.320518>,  <31.760466, 35.119438, 33.126236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681532, 35.893742, 33.320518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053577, 35.832626, 33.186924>,  <32.276806, 35.795956, 33.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053577, 35.832626, 33.186924>,  <31.681532, 35.893742, 33.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053577, 35.832626, 33.186924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184092, 0.592924, -0.783933,
		0.317804, 0.790630, 0.523358,
		0.930113, -0.152791, -0.333982,
		32.332611, 35.786789, 33.086731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975550, 36.527958, 33.136448>,  <31.681532, 35.893742, 33.320518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975550, 36.527958, 33.136448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067703, 36.225998, 32.890831>,  <32.122993, 36.044823, 32.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.067703, 36.225998, 32.890831>,  <31.975550, 36.527958, 33.136448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067703, 36.225998, 32.890831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447348, 0.478221, -0.755768,
		0.864178, 0.448805, -0.227531,
		0.230382, -0.754904, -0.614040,
		32.136818, 35.999527, 32.706619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216747, 36.832066, 32.499626>,  <31.975550, 36.527958, 33.136448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216747, 36.832066, 32.499626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101109, 36.460045, 32.408920>,  <32.031727, 36.236832, 32.354496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101109, 36.460045, 32.408920>,  <32.216747, 36.832066, 32.499626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101109, 36.460045, 32.408920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488053, 0.346974, -0.800883,
		0.823547, -0.120858, -0.554224,
		-0.289094, -0.930055, -0.226764,
		32.014381, 36.181026, 32.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619751, 36.996510, 31.996258>,  <32.216747, 36.832066, 32.499626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619751, 36.996510, 31.996258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590416, 36.597923, 31.979866>,  <32.572815, 36.358772, 31.970030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590416, 36.597923, 31.979866>,  <32.619751, 36.996510, 31.996258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590416, 36.597923, 31.979866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348402, 0.012903, -0.937256,
		0.934472, -0.083018, 0.346224,
		-0.073342, -0.996464, -0.040981,
		32.568413, 36.298985, 31.967571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291897, 36.694363, 31.834354>,  <32.619751, 36.996510, 31.996258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291897, 36.694363, 31.834354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953487, 36.514679, 31.719490>,  <32.750443, 36.406868, 31.650572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953487, 36.514679, 31.719490>,  <33.291897, 36.694363, 31.834354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953487, 36.514679, 31.719490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249899, 0.141672, -0.957852,
		0.470959, -0.882123, -0.007600,
		-0.846019, -0.449209, -0.287163,
		32.699680, 36.379917, 31.633341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454624, 36.118694, 31.468910>,  <33.291897, 36.694363, 31.834354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454624, 36.118694, 31.468910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090012, 36.209206, 31.331556>,  <32.871246, 36.263512, 31.249144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090012, 36.209206, 31.331556>,  <33.454624, 36.118694, 31.468910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090012, 36.209206, 31.331556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377952, 0.131884, -0.916384,
		-0.162074, -0.965092, -0.205740,
		-0.911528, 0.226282, -0.343384,
		32.816551, 36.277092, 31.228540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769619, 36.655697, 31.097183>,  <33.454624, 36.118694, 31.468910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769619, 36.655697, 31.097183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896660, 36.861549, 31.415752>,  <33.972885, 36.985062, 31.606894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896660, 36.861549, 31.415752>,  <33.769619, 36.655697, 31.097183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896660, 36.861549, 31.415752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258926, -0.855056, 0.449261,
		0.912189, 0.063531, -0.404815,
		0.317598, 0.514628, 0.796423,
		33.991940, 37.015938, 31.654680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264362, 36.295689, 31.265467>,  <33.769619, 36.655697, 31.097183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264362, 36.295689, 31.265467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156059, 36.509918, 31.585430>,  <34.091080, 36.638458, 31.777409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156059, 36.509918, 31.585430>,  <34.264362, 36.295689, 31.265467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156059, 36.509918, 31.585430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089398, -0.813364, 0.574846,
		0.958489, 0.227151, 0.172342,
		-0.270754, 0.535576, 0.799907,
		34.074833, 36.670589, 31.825401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804497, 36.222805, 31.748960>,  <34.264362, 36.295689, 31.265467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804497, 36.222805, 31.748960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464256, 36.313354, 31.938797>,  <34.260113, 36.367683, 32.052700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464256, 36.313354, 31.938797>,  <34.804497, 36.222805, 31.748960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464256, 36.313354, 31.938797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259570, -0.604161, 0.753401,
		0.457283, 0.764031, 0.455137,
		-0.850597, 0.226378, 0.474592,
		34.209076, 36.381268, 32.081173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873661, 35.515259, 31.471275>,  <34.804497, 36.222805, 31.748960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873661, 35.515259, 31.471275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221977, 35.692291, 31.556925>,  <35.430965, 35.798512, 31.608315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221977, 35.692291, 31.556925>,  <34.873661, 35.515259, 31.471275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221977, 35.692291, 31.556925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062235, -0.332785, 0.940947,
		0.487702, -0.832692, -0.262241,
		0.870789, 0.442581, 0.214123,
		35.483215, 35.825066, 31.621162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377449, 34.998569, 31.755234>,  <34.873661, 35.515259, 31.471275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377449, 34.998569, 31.755234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403313, 35.372738, 31.894264>,  <35.418831, 35.597240, 31.977682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403313, 35.372738, 31.894264>,  <35.377449, 34.998569, 31.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403313, 35.372738, 31.894264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110473, -0.339455, 0.934113,
		0.991774, -0.098795, 0.081390,
		0.064658, 0.935420, 0.347577,
		35.422710, 35.653362, 31.998537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985958, 35.023144, 32.212620>,  <35.377449, 34.998569, 31.755234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985958, 35.023144, 32.212620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637539, 35.203461, 32.290665>,  <35.428490, 35.311649, 32.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637539, 35.203461, 32.290665>,  <35.985958, 35.023144, 32.212620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637539, 35.203461, 32.290665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064992, -0.499492, 0.863877,
		0.486887, 0.739794, 0.464378,
		-0.871044, 0.450791, 0.195115,
		35.376225, 35.338699, 32.349197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997803, 35.412457, 32.904305>,  <35.985958, 35.023144, 32.212620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997803, 35.412457, 32.904305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624393, 35.293774, 32.823803>,  <35.400349, 35.222565, 32.775501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624393, 35.293774, 32.823803>,  <35.997803, 35.412457, 32.904305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624393, 35.293774, 32.823803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055608, -0.674369, 0.736298,
		-0.354182, 0.676159, 0.646037,
		-0.933522, -0.296708, -0.201250,
		35.344337, 35.204762, 32.763428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622536, 35.435169, 33.574467>,  <35.997803, 35.412457, 32.904305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622536, 35.435169, 33.574467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507126, 35.186443, 33.283237>,  <35.437878, 35.037209, 33.108498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507126, 35.186443, 33.283237>,  <35.622536, 35.435169, 33.574467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507126, 35.186443, 33.283237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017401, -0.756884, 0.653318,
		-0.957313, 0.201171, 0.207563,
		-0.288529, -0.621818, -0.728075,
		35.420567, 34.999897, 33.064816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012333, 35.005875, 33.808609>,  <35.622536, 35.435169, 33.574467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012333, 35.005875, 33.808609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242455, 34.833313, 33.530640>,  <35.380527, 34.729778, 33.363857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242455, 34.833313, 33.530640>,  <35.012333, 35.005875, 33.808609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242455, 34.833313, 33.530640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048102, -0.865977, 0.497765,
		-0.816525, -0.252938, -0.518951,
		0.575303, -0.431400, -0.694925,
		35.415047, 34.703892, 33.322163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396797, 35.047935, 34.285034>,  <35.012333, 35.005875, 33.808609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396797, 35.047935, 34.285034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573841, 35.103153, 34.639442>,  <34.680069, 35.136284, 34.852089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573841, 35.103153, 34.639442>,  <34.396797, 35.047935, 34.285034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573841, 35.103153, 34.639442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722567, -0.530231, 0.443567,
		0.531028, -0.836540, -0.134941,
		0.442612, 0.138043, 0.886024,
		34.706623, 35.144566, 34.905251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498795, 34.369701, 34.653667>,  <34.396797, 35.047935, 34.285034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498795, 34.369701, 34.653667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476299, 34.662163, 34.925625>,  <34.462803, 34.837639, 35.088799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476299, 34.662163, 34.925625>,  <34.498795, 34.369701, 34.653667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476299, 34.662163, 34.925625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880483, -0.357382, 0.311494,
		0.470731, -0.581119, 0.663863,
		-0.056238, 0.731149, 0.679895,
		34.459427, 34.881508, 35.129593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183144, 34.100082, 35.436195>,  <34.498795, 34.369701, 34.653667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183144, 34.100082, 35.436195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138042, 34.490498, 35.361752>,  <34.110981, 34.724747, 35.317085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138042, 34.490498, 35.361752>,  <34.183144, 34.100082, 35.436195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138042, 34.490498, 35.361752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960317, -0.058954, 0.272608,
		0.255104, 0.209458, 0.943954,
		-0.112750, 0.976039, -0.186107,
		34.104218, 34.783310, 35.305920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367855, 33.433472, 35.623913>,  <34.183144, 34.100082, 35.436195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367855, 33.433472, 35.623913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202381, 33.099800, 35.769791>,  <34.103096, 32.899597, 35.857319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202381, 33.099800, 35.769791>,  <34.367855, 33.433472, 35.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202381, 33.099800, 35.769791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182441, -0.316499, -0.930884,
		0.891952, -0.451630, -0.021257,
		-0.413687, -0.834182, 0.364698,
		34.078274, 32.849545, 35.879200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729404, 32.800095, 35.423111>,  <34.367855, 33.433472, 35.623913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729404, 32.800095, 35.423111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357132, 32.672165, 35.494152>,  <34.133770, 32.595406, 35.536777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.357132, 32.672165, 35.494152>,  <34.729404, 32.800095, 35.423111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357132, 32.672165, 35.494152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062117, -0.616585, -0.784834,
		0.360521, -0.719397, 0.593711,
		-0.930680, -0.319829, 0.177605,
		34.077927, 32.576218, 35.547432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669430, 32.128994, 35.541641>,  <34.729404, 32.800095, 35.423111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669430, 32.128994, 35.541641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337036, 32.253357, 35.357117>,  <34.137600, 32.327972, 35.246403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337036, 32.253357, 35.357117>,  <34.669430, 32.128994, 35.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337036, 32.253357, 35.357117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245197, -0.539653, -0.805390,
		-0.499348, -0.782376, 0.372209,
		-0.830981, 0.310905, -0.461311,
		34.087742, 32.346630, 35.218723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357201, 31.527525, 35.284904>,  <34.669430, 32.128994, 35.541641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357201, 31.527525, 35.284904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267967, 31.812920, 35.019222>,  <34.214428, 31.984156, 34.859814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267967, 31.812920, 35.019222>,  <34.357201, 31.527525, 35.284904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267967, 31.812920, 35.019222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264469, -0.611522, -0.745718,
		-0.938237, -0.342021, -0.052273,
		-0.223085, 0.713485, -0.664207,
		34.201042, 32.026966, 34.819962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854553, 31.257324, 34.797974>,  <34.357201, 31.527525, 35.284904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854553, 31.257324, 34.797974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110477, 31.519480, 34.637417>,  <34.264030, 31.676773, 34.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110477, 31.519480, 34.637417>,  <33.854553, 31.257324, 34.797974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110477, 31.519480, 34.637417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233623, -0.663420, -0.710840,
		-0.732166, 0.361027, -0.577575,
		0.639807, 0.655388, -0.401389,
		34.302418, 31.716097, 34.516998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573181, 31.425104, 34.054153>,  <33.854553, 31.257324, 34.797974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573181, 31.425104, 34.054153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958893, 31.475204, 34.147514>,  <34.190319, 31.505264, 34.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958893, 31.475204, 34.147514>,  <33.573181, 31.425104, 34.054153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958893, 31.475204, 34.147514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262004, -0.580606, -0.770877,
		0.038964, 0.804493, -0.592682,
		0.964280, 0.125249, 0.233403,
		34.248177, 31.512779, 34.217537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960117, 31.693777, 33.391628>,  <33.573181, 31.425104, 34.054153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960117, 31.693777, 33.391628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139900, 31.474686, 33.673901>,  <34.247768, 31.343231, 33.843266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139900, 31.474686, 33.673901>,  <33.960117, 31.693777, 33.391628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139900, 31.474686, 33.673901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421872, -0.566176, -0.708144,
		0.787410, 0.615985, -0.023399,
		0.449454, -0.547729, 0.705680,
		34.274738, 31.310368, 33.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803398, 31.567463, 33.451767>,  <33.960117, 31.693777, 33.391628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803398, 31.567463, 33.451767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624474, 31.232756, 33.578087>,  <34.517117, 31.031931, 33.653881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624474, 31.232756, 33.578087>,  <34.803398, 31.567463, 33.451767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624474, 31.232756, 33.578087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469814, -0.520294, -0.713140,
		0.761042, -0.170630, 0.625860,
		-0.447314, -0.836767, 0.315802,
		34.490280, 30.981726, 33.672829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270443, 30.980190, 33.732506>,  <34.803398, 31.567463, 33.451767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270443, 30.980190, 33.732506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940395, 30.797108, 33.600029>,  <34.742367, 30.687258, 33.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.940395, 30.797108, 33.600029>,  <35.270443, 30.980190, 33.732506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940395, 30.797108, 33.600029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557854, -0.567356, -0.605727,
		0.089340, -0.684553, 0.723468,
		-0.825116, -0.457705, -0.331193,
		34.692860, 30.659796, 33.500671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673111, 30.618790, 33.192802>,  <35.270443, 30.980190, 33.732506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673111, 30.618790, 33.192802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070648, 30.619659, 33.148479>,  <36.309170, 30.620180, 33.121883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070648, 30.619659, 33.148479>,  <35.673111, 30.618790, 33.192802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070648, 30.619659, 33.148479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074000, -0.757316, 0.648842,
		-0.082508, -0.653045, -0.752811,
		0.993839, 0.002173, -0.110811,
		36.368801, 30.620312, 33.115234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887955, 29.944548, 33.193428>,  <35.673111, 30.618790, 33.192802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887955, 29.944548, 33.193428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198326, 30.151499, 33.337791>,  <36.384548, 30.275669, 33.424408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198326, 30.151499, 33.337791>,  <35.887955, 29.944548, 33.193428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198326, 30.151499, 33.337791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131845, -0.692497, 0.709271,
		0.616885, -0.502762, -0.605543,
		0.775932, 0.517377, 0.360904,
		36.431107, 30.306711, 33.446064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533314, 29.787945, 33.099781>,  <35.887955, 29.944548, 33.193428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533314, 29.787945, 33.099781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580437, 29.972975, 33.451267>,  <36.608711, 30.083992, 33.662159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580437, 29.972975, 33.451267>,  <36.533314, 29.787945, 33.099781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580437, 29.972975, 33.451267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183826, -0.879745, 0.438471,
		0.975874, 0.109878, -0.188670,
		0.117803, 0.462575, 0.878719,
		36.615776, 30.111748, 33.714882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109756, 29.617964, 33.503101>,  <36.533314, 29.787945, 33.099781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109756, 29.617964, 33.503101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860909, 29.727701, 33.796417>,  <36.711601, 29.793545, 33.972404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860909, 29.727701, 33.796417>,  <37.109756, 29.617964, 33.503101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860909, 29.727701, 33.796417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122288, -0.891052, 0.437119,
		0.773316, 0.361610, 0.520788,
		-0.622115, 0.274345, 0.733285,
		36.674274, 29.810005, 34.016403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333366, 29.504831, 34.242584>,  <37.109756, 29.617964, 33.503101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333366, 29.504831, 34.242584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936211, 29.460457, 34.225353>,  <36.697918, 29.433832, 34.215015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936211, 29.460457, 34.225353>,  <37.333366, 29.504831, 34.242584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936211, 29.460457, 34.225353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078796, -0.884093, 0.460619,
		-0.089186, 0.453951, 0.886552,
		-0.992893, -0.110938, -0.043079,
		36.638344, 29.427176, 34.212429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928596, 29.905783, 34.166065>,  <37.333366, 29.504831, 34.242584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928596, 29.905783, 34.166065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716305, 29.937986, 33.828583>,  <37.588932, 29.957308, 33.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716305, 29.937986, 33.828583>,  <37.928596, 29.905783, 34.166065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716305, 29.937986, 33.828583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843197, -0.050530, -0.535225,
		-0.085725, -0.995472, -0.041069,
		-0.530726, 0.080511, -0.843710,
		37.557087, 29.962139, 33.575470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074059, 29.439415, 33.638000>,  <37.928596, 29.905783, 34.166065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074059, 29.439415, 33.638000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928867, 29.731741, 33.406776>,  <37.841751, 29.907137, 33.268044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928867, 29.731741, 33.406776>,  <38.074059, 29.439415, 33.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928867, 29.731741, 33.406776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668281, -0.228141, -0.708062,
		-0.649343, -0.643319, -0.405580,
		-0.362980, 0.730817, -0.578059,
		37.819973, 29.950985, 33.233360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107105, 29.164436, 32.988213>,  <38.074059, 29.439415, 33.638000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107105, 29.164436, 32.988213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084835, 29.554483, 32.902378>,  <38.071472, 29.788511, 32.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084835, 29.554483, 32.902378>,  <38.107105, 29.164436, 32.988213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084835, 29.554483, 32.902378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643646, -0.129249, -0.754330,
		-0.763295, -0.180117, -0.620434,
		-0.055677, 0.975117, -0.214587,
		38.068130, 29.847019, 32.838001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057812, 29.295626, 32.243572>,  <38.107105, 29.164436, 32.988213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057812, 29.295626, 32.243572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180828, 29.663748, 32.340282>,  <38.254639, 29.884621, 32.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180828, 29.663748, 32.340282>,  <38.057812, 29.295626, 32.243572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180828, 29.663748, 32.340282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554646, 0.033082, -0.831428,
		-0.773167, 0.389797, -0.500271,
		0.307539, 0.920306, 0.241777,
		38.273090, 29.939840, 32.412815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016670, 29.702143, 31.582268>,  <38.057812, 29.295626, 32.243572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016670, 29.702143, 31.582268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235371, 29.930557, 31.827211>,  <38.366589, 30.067606, 31.974178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235371, 29.930557, 31.827211>,  <38.016670, 29.702143, 31.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235371, 29.930557, 31.827211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469056, 0.396933, -0.788943,
		-0.693580, 0.718585, -0.050824,
		0.546749, 0.571034, 0.612361,
		38.399395, 30.101868, 32.010918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119808, 30.340706, 31.263601>,  <38.016670, 29.702143, 31.582268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119808, 30.340706, 31.263601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432861, 30.316135, 31.511377>,  <38.620693, 30.301394, 31.660044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432861, 30.316135, 31.511377>,  <38.119808, 30.340706, 31.263601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432861, 30.316135, 31.511377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589256, 0.393861, -0.705444,
		-0.200643, 0.917115, 0.344445,
		0.782636, -0.061424, 0.619441,
		38.667652, 30.297709, 31.697210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527843, 30.896196, 31.188524>,  <38.119808, 30.340706, 31.263601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527843, 30.896196, 31.188524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800926, 30.659733, 31.360313>,  <38.964775, 30.517855, 31.463387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800926, 30.659733, 31.360313>,  <38.527843, 30.896196, 31.188524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800926, 30.659733, 31.360313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728473, 0.504862, -0.463077,
		0.056929, 0.629003, 0.775315,
		0.682705, -0.591159, 0.429471,
		39.005737, 30.482386, 31.489155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123428, 31.292486, 31.596682>,  <38.527843, 30.896196, 31.188524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123428, 31.292486, 31.596682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246452, 30.929655, 31.481705>,  <39.320267, 30.711956, 31.412718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246452, 30.929655, 31.481705>,  <39.123428, 31.292486, 31.596682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246452, 30.929655, 31.481705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790373, 0.411738, -0.453633,
		0.529831, -0.087669, 0.843560,
		0.307556, -0.907076, -0.287443,
		39.338718, 30.657532, 31.395472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874760, 31.352993, 31.428545>,  <39.123428, 31.292486, 31.596682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874760, 31.352993, 31.428545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757645, 31.000050, 31.281183>,  <39.687378, 30.788284, 31.192766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757645, 31.000050, 31.281183>,  <39.874760, 31.352993, 31.428545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757645, 31.000050, 31.281183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775346, 0.006391, -0.631505,
		0.559567, -0.470536, 0.682261,
		-0.292785, -0.882357, -0.368405,
		39.669807, 30.735342, 31.170662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521626, 31.118149, 31.327187>,  <39.874760, 31.352993, 31.428545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521626, 31.118149, 31.327187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263748, 30.892794, 31.120510>,  <40.109024, 30.757582, 30.996504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263748, 30.892794, 31.120510>,  <40.521626, 31.118149, 31.327187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263748, 30.892794, 31.120510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616081, 0.017239, -0.787495,
		0.452571, -0.826013, 0.335978,
		-0.644689, -0.563387, -0.516693,
		40.070343, 30.723778, 30.965502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024204, 30.716557, 30.918209>,  <40.521626, 31.118149, 31.327187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024204, 30.716557, 30.918209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662830, 30.684465, 30.749744>,  <40.446007, 30.665211, 30.648666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662830, 30.684465, 30.749744>,  <41.024204, 30.716557, 30.918209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662830, 30.684465, 30.749744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418501, 0.048322, -0.906930,
		0.093116, -0.995604, -0.010079,
		-0.903430, -0.080231, -0.421161,
		40.391800, 30.660397, 30.623396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171318, 30.276648, 30.392750>,  <41.024204, 30.716557, 30.918209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171318, 30.276648, 30.392750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820873, 30.425457, 30.270098>,  <40.610607, 30.514744, 30.196507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820873, 30.425457, 30.270098>,  <41.171318, 30.276648, 30.392750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820873, 30.425457, 30.270098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337663, 0.019550, -0.941064,
		-0.344106, -0.928016, -0.142747,
		-0.876114, 0.372026, -0.306629,
		40.558041, 30.537066, 30.178108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959152, 29.857552, 29.806570>,  <41.171318, 30.276648, 30.392750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959152, 29.857552, 29.806570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765102, 30.205311, 29.769035>,  <40.648674, 30.413965, 29.746515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765102, 30.205311, 29.769035>,  <40.959152, 29.857552, 29.806570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765102, 30.205311, 29.769035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309867, 0.070570, -0.948158,
		-0.817702, -0.489051, -0.303632,
		-0.485124, 0.869396, -0.093835,
		40.619564, 30.466129, 29.740885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570206, 29.804773, 29.128479>,  <40.959152, 29.857552, 29.806570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570206, 29.804773, 29.128479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622040, 30.190546, 29.220631>,  <40.653141, 30.422010, 29.275921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622040, 30.190546, 29.220631>,  <40.570206, 29.804773, 29.128479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622040, 30.190546, 29.220631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233175, 0.196184, -0.952440,
		-0.963762, 0.177142, -0.199459,
		0.129587, 0.964434, 0.230379,
		40.660915, 30.479876, 29.289745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129837, 30.205875, 28.737806>,  <40.570206, 29.804773, 29.128479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129837, 30.205875, 28.737806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398312, 30.470587, 28.871407>,  <40.559395, 30.629414, 28.951567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398312, 30.470587, 28.871407>,  <40.129837, 30.205875, 28.737806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398312, 30.470587, 28.871407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093461, 0.371428, -0.923746,
		-0.735372, 0.651223, 0.187447,
		0.671188, 0.661778, 0.334002,
		40.599667, 30.669121, 28.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894424, 30.795856, 28.446821>,  <40.129837, 30.205875, 28.737806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894424, 30.795856, 28.446821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272396, 30.858074, 28.562002>,  <40.499180, 30.895405, 28.631111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272396, 30.858074, 28.562002>,  <39.894424, 30.795856, 28.446821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272396, 30.858074, 28.562002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199176, 0.424832, -0.883089,
		-0.259691, 0.891809, 0.370455,
		0.944928, 0.155545, 0.287952,
		40.555874, 30.904737, 28.648388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996395, 31.449556, 28.248486>,  <39.894424, 30.795856, 28.446821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996395, 31.449556, 28.248486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357025, 31.281878, 28.291271>,  <40.573402, 31.181271, 28.316942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357025, 31.281878, 28.291271>,  <39.996395, 31.449556, 28.248486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357025, 31.281878, 28.291271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286730, 0.393839, -0.873314,
		0.323964, 0.818025, 0.475271,
		0.901573, -0.419197, 0.106962,
		40.627499, 31.156118, 28.323360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483505, 31.959553, 28.190300>,  <39.996395, 31.449556, 28.248486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483505, 31.959553, 28.190300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695179, 31.625582, 28.129816>,  <40.822182, 31.425200, 28.093525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695179, 31.625582, 28.129816>,  <40.483505, 31.959553, 28.190300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695179, 31.625582, 28.129816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370496, 0.387685, -0.844057,
		0.763348, 0.390636, 0.514493,
		0.529181, -0.834927, -0.151210,
		40.853931, 31.375103, 28.084454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279549, 32.039188, 28.083490>,  <40.483505, 31.959553, 28.190300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279549, 32.039188, 28.083490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194031, 31.689163, 27.909798>,  <41.142719, 31.479149, 27.805582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194031, 31.689163, 27.909798>,  <41.279549, 32.039188, 28.083490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194031, 31.689163, 27.909798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386724, 0.332380, -0.860214,
		0.897071, -0.351839, 0.267346,
		-0.213797, -0.875062, -0.434233,
		41.129890, 31.426645, 27.779528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787628, 32.057983, 27.548407>,  <41.279549, 32.039188, 28.083490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787628, 32.057983, 27.548407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568230, 31.734484, 27.463472>,  <41.436592, 31.540384, 27.412512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568230, 31.734484, 27.463472>,  <41.787628, 32.057983, 27.548407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568230, 31.734484, 27.463472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348493, 0.009728, -0.937261,
		0.760071, -0.588078, 0.276506,
		-0.548493, -0.808746, -0.212334,
		41.403683, 31.491859, 27.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250607, 31.661491, 27.299646>,  <41.787628, 32.057983, 27.548407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250607, 31.661491, 27.299646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887363, 31.543228, 27.181036>,  <41.669418, 31.472271, 27.109869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887363, 31.543228, 27.181036>,  <42.250607, 31.661491, 27.299646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887363, 31.543228, 27.181036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269425, 0.129544, -0.954269,
		0.320551, -0.946469, -0.037982,
		-0.908106, -0.295659, -0.296528,
		41.614933, 31.454531, 27.092077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373104, 31.217968, 26.672720>,  <42.250607, 31.661491, 27.299646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373104, 31.217968, 26.672720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981136, 31.294901, 26.651707>,  <41.745956, 31.341061, 26.639099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981136, 31.294901, 26.651707>,  <42.373104, 31.217968, 26.672720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981136, 31.294901, 26.651707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087541, 0.178325, -0.980070,
		-0.179132, -0.964991, -0.191582,
		-0.979923, 0.192333, -0.052532,
		41.687160, 31.352600, 26.635946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074230, 30.710632, 26.183451>,  <42.373104, 31.217968, 26.672720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074230, 30.710632, 26.183451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876755, 31.058233, 26.196745>,  <41.758270, 31.266794, 26.204721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.876755, 31.058233, 26.196745>,  <42.074230, 30.710632, 26.183451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876755, 31.058233, 26.196745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048563, 0.065706, -0.996657,
		-0.868283, -0.490422, -0.074640,
		-0.493687, 0.869004, 0.033236,
		41.728649, 31.318935, 26.206715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499306, 30.627052, 25.691374>,  <42.074230, 30.710632, 26.183451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499306, 30.627052, 25.691374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518227, 31.020142, 25.762945>,  <41.529579, 31.255995, 25.805887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518227, 31.020142, 25.762945>,  <41.499306, 30.627052, 25.691374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518227, 31.020142, 25.762945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077441, 0.174981, -0.981522,
		-0.995874, 0.060287, -0.067826,
		0.047305, 0.982724, 0.178927,
		41.532417, 31.314959, 25.816624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114681, 30.824341, 25.285311>,  <41.499306, 30.627052, 25.691374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114681, 30.824341, 25.285311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299339, 31.165882, 25.381489>,  <41.410133, 31.370808, 25.439196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299339, 31.165882, 25.381489>,  <41.114681, 30.824341, 25.285311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299339, 31.165882, 25.381489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085893, 0.226758, -0.970156,
		-0.882895, 0.468524, 0.031342,
		0.461649, 0.853854, 0.240446,
		41.437836, 31.422039, 25.453623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821186, 31.272215, 24.815981>,  <41.114681, 30.824341, 25.285311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821186, 31.272215, 24.815981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166138, 31.439260, 24.930456>,  <41.373108, 31.539488, 24.999142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166138, 31.439260, 24.930456>,  <40.821186, 31.272215, 24.815981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166138, 31.439260, 24.930456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113561, 0.391318, -0.913222,
		-0.493366, 0.820041, 0.290039,
		0.862377, 0.417615, 0.286188,
		41.424850, 31.564545, 25.016312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872288, 32.002201, 24.586670>,  <40.821186, 31.272215, 24.815981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872288, 32.002201, 24.586670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254089, 31.896671, 24.642271>,  <41.483170, 31.833353, 24.675631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254089, 31.896671, 24.642271>,  <40.872288, 32.002201, 24.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254089, 31.896671, 24.642271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193127, 0.191729, -0.962259,
		0.227221, 0.945322, 0.233958,
		0.954501, -0.263829, 0.139002,
		41.540440, 31.817522, 24.683971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198120, 32.463531, 24.217674>,  <40.872288, 32.002201, 24.586670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198120, 32.463531, 24.217674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470135, 32.171696, 24.246641>,  <41.633343, 31.996593, 24.264021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470135, 32.171696, 24.246641>,  <41.198120, 32.463531, 24.217674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470135, 32.171696, 24.246641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293251, 0.180137, -0.938911,
		0.671977, 0.659731, 0.336454,
		0.680037, -0.729592, 0.072418,
		41.674145, 31.952818, 24.268366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792702, 32.714138, 23.885847>,  <41.198120, 32.463531, 24.217674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792702, 32.714138, 23.885847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871490, 32.321987, 23.882872>,  <41.918762, 32.086697, 23.881086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871490, 32.321987, 23.882872>,  <41.792702, 32.714138, 23.885847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871490, 32.321987, 23.882872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487542, 0.104527, -0.866820,
		0.850592, 0.167110, 0.498566,
		0.196968, -0.980382, -0.007437,
		41.930580, 32.027874, 23.880640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558605, 32.646370, 23.665865>,  <41.792702, 32.714138, 23.885847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558605, 32.646370, 23.665865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396034, 32.286488, 23.602173>,  <42.298492, 32.070560, 23.563957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396034, 32.286488, 23.602173>,  <42.558605, 32.646370, 23.665865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396034, 32.286488, 23.602173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390709, -0.013597, -0.920414,
		0.825934, -0.436291, 0.357049,
		-0.406423, -0.899703, -0.159232,
		42.274109, 32.016575, 23.554403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123898, 32.180202, 23.388065>,  <42.558605, 32.646370, 23.665865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123898, 32.180202, 23.388065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769691, 32.028263, 23.281050>,  <42.557167, 31.937099, 23.216841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769691, 32.028263, 23.281050>,  <43.123898, 32.180202, 23.388065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769691, 32.028263, 23.281050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298837, -0.024740, -0.953984,
		0.355749, -0.924719, 0.135420,
		-0.885516, -0.379847, -0.267539,
		42.504036, 31.914309, 23.200788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298054, 31.723053, 22.860865>,  <43.123898, 32.180202, 23.388065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298054, 31.723053, 22.860865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909134, 31.803091, 22.812546>,  <42.675781, 31.851114, 22.783554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909134, 31.803091, 22.812546>,  <43.298054, 31.723053, 22.860865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909134, 31.803091, 22.812546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141219, 0.091090, -0.985779,
		-0.186245, -0.975533, -0.116824,
		-0.972301, 0.200094, -0.120799,
		42.617443, 31.863119, 22.776306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145840, 31.344845, 22.331654>,  <43.298054, 31.723053, 22.860865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145840, 31.344845, 22.331654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827415, 31.586885, 22.326967>,  <42.636360, 31.732109, 22.324156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827415, 31.586885, 22.326967>,  <43.145840, 31.344845, 22.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827415, 31.586885, 22.326967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024565, 0.012959, -0.999614,
		-0.604716, -0.796043, -0.025180,
		-0.796062, 0.605101, -0.011718,
		42.588596, 31.768415, 22.323452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582584, 31.056587, 21.952797>,  <43.145840, 31.344845, 22.331654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582584, 31.056587, 21.952797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524769, 31.452347, 21.947151>,  <42.490078, 31.689802, 21.943764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524769, 31.452347, 21.947151>,  <42.582584, 31.056587, 21.952797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524769, 31.452347, 21.947151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077453, -0.002908, -0.996992,
		-0.986463, -0.145197, -0.076212,
		-0.144538, 0.989398, -0.014114,
		42.481407, 31.749166, 21.942917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310131, 31.152090, 21.281387>,  <42.582584, 31.056587, 21.952797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310131, 31.152090, 21.281387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376816, 31.532183, 21.386662>,  <42.416828, 31.760239, 21.449825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376816, 31.532183, 21.386662>,  <42.310131, 31.152090, 21.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376816, 31.532183, 21.386662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431353, 0.169738, -0.886072,
		-0.886646, 0.261244, -0.381589,
		0.166711, 0.950232, 0.263186,
		42.426830, 31.817253, 21.465618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216885, 31.335430, 20.709560>,  <42.310131, 31.152090, 21.281387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216885, 31.335430, 20.709560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400738, 31.657095, 20.860325>,  <42.511051, 31.850094, 20.950783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400738, 31.657095, 20.860325>,  <42.216885, 31.335430, 20.709560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400738, 31.657095, 20.860325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245582, 0.292761, -0.924110,
		-0.853477, 0.517317, -0.062924,
		0.459637, 0.804160, 0.376909,
		42.538628, 31.898342, 20.973398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975407, 32.052315, 20.479792>,  <42.216885, 31.335430, 20.709560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975407, 32.052315, 20.479792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367279, 32.043224, 20.559504>,  <42.602402, 32.037769, 20.607330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367279, 32.043224, 20.559504>,  <41.975407, 32.052315, 20.479792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367279, 32.043224, 20.559504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200559, 0.122469, -0.971997,
		-0.002312, 0.992212, 0.124539,
		0.979679, -0.022730, 0.199280,
		42.661182, 32.036404, 20.619287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227303, 32.495323, 20.037634>,  <41.975407, 32.052315, 20.479792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227303, 32.495323, 20.037634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536507, 32.259613, 20.131618>,  <42.722031, 32.118187, 20.188009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536507, 32.259613, 20.131618>,  <42.227303, 32.495323, 20.037634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536507, 32.259613, 20.131618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178375, -0.153539, -0.971910,
		0.608797, 0.793210, -0.013576,
		0.773012, -0.589274, 0.234963,
		42.768410, 32.082832, 20.202106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820755, 32.794456, 19.633232>,  <42.227303, 32.495323, 20.037634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820755, 32.794456, 19.633232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928078, 32.420116, 19.724623>,  <42.992470, 32.195515, 19.779457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928078, 32.420116, 19.724623>,  <42.820755, 32.794456, 19.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928078, 32.420116, 19.724623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226309, -0.169304, -0.959229,
		0.936374, 0.309075, 0.166365,
		0.268307, -0.935847, 0.228479,
		43.008572, 32.139362, 19.793167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295799, 32.479801, 19.123304>,  <42.820755, 32.794456, 19.633232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295799, 32.479801, 19.123304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183350, 32.137905, 19.297842>,  <43.115879, 31.932768, 19.402565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183350, 32.137905, 19.297842>,  <43.295799, 32.479801, 19.123304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183350, 32.137905, 19.297842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017563, -0.459188, -0.888165,
		0.959512, -0.242018, 0.144099,
		-0.281121, -0.854736, 0.436346,
		43.099014, 31.881485, 19.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836594, 31.993582, 19.041563>,  <43.295799, 32.479801, 19.123304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836594, 31.993582, 19.041563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485897, 31.805597, 19.082489>,  <43.275478, 31.692806, 19.107044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485897, 31.805597, 19.082489>,  <43.836594, 31.993582, 19.041563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485897, 31.805597, 19.082489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160597, -0.486561, -0.858759,
		0.453365, -0.736475, 0.502061,
		-0.876738, -0.469960, 0.102314,
		43.222878, 31.664610, 19.113184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978378, 31.287476, 18.809723>,  <43.836594, 31.993582, 19.041563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978378, 31.287476, 18.809723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579670, 31.314930, 18.793051>,  <43.340446, 31.331402, 18.783047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579670, 31.314930, 18.793051>,  <43.978378, 31.287476, 18.809723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579670, 31.314930, 18.793051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010140, -0.407337, -0.913222,
		-0.079659, -0.910695, 0.405325,
		-0.996770, 0.068636, -0.041682,
		43.280640, 31.335522, 18.780546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754391, 30.731213, 18.415859>,  <43.978378, 31.287476, 18.809723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754391, 30.731213, 18.415859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409130, 30.932888, 18.404848>,  <43.201973, 31.053894, 18.398241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409130, 30.932888, 18.404848>,  <43.754391, 30.731213, 18.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409130, 30.932888, 18.404848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174599, -0.349176, -0.920647,
		-0.473792, -0.789854, 0.389424,
		-0.863155, 0.504189, -0.027529,
		43.150185, 31.084145, 18.396589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202137, 30.253193, 18.164366>,  <43.754391, 30.731213, 18.415859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202137, 30.253193, 18.164366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087177, 30.630871, 18.099991>,  <43.018200, 30.857477, 18.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087177, 30.630871, 18.099991>,  <43.202137, 30.253193, 18.164366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087177, 30.630871, 18.099991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311585, -0.251051, -0.916454,
		-0.905712, -0.213245, 0.366349,
		-0.287401, 0.944193, -0.160936,
		43.000957, 30.914129, 18.051710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529060, 30.321716, 17.810030>,  <43.202137, 30.253193, 18.164366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529060, 30.321716, 17.810030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713177, 30.668993, 17.735865>,  <42.823647, 30.877359, 17.691366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713177, 30.668993, 17.735865>,  <42.529060, 30.321716, 17.810030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713177, 30.668993, 17.735865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212457, -0.095060, -0.972536,
		-0.861973, 0.487038, 0.140699,
		0.460287, 0.868192, -0.185414,
		42.851261, 30.929451, 17.680241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181126, 30.895050, 17.403481>,  <42.529060, 30.321716, 17.810030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181126, 30.895050, 17.403481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574928, 30.844942, 17.354397>,  <42.811211, 30.814877, 17.324947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574928, 30.844942, 17.354397>,  <42.181126, 30.895050, 17.403481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574928, 30.844942, 17.354397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162396, -0.387317, -0.907531,
		0.066160, 0.913396, -0.401659,
		0.984505, -0.125271, -0.122707,
		42.870281, 30.807362, 17.317585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348206, 31.276991, 16.792635>,  <42.181126, 30.895050, 17.403481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348206, 31.276991, 16.792635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617970, 30.987705, 16.852140>,  <42.779827, 30.814135, 16.887844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617970, 30.987705, 16.852140>,  <42.348206, 31.276991, 16.792635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617970, 30.987705, 16.852140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204877, -0.376868, -0.903325,
		0.709361, 0.578735, -0.402335,
		0.674413, -0.723212, 0.148766,
		42.820293, 30.770742, 16.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560913, 31.196007, 16.120745>,  <42.348206, 31.276991, 16.792635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560913, 31.196007, 16.120745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608852, 30.856770, 16.327190>,  <42.637615, 30.653227, 16.451057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608852, 30.856770, 16.327190>,  <42.560913, 31.196007, 16.120745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608852, 30.856770, 16.327190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244306, -0.529067, -0.812652,
		0.962264, -0.028695, -0.270602,
		0.119848, -0.848095, 0.516113,
		42.644806, 30.602341, 16.482025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049896, 31.526266, 16.472059>,  <42.560913, 31.196007, 16.120745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049896, 31.526266, 16.472059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159496, 31.877180, 16.314430>,  <43.225258, 32.087730, 16.219852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159496, 31.877180, 16.314430>,  <43.049896, 31.526266, 16.472059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159496, 31.877180, 16.314430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891299, 0.385557, 0.238604,
		0.361261, 0.285858, 0.887567,
		0.274001, 0.877286, -0.394071,
		43.241695, 32.140366, 16.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846752, 32.036469, 16.973871>,  <43.049896, 31.526266, 16.472059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846752, 32.036469, 16.973871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817673, 32.194805, 16.607697>,  <42.800224, 32.289806, 16.387991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.817673, 32.194805, 16.607697>,  <42.846752, 32.036469, 16.973871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817673, 32.194805, 16.607697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676418, 0.654940, 0.336917,
		0.732922, 0.643712, 0.220139,
		-0.072700, 0.395840, -0.915438,
		42.795864, 32.313557, 16.333065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969852, 32.791145, 16.932137>,  <42.846752, 32.036469, 16.973871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969852, 32.791145, 16.932137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710968, 32.632427, 16.671776>,  <42.555637, 32.537197, 16.515558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710968, 32.632427, 16.671776>,  <42.969852, 32.791145, 16.932137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710968, 32.632427, 16.671776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725980, 0.581286, 0.367505,
		0.232537, 0.710395, -0.664278,
		-0.647209, -0.396794, -0.650903,
		42.516804, 32.513390, 16.476505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699539, 33.421589, 16.818649>,  <42.969852, 32.791145, 16.932137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699539, 33.421589, 16.818649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453987, 33.121655, 16.719942>,  <42.306656, 32.941692, 16.660717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453987, 33.121655, 16.719942>,  <42.699539, 33.421589, 16.818649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453987, 33.121655, 16.719942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730437, 0.421016, 0.537780,
		-0.299354, 0.510381, -0.806163,
		-0.613880, -0.749838, -0.246768,
		42.269825, 32.896702, 16.645912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011532, 33.761791, 16.715036>,  <42.699539, 33.421589, 16.818649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011532, 33.761791, 16.715036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962154, 33.365643, 16.740078>,  <41.932529, 33.127953, 16.755104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962154, 33.365643, 16.740078>,  <42.011532, 33.761791, 16.715036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962154, 33.365643, 16.740078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712214, 0.132350, 0.689373,
		-0.691023, 0.040509, -0.721696,
		-0.123443, -0.990375, 0.062606,
		41.925121, 33.068531, 16.758860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348782, 33.477032, 16.483009>,  <42.011532, 33.761791, 16.715036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348782, 33.477032, 16.483009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506809, 33.247623, 16.770061>,  <41.601627, 33.109978, 16.942293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506809, 33.247623, 16.770061>,  <41.348782, 33.477032, 16.483009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506809, 33.247623, 16.770061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739262, 0.265263, 0.618972,
		-0.545355, -0.775054, -0.319185,
		0.395069, -0.573521, 0.717631,
		41.625328, 33.075565, 16.985352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707054, 33.301006, 16.869534>,  <41.348782, 33.477032, 16.483009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707054, 33.301006, 16.869534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034260, 33.253696, 17.094696>,  <41.230583, 33.225311, 17.229794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034260, 33.253696, 17.094696>,  <40.707054, 33.301006, 16.869534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034260, 33.253696, 17.094696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570220, -0.038284, 0.820599,
		-0.075508, -0.992242, -0.098761,
		0.818014, -0.118278, 0.562906,
		41.279663, 33.218216, 17.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461838, 32.863007, 17.425356>,  <40.707054, 33.301006, 16.869534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461838, 32.863007, 17.425356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796471, 33.010529, 17.587399>,  <40.997250, 33.099041, 17.684624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796471, 33.010529, 17.587399>,  <40.461838, 32.863007, 17.425356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796471, 33.010529, 17.587399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400792, -0.092107, 0.911527,
		0.373489, -0.924932, 0.070758,
		0.836584, 0.368804, 0.405107,
		41.047447, 33.121170, 17.708931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428558, 32.660992, 18.161694>,  <40.461838, 32.863007, 17.425356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428558, 32.660992, 18.161694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721169, 32.933666, 18.167000>,  <40.896732, 33.097271, 18.170183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721169, 32.933666, 18.167000>,  <40.428558, 32.660992, 18.161694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721169, 32.933666, 18.167000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314865, 0.320499, 0.893387,
		0.604760, -0.657710, 0.449092,
		0.731523, 0.681688, 0.013265,
		40.940624, 33.138172, 18.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945164, 32.523140, 18.763950>,  <40.428558, 32.660992, 18.161694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945164, 32.523140, 18.763950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975372, 32.915745, 18.693592>,  <40.993496, 33.151306, 18.651377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975372, 32.915745, 18.693592>,  <40.945164, 32.523140, 18.763950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975372, 32.915745, 18.693592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179745, 0.186909, 0.965793,
		0.980810, -0.041321, 0.190536,
		0.075521, 0.981508, -0.175895,
		40.998028, 33.210197, 18.640823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341270, 32.761864, 19.324024>,  <40.945164, 32.523140, 18.763950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341270, 32.761864, 19.324024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162071, 33.090679, 19.183428>,  <41.054554, 33.287968, 19.099070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162071, 33.090679, 19.183428>,  <41.341270, 32.761864, 19.324024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162071, 33.090679, 19.183428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051580, 0.368731, 0.928104,
		0.892546, 0.433917, -0.122789,
		-0.447996, 0.822042, -0.351491,
		41.027672, 33.337292, 19.077980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523705, 33.297913, 19.790743>,  <41.341270, 32.761864, 19.324024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523705, 33.297913, 19.790743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247734, 33.473122, 19.560217>,  <41.082153, 33.578247, 19.421902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247734, 33.473122, 19.560217>,  <41.523705, 33.297913, 19.790743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247734, 33.473122, 19.560217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263732, 0.589330, 0.763633,
		0.674129, 0.678842, -0.291073,
		-0.689925, 0.438022, -0.576317,
		41.040756, 33.604527, 19.387321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608414, 34.122826, 19.900511>,  <41.523705, 33.297913, 19.790743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608414, 34.122826, 19.900511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245182, 33.996483, 19.790514>,  <41.027241, 33.920677, 19.724516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245182, 33.996483, 19.790514>,  <41.608414, 34.122826, 19.900511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245182, 33.996483, 19.790514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406805, 0.509309, 0.758363,
		-0.099480, 0.800523, -0.590987,
		-0.908082, -0.315858, -0.274991,
		40.972755, 33.901726, 19.708017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183998, 34.682777, 19.845749>,  <41.608414, 34.122826, 19.900511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183998, 34.682777, 19.845749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922897, 34.387432, 19.913555>,  <40.766235, 34.210224, 19.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922897, 34.387432, 19.913555>,  <41.183998, 34.682777, 19.845749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922897, 34.387432, 19.913555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324173, 0.474476, 0.818403,
		-0.684711, 0.479261, -0.549072,
		-0.652750, -0.738364, 0.169515,
		40.727074, 34.165924, 19.964409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643913, 35.025291, 20.169855>,  <41.183998, 34.682777, 19.845749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643913, 35.025291, 20.169855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577274, 34.637539, 20.242010>,  <40.537292, 34.404888, 20.285303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577274, 34.637539, 20.242010>,  <40.643913, 35.025291, 20.169855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577274, 34.637539, 20.242010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308387, 0.224990, 0.924271,
		-0.936559, 0.098353, -0.336428,
		-0.166598, -0.969384, 0.180386,
		40.527294, 34.346725, 20.296125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957817, 34.999409, 20.449974>,  <40.643913, 35.025291, 20.169855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957817, 34.999409, 20.449974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139328, 34.669102, 20.583958>,  <40.248234, 34.470917, 20.664349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139328, 34.669102, 20.583958>,  <39.957817, 34.999409, 20.449974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139328, 34.669102, 20.583958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284061, 0.222235, 0.932695,
		-0.844628, -0.518383, -0.133724,
		0.453776, -0.825767, 0.334959,
		40.275459, 34.421371, 20.684444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402115, 34.753090, 20.933559>,  <39.957817, 34.999409, 20.449974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402115, 34.753090, 20.933559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759201, 34.584652, 20.997728>,  <39.973454, 34.483589, 21.036230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759201, 34.584652, 20.997728>,  <39.402115, 34.753090, 20.933559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759201, 34.584652, 20.997728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128499, 0.103334, 0.986311,
		-0.431906, -0.901112, 0.038138,
		0.892717, -0.421093, 0.160423,
		40.027016, 34.458324, 21.045855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326984, 34.213123, 21.306463>,  <39.402115, 34.753090, 20.933559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326984, 34.213123, 21.306463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712315, 34.271797, 21.396341>,  <39.943512, 34.307003, 21.450268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712315, 34.271797, 21.396341>,  <39.326984, 34.213123, 21.306463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712315, 34.271797, 21.396341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218234, -0.058952, 0.974114,
		0.156136, -0.987425, -0.024778,
		0.963325, 0.146687, 0.224695,
		40.001312, 34.315804, 21.463749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594822, 33.631893, 21.659771>,  <39.326984, 34.213123, 21.306463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594822, 33.631893, 21.659771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831543, 33.933037, 21.774992>,  <39.973576, 34.113724, 21.844124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831543, 33.933037, 21.774992>,  <39.594822, 33.631893, 21.659771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831543, 33.933037, 21.774992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100205, -0.285867, 0.953016,
		0.799830, -0.592862, -0.093737,
		0.591803, 0.752858, 0.288053,
		40.009083, 34.158894, 21.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982697, 33.258495, 22.189690>,  <39.594822, 33.631893, 21.659771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982697, 33.258495, 22.189690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090984, 33.635941, 22.265913>,  <40.155956, 33.862408, 22.311647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090984, 33.635941, 22.265913>,  <39.982697, 33.258495, 22.189690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090984, 33.635941, 22.265913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094453, -0.170957, 0.980741,
		0.958013, -0.283507, 0.042845,
		0.270722, 0.943609, 0.190557,
		40.172199, 33.919022, 22.323080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563816, 33.281498, 22.610153>,  <39.982697, 33.258495, 22.189690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563816, 33.281498, 22.610153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384521, 33.633083, 22.675283>,  <40.276943, 33.844032, 22.714361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384521, 33.633083, 22.675283>,  <40.563816, 33.281498, 22.610153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384521, 33.633083, 22.675283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155140, -0.255877, 0.954180,
		0.880350, 0.402437, 0.251055,
		-0.448236, 0.878960, 0.162827,
		40.250050, 33.896770, 22.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867817, 33.615829, 23.279350>,  <40.563816, 33.281498, 22.610153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867817, 33.615829, 23.279350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515884, 33.787155, 23.196945>,  <40.304726, 33.889950, 23.147501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515884, 33.787155, 23.196945>,  <40.867817, 33.615829, 23.279350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515884, 33.787155, 23.196945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217187, 0.023235, 0.975854,
		0.422760, 0.903331, 0.072581,
		-0.879832, 0.428315, -0.206014,
		40.251934, 33.915649, 23.135141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805969, 34.099236, 23.792040>,  <40.867817, 33.615829, 23.279350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805969, 34.099236, 23.792040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431042, 34.021694, 23.676205>,  <40.206085, 33.975170, 23.606705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431042, 34.021694, 23.676205>,  <40.805969, 34.099236, 23.792040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431042, 34.021694, 23.676205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283437, -0.059366, 0.957151,
		-0.202740, 0.979232, 0.000699,
		-0.937315, -0.193854, -0.289586,
		40.149849, 33.963539, 23.589329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438438, 34.450829, 24.205612>,  <40.805969, 34.099236, 23.792040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438438, 34.450829, 24.205612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169941, 34.201954, 24.044460>,  <40.008842, 34.052628, 23.947769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169941, 34.201954, 24.044460>,  <40.438438, 34.450829, 24.205612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169941, 34.201954, 24.044460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377590, -0.180700, 0.908170,
		-0.637854, 0.761727, -0.113639,
		-0.671243, -0.622189, -0.402881,
		39.968567, 34.015297, 23.923595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772861, 34.635838, 24.498426>,  <40.438438, 34.450829, 24.205612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772861, 34.635838, 24.498426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750820, 34.251984, 24.388113>,  <39.737595, 34.021671, 24.321924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750820, 34.251984, 24.388113>,  <39.772861, 34.635838, 24.498426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750820, 34.251984, 24.388113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512858, -0.209783, 0.832447,
		-0.856704, 0.187305, -0.480599,
		-0.055100, -0.959639, -0.275783,
		39.734291, 33.964092, 24.305378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133591, 34.365433, 24.812275>,  <39.772861, 34.635838, 24.498426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133591, 34.365433, 24.812275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337658, 34.035480, 24.714878>,  <39.460098, 33.837509, 24.656439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337658, 34.035480, 24.714878>,  <39.133591, 34.365433, 24.812275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337658, 34.035480, 24.714878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469362, -0.504259, 0.724860,
		-0.720710, -0.255516, -0.644429,
		0.510172, -0.824885, -0.243495,
		39.490711, 33.788013, 24.641830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630352, 33.784016, 25.002666>,  <39.133591, 34.365433, 24.812275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630352, 33.784016, 25.002666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985329, 33.603382, 24.965746>,  <39.198315, 33.495003, 24.943594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985329, 33.603382, 24.965746>,  <38.630352, 33.784016, 25.002666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985329, 33.603382, 24.965746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261810, -0.658684, 0.705401,
		-0.379342, -0.601839, -0.702773,
		0.887443, -0.451581, -0.092299,
		39.251560, 33.467907, 24.938055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549061, 32.961723, 25.080914>,  <38.630352, 33.784016, 25.002666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549061, 32.961723, 25.080914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926472, 33.074627, 25.150303>,  <39.152916, 33.142368, 25.191936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926472, 33.074627, 25.150303>,  <38.549061, 32.961723, 25.080914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926472, 33.074627, 25.150303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007087, -0.506292, 0.862333,
		0.331224, -0.814863, -0.475699,
		0.943526, 0.282255, 0.173471,
		39.209530, 33.159302, 25.202345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848026, 32.285889, 25.249119>,  <38.549061, 32.961723, 25.080914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848026, 32.285889, 25.249119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046200, 32.592823, 25.411963>,  <39.165104, 32.776985, 25.509668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046200, 32.592823, 25.411963>,  <38.848026, 32.285889, 25.249119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046200, 32.592823, 25.411963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126626, -0.399867, 0.907784,
		0.859366, -0.501298, -0.100943,
		0.495434, 0.767337, 0.407109,
		39.194832, 32.823025, 25.534096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219379, 31.914528, 25.659695>,  <38.848026, 32.285889, 25.249119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219379, 31.914528, 25.659695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238941, 32.291885, 25.790916>,  <39.250679, 32.518299, 25.869650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238941, 32.291885, 25.790916>,  <39.219379, 31.914528, 25.659695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238941, 32.291885, 25.790916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141467, -0.318594, 0.937275,
		0.988734, -0.092250, 0.117877,
		0.048909, 0.943392, 0.328055,
		39.253613, 32.574902, 25.889334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533901, 31.842855, 26.315365>,  <39.219379, 31.914528, 25.659695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533901, 31.842855, 26.315365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428265, 32.228329, 26.331211>,  <39.364883, 32.459614, 26.340719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428265, 32.228329, 26.331211>,  <39.533901, 31.842855, 26.315365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428265, 32.228329, 26.331211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349416, -0.133875, 0.927354,
		0.898980, 0.231063, 0.372082,
		-0.264089, 0.963684, 0.039614,
		39.349037, 32.517433, 26.343096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799103, 32.178749, 27.062252>,  <39.533901, 31.842855, 26.315365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799103, 32.178749, 27.062252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489742, 32.364258, 26.889389>,  <39.304127, 32.475563, 26.785671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489742, 32.364258, 26.889389>,  <39.799103, 32.178749, 27.062252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489742, 32.364258, 26.889389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513480, -0.058559, 0.856101,
		0.371729, 0.884017, 0.283428,
		-0.773405, 0.463773, -0.432157,
		39.257721, 32.503391, 26.759743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481514, 32.659279, 27.661137>,  <39.799103, 32.178749, 27.062252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481514, 32.659279, 27.661137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199142, 32.656765, 27.377834>,  <39.029720, 32.655258, 27.207853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199142, 32.656765, 27.377834>,  <39.481514, 32.659279, 27.661137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199142, 32.656765, 27.377834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703079, 0.127220, 0.699639,
		0.085707, 0.991854, -0.094228,
		-0.705928, -0.006286, -0.708256,
		38.987366, 32.654881, 27.165358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051079, 33.202667, 27.826323>,  <39.481514, 32.659279, 27.661137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051079, 33.202667, 27.826323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843109, 32.927677, 27.623520>,  <38.718327, 32.762684, 27.501839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843109, 32.927677, 27.623520>,  <39.051079, 33.202667, 27.826323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843109, 32.927677, 27.623520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762436, 0.105844, 0.638347,
		-0.385185, 0.718453, -0.579188,
		-0.519926, -0.687476, -0.507005,
		38.687130, 32.721436, 27.471418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364624, 33.529873, 27.832640>,  <39.051079, 33.202667, 27.826323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364624, 33.529873, 27.832640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329895, 33.139091, 27.754639>,  <38.309059, 32.904621, 27.707838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329895, 33.139091, 27.754639>,  <38.364624, 33.529873, 27.832640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329895, 33.139091, 27.754639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770861, -0.058111, 0.634347,
		-0.631059, 0.205393, -0.748050,
		-0.086821, -0.976953, -0.195001,
		38.303848, 32.846004, 27.696138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697216, 33.461575, 27.642054>,  <38.364624, 33.529873, 27.832640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697216, 33.461575, 27.642054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843300, 33.110432, 27.765976>,  <37.930950, 32.899746, 27.840328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843300, 33.110432, 27.765976>,  <37.697216, 33.461575, 27.642054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843300, 33.110432, 27.765976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674391, -0.020083, 0.738101,
		-0.641729, -0.478494, -0.599356,
		0.365214, -0.877861, 0.309805,
		37.952866, 32.847073, 27.858917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151722, 33.243137, 27.946552>,  <37.697216, 33.461575, 27.642054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151722, 33.243137, 27.946552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410316, 32.956657, 28.051720>,  <37.565472, 32.784771, 28.114820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410316, 32.956657, 28.051720>,  <37.151722, 33.243137, 27.946552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410316, 32.956657, 28.051720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559704, -0.211037, 0.801371,
		-0.518453, -0.665227, -0.537289,
		0.646481, -0.716196, 0.262917,
		37.604259, 32.741798, 28.130594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807587, 32.678925, 28.218031>,  <37.151722, 33.243137, 27.946552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807587, 32.678925, 28.218031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171967, 32.602993, 28.364525>,  <37.390594, 32.557434, 28.452421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171967, 32.602993, 28.364525>,  <36.807587, 32.678925, 28.218031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171967, 32.602993, 28.364525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400659, -0.195897, 0.895040,
		-0.098154, -0.962077, -0.254507,
		0.910955, -0.189823, 0.366237,
		37.445251, 32.546043, 28.474396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704914, 31.975574, 28.551018>,  <36.807587, 32.678925, 28.218031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704914, 31.975574, 28.551018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022461, 32.168964, 28.698545>,  <37.212990, 32.285000, 28.787062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022461, 32.168964, 28.698545>,  <36.704914, 31.975574, 28.551018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022461, 32.168964, 28.698545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279466, -0.248593, 0.927416,
		0.540070, -0.839316, -0.062234,
		0.793866, 0.483477, 0.368818,
		37.260620, 32.314007, 28.809191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044628, 31.467840, 29.006742>,  <36.704914, 31.975574, 28.551018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044628, 31.467840, 29.006742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170406, 31.829947, 29.121019>,  <37.245872, 32.047211, 29.189585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.170406, 31.829947, 29.121019>,  <37.044628, 31.467840, 29.006742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170406, 31.829947, 29.121019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200193, -0.230948, 0.952148,
		0.927925, -0.356595, 0.108607,
		0.314449, 0.905264, 0.285690,
		37.264740, 32.101524, 29.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496891, 31.328377, 29.571039>,  <37.044628, 31.467840, 29.006742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496891, 31.328377, 29.571039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395405, 31.714836, 29.589752>,  <37.334515, 31.946711, 29.600981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395405, 31.714836, 29.589752>,  <37.496891, 31.328377, 29.571039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395405, 31.714836, 29.589752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147770, -0.086514, 0.985231,
		0.955925, 0.243054, 0.164717,
		-0.253714, 0.966147, 0.046785,
		37.319290, 32.004681, 29.603788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898323, 31.730215, 30.124498>,  <37.496891, 31.328377, 29.571039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898323, 31.730215, 30.124498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551052, 31.918114, 30.060490>,  <37.342690, 32.030853, 30.022085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551052, 31.918114, 30.060490>,  <37.898323, 31.730215, 30.124498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551052, 31.918114, 30.060490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212744, -0.060982, 0.975203,
		0.448340, 0.880693, 0.152878,
		-0.868177, 0.469746, -0.160021,
		37.290600, 32.059036, 30.012484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797863, 31.850752, 30.734756>,  <37.898323, 31.730215, 30.124498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797863, 31.850752, 30.734756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452389, 31.989098, 30.588104>,  <37.245102, 32.072105, 30.500113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452389, 31.989098, 30.588104>,  <37.797863, 31.850752, 30.734756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452389, 31.989098, 30.588104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374459, 0.046580, 0.926073,
		0.337373, 0.937128, 0.089281,
		-0.863690, 0.345864, -0.366631,
		37.193283, 32.092857, 30.478115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711472, 32.475285, 31.125332>,  <37.797863, 31.850752, 30.734756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711472, 32.475285, 31.125332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373627, 32.342529, 30.957294>,  <37.170921, 32.262875, 30.856472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373627, 32.342529, 30.957294>,  <37.711472, 32.475285, 31.125332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373627, 32.342529, 30.957294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419598, -0.076989, 0.904439,
		-0.332518, 0.940171, -0.074234,
		-0.844612, -0.331891, -0.420094,
		37.120243, 32.242962, 30.831266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170795, 32.796265, 31.529716>,  <37.711472, 32.475285, 31.125332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170795, 32.796265, 31.529716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021610, 32.471245, 31.350536>,  <36.932098, 32.276234, 31.243029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021610, 32.471245, 31.350536>,  <37.170795, 32.796265, 31.529716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021610, 32.471245, 31.350536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417220, -0.284354, 0.863174,
		-0.828750, 0.508825, -0.232959,
		-0.372962, -0.812551, -0.447950,
		36.909721, 32.227478, 31.216150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663807, 33.419453, 31.621609>,  <37.170795, 32.796265, 31.529716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663807, 33.419453, 31.621609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590546, 33.811810, 31.647860>,  <37.546589, 34.047222, 31.663610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590546, 33.811810, 31.647860>,  <37.663807, 33.419453, 31.621609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590546, 33.811810, 31.647860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156759, 0.095043, -0.983053,
		-0.970507, -0.169758, -0.171171,
		-0.183150, 0.980892, 0.065629,
		37.535603, 34.106075, 31.667547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194630, 33.599251, 31.026453>,  <37.663807, 33.419453, 31.621609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194630, 33.599251, 31.026453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355808, 33.948097, 31.137480>,  <37.452515, 34.157406, 31.204096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355808, 33.948097, 31.137480>,  <37.194630, 33.599251, 31.026453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355808, 33.948097, 31.137480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076924, 0.269932, -0.959802,
		-0.911987, 0.408097, 0.041680,
		0.402943, 0.872120, 0.277567,
		37.476692, 34.209732, 31.220749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890923, 34.216530, 30.559317>,  <37.194630, 33.599251, 31.026453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890923, 34.216530, 30.559317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245712, 34.353958, 30.682758>,  <37.458588, 34.436413, 30.756823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245712, 34.353958, 30.682758>,  <36.890923, 34.216530, 30.559317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245712, 34.353958, 30.682758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245919, 0.214235, -0.945319,
		-0.390894, 0.914366, 0.105532,
		0.886976, 0.343567, 0.308603,
		37.511806, 34.457027, 30.775339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064968, 34.941372, 30.162764>,  <36.890923, 34.216530, 30.559317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064968, 34.941372, 30.162764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428879, 34.877041, 30.315834>,  <37.647224, 34.838440, 30.407677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428879, 34.877041, 30.315834>,  <37.064968, 34.941372, 30.162764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428879, 34.877041, 30.315834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413790, 0.424481, -0.805353,
		-0.032913, 0.891038, 0.452733,
		0.909777, -0.160830, 0.382674,
		37.701813, 34.828793, 30.430635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538574, 35.609814, 30.101692>,  <37.064968, 34.941372, 30.162764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538574, 35.609814, 30.101692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773548, 35.287125, 30.127367>,  <37.914532, 35.093510, 30.142771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773548, 35.287125, 30.127367>,  <37.538574, 35.609814, 30.101692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773548, 35.287125, 30.127367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611341, 0.390392, -0.688373,
		0.530270, 0.443611, 0.722512,
		0.587432, -0.806724, 0.064185,
		37.949780, 35.045109, 30.146622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207916, 35.920597, 30.149191>,  <37.538574, 35.609814, 30.101692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207916, 35.920597, 30.149191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265064, 35.539852, 30.040712>,  <38.299355, 35.311405, 29.975626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265064, 35.539852, 30.040712>,  <38.207916, 35.920597, 30.149191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265064, 35.539852, 30.040712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648902, 0.296984, -0.700518,
		0.747337, -0.075895, 0.660096,
		0.142872, -0.951861, -0.271196,
		38.307926, 35.254295, 29.959354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934917, 35.837833, 30.151739>,  <38.207916, 35.920597, 30.149191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934917, 35.837833, 30.151739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770508, 35.553123, 29.923901>,  <38.671864, 35.382298, 29.787197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770508, 35.553123, 29.923901>,  <38.934917, 35.837833, 30.151739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770508, 35.553123, 29.923901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430342, 0.399321, -0.809536,
		0.803659, -0.577856, 0.142178,
		-0.411020, -0.711776, -0.569594,
		38.647202, 35.339592, 29.753023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335777, 35.839821, 29.550083>,  <38.934917, 35.837833, 30.151739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335777, 35.839821, 29.550083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021309, 35.630512, 29.418554>,  <38.832630, 35.504925, 29.339636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021309, 35.630512, 29.418554>,  <39.335777, 35.839821, 29.550083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021309, 35.630512, 29.418554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310966, 0.124869, -0.942183,
		0.534080, -0.842966, 0.064552,
		-0.786167, -0.523275, -0.328824,
		38.785458, 35.473530, 29.319906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569313, 35.398445, 28.963169>,  <39.335777, 35.839821, 29.550083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569313, 35.398445, 28.963169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172958, 35.444248, 28.934820>,  <38.935146, 35.471729, 28.917810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.172958, 35.444248, 28.934820>,  <39.569313, 35.398445, 28.963169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172958, 35.444248, 28.934820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100057, 0.273757, -0.956580,
		-0.090137, -0.954958, -0.282721,
		-0.990890, 0.114512, -0.070874,
		38.875690, 35.478603, 28.913557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490704, 35.240253, 28.368071>,  <39.569313, 35.398445, 28.963169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490704, 35.240253, 28.368071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158123, 35.444202, 28.456360>,  <38.958572, 35.566570, 28.509335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158123, 35.444202, 28.456360>,  <39.490704, 35.240253, 28.368071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158123, 35.444202, 28.456360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054552, 0.320438, -0.945698,
		-0.552910, -0.798344, -0.238615,
		-0.831454, 0.509868, 0.220724,
		38.908688, 35.597164, 28.522577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058418, 35.002026, 27.849894>,  <39.490704, 35.240253, 28.368071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058418, 35.002026, 27.849894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887009, 35.342354, 27.971527>,  <38.784161, 35.546551, 28.044506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887009, 35.342354, 27.971527>,  <39.058418, 35.002026, 27.849894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887009, 35.342354, 27.971527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245132, 0.214447, -0.945475,
		-0.869641, -0.479702, 0.116667,
		-0.428527, 0.850822, 0.304082,
		38.758450, 35.597599, 28.062752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426624, 35.045593, 27.501122>,  <39.058418, 35.002026, 27.849894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426624, 35.045593, 27.501122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554611, 35.408207, 27.611261>,  <38.631401, 35.625774, 27.677345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554611, 35.408207, 27.611261>,  <38.426624, 35.045593, 27.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554611, 35.408207, 27.611261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007553, 0.288176, -0.957548,
		-0.947399, 0.308461, 0.085360,
		0.319965, 0.906535, 0.275348,
		38.650600, 35.680168, 27.693865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121677, 35.469776, 27.019032>,  <38.426624, 35.045593, 27.501122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121677, 35.469776, 27.019032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405586, 35.689400, 27.195557>,  <38.575932, 35.821175, 27.301472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405586, 35.689400, 27.195557>,  <38.121677, 35.469776, 27.019032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405586, 35.689400, 27.195557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152428, 0.491926, -0.857190,
		-0.687742, 0.675677, 0.265462,
		0.709772, 0.549062, 0.441311,
		38.618519, 35.854118, 27.327950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871807, 36.241222, 26.953121>,  <38.121677, 35.469776, 27.019032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871807, 36.241222, 26.953121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268085, 36.222355, 27.004171>,  <38.505852, 36.211037, 27.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268085, 36.222355, 27.004171>,  <37.871807, 36.241222, 26.953121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268085, 36.222355, 27.004171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127703, 0.646021, -0.752561,
		-0.046953, 0.761861, 0.646037,
		0.990700, -0.047166, 0.127625,
		38.565296, 36.208206, 27.042459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128700, 36.829758, 26.636723>,  <37.871807, 36.241222, 26.953121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128700, 36.829758, 26.636723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460274, 36.606144, 26.644236>,  <38.659218, 36.471977, 26.648743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460274, 36.606144, 26.644236>,  <38.128700, 36.829758, 26.636723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460274, 36.606144, 26.644236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325536, 0.454858, -0.828933,
		0.454858, 0.693244, 0.559032,
		0.828933, -0.559032, 0.018781,
		38.708954, 36.438435, 26.649870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623447, 37.329262, 26.369652>,  <38.128700, 36.829758, 26.636723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623447, 37.329262, 26.369652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792168, 36.968685, 26.330690>,  <38.893398, 36.752338, 26.307314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792168, 36.968685, 26.330690>,  <38.623447, 37.329262, 26.369652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792168, 36.968685, 26.330690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487205, 0.315937, -0.814134,
		0.764669, 0.295945, 0.572449,
		0.421796, -0.901444, -0.097401,
		38.918705, 36.698254, 26.301470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378384, 37.445446, 26.233934>,  <38.623447, 37.329262, 26.369652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378384, 37.445446, 26.233934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326267, 37.076008, 26.089716>,  <39.294998, 36.854343, 26.003185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326267, 37.076008, 26.089716>,  <39.378384, 37.445446, 26.233934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326267, 37.076008, 26.089716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399531, 0.283905, -0.871650,
		0.907413, -0.257619, 0.332015,
		-0.130293, -0.923596, -0.360546,
		39.287178, 36.798927, 25.981552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960808, 37.324509, 25.875359>,  <39.378384, 37.445446, 26.233934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960808, 37.324509, 25.875359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719021, 37.043434, 25.725237>,  <39.573948, 36.874790, 25.635164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719021, 37.043434, 25.725237>,  <39.960808, 37.324509, 25.875359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719021, 37.043434, 25.725237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519393, 0.009587, -0.854482,
		0.604029, -0.711437, 0.359175,
		-0.604466, -0.702685, -0.375306,
		39.537682, 36.832630, 25.612644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439342, 36.891052, 25.496441>,  <39.960808, 37.324509, 25.875359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439342, 36.891052, 25.496441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077385, 36.810326, 25.346544>,  <39.860210, 36.761890, 25.256607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077385, 36.810326, 25.346544>,  <40.439342, 36.891052, 25.496441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077385, 36.810326, 25.346544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328761, 0.227769, -0.916536,
		0.270331, -0.952570, -0.139757,
		-0.904896, -0.201822, -0.374741,
		39.805916, 36.749779, 25.234121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532578, 36.346176, 24.991081>,  <40.439342, 36.891052, 25.496441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532578, 36.346176, 24.991081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183182, 36.507488, 24.881992>,  <39.973545, 36.604275, 24.816540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183182, 36.507488, 24.881992>,  <40.532578, 36.346176, 24.991081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183182, 36.507488, 24.881992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304701, 0.015961, -0.952314,
		-0.379700, -0.914936, -0.136823,
		-0.873490, 0.403284, -0.272721,
		39.921135, 36.628475, 24.800177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303909, 35.969715, 24.380306>,  <40.532578, 36.346176, 24.991081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303909, 35.969715, 24.380306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061806, 36.288052, 24.373320>,  <39.916546, 36.479053, 24.369127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061806, 36.288052, 24.373320>,  <40.303909, 35.969715, 24.380306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061806, 36.288052, 24.373320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079340, -0.082141, -0.993458,
		-0.792067, -0.599911, 0.112858,
		-0.605257, 0.795839, -0.017464,
		39.880230, 36.526802, 24.368080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783833, 35.770622, 24.039726>,  <40.303909, 35.969715, 24.380306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783833, 35.770622, 24.039726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801609, 36.167862, 23.996321>,  <39.812275, 36.406208, 23.970278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801609, 36.167862, 23.996321>,  <39.783833, 35.770622, 24.039726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801609, 36.167862, 23.996321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056612, -0.110952, -0.992212,
		-0.997407, 0.037953, -0.061153,
		0.044443, 0.993101, -0.108515,
		39.814941, 36.465794, 23.963766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397552, 36.030968, 23.459610>,  <39.783833, 35.770622, 24.039726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397552, 36.030968, 23.459610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630531, 36.352421, 23.508488>,  <39.770321, 36.545292, 23.537815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630531, 36.352421, 23.508488>,  <39.397552, 36.030968, 23.459610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630531, 36.352421, 23.508488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289085, -0.064288, -0.955142,
		-0.759725, 0.591647, -0.269762,
		0.582449, 0.803630, 0.122195,
		39.805267, 36.593510, 23.545147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264908, 36.523129, 22.885111>,  <39.397552, 36.030968, 23.459610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264908, 36.523129, 22.885111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628422, 36.607891, 23.028893>,  <39.846531, 36.658749, 23.115162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628422, 36.607891, 23.028893>,  <39.264908, 36.523129, 22.885111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628422, 36.607891, 23.028893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348686, 0.087511, -0.933145,
		-0.229193, 0.973365, 0.005640,
		0.908784, 0.211904, 0.359456,
		39.901058, 36.671463, 23.136728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558506, 37.093834, 22.387594>,  <39.264908, 36.523129, 22.885111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558506, 37.093834, 22.387594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870094, 36.923023, 22.571268>,  <40.057049, 36.820538, 22.681473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870094, 36.923023, 22.571268>,  <39.558506, 37.093834, 22.387594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870094, 36.923023, 22.571268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536382, 0.074466, -0.840684,
		0.324798, 0.901169, 0.287055,
		0.778974, -0.427024, 0.459184,
		40.103786, 36.794914, 22.709023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172413, 37.492153, 22.278166>,  <39.558506, 37.093834, 22.387594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172413, 37.492153, 22.278166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311489, 37.121540, 22.335646>,  <40.394936, 36.899174, 22.370134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311489, 37.121540, 22.335646>,  <40.172413, 37.492153, 22.278166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311489, 37.121540, 22.335646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663668, 0.134938, -0.735755,
		0.662310, 0.351186, 0.661826,
		0.347693, -0.926531, 0.143700,
		40.415798, 36.843582, 22.378756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950256, 37.563908, 22.125696>,  <40.172413, 37.492153, 22.278166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950256, 37.563908, 22.125696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898197, 37.167309, 22.125137>,  <40.866962, 36.929352, 22.124802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898197, 37.167309, 22.125137>,  <40.950256, 37.563908, 22.125696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898197, 37.167309, 22.125137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568885, -0.073522, -0.819124,
		0.812054, -0.107402, 0.573614,
		-0.130149, -0.991494, -0.001395,
		40.859154, 36.869862, 22.124720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622940, 37.197453, 22.186909>,  <40.950256, 37.563908, 22.125696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622940, 37.197453, 22.186909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375813, 36.927094, 22.026180>,  <41.227535, 36.764877, 21.929743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375813, 36.927094, 22.026180>,  <41.622940, 37.197453, 22.186909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375813, 36.927094, 22.026180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649021, -0.149838, -0.745869,
		0.443923, -0.721604, 0.531245,
		-0.617823, -0.675897, -0.401819,
		41.190464, 36.724323, 21.905634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048454, 36.671143, 21.948362>,  <41.622940, 37.197453, 22.186909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048454, 36.671143, 21.948362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712173, 36.633076, 21.735136>,  <41.510403, 36.610237, 21.607201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712173, 36.633076, 21.735136>,  <42.048454, 36.671143, 21.948362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712173, 36.633076, 21.735136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541412, -0.130479, -0.830571,
		0.009487, -0.986873, 0.161218,
		-0.840704, -0.095165, -0.533067,
		41.459961, 36.604527, 21.575216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162189, 36.057228, 21.665058>,  <42.048454, 36.671143, 21.948362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162189, 36.057228, 21.665058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895294, 36.253693, 21.441072>,  <41.735157, 36.371571, 21.306681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895294, 36.253693, 21.441072>,  <42.162189, 36.057228, 21.665058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895294, 36.253693, 21.441072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611661, -0.067699, -0.788218,
		-0.425051, -0.868434, -0.255253,
		-0.667235, 0.491161, -0.559963,
		41.695126, 36.401039, 21.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137104, 35.725246, 20.964890>,  <42.162189, 36.057228, 21.665058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137104, 35.725246, 20.964890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964882, 36.076195, 20.880184>,  <41.861549, 36.286762, 20.829361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964882, 36.076195, 20.880184>,  <42.137104, 35.725246, 20.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964882, 36.076195, 20.880184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451299, 0.006085, -0.892352,
		-0.781636, -0.479773, -0.398577,
		-0.430552, 0.877371, -0.211764,
		41.835716, 36.339405, 20.816654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039757, 35.648346, 20.299084>,  <42.137104, 35.725246, 20.964890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039757, 35.648346, 20.299084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010658, 36.042225, 20.362436>,  <41.993198, 36.278553, 20.400448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010658, 36.042225, 20.362436>,  <42.039757, 35.648346, 20.299084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010658, 36.042225, 20.362436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414882, 0.174288, -0.893026,
		-0.906962, 0.000750, -0.421211,
		-0.072742, 0.984694, 0.158383,
		41.988834, 36.337635, 20.409952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838497, 35.875256, 19.594585>,  <42.039757, 35.648346, 20.299084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838497, 35.875256, 19.594585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989643, 36.194489, 19.782324>,  <42.080330, 36.386028, 19.894966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989643, 36.194489, 19.782324>,  <41.838497, 35.875256, 19.594585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989643, 36.194489, 19.782324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444754, 0.288147, -0.848036,
		-0.812042, 0.529187, -0.246068,
		0.377866, 0.798080, 0.469346,
		42.103004, 36.433914, 19.923128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021576, 36.233856, 19.033627>,  <41.838497, 35.875256, 19.594585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021576, 36.233856, 19.033627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211861, 36.419052, 19.332783>,  <42.326031, 36.530170, 19.512276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211861, 36.419052, 19.332783>,  <42.021576, 36.233856, 19.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211861, 36.419052, 19.332783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654410, 0.381848, -0.652641,
		-0.587745, 0.799896, -0.121334,
		0.475714, 0.462989, 0.747889,
		42.354576, 36.557949, 19.557150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159267, 36.936722, 18.823381>,  <42.021576, 36.233856, 19.033627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159267, 36.936722, 18.823381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425850, 36.855011, 19.110188>,  <42.585800, 36.805984, 19.282272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425850, 36.855011, 19.110188>,  <42.159267, 36.936722, 18.823381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425850, 36.855011, 19.110188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741688, 0.279386, -0.609788,
		-0.075760, 0.938198, 0.337705,
		0.666452, -0.204274, 0.717017,
		42.625786, 36.793728, 19.325293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781990, 37.222076, 18.601583>,  <42.159267, 36.936722, 18.823381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781990, 37.222076, 18.601583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948071, 37.029259, 18.910192>,  <43.047718, 36.913570, 19.095358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948071, 37.029259, 18.910192>,  <42.781990, 37.222076, 18.601583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948071, 37.029259, 18.910192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903598, 0.120205, -0.411172,
		0.105462, 0.867863, 0.485481,
		0.415198, -0.482042, 0.771522,
		43.072628, 36.884647, 19.141649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260986, 37.693146, 18.929476>,  <42.781990, 37.222076, 18.601583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260986, 37.693146, 18.929476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382362, 37.322823, 19.019638>,  <43.455189, 37.100628, 19.073736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382362, 37.322823, 19.019638>,  <43.260986, 37.693146, 18.929476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382362, 37.322823, 19.019638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832297, 0.142359, -0.535738,
		0.463900, 0.350171, 0.813742,
		0.303443, -0.925805, 0.225406,
		43.473396, 37.045082, 19.087259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010139, 37.714993, 19.119057>,  <43.260986, 37.693146, 18.929476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010139, 37.714993, 19.119057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934757, 37.355545, 18.960581>,  <43.889526, 37.139877, 18.865496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934757, 37.355545, 18.960581>,  <44.010139, 37.714993, 19.119057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934757, 37.355545, 18.960581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776004, 0.110997, -0.620885,
		0.601915, -0.424455, 0.676414,
		-0.188458, -0.898620, -0.396190,
		43.878220, 37.085960, 18.841724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803963, 37.289799, 19.686476>,  <44.010139, 37.714993, 19.119057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803963, 37.289799, 19.686476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128189, 37.521561, 19.720591>,  <44.322723, 37.660618, 19.741060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128189, 37.521561, 19.720591>,  <43.803963, 37.289799, 19.686476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128189, 37.521561, 19.720591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091953, -0.017913, 0.995602,
		0.578385, -0.814843, 0.038759,
		0.810565, 0.579405, 0.085287,
		44.371357, 37.695381, 19.746178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.204048, 37.076488, 20.271711>,  <43.803963, 37.289799, 19.686476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.204048, 37.076488, 20.271711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309456, 37.455872, 20.201303>,  <44.372700, 37.683502, 20.159060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309456, 37.455872, 20.201303>,  <44.204048, 37.076488, 20.271711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309456, 37.455872, 20.201303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130545, 0.215853, 0.967660,
		0.955780, -0.232019, 0.180698,
		0.263520, 0.948459, -0.176019,
		44.388512, 37.740410, 20.148499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582840, 37.322063, 20.925648>,  <44.204048, 37.076488, 20.271711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582840, 37.322063, 20.925648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480312, 37.655708, 20.730276>,  <44.418797, 37.855896, 20.613054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480312, 37.655708, 20.730276>,  <44.582840, 37.322063, 20.925648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480312, 37.655708, 20.730276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116207, 0.475051, 0.872252,
		0.959582, 0.280332, -0.024834,
		-0.256317, 0.834111, -0.488427,
		44.403416, 37.905941, 20.583748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960800, 37.892284, 21.191620>,  <44.582840, 37.322063, 20.925648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960800, 37.892284, 21.191620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632229, 38.054611, 21.031334>,  <44.435085, 38.152008, 20.935163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632229, 38.054611, 21.031334>,  <44.960800, 37.892284, 21.191620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632229, 38.054611, 21.031334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205059, 0.445470, 0.871497,
		0.532172, 0.798042, -0.282706,
		-0.821428, 0.405815, -0.400713,
		44.385799, 38.176357, 20.911119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735008, 38.439903, 21.707819>,  <44.960800, 37.892284, 21.191620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735008, 38.439903, 21.707819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407711, 38.430538, 21.478062>,  <44.211330, 38.424919, 21.340208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407711, 38.430538, 21.478062>,  <44.735008, 38.439903, 21.707819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407711, 38.430538, 21.478062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547106, 0.338475, 0.765578,
		0.176494, 0.940684, -0.289764,
		-0.818245, -0.023412, -0.574393,
		44.162239, 38.423515, 21.305744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335922, 39.105961, 21.682222>,  <44.735008, 38.439903, 21.707819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335922, 39.105961, 21.682222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048450, 38.841740, 21.595343>,  <43.875969, 38.683208, 21.543215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048450, 38.841740, 21.595343>,  <44.335922, 39.105961, 21.682222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048450, 38.841740, 21.595343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500649, 0.274786, 0.820880,
		-0.482548, 0.698690, -0.528186,
		-0.718678, -0.660550, -0.217201,
		43.832848, 38.643574, 21.530182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666161, 39.519829, 21.719738>,  <44.335922, 39.105961, 21.682222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666161, 39.519829, 21.719738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550041, 39.137157, 21.728613>,  <43.480370, 38.907555, 21.733938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550041, 39.137157, 21.728613>,  <43.666161, 39.519829, 21.719738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550041, 39.137157, 21.728613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532308, 0.180707, 0.827039,
		-0.795220, 0.228276, -0.561707,
		-0.290297, -0.956679, 0.022189,
		43.462952, 38.850155, 21.735270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943542, 39.531380, 21.772593>,  <43.666161, 39.519829, 21.719738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943542, 39.531380, 21.772593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051273, 39.185478, 21.942135>,  <43.115913, 38.977936, 22.043861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051273, 39.185478, 21.942135>,  <42.943542, 39.531380, 21.772593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051273, 39.185478, 21.942135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542214, 0.227573, 0.808835,
		-0.795906, -0.447664, -0.407591,
		0.269330, -0.864758, 0.423857,
		43.132072, 38.926052, 22.069292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377460, 39.353821, 22.171034>,  <42.943542, 39.531380, 21.772593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377460, 39.353821, 22.171034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618248, 39.077812, 22.331781>,  <42.762722, 38.912209, 22.428230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618248, 39.077812, 22.331781>,  <42.377460, 39.353821, 22.171034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618248, 39.077812, 22.331781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400308, 0.174689, 0.899576,
		-0.690930, -0.702390, -0.171064,
		0.601971, -0.690023, 0.401870,
		42.798840, 38.870804, 22.452343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920345, 39.011288, 22.604509>,  <42.377460, 39.353821, 22.171034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920345, 39.011288, 22.604509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261463, 38.894295, 22.777575>,  <42.466133, 38.824100, 22.881414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261463, 38.894295, 22.777575>,  <41.920345, 39.011288, 22.604509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261463, 38.894295, 22.777575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422202, 0.101516, 0.900800,
		-0.307391, -0.950867, -0.036915,
		0.852793, -0.292483, 0.432663,
		42.517300, 38.806549, 22.907373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728096, 38.422195, 23.077494>,  <41.920345, 39.011288, 22.604509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728096, 38.422195, 23.077494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070274, 38.581470, 23.209948>,  <42.275581, 38.677036, 23.289419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070274, 38.581470, 23.209948>,  <41.728096, 38.422195, 23.077494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070274, 38.581470, 23.209948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334481, -0.063344, 0.940271,
		0.395383, -0.915113, 0.079000,
		0.855450, 0.398191, 0.331133,
		42.326908, 38.700928, 23.309288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921795, 38.073406, 23.623501>,  <41.728096, 38.422195, 23.077494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921795, 38.073406, 23.623501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145679, 38.398880, 23.686287>,  <42.280010, 38.594166, 23.723959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145679, 38.398880, 23.686287>,  <41.921795, 38.073406, 23.623501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145679, 38.398880, 23.686287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102153, -0.120223, 0.987477,
		0.822366, -0.568739, 0.015830,
		0.559713, 0.813685, 0.156966,
		42.313595, 38.642986, 23.733377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461292, 37.809013, 23.924973>,  <41.921795, 38.073406, 23.623501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461292, 37.809013, 23.924973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425926, 38.197399, 24.013885>,  <42.404709, 38.430431, 24.067234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425926, 38.197399, 24.013885>,  <42.461292, 37.809013, 23.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425926, 38.197399, 24.013885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291236, -0.238603, 0.926418,
		0.952557, 0.017170, 0.303875,
		-0.088412, 0.970965, 0.222283,
		42.399403, 38.488689, 24.080570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830654, 37.897564, 24.545280>,  <42.461292, 37.809013, 23.924973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830654, 37.897564, 24.545280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615116, 38.234177, 24.529970>,  <42.485794, 38.436146, 24.520784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615116, 38.234177, 24.529970>,  <42.830654, 37.897564, 24.545280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615116, 38.234177, 24.529970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355500, -0.185968, 0.915989,
		0.763718, 0.507185, 0.399374,
		-0.538846, 0.841534, -0.038277,
		42.453461, 38.486637, 24.518488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010128, 38.323570, 25.214960>,  <42.830654, 37.897564, 24.545280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010128, 38.323570, 25.214960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653996, 38.437298, 25.072706>,  <42.440315, 38.505535, 24.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653996, 38.437298, 25.072706>,  <43.010128, 38.323570, 25.214960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653996, 38.437298, 25.072706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416416, -0.192553, 0.888550,
		0.184156, 0.939193, 0.289832,
		-0.890328, 0.284322, -0.355636,
		42.386898, 38.522594, 24.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781647, 38.722313, 25.705870>,  <43.010128, 38.323570, 25.214960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781647, 38.722313, 25.705870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467121, 38.617825, 25.481915>,  <42.278408, 38.555130, 25.347542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467121, 38.617825, 25.481915>,  <42.781647, 38.722313, 25.705870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467121, 38.617825, 25.481915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495730, -0.274095, 0.824090,
		-0.368734, 0.925545, 0.086028,
		-0.786312, -0.261223, -0.559889,
		42.231228, 38.539459, 25.313948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141472, 39.081413, 25.958254>,  <42.781647, 38.722313, 25.705870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141472, 39.081413, 25.958254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003006, 38.755707, 25.771864>,  <41.919926, 38.560284, 25.660030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003006, 38.755707, 25.771864>,  <42.141472, 39.081413, 25.958254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003006, 38.755707, 25.771864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539648, -0.233471, 0.808870,
		-0.767431, 0.531465, -0.358601,
		-0.346163, -0.814270, -0.465977,
		41.899158, 38.511425, 25.632071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505577, 38.977016, 26.266626>,  <42.141472, 39.081413, 25.958254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505577, 38.977016, 26.266626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558132, 38.624985, 26.084114>,  <41.589664, 38.413765, 25.974606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558132, 38.624985, 26.084114>,  <41.505577, 38.977016, 26.266626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558132, 38.624985, 26.084114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582363, -0.441001, 0.682914,
		-0.802241, 0.175995, -0.570470,
		0.131389, -0.880082, -0.456282,
		41.597549, 38.360962, 25.947229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819439, 38.653187, 26.206053>,  <41.505577, 38.977016, 26.266626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819439, 38.653187, 26.206053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071896, 38.342945, 26.202026>,  <41.223370, 38.156799, 26.199612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071896, 38.342945, 26.202026>,  <40.819439, 38.653187, 26.206053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071896, 38.342945, 26.202026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576437, -0.477674, 0.662984,
		-0.519023, -0.412631, -0.748566,
		0.631138, -0.775605, -0.010068,
		41.261238, 38.110264, 26.199007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382122, 38.005287, 26.397865>,  <40.819439, 38.653187, 26.206053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382122, 38.005287, 26.397865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766098, 37.916309, 26.466024>,  <40.996483, 37.862923, 26.506920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766098, 37.916309, 26.466024>,  <40.382122, 38.005287, 26.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766098, 37.916309, 26.466024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268113, -0.552438, 0.789257,
		-0.081430, -0.803325, -0.589947,
		0.959940, -0.222442, 0.170397,
		41.054081, 37.849575, 26.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413437, 37.339722, 26.669107>,  <40.382122, 38.005287, 26.397865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413437, 37.339722, 26.669107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778271, 37.472668, 26.765133>,  <40.997173, 37.552437, 26.822748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778271, 37.472668, 26.765133>,  <40.413437, 37.339722, 26.669107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778271, 37.472668, 26.765133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059989, -0.471045, 0.880067,
		0.405584, -0.817099, -0.409696,
		0.912087, 0.332364, 0.240065,
		41.051895, 37.572376, 26.837152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638958, 36.828011, 27.007206>,  <40.413437, 37.339722, 26.669107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638958, 36.828011, 27.007206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875530, 37.118053, 27.148302>,  <41.017475, 37.292080, 27.232960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875530, 37.118053, 27.148302>,  <40.638958, 36.828011, 27.007206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875530, 37.118053, 27.148302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188826, -0.300744, 0.934825,
		0.783935, -0.619491, -0.040950,
		0.591431, 0.725109, 0.352740,
		41.052959, 37.335587, 27.254124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045029, 36.607513, 27.516865>,  <40.638958, 36.828011, 27.007206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045029, 36.607513, 27.516865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068981, 36.998379, 27.598421>,  <41.083351, 37.232899, 27.647356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068981, 36.998379, 27.598421>,  <41.045029, 36.607513, 27.516865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068981, 36.998379, 27.598421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239330, -0.184247, 0.953296,
		0.969090, -0.105879, 0.222832,
		0.059878, 0.977161, 0.203892,
		41.086945, 37.291527, 27.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614433, 36.727634, 28.079067>,  <41.045029, 36.607513, 27.516865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614433, 36.727634, 28.079067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377319, 37.049744, 28.074396>,  <41.235050, 37.243011, 28.071592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377319, 37.049744, 28.074396>,  <41.614433, 36.727634, 28.079067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377319, 37.049744, 28.074396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093508, -0.054417, 0.994130,
		0.799912, 0.590399, 0.107557,
		-0.592787, 0.805275, -0.011679,
		41.199482, 37.291325, 28.070892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564960, 37.017452, 28.758348>,  <41.614433, 36.727634, 28.079067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564960, 37.017452, 28.758348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242901, 37.209312, 28.618822>,  <41.049667, 37.324429, 28.535107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242901, 37.209312, 28.618822>,  <41.564960, 37.017452, 28.758348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242901, 37.209312, 28.618822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377692, 0.038774, 0.925119,
		0.457262, 0.876601, 0.149943,
		-0.805146, 0.479654, -0.348815,
		41.001358, 37.353210, 28.514177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431488, 37.622524, 29.214708>,  <41.564960, 37.017452, 28.758348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431488, 37.622524, 29.214708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081532, 37.548405, 29.035717>,  <40.871559, 37.503933, 28.928322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081532, 37.548405, 29.035717>,  <41.431488, 37.622524, 29.214708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081532, 37.548405, 29.035717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468037, 0.085874, 0.879527,
		-0.124550, 0.978923, -0.161857,
		-0.874888, -0.185300, -0.447476,
		40.819065, 37.492813, 28.901474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933392, 38.030296, 29.531345>,  <41.431488, 37.622524, 29.214708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933392, 38.030296, 29.531345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690590, 37.760872, 29.362654>,  <40.544910, 37.599216, 29.261438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690590, 37.760872, 29.362654>,  <40.933392, 38.030296, 29.531345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690590, 37.760872, 29.362654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461235, -0.133552, 0.877170,
		-0.647153, 0.726962, -0.229605,
		-0.607005, -0.673565, -0.421729,
		40.508488, 37.558804, 29.236135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289577, 38.301235, 29.521534>,  <40.933392, 38.030296, 29.531345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289577, 38.301235, 29.521534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227825, 37.906033, 29.519953>,  <40.190773, 37.668911, 29.519003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227825, 37.906033, 29.519953>,  <40.289577, 38.301235, 29.521534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227825, 37.906033, 29.519953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548948, 0.082449, 0.831780,
		-0.821475, 0.130586, -0.555092,
		-0.154386, -0.988003, -0.003955,
		40.181511, 37.609631, 29.518766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615498, 38.257328, 29.807543>,  <40.289577, 38.301235, 29.521534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615498, 38.257328, 29.807543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771202, 37.889332, 29.825811>,  <39.864624, 37.668533, 29.836773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771202, 37.889332, 29.825811>,  <39.615498, 38.257328, 29.807543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771202, 37.889332, 29.825811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355092, -0.104125, 0.929014,
		-0.849931, -0.377849, -0.367215,
		0.389263, -0.919994, 0.045672,
		39.887981, 37.613335, 29.839514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042660, 37.731152, 30.125624>,  <39.615498, 38.257328, 29.807543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042660, 37.731152, 30.125624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413128, 37.594852, 30.190258>,  <39.635406, 37.513073, 30.229038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413128, 37.594852, 30.190258>,  <39.042660, 37.731152, 30.125624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413128, 37.594852, 30.190258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309276, -0.441129, 0.842469,
		-0.215785, -0.830241, -0.513942,
		0.926167, -0.340742, 0.161584,
		39.690979, 37.492630, 30.238733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895977, 37.084705, 30.529196>,  <39.042660, 37.731152, 30.125624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895977, 37.084705, 30.529196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283096, 37.173412, 30.576847>,  <39.515366, 37.226635, 30.605438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283096, 37.173412, 30.576847>,  <38.895977, 37.084705, 30.529196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283096, 37.173412, 30.576847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021862, -0.397391, 0.917389,
		0.250784, -0.890450, -0.379745,
		0.967796, 0.221765, 0.119126,
		39.573437, 37.239941, 30.612585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308819, 36.528076, 30.636190>,  <38.895977, 37.084705, 30.529196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308819, 36.528076, 30.636190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511280, 36.819386, 30.820980>,  <39.632759, 36.994171, 30.931854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511280, 36.819386, 30.820980>,  <39.308819, 36.528076, 30.636190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511280, 36.819386, 30.820980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080661, -0.493334, 0.866092,
		0.858662, -0.475641, -0.190960,
		0.506156, 0.728277, 0.461972,
		39.663128, 37.037868, 30.959572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732620, 36.202114, 31.119255>,  <39.308819, 36.528076, 30.636190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732620, 36.202114, 31.119255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715080, 36.578869, 31.252474>,  <39.704556, 36.804924, 31.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715080, 36.578869, 31.252474>,  <39.732620, 36.202114, 31.119255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715080, 36.578869, 31.252474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173500, -0.321123, 0.931009,
		0.983857, 0.098611, -0.149336,
		-0.043852, 0.941890, 0.333048,
		39.701923, 36.861435, 31.352388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155121, 36.156639, 31.748308>,  <39.732620, 36.202114, 31.119255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155121, 36.156639, 31.748308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981636, 36.515549, 31.781300>,  <39.877544, 36.730892, 31.801094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981636, 36.515549, 31.781300>,  <40.155121, 36.156639, 31.748308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981636, 36.515549, 31.781300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048276, -0.068264, 0.996499,
		0.899759, 0.436171, -0.013711,
		-0.433708, 0.897271, 0.082478,
		39.851524, 36.784729, 31.806044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541512, 36.515041, 32.218060>,  <40.155121, 36.156639, 31.748308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541512, 36.515041, 32.218060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189831, 36.704082, 32.242249>,  <39.978825, 36.817505, 32.256763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189831, 36.704082, 32.242249>,  <40.541512, 36.515041, 32.218060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189831, 36.704082, 32.242249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108401, 0.074820, 0.991288,
		0.463958, 0.878095, -0.117012,
		-0.879200, 0.472600, 0.060473,
		39.926071, 36.845863, 32.260391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698078, 37.100376, 32.639435>,  <40.541512, 36.515041, 32.218060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698078, 37.100376, 32.639435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304424, 37.037823, 32.672939>,  <40.068230, 37.000290, 32.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304424, 37.037823, 32.672939>,  <40.698078, 37.100376, 32.639435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304424, 37.037823, 32.672939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082265, 0.016023, 0.996482,
		-0.157173, 0.987567, -0.002904,
		-0.984139, -0.156381, 0.083761,
		40.009182, 36.990910, 32.698067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452736, 37.572781, 33.193611>,  <40.698078, 37.100376, 32.639435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452736, 37.572781, 33.193611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217094, 37.251900, 33.154758>,  <40.075710, 37.059372, 33.131447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217094, 37.251900, 33.154758>,  <40.452736, 37.572781, 33.193611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217094, 37.251900, 33.154758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000519, -0.119825, 0.992795,
		-0.808060, 0.584906, 0.070173,
		-0.589100, -0.802201, -0.097130,
		40.040363, 37.011238, 33.125618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051258, 37.610859, 33.818073>,  <40.452736, 37.572781, 33.193611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051258, 37.610859, 33.818073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961750, 37.240341, 33.696812>,  <39.908043, 37.018032, 33.624054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961750, 37.240341, 33.696812>,  <40.051258, 37.610859, 33.818073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961750, 37.240341, 33.696812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015603, -0.314411, 0.949159,
		-0.974517, 0.207666, 0.084809,
		-0.223773, -0.926294, -0.303158,
		39.894619, 36.962452, 33.605865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305592, 37.407429, 34.076012>,  <40.051258, 37.610859, 33.818073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305592, 37.407429, 34.076012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531818, 37.081871, 34.022781>,  <39.667553, 36.886536, 33.990841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531818, 37.081871, 34.022781>,  <39.305592, 37.407429, 34.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531818, 37.081871, 34.022781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260694, -0.329525, 0.907443,
		-0.782418, -0.478523, -0.398545,
		0.565563, -0.813897, -0.133078,
		39.701488, 36.837704, 33.982857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973278, 36.853542, 34.405872>,  <39.305592, 37.407429, 34.076012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973278, 36.853542, 34.405872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339554, 36.697533, 34.367100>,  <39.559319, 36.603928, 34.343838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339554, 36.697533, 34.367100>,  <38.973278, 36.853542, 34.405872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339554, 36.697533, 34.367100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151311, -0.558009, 0.815924,
		-0.372318, -0.732466, -0.569977,
		0.915688, -0.390027, -0.096927,
		39.614262, 36.580524, 34.338020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895508, 36.194233, 34.746941>,  <38.973278, 36.853542, 34.405872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895508, 36.194233, 34.746941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288216, 36.269844, 34.754871>,  <39.523842, 36.315212, 34.759628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288216, 36.269844, 34.754871>,  <38.895508, 36.194233, 34.746941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288216, 36.269844, 34.754871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077568, -0.493705, 0.866163,
		0.173521, -0.848836, -0.499368,
		0.981771, 0.189032, 0.019826,
		39.582748, 36.326553, 34.760818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158234, 35.573517, 34.856678>,  <38.895508, 36.194233, 34.746941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158234, 35.573517, 34.856678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427689, 35.849205, 34.963409>,  <39.589359, 36.014618, 35.027447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427689, 35.849205, 34.963409>,  <39.158234, 35.573517, 34.856678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427689, 35.849205, 34.963409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083436, -0.429647, 0.899134,
		0.734341, -0.583423, -0.346930,
		0.673633, 0.689218, 0.266829,
		39.629780, 36.055969, 35.043457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619991, 35.196995, 35.223988>,  <39.158234, 35.573517, 34.856678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619991, 35.196995, 35.223988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673885, 35.580181, 35.325302>,  <39.706223, 35.810093, 35.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673885, 35.580181, 35.325302>,  <39.619991, 35.196995, 35.223988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673885, 35.580181, 35.325302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134960, -0.270978, 0.953077,
		0.981647, -0.094234, -0.165798,
		0.134740, 0.957962, 0.253287,
		39.714306, 35.867569, 35.401287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124039, 35.055500, 35.666588>,  <39.619991, 35.196995, 35.223988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124039, 35.055500, 35.666588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019588, 35.436852, 35.727108>,  <39.956921, 35.665661, 35.763420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019588, 35.436852, 35.727108>,  <40.124039, 35.055500, 35.666588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019588, 35.436852, 35.727108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089647, -0.132111, 0.987173,
		0.961134, 0.271335, -0.050970,
		-0.261121, 0.953375, 0.151301,
		39.941254, 35.722862, 35.772499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566322, 35.303177, 36.155319>,  <40.124039, 35.055500, 35.666588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566322, 35.303177, 36.155319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254845, 35.552170, 36.186687>,  <40.067959, 35.701565, 36.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254845, 35.552170, 36.186687>,  <40.566322, 35.303177, 36.155319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254845, 35.552170, 36.186687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001919, -0.122630, 0.992450,
		0.627402, 0.772965, 0.094297,
		-0.778693, 0.622485, 0.078422,
		40.021236, 35.738914, 36.210213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635620, 35.475460, 36.791977>,  <40.566322, 35.303177, 36.155319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635620, 35.475460, 36.791977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274857, 35.632954, 36.720947>,  <40.058399, 35.727451, 36.678329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274857, 35.632954, 36.720947>,  <40.635620, 35.475460, 36.791977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274857, 35.632954, 36.720947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280230, -0.220561, 0.934251,
		0.328683, 0.892370, 0.309263,
		-0.901908, 0.393737, -0.177574,
		40.004284, 35.751076, 36.667675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546547, 35.926468, 37.302483>,  <40.635620, 35.475460, 36.791977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546547, 35.926468, 37.302483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193485, 35.808041, 37.156464>,  <39.981647, 35.736984, 37.068851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193485, 35.808041, 37.156464>,  <40.546547, 35.926468, 37.302483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193485, 35.808041, 37.156464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299278, -0.244854, 0.922214,
		-0.362423, 0.923249, 0.127515,
		-0.882656, -0.296070, -0.365049,
		39.928688, 35.719219, 37.046947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180000, 36.111771, 37.777817>,  <40.546547, 35.926468, 37.302483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180000, 36.111771, 37.777817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930428, 35.850945, 37.605534>,  <39.780682, 35.694447, 37.502163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930428, 35.850945, 37.605534>,  <40.180000, 36.111771, 37.777817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930428, 35.850945, 37.605534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507032, -0.081616, 0.858055,
		-0.594664, 0.753754, -0.279696,
		-0.623935, -0.652069, -0.430711,
		39.743248, 35.655323, 37.476318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494976, 36.349072, 37.896416>,  <40.180000, 36.111771, 37.777817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494976, 36.349072, 37.896416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447639, 35.954136, 37.854176>,  <39.419235, 35.717175, 37.828831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447639, 35.954136, 37.854176>,  <39.494976, 36.349072, 37.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447639, 35.954136, 37.854176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387684, -0.051962, 0.920327,
		-0.914164, 0.149854, -0.376627,
		-0.118344, -0.987342, -0.105598,
		39.412136, 35.657932, 37.822495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810184, 36.080738, 38.094017>,  <39.494976, 36.349072, 37.896416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810184, 36.080738, 38.094017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080627, 35.793041, 38.157974>,  <39.242893, 35.620422, 38.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080627, 35.793041, 38.157974>,  <38.810184, 36.080738, 38.094017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080627, 35.793041, 38.157974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390123, -0.165369, 0.905791,
		-0.625043, -0.674791, -0.392401,
		0.676111, -0.719242, 0.159889,
		39.283463, 35.577271, 38.205940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439888, 35.649532, 38.510605>,  <38.810184, 36.080738, 38.094017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439888, 35.649532, 38.510605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812202, 35.509472, 38.552605>,  <39.035591, 35.425434, 38.577805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812202, 35.509472, 38.552605>,  <38.439888, 35.649532, 38.510605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812202, 35.509472, 38.552605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188546, -0.213780, 0.958514,
		-0.313182, -0.911970, -0.265005,
		0.930789, -0.350155, 0.104996,
		39.091438, 35.404427, 38.584103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427780, 34.856682, 38.513302>,  <38.439888, 35.649532, 38.510605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427780, 34.856682, 38.513302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733768, 35.024960, 38.708374>,  <38.917362, 35.125927, 38.825417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733768, 35.024960, 38.708374>,  <38.427780, 34.856682, 38.513302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733768, 35.024960, 38.708374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259162, -0.492127, 0.831051,
		0.589620, -0.762120, -0.267436,
		0.764973, 0.420695, 0.487681,
		38.963261, 35.151169, 38.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553719, 34.321777, 39.020470>,  <38.427780, 34.856682, 38.513302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553719, 34.321777, 39.020470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827389, 34.574738, 39.165783>,  <38.991592, 34.726513, 39.252972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827389, 34.574738, 39.165783>,  <38.553719, 34.321777, 39.020470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827389, 34.574738, 39.165783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043716, -0.461655, 0.885982,
		0.728006, -0.622048, -0.288208,
		0.684176, 0.632400, 0.363281,
		39.032642, 34.764458, 39.274769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989758, 33.880703, 39.350525>,  <38.553719, 34.321777, 39.020470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989758, 33.880703, 39.350525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010746, 34.249470, 39.504051>,  <39.023338, 34.470730, 39.596165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010746, 34.249470, 39.504051>,  <38.989758, 33.880703, 39.350525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010746, 34.249470, 39.504051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059616, -0.380764, 0.922748,
		0.996841, -0.071303, 0.034980,
		0.052475, 0.921919, 0.383812,
		39.026489, 34.526047, 39.619194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521980, 33.828876, 39.906971>,  <38.989758, 33.880703, 39.350525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521980, 33.828876, 39.906971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292484, 34.153412, 39.951782>,  <39.154785, 34.348133, 39.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292484, 34.153412, 39.951782>,  <39.521980, 33.828876, 39.906971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292484, 34.153412, 39.951782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106472, -0.209502, 0.971994,
		0.812087, 0.545745, 0.206585,
		-0.573741, 0.811339, 0.112027,
		39.120361, 34.396812, 39.985390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768475, 34.267883, 40.443462>,  <39.521980, 33.828876, 39.906971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768475, 34.267883, 40.443462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 34.335972, 40.391502>,  <39.143322, 34.376827, 40.360325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377754, 34.335972, 40.391502>,  <39.768475, 34.267883, 40.443462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377754, 34.335972, 40.391502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117125, 0.083097, 0.989635,
		0.179256, 0.981895, -0.061232,
		-0.976806, 0.170226, -0.129900,
		39.084713, 34.387039, 40.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654144, 34.900513, 40.650246>,  <39.768475, 34.267883, 40.443462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654144, 34.900513, 40.650246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330780, 34.669376, 40.695084>,  <39.136761, 34.530693, 40.721985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330780, 34.669376, 40.695084>,  <39.654144, 34.900513, 40.650246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330780, 34.669376, 40.695084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021200, 0.161728, 0.986608,
		-0.588231, 0.799965, -0.118493,
		-0.808415, -0.577841, 0.112092,
		39.088257, 34.496025, 40.728710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196743, 35.285027, 40.986870>,  <39.654144, 34.900513, 40.650246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196743, 35.285027, 40.986870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043472, 34.920670, 41.048122>,  <38.951508, 34.702057, 41.084873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043472, 34.920670, 41.048122>,  <39.196743, 35.285027, 40.986870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043472, 34.920670, 41.048122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291327, 0.276506, 0.915791,
		-0.876529, 0.306301, -0.371318,
		-0.383179, -0.910892, 0.153132,
		38.928520, 34.647404, 41.094063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601440, 35.431843, 41.380352>,  <39.196743, 35.285027, 40.986870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601440, 35.431843, 41.380352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652897, 35.039619, 41.439636>,  <38.683773, 34.804287, 41.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652897, 35.039619, 41.439636>,  <38.601440, 35.431843, 41.380352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652897, 35.039619, 41.439636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256585, 0.111448, 0.960075,
		-0.957922, -0.161535, -0.237259,
		0.128644, -0.980554, 0.148206,
		38.691490, 34.745453, 41.484097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984184, 35.166634, 41.801563>,  <38.601440, 35.431843, 41.380352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984184, 35.166634, 41.801563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327122, 34.970539, 41.864342>,  <38.532883, 34.852882, 41.902008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327122, 34.970539, 41.864342>,  <37.984184, 35.166634, 41.801563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327122, 34.970539, 41.864342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094329, 0.150100, 0.984161,
		-0.506029, -0.858567, 0.082443,
		0.857343, -0.490237, 0.156943,
		38.584324, 34.823467, 41.911423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549366, 35.711765, 41.948215>,  <37.984184, 35.166634, 41.801563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549366, 35.711765, 41.948215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405159, 35.356216, 42.061306>,  <37.318634, 35.142887, 42.129162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405159, 35.356216, 42.061306>,  <37.549366, 35.711765, 41.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405159, 35.356216, 42.061306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781611, -0.122471, 0.611625,
		-0.509029, 0.441486, 0.738904,
		-0.360519, -0.888871, 0.282729,
		37.297005, 35.089554, 42.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712875, 35.634792, 42.667084>,  <37.549366, 35.711765, 41.948215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712875, 35.634792, 42.667084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666771, 35.271099, 42.507076>,  <37.639111, 35.052883, 42.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666771, 35.271099, 42.507076>,  <37.712875, 35.634792, 42.667084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666771, 35.271099, 42.507076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816764, -0.315938, 0.482784,
		-0.565343, -0.271075, 0.779041,
		-0.115258, -0.909231, -0.400018,
		37.632195, 34.998329, 42.387070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493896, 35.382992, 42.633110>,  <37.712875, 35.634792, 42.667084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493896, 35.382992, 42.633110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545238, 35.045990, 42.842377>,  <38.576042, 34.843788, 42.967937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545238, 35.045990, 42.842377>,  <38.493896, 35.382992, 42.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545238, 35.045990, 42.842377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081935, -0.516720, -0.852225,
		0.988338, 0.152249, 0.002709,
		0.128351, -0.842508, 0.523169,
		38.583744, 34.793236, 42.999329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072727, 35.070374, 42.488007>,  <38.493896, 35.382992, 42.633110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072727, 35.070374, 42.488007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844528, 34.768066, 42.616592>,  <38.707607, 34.586681, 42.693745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844528, 34.768066, 42.616592>,  <39.072727, 35.070374, 42.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844528, 34.768066, 42.616592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238429, -0.526962, -0.815759,
		0.785927, -0.388744, 0.480830,
		-0.570501, -0.755771, 0.321465,
		38.673378, 34.541336, 42.713032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546093, 34.539314, 42.414356>,  <39.072727, 35.070374, 42.488007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546093, 34.539314, 42.414356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155319, 34.460827, 42.380665>,  <38.920856, 34.413734, 42.360451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155319, 34.460827, 42.380665>,  <39.546093, 34.539314, 42.414356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155319, 34.460827, 42.380665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151381, -0.358231, -0.921279,
		0.150601, -0.912780, 0.379673,
		-0.976935, -0.196221, -0.084228,
		38.862240, 34.401962, 42.355396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399193, 33.871315, 42.200741>,  <39.546093, 34.539314, 42.414356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399193, 33.871315, 42.200741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082325, 34.081116, 42.075928>,  <38.892204, 34.206997, 42.001041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082325, 34.081116, 42.075928>,  <39.399193, 33.871315, 42.200741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082325, 34.081116, 42.075928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145104, -0.334744, -0.931070,
		-0.592800, -0.782842, 0.189066,
		-0.792170, 0.524504, -0.312030,
		38.844673, 34.238468, 41.982319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066387, 33.554199, 41.681698>,  <39.399193, 33.871315, 42.200741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066387, 33.554199, 41.681698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911514, 33.916641, 41.613499>,  <38.818592, 34.134106, 41.572578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911514, 33.916641, 41.613499>,  <39.066387, 33.554199, 41.681698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911514, 33.916641, 41.613499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058619, -0.208741, -0.976213,
		-0.920139, -0.367975, 0.133935,
		-0.387180, 0.906102, -0.170501,
		38.795361, 34.188473, 41.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580120, 33.448326, 41.138599>,  <39.066387, 33.554199, 41.681698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580120, 33.448326, 41.138599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641506, 33.843529, 41.145409>,  <38.678337, 34.080650, 41.149494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641506, 33.843529, 41.145409>,  <38.580120, 33.448326, 41.138599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641506, 33.843529, 41.145409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105805, 0.000700, -0.994387,
		-0.982473, 0.154409, -0.104429,
		0.153469, 0.988007, 0.017025,
		38.687546, 34.139931, 41.150517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991581, 33.758705, 40.804119>,  <38.580120, 33.448326, 41.138599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991581, 33.758705, 40.804119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333092, 33.965893, 40.783051>,  <38.537998, 34.090206, 40.770409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333092, 33.965893, 40.783051>,  <37.991581, 33.758705, 40.804119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333092, 33.965893, 40.783051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044328, -0.028480, -0.998611,
		-0.518752, 0.854924, -0.001355,
		0.853775, 0.517971, -0.052671,
		38.589226, 34.121284, 40.767250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813049, 34.370415, 40.347679>,  <37.991581, 33.758705, 40.804119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813049, 34.370415, 40.347679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203121, 34.284397, 40.368755>,  <38.437164, 34.232788, 40.381401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203121, 34.284397, 40.368755>,  <37.813049, 34.370415, 40.347679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203121, 34.284397, 40.368755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073775, 0.091247, -0.993092,
		0.208749, 0.972333, 0.104847,
		0.975183, -0.215042, 0.052686,
		38.495674, 34.219883, 40.384560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055119, 35.160141, 40.385891>,  <37.813049, 34.370415, 40.347679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055119, 35.160141, 40.385891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413845, 35.048985, 40.523579>,  <38.629082, 34.982288, 40.606190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413845, 35.048985, 40.523579>,  <38.055119, 35.160141, 40.385891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413845, 35.048985, 40.523579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433280, 0.394611, -0.810278,
		0.089339, 0.875818, 0.474301,
		0.896820, -0.277895, 0.344221,
		38.682892, 34.965614, 40.626846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481907, 35.621841, 40.110504>,  <38.055119, 35.160141, 40.385891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481907, 35.621841, 40.110504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724697, 35.311852, 40.180912>,  <38.870373, 35.125858, 40.223156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724697, 35.311852, 40.180912>,  <38.481907, 35.621841, 40.110504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724697, 35.311852, 40.180912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418605, 0.123501, -0.899732,
		0.675534, 0.619803, 0.399372,
		0.606979, -0.774979, 0.176024,
		38.906792, 35.079357, 40.233719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224640, 35.749210, 40.137440>,  <38.481907, 35.621841, 40.110504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224640, 35.749210, 40.137440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158455, 35.386898, 39.981400>,  <39.118744, 35.169510, 39.887775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158455, 35.386898, 39.981400>,  <39.224640, 35.749210, 40.137440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158455, 35.386898, 39.981400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439656, 0.286323, -0.851306,
		0.882793, -0.312370, 0.350857,
		-0.165464, -0.905784, -0.390099,
		39.108814, 35.115162, 39.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876572, 35.601555, 39.778629>,  <39.224640, 35.749210, 40.137440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876572, 35.601555, 39.778629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596027, 35.359898, 39.627312>,  <39.427700, 35.214905, 39.536522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596027, 35.359898, 39.627312>,  <39.876572, 35.601555, 39.778629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596027, 35.359898, 39.627312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301210, 0.229806, -0.925452,
		0.646041, -0.763020, 0.020798,
		-0.701358, -0.604144, -0.378294,
		39.385620, 35.178654, 39.513824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213615, 35.414120, 39.096001>,  <39.876572, 35.601555, 39.778629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213615, 35.414120, 39.096001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840408, 35.272789, 39.068748>,  <39.616486, 35.187992, 39.052395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840408, 35.272789, 39.068748>,  <40.213615, 35.414120, 39.096001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840408, 35.272789, 39.068748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069085, 0.009937, -0.997561,
		0.353144, -0.935447, 0.015138,
		-0.933015, -0.353328, -0.068135,
		39.560505, 35.166790, 39.048309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217197, 34.838051, 38.680748>,  <40.213615, 35.414120, 39.096001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217197, 34.838051, 38.680748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856213, 35.005836, 38.641521>,  <39.639622, 35.106506, 38.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856213, 35.005836, 38.641521>,  <40.217197, 34.838051, 38.680748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856213, 35.005836, 38.641521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146329, 0.084397, -0.985629,
		-0.405158, -0.903841, -0.137544,
		-0.902460, 0.419462, -0.098064,
		39.585476, 35.131676, 38.612103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792385, 34.422981, 38.225159>,  <40.217197, 34.838051, 38.680748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792385, 34.422981, 38.225159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692734, 34.810360, 38.227951>,  <39.632942, 35.042786, 38.229626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692734, 34.810360, 38.227951>,  <39.792385, 34.422981, 38.225159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692734, 34.810360, 38.227951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072857, 0.025927, -0.997005,
		-0.965725, -0.247876, -0.077017,
		-0.249131, 0.968444, 0.006979,
		39.617996, 35.100895, 38.230045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581596, 34.446613, 37.556652>,  <39.792385, 34.422981, 38.225159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581596, 34.446613, 37.556652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542564, 34.828152, 37.670254>,  <39.519146, 35.057076, 37.738415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542564, 34.828152, 37.670254>,  <39.581596, 34.446613, 37.556652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542564, 34.828152, 37.670254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017700, 0.286980, -0.957773,
		-0.995071, -0.088429, -0.044885,
		-0.097576, 0.953846, 0.284000,
		39.513290, 35.114307, 37.755455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070263, 34.702950, 37.042244>,  <39.581596, 34.446613, 37.556652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070263, 34.702950, 37.042244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271194, 35.026699, 37.163948>,  <39.391754, 35.220951, 37.236973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271194, 35.026699, 37.163948>,  <39.070263, 34.702950, 37.042244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271194, 35.026699, 37.163948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018307, 0.361757, -0.932093,
		-0.864484, 0.462644, 0.196537,
		0.502326, 0.809378, 0.304264,
		39.421894, 35.269512, 37.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786118, 35.232559, 36.675713>,  <39.070263, 34.702950, 37.042244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786118, 35.232559, 36.675713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 35.393227, 36.785130>,  <39.345463, 35.489628, 36.850780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 35.393227, 36.785130>,  <38.786118, 35.232559, 36.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135708, 35.393227, 36.785130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084198, 0.429209, -0.899272,
		-0.478620, 0.808974, 0.341299,
		0.873976, 0.401673, 0.273542,
		39.397900, 35.513729, 36.867191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732887, 35.851398, 36.641918>,  <38.786118, 35.232559, 36.675713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732887, 35.851398, 36.641918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124870, 35.799278, 36.581635>,  <39.360058, 35.768005, 36.545464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124870, 35.799278, 36.581635>,  <38.732887, 35.851398, 36.641918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124870, 35.799278, 36.581635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048049, 0.579584, -0.813495,
		0.193346, 0.804428, 0.561705,
		0.979953, -0.130297, -0.150712,
		39.418858, 35.760189, 36.536423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931683, 36.442364, 36.253941>,  <38.732887, 35.851398, 36.641918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931683, 36.442364, 36.253941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271469, 36.231731, 36.240520>,  <39.475342, 36.105354, 36.232468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.271469, 36.231731, 36.240520>,  <38.931683, 36.442364, 36.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271469, 36.231731, 36.240520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296102, 0.528360, -0.795713,
		0.436731, 0.665996, 0.604744,
		0.849464, -0.526579, -0.033549,
		39.526310, 36.073757, 36.230457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434658, 36.966362, 36.096436>,  <38.931683, 36.442364, 36.253941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434658, 36.966362, 36.096436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629543, 36.629692, 36.003307>,  <39.746475, 36.427689, 35.947430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629543, 36.629692, 36.003307>,  <39.434658, 36.966362, 36.096436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629543, 36.629692, 36.003307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290470, 0.407618, -0.865722,
		0.823559, 0.354164, 0.443078,
		0.487214, -0.841674, -0.232823,
		39.775707, 36.377190, 35.933460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097046, 37.054890, 35.765182>,  <39.434658, 36.966362, 36.096436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097046, 37.054890, 35.765182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990189, 36.686428, 35.651970>,  <39.926075, 36.465351, 35.584042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990189, 36.686428, 35.651970>,  <40.097046, 37.054890, 35.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990189, 36.686428, 35.651970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010025, 0.296344, -0.955029,
		0.963605, -0.252291, -0.088400,
		-0.267142, -0.921157, -0.283029,
		39.910046, 36.410080, 35.567062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506367, 36.972343, 35.245850>,  <40.097046, 37.054890, 35.765182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506367, 36.972343, 35.245850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230705, 36.684433, 35.212406>,  <40.065308, 36.511688, 35.192341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230705, 36.684433, 35.212406>,  <40.506367, 36.972343, 35.245850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230705, 36.684433, 35.212406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051445, 0.163689, -0.985170,
		0.722787, -0.674632, -0.149836,
		-0.689153, -0.719776, -0.083606,
		40.023960, 36.468502, 35.187325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862789, 36.456295, 34.772724>,  <40.506367, 36.972343, 35.245850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862789, 36.456295, 34.772724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464279, 36.423576, 34.761742>,  <40.225174, 36.403946, 34.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464279, 36.423576, 34.761742>,  <40.862789, 36.456295, 34.772724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464279, 36.423576, 34.761742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007338, 0.236686, -0.971559,
		0.085968, -0.968137, -0.235203,
		-0.996271, -0.081797, -0.027452,
		40.165398, 36.399036, 34.753506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346279, 36.798088, 35.358868>,  <40.862789, 36.456295, 34.772724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346279, 36.798088, 35.358868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385437, 37.193478, 35.405071>,  <41.408932, 37.430710, 35.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385437, 37.193478, 35.405071>,  <41.346279, 36.798088, 35.358868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385437, 37.193478, 35.405071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685276, 0.151119, -0.712433,
		-0.721675, -0.009417, 0.692168,
		0.097891, 0.988471, 0.115512,
		41.414803, 37.490021, 35.439724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937935, 36.781475, 34.870369>,  <41.346279, 36.798088, 35.358868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937935, 36.781475, 34.870369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223450, 36.531639, 34.743633>,  <42.394760, 36.381737, 34.667591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223450, 36.531639, 34.743633>,  <41.937935, 36.781475, 34.870369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223450, 36.531639, 34.743633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098392, -0.358477, 0.928339,
		-0.693414, -0.693813, -0.194423,
		0.713790, -0.624594, -0.316839,
		42.437588, 36.344261, 34.648582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827442, 36.123898, 35.199230>,  <41.937935, 36.781475, 34.870369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827442, 36.123898, 35.199230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217236, 36.155178, 35.115070>,  <42.451111, 36.173946, 35.064575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217236, 36.155178, 35.115070>,  <41.827442, 36.123898, 35.199230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217236, 36.155178, 35.115070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223549, -0.253393, 0.941179,
		0.020290, -0.964197, -0.264410,
		0.974481, 0.078205, -0.210404,
		42.509579, 36.178638, 35.051949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197472, 35.498474, 35.304989>,  <41.827442, 36.123898, 35.199230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197472, 35.498474, 35.304989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448006, 35.801643, 35.377934>,  <42.598328, 35.983543, 35.421700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448006, 35.801643, 35.377934>,  <42.197472, 35.498474, 35.304989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448006, 35.801643, 35.377934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438320, -0.535847, 0.721625,
		0.644656, -0.372046, -0.667833,
		0.626334, 0.757924, 0.182362,
		42.635906, 36.029022, 35.432644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772209, 35.226925, 35.407700>,  <42.197472, 35.498474, 35.304989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772209, 35.226925, 35.407700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827553, 35.584625, 35.577957>,  <42.860760, 35.799244, 35.680111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827553, 35.584625, 35.577957>,  <42.772209, 35.226925, 35.407700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827553, 35.584625, 35.577957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554406, -0.426063, 0.714916,
		0.820666, 0.137070, -0.554725,
		0.138354, 0.894249, 0.425648,
		42.869061, 35.852901, 35.705650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391788, 35.210747, 35.706295>,  <42.772209, 35.226925, 35.407700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391788, 35.210747, 35.706295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163033, 35.469780, 35.907726>,  <43.025780, 35.625198, 36.028584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163033, 35.469780, 35.907726>,  <43.391788, 35.210747, 35.706295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163033, 35.469780, 35.907726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329763, -0.380606, 0.863942,
		0.751134, 0.660136, 0.004116,
		-0.571886, 0.647579, 0.503575,
		42.991467, 35.664055, 36.058800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622574, 35.372505, 36.373795>,  <43.391788, 35.210747, 35.706295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622574, 35.372505, 36.373795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235283, 35.463928, 36.414406>,  <43.002911, 35.518780, 36.438770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.235283, 35.463928, 36.414406>,  <43.622574, 35.372505, 36.373795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.235283, 35.463928, 36.414406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056589, -0.195202, 0.979129,
		0.243601, 0.953761, 0.176065,
		-0.968223, 0.228553, 0.101524,
		42.944817, 35.532494, 36.444862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352909, 35.076313, 36.280109>,  <43.622574, 35.372505, 36.373795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352909, 35.076313, 36.280109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123070, 35.345966, 36.094471>,  <43.985165, 35.507759, 35.983089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123070, 35.345966, 36.094471>,  <44.352909, 35.076313, 36.280109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123070, 35.345966, 36.094471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809641, 0.385310, -0.442739,
		-0.119643, -0.630148, -0.767202,
		-0.574602, 0.674129, -0.464094,
		43.950687, 35.548206, 35.955242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747231, 35.241241, 35.730652>,  <44.352909, 35.076313, 36.280109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747231, 35.241241, 35.730652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479076, 35.537659, 35.715511>,  <44.318184, 35.715508, 35.706429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479076, 35.537659, 35.715511>,  <44.747231, 35.241241, 35.730652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479076, 35.537659, 35.715511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674771, 0.587629, -0.446514,
		-0.308644, -0.324879, -0.893975,
		-0.670390, 0.741043, -0.037851,
		44.277958, 35.759972, 35.704155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724533, 35.494125, 34.958942>,  <44.747231, 35.241241, 35.730652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724533, 35.494125, 34.958942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656296, 35.772240, 35.238220>,  <44.615353, 35.939106, 35.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656296, 35.772240, 35.238220>,  <44.724533, 35.494125, 34.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656296, 35.772240, 35.238220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580316, 0.643551, -0.499074,
		-0.796323, 0.320036, -0.513270,
		-0.170594, 0.695283, 0.698197,
		44.605118, 35.980824, 35.447678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417366, 36.130497, 34.661263>,  <44.724533, 35.494125, 34.958942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417366, 36.130497, 34.661263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643295, 36.190342, 34.985878>,  <44.778851, 36.226250, 35.180649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643295, 36.190342, 34.985878>,  <44.417366, 36.130497, 34.661263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643295, 36.190342, 34.985878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613368, 0.581775, -0.534152,
		-0.552050, 0.799470, 0.236828,
		0.564819, 0.149616, 0.811538,
		44.812740, 36.235226, 35.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449974, 36.847557, 34.904537>,  <44.417366, 36.130497, 34.661263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449974, 36.847557, 34.904537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778675, 36.644012, 35.007126>,  <44.975895, 36.521885, 35.068680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778675, 36.644012, 35.007126>,  <44.449974, 36.847557, 34.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778675, 36.644012, 35.007126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561557, 0.646672, -0.516206,
		0.096824, 0.568218, 0.817162,
		0.821753, -0.508864, 0.256474,
		45.025200, 36.491352, 35.084068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999527, 37.174511, 35.144722>,  <44.449974, 36.847557, 34.904537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999527, 37.174511, 35.144722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173512, 36.854050, 34.980301>,  <45.277905, 36.661774, 34.881649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173512, 36.854050, 34.980301>,  <44.999527, 37.174511, 35.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173512, 36.854050, 34.980301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513122, 0.595656, -0.617981,
		0.739941, 0.057880, 0.670177,
		0.434963, -0.801152, -0.411051,
		45.304001, 36.613705, 34.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815315, 36.985123, 35.156578>,  <44.999527, 37.174511, 35.144722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815315, 36.985123, 35.156578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678707, 36.821575, 34.818066>,  <45.596745, 36.723446, 34.614960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678707, 36.821575, 34.818066>,  <45.815315, 36.985123, 35.156578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678707, 36.821575, 34.818066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810820, 0.327204, -0.485292,
		0.475330, -0.851915, 0.219777,
		-0.341516, -0.408873, -0.846280,
		45.576252, 36.698914, 34.564182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608044, 37.186996, 34.915874>,  <45.815315, 36.985123, 35.156578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608044, 37.186996, 34.915874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875805, 37.076916, 34.639854>,  <47.036461, 37.010868, 34.474243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875805, 37.076916, 34.639854>,  <46.608044, 37.186996, 34.915874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875805, 37.076916, 34.639854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110833, -0.881466, 0.459057,
		-0.734589, -0.383773, -0.559552,
		0.669399, -0.275202, -0.690050,
		47.076626, 36.994354, 34.432838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458473, 36.501354, 34.551018>,  <46.608044, 37.186996, 34.915874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458473, 36.501354, 34.551018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851234, 36.569130, 34.584858>,  <47.086891, 36.609795, 34.605160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.851234, 36.569130, 34.584858>,  <46.458473, 36.501354, 34.551018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.851234, 36.569130, 34.584858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114476, -0.886873, 0.447606,
		0.150868, -0.429821, -0.890220,
		0.981903, 0.169439, 0.084597,
		47.145805, 36.619961, 34.610237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909950, 36.172379, 34.015320>,  <46.458473, 36.501354, 34.551018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909950, 36.172379, 34.015320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071949, 36.212261, 34.378864>,  <47.169147, 36.236191, 34.596992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.071949, 36.212261, 34.378864>,  <46.909950, 36.172379, 34.015320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071949, 36.212261, 34.378864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040187, -0.995017, 0.091250,
		0.913434, -0.000431, -0.406987,
		0.404998, 0.099706, 0.908865,
		47.193447, 36.242172, 34.651524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530621, 35.860214, 34.118408>,  <46.909950, 36.172379, 34.015320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530621, 35.860214, 34.118408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440750, 35.846237, 34.507931>,  <47.386829, 35.837852, 34.741646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.440750, 35.846237, 34.507931>,  <47.530621, 35.860214, 34.118408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.440750, 35.846237, 34.507931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250066, -0.967957, 0.022961,
		0.941801, 0.248674, 0.226213,
		-0.224674, -0.034944, 0.973807,
		47.373348, 35.835754, 34.800072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.175407, 35.606289, 34.487637>,  <47.530621, 35.860214, 34.118408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.175407, 35.606289, 34.487637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805698, 35.524956, 34.616863>,  <47.583874, 35.476154, 34.694401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805698, 35.524956, 34.616863>,  <48.175407, 35.606289, 34.487637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.805698, 35.524956, 34.616863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222902, -0.974537, 0.024354,
		0.309892, 0.094522, 0.946062,
		-0.924273, -0.203332, 0.323071,
		47.528416, 35.463955, 34.713783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.282238, 35.186943, 35.064468>,  <48.175407, 35.606289, 34.487637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.282238, 35.186943, 35.064468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911846, 35.134743, 34.922745>,  <47.689613, 35.103424, 34.837711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911846, 35.134743, 34.922745>,  <48.282238, 35.186943, 35.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.911846, 35.134743, 34.922745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108823, -0.990794, 0.080524,
		-0.361559, 0.036006, 0.931654,
		-0.925977, -0.130500, -0.354312,
		47.634052, 35.095592, 34.816452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.953419, 34.649956, 35.491413>,  <48.282238, 35.186943, 35.064468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.953419, 34.649956, 35.491413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.894615, 34.717449, 35.101559>,  <47.859333, 34.757946, 34.867645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.894615, 34.717449, 35.101559>,  <47.953419, 34.649956, 35.491413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.894615, 34.717449, 35.101559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356765, -0.909971, -0.211356,
		-0.922554, -0.378787, 0.073577,
		-0.147012, 0.168738, -0.974636,
		47.850510, 34.768070, 34.809170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.627586, 33.613358, 26.475271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.443008, 33.294727, 26.319046>,  <44.332260, 33.103550, 26.225311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.443008, 33.294727, 26.319046>,  <44.627586, 33.613358, 26.475271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443008, 33.294727, 26.319046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329246, -0.255032, 0.909152,
		-0.823810, 0.548118, -0.144584,
		-0.461449, -0.796571, -0.390563,
		44.304573, 33.055756, 26.201878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041813, 33.640305, 26.730303>,  <44.627586, 33.613358, 26.475271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041813, 33.640305, 26.730303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.028427, 33.260639, 26.605099>,  <44.020393, 33.032841, 26.529976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.028427, 33.260639, 26.605099>,  <44.041813, 33.640305, 26.730303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028427, 33.260639, 26.605099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459579, -0.263494, 0.848150,
		-0.887506, 0.172239, -0.427395,
		-0.033469, -0.949160, -0.313010,
		44.018387, 32.975891, 26.511196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341599, 33.321198, 26.836672>,  <44.041813, 33.640305, 26.730303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341599, 33.321198, 26.836672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615105, 33.029316, 26.837734>,  <43.779209, 32.854187, 26.838371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.615105, 33.029316, 26.837734>,  <43.341599, 33.321198, 26.836672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615105, 33.029316, 26.837734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370577, -0.344108, 0.862707,
		-0.628605, -0.590868, -0.505698,
		0.683761, -0.729702, 0.002654,
		43.820232, 32.810406, 26.838530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066830, 32.678329, 26.877659>,  <43.341599, 33.321198, 26.836672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066830, 32.678329, 26.877659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430809, 32.615219, 27.031071>,  <43.649197, 32.577351, 27.123117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430809, 32.615219, 27.031071>,  <43.066830, 32.678329, 26.877659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430809, 32.615219, 27.031071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414688, -0.335404, 0.845895,
		-0.004827, -0.928768, -0.370631,
		0.909951, -0.157779, 0.383530,
		43.703793, 32.567886, 27.146130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128006, 32.010696, 27.186079>,  <43.066830, 32.678329, 26.877659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128006, 32.010696, 27.186079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409168, 32.226749, 27.371201>,  <43.577866, 32.356380, 27.482273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.409168, 32.226749, 27.371201>,  <43.128006, 32.010696, 27.186079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409168, 32.226749, 27.371201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256259, -0.414660, 0.873149,
		0.663518, -0.732338, -0.153053,
		0.702905, 0.540129, 0.462802,
		43.620041, 32.388786, 27.510042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466537, 31.477009, 27.692066>,  <43.128006, 32.010696, 27.186079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466537, 31.477009, 27.692066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.612385, 31.818665, 27.840389>,  <43.699894, 32.023659, 27.929384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.612385, 31.818665, 27.840389>,  <43.466537, 31.477009, 27.692066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612385, 31.818665, 27.840389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240352, -0.298397, 0.923683,
		0.899602, -0.425916, 0.096493,
		0.364618, 0.854140, 0.370809,
		43.721771, 32.074905, 27.951632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725006, 31.151089, 28.332661>,  <43.466537, 31.477009, 27.692066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725006, 31.151089, 28.332661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.682163, 31.546030, 28.379417>,  <43.656456, 31.782995, 28.407471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.682163, 31.546030, 28.379417>,  <43.725006, 31.151089, 28.332661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682163, 31.546030, 28.379417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343976, -0.147105, 0.927384,
		0.932850, 0.059122, 0.355381,
		-0.107107, 0.987352, 0.116891,
		43.650032, 31.842236, 28.414484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925507, 31.304916, 29.063953>,  <43.725006, 31.151089, 28.332661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925507, 31.304916, 29.063953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.712242, 31.623119, 28.948774>,  <43.584286, 31.814041, 28.879667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.712242, 31.623119, 28.948774>,  <43.925507, 31.304916, 29.063953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712242, 31.623119, 28.948774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429084, 0.039070, 0.902419,
		0.729129, 0.604686, 0.320509,
		-0.533158, 0.795505, -0.287948,
		43.552296, 31.861771, 28.862391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969669, 31.760603, 29.659487>,  <43.925507, 31.304916, 29.063953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969669, 31.760603, 29.659487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.659267, 31.880501, 29.437506>,  <43.473026, 31.952440, 29.304317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.659267, 31.880501, 29.437506>,  <43.969669, 31.760603, 29.659487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659267, 31.880501, 29.437506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540685, 0.136919, 0.830008,
		0.324773, 0.944144, 0.055817,
		-0.776004, 0.299744, -0.554951,
		43.426468, 31.970425, 29.271021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805893, 32.301552, 30.071524>,  <43.969669, 31.760603, 29.659487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805893, 32.301552, 30.071524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.494389, 32.204601, 29.840082>,  <43.307484, 32.146431, 29.701218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.494389, 32.204601, 29.840082>,  <43.805893, 32.301552, 30.071524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494389, 32.204601, 29.840082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621298, 0.170548, 0.764789,
		-0.086688, 0.955074, -0.283405,
		-0.778764, -0.242377, -0.578602,
		43.260757, 32.131889, 29.666502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415051, 32.899815, 30.033302>,  <43.805893, 32.301552, 30.071524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415051, 32.899815, 30.033302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.181637, 32.585693, 29.950562>,  <43.041588, 32.397221, 29.900917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.181637, 32.585693, 29.950562>,  <43.415051, 32.899815, 30.033302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181637, 32.585693, 29.950562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716697, 0.378218, 0.585915,
		-0.381886, 0.490151, -0.783527,
		-0.583531, -0.785304, -0.206854,
		43.006577, 32.350101, 29.888506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758629, 33.137440, 29.746822>,  <43.415051, 32.899815, 30.033302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758629, 33.137440, 29.746822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.691196, 32.773670, 29.898888>,  <42.650738, 32.555408, 29.990128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.691196, 32.773670, 29.898888>,  <42.758629, 33.137440, 29.746822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691196, 32.773670, 29.898888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757923, 0.366179, 0.539876,
		-0.630186, -0.197124, -0.751005,
		-0.168580, -0.909426, 0.380166,
		42.640621, 32.500843, 30.012938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022396, 33.082008, 29.852871>,  <42.758629, 33.137440, 29.746822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022396, 33.082008, 29.852871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.132042, 32.782703, 30.094522>,  <42.197830, 32.603123, 30.239513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.132042, 32.782703, 30.094522>,  <42.022396, 33.082008, 29.852871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132042, 32.782703, 30.094522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782238, 0.191951, 0.592672,
		-0.559435, -0.635029, -0.532701,
		0.274111, -0.748260, 0.604127,
		42.214275, 32.558224, 30.275761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403244, 32.586189, 30.155556>,  <42.022396, 33.082008, 29.852871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403244, 32.586189, 30.155556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.710491, 32.551876, 30.409369>,  <41.894840, 32.531288, 30.561657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.710491, 32.551876, 30.409369>,  <41.403244, 32.586189, 30.155556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710491, 32.551876, 30.409369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564015, 0.378480, 0.733921,
		-0.303114, -0.921626, 0.242337,
		0.768121, -0.085780, 0.634533,
		41.940926, 32.526142, 30.599728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001442, 32.566463, 30.673326>,  <41.403244, 32.586189, 30.155556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001442, 32.566463, 30.673326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354469, 32.587055, 30.860268>,  <41.566288, 32.599411, 30.972433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354469, 32.587055, 30.860268>,  <41.001442, 32.566463, 30.673326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354469, 32.587055, 30.860268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456127, 0.334945, 0.824476,
		-0.114092, -0.940830, 0.319094,
		0.882571, 0.051481, 0.467352,
		41.619240, 32.602501, 31.000473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875565, 32.221794, 31.375622>,  <41.001442, 32.566463, 30.673326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875565, 32.221794, 31.375622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209923, 32.439949, 31.400402>,  <41.410538, 32.570843, 31.415270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209923, 32.439949, 31.400402>,  <40.875565, 32.221794, 31.375622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209923, 32.439949, 31.400402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248073, 0.274693, 0.928980,
		0.489636, -0.791895, 0.364909,
		0.835892, 0.545386, 0.061948,
		41.460690, 32.603565, 31.418987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208260, 32.038548, 32.051048>,  <40.875565, 32.221794, 31.375622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208260, 32.038548, 32.051048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.373268, 32.380299, 31.924648>,  <41.472275, 32.585350, 31.848808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.373268, 32.380299, 31.924648>,  <41.208260, 32.038548, 32.051048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373268, 32.380299, 31.924648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111153, 0.297089, 0.948358,
		0.904140, -0.426345, 0.027589,
		0.412524, 0.854382, -0.315999,
		41.497025, 32.636612, 31.829849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852528, 32.199043, 32.494213>,  <41.208260, 32.038548, 32.051048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852528, 32.199043, 32.494213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.686878, 32.534298, 32.352207>,  <41.587490, 32.735451, 32.267002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.686878, 32.534298, 32.352207>,  <41.852528, 32.199043, 32.494213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686878, 32.534298, 32.352207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049095, 0.368895, 0.928173,
		0.908895, 0.401809, -0.111620,
		-0.414124, 0.838132, -0.355014,
		41.562641, 32.785736, 32.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046463, 32.639347, 32.977989>,  <41.852528, 32.199043, 32.494213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046463, 32.639347, 32.977989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.757015, 32.841167, 32.789604>,  <41.583347, 32.962261, 32.676575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.757015, 32.841167, 32.789604>,  <42.046463, 32.639347, 32.977989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757015, 32.841167, 32.789604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206097, 0.493267, 0.845111,
		0.658714, 0.708599, -0.252949,
		-0.723616, 0.504554, -0.470962,
		41.539932, 32.992535, 32.648315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163082, 33.390465, 33.022362>,  <42.046463, 32.639347, 32.977989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163082, 33.390465, 33.022362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.773869, 33.321804, 32.960720>,  <41.540340, 33.280605, 32.923737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.773869, 33.321804, 32.960720>,  <42.163082, 33.390465, 33.022362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773869, 33.321804, 32.960720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198742, 0.284688, 0.937792,
		-0.117106, 0.943126, -0.311125,
		-0.973030, -0.171655, -0.154100,
		41.481960, 33.270309, 32.914490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740421, 34.055832, 33.217163>,  <42.163082, 33.390465, 33.022362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740421, 34.055832, 33.217163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.489967, 33.746441, 33.256550>,  <41.339695, 33.560806, 33.280182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.489967, 33.746441, 33.256550>,  <41.740421, 34.055832, 33.217163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489967, 33.746441, 33.256550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146986, 0.241108, 0.959303,
		-0.765736, 0.586179, -0.264655,
		-0.626134, -0.773473, 0.098465,
		41.302128, 33.514400, 33.286091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753185, 34.562790, 32.787437>,  <41.740421, 34.055832, 33.217163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753185, 34.562790, 32.787437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692078, 34.910744, 32.975040>,  <41.655415, 35.119514, 33.087605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.692078, 34.910744, 32.975040>,  <41.753185, 34.562790, 32.787437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692078, 34.910744, 32.975040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359700, 0.490972, -0.793450,
		-0.920478, 0.047490, -0.387900,
		-0.152766, 0.869880, 0.469011,
		41.646248, 35.171707, 33.115742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457764, 35.144966, 32.407272>,  <41.753185, 34.562790, 32.787437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457764, 35.144966, 32.407272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.696877, 35.323505, 32.673634>,  <41.840343, 35.430630, 32.833450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.696877, 35.323505, 32.673634>,  <41.457764, 35.144966, 32.407272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696877, 35.323505, 32.673634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503735, 0.437040, -0.745149,
		-0.623625, 0.780875, 0.036411,
		0.597781, 0.446352, 0.665904,
		41.876209, 35.457413, 32.873405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736263, 35.856678, 32.136585>,  <41.457764, 35.144966, 32.407272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736263, 35.856678, 32.136585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003944, 35.764534, 32.419174>,  <42.164555, 35.709248, 32.588726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.003944, 35.764534, 32.419174>,  <41.736263, 35.856678, 32.136585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003944, 35.764534, 32.419174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739591, 0.298509, -0.603240,
		-0.071925, 0.926189, 0.370136,
		0.669203, -0.230361, 0.706471,
		42.204704, 35.695427, 32.631115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180870, 36.401245, 32.219063>,  <41.736263, 35.856678, 32.136585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180870, 36.401245, 32.219063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.378475, 36.073013, 32.334023>,  <42.497040, 35.876076, 32.402996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.378475, 36.073013, 32.334023>,  <42.180870, 36.401245, 32.219063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378475, 36.073013, 32.334023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737153, 0.220021, -0.638902,
		0.461037, 0.527482, 0.713588,
		0.494014, -0.820581, 0.287397,
		42.526680, 35.826839, 32.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805283, 36.601006, 32.170391>,  <42.180870, 36.401245, 32.219063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805283, 36.601006, 32.170391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901817, 36.213718, 32.196632>,  <42.959740, 35.981346, 32.212379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.901817, 36.213718, 32.196632>,  <42.805283, 36.601006, 32.170391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901817, 36.213718, 32.196632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863222, 0.183294, -0.470374,
		0.443400, 0.170153, 0.880025,
		0.241339, -0.968221, 0.065607,
		42.974220, 35.923252, 32.216316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490295, 36.581726, 32.420631>,  <42.805283, 36.601006, 32.170391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490295, 36.581726, 32.420631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430157, 36.234306, 32.231735>,  <43.394073, 36.025852, 32.118397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.430157, 36.234306, 32.231735>,  <43.490295, 36.581726, 32.420631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430157, 36.234306, 32.231735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936105, 0.028558, -0.350559,
		0.317966, -0.494775, 0.808762,
		-0.150351, -0.868552, -0.472242,
		43.385052, 35.973740, 32.090061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205856, 36.442116, 32.102638>,  <43.490295, 36.581726, 32.420631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205856, 36.442116, 32.102638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.969624, 36.181076, 31.912766>,  <43.827885, 36.024452, 31.798843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.969624, 36.181076, 31.912766>,  <44.205856, 36.442116, 32.102638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969624, 36.181076, 31.912766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707264, -0.135358, -0.693870,
		0.388569, -0.745512, 0.541503,
		-0.590585, -0.652602, -0.474678,
		43.792446, 35.985294, 31.770363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642670, 35.806374, 31.873892>,  <44.205856, 36.442116, 32.102638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642670, 35.806374, 31.873892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.320713, 35.813496, 31.636627>,  <44.127541, 35.817768, 31.494268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.320713, 35.813496, 31.636627>,  <44.642670, 35.806374, 31.873892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320713, 35.813496, 31.636627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587868, -0.112572, -0.801086,
		-0.081035, -0.993484, 0.080142,
		-0.804888, 0.017803, -0.593160,
		44.079247, 35.818836, 31.458679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674469, 35.248730, 31.427328>,  <44.642670, 35.806374, 31.873892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674469, 35.248730, 31.427328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.418880, 35.488392, 31.234362>,  <44.265526, 35.632191, 31.118582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.418880, 35.488392, 31.234362>,  <44.674469, 35.248730, 31.427328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418880, 35.488392, 31.234362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418967, -0.254879, -0.871495,
		-0.645118, -0.758979, -0.088166,
		-0.638975, 0.599156, -0.482414,
		44.227188, 35.668140, 31.089638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488243, 34.875000, 30.909430>,  <44.674469, 35.248730, 31.427328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488243, 34.875000, 30.909430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.407154, 35.255939, 30.818268>,  <44.358501, 35.484501, 30.763571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.407154, 35.255939, 30.818268>,  <44.488243, 34.875000, 30.909430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407154, 35.255939, 30.818268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292715, -0.163161, -0.942177,
		-0.934463, -0.257715, -0.245688,
		-0.202726, 0.952345, -0.227905,
		44.346336, 35.541641, 30.749897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446342, 34.874840, 30.243114>,  <44.488243, 34.875000, 30.909430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446342, 34.874840, 30.243114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.480625, 35.270622, 30.289818>,  <44.501194, 35.508091, 30.317841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.480625, 35.270622, 30.289818>,  <44.446342, 34.874840, 30.243114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480625, 35.270622, 30.289818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372750, 0.076836, -0.924745,
		-0.923965, 0.122781, -0.362234,
		0.085709, 0.989455, 0.116760,
		44.506336, 35.567459, 30.324846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131527, 35.179550, 29.634247>,  <44.446342, 34.874840, 30.243114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131527, 35.179550, 29.634247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.401772, 35.432404, 29.786011>,  <44.563919, 35.584114, 29.877069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.401772, 35.432404, 29.786011>,  <44.131527, 35.179550, 29.634247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401772, 35.432404, 29.786011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329042, 0.201991, -0.922459,
		-0.659756, 0.748068, -0.071531,
		0.675614, 0.632135, 0.379410,
		44.604454, 35.622044, 29.899834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032352, 35.798100, 29.162863>,  <44.131527, 35.179550, 29.634247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032352, 35.798100, 29.162863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.394917, 35.781685, 29.331022>,  <44.612453, 35.771835, 29.431917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.394917, 35.781685, 29.331022>,  <44.032352, 35.798100, 29.162863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394917, 35.781685, 29.331022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419289, 0.207935, -0.883719,
		-0.051149, 0.977281, 0.205681,
		0.906411, -0.041039, 0.420399,
		44.666840, 35.769375, 29.457142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261063, 36.383320, 28.847399>,  <44.032352, 35.798100, 29.162863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261063, 36.383320, 28.847399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.539143, 36.122402, 28.968206>,  <44.705990, 35.965851, 29.040691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.539143, 36.122402, 28.968206>,  <44.261063, 36.383320, 28.847399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539143, 36.122402, 28.968206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516893, 0.161664, -0.840646,
		0.499519, 0.740528, 0.449553,
		0.695199, -0.652290, 0.302020,
		44.747704, 35.926716, 29.058813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873802, 36.814587, 28.737747>,  <44.261063, 36.383320, 28.847399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873802, 36.814587, 28.737747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.994675, 36.434093, 28.762566>,  <45.067200, 36.205799, 28.777456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.994675, 36.434093, 28.762566>,  <44.873802, 36.814587, 28.737747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994675, 36.434093, 28.762566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460386, 0.088641, -0.883282,
		0.834704, 0.295476, 0.464718,
		0.302182, -0.951229, 0.062044,
		45.085331, 36.148724, 28.781179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477043, 36.974941, 28.445419>,  <44.873802, 36.814587, 28.737747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477043, 36.974941, 28.445419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.399323, 36.583099, 28.424948>,  <45.352688, 36.347996, 28.412664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.399323, 36.583099, 28.424948>,  <45.477043, 36.974941, 28.445419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399323, 36.583099, 28.424948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357653, -0.022164, -0.933591,
		0.913417, -0.199704, 0.354665,
		-0.194303, -0.979605, -0.051180,
		45.341030, 36.289219, 28.409594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152382, 36.759487, 28.159372>,  <45.477043, 36.974941, 28.445419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152382, 36.759487, 28.159372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.877110, 36.473980, 28.107317>,  <45.711945, 36.302673, 28.076084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.877110, 36.473980, 28.107317>,  <46.152382, 36.759487, 28.159372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877110, 36.473980, 28.107317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250202, -0.065103, -0.966002,
		0.681032, -0.697347, 0.223390,
		-0.688182, -0.713771, -0.130140,
		45.670654, 36.259850, 28.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529110, 36.311260, 27.739489>,  <46.152382, 36.759487, 28.159372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529110, 36.311260, 27.739489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.154903, 36.176991, 27.695429>,  <45.930378, 36.096428, 27.668993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.154903, 36.176991, 27.695429>,  <46.529110, 36.311260, 27.739489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.154903, 36.176991, 27.695429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211395, -0.282074, -0.935813,
		0.283060, -0.898752, 0.334845,
		-0.935515, -0.335676, -0.110148,
		45.874249, 36.076286, 27.662384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435574, 35.548466, 27.487436>,  <46.529110, 36.311260, 27.739489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435574, 35.548466, 27.487436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.094883, 35.737301, 27.396484>,  <45.890469, 35.850601, 27.341913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.094883, 35.737301, 27.396484>,  <46.435574, 35.548466, 27.487436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094883, 35.737301, 27.396484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023844, -0.398569, -0.916828,
		-0.523446, -0.786307, 0.328215,
		-0.851725, 0.472084, -0.227378,
		45.839367, 35.878925, 27.328272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<45.991222, 35.027973, 27.252531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.804787, 35.356987, 27.122183>,  <45.692924, 35.554398, 27.043974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.804787, 35.356987, 27.122183>,  <45.991222, 35.027973, 27.252531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804787, 35.356987, 27.122183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079968, -0.405983, -0.910375,
		-0.881117, -0.398255, 0.255001,
		-0.466088, 0.822539, -0.325871,
		45.664959, 35.603748, 27.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312813, 34.803699, 26.989775>,  <45.991222, 35.027973, 27.252531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312813, 34.803699, 26.989775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.428997, 35.154552, 26.836794>,  <45.498707, 35.365067, 26.745007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.428997, 35.154552, 26.836794>,  <45.312813, 34.803699, 26.989775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428997, 35.154552, 26.836794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186377, -0.340168, -0.921710,
		-0.938561, 0.338998, 0.064673,
		0.290459, 0.877135, -0.382450,
		45.516136, 35.417694, 26.722059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896748, 34.949287, 26.508978>,  <45.312813, 34.803699, 26.989775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896748, 34.949287, 26.508978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.198788, 35.191692, 26.408928>,  <45.380013, 35.337135, 26.348898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.198788, 35.191692, 26.408928>,  <44.896748, 34.949287, 26.508978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198788, 35.191692, 26.408928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088142, -0.284217, -0.954700,
		-0.649653, 0.742944, -0.161197,
		0.755104, 0.606016, -0.250127,
		45.425320, 35.373497, 26.333889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627670, 35.297459, 25.884802>,  <44.896748, 34.949287, 26.508978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627670, 35.297459, 25.884802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019981, 35.374626, 25.896528>,  <45.255367, 35.420925, 25.903564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.019981, 35.374626, 25.896528>,  <44.627670, 35.297459, 25.884802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.019981, 35.374626, 25.896528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042696, -0.065557, -0.996935,
		-0.190402, 0.979023, -0.072533,
		0.980777, 0.192916, 0.029318,
		45.314213, 35.432503, 25.905323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738586, 35.806496, 25.487761>,  <44.627670, 35.297459, 25.884802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738586, 35.806496, 25.487761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.090038, 35.616592, 25.508230>,  <45.300907, 35.502651, 25.520512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.090038, 35.616592, 25.508230>,  <44.738586, 35.806496, 25.487761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090038, 35.616592, 25.508230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011848, -0.085458, -0.996271,
		0.477363, 0.875957, -0.069460,
		0.878627, -0.474760, 0.051173,
		45.353626, 35.474163, 25.523582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080021, 35.988071, 24.903376>,  <44.738586, 35.806496, 25.487761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080021, 35.988071, 24.903376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.292961, 35.670784, 25.021635>,  <45.420727, 35.480412, 25.092590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.292961, 35.670784, 25.021635>,  <45.080021, 35.988071, 24.903376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292961, 35.670784, 25.021635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144853, -0.258740, -0.955024,
		0.834037, 0.551235, -0.022840,
		0.532352, -0.793218, 0.295647,
		45.452667, 35.432819, 25.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.688431, 35.983410, 24.503057>,  <45.080021, 35.988071, 24.903376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.688431, 35.983410, 24.503057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.644554, 35.612553, 24.646379>,  <45.618229, 35.390038, 24.732372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.644554, 35.612553, 24.646379>,  <45.688431, 35.983410, 24.503057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644554, 35.612553, 24.646379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157991, -0.372160, -0.914623,
		0.981329, -0.043713, 0.187301,
		-0.109687, -0.927138, 0.358306,
		45.611649, 35.334412, 24.753872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272236, 35.668880, 24.340021>,  <45.688431, 35.983410, 24.503057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272236, 35.668880, 24.340021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.992260, 35.387470, 24.389236>,  <45.824276, 35.218624, 24.418766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.992260, 35.387470, 24.389236>,  <46.272236, 35.668880, 24.340021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992260, 35.387470, 24.389236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277051, -0.426241, -0.861140,
		0.658275, -0.568660, 0.493255,
		-0.699941, -0.703523, 0.123037,
		45.782276, 35.176414, 24.426147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593056, 35.110649, 24.172604>,  <46.272236, 35.668880, 24.340021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593056, 35.110649, 24.172604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.199669, 35.052078, 24.129990>,  <45.963638, 35.016937, 24.104422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.199669, 35.052078, 24.129990>,  <46.593056, 35.110649, 24.172604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199669, 35.052078, 24.129990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155719, -0.383605, -0.910274,
		0.092419, -0.911815, 0.400065,
		-0.983469, -0.146424, -0.106534,
		45.904629, 35.008152, 24.098030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548183, 34.528511, 23.801090>,  <46.593056, 35.110649, 24.172604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548183, 34.528511, 23.801090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.179592, 34.680454, 23.768616>,  <45.958439, 34.771618, 23.749130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.179592, 34.680454, 23.768616>,  <46.548183, 34.528511, 23.801090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179592, 34.680454, 23.768616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088254, 0.001190, -0.996097,
		-0.378275, -0.925045, -0.034620,
		-0.921476, 0.379854, -0.081188,
		45.903149, 34.794411, 23.744259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288124, 34.170113, 23.297915>,  <46.548183, 34.528511, 23.801090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288124, 34.170113, 23.297915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.068935, 34.504669, 23.292580>,  <45.937420, 34.705402, 23.289379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.068935, 34.504669, 23.292580>,  <46.288124, 34.170113, 23.297915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068935, 34.504669, 23.292580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171206, 0.096534, -0.980495,
		-0.818786, -0.539571, -0.196093,
		-0.547976, 0.836388, -0.013337,
		45.904541, 34.755585, 23.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860786, 34.133751, 22.673256>,  <46.288124, 34.170113, 23.297915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860786, 34.133751, 22.673256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.842663, 34.520500, 22.773735>,  <45.831791, 34.752552, 22.834023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.842663, 34.520500, 22.773735>,  <45.860786, 34.133751, 22.673256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842663, 34.520500, 22.773735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171428, 0.255248, -0.951557,
		-0.984154, -0.000049, -0.177313,
		-0.045305, 0.966876, 0.251196,
		45.829071, 34.810562, 22.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263817, 34.508053, 22.357464>,  <45.860786, 34.133751, 22.673256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263817, 34.508053, 22.357464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.553547, 34.778812, 22.409872>,  <45.727386, 34.941269, 22.441317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.553547, 34.778812, 22.409872>,  <45.263817, 34.508053, 22.357464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553547, 34.778812, 22.409872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050210, 0.241316, -0.969147,
		-0.687629, 0.695398, 0.208778,
		0.724324, 0.676896, 0.131020,
		45.770844, 34.981880, 22.449179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186153, 35.036366, 21.867334>,  <45.263817, 34.508053, 22.357464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186153, 35.036366, 21.867334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.561337, 35.124664, 21.974295>,  <45.786446, 35.177643, 22.038471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.561337, 35.124664, 21.974295>,  <45.186153, 35.036366, 21.867334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561337, 35.124664, 21.974295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181560, 0.344352, -0.921118,
		-0.295411, 0.912521, 0.282910,
		0.937960, 0.220743, 0.267403,
		45.842724, 35.190887, 22.054516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286320, 35.825272, 21.778893>,  <45.186153, 35.036366, 21.867334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286320, 35.825272, 21.778893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.643547, 35.645405, 21.772793>,  <45.857883, 35.537483, 21.769133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.643547, 35.645405, 21.772793>,  <45.286320, 35.825272, 21.778893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643547, 35.645405, 21.772793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145597, 0.320906, -0.935853,
		0.425715, 0.833558, 0.352061,
		0.893067, -0.449666, -0.015251,
		45.911469, 35.510506, 21.768217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684605, 36.441181, 21.642435>,  <45.286320, 35.825272, 21.778893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684605, 36.441181, 21.642435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.917133, 36.131847, 21.541227>,  <46.056652, 35.946247, 21.480503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.917133, 36.131847, 21.541227>,  <45.684605, 36.441181, 21.642435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917133, 36.131847, 21.541227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279850, 0.482014, -0.830269,
		0.764034, 0.411847, 0.496623,
		0.581323, -0.773333, -0.253020,
		46.091530, 35.899849, 21.465321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243073, 36.718651, 21.330687>,  <45.684605, 36.441181, 21.642435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243073, 36.718651, 21.330687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.288239, 36.337673, 21.217480>,  <46.315338, 36.109085, 21.149555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.288239, 36.337673, 21.217480>,  <46.243073, 36.718651, 21.330687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288239, 36.337673, 21.217480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351324, 0.304709, -0.885282,
		0.929420, 0.000533, 0.369023,
		0.112916, -0.952446, -0.283015,
		46.322113, 36.051941, 21.132576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836559, 36.711464, 20.896719>,  <46.243073, 36.718651, 21.330687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836559, 36.711464, 20.896719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654716, 36.367683, 20.803186>,  <46.545612, 36.161415, 20.747066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.654716, 36.367683, 20.803186>,  <46.836559, 36.711464, 20.896719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654716, 36.367683, 20.803186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233780, 0.138185, -0.962420,
		0.859464, -0.492189, 0.138102,
		-0.454609, -0.859451, -0.233829,
		46.518333, 36.109848, 20.733038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.298073, 36.458344, 20.301168>,  <46.836559, 36.711464, 20.896719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.298073, 36.458344, 20.301168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.959858, 36.246841, 20.271530>,  <46.756931, 36.119938, 20.253748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.959858, 36.246841, 20.271530>,  <47.298073, 36.458344, 20.301168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959858, 36.246841, 20.271530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080229, 0.011379, -0.996712,
		0.527862, -0.848697, 0.032801,
		-0.845532, -0.528757, -0.074096,
		46.706200, 36.088215, 20.249302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.407948, 35.966328, 19.782454>,  <47.298073, 36.458344, 20.301168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.407948, 35.966328, 19.782454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.008633, 35.989708, 19.782879>,  <46.769043, 36.003735, 19.783134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.008633, 35.989708, 19.782879>,  <47.407948, 35.966328, 19.782454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008633, 35.989708, 19.782879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000869, 0.003369, -0.999994,
		-0.058458, -0.998284, -0.003312,
		-0.998289, 0.058454, 0.001065,
		46.709145, 36.007244, 19.783197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210724, 35.516842, 19.245691>,  <47.407948, 35.966328, 19.782454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210724, 35.516842, 19.245691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.911343, 35.773666, 19.312103>,  <46.731712, 35.927761, 19.351952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.911343, 35.773666, 19.312103>,  <47.210724, 35.516842, 19.245691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.911343, 35.773666, 19.312103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078190, 0.163176, -0.983494,
		-0.658559, -0.749084, -0.071927,
		-0.748456, 0.642064, 0.166032,
		46.686806, 35.966286, 19.361914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.874836, 35.409901, 18.590679>,  <47.210724, 35.516842, 19.245691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.874836, 35.409901, 18.590679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.762680, 35.748837, 18.771076>,  <46.695385, 35.952198, 18.879314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.762680, 35.748837, 18.771076>,  <46.874836, 35.409901, 18.590679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762680, 35.748837, 18.771076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104477, 0.440108, -0.891846,
		-0.954182, -0.297187, -0.034877,
		-0.280394, 0.847340, 0.450993,
		46.678562, 36.003040, 18.906374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750256, 34.851154, 18.101223>,  <46.874836, 35.409901, 18.590679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750256, 34.851154, 18.101223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.388565, 34.680565, 18.110149>,  <46.171551, 34.578209, 18.115505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.388565, 34.680565, 18.110149>,  <46.750256, 34.851154, 18.101223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388565, 34.680565, 18.110149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385357, -0.837332, -0.387783,
		0.184065, -0.342044, 0.921481,
		-0.904224, -0.426476, 0.022314,
		46.117298, 34.552624, 18.116844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769852, 34.233585, 18.445036>,  <46.750256, 34.851154, 18.101223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769852, 34.233585, 18.445036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.481152, 34.216331, 18.168713>,  <46.307930, 34.205978, 18.002918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.481152, 34.216331, 18.168713>,  <46.769852, 34.233585, 18.445036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481152, 34.216331, 18.168713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429765, -0.810287, -0.398418,
		-0.542565, -0.584444, 0.603364,
		-0.721751, -0.043137, -0.690807,
		46.264626, 34.203392, 17.961470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875465, 33.575199, 18.901194>,  <46.769852, 34.233585, 18.445036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875465, 33.575199, 18.901194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.804180, 33.184929, 18.850122>,  <46.761410, 32.950768, 18.819479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.804180, 33.184929, 18.850122>,  <46.875465, 33.575199, 18.901194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804180, 33.184929, 18.850122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743539, 0.048538, 0.666929,
		-0.644507, 0.213792, -0.734101,
		-0.178216, -0.975672, -0.127680,
		46.750717, 32.892227, 18.811819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113277, 33.449169, 18.761662>,  <46.875465, 33.575199, 18.901194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113277, 33.449169, 18.761662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.268211, 33.111347, 18.909550>,  <46.361172, 32.908653, 18.998283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.268211, 33.111347, 18.909550>,  <46.113277, 33.449169, 18.761662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268211, 33.111347, 18.909550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773886, -0.079884, 0.628266,
		-0.501074, -0.529469, -0.684535,
		0.387331, -0.844560, 0.369721,
		46.384411, 32.857979, 19.020466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525742, 33.027485, 18.756624>,  <46.113277, 33.449169, 18.761662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525742, 33.027485, 18.756624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.818096, 32.885376, 18.989721>,  <45.993507, 32.800110, 19.129580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.818096, 32.885376, 18.989721>,  <45.525742, 33.027485, 18.756624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818096, 32.885376, 18.989721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670906, -0.217278, 0.708996,
		-0.125268, -0.909161, -0.397158,
		0.730885, -0.355270, 0.582743,
		46.037361, 32.778793, 19.164543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129581, 32.488106, 19.112238>,  <45.525742, 33.027485, 18.756624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129581, 32.488106, 19.112238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.461998, 32.527428, 19.331221>,  <45.661446, 32.551022, 19.462610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.461998, 32.527428, 19.331221>,  <45.129581, 32.488106, 19.112238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461998, 32.527428, 19.331221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515816, -0.232050, 0.824674,
		0.208107, -0.967724, -0.142135,
		0.831039, 0.098305, 0.547458,
		45.711311, 32.556919, 19.495459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.162697, 31.888397, 19.540646>,  <45.129581, 32.488106, 19.112238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.162697, 31.888397, 19.540646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.383114, 32.178551, 19.705654>,  <45.515362, 32.352642, 19.804659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.383114, 32.178551, 19.705654>,  <45.162697, 31.888397, 19.540646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383114, 32.178551, 19.705654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378611, -0.223210, 0.898238,
		0.743646, -0.651150, 0.151640,
		0.551040, 0.725384, 0.412521,
		45.548428, 32.396164, 19.829411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483372, 31.654913, 20.256800>,  <45.162697, 31.888397, 19.540646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483372, 31.654913, 20.256800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.504139, 32.052780, 20.292440>,  <45.516602, 32.291500, 20.313826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.504139, 32.052780, 20.292440>,  <45.483372, 31.654913, 20.256800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504139, 32.052780, 20.292440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311280, -0.068660, 0.947834,
		0.948899, -0.076949, 0.306056,
		0.051921, 0.994668, 0.089104,
		45.519714, 32.351181, 20.319172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635864, 31.776335, 21.004377>,  <45.483372, 31.654913, 20.256800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635864, 31.776335, 21.004377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.487316, 32.120487, 20.864763>,  <45.398186, 32.326981, 20.780994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.487316, 32.120487, 20.864763>,  <45.635864, 31.776335, 21.004377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487316, 32.120487, 20.864763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326299, 0.231004, 0.916606,
		0.869260, 0.454292, 0.194953,
		-0.371371, 0.860381, -0.349037,
		45.375904, 32.378601, 20.760052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.988922, 32.277405, 21.418846>,  <45.635864, 31.776335, 21.004377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.988922, 32.277405, 21.418846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.657112, 32.425159, 21.251301>,  <45.458027, 32.513813, 21.150774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.657112, 32.425159, 21.251301>,  <45.988922, 32.277405, 21.418846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657112, 32.425159, 21.251301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369496, 0.199389, 0.907588,
		0.418765, 0.907634, -0.028912,
		-0.829523, 0.369384, -0.418864,
		45.408257, 32.535976, 21.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934750, 32.874584, 21.600002>,  <45.988922, 32.277405, 21.418846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934750, 32.874584, 21.600002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.554241, 32.792240, 21.508181>,  <45.325935, 32.742832, 21.453087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.554241, 32.792240, 21.508181>,  <45.934750, 32.874584, 21.600002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554241, 32.792240, 21.508181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280744, 0.270404, 0.920904,
		-0.127507, 0.940480, -0.315024,
		-0.951275, -0.205863, -0.229556,
		45.268860, 32.730480, 21.439314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680721, 33.317368, 21.980978>,  <45.934750, 32.874584, 21.600002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680721, 33.317368, 21.980978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.358818, 33.091652, 21.907291>,  <45.165676, 32.956223, 21.863079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.358818, 33.091652, 21.907291>,  <45.680721, 33.317368, 21.980978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358818, 33.091652, 21.907291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330681, 0.168458, 0.928586,
		-0.492959, 0.808207, -0.322169,
		-0.804762, -0.564290, -0.184215,
		45.117390, 32.922363, 21.852026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204350, 33.775780, 22.157539>,  <45.680721, 33.317368, 21.980978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204350, 33.775780, 22.157539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.027374, 33.417068, 22.160063>,  <44.921188, 33.201843, 22.161577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.027374, 33.417068, 22.160063>,  <45.204350, 33.775780, 22.157539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027374, 33.417068, 22.160063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335717, 0.172142, 0.926100,
		-0.831593, 0.407621, -0.377225,
		-0.442434, -0.896779, 0.006306,
		44.894646, 33.148033, 22.161955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539944, 33.912453, 22.443565>,  <45.204350, 33.775780, 22.157539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539944, 33.912453, 22.443565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629940, 33.525982, 22.493982>,  <44.683937, 33.294102, 22.524233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.629940, 33.525982, 22.493982>,  <44.539944, 33.912453, 22.443565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629940, 33.525982, 22.493982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385817, 0.030445, 0.922073,
		-0.894720, -0.256089, -0.365916,
		0.224993, -0.966173, 0.126043,
		44.697437, 33.236130, 22.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853096, 33.504696, 22.596039>,  <44.539944, 33.912453, 22.443565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853096, 33.504696, 22.596039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.164803, 33.296474, 22.735622>,  <44.351826, 33.171543, 22.819372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.164803, 33.296474, 22.735622>,  <43.853096, 33.504696, 22.596039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164803, 33.296474, 22.735622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328107, 0.135529, 0.934868,
		-0.533939, -0.843007, -0.065183,
		0.779265, -0.520549, 0.348961,
		44.398582, 33.140308, 22.840311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682545, 33.104656, 23.106733>,  <43.853096, 33.504696, 22.596039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682545, 33.104656, 23.106733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.072891, 33.081879, 23.191063>,  <44.307098, 33.068211, 23.241661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.072891, 33.081879, 23.191063>,  <43.682545, 33.104656, 23.106733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072891, 33.081879, 23.191063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204069, 0.105939, 0.973207,
		-0.077756, -0.992741, 0.091761,
		0.975864, -0.056948, 0.210825,
		44.365650, 33.064793, 23.254311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861958, 32.419506, 23.419369>,  <43.682545, 33.104656, 23.106733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861958, 32.419506, 23.419369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147228, 32.680546, 23.521734>,  <44.318390, 32.837170, 23.583153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147228, 32.680546, 23.521734>,  <43.861958, 32.419506, 23.419369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147228, 32.680546, 23.521734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174786, -0.187992, 0.966493,
		0.678846, -0.734008, -0.020005,
		0.713175, 0.652603, 0.255911,
		44.361179, 32.876328, 23.598507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064026, 32.168900, 23.989889>,  <43.861958, 32.419506, 23.419369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064026, 32.168900, 23.989889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.220692, 32.531605, 24.052338>,  <44.314690, 32.749229, 24.089806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.220692, 32.531605, 24.052338>,  <44.064026, 32.168900, 23.989889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220692, 32.531605, 24.052338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059520, -0.144352, 0.987735,
		0.918182, -0.396150, -0.002566,
		0.391662, 0.906767, 0.156120,
		44.338192, 32.803635, 24.099174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598114, 32.066437, 24.435299>,  <44.064026, 32.168900, 23.989889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598114, 32.066437, 24.435299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.495636, 32.451691, 24.468153>,  <44.434151, 32.682842, 24.487865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.495636, 32.451691, 24.468153>,  <44.598114, 32.066437, 24.435299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495636, 32.451691, 24.468153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015379, -0.080900, 0.996604,
		0.966504, 0.256584, 0.005914,
		-0.256191, 0.963130, 0.082136,
		44.418777, 32.740631, 24.492794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116840, 32.353077, 24.938147>,  <44.598114, 32.066437, 24.435299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116840, 32.353077, 24.938147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810848, 32.610264, 24.923243>,  <44.627251, 32.764576, 24.914301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.810848, 32.610264, 24.923243>,  <45.116840, 32.353077, 24.938147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810848, 32.610264, 24.923243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059566, -0.013031, 0.998139,
		0.641288, 0.765781, 0.048268,
		-0.764985, 0.642969, -0.037258,
		44.581352, 32.803154, 24.912066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282848, 32.823730, 25.417900>,  <45.116840, 32.353077, 24.938147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282848, 32.823730, 25.417900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.888325, 32.850231, 25.357498>,  <44.651611, 32.866131, 25.321257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.888325, 32.850231, 25.357498>,  <45.282848, 32.823730, 25.417900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888325, 32.850231, 25.357498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155185, -0.063246, 0.985859,
		0.055768, 0.995796, 0.072662,
		-0.986310, 0.066255, -0.151005,
		44.592430, 32.870110, 25.312197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136402, 33.333015, 25.886127>,  <45.282848, 32.823730, 25.417900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136402, 33.333015, 25.886127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.778107, 33.164867, 25.828243>,  <44.563129, 33.063980, 25.793512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.778107, 33.164867, 25.828243>,  <45.136402, 33.333015, 25.886127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778107, 33.164867, 25.828243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221524, 0.139803, 0.965081,
		-0.385457, 0.896519, -0.218348,
		-0.895740, -0.420367, -0.144712,
		44.509384, 33.038757, 25.784830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.820564, 36.005005, 29.902344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447147, 35.956047, 29.767578>,  <45.223095, 35.926670, 29.686718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.447147, 35.956047, 29.767578>,  <45.820564, 36.005005, 29.902344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447147, 35.956047, 29.767578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356708, 0.224443, 0.906854,
		-0.035378, 0.966770, -0.253188,
		-0.933546, -0.122397, -0.336914,
		45.167084, 35.919327, 29.666504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360970, 36.527229, 30.318645>,  <45.820564, 36.005005, 29.902344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360970, 36.527229, 30.318645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115047, 36.245983, 30.175737>,  <44.967495, 36.077236, 30.089993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115047, 36.245983, 30.175737>,  <45.360970, 36.527229, 30.318645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115047, 36.245983, 30.175737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595107, 0.116305, 0.795186,
		-0.517557, 0.701497, -0.489935,
		-0.614802, -0.703118, -0.357272,
		44.930607, 36.035049, 30.068556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758682, 36.812138, 30.444197>,  <45.360970, 36.527229, 30.318645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758682, 36.812138, 30.444197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680149, 36.422005, 30.403841>,  <44.633030, 36.187923, 30.379627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.680149, 36.422005, 30.403841>,  <44.758682, 36.812138, 30.444197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680149, 36.422005, 30.403841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659778, 0.055290, 0.749424,
		-0.725360, 0.213701, -0.654359,
		-0.196332, -0.975333, -0.100890,
		44.621250, 36.129406, 30.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033981, 36.802509, 30.430862>,  <44.758682, 36.812138, 30.444197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033981, 36.802509, 30.430862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138504, 36.428566, 30.526993>,  <44.201218, 36.204201, 30.584671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138504, 36.428566, 30.526993>,  <44.033981, 36.802509, 30.430862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138504, 36.428566, 30.526993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747754, -0.038607, 0.662852,
		-0.610395, -0.352912, -0.709134,
		0.261306, -0.934860, 0.240325,
		44.216896, 36.148109, 30.599091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400890, 36.437412, 30.514982>,  <44.033981, 36.802509, 30.430862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400890, 36.437412, 30.514982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670361, 36.199081, 30.689867>,  <43.832043, 36.056084, 30.794798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.670361, 36.199081, 30.689867>,  <43.400890, 36.437412, 30.514982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670361, 36.199081, 30.689867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645023, -0.185300, 0.741357,
		-0.360705, -0.781443, -0.509154,
		0.673674, -0.595827, 0.437210,
		43.872463, 36.020332, 30.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014656, 35.865196, 30.728323>,  <43.400890, 36.437412, 30.514982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014656, 35.865196, 30.728323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349564, 35.841839, 30.945791>,  <43.550507, 35.827824, 31.076271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.349564, 35.841839, 30.945791>,  <43.014656, 35.865196, 30.728323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349564, 35.841839, 30.945791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539390, -0.251308, 0.803681,
		0.089696, -0.966144, -0.241910,
		0.837266, -0.058396, 0.543670,
		43.600742, 35.824318, 31.108892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999695, 35.237087, 31.046621>,  <43.014656, 35.865196, 30.728323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999695, 35.237087, 31.046621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251675, 35.435196, 31.285910>,  <43.402863, 35.554062, 31.429482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251675, 35.435196, 31.285910>,  <42.999695, 35.237087, 31.046621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251675, 35.435196, 31.285910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519997, -0.303152, 0.798563,
		0.576860, -0.814125, 0.066572,
		0.629948, 0.495277, 0.598219,
		43.440659, 35.583778, 31.465376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071640, 34.785576, 31.529001>,  <42.999695, 35.237087, 31.046621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071640, 34.785576, 31.529001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166351, 35.139503, 31.689516>,  <43.223179, 35.351860, 31.785826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166351, 35.139503, 31.689516>,  <43.071640, 34.785576, 31.529001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166351, 35.139503, 31.689516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522252, -0.232369, 0.820523,
		0.819260, -0.403858, 0.407077,
		0.236783, 0.884818, 0.401286,
		43.237385, 35.404949, 31.809902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193359, 34.645702, 32.246952>,  <43.071640, 34.785576, 31.529001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193359, 34.645702, 32.246952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132156, 35.040699, 32.231735>,  <43.095436, 35.277699, 32.222603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132156, 35.040699, 32.231735>,  <43.193359, 34.645702, 32.246952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132156, 35.040699, 32.231735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528977, -0.049320, 0.847202,
		0.834729, 0.149750, 0.529908,
		-0.153004, 0.987493, -0.038045,
		43.086254, 35.336948, 32.220322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234581, 34.932529, 33.051025>,  <43.193359, 34.645702, 32.246952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234581, 34.932529, 33.051025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069855, 35.237026, 32.850655>,  <42.971020, 35.419724, 32.730434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069855, 35.237026, 32.850655>,  <43.234581, 34.932529, 33.051025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069855, 35.237026, 32.850655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642425, 0.147341, 0.752051,
		0.646298, 0.631509, 0.428363,
		-0.411812, 0.761240, -0.500924,
		42.946312, 35.465397, 32.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022289, 35.360268, 33.576000>,  <43.234581, 34.932529, 33.051025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022289, 35.360268, 33.576000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787128, 35.464642, 33.269726>,  <42.646030, 35.527267, 33.085960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787128, 35.464642, 33.269726>,  <43.022289, 35.360268, 33.576000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787128, 35.464642, 33.269726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788115, 0.028588, 0.614864,
		0.182329, 0.964933, 0.188841,
		-0.587904, 0.260936, -0.765690,
		42.610756, 35.542923, 33.040020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593719, 35.917892, 33.826069>,  <43.022289, 35.360268, 33.576000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593719, 35.917892, 33.826069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376080, 35.772678, 33.523502>,  <42.245495, 35.685551, 33.341965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.376080, 35.772678, 33.523502>,  <42.593719, 35.917892, 33.826069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376080, 35.772678, 33.523502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796436, -0.060086, 0.601730,
		-0.263898, 0.929837, -0.256440,
		-0.544102, -0.363033, -0.756412,
		42.212849, 35.663769, 33.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977058, 36.317291, 33.825417>,  <42.593719, 35.917892, 33.826069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977058, 36.317291, 33.825417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871902, 35.964748, 33.668392>,  <41.808807, 35.753223, 33.574177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871902, 35.964748, 33.668392>,  <41.977058, 36.317291, 33.825417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871902, 35.964748, 33.668392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802345, -0.026263, 0.596283,
		-0.535846, 0.471727, -0.700245,
		-0.262892, -0.881354, -0.392560,
		41.793034, 35.700344, 33.550625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287735, 36.188576, 33.646233>,  <41.977058, 36.317291, 33.825417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287735, 36.188576, 33.646233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413559, 35.824493, 33.753990>,  <41.489052, 35.606045, 33.818645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.413559, 35.824493, 33.753990>,  <41.287735, 36.188576, 33.646233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413559, 35.824493, 33.753990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705519, -0.034315, 0.707860,
		-0.635056, -0.412728, -0.652963,
		0.314560, -0.910208, 0.269395,
		41.507927, 35.551430, 33.834808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745842, 35.997040, 34.146118>,  <41.287735, 36.188576, 33.646233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745842, 35.997040, 34.146118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409019, 36.198406, 34.223587>,  <40.206924, 36.319225, 34.270069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409019, 36.198406, 34.223587>,  <40.745842, 35.997040, 34.146118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409019, 36.198406, 34.223587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111869, 0.188257, -0.975728,
		-0.527657, -0.843286, -0.102206,
		-0.842059, 0.503416, 0.193673,
		40.156403, 36.349430, 34.281689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370304, 35.874584, 33.548664>,  <40.745842, 35.997040, 34.146118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370304, 35.874584, 33.548664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144356, 36.159767, 33.714851>,  <40.008789, 36.330879, 33.814564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144356, 36.159767, 33.714851>,  <40.370304, 35.874584, 33.548664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144356, 36.159767, 33.714851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255753, 0.327430, -0.909604,
		-0.784548, -0.620063, -0.002613,
		-0.564867, 0.712960, 0.415467,
		39.974895, 36.373653, 33.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677235, 35.797539, 33.223572>,  <40.370304, 35.874584, 33.548664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677235, 35.797539, 33.223572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760448, 36.169529, 33.344814>,  <39.810379, 36.392723, 33.417561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.760448, 36.169529, 33.344814>,  <39.677235, 35.797539, 33.223572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760448, 36.169529, 33.344814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330977, 0.358536, -0.872872,
		-0.920421, 0.081268, 0.382388,
		0.208037, 0.929972, 0.303106,
		39.822861, 36.448521, 33.435745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975883, 36.277588, 33.146999>,  <39.677235, 35.797539, 33.223572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975883, 36.277588, 33.146999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307083, 36.501495, 33.133827>,  <39.505802, 36.635841, 33.125923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307083, 36.501495, 33.133827>,  <38.975883, 36.277588, 33.146999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307083, 36.501495, 33.133827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289916, 0.377090, -0.879631,
		-0.479971, 0.737878, 0.474514,
		0.827995, 0.559767, -0.032930,
		39.555481, 36.669426, 33.123947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730915, 36.834572, 32.723984>,  <38.975883, 36.277588, 33.146999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730915, 36.834572, 32.723984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.126862, 36.891006, 32.730530>,  <39.364429, 36.924866, 32.734459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.126862, 36.891006, 32.730530>,  <38.730915, 36.834572, 32.723984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126862, 36.891006, 32.730530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043707, 0.412222, -0.910035,
		-0.135137, 0.900094, 0.414209,
		0.989863, 0.141083, 0.016366,
		39.423820, 36.933331, 32.735439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831810, 37.502724, 32.428246>,  <38.730915, 36.834572, 32.723984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831810, 37.502724, 32.428246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173573, 37.305801, 32.361755>,  <39.378628, 37.187649, 32.321861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173573, 37.305801, 32.361755>,  <38.831810, 37.502724, 32.428246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173573, 37.305801, 32.361755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055765, 0.404924, -0.912648,
		0.516612, 0.770499, 0.373421,
		0.854402, -0.492309, -0.166222,
		39.429893, 37.158108, 32.311890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299679, 37.967522, 32.057873>,  <38.831810, 37.502724, 32.428246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299679, 37.967522, 32.057873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446213, 37.606297, 31.968191>,  <39.534134, 37.389561, 31.914381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446213, 37.606297, 31.968191>,  <39.299679, 37.967522, 32.057873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446213, 37.606297, 31.968191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288697, 0.339379, -0.895252,
		0.884564, 0.263232, 0.385039,
		0.366333, -0.903067, -0.224209,
		39.556114, 37.335377, 31.900928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892761, 38.093395, 31.732214>,  <39.299679, 37.967522, 32.057873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892761, 38.093395, 31.732214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836674, 37.714497, 31.616928>,  <39.803020, 37.487160, 31.547756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.836674, 37.714497, 31.616928>,  <39.892761, 38.093395, 31.732214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836674, 37.714497, 31.616928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227155, 0.252553, -0.940541,
		0.963712, -0.197347, 0.179760,
		-0.140214, -0.947244, -0.288217,
		39.794609, 37.430325, 31.530462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504829, 37.922043, 31.357052>,  <39.892761, 38.093395, 31.732214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504829, 37.922043, 31.357052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243210, 37.642109, 31.242193>,  <40.086239, 37.474148, 31.173277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243210, 37.642109, 31.242193>,  <40.504829, 37.922043, 31.357052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243210, 37.642109, 31.242193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336902, 0.070381, -0.938905,
		0.677286, -0.710832, 0.189743,
		-0.654050, -0.699832, -0.287149,
		40.046993, 37.432159, 31.156048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835339, 37.530510, 30.857685>,  <40.504829, 37.922043, 31.357052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835339, 37.530510, 30.857685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451538, 37.442001, 30.787935>,  <40.221260, 37.388897, 30.746086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.451538, 37.442001, 30.787935>,  <40.835339, 37.530510, 30.857685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451538, 37.442001, 30.787935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185781, -0.031674, -0.982080,
		0.211781, -0.974698, 0.071499,
		-0.959496, -0.221269, -0.174373,
		40.163689, 37.375622, 30.735624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800610, 36.855659, 30.463787>,  <40.835339, 37.530510, 30.857685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800610, 36.855659, 30.463787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461170, 37.054790, 30.392185>,  <40.257507, 37.174271, 30.349224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461170, 37.054790, 30.392185>,  <40.800610, 36.855659, 30.463787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461170, 37.054790, 30.392185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183860, -0.039740, -0.982149,
		-0.496056, -0.866364, -0.057808,
		-0.848601, 0.497829, -0.179003,
		40.206589, 37.204140, 30.338484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423481, 36.403206, 29.967884>,  <40.800610, 36.855659, 30.463787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423481, 36.403206, 29.967884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273705, 36.772331, 29.931629>,  <40.183838, 36.993805, 29.909876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.273705, 36.772331, 29.931629>,  <40.423481, 36.403206, 29.967884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273705, 36.772331, 29.931629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208091, -0.011627, -0.978040,
		-0.903599, -0.385080, -0.187675,
		-0.374441, 0.922810, -0.090638,
		40.161373, 37.049175, 29.904438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084244, 36.348072, 29.289358>,  <40.423481, 36.403206, 29.967884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084244, 36.348072, 29.289358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105110, 36.741032, 29.361099>,  <40.117630, 36.976807, 29.404144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.105110, 36.741032, 29.361099>,  <40.084244, 36.348072, 29.289358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105110, 36.741032, 29.361099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137482, 0.170821, -0.975663,
		-0.989130, 0.075550, -0.126152,
		0.052162, 0.982401, 0.179351,
		40.120758, 37.035751, 29.414904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695770, 36.666580, 28.826462>,  <40.084244, 36.348072, 29.289358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695770, 36.666580, 28.826462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967785, 36.936451, 28.941259>,  <40.130993, 37.098373, 29.010138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967785, 36.936451, 28.941259>,  <39.695770, 36.666580, 28.826462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967785, 36.936451, 28.941259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257183, 0.147060, -0.955107,
		-0.686593, 0.723316, -0.073509,
		0.680035, 0.674675, 0.286995,
		40.171795, 37.138855, 29.027357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071735, 36.714539, 28.364063>,  <39.695770, 36.666580, 28.826462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071735, 36.714539, 28.364063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914467, 36.422459, 28.140558>,  <38.820107, 36.247211, 28.006454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914467, 36.422459, 28.140558>,  <39.071735, 36.714539, 28.364063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914467, 36.422459, 28.140558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429719, -0.391325, 0.813761,
		-0.812868, 0.560062, -0.159923,
		-0.393175, -0.730202, -0.558765,
		38.796513, 36.203400, 27.972929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292168, 36.737255, 28.450212>,  <39.071735, 36.714539, 28.364063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292168, 36.737255, 28.450212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429604, 36.380978, 28.331139>,  <38.512066, 36.167213, 28.259695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429604, 36.380978, 28.331139>,  <38.292168, 36.737255, 28.450212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429604, 36.380978, 28.331139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285580, -0.401066, 0.870396,
		-0.894646, -0.214045, -0.392165,
		0.343588, -0.890691, -0.297685,
		38.532681, 36.113770, 28.241833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815613, 36.261467, 28.738947>,  <38.292168, 36.737255, 28.450212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815613, 36.261467, 28.738947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151791, 36.054077, 28.675909>,  <38.353497, 35.929646, 28.638086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.151791, 36.054077, 28.675909>,  <37.815613, 36.261467, 28.738947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151791, 36.054077, 28.675909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161507, -0.517267, 0.840446,
		-0.517267, -0.680897, -0.518472,
		-0.840446, 0.518472, 0.157596,
		38.403923, 35.898537, 28.628630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565697, 35.563515, 28.761484>,  <37.815613, 36.261467, 28.738947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565697, 35.563515, 28.761484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962654, 35.544373, 28.806843>,  <38.200829, 35.532887, 28.834059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962654, 35.544373, 28.806843>,  <37.565697, 35.563515, 28.761484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962654, 35.544373, 28.806843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119353, -0.599273, 0.791598,
		0.030073, -0.799113, -0.600428,
		0.992396, -0.047857, 0.113399,
		38.260372, 35.530014, 28.840862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658508, 34.914661, 28.935411>,  <37.565697, 35.563515, 28.761484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658508, 34.914661, 28.935411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000244, 35.092331, 29.043348>,  <38.205284, 35.198933, 29.108110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.000244, 35.092331, 29.043348>,  <37.658508, 34.914661, 28.935411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000244, 35.092331, 29.043348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019335, -0.491686, 0.870558,
		0.519354, -0.748970, -0.411479,
		0.854341, 0.444171, 0.269840,
		38.256546, 35.225582, 29.124300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105049, 34.411690, 29.007908>,  <37.658508, 34.914661, 28.935411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105049, 34.411690, 29.007908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268307, 34.699306, 29.232908>,  <38.366261, 34.871876, 29.367908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.268307, 34.699306, 29.232908>,  <38.105049, 34.411690, 29.007908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268307, 34.699306, 29.232908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121625, -0.567836, 0.814107,
		0.904781, -0.400685, -0.144305,
		0.408142, 0.719037, 0.562500,
		38.390751, 34.915016, 29.401659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394871, 34.031719, 29.675608>,  <38.105049, 34.411690, 29.007908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394871, 34.031719, 29.675608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394829, 34.420738, 29.768684>,  <38.394806, 34.654152, 29.824530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394829, 34.420738, 29.768684>,  <38.394871, 34.031719, 29.675608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394829, 34.420738, 29.768684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232349, -0.226345, 0.945929,
		0.972633, -0.053969, 0.225994,
		-0.000102, 0.972551, 0.232690,
		38.394798, 34.712505, 29.838491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818192, 34.105404, 30.155642>,  <38.394871, 34.031719, 29.675608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818192, 34.105404, 30.155642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555153, 34.405369, 30.184481>,  <38.397327, 34.585346, 30.201784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555153, 34.405369, 30.184481>,  <38.818192, 34.105404, 30.155642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555153, 34.405369, 30.184481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280285, -0.332365, 0.900541,
		0.699288, 0.571986, 0.428751,
		-0.657599, 0.749910, 0.072100,
		38.357872, 34.630341, 30.206110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832825, 34.369175, 30.869324>,  <38.818192, 34.105404, 30.155642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832825, 34.369175, 30.869324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484039, 34.514179, 30.737707>,  <38.274769, 34.601181, 30.658737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.484039, 34.514179, 30.737707>,  <38.832825, 34.369175, 30.869324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484039, 34.514179, 30.737707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375338, -0.063474, 0.924712,
		0.314335, 0.929814, 0.191412,
		-0.871960, 0.362514, -0.329043,
		38.222450, 34.622932, 30.638994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613304, 35.077518, 31.164614>,  <38.832825, 34.369175, 30.869324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613304, 35.077518, 31.164614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291332, 34.861092, 31.067183>,  <38.098148, 34.731236, 31.008724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291332, 34.861092, 31.067183>,  <38.613304, 35.077518, 31.164614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291332, 34.861092, 31.067183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329401, 0.066024, 0.941879,
		-0.493540, 0.838382, -0.231374,
		-0.804930, -0.541070, -0.243578,
		38.049854, 34.698772, 30.994108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102440, 35.289688, 31.608212>,  <38.613304, 35.077518, 31.164614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102440, 35.289688, 31.608212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897774, 34.971111, 31.479292>,  <37.774975, 34.779964, 31.401939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.897774, 34.971111, 31.479292>,  <38.102440, 35.289688, 31.608212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897774, 34.971111, 31.479292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394574, -0.115407, 0.911588,
		-0.763225, 0.593597, -0.255207,
		-0.511663, -0.796445, -0.322299,
		37.744274, 34.732178, 31.382603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376320, 35.401539, 31.782598>,  <38.102440, 35.289688, 31.608212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376320, 35.401539, 31.782598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466160, 35.014309, 31.738094>,  <37.520061, 34.781971, 31.711391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.466160, 35.014309, 31.738094>,  <37.376320, 35.401539, 31.782598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466160, 35.014309, 31.738094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483560, -0.209851, 0.849783,
		-0.846006, -0.137059, -0.515257,
		0.224598, -0.968079, -0.111259,
		37.533539, 34.723885, 31.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.198154, 37.604847, 24.129213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425972, 37.285263, 24.206450>,  <39.562664, 37.093513, 24.252790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425972, 37.285263, 24.206450>,  <39.198154, 37.604847, 24.129213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425972, 37.285263, 24.206450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355669, -0.027769, 0.934200,
		-0.741023, -0.600747, -0.299980,
		0.569548, -0.798957, 0.193089,
		39.596836, 37.045578, 24.264376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785545, 37.139202, 24.397636>,  <39.198154, 37.604847, 24.129213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785545, 37.139202, 24.397636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129261, 36.971413, 24.514706>,  <39.335491, 36.870739, 24.584948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129261, 36.971413, 24.514706>,  <38.785545, 37.139202, 24.397636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129261, 36.971413, 24.514706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418601, -0.247928, 0.873673,
		-0.293923, -0.873253, -0.388636,
		0.859292, -0.419476, 0.292673,
		39.387051, 36.845570, 24.602509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601044, 36.544720, 24.760561>,  <38.785545, 37.139202, 24.397636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601044, 36.544720, 24.760561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973392, 36.590771, 24.899252>,  <39.196800, 36.618401, 24.982466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973392, 36.590771, 24.899252>,  <38.601044, 36.544720, 24.760561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973392, 36.590771, 24.899252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316172, -0.221660, 0.922444,
		0.183059, -0.968303, -0.169936,
		0.930873, 0.115133, 0.346727,
		39.252655, 36.625309, 25.003269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763474, 35.959591, 25.100220>,  <38.601044, 36.544720, 24.760561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763474, 35.959591, 25.100220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031994, 36.213200, 25.253777>,  <39.193104, 36.365364, 25.345911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031994, 36.213200, 25.253777>,  <38.763474, 35.959591, 25.100220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031994, 36.213200, 25.253777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187359, -0.355961, 0.915526,
		0.717118, -0.686515, -0.120165,
		0.671296, 0.634026, 0.383891,
		39.233383, 36.403408, 25.368944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041908, 35.545879, 25.650024>,  <38.763474, 35.959591, 25.100220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041908, 35.545879, 25.650024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124310, 35.930233, 25.724060>,  <39.173748, 36.160847, 25.768482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124310, 35.930233, 25.724060>,  <39.041908, 35.545879, 25.650024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124310, 35.930233, 25.724060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191122, -0.145996, 0.970648,
		0.959706, -0.235328, 0.153572,
		0.206000, 0.960888, 0.185090,
		39.186111, 36.218498, 25.779587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645988, 35.653599, 26.152405>,  <39.041908, 35.545879, 25.650024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645988, 35.653599, 26.152405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385551, 35.953590, 26.199072>,  <39.229290, 36.133587, 26.227072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385551, 35.953590, 26.199072>,  <39.645988, 35.653599, 26.152405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385551, 35.953590, 26.199072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001544, -0.152406, 0.988317,
		0.759000, 0.643662, 0.098072,
		-0.651089, 0.749981, 0.116669,
		39.190224, 36.178585, 26.234074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851570, 35.919567, 26.697496>,  <39.645988, 35.653599, 26.152405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851570, 35.919567, 26.697496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472397, 36.046440, 26.686050>,  <39.244892, 36.122566, 26.679184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472397, 36.046440, 26.686050>,  <39.851570, 35.919567, 26.697496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472397, 36.046440, 26.686050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102294, -0.218160, 0.970537,
		0.301598, 0.922930, 0.239247,
		-0.947932, 0.317186, -0.028614,
		39.188019, 36.141598, 26.677465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830910, 36.110088, 27.371038>,  <39.851570, 35.919567, 26.697496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830910, 36.110088, 27.371038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452858, 36.143490, 27.244698>,  <39.226028, 36.163532, 27.168894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452858, 36.143490, 27.244698>,  <39.830910, 36.110088, 27.371038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452858, 36.143490, 27.244698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322494, -0.083764, 0.942858,
		0.052280, 0.992981, 0.106099,
		-0.945127, 0.083508, -0.315851,
		39.169319, 36.168541, 27.149942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567028, 36.561481, 27.864416>,  <39.830910, 36.110088, 27.371038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567028, 36.561481, 27.864416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254375, 36.367619, 27.707357>,  <39.066784, 36.251301, 27.613123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254375, 36.367619, 27.707357>,  <39.567028, 36.561481, 27.864416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254375, 36.367619, 27.707357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305075, -0.252018, 0.918377,
		-0.544048, 0.837615, 0.049129,
		-0.781627, -0.484653, -0.392645,
		39.019886, 36.222221, 27.589563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677151, 37.194740, 28.283770>,  <39.567028, 36.561481, 27.864416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677151, 37.194740, 28.283770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020187, 37.297302, 28.462114>,  <40.226009, 37.358841, 28.569122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020187, 37.297302, 28.462114>,  <39.677151, 37.194740, 28.283770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020187, 37.297302, 28.462114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329835, 0.390987, -0.859266,
		-0.394650, 0.883959, 0.250734,
		0.857590, 0.256409, 0.445863,
		40.277466, 37.374226, 28.595873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875763, 37.786396, 28.015480>,  <39.677151, 37.194740, 28.283770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875763, 37.786396, 28.015480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224068, 37.679699, 28.180702>,  <40.433052, 37.615681, 28.279837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224068, 37.679699, 28.180702>,  <39.875763, 37.786396, 28.015480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224068, 37.679699, 28.180702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485615, 0.334799, -0.807519,
		0.077109, 0.903746, 0.421066,
		0.870765, -0.266743, 0.413057,
		40.485298, 37.599674, 28.304619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319839, 38.299049, 27.994207>,  <39.875763, 37.786396, 28.015480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319839, 38.299049, 27.994207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571915, 37.989830, 28.023190>,  <40.723160, 37.804298, 28.040579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571915, 37.989830, 28.023190>,  <40.319839, 38.299049, 27.994207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571915, 37.989830, 28.023190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475682, 0.310642, -0.822939,
		0.613667, 0.553074, 0.563491,
		0.630190, -0.773053, 0.072457,
		40.760971, 37.757915, 28.044928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924259, 38.531986, 27.723631>,  <40.319839, 38.299049, 27.994207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924259, 38.531986, 27.723631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981113, 38.136234, 27.711523>,  <41.015224, 37.898781, 27.704258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981113, 38.136234, 27.711523>,  <40.924259, 38.531986, 27.723631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981113, 38.136234, 27.711523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386312, 0.083600, -0.918572,
		0.911351, 0.118868, 0.394093,
		0.142135, -0.989384, -0.030269,
		41.023754, 37.839420, 27.702442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643867, 38.469574, 27.607910>,  <40.924259, 38.531986, 27.723631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643867, 38.469574, 27.607910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443420, 38.145866, 27.485296>,  <41.323151, 37.951641, 27.411728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443420, 38.145866, 27.485296>,  <41.643867, 38.469574, 27.607910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443420, 38.145866, 27.485296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438868, 0.067627, -0.896003,
		0.745837, -0.583533, 0.321273,
		-0.501121, -0.809268, -0.306533,
		41.293083, 37.903088, 27.393337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173103, 38.104069, 27.083197>,  <41.643867, 38.469574, 27.607910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173103, 38.104069, 27.083197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809910, 37.957771, 27.001429>,  <41.591991, 37.869991, 26.952368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809910, 37.957771, 27.001429>,  <42.173103, 38.104069, 27.083197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809910, 37.957771, 27.001429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141837, 0.190770, -0.971334,
		0.394261, -0.910953, -0.121340,
		-0.907987, -0.365749, -0.204420,
		41.537514, 37.848045, 26.940104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349209, 37.610092, 26.573709>,  <42.173103, 38.104069, 27.083197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349209, 37.610092, 26.573709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954086, 37.658360, 26.534370>,  <41.717010, 37.687321, 26.510767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954086, 37.658360, 26.534370>,  <42.349209, 37.610092, 26.573709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954086, 37.658360, 26.534370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127417, 0.263794, -0.956127,
		-0.089430, -0.957002, -0.275953,
		-0.987810, 0.120667, -0.098347,
		41.657745, 37.694561, 26.504866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062332, 37.070282, 26.121737>,  <42.349209, 37.610092, 26.573709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062332, 37.070282, 26.121737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872086, 37.422031, 26.130547>,  <41.757938, 37.633083, 26.135832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872086, 37.422031, 26.130547>,  <42.062332, 37.070282, 26.121737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872086, 37.422031, 26.130547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223075, 0.144797, -0.963987,
		-0.850896, -0.453577, -0.265035,
		-0.475618, 0.879376, 0.022025,
		41.729401, 37.685844, 26.137154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820156, 37.163174, 25.494463>,  <42.062332, 37.070282, 26.121737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820156, 37.163174, 25.494463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740498, 37.538448, 25.607708>,  <41.692703, 37.763611, 25.675655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740498, 37.538448, 25.607708>,  <41.820156, 37.163174, 25.494463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740498, 37.538448, 25.607708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449725, 0.344176, -0.824190,
		-0.870682, -0.036813, -0.490466,
		-0.199148, 0.938183, 0.283112,
		41.680752, 37.819904, 25.692642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351734, 37.531868, 25.036568>,  <41.820156, 37.163174, 25.494463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351734, 37.531868, 25.036568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554943, 37.823555, 25.219938>,  <41.676868, 37.998566, 25.329962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554943, 37.823555, 25.219938>,  <41.351734, 37.531868, 25.036568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554943, 37.823555, 25.219938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211664, 0.410214, -0.887087,
		-0.834930, 0.547695, 0.054050,
		0.508025, 0.729215, 0.458428,
		41.707352, 38.042320, 25.357466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098782, 38.144798, 24.691652>,  <41.351734, 37.531868, 25.036568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098782, 38.144798, 24.691652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428185, 38.276524, 24.876427>,  <41.625828, 38.355560, 24.987291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428185, 38.276524, 24.876427>,  <41.098782, 38.144798, 24.691652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428185, 38.276524, 24.876427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270303, 0.488126, -0.829861,
		-0.498768, 0.808260, 0.312962,
		0.823509, 0.329314, 0.461937,
		41.675236, 38.375317, 25.015007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128922, 38.897167, 24.477905>,  <41.098782, 38.144798, 24.691652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128922, 38.897167, 24.477905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487003, 38.764236, 24.596678>,  <41.701851, 38.684479, 24.667942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487003, 38.764236, 24.596678>,  <41.128922, 38.897167, 24.477905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487003, 38.764236, 24.596678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424058, 0.430315, -0.796871,
		0.137044, 0.839280, 0.526145,
		0.895206, -0.332323, 0.296932,
		41.755566, 38.664539, 24.685757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593483, 39.495911, 24.430182>,  <41.128922, 38.897167, 24.477905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593483, 39.495911, 24.430182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831665, 39.174862, 24.444183>,  <41.974575, 38.982231, 24.452585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831665, 39.174862, 24.444183>,  <41.593483, 39.495911, 24.430182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831665, 39.174862, 24.444183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564005, 0.386604, -0.729682,
		0.572126, 0.454238, 0.682890,
		0.595458, -0.802623, 0.035006,
		42.010303, 38.934074, 24.454685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318539, 39.803444, 24.382582>,  <41.593483, 39.495911, 24.430182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318539, 39.803444, 24.382582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325699, 39.413292, 24.294666>,  <42.329994, 39.179199, 24.241917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325699, 39.413292, 24.294666>,  <42.318539, 39.803444, 24.382582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325699, 39.413292, 24.294666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605301, 0.185534, -0.774072,
		0.795795, -0.119182, 0.593722,
		0.017900, -0.975383, -0.219788,
		42.331070, 39.120678, 24.228729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.111343, 30.833458, 23.965494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.154045, 31.230671, 23.945524>,  <42.179665, 31.468998, 23.933542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.154045, 31.230671, 23.945524>,  <42.111343, 30.833458, 23.965494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154045, 31.230671, 23.945524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086165, 0.059262, 0.994517,
		0.990545, -0.101866, 0.091891,
		0.106753, 0.993031, -0.049925,
		42.186069, 31.528580, 23.930548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589123, 31.110001, 24.435682>,  <42.111343, 30.833458, 23.965494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589123, 31.110001, 24.435682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322361, 31.403055, 24.381304>,  <42.162304, 31.578888, 24.348677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.322361, 31.403055, 24.381304>,  <42.589123, 31.110001, 24.435682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322361, 31.403055, 24.381304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136651, 0.059096, 0.988855,
		0.732504, 0.678051, 0.060703,
		-0.666907, 0.732635, -0.135945,
		42.122288, 31.622847, 24.340521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792206, 31.644859, 24.888174>,  <42.589123, 31.110001, 24.435682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792206, 31.644859, 24.888174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.397179, 31.674885, 24.832941>,  <42.160160, 31.692900, 24.799801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.397179, 31.674885, 24.832941>,  <42.792206, 31.644859, 24.888174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397179, 31.674885, 24.832941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137488, 0.013034, 0.990418,
		0.076145, 0.997094, -0.002552,
		-0.987572, 0.075064, -0.138081,
		42.100906, 31.697405, 24.791517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590160, 32.009186, 25.442671>,  <42.792206, 31.644859, 24.888174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590160, 32.009186, 25.442671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236332, 31.896914, 25.293674>,  <42.024036, 31.829550, 25.204277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236332, 31.896914, 25.293674>,  <42.590160, 32.009186, 25.442671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236332, 31.896914, 25.293674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415330, 0.110657, 0.902915,
		-0.212216, 0.953400, -0.214461,
		-0.884571, -0.280685, -0.372492,
		41.970963, 31.812708, 25.181927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141720, 32.530735, 25.716047>,  <42.590160, 32.009186, 25.442671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141720, 32.530735, 25.716047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949093, 32.187519, 25.644651>,  <41.833519, 31.981588, 25.601814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949093, 32.187519, 25.644651>,  <42.141720, 32.530735, 25.716047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949093, 32.187519, 25.644651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402594, 0.035677, 0.914683,
		-0.778470, 0.512337, -0.362623,
		-0.481564, -0.858043, -0.178491,
		41.804623, 31.930107, 25.591105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416660, 32.625931, 25.979542>,  <42.141720, 32.530735, 25.716047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416660, 32.625931, 25.979542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448513, 32.228561, 25.946646>,  <41.467625, 31.990139, 25.926908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448513, 32.228561, 25.946646>,  <41.416660, 32.625931, 25.979542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448513, 32.228561, 25.946646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350570, -0.105141, 0.930616,
		-0.933145, -0.045271, -0.356637,
		0.079627, -0.993427, -0.082241,
		41.472401, 31.930534, 25.921974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864670, 32.320011, 26.329109>,  <41.416660, 32.625931, 25.979542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864670, 32.320011, 26.329109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125965, 32.017677, 26.311264>,  <41.282742, 31.836277, 26.300556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125965, 32.017677, 26.311264>,  <40.864670, 32.320011, 26.329109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125965, 32.017677, 26.311264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405854, -0.399289, 0.822101,
		-0.639189, -0.518921, -0.567590,
		0.653238, -0.755837, -0.044615,
		41.321938, 31.790926, 26.297880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470097, 31.740677, 26.567432>,  <40.864670, 32.320011, 26.329109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470097, 31.740677, 26.567432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.852409, 31.626827, 26.597004>,  <41.081799, 31.558517, 26.614748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.852409, 31.626827, 26.597004>,  <40.470097, 31.740677, 26.567432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852409, 31.626827, 26.597004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216586, -0.511280, 0.831675,
		-0.198916, -0.810914, -0.550319,
		0.955784, -0.284625, 0.073931,
		41.139145, 31.541439, 26.619183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399109, 31.119169, 26.777868>,  <40.470097, 31.740677, 26.567432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399109, 31.119169, 26.777868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777218, 31.208780, 26.872761>,  <41.004082, 31.262547, 26.929697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.777218, 31.208780, 26.872761>,  <40.399109, 31.119169, 26.777868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777218, 31.208780, 26.872761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132046, -0.402217, 0.905972,
		0.298383, -0.887712, -0.350620,
		0.945268, 0.224029, 0.237234,
		41.060799, 31.275990, 26.943932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600029, 30.455303, 27.062269>,  <40.399109, 31.119169, 26.777868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600029, 30.455303, 27.062269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848007, 30.754713, 27.156397>,  <40.996796, 30.934359, 27.212873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.848007, 30.754713, 27.156397>,  <40.600029, 30.455303, 27.062269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848007, 30.754713, 27.156397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014870, -0.311063, 0.950273,
		0.784501, -0.585622, -0.203974,
		0.619949, 0.748523, 0.235321,
		41.033993, 30.979271, 27.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111122, 30.260361, 27.354889>,  <40.600029, 30.455303, 27.062269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111122, 30.260361, 27.354889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.094715, 30.632504, 27.500633>,  <41.084869, 30.855789, 27.588079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.094715, 30.632504, 27.500633>,  <41.111122, 30.260361, 27.354889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094715, 30.632504, 27.500633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054821, -0.366212, 0.928915,
		0.997653, 0.018127, 0.066024,
		-0.041017, 0.930355, 0.364359,
		41.082409, 30.911610, 27.609941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578381, 30.289436, 27.919716>,  <41.111122, 30.260361, 27.354889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578381, 30.289436, 27.919716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.345844, 30.610903, 27.970556>,  <41.206322, 30.803783, 28.001060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.345844, 30.610903, 27.970556>,  <41.578381, 30.289436, 27.919716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345844, 30.610903, 27.970556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101320, -0.226498, 0.968727,
		0.807324, 0.550287, 0.213101,
		-0.581346, 0.803668, 0.127103,
		41.171440, 30.852003, 28.008688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827873, 30.614216, 28.458521>,  <41.578381, 30.289436, 27.919716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827873, 30.614216, 28.458521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485233, 30.816677, 28.418428>,  <41.279652, 30.938154, 28.394373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485233, 30.816677, 28.418428>,  <41.827873, 30.614216, 28.458521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485233, 30.816677, 28.418428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190292, -0.129327, 0.973172,
		0.479613, 0.852691, 0.207099,
		-0.856598, 0.506155, -0.100233,
		41.228252, 30.968523, 28.388359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824184, 31.211500, 28.914984>,  <41.827873, 30.614216, 28.458521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824184, 31.211500, 28.914984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.449440, 31.101357, 28.828751>,  <41.224594, 31.035271, 28.777010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.449440, 31.101357, 28.828751>,  <41.824184, 31.211500, 28.914984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449440, 31.101357, 28.828751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184367, -0.134939, 0.973550,
		-0.297164, 0.951825, 0.075652,
		-0.936858, -0.275357, -0.215584,
		41.168385, 31.018749, 28.764076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099838, 31.992310, 29.146996>,  <41.824184, 31.211500, 28.914984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099838, 31.992310, 29.146996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.474205, 32.026295, 29.283726>,  <42.698826, 32.046684, 29.365763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.474205, 32.026295, 29.283726>,  <42.099838, 31.992310, 29.146996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474205, 32.026295, 29.283726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339427, 0.041663, -0.939709,
		-0.094083, 0.995513, 0.010154,
		0.935916, 0.084964, 0.341823,
		42.754978, 32.051785, 29.386272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373547, 32.629284, 28.845907>,  <42.099838, 31.992310, 29.146996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373547, 32.629284, 28.845907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.680855, 32.393459, 28.945652>,  <42.865238, 32.251965, 29.005499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.680855, 32.393459, 28.945652>,  <42.373547, 32.629284, 28.845907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680855, 32.393459, 28.945652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433127, 0.191931, -0.880661,
		0.471340, 0.784591, 0.402809,
		0.768270, -0.589558, 0.249363,
		42.911335, 32.216591, 29.020460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876743, 32.916733, 28.498032>,  <42.373547, 32.629284, 28.845907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876743, 32.916733, 28.498032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075539, 32.593250, 28.623890>,  <43.194817, 32.399162, 28.699406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.075539, 32.593250, 28.623890>,  <42.876743, 32.916733, 28.498032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075539, 32.593250, 28.623890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698558, 0.157740, -0.697951,
		0.514804, 0.566671, 0.643321,
		0.496985, -0.808704, 0.314647,
		43.224636, 32.350639, 28.718285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558422, 33.125237, 28.559967>,  <42.876743, 32.916733, 28.498032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558422, 33.125237, 28.559967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.565437, 32.728092, 28.512770>,  <43.569649, 32.489807, 28.484451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.565437, 32.728092, 28.512770>,  <43.558422, 33.125237, 28.559967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565437, 32.728092, 28.512770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553027, 0.107950, -0.826141,
		0.832979, -0.050760, 0.550972,
		0.017543, -0.992860, -0.117991,
		43.570702, 32.430233, 28.477373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234798, 33.164433, 28.358553>,  <43.558422, 33.125237, 28.559967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234798, 33.164433, 28.358553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.044441, 32.838158, 28.226995>,  <43.930225, 32.642391, 28.148062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.044441, 32.838158, 28.226995>,  <44.234798, 33.164433, 28.358553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.044441, 32.838158, 28.226995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575538, -0.006062, -0.817753,
		0.665040, -0.578455, 0.472346,
		-0.475897, -0.815692, -0.328892,
		43.901672, 32.593449, 28.128328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747818, 32.761822, 27.989683>,  <44.234798, 33.164433, 28.358553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747818, 32.761822, 27.989683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.394932, 32.640182, 27.845896>,  <44.183201, 32.567200, 27.759624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.394932, 32.640182, 27.845896>,  <44.747818, 32.761822, 27.989683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394932, 32.640182, 27.845896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378645, -0.004435, -0.925531,
		0.279860, -0.952630, 0.119059,
		-0.882217, -0.304100, -0.359467,
		44.130268, 32.548954, 27.738056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916691, 32.342796, 27.441883>,  <44.747818, 32.761822, 27.989683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916691, 32.342796, 27.441883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.532501, 32.400768, 27.346813>,  <44.301987, 32.435551, 27.289772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.532501, 32.400768, 27.346813>,  <44.916691, 32.342796, 27.441883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532501, 32.400768, 27.346813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264651, 0.210626, -0.941062,
		-0.086324, -0.966765, -0.240655,
		-0.960473, 0.144926, -0.237673,
		44.244358, 32.444244, 27.275511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693047, 31.841568, 26.849901>,  <44.916691, 32.342796, 27.441883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693047, 31.841568, 26.849901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.439445, 32.150810, 26.842400>,  <44.287285, 32.336353, 26.837898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.439445, 32.150810, 26.842400>,  <44.693047, 31.841568, 26.849901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439445, 32.150810, 26.842400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119217, 0.073751, -0.990125,
		-0.764086, -0.629978, -0.138926,
		-0.634003, 0.773104, -0.018752,
		44.249245, 32.382740, 26.836775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188282, 31.693426, 26.345989>,  <44.693047, 31.841568, 26.849901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188282, 31.693426, 26.345989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.167465, 32.091827, 26.375036>,  <44.154976, 32.330868, 26.392464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.167465, 32.091827, 26.375036>,  <44.188282, 31.693426, 26.345989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167465, 32.091827, 26.375036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267843, 0.056129, -0.961826,
		-0.962056, -0.069510, 0.263851,
		-0.052046, 0.996001, 0.072617,
		44.151852, 32.390629, 26.396822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735126, 31.952818, 25.793657>,  <44.188282, 31.693426, 26.345989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735126, 31.952818, 25.793657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.900566, 32.302082, 25.896828>,  <43.999828, 32.511642, 25.958731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.900566, 32.302082, 25.896828>,  <43.735126, 31.952818, 25.793657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900566, 32.302082, 25.896828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001171, 0.282783, -0.959183,
		-0.910458, 0.397020, 0.115936,
		0.413600, 0.873160, 0.257927,
		44.024647, 32.564030, 25.974205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411076, 32.444344, 25.424994>,  <43.735126, 31.952818, 25.793657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411076, 32.444344, 25.424994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746017, 32.638676, 25.525240>,  <43.946983, 32.755276, 25.585388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.746017, 32.638676, 25.525240>,  <43.411076, 32.444344, 25.424994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746017, 32.638676, 25.525240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058265, 0.376515, -0.924576,
		-0.543552, 0.788797, 0.286968,
		0.837351, 0.485835, 0.250615,
		43.997223, 32.784428, 25.600424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355789, 33.171654, 25.275234>,  <43.411076, 32.444344, 25.424994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355789, 33.171654, 25.275234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751389, 33.113918, 25.288231>,  <43.988747, 33.079277, 25.296030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.751389, 33.113918, 25.288231>,  <43.355789, 33.171654, 25.275234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751389, 33.113918, 25.288231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067339, 0.243598, -0.967536,
		0.131733, 0.959076, 0.250637,
		0.988995, -0.144334, 0.032493,
		44.048088, 33.070618, 25.297979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650272, 33.723068, 24.984215>,  <43.355789, 33.171654, 25.275234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650272, 33.723068, 24.984215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.918034, 33.428719, 24.943453>,  <44.078690, 33.252110, 24.918995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.918034, 33.428719, 24.943453>,  <43.650272, 33.723068, 24.984215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918034, 33.428719, 24.943453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079111, 0.207003, -0.975137,
		0.738673, 0.644700, 0.196784,
		0.669405, -0.735875, -0.101904,
		44.118855, 33.207954, 24.912882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233082, 34.012508, 24.616768>,  <43.650272, 33.723068, 24.984215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233082, 34.012508, 24.616768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.303993, 33.621536, 24.570801>,  <44.346539, 33.386955, 24.543221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.303993, 33.621536, 24.570801>,  <44.233082, 34.012508, 24.616768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303993, 33.621536, 24.570801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239628, 0.156124, -0.958229,
		0.954542, 0.142337, 0.261897,
		0.177280, -0.977428, -0.114919,
		44.357178, 33.328308, 24.536325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962196, 34.121201, 24.856581>,  <44.233082, 34.012508, 24.616768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962196, 34.121201, 24.856581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.204712, 34.400570, 24.704462>,  <45.350220, 34.568192, 24.613190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.204712, 34.400570, 24.704462>,  <44.962196, 34.121201, 24.856581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204712, 34.400570, 24.704462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320728, 0.222850, 0.920582,
		0.727702, -0.680109, -0.088892,
		0.606286, 0.698420, -0.380298,
		45.386597, 34.610096, 24.590372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514008, 34.106182, 25.175947>,  <44.962196, 34.121201, 24.856581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514008, 34.106182, 25.175947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.539539, 34.485489, 25.051554>,  <45.554859, 34.713074, 24.976917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.539539, 34.485489, 25.051554>,  <45.514008, 34.106182, 25.175947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539539, 34.485489, 25.051554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330541, 0.273940, 0.903161,
		0.941631, -0.160444, -0.295955,
		0.063833, 0.948269, -0.310984,
		45.558689, 34.769970, 24.958258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112206, 34.344780, 25.473776>,  <45.514008, 34.106182, 25.175947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112206, 34.344780, 25.473776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.919239, 34.675606, 25.358370>,  <45.803459, 34.874100, 25.289125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.919239, 34.675606, 25.358370>,  <46.112206, 34.344780, 25.473776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919239, 34.675606, 25.358370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064359, 0.361953, 0.929972,
		0.873577, 0.430061, -0.227839,
		-0.482412, 0.827066, -0.288515,
		45.774517, 34.923725, 25.271814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495945, 34.881271, 25.680475>,  <46.112206, 34.344780, 25.473776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495945, 34.881271, 25.680475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.135571, 35.044857, 25.622435>,  <45.919346, 35.143009, 25.587610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.135571, 35.044857, 25.622435>,  <46.495945, 34.881271, 25.680475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135571, 35.044857, 25.622435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055332, 0.439916, 0.896333,
		0.430402, 0.799513, -0.418967,
		-0.900940, 0.408965, -0.145102,
		45.865288, 35.167545, 25.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627625, 35.501266, 25.872683>,  <46.495945, 34.881271, 25.680475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627625, 35.501266, 25.872683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.228062, 35.485432, 25.862673>,  <45.988323, 35.475929, 25.856667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.228062, 35.485432, 25.862673>,  <46.627625, 35.501266, 25.872683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228062, 35.485432, 25.862673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042582, 0.545077, 0.837304,
		-0.019508, 0.837450, -0.546165,
		-0.998902, -0.039591, -0.025027,
		45.928391, 35.473553, 25.855165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392780, 36.161983, 26.108187>,  <46.627625, 35.501266, 25.872683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392780, 36.161983, 26.108187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086929, 35.912014, 26.171192>,  <45.903419, 35.762032, 26.208996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.086929, 35.912014, 26.171192>,  <46.392780, 36.161983, 26.108187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086929, 35.912014, 26.171192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173567, 0.435062, 0.883513,
		-0.620656, 0.648223, -0.441128,
		-0.764631, -0.624923, 0.157514,
		45.857540, 35.724537, 26.218447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789272, 36.610771, 26.266731>,  <46.392780, 36.161983, 26.108187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789272, 36.610771, 26.266731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.710018, 36.244083, 26.405502>,  <45.662464, 36.024071, 26.488766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.710018, 36.244083, 26.405502>,  <45.789272, 36.610771, 26.266731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710018, 36.244083, 26.405502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235963, 0.388150, 0.890877,
		-0.951347, 0.094655, -0.293221,
		-0.198140, -0.916722, 0.346930,
		45.650578, 35.969067, 26.509581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229691, 36.724060, 26.548666>,  <45.789272, 36.610771, 26.266731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229691, 36.724060, 26.548666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.334751, 36.368351, 26.698446>,  <45.397789, 36.154926, 26.788315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.334751, 36.368351, 26.698446>,  <45.229691, 36.724060, 26.548666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334751, 36.368351, 26.698446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155989, 0.343835, 0.925983,
		-0.952198, -0.301622, -0.048407,
		0.262653, -0.889270, 0.374449,
		45.413548, 36.101570, 26.810781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740028, 36.508514, 27.094011>,  <45.229691, 36.724060, 26.548666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740028, 36.508514, 27.094011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.081017, 36.313152, 27.168587>,  <45.285610, 36.195934, 27.213331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.081017, 36.313152, 27.168587>,  <44.740028, 36.508514, 27.094011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081017, 36.313152, 27.168587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228746, -0.027801, 0.973089,
		-0.470075, -0.872176, -0.135419,
		0.852470, -0.488401, 0.186438,
		45.336758, 36.166634, 27.224518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573021, 35.926056, 27.453888>,  <44.740028, 36.508514, 27.094011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573021, 35.926056, 27.453888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.965408, 35.935242, 27.531012>,  <45.200840, 35.940754, 27.577286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.965408, 35.935242, 27.531012>,  <44.573021, 35.926056, 27.453888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965408, 35.935242, 27.531012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173276, -0.344552, 0.922637,
		0.087623, -0.938486, -0.334015,
		0.980968, 0.022967, 0.192808,
		45.259697, 35.942131, 27.588854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766315, 35.368713, 27.855553>,  <44.573021, 35.926056, 27.453888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766315, 35.368713, 27.855553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.051430, 35.641998, 27.918993>,  <45.222500, 35.805969, 27.957058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.051430, 35.641998, 27.918993>,  <44.766315, 35.368713, 27.855553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051430, 35.641998, 27.918993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117240, -0.106888, 0.987335,
		0.691515, -0.722352, 0.003912,
		0.712785, 0.683215, 0.158603,
		45.265266, 35.846962, 27.966574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332958, 35.020973, 28.215553>,  <44.766315, 35.368713, 27.855553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332958, 35.020973, 28.215553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.306812, 35.413883, 28.285830>,  <45.291122, 35.649628, 28.327995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.306812, 35.413883, 28.285830>,  <45.332958, 35.020973, 28.215553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306812, 35.413883, 28.285830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106352, -0.181922, 0.977545,
		0.992178, 0.045215, 0.116358,
		-0.065367, 0.982273, 0.175690,
		45.287201, 35.708565, 28.338537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564072, 34.973244, 28.945608>,  <45.332958, 35.020973, 28.215553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564072, 34.973244, 28.945608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.434246, 35.347881, 28.892767>,  <45.356350, 35.572662, 28.861063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.434246, 35.347881, 28.892767>,  <45.564072, 34.973244, 28.945608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434246, 35.347881, 28.892767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009470, 0.136439, 0.990603,
		0.945816, 0.322767, -0.035413,
		-0.324565, 0.936593, -0.132103,
		45.336876, 35.628860, 28.853136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896713, 35.333660, 29.447849>,  <45.564072, 34.973244, 28.945608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896713, 35.333660, 29.447849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.553585, 35.506657, 29.336786>,  <45.347710, 35.610455, 29.270149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.553585, 35.506657, 29.336786>,  <45.896713, 35.333660, 29.447849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553585, 35.506657, 29.336786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273303, 0.073658, 0.959104,
		0.435259, 0.898623, 0.055016,
		-0.857820, 0.432495, -0.277656,
		45.296238, 35.636406, 29.253489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.022114, 39.721226, 23.942600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824459, 39.377048, 23.892851>,  <42.705864, 39.170544, 23.863001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824459, 39.377048, 23.892851>,  <43.022114, 39.721226, 23.942600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824459, 39.377048, 23.892851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272027, -0.017149, -0.962137,
		0.825728, -0.509264, 0.242537,
		-0.494140, -0.860440, -0.124373,
		42.676216, 39.118916, 23.855539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487946, 39.256760, 23.537794>,  <43.022114, 39.721226, 23.942600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487946, 39.256760, 23.537794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135403, 39.073486, 23.491699>,  <42.923878, 38.963524, 23.464043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135403, 39.073486, 23.491699>,  <43.487946, 39.256760, 23.537794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135403, 39.073486, 23.491699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242280, -0.228927, -0.942811,
		0.405597, -0.858873, 0.312775,
		-0.881358, -0.458180, -0.115236,
		42.870995, 38.936031, 23.457129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591663, 38.536125, 23.545115>,  <43.487946, 39.256760, 23.537794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591663, 38.536125, 23.545115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272831, 38.643810, 23.328897>,  <43.081532, 38.708420, 23.199167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272831, 38.643810, 23.328897>,  <43.591663, 38.536125, 23.545115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272831, 38.643810, 23.328897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464310, -0.299104, -0.833638,
		-0.386103, -0.915457, 0.113413,
		-0.797083, 0.269212, -0.540541,
		43.033707, 38.724571, 23.166735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610825, 38.069527, 22.979239>,  <43.591663, 38.536125, 23.545115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610825, 38.069527, 22.979239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.328648, 38.286556, 22.796827>,  <43.159340, 38.416775, 22.687380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.328648, 38.286556, 22.796827>,  <43.610825, 38.069527, 22.979239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328648, 38.286556, 22.796827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353210, -0.288705, -0.889884,
		-0.614483, -0.788839, 0.012024,
		-0.705445, 0.542571, -0.456030,
		43.117016, 38.449329, 22.660019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135242, 37.669327, 22.479980>,  <43.610825, 38.069527, 22.979239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135242, 37.669327, 22.479980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157990, 38.050426, 22.360630>,  <43.171638, 38.279087, 22.289021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.157990, 38.050426, 22.360630>,  <43.135242, 37.669327, 22.479980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157990, 38.050426, 22.360630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376016, -0.297293, -0.877627,
		-0.924866, -0.062283, -0.375158,
		0.056871, 0.952753, -0.298376,
		43.175049, 38.336254, 22.271118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991043, 37.623177, 21.781906>,  <43.135242, 37.669327, 22.479980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991043, 37.623177, 21.781906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131901, 37.997524, 21.777193>,  <43.216415, 38.222134, 21.774364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.131901, 37.997524, 21.777193>,  <42.991043, 37.623177, 21.781906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131901, 37.997524, 21.777193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459549, -0.183854, -0.868914,
		-0.815360, 0.300565, -0.494822,
		0.352141, 0.935873, -0.011783,
		43.237541, 38.278286, 21.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920631, 37.837788, 21.105343>,  <42.991043, 37.623177, 21.781906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920631, 37.837788, 21.105343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213684, 38.068329, 21.250153>,  <43.389515, 38.206654, 21.337038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.213684, 38.068329, 21.250153>,  <42.920631, 37.837788, 21.105343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213684, 38.068329, 21.250153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437284, 0.009007, -0.899278,
		-0.521563, 0.817151, -0.245431,
		0.732635, 0.576354, 0.362025,
		43.433475, 38.241234, 21.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075214, 38.428608, 20.624979>,  <42.920631, 37.837788, 21.105343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075214, 38.428608, 20.624979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.413094, 38.412804, 20.838490>,  <43.615822, 38.403320, 20.966595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.413094, 38.412804, 20.838490>,  <43.075214, 38.428608, 20.624979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413094, 38.412804, 20.838490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530534, -0.070077, -0.844762,
		0.070786, 0.996759, -0.038230,
		0.844703, -0.039515, 0.533775,
		43.666504, 38.400948, 20.998623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413391, 38.722450, 20.139107>,  <43.075214, 38.428608, 20.624979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413391, 38.722450, 20.139107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.683964, 38.557102, 20.382931>,  <43.846310, 38.457893, 20.529224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.683964, 38.557102, 20.382931>,  <43.413391, 38.722450, 20.139107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683964, 38.557102, 20.382931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585138, -0.200990, -0.785632,
		0.447270, 0.888105, 0.105920,
		0.676435, -0.413367, 0.609560,
		43.886894, 38.433090, 20.565800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076271, 39.039909, 19.940977>,  <43.413391, 38.722450, 20.139107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076271, 39.039909, 19.940977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.159695, 38.702721, 20.139328>,  <44.209751, 38.500408, 20.258339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.159695, 38.702721, 20.139328>,  <44.076271, 39.039909, 19.940977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159695, 38.702721, 20.139328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627675, -0.273459, -0.728865,
		0.750017, 0.463263, 0.472082,
		0.208561, -0.842976, 0.495877,
		44.222263, 38.449829, 20.288092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786789, 38.961147, 19.935719>,  <44.076271, 39.039909, 19.940977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786789, 38.961147, 19.935719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.666256, 38.584042, 19.992836>,  <44.593937, 38.357777, 20.027107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.666256, 38.584042, 19.992836>,  <44.786789, 38.961147, 19.935719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666256, 38.584042, 19.992836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582368, -0.300544, -0.755328,
		0.755014, -0.144448, 0.639601,
		-0.301333, -0.942766, 0.142793,
		44.575855, 38.301212, 20.035673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389641, 38.588249, 19.898800>,  <44.786789, 38.961147, 19.935719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389641, 38.588249, 19.898800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080063, 38.350693, 19.810890>,  <44.894318, 38.208157, 19.758144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080063, 38.350693, 19.810890>,  <45.389641, 38.588249, 19.898800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080063, 38.350693, 19.810890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471928, -0.309512, -0.825522,
		0.422251, -0.742624, 0.519820,
		-0.773943, -0.593895, -0.219774,
		44.847881, 38.172523, 19.744959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659420, 37.877888, 19.654215>,  <45.389641, 38.588249, 19.898800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659420, 37.877888, 19.654215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.305683, 37.969612, 19.491560>,  <45.093441, 38.024647, 19.393967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.305683, 37.969612, 19.491560>,  <45.659420, 37.877888, 19.654215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305683, 37.969612, 19.491560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409762, -0.036079, -0.911479,
		-0.223688, -0.972683, -0.062058,
		-0.884341, 0.229316, -0.406639,
		45.040382, 38.038406, 19.369568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430443, 37.277828, 19.171043>,  <45.659420, 37.877888, 19.654215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430443, 37.277828, 19.171043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.366859, 37.660107, 19.071941>,  <45.328709, 37.889473, 19.012480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.366859, 37.660107, 19.071941>,  <45.430443, 37.277828, 19.171043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366859, 37.660107, 19.071941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725608, -0.057080, -0.685736,
		-0.669495, -0.288776, -0.684386,
		-0.158960, 0.955694, -0.247753,
		45.319172, 37.946815, 18.997616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175480, 37.089298, 19.374451>,  <45.430443, 37.277828, 19.171043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175480, 37.089298, 19.374451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.296799, 36.731033, 19.244345>,  <46.369591, 36.516075, 19.166281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.296799, 36.731033, 19.244345>,  <46.175480, 37.089298, 19.374451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296799, 36.731033, 19.244345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131260, -0.377358, 0.916718,
		-0.943813, -0.235342, -0.232016,
		0.303296, -0.895665, -0.325264,
		46.387787, 36.462334, 19.146765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639130, 36.703072, 19.535366>,  <46.175480, 37.089298, 19.374451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639130, 36.703072, 19.535366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.966145, 36.480114, 19.477468>,  <46.162354, 36.346340, 19.442730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.966145, 36.480114, 19.477468>,  <45.639130, 36.703072, 19.535366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966145, 36.480114, 19.477468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091917, -0.374425, 0.922690,
		-0.568496, -0.741027, -0.357340,
		0.817535, -0.557391, -0.144746,
		46.211407, 36.312897, 19.434044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453442, 36.187370, 19.956390>,  <45.639130, 36.703072, 19.535366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453442, 36.187370, 19.956390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.836166, 36.106327, 19.873011>,  <46.065804, 36.057701, 19.822983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.836166, 36.106327, 19.873011>,  <45.453442, 36.187370, 19.956390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836166, 36.106327, 19.873011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096565, -0.454813, 0.885336,
		-0.274184, -0.867233, -0.415608,
		0.956816, -0.202612, -0.208447,
		46.123211, 36.045544, 19.810476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584270, 35.524254, 20.041700>,  <45.453442, 36.187370, 19.956390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584270, 35.524254, 20.041700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.939827, 35.691895, 20.115698>,  <46.153160, 35.792477, 20.160097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.939827, 35.691895, 20.115698>,  <45.584270, 35.524254, 20.041700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939827, 35.691895, 20.115698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054442, -0.497596, 0.865699,
		0.454867, -0.759443, -0.465127,
		0.888894, 0.419100, 0.184994,
		46.206493, 35.817623, 20.171196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068523, 34.998940, 20.245590>,  <45.584270, 35.524254, 20.041700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068523, 34.998940, 20.245590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.201221, 35.344357, 20.397501>,  <46.280842, 35.551609, 20.488647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.201221, 35.344357, 20.397501>,  <46.068523, 34.998940, 20.245590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201221, 35.344357, 20.397501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168656, -0.450380, 0.876763,
		0.928169, -0.226814, -0.295055,
		0.331749, 0.863547, 0.379775,
		46.300747, 35.603420, 20.511433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663147, 34.882355, 20.659807>,  <46.068523, 34.998940, 20.245590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663147, 34.882355, 20.659807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.534462, 35.236637, 20.793686>,  <46.457253, 35.449207, 20.874014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.534462, 35.236637, 20.793686>,  <46.663147, 34.882355, 20.659807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534462, 35.236637, 20.793686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128743, -0.309289, 0.942213,
		0.938044, 0.346213, -0.014526,
		-0.321714, 0.885707, 0.334699,
		46.437946, 35.502350, 20.894096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894638, 34.850384, 21.305082>,  <46.663147, 34.882355, 20.659807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894638, 34.850384, 21.305082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.656944, 35.171711, 21.320940>,  <46.514328, 35.364506, 21.330454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.656944, 35.171711, 21.320940>,  <46.894638, 34.850384, 21.305082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656944, 35.171711, 21.320940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139061, -0.151163, 0.978678,
		0.792180, 0.576050, 0.201536,
		-0.594233, 0.803315, 0.039642,
		46.478676, 35.412704, 21.332832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161938, 35.190533, 21.934731>,  <46.894638, 34.850384, 21.305082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161938, 35.190533, 21.934731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.779999, 35.299736, 21.887846>,  <46.550835, 35.365257, 21.859715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.779999, 35.299736, 21.887846>,  <47.161938, 35.190533, 21.934731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779999, 35.299736, 21.887846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182111, -0.226088, 0.956933,
		0.234753, 0.935067, 0.265597,
		-0.954844, 0.273011, -0.117212,
		46.493546, 35.381638, 21.852682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987061, 35.627983, 22.464096>,  <47.161938, 35.190533, 21.934731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987061, 35.627983, 22.464096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.633102, 35.489117, 22.339876>,  <46.420727, 35.405796, 22.265345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.633102, 35.489117, 22.339876>,  <46.987061, 35.627983, 22.464096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633102, 35.489117, 22.339876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230834, -0.252246, 0.939727,
		-0.404576, 0.903243, 0.143073,
		-0.884892, -0.347165, -0.310552,
		46.367634, 35.384968, 22.246710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.438751, 36.029823, 22.746384>,  <46.987061, 35.627983, 22.464096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.438751, 36.029823, 22.746384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.277115, 35.668915, 22.686224>,  <46.180134, 35.452370, 22.650127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.277115, 35.668915, 22.686224>,  <46.438751, 36.029823, 22.746384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277115, 35.668915, 22.686224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368594, 0.010133, 0.929535,
		-0.837169, 0.431049, -0.336667,
		-0.404086, -0.902272, -0.150399,
		46.155888, 35.398232, 22.641104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920979, 36.050716, 23.188908>,  <46.438751, 36.029823, 22.746384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920979, 36.050716, 23.188908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.884392, 35.659573, 23.113625>,  <45.862438, 35.424885, 23.068455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.884392, 35.659573, 23.113625>,  <45.920979, 36.050716, 23.188908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884392, 35.659573, 23.113625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423075, -0.132936, 0.896290,
		-0.901466, 0.161608, -0.401549,
		-0.091468, -0.977860, -0.188209,
		45.856953, 35.366215, 23.057161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233028, 35.849094, 23.315456>,  <45.920979, 36.050716, 23.188908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233028, 35.849094, 23.315456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.451504, 35.514561, 23.334305>,  <45.582588, 35.313839, 23.345613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.451504, 35.514561, 23.334305>,  <45.233028, 35.849094, 23.315456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451504, 35.514561, 23.334305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483781, -0.269026, 0.832815,
		-0.683835, -0.477673, -0.551542,
		0.546192, -0.836334, 0.047120,
		45.615360, 35.263660, 23.348440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746849, 35.328217, 23.591002>,  <45.233028, 35.849094, 23.315456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746849, 35.328217, 23.591002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.115273, 35.179073, 23.635963>,  <45.336327, 35.089588, 23.662941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.115273, 35.179073, 23.635963>,  <44.746849, 35.328217, 23.591002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115273, 35.179073, 23.635963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264498, -0.387095, 0.883289,
		-0.285828, -0.843289, -0.455155,
		0.921055, -0.372857, 0.112405,
		45.391590, 35.067215, 23.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633289, 34.771278, 24.067095>,  <44.746849, 35.328217, 23.591002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633289, 34.771278, 24.067095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.021542, 34.867504, 24.065628>,  <45.254494, 34.925240, 24.064749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.021542, 34.867504, 24.065628>,  <44.633289, 34.771278, 24.067095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021542, 34.867504, 24.065628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024188, -0.082403, 0.996306,
		0.239373, -0.967129, -0.085801,
		0.970627, 0.240564, -0.003667,
		45.312729, 34.939674, 24.064528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829388, 33.988815, 24.068293>,  <44.633289, 34.771278, 24.067095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829388, 33.988815, 24.068293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.703938, 33.610317, 24.099918>,  <44.628666, 33.383217, 24.118893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.703938, 33.610317, 24.099918>,  <44.829388, 33.988815, 24.068293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703938, 33.610317, 24.099918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315876, -0.182490, -0.931085,
		0.895468, -0.267037, 0.356131,
		-0.313624, -0.946250, 0.079063,
		44.609852, 33.326443, 24.123638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435997, 33.548710, 23.837633>,  <44.829388, 33.988815, 24.068293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435997, 33.548710, 23.837633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.114910, 33.317341, 23.779570>,  <44.922256, 33.178520, 23.744732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.114910, 33.317341, 23.779570>,  <45.435997, 33.548710, 23.837633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114910, 33.317341, 23.779570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272035, -0.138553, -0.952260,
		0.530694, -0.803887, 0.268569,
		-0.802721, -0.578419, -0.145156,
		44.874092, 33.143814, 23.736023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641907, 32.888973, 23.490120>,  <45.435997, 33.548710, 23.837633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641907, 32.888973, 23.490120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.255219, 32.949875, 23.407879>,  <45.023205, 32.986416, 23.358534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.255219, 32.949875, 23.407879>,  <45.641907, 32.888973, 23.490120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255219, 32.949875, 23.407879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186144, -0.132737, -0.973515,
		-0.175515, -0.979387, 0.099978,
		-0.966719, 0.152256, -0.205604,
		44.965202, 32.995552, 23.346197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354637, 32.341946, 23.194916>,  <45.641907, 32.888973, 23.490120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354637, 32.341946, 23.194916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080238, 32.604416, 23.069155>,  <44.915600, 32.761898, 22.993698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.080238, 32.604416, 23.069155>,  <45.354637, 32.341946, 23.194916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080238, 32.604416, 23.069155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226893, -0.217641, -0.949290,
		-0.691326, -0.722543, 0.000419,
		-0.685994, 0.656174, -0.314401,
		44.874439, 32.801270, 22.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868893, 31.984560, 22.784132>,  <45.354637, 32.341946, 23.194916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868893, 31.984560, 22.784132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.810699, 32.369137, 22.690781>,  <44.775784, 32.599884, 22.634769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.810699, 32.369137, 22.690781>,  <44.868893, 31.984560, 22.784132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810699, 32.369137, 22.690781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124367, -0.251791, -0.959757,
		-0.981513, -0.110604, 0.156203,
		-0.145484, 0.961441, -0.233381,
		44.767056, 32.657570, 22.620766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440136, 31.940594, 22.293339>,  <44.868893, 31.984560, 22.784132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440136, 31.940594, 22.293339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.578438, 32.312832, 22.245264>,  <44.661419, 32.536175, 22.216419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.578438, 32.312832, 22.245264>,  <44.440136, 31.940594, 22.293339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578438, 32.312832, 22.245264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030708, -0.139237, -0.989783,
		-0.937822, 0.338532, -0.076719,
		0.345755, 0.930596, -0.120184,
		44.682163, 32.592010, 22.209209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063820, 32.265064, 21.696527>,  <44.440136, 31.940594, 22.293339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063820, 32.265064, 21.696527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397755, 32.479965, 21.744528>,  <44.598118, 32.608906, 21.773329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.397755, 32.479965, 21.744528>,  <44.063820, 32.265064, 21.696527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397755, 32.479965, 21.744528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227454, -0.138131, -0.963942,
		-0.501307, 0.832031, -0.237519,
		0.834839, 0.537255, 0.120003,
		44.648205, 32.641140, 21.780529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356476, 32.796261, 21.520960>,  <44.063820, 32.265064, 21.696527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356476, 32.796261, 21.520960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083820, 32.555878, 21.354004>,  <42.920227, 32.411648, 21.253830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.083820, 32.555878, 21.354004>,  <43.356476, 32.796261, 21.520960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083820, 32.555878, 21.354004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587268, 0.109088, 0.802008,
		-0.436439, 0.791803, -0.427281,
		-0.681643, -0.600956, -0.417390,
		42.879326, 32.375591, 21.228786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714523, 33.035213, 21.708914>,  <43.356476, 32.796261, 21.520960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714523, 33.035213, 21.708914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643066, 32.645496, 21.654022>,  <42.600193, 32.411667, 21.621088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643066, 32.645496, 21.654022>,  <42.714523, 33.035213, 21.708914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643066, 32.645496, 21.654022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421172, -0.050325, 0.905583,
		-0.889214, 0.219574, -0.401356,
		-0.178644, -0.974297, -0.137228,
		42.589474, 32.353207, 21.612854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092903, 32.961723, 21.948683>,  <42.714523, 33.035213, 21.708914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092903, 32.961723, 21.948683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225033, 32.584179, 21.949593>,  <42.304310, 32.357651, 21.950138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225033, 32.584179, 21.949593>,  <42.092903, 32.961723, 21.948683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225033, 32.584179, 21.949593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451215, -0.155794, 0.878711,
		-0.829030, -0.291286, -0.477348,
		0.330324, -0.943865, 0.002274,
		42.324131, 32.301018, 21.950275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535782, 32.565639, 22.222563>,  <42.092903, 32.961723, 21.948683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535782, 32.565639, 22.222563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870571, 32.352242, 22.271332>,  <42.071445, 32.224205, 22.300594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870571, 32.352242, 22.271332>,  <41.535782, 32.565639, 22.222563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870571, 32.352242, 22.271332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288933, -0.241583, 0.926367,
		-0.464756, -0.810569, -0.356342,
		0.836971, -0.533493, 0.121924,
		42.121662, 32.192192, 22.307909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352982, 32.134815, 22.676157>,  <41.535782, 32.565639, 22.222563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352982, 32.134815, 22.676157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.739357, 32.031784, 22.686142>,  <41.971180, 31.969965, 22.692133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.739357, 32.031784, 22.686142>,  <41.352982, 32.134815, 22.676157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739357, 32.031784, 22.686142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100590, -0.284827, 0.953287,
		-0.238430, -0.923325, -0.301034,
		0.965936, -0.257573, 0.024966,
		42.029137, 31.954510, 22.693632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353165, 31.391180, 22.811985>,  <41.352982, 32.134815, 22.676157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353165, 31.391180, 22.811985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701904, 31.549036, 22.928011>,  <41.911148, 31.643749, 22.997627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.701904, 31.549036, 22.928011>,  <41.353165, 31.391180, 22.811985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701904, 31.549036, 22.928011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141007, -0.364917, 0.920301,
		0.469037, -0.843265, -0.262505,
		0.871850, 0.394639, 0.290066,
		41.963459, 31.667427, 23.015030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678680, 30.931360, 23.214087>,  <41.353165, 31.391180, 22.811985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678680, 30.931360, 23.214087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866890, 31.264509, 23.330656>,  <41.979816, 31.464397, 23.400599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866890, 31.264509, 23.330656>,  <41.678680, 30.931360, 23.214087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866890, 31.264509, 23.330656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290677, -0.165530, 0.942394,
		0.833133, -0.528133, 0.164210,
		0.470528, 0.832871, 0.291425,
		42.008049, 31.514370, 23.418083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.467575, 35.871120, 18.523476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659603, 36.189072, 18.671911>,  <43.774818, 36.379841, 18.760973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.659603, 36.189072, 18.671911>,  <43.467575, 35.871120, 18.523476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659603, 36.189072, 18.671911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627959, 0.016009, 0.778081,
		0.612538, -0.606560, 0.506836,
		0.480067, 0.794876, 0.371089,
		43.803623, 36.427536, 18.783237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666416, 35.818489, 19.271885>,  <43.467575, 35.871120, 18.523476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666416, 35.818489, 19.271885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.608650, 36.209255, 19.208910>,  <43.573990, 36.443714, 19.171125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.608650, 36.209255, 19.208910>,  <43.666416, 35.818489, 19.271885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608650, 36.209255, 19.208910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676877, 0.018526, 0.735863,
		0.721790, 0.212838, 0.658574,
		-0.144419, 0.976912, -0.157437,
		43.565323, 36.502327, 19.161678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504387, 36.010994, 19.960617>,  <43.666416, 35.818489, 19.271885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504387, 36.010994, 19.960617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.370590, 36.291161, 19.708416>,  <43.290314, 36.459263, 19.557096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.370590, 36.291161, 19.708416>,  <43.504387, 36.010994, 19.960617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370590, 36.291161, 19.708416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768819, 0.184108, 0.612390,
		0.545009, 0.689578, 0.476914,
		-0.334487, 0.700419, -0.630502,
		43.270245, 36.501286, 19.519266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366131, 36.609558, 20.383986>,  <43.504387, 36.010994, 19.960617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366131, 36.609558, 20.383986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144466, 36.663784, 20.055466>,  <43.011467, 36.696320, 19.858355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.144466, 36.663784, 20.055466>,  <43.366131, 36.609558, 20.383986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144466, 36.663784, 20.055466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807532, 0.151870, 0.569936,
		0.201993, 0.979060, 0.025312,
		-0.554158, 0.135563, -0.821299,
		42.978218, 36.704453, 19.809076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949890, 37.243004, 20.479816>,  <43.366131, 36.609558, 20.383986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949890, 37.243004, 20.479816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760693, 37.026646, 20.201620>,  <42.647175, 36.896832, 20.034702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760693, 37.026646, 20.201620>,  <42.949890, 37.243004, 20.479816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760693, 37.026646, 20.201620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845156, 0.055487, 0.531633,
		-0.248967, 0.839258, -0.483385,
		-0.472998, -0.540894, -0.695490,
		42.618793, 36.864376, 19.992973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378826, 37.629875, 20.255381>,  <42.949890, 37.243004, 20.479816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378826, 37.629875, 20.255381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.283127, 37.248833, 20.180216>,  <42.225708, 37.020206, 20.135117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.283127, 37.248833, 20.180216>,  <42.378826, 37.629875, 20.255381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283127, 37.248833, 20.180216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755575, 0.061106, 0.652206,
		-0.609810, 0.298020, -0.734382,
		-0.239245, -0.952602, -0.187913,
		42.211353, 36.963051, 20.123842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793777, 37.602062, 20.655720>,  <42.378826, 37.629875, 20.255381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793777, 37.602062, 20.655720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.840816, 37.219666, 20.548197>,  <41.869041, 36.990227, 20.483683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.840816, 37.219666, 20.548197>,  <41.793777, 37.602062, 20.655720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840816, 37.219666, 20.548197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628413, -0.281233, 0.725262,
		-0.768940, 0.083633, -0.633828,
		0.117598, -0.955988, -0.268808,
		41.876095, 36.932869, 20.467554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173203, 37.394661, 20.405798>,  <41.793777, 37.602062, 20.655720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173203, 37.394661, 20.405798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.379814, 37.077713, 20.535622>,  <41.503780, 36.887543, 20.613516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.379814, 37.077713, 20.535622>,  <41.173203, 37.394661, 20.405798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379814, 37.077713, 20.535622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700145, -0.172631, 0.692817,
		-0.492942, -0.585100, -0.643946,
		0.516532, -0.792374, 0.324558,
		41.534775, 36.840000, 20.632988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779568, 36.807026, 20.440058>,  <41.173203, 37.394661, 20.405798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779568, 36.807026, 20.440058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.058498, 36.718300, 20.712687>,  <41.225857, 36.665066, 20.876263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.058498, 36.718300, 20.712687>,  <40.779568, 36.807026, 20.440058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058498, 36.718300, 20.712687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716595, -0.195609, 0.669499,
		-0.015184, -0.955267, -0.295355,
		0.697324, -0.221816, 0.681569,
		41.267696, 36.651756, 20.917158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523453, 36.219387, 20.788948>,  <40.779568, 36.807026, 20.440058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523453, 36.219387, 20.788948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796112, 36.331802, 21.059170>,  <40.959709, 36.399250, 21.221302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.796112, 36.331802, 21.059170>,  <40.523453, 36.219387, 20.788948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796112, 36.331802, 21.059170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674533, -0.116343, 0.729020,
		0.283480, -0.952618, 0.110266,
		0.681649, 0.281040, 0.675553,
		41.000607, 36.416115, 21.261835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323353, 35.891094, 21.323593>,  <40.523453, 36.219387, 20.788948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323353, 35.891094, 21.323593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585625, 36.136166, 21.500095>,  <40.742989, 36.283207, 21.605997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585625, 36.136166, 21.500095>,  <40.323353, 35.891094, 21.323593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585625, 36.136166, 21.500095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540359, -0.027398, 0.840988,
		0.527345, -0.789858, 0.313102,
		0.655683, 0.612678, 0.441255,
		40.782330, 36.319969, 21.632471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665199, 35.621254, 21.987267>,  <40.323353, 35.891094, 21.323593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665199, 35.621254, 21.987267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713989, 36.016071, 22.028971>,  <40.743263, 36.252960, 22.053993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713989, 36.016071, 22.028971>,  <40.665199, 35.621254, 21.987267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713989, 36.016071, 22.028971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544052, -0.021368, 0.838780,
		0.830138, -0.159035, 0.534396,
		0.121976, 0.987042, 0.104261,
		40.750584, 36.312183, 22.060249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935860, 34.942932, 22.142849>,  <40.665199, 35.621254, 21.987267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935860, 34.942932, 22.142849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.626637, 34.702541, 22.061644>,  <40.441105, 34.558308, 22.012920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.626637, 34.702541, 22.061644>,  <40.935860, 34.942932, 22.142849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626637, 34.702541, 22.061644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261736, -0.010667, -0.965080,
		0.577823, -0.799197, 0.165543,
		-0.773055, -0.600975, -0.203016,
		40.394718, 34.522247, 22.000738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247459, 34.426849, 21.688972>,  <40.935860, 34.942932, 22.142849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247459, 34.426849, 21.688972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858200, 34.355789, 21.630415>,  <40.624645, 34.313152, 21.595282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.858200, 34.355789, 21.630415>,  <41.247459, 34.426849, 21.688972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858200, 34.355789, 21.630415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171841, -0.137477, -0.975485,
		0.153171, -0.974443, 0.164313,
		-0.973144, -0.177652, -0.146392,
		40.566257, 34.302494, 21.586498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202236, 33.838055, 21.351084>,  <41.247459, 34.426849, 21.688972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202236, 33.838055, 21.351084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845791, 33.999157, 21.267462>,  <40.631924, 34.095818, 21.217289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.845791, 33.999157, 21.267462>,  <41.202236, 33.838055, 21.351084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845791, 33.999157, 21.267462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049020, -0.372564, -0.926711,
		-0.451125, -0.836053, 0.312253,
		-0.891114, 0.402756, -0.209056,
		40.578457, 34.119984, 21.204744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887451, 33.307728, 21.014154>,  <41.202236, 33.838055, 21.351084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887451, 33.307728, 21.014154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707867, 33.653358, 20.923107>,  <40.600117, 33.860737, 20.868479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707867, 33.653358, 20.923107>,  <40.887451, 33.307728, 21.014154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707867, 33.653358, 20.923107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028389, -0.268399, -0.962889,
		-0.893098, -0.425841, 0.145032,
		-0.448964, 0.864073, -0.227618,
		40.573177, 33.912579, 20.854822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447422, 33.102467, 20.544069>,  <40.887451, 33.307728, 21.014154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447422, 33.102467, 20.544069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447773, 33.498699, 20.489292>,  <40.447983, 33.736439, 20.456425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.447773, 33.498699, 20.489292>,  <40.447422, 33.102467, 20.544069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447773, 33.498699, 20.489292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133098, -0.135841, -0.981750,
		-0.991103, -0.017367, -0.131963,
		0.000876, 0.990578, -0.136944,
		40.448036, 33.795872, 20.448210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919865, 33.128269, 20.105129>,  <40.447422, 33.102467, 20.544069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919865, 33.128269, 20.105129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181805, 33.429180, 20.076164>,  <40.338970, 33.609726, 20.058784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181805, 33.429180, 20.076164>,  <39.919865, 33.128269, 20.105129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181805, 33.429180, 20.076164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056905, -0.144623, -0.987849,
		-0.753613, 0.642773, -0.137515,
		0.654850, 0.752281, -0.072413,
		40.378262, 33.654865, 20.054440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809448, 33.495361, 19.472418>,  <39.919865, 33.128269, 20.105129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809448, 33.495361, 19.472418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181404, 33.628395, 19.535282>,  <40.404575, 33.708214, 19.573002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181404, 33.628395, 19.535282>,  <39.809448, 33.495361, 19.472418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181404, 33.628395, 19.535282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182696, -0.046737, -0.982058,
		-0.319270, 0.941915, -0.104221,
		0.929887, 0.332582, 0.157163,
		40.460369, 33.728168, 19.582432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890240, 33.901226, 18.922682>,  <39.809448, 33.495361, 19.472418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890240, 33.901226, 18.922682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.266018, 33.873158, 19.056860>,  <40.491486, 33.856316, 19.137367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.266018, 33.873158, 19.056860>,  <39.890240, 33.901226, 18.922682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266018, 33.873158, 19.056860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340337, 0.076181, -0.937212,
		0.040213, 0.994622, 0.095450,
		0.939443, -0.070174, 0.335444,
		40.547852, 33.852104, 19.157494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346409, 34.428028, 18.614389>,  <39.890240, 33.901226, 18.922682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346409, 34.428028, 18.614389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566090, 34.113518, 18.727623>,  <40.697899, 33.924812, 18.795563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566090, 34.113518, 18.727623>,  <40.346409, 34.428028, 18.614389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566090, 34.113518, 18.727623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282241, -0.144319, -0.948426,
		0.786583, 0.600779, 0.142660,
		0.549206, -0.786280, 0.283083,
		40.730850, 33.877632, 18.812548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135868, 34.452148, 18.285091>,  <40.346409, 34.428028, 18.614389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135868, 34.452148, 18.285091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079639, 34.070251, 18.389940>,  <41.045902, 33.841114, 18.452850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079639, 34.070251, 18.389940>,  <41.135868, 34.452148, 18.285091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079639, 34.070251, 18.389940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328223, -0.294719, -0.897446,
		0.934082, -0.040118, 0.354797,
		-0.140570, -0.954741, 0.262124,
		41.037468, 33.783829, 18.468578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774910, 34.195316, 18.091845>,  <41.135868, 34.452148, 18.285091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774910, 34.195316, 18.091845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535797, 33.876881, 18.129566>,  <41.392330, 33.685818, 18.152199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535797, 33.876881, 18.129566>,  <41.774910, 34.195316, 18.091845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535797, 33.876881, 18.129566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466310, -0.440991, -0.766865,
		0.652084, -0.414441, 0.634843,
		-0.597781, -0.796094, 0.094305,
		41.356464, 33.638054, 18.157858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171799, 33.514439, 18.182915>,  <41.774910, 34.195316, 18.091845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171799, 33.514439, 18.182915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.815857, 33.404297, 18.037405>,  <41.602291, 33.338211, 17.950100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.815857, 33.404297, 18.037405>,  <42.171799, 33.514439, 18.182915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815857, 33.404297, 18.037405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455181, -0.590036, -0.666834,
		-0.031025, -0.758972, 0.650384,
		-0.889859, -0.275354, -0.363775,
		41.548901, 33.321690, 17.928272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116493, 32.719547, 18.125509>,  <42.171799, 33.514439, 18.182915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116493, 32.719547, 18.125509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890621, 32.909451, 17.855474>,  <41.755096, 33.023392, 17.693455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.890621, 32.909451, 17.855474>,  <42.116493, 32.719547, 18.125509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890621, 32.909451, 17.855474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615111, -0.303262, -0.727785,
		-0.550249, -0.826219, -0.120782,
		-0.564681, 0.474757, -0.675086,
		41.721218, 33.051876, 17.652948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571526, 32.151649, 17.843056>,  <42.116493, 32.719547, 18.125509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571526, 32.151649, 17.843056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.681293, 31.776743, 17.929054>,  <42.747154, 31.551798, 17.980654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.681293, 31.776743, 17.929054>,  <42.571526, 32.151649, 17.843056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681293, 31.776743, 17.929054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054084, 0.238269, 0.969692,
		-0.960088, -0.254475, 0.116078,
		0.274420, -0.937267, 0.214996,
		42.763618, 31.495564, 17.993553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160873, 31.987347, 18.331783>,  <42.571526, 32.151649, 17.843056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160873, 31.987347, 18.331783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459362, 31.721739, 18.350677>,  <42.638454, 31.562374, 18.362015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.459362, 31.721739, 18.350677>,  <42.160873, 31.987347, 18.331783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459362, 31.721739, 18.350677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094423, 0.175820, 0.979883,
		-0.658967, -0.726749, 0.193900,
		0.746221, -0.664020, 0.047238,
		42.683228, 31.522533, 18.364849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934734, 31.407352, 18.910526>,  <42.160873, 31.987347, 18.331783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934734, 31.407352, 18.910526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329002, 31.378380, 18.849590>,  <42.565563, 31.360996, 18.813028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.329002, 31.378380, 18.849590>,  <41.934734, 31.407352, 18.910526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329002, 31.378380, 18.849590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152494, -0.003435, 0.988299,
		-0.072108, -0.997367, 0.007659,
		0.985671, -0.072432, -0.152340,
		42.624702, 31.356651, 18.803888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124035, 30.945938, 19.381243>,  <41.934734, 31.407352, 18.910526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124035, 30.945938, 19.381243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437759, 31.174786, 19.285297>,  <42.625996, 31.312094, 19.227730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.437759, 31.174786, 19.285297>,  <42.124035, 30.945938, 19.381243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437759, 31.174786, 19.285297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130872, 0.225354, 0.965447,
		0.606407, -0.788602, 0.101873,
		0.784311, 0.572121, -0.239862,
		42.673054, 31.346422, 19.213339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575832, 30.823080, 19.950735>,  <42.124035, 30.945938, 19.381243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575832, 30.823080, 19.950735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.741707, 31.140507, 19.772615>,  <42.841232, 31.330963, 19.665743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.741707, 31.140507, 19.772615>,  <42.575832, 30.823080, 19.950735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741707, 31.140507, 19.772615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224315, 0.385109, 0.895195,
		0.881885, -0.471110, -0.018311,
		0.414683, 0.793566, -0.445299,
		42.866112, 31.378576, 19.639027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216969, 30.911152, 20.153383>,  <42.575832, 30.823080, 19.950735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216969, 30.911152, 20.153383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167126, 31.290810, 20.037731>,  <43.137218, 31.518604, 19.968340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167126, 31.290810, 20.037731>,  <43.216969, 30.911152, 20.153383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167126, 31.290810, 20.037731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140947, 0.305378, 0.941742,
		0.982144, 0.076595, -0.171832,
		-0.124607, 0.949146, -0.289129,
		43.129745, 31.575554, 19.950993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739838, 31.322048, 20.428379>,  <43.216969, 30.911152, 20.153383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739838, 31.322048, 20.428379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.427444, 31.565527, 20.372450>,  <43.240009, 31.711615, 20.338892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.427444, 31.565527, 20.372450>,  <43.739838, 31.322048, 20.428379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427444, 31.565527, 20.372450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044132, 0.277105, 0.959826,
		0.622988, 0.743439, -0.243278,
		-0.780985, 0.608697, -0.139823,
		43.193150, 31.748137, 20.330503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999413, 32.002743, 20.626360>,  <43.739838, 31.322048, 20.428379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999413, 32.002743, 20.626360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.600998, 31.972591, 20.645233>,  <43.361950, 31.954500, 20.656557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.600998, 31.972591, 20.645233>,  <43.999413, 32.002743, 20.626360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600998, 31.972591, 20.645233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023050, 0.293600, 0.955650,
		-0.085892, 0.952951, -0.290699,
		-0.996038, -0.075382, 0.047183,
		43.302185, 31.949976, 20.659388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030296, 32.632282, 21.068331>,  <43.999413, 32.002743, 20.626360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030296, 32.632282, 21.068331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.409901, 32.653709, 21.192598>,  <44.637661, 32.666565, 21.267159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.409901, 32.653709, 21.192598>,  <44.030296, 32.632282, 21.068331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409901, 32.653709, 21.192598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304032, 0.105047, -0.946852,
		-0.083353, 0.993023, 0.083405,
		0.949008, 0.053566, 0.310667,
		44.694603, 32.669781, 21.285799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291668, 33.022839, 20.549992>,  <44.030296, 32.632282, 21.068331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291668, 33.022839, 20.549992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.633568, 32.905590, 20.721334>,  <44.838707, 32.835243, 20.824141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.633568, 32.905590, 20.721334>,  <44.291668, 33.022839, 20.549992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633568, 32.905590, 20.721334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487343, 0.169227, -0.856655,
		0.178610, 0.940981, 0.287495,
		0.854748, -0.293117, 0.428355,
		44.889992, 32.817654, 20.849840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893200, 33.484814, 20.271120>,  <44.291668, 33.022839, 20.549992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893200, 33.484814, 20.271120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.054390, 33.148510, 20.415747>,  <45.151104, 32.946728, 20.502523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.054390, 33.148510, 20.415747>,  <44.893200, 33.484814, 20.271120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054390, 33.148510, 20.415747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641518, -0.022276, -0.766784,
		0.652737, 0.540947, 0.530387,
		0.402974, -0.840762, 0.361568,
		45.175282, 32.896282, 20.524218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.577465, 33.616447, 20.364996>,  <44.893200, 33.484814, 20.271120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.577465, 33.616447, 20.364996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.540340, 33.218616, 20.346188>,  <45.518066, 32.979919, 20.334902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.540340, 33.218616, 20.346188>,  <45.577465, 33.616447, 20.364996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540340, 33.218616, 20.346188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660087, -0.026103, -0.750735,
		0.745434, -0.100712, 0.658928,
		-0.092808, -0.994573, -0.047021,
		45.512497, 32.920246, 20.332081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179867, 33.356197, 20.396305>,  <45.577465, 33.616447, 20.364996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179867, 33.356197, 20.396305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.990608, 33.056107, 20.211571>,  <45.877052, 32.876053, 20.100731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.990608, 33.056107, 20.211571>,  <46.179867, 33.356197, 20.396305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990608, 33.056107, 20.211571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709755, -0.014050, -0.704308,
		0.521904, -0.661028, 0.539127,
		-0.473142, -0.750230, -0.461835,
		45.848667, 32.831039, 20.073021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719414, 32.866890, 20.252544>,  <46.179867, 33.356197, 20.396305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719414, 32.866890, 20.252544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.408329, 32.788906, 20.013496>,  <46.221676, 32.742115, 19.870068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.408329, 32.788906, 20.013496>,  <46.719414, 32.866890, 20.252544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408329, 32.788906, 20.013496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623808, -0.121990, -0.771999,
		0.077609, -0.973194, 0.216494,
		-0.777715, -0.194965, -0.597619,
		46.175014, 32.730415, 19.834211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931171, 32.237846, 19.898418>,  <46.719414, 32.866890, 20.252544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.931171, 32.237846, 19.898418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.638927, 32.420391, 19.695263>,  <46.463581, 32.529919, 19.573370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.638927, 32.420391, 19.695263>,  <46.931171, 32.237846, 19.898418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638927, 32.420391, 19.695263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480954, -0.184024, -0.857215,
		-0.484663, -0.870557, -0.085040,
		-0.730606, 0.456361, -0.507888,
		46.419746, 32.557301, 19.542896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778450, 31.687243, 19.374525>,  <46.931171, 32.237846, 19.898418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778450, 31.687243, 19.374525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.658302, 32.048450, 19.251667>,  <46.586216, 32.265175, 19.177952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.658302, 32.048450, 19.251667>,  <46.778450, 31.687243, 19.374525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658302, 32.048450, 19.251667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582910, -0.081099, -0.808479,
		-0.754981, -0.421878, -0.502019,
		-0.300366, 0.903018, -0.307145,
		46.568192, 32.319355, 19.159523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.673836, 31.546947, 18.616318>,  <46.778450, 31.687243, 19.374525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.673836, 31.546947, 18.616318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.703712, 31.933601, 18.714329>,  <46.721638, 32.165592, 18.773136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.703712, 31.933601, 18.714329>,  <46.673836, 31.546947, 18.616318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703712, 31.933601, 18.714329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729184, 0.114665, -0.674643,
		-0.680229, 0.229063, -0.696289,
		0.074696, 0.966634, 0.245028,
		46.726120, 32.223591, 18.787838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.825371, 32.515701, 33.682583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783672, 32.911808, 33.645691>,  <40.758652, 33.149471, 33.623558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783672, 32.911808, 33.645691>,  <40.825371, 32.515701, 33.682583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783672, 32.911808, 33.645691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277636, -0.060069, -0.958806,
		-0.955013, -0.125560, -0.268671,
		-0.104249, 0.990266, -0.092227,
		40.752396, 33.208889, 33.618023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225674, 32.749840, 33.232281>,  <40.825371, 32.515701, 33.682583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225674, 32.749840, 33.232281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552097, 32.979965, 33.254398>,  <40.747952, 33.118042, 33.267670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.552097, 32.979965, 33.254398>,  <40.225674, 32.749840, 33.232281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552097, 32.979965, 33.254398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205837, -0.199901, -0.957951,
		-0.540073, 0.793126, -0.281553,
		0.816059, 0.575318, 0.055293,
		40.796913, 33.152561, 33.270985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289742, 32.927658, 32.579536>,  <40.225674, 32.749840, 33.232281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289742, 32.927658, 32.579536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642570, 33.076256, 32.695423>,  <40.854267, 33.165413, 32.764954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.642570, 33.076256, 32.695423>,  <40.289742, 32.927658, 32.579536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642570, 33.076256, 32.695423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370182, -0.166184, -0.913974,
		-0.291391, 0.913441, -0.284108,
		0.882075, 0.371495, 0.289715,
		40.907192, 33.187706, 32.782337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491211, 33.415001, 31.997396>,  <40.289742, 32.927658, 32.579536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491211, 33.415001, 31.997396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827709, 33.315231, 32.189270>,  <41.029606, 33.255371, 32.304394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.827709, 33.315231, 32.189270>,  <40.491211, 33.415001, 31.997396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827709, 33.315231, 32.189270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444170, -0.187022, -0.876205,
		0.308260, 0.950163, -0.046544,
		0.841242, -0.249425, 0.479685,
		41.080082, 33.240402, 32.333176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059025, 33.863708, 31.756380>,  <40.491211, 33.415001, 31.997396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059025, 33.863708, 31.756380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212399, 33.526070, 31.906300>,  <41.304424, 33.323486, 31.996252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212399, 33.526070, 31.906300>,  <41.059025, 33.863708, 31.756380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212399, 33.526070, 31.906300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472032, -0.169698, -0.865094,
		0.793828, 0.508624, 0.333374,
		0.383435, -0.844099, 0.374798,
		41.327431, 33.272839, 32.018738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845863, 33.873840, 31.516750>,  <41.059025, 33.863708, 31.756380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845863, 33.873840, 31.516750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.740658, 33.501717, 31.619009>,  <41.677536, 33.278442, 31.680365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.740658, 33.501717, 31.619009>,  <41.845863, 33.873840, 31.516750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740658, 33.501717, 31.619009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467385, -0.354669, -0.809791,
		0.844023, -0.093501, 0.528094,
		-0.263015, -0.930305, 0.255648,
		41.661755, 33.222626, 31.695704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452000, 33.457523, 31.439323>,  <41.845863, 33.873840, 31.516750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452000, 33.457523, 31.439323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158703, 33.185848, 31.452341>,  <41.982723, 33.022842, 31.460152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.158703, 33.185848, 31.452341>,  <42.452000, 33.457523, 31.439323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158703, 33.185848, 31.452341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452373, -0.522991, -0.722384,
		0.507656, -0.514959, 0.690726,
		-0.733242, -0.679188, 0.032546,
		41.938728, 32.982090, 31.462105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771820, 32.843266, 31.482895>,  <42.452000, 33.457523, 31.439323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771820, 32.843266, 31.482895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.412647, 32.761520, 31.326973>,  <42.197144, 32.712471, 31.233419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.412647, 32.761520, 31.326973>,  <42.771820, 32.843266, 31.482895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412647, 32.761520, 31.326973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427685, -0.614263, -0.663149,
		-0.103918, -0.762178, 0.638972,
		-0.897934, -0.204366, -0.389806,
		42.143269, 32.700211, 31.210032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970284, 32.278500, 31.362246>,  <42.771820, 32.843266, 31.482895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970284, 32.278500, 31.362246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.632504, 32.330856, 31.154486>,  <42.429836, 32.362270, 31.029831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.632504, 32.330856, 31.154486>,  <42.970284, 32.278500, 31.362246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632504, 32.330856, 31.154486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418079, -0.445102, -0.791893,
		-0.334840, -0.885861, 0.321141,
		-0.844448, 0.130895, -0.519398,
		42.379169, 32.370125, 30.998667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748043, 31.632843, 31.012018>,  <42.970284, 32.278500, 31.362246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748043, 31.632843, 31.012018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.580410, 31.914341, 30.782543>,  <42.479832, 32.083241, 30.644857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.580410, 31.914341, 30.782543>,  <42.748043, 31.632843, 31.012018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580410, 31.914341, 30.782543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450856, -0.387148, -0.804267,
		-0.788100, -0.595702, -0.155042,
		-0.419079, 0.703744, -0.573687,
		42.454685, 32.125465, 30.610437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345402, 31.282139, 30.400204>,  <42.748043, 31.632843, 31.012018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345402, 31.282139, 30.400204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453823, 31.652800, 30.296013>,  <42.518875, 31.875196, 30.233498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.453823, 31.652800, 30.296013>,  <42.345402, 31.282139, 30.400204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453823, 31.652800, 30.296013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414589, -0.356613, -0.837224,
		-0.868703, 0.118944, -0.480841,
		0.271057, 0.926650, -0.260478,
		42.535141, 31.930794, 30.217869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207542, 31.342579, 29.705690>,  <42.345402, 31.282139, 30.400204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207542, 31.342579, 29.705690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.463463, 31.643827, 29.766953>,  <42.617016, 31.824577, 29.803709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.463463, 31.643827, 29.766953>,  <42.207542, 31.342579, 29.705690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463463, 31.643827, 29.766953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423783, -0.179474, -0.887805,
		-0.641140, 0.632925, -0.433989,
		0.639804, 0.753124, 0.153155,
		42.655403, 31.869764, 29.812899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462883, 31.488422, 29.587818>,  <42.207542, 31.342579, 29.705690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462883, 31.488422, 29.587818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184303, 31.288593, 29.381756>,  <41.017155, 31.168695, 29.258118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.184303, 31.288593, 29.381756>,  <41.462883, 31.488422, 29.587818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184303, 31.288593, 29.381756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568060, -0.054851, 0.821157,
		-0.438486, 0.864533, -0.245587,
		-0.696447, -0.499574, -0.515158,
		40.975368, 31.138721, 29.227209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775059, 31.687218, 29.772459>,  <41.462883, 31.488422, 29.587818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775059, 31.687218, 29.772459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714218, 31.330458, 29.602106>,  <40.677711, 31.116402, 29.499895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714218, 31.330458, 29.602106>,  <40.775059, 31.687218, 29.772459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714218, 31.330458, 29.602106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612841, -0.252954, 0.748625,
		-0.775429, 0.374868, -0.508118,
		-0.152105, -0.891901, -0.425883,
		40.668587, 31.062887, 29.474340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027889, 31.585331, 29.579811>,  <40.775059, 31.687218, 29.772459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027889, 31.585331, 29.579811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.219429, 31.243267, 29.659210>,  <40.334354, 31.038029, 29.706850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.219429, 31.243267, 29.659210>,  <40.027889, 31.585331, 29.579811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219429, 31.243267, 29.659210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629253, -0.176679, 0.756852,
		-0.612159, -0.487326, -0.622715,
		0.478854, -0.855160, 0.198496,
		40.363087, 30.986719, 29.718760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534180, 31.167484, 29.817478>,  <40.027889, 31.585331, 29.579811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534180, 31.167484, 29.817478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861107, 30.968483, 29.933743>,  <40.057262, 30.849083, 30.003502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.861107, 30.968483, 29.933743>,  <39.534180, 31.167484, 29.817478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861107, 30.968483, 29.933743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491640, -0.339085, 0.802067,
		-0.300465, -0.798448, -0.521729,
		0.817319, -0.497496, 0.290666,
		40.106300, 30.819233, 30.020941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242146, 30.616539, 29.958780>,  <39.534180, 31.167484, 29.817478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242146, 30.616539, 29.958780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.590260, 30.618475, 30.155792>,  <39.799126, 30.619637, 30.274000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.590260, 30.618475, 30.155792>,  <39.242146, 30.616539, 29.958780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590260, 30.618475, 30.155792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477962, -0.233313, 0.846828,
		0.119012, -0.972390, -0.200735,
		0.870281, 0.004839, 0.492532,
		39.851345, 30.619926, 30.303553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219448, 29.988539, 30.288538>,  <39.242146, 30.616539, 29.958780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219448, 29.988539, 30.288538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474506, 30.212156, 30.500528>,  <39.627541, 30.346327, 30.627722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474506, 30.212156, 30.500528>,  <39.219448, 29.988539, 30.288538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474506, 30.212156, 30.500528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480899, -0.248568, 0.840803,
		0.601782, -0.791001, 0.110345,
		0.637648, 0.559045, 0.529975,
		39.665802, 30.379869, 30.659521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401489, 29.535639, 30.806179>,  <39.219448, 29.988539, 30.288538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401489, 29.535639, 30.806179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.476849, 29.915617, 30.905869>,  <39.522064, 30.143604, 30.965683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.476849, 29.915617, 30.905869>,  <39.401489, 29.535639, 30.806179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476849, 29.915617, 30.905869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180375, -0.215984, 0.959591,
		0.965386, -0.225740, 0.130655,
		0.188398, 0.949943, 0.249226,
		39.533367, 30.200600, 30.980637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710049, 29.437061, 31.463692>,  <39.401489, 29.535639, 30.806179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710049, 29.437061, 31.463692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602116, 29.821911, 31.448185>,  <39.537354, 30.052820, 31.438881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.602116, 29.821911, 31.448185>,  <39.710049, 29.437061, 31.463692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602116, 29.821911, 31.448185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434227, -0.085650, 0.896722,
		0.859439, 0.258801, 0.440892,
		-0.269836, 0.962126, -0.038767,
		39.521164, 30.110548, 31.436554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776787, 29.690016, 32.130470>,  <39.710049, 29.437061, 31.463692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776787, 29.690016, 32.130470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.564171, 29.964178, 31.931398>,  <39.436600, 30.128675, 31.811956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.564171, 29.964178, 31.931398>,  <39.776787, 29.690016, 32.130470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564171, 29.964178, 31.931398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642117, 0.057121, 0.764475,
		0.552404, 0.725917, 0.409749,
		-0.531540, 0.685407, -0.497678,
		39.404709, 30.169800, 31.782095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544361, 30.231804, 32.638367>,  <39.776787, 29.690016, 32.130470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544361, 30.231804, 32.638367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283749, 30.263710, 32.336597>,  <39.127380, 30.282854, 32.155537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.283749, 30.263710, 32.336597>,  <39.544361, 30.231804, 32.638367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283749, 30.263710, 32.336597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747745, 0.100289, 0.656368,
		0.128017, 0.991756, -0.005696,
		-0.651528, 0.079767, -0.754419,
		39.088291, 30.287640, 32.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196682, 30.797934, 32.795166>,  <39.544361, 30.231804, 32.638367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196682, 30.797934, 32.795166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944500, 30.604643, 32.552177>,  <38.793190, 30.488668, 32.406384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944500, 30.604643, 32.552177>,  <39.196682, 30.797934, 32.795166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944500, 30.604643, 32.552177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728239, 0.097305, 0.678380,
		-0.268701, 0.870071, -0.413250,
		-0.630450, -0.483227, -0.607474,
		38.755363, 30.459675, 32.369934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554272, 31.170860, 32.714031>,  <39.196682, 30.797934, 32.795166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554272, 31.170860, 32.714031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465324, 30.793600, 32.615223>,  <38.411957, 30.567244, 32.555939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465324, 30.793600, 32.615223>,  <38.554272, 31.170860, 32.714031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465324, 30.793600, 32.615223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802266, 0.033038, 0.596052,
		-0.554005, 0.330721, -0.764004,
		-0.222368, -0.943150, -0.247023,
		38.398613, 30.510654, 32.541115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910290, 31.110685, 32.673141>,  <38.554272, 31.170860, 32.714031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910290, 31.110685, 32.673141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971630, 30.718754, 32.724392>,  <38.008434, 30.483595, 32.755142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.971630, 30.718754, 32.724392>,  <37.910290, 31.110685, 32.673141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971630, 30.718754, 32.724392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855035, -0.066569, 0.514279,
		-0.495378, -0.188414, -0.847998,
		0.153348, -0.979831, 0.128123,
		38.017635, 30.424805, 32.762829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260227, 30.910295, 32.613934>,  <37.910290, 31.110685, 32.673141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260227, 30.910295, 32.613934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433033, 30.597397, 32.793468>,  <37.536716, 30.409658, 32.901192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433033, 30.597397, 32.793468>,  <37.260227, 30.910295, 32.613934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433033, 30.597397, 32.793468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854043, -0.194930, 0.482301,
		-0.289785, -0.591689, -0.752283,
		0.432014, -0.782245, 0.448840,
		37.562637, 30.362722, 32.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121780, 31.033297, 31.779507>,  <37.260227, 30.910295, 32.613934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121780, 31.033297, 31.779507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783718, 31.236284, 31.712353>,  <36.580879, 31.358078, 31.672060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783718, 31.236284, 31.712353>,  <37.121780, 31.033297, 31.779507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783718, 31.236284, 31.712353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464791, 0.542604, -0.699679,
		-0.263973, -0.669368, -0.694453,
		-0.845155, 0.507471, -0.167884,
		36.530170, 31.388525, 31.661987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011730, 31.031710, 31.105173>,  <37.121780, 31.033297, 31.779507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011730, 31.031710, 31.105173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794895, 31.339304, 31.240705>,  <36.664795, 31.523861, 31.322025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.794895, 31.339304, 31.240705>,  <37.011730, 31.031710, 31.105173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794895, 31.339304, 31.240705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340573, 0.569663, -0.747993,
		-0.768215, -0.290079, -0.570701,
		-0.542084, 0.768985, 0.338831,
		36.632271, 31.570000, 31.342356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432568, 31.194576, 30.645260>,  <37.011730, 31.031710, 31.105173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432568, 31.194576, 30.645260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569267, 31.521908, 30.830103>,  <36.651287, 31.718307, 30.941010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569267, 31.521908, 30.830103>,  <36.432568, 31.194576, 30.645260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569267, 31.521908, 30.830103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083102, 0.463475, -0.882205,
		-0.936109, 0.339896, 0.090388,
		0.341750, 0.818329, 0.462109,
		36.671791, 31.767406, 30.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026726, 31.684673, 30.435677>,  <36.432568, 31.194576, 30.645260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026726, 31.684673, 30.435677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373329, 31.853075, 30.542952>,  <36.581291, 31.954115, 30.607317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.373329, 31.853075, 30.542952>,  <36.026726, 31.684673, 30.435677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373329, 31.853075, 30.542952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115324, 0.353893, -0.928149,
		-0.485664, 0.835174, 0.258099,
		0.866505, 0.421003, 0.268188,
		36.633282, 31.979376, 30.623407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015480, 32.187950, 29.981834>,  <36.026726, 31.684673, 30.435677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015480, 32.187950, 29.981834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386024, 32.148041, 30.127106>,  <36.608353, 32.124096, 30.214268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386024, 32.148041, 30.127106>,  <36.015480, 32.187950, 29.981834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386024, 32.148041, 30.127106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374909, 0.336479, -0.863844,
		-0.036010, 0.936390, 0.349108,
		0.926362, -0.099777, 0.363177,
		36.663933, 32.118107, 30.236059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275223, 32.887455, 29.843904>,  <36.015480, 32.187950, 29.981834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275223, 32.887455, 29.843904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580330, 32.632259, 29.886148>,  <36.763393, 32.479141, 29.911495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.580330, 32.632259, 29.886148>,  <36.275223, 32.887455, 29.843904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580330, 32.632259, 29.886148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438833, 0.390710, -0.809180,
		0.474984, 0.663563, 0.577992,
		0.762769, -0.637989, 0.105612,
		36.809162, 32.440861, 29.917831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978657, 33.265564, 29.751871>,  <36.275223, 32.887455, 29.843904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978657, 33.265564, 29.751871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.058254, 32.877522, 29.696308>,  <37.106010, 32.644695, 29.662970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.058254, 32.877522, 29.696308>,  <36.978657, 33.265564, 29.751871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058254, 32.877522, 29.696308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471157, 0.218991, -0.854432,
		0.859310, 0.104577, 0.500650,
		0.198991, -0.970106, -0.138909,
		37.117950, 32.586491, 29.654634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682568, 33.246597, 29.678631>,  <36.978657, 33.265564, 29.751871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682568, 33.246597, 29.678631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505108, 32.930420, 29.509695>,  <37.398632, 32.740711, 29.408333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505108, 32.930420, 29.509695>,  <37.682568, 33.246597, 29.678631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505108, 32.930420, 29.509695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446250, 0.213842, -0.868984,
		0.777200, -0.573990, 0.257868,
		-0.443645, -0.790447, -0.422341,
		37.372013, 32.693287, 29.382992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280865, 32.948048, 29.439430>,  <37.682568, 33.246597, 29.678631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280865, 32.948048, 29.439430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974247, 32.775719, 29.248934>,  <37.790276, 32.672321, 29.134636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974247, 32.775719, 29.248934>,  <38.280865, 32.948048, 29.439430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974247, 32.775719, 29.248934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562928, -0.093855, -0.821160,
		0.309078, -0.897542, 0.314466,
		-0.766540, -0.430824, -0.476243,
		37.744286, 32.646473, 29.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592018, 32.454800, 29.011030>,  <38.280865, 32.948048, 29.439430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592018, 32.454800, 29.011030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222683, 32.487701, 28.860998>,  <38.001083, 32.507442, 28.770979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222683, 32.487701, 28.860998>,  <38.592018, 32.454800, 29.011030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222683, 32.487701, 28.860998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349313, -0.225728, -0.909410,
		-0.159466, -0.970712, 0.179691,
		-0.923337, 0.082251, -0.375078,
		37.945683, 32.512379, 28.748474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446392, 31.861298, 28.602005>,  <38.592018, 32.454800, 29.011030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446392, 31.861298, 28.602005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201416, 32.150009, 28.473036>,  <38.054432, 32.323235, 28.395655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.201416, 32.150009, 28.473036>,  <38.446392, 31.861298, 28.602005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201416, 32.150009, 28.473036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322138, -0.144597, -0.935585,
		-0.721907, -0.676851, -0.143956,
		-0.612436, 0.721779, -0.322425,
		38.017685, 32.366543, 28.376308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181458, 31.563185, 28.061249>,  <38.446392, 31.861298, 28.602005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181458, 31.563185, 28.061249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114464, 31.955009, 28.016701>,  <38.074268, 32.190105, 27.989971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.114464, 31.955009, 28.016701>,  <38.181458, 31.563185, 28.061249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114464, 31.955009, 28.016701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433221, -0.028348, -0.900842,
		-0.885589, -0.199127, -0.419620,
		-0.167487, 0.979563, -0.111370,
		38.064217, 32.248878, 27.983290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101151, 31.611008, 27.378983>,  <38.181458, 31.563185, 28.061249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101151, 31.611008, 27.378983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132988, 31.999166, 27.470188>,  <38.152092, 32.232063, 27.524912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132988, 31.999166, 27.470188>,  <38.101151, 31.611008, 27.378983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132988, 31.999166, 27.470188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458906, 0.167390, -0.872574,
		-0.884913, 0.174089, -0.431998,
		0.079593, 0.970399, 0.228016,
		38.156864, 32.290287, 27.538593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817635, 32.045589, 26.796431>,  <38.101151, 31.611008, 27.378983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817635, 32.045589, 26.796431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095264, 32.244209, 27.004930>,  <38.261841, 32.363380, 27.130030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095264, 32.244209, 27.004930>,  <37.817635, 32.045589, 26.796431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095264, 32.244209, 27.004930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562790, 0.077253, -0.822982,
		-0.448918, 0.864565, -0.225834,
		0.694075, 0.496548, 0.521248,
		38.303486, 32.393173, 27.161304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096500, 32.403633, 26.270660>,  <37.817635, 32.045589, 26.796431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096500, 32.403633, 26.270660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357952, 32.518391, 26.550793>,  <38.514824, 32.587246, 26.718872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357952, 32.518391, 26.550793>,  <38.096500, 32.403633, 26.270660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357952, 32.518391, 26.550793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652050, 0.256270, -0.713552,
		-0.384185, 0.923049, -0.019561,
		0.653631, 0.286890, 0.700329,
		38.554043, 32.604458, 26.760891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284874, 33.149826, 26.228079>,  <38.096500, 32.403633, 26.270660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284874, 33.149826, 26.228079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594521, 32.970615, 26.406971>,  <38.780308, 32.863087, 26.514307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594521, 32.970615, 26.406971>,  <38.284874, 33.149826, 26.228079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594521, 32.970615, 26.406971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610712, 0.342553, -0.713925,
		0.166659, 0.825789, 0.538793,
		0.774116, -0.448029, 0.447230,
		38.826756, 32.836208, 26.541140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735016, 33.670788, 26.285088>,  <38.284874, 33.149826, 26.228079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735016, 33.670788, 26.285088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920338, 33.316322, 26.288305>,  <39.031528, 33.103642, 26.290236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.920338, 33.316322, 26.288305>,  <38.735016, 33.670788, 26.285088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920338, 33.316322, 26.288305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563923, 0.287804, -0.774055,
		0.683624, 0.363157, 0.633068,
		0.463302, -0.886164, 0.008043,
		39.059330, 33.050472, 26.290718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471634, 33.811081, 26.319754>,  <38.735016, 33.670788, 26.285088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471634, 33.811081, 26.319754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400837, 33.444633, 26.175865>,  <39.358356, 33.224766, 26.089533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.400837, 33.444633, 26.175865>,  <39.471634, 33.811081, 26.319754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400837, 33.444633, 26.175865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515407, 0.225093, -0.826854,
		0.838468, -0.331752, 0.432334,
		-0.176995, -0.916119, -0.359721,
		39.347740, 33.169796, 26.067949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001202, 33.737469, 25.970942>,  <39.471634, 33.811081, 26.319754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001202, 33.737469, 25.970942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.774101, 33.438648, 25.832628>,  <39.637840, 33.259354, 25.749640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.774101, 33.438648, 25.832628>,  <40.001202, 33.737469, 25.970942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774101, 33.438648, 25.832628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319065, 0.187511, -0.928998,
		0.758849, -0.637771, 0.131899,
		-0.567755, -0.747053, -0.345783,
		39.603775, 33.214531, 25.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448704, 33.355228, 25.493692>,  <40.001202, 33.737469, 25.970942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448704, 33.355228, 25.493692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066425, 33.281281, 25.402063>,  <39.837059, 33.236912, 25.347086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066425, 33.281281, 25.402063>,  <40.448704, 33.355228, 25.493692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066425, 33.281281, 25.402063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202838, 0.150372, -0.967598,
		0.213332, -0.971190, -0.106210,
		-0.955692, -0.184876, -0.229074,
		39.779716, 33.225819, 25.333342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440006, 32.968342, 24.885590>,  <40.448704, 33.355228, 25.493692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440006, 32.968342, 24.885590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072433, 33.125965, 24.892258>,  <39.851891, 33.220539, 24.896259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072433, 33.125965, 24.892258>,  <40.440006, 32.968342, 24.885590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072433, 33.125965, 24.892258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062086, 0.186262, -0.980537,
		-0.389497, -0.900012, -0.195627,
		-0.918933, 0.394062, 0.016670,
		39.796753, 33.244183, 24.897259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023956, 32.610638, 24.353674>,  <40.440006, 32.968342, 24.885590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023956, 32.610638, 24.353674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884228, 32.974121, 24.445089>,  <39.800392, 33.192211, 24.499939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884228, 32.974121, 24.445089>,  <40.023956, 32.610638, 24.353674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884228, 32.974121, 24.445089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106548, 0.280845, -0.953820,
		-0.930926, -0.308839, -0.194925,
		-0.349321, 0.908705, 0.228540,
		39.779430, 33.246731, 24.513651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740570, 32.784805, 23.768549>,  <40.023956, 32.610638, 24.353674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740570, 32.784805, 23.768549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.743832, 33.146690, 23.938925>,  <39.745789, 33.363823, 24.041151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.743832, 33.146690, 23.938925>,  <39.740570, 32.784805, 23.768549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743832, 33.146690, 23.938925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047448, 0.425825, -0.903561,
		-0.998841, -0.012844, 0.046398,
		0.008152, 0.904715, 0.425940,
		39.746277, 33.418106, 24.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195030, 33.084038, 23.478336>,  <39.740570, 32.784805, 23.768549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195030, 33.084038, 23.478336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449947, 33.355907, 23.623606>,  <39.602898, 33.519032, 23.710768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.449947, 33.355907, 23.623606>,  <39.195030, 33.084038, 23.478336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449947, 33.355907, 23.623606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095194, 0.398229, -0.912333,
		-0.764719, 0.615996, 0.189087,
		0.637293, 0.679679, 0.363173,
		39.641136, 33.559811, 23.732557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886093, 33.772633, 23.254631>,  <39.195030, 33.084038, 23.478336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886093, 33.772633, 23.254631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275204, 33.806953, 23.340750>,  <39.508671, 33.827545, 23.392420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.275204, 33.806953, 23.340750>,  <38.886093, 33.772633, 23.254631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275204, 33.806953, 23.340750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168466, 0.376166, -0.911108,
		-0.159165, 0.922571, 0.351468,
		0.972772, 0.085806, 0.215294,
		39.567036, 33.832695, 23.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114666, 34.483982, 22.918291>,  <38.886093, 33.772633, 23.254631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114666, 34.483982, 22.918291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465347, 34.301632, 22.979704>,  <39.675755, 34.192223, 23.016552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465347, 34.301632, 22.979704>,  <39.114666, 34.483982, 22.918291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465347, 34.301632, 22.979704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324075, 0.323871, -0.888866,
		0.355488, 0.829026, 0.431676,
		0.876700, -0.455877, 0.153534,
		39.728359, 34.164867, 23.025764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628181, 34.972713, 22.713972>,  <39.114666, 34.483982, 22.918291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628181, 34.972713, 22.713972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808060, 34.615547, 22.705278>,  <39.915989, 34.401249, 22.700062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808060, 34.615547, 22.705278>,  <39.628181, 34.972713, 22.713972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808060, 34.615547, 22.705278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399411, 0.222800, -0.889287,
		0.798901, 0.391230, 0.456833,
		0.449698, -0.892916, -0.021734,
		39.942970, 34.347672, 22.698759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310474, 35.175076, 22.464678>,  <39.628181, 34.972713, 22.713972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310474, 35.175076, 22.464678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272781, 34.779213, 22.421392>,  <40.250168, 34.541695, 22.395420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272781, 34.779213, 22.421392>,  <40.310474, 35.175076, 22.464678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272781, 34.779213, 22.421392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493554, 0.047962, -0.868392,
		0.864595, -0.135237, 0.483927,
		-0.094229, -0.989652, -0.108214,
		40.244514, 34.482319, 22.388927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884705, 35.715431, 22.680391>,  <40.310474, 35.175076, 22.464678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884705, 35.715431, 22.680391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.755939, 36.085835, 22.601524>,  <40.678680, 36.308075, 22.554203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.755939, 36.085835, 22.601524>,  <40.884705, 35.715431, 22.680391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755939, 36.085835, 22.601524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270863, 0.109472, 0.956373,
		0.907195, 0.361278, 0.215581,
		-0.321917, 0.926010, -0.197169,
		40.659363, 36.363636, 22.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178638, 36.215698, 23.140789>,  <40.884705, 35.715431, 22.680391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178638, 36.215698, 23.140789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844440, 36.391457, 23.008808>,  <40.643921, 36.496914, 22.929619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.844440, 36.391457, 23.008808>,  <41.178638, 36.215698, 23.140789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844440, 36.391457, 23.008808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220961, 0.281124, 0.933888,
		0.503107, 0.853169, -0.137789,
		-0.835500, 0.439400, -0.329952,
		40.593792, 36.523277, 22.909822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050663, 36.935608, 23.565096>,  <41.178638, 36.215698, 23.140789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050663, 36.935608, 23.565096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681744, 36.862720, 23.428768>,  <40.460392, 36.818989, 23.346972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.681744, 36.862720, 23.428768>,  <41.050663, 36.935608, 23.565096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681744, 36.862720, 23.428768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384338, 0.339918, 0.858335,
		-0.040551, 0.922634, -0.383539,
		-0.922301, -0.182215, -0.340819,
		40.405052, 36.808056, 23.326523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688412, 37.530853, 23.766438>,  <41.050663, 36.935608, 23.565096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688412, 37.530853, 23.766438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434227, 37.227753, 23.707111>,  <40.281715, 37.045891, 23.671516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.434227, 37.227753, 23.707111>,  <40.688412, 37.530853, 23.766438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434227, 37.227753, 23.707111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516690, 0.274576, 0.810949,
		-0.573776, 0.591961, -0.566007,
		-0.635462, -0.757753, -0.148315,
		40.243587, 37.000427, 23.662617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945824, 37.741226, 23.683983>,  <40.688412, 37.530853, 23.766438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945824, 37.741226, 23.683983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919785, 37.357128, 23.792572>,  <39.904160, 37.126671, 23.857725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919785, 37.357128, 23.792572>,  <39.945824, 37.741226, 23.683983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919785, 37.357128, 23.792572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540460, 0.262623, 0.799332,
		-0.838847, -0.094682, -0.536070,
		-0.065102, -0.960242, 0.271472,
		39.900253, 37.069057, 23.874014>
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
