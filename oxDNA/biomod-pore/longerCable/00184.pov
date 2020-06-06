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
	<24.325708, 34.406002, 34.590157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323074, 34.754036, 34.787296>,  <24.321493, 34.962856, 34.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323074, 34.754036, 34.787296>,  <24.325708, 34.406002, 34.590157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323074, 34.754036, 34.787296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457689, -0.435587, 0.775103,
		0.889088, 0.230679, -0.395360,
		-0.006586, 0.870087, 0.492854,
		24.321098, 35.015060, 34.935154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849319, 34.439545, 35.193882>,  <24.325708, 34.406002, 34.590157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849319, 34.439545, 35.193882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842089, 34.063278, 35.329422>,  <24.837751, 33.837517, 35.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842089, 34.063278, 35.329422>,  <24.849319, 34.439545, 35.193882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842089, 34.063278, 35.329422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653457, -0.267622, -0.708076,
		0.756747, 0.208625, 0.619523,
		-0.018076, -0.940667, 0.338850,
		24.836666, 33.781078, 35.431076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537024, 34.343037, 35.492130>,  <24.849319, 34.439545, 35.193882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537024, 34.343037, 35.492130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329777, 34.029499, 35.355225>,  <25.205429, 33.841377, 35.273079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329777, 34.029499, 35.355225>,  <25.537024, 34.343037, 35.492130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329777, 34.029499, 35.355225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783115, -0.273833, -0.558343,
		0.343927, -0.557322, 0.755716,
		-0.518117, -0.783841, -0.342268,
		25.174341, 33.794346, 35.252544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013779, 33.949619, 35.464718>,  <25.537024, 34.343037, 35.492130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013779, 33.949619, 35.464718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720404, 33.773975, 35.257160>,  <25.544378, 33.668587, 35.132626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720404, 33.773975, 35.257160>,  <26.013779, 33.949619, 35.464718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720404, 33.773975, 35.257160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670628, -0.342744, -0.657864,
		0.111031, -0.830485, 0.545864,
		-0.733437, -0.439115, -0.518891,
		25.500372, 33.642242, 35.101494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325403, 33.367096, 35.326538>,  <26.013779, 33.949619, 35.464718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325403, 33.367096, 35.326538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009739, 33.405556, 35.083893>,  <25.820339, 33.428631, 34.938305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009739, 33.405556, 35.083893>,  <26.325403, 33.367096, 35.326538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009739, 33.405556, 35.083893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553227, -0.317704, -0.770068,
		-0.266763, -0.943303, 0.197529,
		-0.789163, 0.096148, -0.606612,
		25.772989, 33.434399, 34.901909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920107, 33.070152, 35.652317>,  <26.325403, 33.367096, 35.326538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920107, 33.070152, 35.652317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162664, 33.074863, 35.334286>,  <27.308199, 33.077690, 35.143467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162664, 33.074863, 35.334286>,  <26.920107, 33.070152, 35.652317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162664, 33.074863, 35.334286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127605, -0.988373, 0.082682,
		-0.784860, -0.151594, -0.600844,
		0.606392, 0.011777, -0.795078,
		27.344582, 33.078396, 35.095760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597860, 32.681583, 35.144238>,  <26.920107, 33.070152, 35.652317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597860, 32.681583, 35.144238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995707, 32.698689, 35.106468>,  <27.234413, 32.708950, 35.083805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995707, 32.698689, 35.106468>,  <26.597860, 32.681583, 35.144238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995707, 32.698689, 35.106468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045400, -0.998631, 0.025978,
		-0.093184, -0.030125, -0.995193,
		0.994613, 0.042761, -0.094424,
		27.294090, 32.711517, 35.078140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913620, 32.162994, 34.701275>,  <26.597860, 32.681583, 35.144238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913620, 32.162994, 34.701275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215117, 32.250195, 34.949257>,  <27.396015, 32.302517, 35.098045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215117, 32.250195, 34.949257>,  <26.913620, 32.162994, 34.701275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215117, 32.250195, 34.949257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176392, -0.975870, 0.128700,
		0.633056, 0.012349, -0.774007,
		0.753741, 0.218003, 0.619959,
		27.441238, 32.315594, 35.135246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490908, 31.739357, 34.481815>,  <26.913620, 32.162994, 34.701275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490908, 31.739357, 34.481815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540422, 31.823734, 34.869667>,  <27.570131, 31.874361, 35.102379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540422, 31.823734, 34.869667>,  <27.490908, 31.739357, 34.481815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540422, 31.823734, 34.869667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250206, -0.952207, 0.175210,
		0.960246, 0.220918, -0.170652,
		0.123789, 0.210943, 0.969629,
		27.577559, 31.887016, 35.160557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143534, 31.365255, 34.743687>,  <27.490908, 31.739357, 34.481815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143534, 31.365255, 34.743687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965214, 31.456182, 35.090004>,  <27.858221, 31.510738, 35.297794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965214, 31.456182, 35.090004>,  <28.143534, 31.365255, 34.743687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965214, 31.456182, 35.090004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, -0.848092, 0.400995,
		0.825422, 0.478609, 0.299353,
		-0.445799, 0.227316, 0.865789,
		27.831474, 31.524378, 35.349739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634741, 31.398342, 35.273113>,  <28.143534, 31.365255, 34.743687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634741, 31.398342, 35.273113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288563, 31.315109, 35.455410>,  <28.080856, 31.265169, 35.564789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288563, 31.315109, 35.455410>,  <28.634741, 31.398342, 35.273113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288563, 31.315109, 35.455410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375960, -0.870993, 0.316268,
		0.331142, 0.445056, 0.832028,
		-0.865447, -0.208080, 0.455745,
		28.028929, 31.252686, 35.592133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828115, 31.177521, 35.960503>,  <28.634741, 31.398342, 35.273113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828115, 31.177521, 35.960503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467417, 31.052382, 35.841187>,  <28.250998, 30.977299, 35.769596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467417, 31.052382, 35.841187>,  <28.828115, 31.177521, 35.960503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467417, 31.052382, 35.841187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210747, -0.920687, 0.328514,
		-0.377407, 0.233373, 0.896159,
		-0.901748, -0.312846, -0.298291,
		28.196892, 30.958529, 35.751698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820469, 30.498247, 35.566025>,  <28.828115, 31.177521, 35.960503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820469, 30.498247, 35.566025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649654, 30.263168, 35.840908>,  <28.547165, 30.122122, 36.005836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649654, 30.263168, 35.840908>,  <28.820469, 30.498247, 35.566025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649654, 30.263168, 35.840908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812507, 0.582916, -0.006393,
		-0.396826, -0.561089, -0.726435,
		-0.427038, -0.587697, 0.687205,
		28.521544, 30.086859, 36.047070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265799, 30.120342, 35.307259>,  <28.820469, 30.498247, 35.566025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265799, 30.120342, 35.307259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218985, 30.223412, 35.690907>,  <28.190897, 30.285254, 35.921093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.218985, 30.223412, 35.690907>,  <28.265799, 30.120342, 35.307259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218985, 30.223412, 35.690907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818528, 0.521890, -0.240088,
		-0.562419, -0.813163, 0.149837,
		-0.117033, 0.257676, 0.959118,
		28.183874, 30.300714, 35.978642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521727, 30.069920, 35.374718>,  <28.265799, 30.120342, 35.307259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521727, 30.069920, 35.374718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682764, 30.290823, 35.666725>,  <27.779387, 30.423365, 35.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682764, 30.290823, 35.666725>,  <27.521727, 30.069920, 35.374718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682764, 30.290823, 35.666725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672050, 0.719797, -0.173900,
		-0.621504, -0.420597, 0.660932,
		0.402595, 0.552259, 0.730019,
		27.803543, 30.456501, 35.885731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936096, 30.488890, 35.671833>,  <27.521727, 30.069920, 35.374718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936096, 30.488890, 35.671833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287613, 30.656883, 35.762466>,  <27.498524, 30.757679, 35.816845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287613, 30.656883, 35.762466>,  <26.936096, 30.488890, 35.671833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287613, 30.656883, 35.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369052, 0.899142, -0.235254,
		-0.302529, 0.123120, 0.945155,
		0.878793, 0.419982, 0.226579,
		27.551250, 30.782879, 35.830441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886675, 31.032497, 36.207481>,  <26.936096, 30.488890, 35.671833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886675, 31.032497, 36.207481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224056, 31.111748, 36.007748>,  <27.426485, 31.159298, 35.887909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224056, 31.111748, 36.007748>,  <26.886675, 31.032497, 36.207481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224056, 31.111748, 36.007748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279670, 0.955556, -0.093259,
		0.458663, 0.218308, 0.861377,
		0.843453, 0.198126, -0.499333,
		27.477093, 31.171186, 35.857948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166803, 31.639963, 36.438313>,  <26.886675, 31.032497, 36.207481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166803, 31.639963, 36.438313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361950, 31.621660, 36.089626>,  <27.479038, 31.610678, 35.880413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361950, 31.621660, 36.089626>,  <27.166803, 31.639963, 36.438313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361950, 31.621660, 36.089626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085600, 0.996320, -0.004393,
		0.868710, -0.072476, 0.489989,
		0.487868, -0.045759, -0.871717,
		27.508310, 31.607933, 35.828110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663610, 32.263878, 36.420921>,  <27.166803, 31.639963, 36.438313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663610, 32.263878, 36.420921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625042, 32.137325, 36.043434>,  <27.601900, 32.061394, 35.816940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625042, 32.137325, 36.043434>,  <27.663610, 32.263878, 36.420921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625042, 32.137325, 36.043434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167486, 0.929461, -0.328712,
		0.981148, -0.189755, -0.036632,
		-0.096423, -0.316380, -0.943720,
		27.596115, 32.042412, 35.760319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318136, 32.422775, 36.032349>,  <27.663610, 32.263878, 36.420921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318136, 32.422775, 36.032349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015686, 32.391979, 35.772396>,  <27.834215, 32.373501, 35.616425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015686, 32.391979, 35.772396>,  <28.318136, 32.422775, 36.032349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015686, 32.391979, 35.772396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148198, 0.947112, -0.284632,
		0.637426, -0.311529, -0.704725,
		-0.756125, -0.076993, -0.649882,
		27.788849, 32.368881, 35.577431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953657, 32.868843, 35.597874>,  <28.318136, 32.422775, 36.032349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953657, 32.868843, 35.597874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278587, 32.868698, 35.364594>,  <28.473545, 32.868610, 35.224625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278587, 32.868698, 35.364594>,  <27.953657, 32.868843, 35.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278587, 32.868698, 35.364594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579184, 0.116696, -0.806801,
		0.068353, 0.993167, 0.094584,
		0.812326, -0.000366, -0.583204,
		28.522285, 32.868587, 35.189632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949671, 33.444309, 35.145611>,  <27.953657, 32.868843, 35.597874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949671, 33.444309, 35.145611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148132, 33.149960, 34.961300>,  <28.267210, 32.973351, 34.850716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148132, 33.149960, 34.961300>,  <27.949671, 33.444309, 35.145611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148132, 33.149960, 34.961300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498631, 0.192947, -0.845067,
		0.710772, 0.649041, -0.271200,
		0.496156, -0.735879, -0.460774,
		28.296980, 32.929195, 34.823067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274874, 33.770123, 34.556774>,  <27.949671, 33.444309, 35.145611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274874, 33.770123, 34.556774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205231, 33.378685, 34.512897>,  <28.163445, 33.143822, 34.486572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205231, 33.378685, 34.512897>,  <28.274874, 33.770123, 34.556774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205231, 33.378685, 34.512897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485363, 0.182203, -0.855117,
		0.856801, -0.095644, -0.506699,
		-0.174109, -0.978598, -0.109690,
		28.152998, 33.085106, 34.479992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584902, 33.402027, 33.865269>,  <28.274874, 33.770123, 34.556774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584902, 33.402027, 33.865269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875906, 33.566990, 34.084595>,  <29.050508, 33.665966, 34.216190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875906, 33.566990, 34.084595>,  <28.584902, 33.402027, 33.865269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875906, 33.566990, 34.084595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342959, 0.910764, -0.229974,
		-0.594231, -0.020743, 0.804027,
		0.727509, 0.412406, 0.548318,
		29.094158, 33.690712, 34.249088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977226, 33.034931, 33.398079>,  <28.584902, 33.402027, 33.865269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977226, 33.034931, 33.398079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889671, 33.399334, 33.258278>,  <28.837139, 33.617977, 33.174397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889671, 33.399334, 33.258278>,  <28.977226, 33.034931, 33.398079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889671, 33.399334, 33.258278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954815, -0.273778, -0.115646,
		-0.201040, 0.308397, 0.929771,
		-0.218886, 0.911009, -0.349502,
		28.824005, 33.672638, 33.153427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611322, 33.330242, 33.672020>,  <28.977226, 33.034931, 33.398079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611322, 33.330242, 33.672020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565580, 33.447998, 34.051548>,  <29.538136, 33.518654, 34.279263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565580, 33.447998, 34.051548>,  <29.611322, 33.330242, 33.672020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565580, 33.447998, 34.051548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881624, 0.470283, -0.039661,
		-0.457889, 0.831966, -0.313323,
		-0.114354, 0.294393, 0.948818,
		29.531275, 33.536316, 34.336193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584049, 34.033020, 33.725986>,  <29.611322, 33.330242, 33.672020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584049, 34.033020, 33.725986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760506, 33.841980, 34.029903>,  <29.866381, 33.727356, 34.212254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760506, 33.841980, 34.029903>,  <29.584049, 34.033020, 33.725986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760506, 33.841980, 34.029903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788381, 0.610740, -0.073834,
		-0.428774, 0.631580, 0.645956,
		0.441143, -0.477602, 0.759795,
		29.892849, 33.698700, 34.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941309, 34.510105, 34.047699>,  <29.584049, 34.033020, 33.725986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941309, 34.510105, 34.047699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105297, 34.180431, 34.203979>,  <30.203690, 33.982628, 34.297749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105297, 34.180431, 34.203979>,  <29.941309, 34.510105, 34.047699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105297, 34.180431, 34.203979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892913, 0.450058, 0.012441,
		-0.186092, 0.343762, 0.920433,
		0.409972, -0.824182, 0.390701,
		30.228289, 33.933178, 34.321190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774744, 34.606335, 34.750332>,  <29.941309, 34.510105, 34.047699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774744, 34.606335, 34.750332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791668, 34.945019, 34.538181>,  <29.801823, 35.148228, 34.410892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791668, 34.945019, 34.538181>,  <29.774744, 34.606335, 34.750332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791668, 34.945019, 34.538181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719707, 0.394029, 0.571631,
		0.692987, 0.357527, 0.626054,
		0.042310, 0.846709, -0.530372,
		29.804361, 35.199032, 34.379070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877783, 35.176826, 35.170731>,  <29.774744, 34.606335, 34.750332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877783, 35.176826, 35.170731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682766, 35.285583, 34.838856>,  <29.565756, 35.350838, 34.639732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682766, 35.285583, 34.838856>,  <29.877783, 35.176826, 35.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682766, 35.285583, 34.838856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793702, 0.257920, 0.550922,
		0.363782, 0.927121, 0.090053,
		-0.487545, 0.271891, -0.829684,
		29.536503, 35.367149, 34.589951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699444, 35.833511, 35.268360>,  <29.877783, 35.176826, 35.170731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699444, 35.833511, 35.268360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448441, 35.689972, 34.991962>,  <29.297838, 35.603848, 34.826126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448441, 35.689972, 34.991962>,  <29.699444, 35.833511, 35.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448441, 35.689972, 34.991962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775160, 0.371399, 0.511068,
		0.073239, 0.856325, -0.511218,
		-0.627506, -0.358845, -0.690990,
		29.260189, 35.582317, 34.784664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347105, 36.394119, 34.879513>,  <29.699444, 35.833511, 35.268360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347105, 36.394119, 34.879513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113569, 36.069786, 34.863121>,  <28.973448, 35.875187, 34.853287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113569, 36.069786, 34.863121>,  <29.347105, 36.394119, 34.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113569, 36.069786, 34.863121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749349, 0.518767, 0.411530,
		-0.312425, 0.270974, -0.910474,
		-0.583838, -0.810835, -0.040978,
		28.938417, 35.826534, 34.850826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716467, 36.693390, 35.057034>,  <29.347105, 36.394119, 34.879513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716467, 36.693390, 35.057034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619419, 36.311096, 35.123623>,  <28.561190, 36.081722, 35.163574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619419, 36.311096, 35.123623>,  <28.716467, 36.693390, 35.057034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619419, 36.311096, 35.123623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768467, 0.294071, 0.568314,
		-0.592110, 0.009956, -0.805795,
		-0.242619, -0.955732, 0.166471,
		28.546633, 36.024376, 35.173565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061695, 36.513573, 34.786060>,  <28.716467, 36.693390, 35.057034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061695, 36.513573, 34.786060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130302, 36.254932, 35.083378>,  <28.171467, 36.099747, 35.261768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130302, 36.254932, 35.083378>,  <28.061695, 36.513573, 34.786060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130302, 36.254932, 35.083378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923450, 0.157350, 0.349974,
		-0.343252, -0.746420, -0.570118,
		0.171519, -0.646605, 0.743292,
		28.181759, 36.060951, 35.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509758, 35.954723, 34.751873>,  <28.061695, 36.513573, 34.786060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509758, 35.954723, 34.751873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666712, 36.007946, 35.115925>,  <27.760885, 36.039879, 35.334354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666712, 36.007946, 35.115925>,  <27.509758, 35.954723, 34.751873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666712, 36.007946, 35.115925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859952, 0.404159, 0.311669,
		-0.326367, -0.904960, 0.273007,
		0.392386, 0.133054, 0.910126,
		27.784428, 36.047863, 35.388962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118631, 35.622543, 35.390568>,  <27.509758, 35.954723, 34.751873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118631, 35.622543, 35.390568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290751, 35.972660, 35.478848>,  <27.394022, 36.182732, 35.531815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290751, 35.972660, 35.478848>,  <27.118631, 35.622543, 35.390568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290751, 35.972660, 35.478848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893744, 0.378780, 0.240306,
		0.126743, -0.300650, 0.945276,
		0.430300, 0.875292, 0.220696,
		27.419840, 36.235249, 35.545055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835859, 35.502251, 35.662914>,  <27.118631, 35.622543, 35.390568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835859, 35.502251, 35.662914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664314, 35.297325, 35.365292>,  <27.561388, 35.174370, 35.186718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664314, 35.297325, 35.365292>,  <27.835859, 35.502251, 35.662914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664314, 35.297325, 35.365292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885913, -0.077369, -0.457354,
		0.176741, -0.855307, 0.487044,
		-0.428860, -0.512312, -0.744053,
		27.535656, 35.143631, 35.142075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176989, 34.826965, 35.617279>,  <27.835859, 35.502251, 35.662914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176989, 34.826965, 35.617279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998093, 35.009171, 35.309387>,  <27.890755, 35.118496, 35.124653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998093, 35.009171, 35.309387>,  <28.176989, 34.826965, 35.617279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998093, 35.009171, 35.309387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799878, -0.181384, -0.572097,
		-0.400216, -0.871553, -0.283236,
		-0.447238, 0.455516, -0.769729,
		27.863920, 35.145824, 35.078468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250706, 34.441742, 34.955441>,  <28.176989, 34.826965, 35.617279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250706, 34.441742, 34.955441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232573, 34.833336, 34.875908>,  <28.221693, 35.068291, 34.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232573, 34.833336, 34.875908>,  <28.250706, 34.441742, 34.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232573, 34.833336, 34.875908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815144, -0.078806, -0.573873,
		-0.577482, -0.188093, -0.794441,
		-0.045334, 0.978985, -0.198832,
		28.218973, 35.127029, 34.816257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275490, 34.608250, 34.239101>,  <28.250706, 34.441742, 34.955441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275490, 34.608250, 34.239101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434679, 34.922295, 34.428932>,  <28.530193, 35.110722, 34.542831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434679, 34.922295, 34.428932>,  <28.275490, 34.608250, 34.239101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434679, 34.922295, 34.428932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833080, -0.092646, -0.545339,
		-0.384183, 0.612390, -0.690928,
		0.397972, 0.785108, 0.474577,
		28.554071, 35.157825, 34.571304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486986, 35.143768, 33.854507>,  <28.275490, 34.608250, 34.239101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486986, 35.143768, 33.854507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732134, 35.258827, 34.148895>,  <28.879223, 35.327862, 34.325527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732134, 35.258827, 34.148895>,  <28.486986, 35.143768, 33.854507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732134, 35.258827, 34.148895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784261, -0.107614, -0.611027,
		-0.096562, 0.951670, -0.291547,
		0.612870, 0.287652, 0.735966,
		28.915995, 35.345123, 34.369686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930058, 35.646397, 33.506805>,  <28.486986, 35.143768, 33.854507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930058, 35.646397, 33.506805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119106, 35.529980, 33.839535>,  <29.232534, 35.460129, 34.039173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119106, 35.529980, 33.839535>,  <28.930058, 35.646397, 33.506805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119106, 35.529980, 33.839535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831966, -0.163925, -0.530058,
		0.290626, 0.942562, 0.164663,
		0.472620, -0.291043, 0.831820,
		29.260893, 35.442665, 34.089081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580431, 36.011539, 33.329853>,  <28.930058, 35.646397, 33.506805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580431, 36.011539, 33.329853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626474, 35.732922, 33.613144>,  <29.654100, 35.565750, 33.783119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626474, 35.732922, 33.613144>,  <29.580431, 36.011539, 33.329853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626474, 35.732922, 33.613144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911280, -0.209727, -0.354378,
		0.395372, 0.686182, 0.610603,
		0.115108, -0.696541, 0.708224,
		29.661007, 35.523960, 33.825611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167734, 36.074299, 33.876724>,  <29.580431, 36.011539, 33.329853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167734, 36.074299, 33.876724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120445, 35.681747, 33.816174>,  <30.092072, 35.446217, 33.779842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120445, 35.681747, 33.816174>,  <30.167734, 36.074299, 33.876724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120445, 35.681747, 33.816174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971538, -0.082801, -0.221943,
		0.205277, -0.173305, 0.963238,
		-0.118221, -0.981381, -0.151375,
		30.084978, 35.387333, 33.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749184, 35.661682, 34.228256>,  <30.167734, 36.074299, 33.876724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749184, 35.661682, 34.228256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585064, 35.418682, 33.956200>,  <30.486591, 35.272881, 33.792965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585064, 35.418682, 33.956200>,  <30.749184, 35.661682, 34.228256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585064, 35.418682, 33.956200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898358, -0.397537, -0.186861,
		-0.156862, -0.687680, 0.708866,
		-0.410301, -0.607504, -0.680142,
		30.461973, 35.236431, 33.752155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976675, 35.003925, 34.390106>,  <30.749184, 35.661682, 34.228256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976675, 35.003925, 34.390106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871923, 35.013931, 34.004196>,  <30.809072, 35.019936, 33.772648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871923, 35.013931, 34.004196>,  <30.976675, 35.003925, 34.390106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871923, 35.013931, 34.004196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928191, -0.267290, -0.258876,
		-0.264350, -0.963292, 0.046786,
		-0.261879, 0.025008, -0.964777,
		30.793360, 35.021435, 33.714764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048471, 34.344872, 33.956463>,  <30.976675, 35.003925, 34.390106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048471, 34.344872, 33.956463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080261, 34.646793, 33.696014>,  <31.099335, 34.827946, 33.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080261, 34.646793, 33.696014>,  <31.048471, 34.344872, 33.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080261, 34.646793, 33.696014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822544, -0.418648, -0.384910,
		-0.563121, -0.504985, -0.654129,
		0.079476, 0.754801, -0.651121,
		31.104105, 34.873234, 33.500679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545038, 34.120121, 33.527431>,  <31.048471, 34.344872, 33.956463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545038, 34.120121, 33.527431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492132, 34.494846, 33.397892>,  <31.460388, 34.719681, 33.320168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492132, 34.494846, 33.397892>,  <31.545038, 34.120121, 33.527431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492132, 34.494846, 33.397892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822842, -0.078396, -0.562837,
		-0.552664, -0.340924, -0.760482,
		-0.132266, 0.936816, -0.323853,
		31.452452, 34.775890, 33.300735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096935, 34.604668, 33.101929>,  <31.545038, 34.120121, 33.527431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096935, 34.604668, 33.101929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150043, 34.929226, 33.329617>,  <32.181908, 35.123959, 33.466228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150043, 34.929226, 33.329617>,  <32.096935, 34.604668, 33.101929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150043, 34.929226, 33.329617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925781, -0.306634, 0.221145,
		0.353978, 0.497612, -0.791885,
		0.132774, 0.811393, 0.569221,
		32.189877, 35.172646, 33.500381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798019, 34.597088, 33.222885>,  <32.096935, 34.604668, 33.101929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798019, 34.597088, 33.222885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699039, 34.889786, 33.476913>,  <32.639652, 35.065403, 33.629333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699039, 34.889786, 33.476913>,  <32.798019, 34.597088, 33.222885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699039, 34.889786, 33.476913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910931, -0.047617, 0.409801,
		0.330109, 0.679916, -0.654784,
		-0.247452, 0.731742, 0.635076,
		32.624805, 35.109310, 33.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378605, 35.058048, 33.329487>,  <32.798019, 34.597088, 33.222885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378605, 35.058048, 33.329487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135246, 35.059429, 33.646938>,  <32.989231, 35.060257, 33.837410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135246, 35.059429, 33.646938>,  <33.378605, 35.058048, 33.329487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135246, 35.059429, 33.646938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739429, -0.360754, 0.568420,
		0.288267, 0.932655, 0.216928,
		-0.608397, 0.003454, 0.793626,
		32.952728, 35.060467, 33.885025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280758, 35.323578, 32.641541>,  <33.378605, 35.058048, 33.329487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280758, 35.323578, 32.641541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319599, 35.677700, 32.823444>,  <33.342903, 35.890175, 32.932587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319599, 35.677700, 32.823444>,  <33.280758, 35.323578, 32.641541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319599, 35.677700, 32.823444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615800, -0.305517, 0.726257,
		0.781896, -0.350563, 0.515504,
		0.097104, 0.885305, 0.454759,
		33.348732, 35.943291, 32.959873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054207, 35.435661, 32.289032>,  <33.280758, 35.323578, 32.641541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054207, 35.435661, 32.289032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361477, 35.189793, 32.217381>,  <34.545837, 35.042271, 32.174389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361477, 35.189793, 32.217381>,  <34.054207, 35.435661, 32.289032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361477, 35.189793, 32.217381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625171, 0.659793, 0.416935,
		-0.138092, -0.432263, 0.891111,
		0.768174, -0.614672, -0.179126,
		34.591930, 35.005390, 32.163643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164371, 35.877129, 32.890034>,  <34.054207, 35.435661, 32.289032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164371, 35.877129, 32.890034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489330, 35.659779, 32.974651>,  <34.684307, 35.529369, 33.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489330, 35.659779, 32.974651>,  <34.164371, 35.877129, 32.890034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489330, 35.659779, 32.974651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121022, 0.197768, 0.972750,
		-0.570408, -0.815860, 0.094905,
		0.812397, -0.543379, 0.211545,
		34.733047, 35.496765, 33.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067329, 35.397362, 33.446056>,  <34.164371, 35.877129, 32.890034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067329, 35.397362, 33.446056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456367, 35.490345, 33.447941>,  <34.689789, 35.546135, 33.449070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456367, 35.490345, 33.447941>,  <34.067329, 35.397362, 33.446056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456367, 35.490345, 33.447941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033621, 0.120579, 0.992134,
		0.230067, -0.965102, 0.125090,
		0.972594, 0.232463, 0.004707,
		34.748146, 35.560081, 33.449352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345654, 34.900188, 33.937305>,  <34.067329, 35.397362, 33.446056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345654, 34.900188, 33.937305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541775, 35.243870, 33.878834>,  <34.659447, 35.450077, 33.843750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541775, 35.243870, 33.878834>,  <34.345654, 34.900188, 33.937305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541775, 35.243870, 33.878834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013925, 0.159984, 0.987021,
		0.871440, -0.485977, 0.066476,
		0.490305, 0.859204, -0.146184,
		34.688866, 35.501633, 33.834980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990921, 34.901520, 34.311230>,  <34.345654, 34.900188, 33.937305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990921, 34.901520, 34.311230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889774, 35.284004, 34.252289>,  <34.829086, 35.513496, 34.216923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889774, 35.284004, 34.252289>,  <34.990921, 34.901520, 34.311230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889774, 35.284004, 34.252289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073987, 0.132747, 0.988385,
		0.964669, 0.260827, 0.037180,
		-0.252862, 0.956215, -0.147355,
		34.813915, 35.570869, 34.208084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432568, 35.388161, 34.757355>,  <34.990921, 34.901520, 34.311230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432568, 35.388161, 34.757355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084484, 35.569080, 34.679211>,  <34.875633, 35.677631, 34.632324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084484, 35.569080, 34.679211>,  <35.432568, 35.388161, 34.757355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084484, 35.569080, 34.679211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140994, 0.151321, 0.978378,
		0.472084, 0.878935, -0.067909,
		-0.870206, 0.452301, -0.195361,
		34.823421, 35.704769, 34.620602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471180, 36.024109, 35.147621>,  <35.432568, 35.388161, 34.757355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471180, 36.024109, 35.147621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094696, 35.915718, 35.066921>,  <34.868805, 35.850685, 35.018501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094696, 35.915718, 35.066921>,  <35.471180, 36.024109, 35.147621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094696, 35.915718, 35.066921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208264, -0.004822, 0.978061,
		-0.266005, 0.962574, -0.051896,
		-0.941205, -0.270977, -0.201753,
		34.812336, 35.834423, 35.006397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814930, 36.030010, 35.632092>,  <35.471180, 36.024109, 35.147621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814930, 36.030010, 35.632092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588017, 36.353764, 35.571301>,  <34.451870, 36.548016, 35.534824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588017, 36.353764, 35.571301>,  <34.814930, 36.030010, 35.632092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588017, 36.353764, 35.571301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022198, -0.169449, -0.985289,
		-0.823225, -0.562309, 0.078158,
		-0.567281, 0.809380, -0.151977,
		34.417831, 36.596577, 35.525707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236488, 35.806515, 35.262661>,  <34.814930, 36.030010, 35.632092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236488, 35.806515, 35.262661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358387, 36.182941, 35.203991>,  <34.431526, 36.408798, 35.168789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358387, 36.182941, 35.203991>,  <34.236488, 35.806515, 35.262661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358387, 36.182941, 35.203991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156953, -0.201519, -0.966828,
		-0.939412, 0.271617, -0.209116,
		0.304748, 0.941071, -0.146678,
		34.449810, 36.465263, 35.159988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856544, 36.181194, 34.740536>,  <34.236488, 35.806515, 35.262661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856544, 36.181194, 34.740536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246330, 36.268814, 34.760300>,  <34.480202, 36.321384, 34.772160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246330, 36.268814, 34.760300>,  <33.856544, 36.181194, 34.740536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246330, 36.268814, 34.760300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121055, -0.327132, -0.937193,
		-0.189124, 0.919241, -0.345295,
		0.974463, 0.219046, 0.049410,
		34.538670, 36.334526, 34.775124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139435, 36.667442, 34.174591>,  <33.856544, 36.181194, 34.740536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139435, 36.667442, 34.174591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416885, 36.427055, 34.333454>,  <34.583355, 36.282825, 34.428772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416885, 36.427055, 34.333454>,  <34.139435, 36.667442, 34.174591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416885, 36.427055, 34.333454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323787, -0.232396, -0.917144,
		0.643468, 0.764745, 0.033389,
		0.693622, -0.600964, 0.397154,
		34.624973, 36.246765, 34.452599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860817, 36.839802, 34.045254>,  <34.139435, 36.667442, 34.174591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860817, 36.839802, 34.045254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841221, 36.443897, 34.098869>,  <34.829464, 36.206352, 34.131039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841221, 36.443897, 34.098869>,  <34.860817, 36.839802, 34.045254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841221, 36.443897, 34.098869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361811, -0.142675, -0.921269,
		0.930964, 0.003367, 0.365097,
		-0.048988, -0.989764, 0.134044,
		34.826523, 36.146969, 34.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442787, 36.544613, 33.675949>,  <34.860817, 36.839802, 34.045254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442787, 36.544613, 33.675949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219528, 36.217079, 33.729588>,  <35.085575, 36.020557, 33.761768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219528, 36.217079, 33.729588>,  <35.442787, 36.544613, 33.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219528, 36.217079, 33.729588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389462, -0.401237, -0.829052,
		0.732662, -0.410506, 0.542854,
		-0.558144, -0.818837, 0.134094,
		35.052086, 35.971428, 33.769817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904701, 36.035725, 33.472481>,  <35.442787, 36.544613, 33.675949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904701, 36.035725, 33.472481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530266, 35.903297, 33.424911>,  <35.305607, 35.823841, 33.396370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530266, 35.903297, 33.424911>,  <35.904701, 36.035725, 33.472481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530266, 35.903297, 33.424911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286271, -0.520459, -0.804469,
		0.204436, -0.787095, 0.581968,
		-0.936085, -0.331064, -0.118922,
		35.249439, 35.803978, 33.389236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919636, 35.342194, 33.353046>,  <35.904701, 36.035725, 33.472481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919636, 35.342194, 33.353046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622379, 35.530949, 33.163284>,  <35.444027, 35.644203, 33.049427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622379, 35.530949, 33.163284>,  <35.919636, 35.342194, 33.353046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622379, 35.530949, 33.163284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360808, -0.314493, -0.878016,
		-0.563525, -0.823659, 0.063451,
		-0.743140, 0.471890, -0.474408,
		35.399437, 35.672516, 33.020962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476524, 34.838074, 32.988693>,  <35.919636, 35.342194, 33.353046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476524, 34.838074, 32.988693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486401, 35.201668, 32.822254>,  <35.492325, 35.419823, 32.722389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486401, 35.201668, 32.822254>,  <35.476524, 34.838074, 32.988693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486401, 35.201668, 32.822254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400280, -0.390392, -0.829078,
		-0.916060, -0.146084, -0.373488,
		0.024692, 0.908985, -0.416097,
		35.493809, 35.474365, 32.697426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119671, 34.762085, 32.337116>,  <35.476524, 34.838074, 32.988693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119671, 34.762085, 32.337116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351212, 35.085464, 32.294525>,  <35.490135, 35.279491, 32.268970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351212, 35.085464, 32.294525>,  <35.119671, 34.762085, 32.337116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351212, 35.085464, 32.294525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378175, -0.381841, -0.843316,
		-0.722438, 0.447886, -0.526765,
		0.578850, 0.808453, -0.106477,
		35.524868, 35.327999, 32.262581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052570, 34.881554, 31.655893>,  <35.119671, 34.762085, 32.337116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052570, 34.881554, 31.655893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381405, 35.089813, 31.748064>,  <35.578705, 35.214767, 31.803366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381405, 35.089813, 31.748064>,  <35.052570, 34.881554, 31.655893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381405, 35.089813, 31.748064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358107, -0.158196, -0.920181,
		-0.442635, 0.838989, -0.316499,
		0.822091, 0.520645, 0.230425,
		35.628033, 35.246006, 31.817192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174053, 35.233006, 31.129259>,  <35.052570, 34.881554, 31.655893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174053, 35.233006, 31.129259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536907, 35.223583, 31.297327>,  <35.754620, 35.217930, 31.398169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536907, 35.223583, 31.297327>,  <35.174053, 35.233006, 31.129259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536907, 35.223583, 31.297327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389578, -0.330579, -0.859620,
		0.159148, 0.943485, -0.290704,
		0.907139, -0.023555, 0.420172,
		35.809048, 35.216518, 31.423378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677933, 35.619354, 30.660103>,  <35.174053, 35.233006, 31.129259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677933, 35.619354, 30.660103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893429, 35.363209, 30.879082>,  <36.022724, 35.209522, 31.010469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893429, 35.363209, 30.879082>,  <35.677933, 35.619354, 30.660103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893429, 35.363209, 30.879082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638585, -0.113460, -0.761141,
		0.549521, 0.759645, 0.347802,
		0.538735, -0.640364, 0.547447,
		36.055050, 35.171101, 31.043316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384674, 35.821617, 30.620583>,  <35.677933, 35.619354, 30.660103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384674, 35.821617, 30.620583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409672, 35.443691, 30.749214>,  <36.424671, 35.216934, 30.826393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409672, 35.443691, 30.749214>,  <36.384674, 35.821617, 30.620583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409672, 35.443691, 30.749214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738927, -0.172788, -0.651253,
		0.670881, 0.278320, 0.687355,
		0.062490, -0.944819, 0.321578,
		36.428417, 35.160244, 30.845688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112389, 35.712887, 30.653273>,  <36.384674, 35.821617, 30.620583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112389, 35.712887, 30.653273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954483, 35.345375, 30.653347>,  <36.859737, 35.124866, 30.653391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954483, 35.345375, 30.653347>,  <37.112389, 35.712887, 30.653273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954483, 35.345375, 30.653347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691003, -0.297031, -0.659005,
		0.605537, -0.260024, 0.752138,
		-0.394765, -0.918782, 0.000185,
		36.836052, 35.069740, 30.653402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601421, 35.381592, 30.532381>,  <37.112389, 35.712887, 30.653273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601421, 35.381592, 30.532381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319233, 35.111828, 30.445217>,  <37.149921, 34.949970, 30.392920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319233, 35.111828, 30.445217>,  <37.601421, 35.381592, 30.532381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319233, 35.111828, 30.445217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564319, -0.348496, -0.748395,
		0.428782, -0.650941, 0.626435,
		-0.705471, -0.674408, -0.217910,
		37.107594, 34.909504, 30.379845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955742, 34.672543, 30.477581>,  <37.601421, 35.381592, 30.532381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955742, 34.672543, 30.477581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609707, 34.668175, 30.276979>,  <37.402084, 34.665554, 30.156618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609707, 34.668175, 30.276979>,  <37.955742, 34.672543, 30.477581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609707, 34.668175, 30.276979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459230, -0.419493, -0.783028,
		-0.201824, -0.907693, 0.367914,
		-0.865087, -0.010923, -0.501504,
		37.350182, 34.664898, 30.126528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997234, 34.052048, 30.083815>,  <37.955742, 34.672543, 30.477581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997234, 34.052048, 30.083815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720074, 34.287827, 29.917711>,  <37.553780, 34.429295, 29.818048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720074, 34.287827, 29.917711>,  <37.997234, 34.052048, 30.083815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720074, 34.287827, 29.917711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305813, -0.281308, -0.909585,
		-0.652970, -0.757242, 0.014657,
		-0.692899, 0.589450, -0.415260,
		37.512203, 34.464661, 29.793133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709675, 33.698326, 29.522913>,  <37.997234, 34.052048, 30.083815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709675, 33.698326, 29.522913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574505, 34.063251, 29.430405>,  <37.493401, 34.282207, 29.374901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574505, 34.063251, 29.430405>,  <37.709675, 33.698326, 29.522913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574505, 34.063251, 29.430405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296815, -0.129881, -0.946061,
		-0.893143, -0.388345, -0.226899,
		-0.337928, 0.912315, -0.231269,
		37.473125, 34.336945, 29.361023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527729, 33.677860, 28.850332>,  <37.709675, 33.698326, 29.522913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527729, 33.677860, 28.850332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547737, 34.075970, 28.883627>,  <37.559742, 34.314835, 28.903605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547737, 34.075970, 28.883627>,  <37.527729, 33.677860, 28.850332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547737, 34.075970, 28.883627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274713, 0.066417, -0.959230,
		-0.960224, 0.070850, -0.270092,
		0.050022, 0.995273, 0.083238,
		37.562744, 34.374550, 28.908598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128044, 34.044605, 28.257521>,  <37.527729, 33.677860, 28.850332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128044, 34.044605, 28.257521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362526, 34.338440, 28.394190>,  <37.503216, 34.514740, 28.476192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362526, 34.338440, 28.394190>,  <37.128044, 34.044605, 28.257521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362526, 34.338440, 28.394190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208343, 0.270866, -0.939801,
		-0.782915, 0.622102, 0.005737,
		0.586206, 0.734589, 0.341675,
		37.538387, 34.558815, 28.496693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971508, 34.639359, 27.731516>,  <37.128044, 34.044605, 28.257521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971508, 34.639359, 27.731516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309971, 34.713444, 27.931402>,  <37.513050, 34.757896, 28.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309971, 34.713444, 27.931402>,  <36.971508, 34.639359, 27.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309971, 34.713444, 27.931402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458671, 0.224360, -0.859816,
		-0.271364, 0.956744, 0.104892,
		0.846158, 0.185212, 0.499714,
		37.563820, 34.769009, 28.081316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277885, 35.323059, 27.475096>,  <36.971508, 34.639359, 27.731516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277885, 35.323059, 27.475096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585052, 35.117023, 27.627407>,  <37.769352, 34.993401, 27.718794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585052, 35.117023, 27.627407>,  <37.277885, 35.323059, 27.475096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585052, 35.117023, 27.627407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554736, 0.237549, -0.797395,
		0.320275, 0.823562, 0.468156,
		0.767914, -0.515088, 0.380779,
		37.815426, 34.962498, 27.741640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798302, 35.795540, 27.436836>,  <37.277885, 35.323059, 27.475096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798302, 35.795540, 27.436836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995747, 35.449646, 27.473904>,  <38.114212, 35.242111, 27.496143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995747, 35.449646, 27.473904>,  <37.798302, 35.795540, 27.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995747, 35.449646, 27.473904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656091, 0.300320, -0.692352,
		0.570869, 0.402551, 0.715584,
		0.493612, -0.864731, 0.092667,
		38.143829, 35.190228, 27.501703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448032, 35.878986, 27.066057>,  <37.798302, 35.795540, 27.436836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448032, 35.878986, 27.066057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491470, 35.482040, 27.089447>,  <38.517532, 35.243874, 27.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491470, 35.482040, 27.089447>,  <38.448032, 35.878986, 27.066057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491470, 35.482040, 27.089447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455835, -0.002565, -0.890061,
		0.883414, 0.123314, 0.452076,
		0.108598, -0.992364, 0.058477,
		38.524048, 35.184330, 27.106991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055161, 35.788105, 26.714750>,  <38.448032, 35.878986, 27.066057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055161, 35.788105, 26.714750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889839, 35.423889, 26.718639>,  <38.790646, 35.205360, 26.720972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889839, 35.423889, 26.718639>,  <39.055161, 35.788105, 26.714750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889839, 35.423889, 26.718639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388814, -0.186120, -0.902321,
		0.823411, -0.369151, 0.430956,
		-0.413301, -0.910542, 0.009722,
		38.765850, 35.150726, 26.721556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463310, 35.320656, 26.355757>,  <39.055161, 35.788105, 26.714750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463310, 35.320656, 26.355757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098240, 35.159382, 26.329000>,  <38.879200, 35.062618, 26.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098240, 35.159382, 26.329000>,  <39.463310, 35.320656, 26.355757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098240, 35.159382, 26.329000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107053, -0.077889, -0.991198,
		0.394425, -0.911798, 0.114249,
		-0.912671, -0.403184, -0.066890,
		38.824440, 35.038425, 26.308933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553947, 34.713013, 25.986820>,  <39.463310, 35.320656, 26.355757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553947, 34.713013, 25.986820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179123, 34.847092, 25.947702>,  <38.954227, 34.927540, 25.924232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179123, 34.847092, 25.947702>,  <39.553947, 34.713013, 25.986820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179123, 34.847092, 25.947702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022685, -0.221037, -0.975002,
		-0.348434, -0.915852, 0.199521,
		-0.937059, 0.335198, -0.097793,
		38.898006, 34.947651, 25.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228882, 34.038418, 25.719532>,  <39.553947, 34.713013, 25.986820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228882, 34.038418, 25.719532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974712, 34.335854, 25.636297>,  <38.822208, 34.514317, 25.586357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974712, 34.335854, 25.636297>,  <39.228882, 34.038418, 25.719532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974712, 34.335854, 25.636297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103994, -0.349443, -0.931168,
		-0.765126, -0.570050, 0.299375,
		-0.635427, 0.743594, -0.208086,
		38.784084, 34.558933, 25.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637432, 33.724125, 25.352819>,  <39.228882, 34.038418, 25.719532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637432, 33.724125, 25.352819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655033, 34.113182, 25.261576>,  <38.665592, 34.346615, 25.206829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.655033, 34.113182, 25.261576>,  <38.637432, 33.724125, 25.352819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655033, 34.113182, 25.261576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032106, -0.226835, -0.973404,
		-0.998515, 0.050157, 0.021246,
		0.044004, 0.972641, -0.228108,
		38.668236, 34.404976, 25.193144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217838, 33.825691, 24.814791>,  <38.637432, 33.724125, 25.352819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217838, 33.825691, 24.814791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395794, 34.180172, 24.763065>,  <38.502567, 34.392860, 24.732031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395794, 34.180172, 24.763065>,  <38.217838, 33.825691, 24.814791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395794, 34.180172, 24.763065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090705, -0.099061, -0.990939,
		-0.890978, 0.452592, 0.036311,
		0.444894, 0.886199, -0.129314,
		38.529263, 34.446030, 24.724272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773392, 34.217468, 24.338184>,  <38.217838, 33.825691, 24.814791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773392, 34.217468, 24.338184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130028, 34.396511, 24.310715>,  <38.344009, 34.503937, 24.294233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130028, 34.396511, 24.310715>,  <37.773392, 34.217468, 24.338184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130028, 34.396511, 24.310715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110448, 0.067873, -0.991562,
		-0.439172, 0.891649, 0.109952,
		0.891588, 0.447610, -0.068673,
		38.397503, 34.530792, 24.290113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711262, 34.632061, 23.755175>,  <37.773392, 34.217468, 24.338184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711262, 34.632061, 23.755175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107243, 34.589020, 23.791876>,  <38.344830, 34.563194, 23.813896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107243, 34.589020, 23.791876>,  <37.711262, 34.632061, 23.755175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107243, 34.589020, 23.791876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079572, -0.112485, -0.990462,
		0.116893, 0.987810, -0.102793,
		0.989952, -0.107599, 0.091751,
		38.404228, 34.556740, 23.819401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018532, 35.063953, 23.208876>,  <37.711262, 34.632061, 23.755175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018532, 35.063953, 23.208876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290703, 34.786694, 23.304003>,  <38.454006, 34.620338, 23.361078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290703, 34.786694, 23.304003>,  <38.018532, 35.063953, 23.208876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290703, 34.786694, 23.304003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084328, -0.248306, -0.965004,
		0.727944, 0.676674, -0.110504,
		0.680432, -0.693150, 0.237815,
		38.494831, 34.578747, 23.375347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604088, 35.172550, 22.779461>,  <38.018532, 35.063953, 23.208876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604088, 35.172550, 22.779461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661335, 34.803566, 22.922897>,  <38.695683, 34.582176, 23.008959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661335, 34.803566, 22.922897>,  <38.604088, 35.172550, 22.779461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661335, 34.803566, 22.922897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216610, -0.324342, -0.920805,
		0.965711, 0.209460, 0.153394,
		0.143120, -0.922458, 0.358592,
		38.704269, 34.526829, 23.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117226, 35.051582, 22.321732>,  <38.604088, 35.172550, 22.779461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117226, 35.051582, 22.321732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965351, 34.719265, 22.484514>,  <38.874226, 34.519875, 22.582184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965351, 34.719265, 22.484514>,  <39.117226, 35.051582, 22.321732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965351, 34.719265, 22.484514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098056, -0.473563, -0.875285,
		0.919905, -0.292426, 0.261269,
		-0.379684, -0.830798, 0.406959,
		38.851444, 34.470024, 22.606602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578739, 34.567875, 22.359596>,  <39.117226, 35.051582, 22.321732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578739, 34.567875, 22.359596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217663, 34.396889, 22.339928>,  <39.001015, 34.294296, 22.328127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217663, 34.396889, 22.339928>,  <39.578739, 34.567875, 22.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217663, 34.396889, 22.339928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285565, -0.509679, -0.811591,
		0.321866, -0.746660, 0.582153,
		-0.902693, -0.427466, -0.049172,
		38.946854, 34.268650, 22.325176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638943, 33.848270, 22.336363>,  <39.578739, 34.567875, 22.359596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638943, 33.848270, 22.336363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294067, 33.935951, 22.153681>,  <39.087143, 33.988560, 22.044071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294067, 33.935951, 22.153681>,  <39.638943, 33.848270, 22.336363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294067, 33.935951, 22.153681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256628, -0.588307, -0.766836,
		-0.436773, -0.778362, 0.450979,
		-0.862190, 0.219200, -0.456707,
		39.035412, 34.001713, 22.016668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257778, 33.170219, 22.029806>,  <39.638943, 33.848270, 22.336363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257778, 33.170219, 22.029806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108154, 33.467247, 21.807571>,  <39.018379, 33.645462, 21.674231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108154, 33.467247, 21.807571>,  <39.257778, 33.170219, 22.029806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108154, 33.467247, 21.807571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175874, -0.531409, -0.828657,
		-0.910576, -0.407679, 0.068180,
		-0.374058, 0.742565, -0.555589,
		38.995937, 33.690018, 21.640894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101654, 32.784569, 21.531307>,  <39.257778, 33.170219, 22.029806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101654, 32.784569, 21.531307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083290, 33.151264, 21.372572>,  <39.072273, 33.371281, 21.277330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083290, 33.151264, 21.372572>,  <39.101654, 32.784569, 21.531307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083290, 33.151264, 21.372572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317484, -0.363269, -0.875922,
		-0.947152, -0.166204, -0.274372,
		-0.045911, 0.916740, -0.396838,
		39.069515, 33.426285, 21.253521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879696, 32.719929, 20.911432>,  <39.101654, 32.784569, 21.531307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879696, 32.719929, 20.911432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043140, 33.078846, 20.844614>,  <39.141209, 33.294197, 20.804523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043140, 33.078846, 20.844614>,  <38.879696, 32.719929, 20.911432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043140, 33.078846, 20.844614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325594, -0.314284, -0.891748,
		-0.852657, 0.309990, -0.420573,
		0.408613, 0.897291, -0.167045,
		39.165726, 33.348034, 20.794500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757183, 32.874420, 20.233229>,  <38.879696, 32.719929, 20.911432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757183, 32.874420, 20.233229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047184, 33.138596, 20.311403>,  <39.221184, 33.297100, 20.358309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047184, 33.138596, 20.311403>,  <38.757183, 32.874420, 20.233229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047184, 33.138596, 20.311403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389413, -0.159014, -0.907233,
		-0.568093, 0.733851, -0.372468,
		0.725002, 0.660437, 0.195436,
		39.264683, 33.336727, 20.370033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814499, 33.316891, 19.658354>,  <38.757183, 32.874420, 20.233229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814499, 33.316891, 19.658354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161930, 33.366634, 19.850235>,  <39.370388, 33.396481, 19.965363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161930, 33.366634, 19.850235>,  <38.814499, 33.316891, 19.658354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161930, 33.366634, 19.850235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482013, 0.012769, -0.876071,
		-0.115075, 0.992155, -0.048852,
		0.868574, 0.124361, 0.479701,
		39.422501, 33.403942, 19.994144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246002, 33.853634, 19.308090>,  <38.814499, 33.316891, 19.658354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246002, 33.853634, 19.308090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471401, 33.591705, 19.509556>,  <39.606640, 33.434547, 19.630436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471401, 33.591705, 19.509556>,  <39.246002, 33.853634, 19.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471401, 33.591705, 19.509556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488048, -0.228038, -0.842501,
		0.666543, 0.720560, 0.191085,
		0.563498, -0.654822, 0.503665,
		39.640450, 33.395260, 19.660656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860504, 34.053894, 19.181002>,  <39.246002, 33.853634, 19.308090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860504, 34.053894, 19.181002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878456, 33.664162, 19.269238>,  <39.889229, 33.430321, 19.322180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878456, 33.664162, 19.269238>,  <39.860504, 34.053894, 19.181002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878456, 33.664162, 19.269238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529766, -0.163994, -0.832138,
		0.846956, 0.154209, 0.508808,
		0.044882, -0.974333, 0.220591,
		39.891922, 33.371861, 19.335415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584759, 34.033581, 19.115765>,  <39.860504, 34.053894, 19.181002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584759, 34.033581, 19.115765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406307, 33.675842, 19.102430>,  <40.299236, 33.461197, 19.094429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406307, 33.675842, 19.102430>,  <40.584759, 34.033581, 19.115765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406307, 33.675842, 19.102430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630190, -0.287471, -0.721264,
		0.635477, -0.342784, 0.691858,
		-0.446127, -0.894349, -0.033338,
		40.272469, 33.407539, 19.092428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253685, 33.584957, 18.985527>,  <40.584759, 34.033581, 19.115765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253685, 33.584957, 18.985527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948181, 33.342869, 18.895737>,  <40.764881, 33.197617, 18.841864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948181, 33.342869, 18.895737>,  <41.253685, 33.584957, 18.985527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948181, 33.342869, 18.895737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521462, -0.373515, -0.767179,
		0.380467, -0.702992, 0.600872,
		-0.763755, -0.605218, -0.224474,
		40.719055, 33.161304, 18.828394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523560, 32.935810, 18.823885>,  <41.253685, 33.584957, 18.985527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523560, 32.935810, 18.823885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170677, 32.951691, 18.636209>,  <40.958946, 32.961220, 18.523605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170677, 32.951691, 18.636209>,  <41.523560, 32.935810, 18.823885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170677, 32.951691, 18.636209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436199, -0.306337, -0.846102,
		-0.177321, -0.951095, 0.252935,
		-0.882206, 0.039701, -0.469187,
		40.906017, 32.963600, 18.495453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551697, 32.350403, 18.300320>,  <41.523560, 32.935810, 18.823885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551697, 32.350403, 18.300320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234974, 32.558472, 18.172285>,  <41.044941, 32.683311, 18.095465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234974, 32.558472, 18.172285>,  <41.551697, 32.350403, 18.300320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234974, 32.558472, 18.172285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239752, -0.217293, -0.946204,
		-0.561744, -0.825956, 0.047343,
		-0.791810, 0.520174, -0.320087,
		40.997429, 32.714523, 18.076260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326466, 31.946148, 17.739340>,  <41.551697, 32.350403, 18.300320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326466, 31.946148, 17.739340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149006, 32.302586, 17.701124>,  <41.042530, 32.516449, 17.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149006, 32.302586, 17.701124>,  <41.326466, 31.946148, 17.739340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149006, 32.302586, 17.701124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154036, -0.029199, -0.987634,
		-0.882865, -0.452876, -0.124306,
		-0.443646, 0.891095, -0.095538,
		41.015911, 32.569916, 17.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703884, 31.871954, 17.315386>,  <41.326466, 31.946148, 17.739340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703884, 31.871954, 17.315386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854652, 32.242348, 17.306597>,  <40.945114, 32.464584, 17.301323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854652, 32.242348, 17.306597>,  <40.703884, 31.871954, 17.315386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854652, 32.242348, 17.306597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012833, -0.028942, -0.999499,
		-0.926158, 0.376447, -0.022792,
		0.376918, 0.925986, -0.021974,
		40.967728, 32.520145, 17.300005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443928, 32.193127, 16.766850>,  <40.703884, 31.871954, 17.315386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443928, 32.193127, 16.766850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786804, 32.375877, 16.861912>,  <40.992531, 32.485527, 16.918949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786804, 32.375877, 16.861912>,  <40.443928, 32.193127, 16.766850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786804, 32.375877, 16.861912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252542, 0.029269, -0.967143,
		-0.448825, 0.889046, -0.090293,
		0.857192, 0.456881, 0.237658,
		41.043961, 32.512943, 16.933208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477470, 32.697876, 16.249552>,  <40.443928, 32.193127, 16.766850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477470, 32.697876, 16.249552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832375, 32.601490, 16.406883>,  <41.045319, 32.543659, 16.501282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832375, 32.601490, 16.406883>,  <40.477470, 32.697876, 16.249552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832375, 32.601490, 16.406883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387165, -0.074494, -0.918996,
		0.250747, 0.967670, 0.027198,
		0.887259, -0.240966, 0.393327,
		41.098553, 32.529202, 16.524881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092670, 33.110348, 16.124052>,  <40.477470, 32.697876, 16.249552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092670, 33.110348, 16.124052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158325, 32.716499, 16.147980>,  <41.197720, 32.480190, 16.162336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158325, 32.716499, 16.147980>,  <41.092670, 33.110348, 16.124052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158325, 32.716499, 16.147980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238834, -0.019169, -0.970871,
		0.957088, 0.173641, 0.232015,
		0.164136, -0.984623, 0.059818,
		41.207565, 32.421112, 16.165924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697636, 33.345474, 16.563210>,  <41.092670, 33.110348, 16.124052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697636, 33.345474, 16.563210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968426, 33.580948, 16.386503>,  <42.130901, 33.722233, 16.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968426, 33.580948, 16.386503>,  <41.697636, 33.345474, 16.563210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968426, 33.580948, 16.386503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317824, 0.307555, 0.896882,
		0.663844, -0.747573, 0.021111,
		0.676977, 0.588681, -0.441765,
		42.171520, 33.757553, 16.253973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362812, 33.156845, 16.586508>,  <41.697636, 33.345474, 16.563210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362812, 33.156845, 16.586508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282040, 33.548523, 16.594500>,  <42.233578, 33.783531, 16.599295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282040, 33.548523, 16.594500>,  <42.362812, 33.156845, 16.586508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282040, 33.548523, 16.594500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015645, -0.017171, 0.999730,
		0.979275, 0.202188, -0.011852,
		-0.201929, 0.979196, 0.019978,
		42.221462, 33.842281, 16.600492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933846, 33.691936, 16.991735>,  <42.362812, 33.156845, 16.586508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933846, 33.691936, 16.991735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556225, 33.823391, 16.980602>,  <42.329655, 33.902264, 16.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556225, 33.823391, 16.980602>,  <42.933846, 33.691936, 16.991735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556225, 33.823391, 16.980602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048655, 0.222238, 0.973778,
		0.326203, 0.917938, -0.225793,
		-0.944047, 0.328635, -0.027833,
		42.273010, 33.921982, 16.972252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849800, 34.354752, 17.088814>,  <42.933846, 33.691936, 16.991735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849800, 34.354752, 17.088814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531765, 34.169346, 17.245272>,  <42.340942, 34.058102, 17.339146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531765, 34.169346, 17.245272>,  <42.849800, 34.354752, 17.088814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531765, 34.169346, 17.245272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278392, 0.294049, 0.914348,
		-0.538825, 0.835879, -0.104757,
		-0.795088, -0.463511, 0.391143,
		42.293240, 34.030293, 17.362616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557076, 34.504234, 16.419760>,  <42.849800, 34.354752, 17.088814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557076, 34.504234, 16.419760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756481, 34.812572, 16.261127>,  <42.876125, 34.997578, 16.165947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756481, 34.812572, 16.261127>,  <42.557076, 34.504234, 16.419760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756481, 34.812572, 16.261127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826943, -0.285602, 0.484352,
		0.260097, -0.569407, -0.779824,
		0.498512, 0.770849, -0.396583,
		42.906036, 35.043827, 16.142153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704277, 35.220032, 16.812599>,  <42.557076, 34.504234, 16.419760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704277, 35.220032, 16.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347027, 35.176323, 16.638065>,  <42.132679, 35.150097, 16.533344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347027, 35.176323, 16.638065>,  <42.704277, 35.220032, 16.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347027, 35.176323, 16.638065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448378, 0.293654, 0.844230,
		0.035882, 0.949645, -0.311265,
		-0.893124, -0.109272, -0.436337,
		42.079090, 35.143543, 16.507164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383812, 35.747261, 16.782095>,  <42.704277, 35.220032, 16.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383812, 35.747261, 16.782095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087616, 35.481842, 16.824764>,  <41.909901, 35.322590, 16.850367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087616, 35.481842, 16.824764>,  <42.383812, 35.747261, 16.782095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087616, 35.481842, 16.824764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234183, 0.403529, 0.884490,
		-0.629952, 0.629970, -0.454200,
		-0.740485, -0.663552, 0.106676,
		41.865471, 35.282776, 16.856768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670589, 36.053444, 16.951414>,  <42.383812, 35.747261, 16.782095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670589, 36.053444, 16.951414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659946, 35.692745, 17.123989>,  <41.653561, 35.476326, 17.227535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659946, 35.692745, 17.123989>,  <41.670589, 36.053444, 16.951414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659946, 35.692745, 17.123989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251490, 0.423748, 0.870167,
		-0.967494, -0.085353, -0.238055,
		-0.026604, -0.901750, 0.431439,
		41.651966, 35.422218, 17.253420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050686, 36.047649, 17.227785>,  <41.670589, 36.053444, 16.951414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050686, 36.047649, 17.227785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251732, 35.749020, 17.402147>,  <41.372360, 35.569843, 17.506765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251732, 35.749020, 17.402147>,  <41.050686, 36.047649, 17.227785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251732, 35.749020, 17.402147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322958, 0.305571, 0.895726,
		-0.801923, -0.590981, -0.087527,
		0.502611, -0.746571, 0.435906,
		41.402515, 35.525047, 17.532919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552387, 35.669903, 17.623259>,  <41.050686, 36.047649, 17.227785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552387, 35.669903, 17.623259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908123, 35.562511, 17.771305>,  <41.121567, 35.498077, 17.860134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908123, 35.562511, 17.771305>,  <40.552387, 35.669903, 17.623259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908123, 35.562511, 17.771305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383302, 0.003577, 0.923616,
		-0.249296, -0.963279, -0.099727,
		0.889343, -0.268480, 0.370118,
		41.174927, 35.481968, 17.882341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468891, 35.073578, 18.111553>,  <40.552387, 35.669903, 17.623259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468891, 35.073578, 18.111553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813644, 35.249516, 18.212509>,  <41.020496, 35.355080, 18.273083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813644, 35.249516, 18.212509>,  <40.468891, 35.073578, 18.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813644, 35.249516, 18.212509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349444, 0.154447, 0.924140,
		0.367496, -0.884694, 0.286815,
		0.861879, 0.439844, 0.252392,
		41.072208, 35.381470, 18.288227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630981, 34.785889, 18.789017>,  <40.468891, 35.073578, 18.111553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630981, 34.785889, 18.789017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834312, 35.129665, 18.767221>,  <40.956310, 35.335930, 18.754145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834312, 35.129665, 18.767221>,  <40.630981, 34.785889, 18.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834312, 35.129665, 18.767221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121409, 0.134160, 0.983494,
		0.852564, -0.493321, 0.172540,
		0.508326, 0.859439, -0.054486,
		40.986809, 35.387497, 18.750875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110275, 34.880638, 19.465267>,  <40.630981, 34.785889, 18.789017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110275, 34.880638, 19.465267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073563, 35.251945, 19.321104>,  <41.051537, 35.474731, 19.234608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073563, 35.251945, 19.321104>,  <41.110275, 34.880638, 19.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073563, 35.251945, 19.321104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289670, 0.321392, 0.901553,
		0.952716, 0.187145, 0.239394,
		-0.091782, 0.928269, -0.360406,
		41.046028, 35.530426, 19.212982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485928, 35.311897, 19.896870>,  <41.110275, 34.880638, 19.465267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485928, 35.311897, 19.896870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238632, 35.562176, 19.706593>,  <41.090256, 35.712345, 19.592426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238632, 35.562176, 19.706593>,  <41.485928, 35.311897, 19.896870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238632, 35.562176, 19.706593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244457, 0.422129, 0.872954,
		0.747012, 0.655977, -0.108018,
		-0.618235, 0.625701, -0.475693,
		41.053162, 35.749886, 19.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639198, 35.938061, 20.236406>,  <41.485928, 35.311897, 19.896870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639198, 35.938061, 20.236406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274883, 35.958309, 20.072502>,  <41.056293, 35.970459, 19.974159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274883, 35.958309, 20.072502>,  <41.639198, 35.938061, 20.236406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274883, 35.958309, 20.072502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363635, 0.371694, 0.854174,
		0.195542, 0.926974, -0.320128,
		-0.910787, 0.050617, -0.409762,
		41.001648, 35.973495, 19.949574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471004, 36.642780, 20.336803>,  <41.639198, 35.938061, 20.236406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471004, 36.642780, 20.336803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140202, 36.425503, 20.278833>,  <40.941719, 36.295135, 20.244051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140202, 36.425503, 20.278833>,  <41.471004, 36.642780, 20.336803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140202, 36.425503, 20.278833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409963, 0.406294, 0.816612,
		-0.384693, 0.734758, -0.558696,
		-0.827007, -0.543190, -0.144925,
		40.892097, 36.262547, 20.235355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910862, 37.084812, 20.234144>,  <41.471004, 36.642780, 20.336803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910862, 37.084812, 20.234144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712246, 36.745434, 20.307459>,  <40.593075, 36.541809, 20.351448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712246, 36.745434, 20.307459>,  <40.910862, 37.084812, 20.234144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712246, 36.745434, 20.307459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492289, 0.449175, 0.745583,
		-0.714912, 0.279981, -0.640712,
		-0.496540, -0.848441, 0.183289,
		40.563282, 36.490902, 20.362446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143173, 37.278538, 20.306835>,  <40.910862, 37.084812, 20.234144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143173, 37.278538, 20.306835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222717, 36.933590, 20.493071>,  <40.270443, 36.726620, 20.604813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222717, 36.933590, 20.493071>,  <40.143173, 37.278538, 20.306835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222717, 36.933590, 20.493071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457842, 0.338298, 0.822153,
		-0.866507, -0.376663, -0.327554,
		0.198864, -0.862369, 0.465589,
		40.282375, 36.674881, 20.632748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527641, 37.207817, 20.707994>,  <40.143173, 37.278538, 20.306835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527641, 37.207817, 20.707994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787426, 36.955784, 20.878260>,  <39.943298, 36.804562, 20.980419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787426, 36.955784, 20.878260>,  <39.527641, 37.207817, 20.707994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787426, 36.955784, 20.878260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481455, 0.092542, 0.871572,
		-0.588556, -0.770992, -0.243255,
		0.649463, -0.630086, 0.425664,
		39.982265, 36.766758, 21.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172573, 36.680569, 21.084602>,  <39.527641, 37.207817, 20.707994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172573, 36.680569, 21.084602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534775, 36.686478, 21.254238>,  <39.752094, 36.690025, 21.356020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534775, 36.686478, 21.254238>,  <39.172573, 36.680569, 21.084602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534775, 36.686478, 21.254238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416696, 0.219853, 0.882060,
		-0.080206, -0.975421, 0.205233,
		0.905501, 0.014773, 0.424088,
		39.806423, 36.690910, 21.381464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157452, 36.104996, 21.606718>,  <39.172573, 36.680569, 21.084602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157452, 36.104996, 21.606718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472355, 36.338612, 21.685831>,  <39.661297, 36.478783, 21.733299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472355, 36.338612, 21.685831>,  <39.157452, 36.104996, 21.606718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472355, 36.338612, 21.685831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368513, 0.188461, 0.910319,
		0.494390, -0.789542, 0.363595,
		0.787258, 0.584042, 0.197783,
		39.708534, 36.513824, 21.745167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248035, 36.017956, 22.267826>,  <39.157452, 36.104996, 21.606718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248035, 36.017956, 22.267826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457039, 36.358589, 22.250935>,  <39.582443, 36.562969, 22.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457039, 36.358589, 22.250935>,  <39.248035, 36.017956, 22.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457039, 36.358589, 22.250935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201635, 0.171536, 0.964323,
		0.828448, -0.495354, 0.261339,
		0.522510, 0.851587, -0.042228,
		39.613792, 36.614067, 22.238266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615410, 36.030674, 22.935020>,  <39.248035, 36.017956, 22.267826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615410, 36.030674, 22.935020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570324, 36.393448, 22.772652>,  <39.543274, 36.611111, 22.675230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570324, 36.393448, 22.772652>,  <39.615410, 36.030674, 22.935020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570324, 36.393448, 22.772652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221825, 0.375249, 0.899990,
		0.968551, 0.191482, 0.158886,
		-0.112710, 0.906931, -0.405923,
		39.536510, 36.665527, 22.650875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677055, 36.412926, 23.517029>,  <39.615410, 36.030674, 22.935020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677055, 36.412926, 23.517029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566746, 36.702068, 23.263596>,  <39.500561, 36.875553, 23.111536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566746, 36.702068, 23.263596>,  <39.677055, 36.412926, 23.517029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566746, 36.702068, 23.263596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130032, 0.625027, 0.769696,
		0.952385, 0.294651, -0.078374,
		-0.275778, 0.722857, -0.633581,
		39.484013, 36.918926, 23.073521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085896, 37.007004, 23.679960>,  <39.677055, 36.412926, 23.517029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085896, 37.007004, 23.679960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739799, 37.098057, 23.501276>,  <39.532143, 37.152687, 23.394066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739799, 37.098057, 23.501276>,  <40.085896, 37.007004, 23.679960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739799, 37.098057, 23.501276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296905, 0.485325, 0.822379,
		0.403999, 0.844182, -0.352336,
		-0.865235, 0.227630, -0.446713,
		39.480228, 37.166348, 23.367262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019684, 37.617104, 23.857424>,  <40.085896, 37.007004, 23.679960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019684, 37.617104, 23.857424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653679, 37.515308, 23.732216>,  <39.434074, 37.454231, 23.657091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653679, 37.515308, 23.732216>,  <40.019684, 37.617104, 23.857424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653679, 37.515308, 23.732216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400233, 0.475350, 0.783489,
		-0.050594, 0.842186, -0.536808,
		-0.915016, -0.254488, -0.313021,
		39.379173, 37.438961, 23.638309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623871, 38.198166, 24.006910>,  <40.019684, 37.617104, 23.857424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623871, 38.198166, 24.006910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365623, 37.893410, 23.986143>,  <39.210674, 37.710556, 23.973682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365623, 37.893410, 23.986143>,  <39.623871, 38.198166, 24.006910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365623, 37.893410, 23.986143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389403, 0.269970, 0.880614,
		-0.656915, 0.588761, -0.470981,
		-0.645622, -0.761890, -0.051919,
		39.171936, 37.664845, 23.970568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875931, 38.542320, 24.144295>,  <39.623871, 38.198166, 24.006910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875931, 38.542320, 24.144295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859020, 38.146191, 24.197172>,  <38.848873, 37.908512, 24.228899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859020, 38.146191, 24.197172>,  <38.875931, 38.542320, 24.144295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859020, 38.146191, 24.197172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418638, 0.137695, 0.897653,
		-0.907168, -0.017392, -0.420408,
		-0.042277, -0.990322, 0.132194,
		38.846336, 37.849094, 24.236830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218548, 38.417522, 24.373995>,  <38.875931, 38.542320, 24.144295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218548, 38.417522, 24.373995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422573, 38.091297, 24.483309>,  <38.544991, 37.895561, 24.548897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422573, 38.091297, 24.483309>,  <38.218548, 38.417522, 24.373995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422573, 38.091297, 24.483309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451075, 0.016898, 0.892326,
		-0.732368, -0.578418, -0.359263,
		0.510066, -0.815565, 0.273286,
		38.575592, 37.846626, 24.565294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670681, 38.120762, 24.896711>,  <38.218548, 38.417522, 24.373995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670681, 38.120762, 24.896711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998928, 37.899994, 24.955994>,  <38.195877, 37.767532, 24.991564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998928, 37.899994, 24.955994>,  <37.670681, 38.120762, 24.896711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998928, 37.899994, 24.955994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164013, 0.020973, 0.986235,
		-0.547433, -0.833633, -0.073311,
		0.820620, -0.551921, 0.148208,
		38.245113, 37.734417, 25.000456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435265, 37.488590, 25.160854>,  <37.670681, 38.120762, 24.896711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435265, 37.488590, 25.160854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807980, 37.573746, 25.278465>,  <38.031609, 37.624840, 25.349031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807980, 37.573746, 25.278465>,  <37.435265, 37.488590, 25.160854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807980, 37.573746, 25.278465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269254, -0.137924, 0.953142,
		0.243467, -0.967293, -0.071195,
		0.931786, 0.212889, 0.294028,
		38.087517, 37.637611, 25.366674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622532, 36.884499, 25.541620>,  <37.435265, 37.488590, 25.160854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622532, 36.884499, 25.541620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861027, 37.185005, 25.654833>,  <38.004124, 37.365307, 25.722761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861027, 37.185005, 25.654833>,  <37.622532, 36.884499, 25.541620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861027, 37.185005, 25.654833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186751, -0.213090, 0.959019,
		0.780786, -0.624659, 0.013247,
		0.596236, 0.751262, 0.283033,
		38.039898, 37.410385, 25.739742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929886, 36.602474, 26.055763>,  <37.622532, 36.884499, 25.541620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929886, 36.602474, 26.055763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950081, 37.000378, 26.091316>,  <37.962196, 37.239120, 26.112648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950081, 37.000378, 26.091316>,  <37.929886, 36.602474, 26.055763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950081, 37.000378, 26.091316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292598, -0.070357, 0.953644,
		0.954902, -0.074150, 0.287513,
		0.050484, 0.994762, 0.088881,
		37.965225, 37.298805, 26.117981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289482, 36.662121, 26.657890>,  <37.929886, 36.602474, 26.055763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289482, 36.662121, 26.657890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122204, 37.022594, 26.612301>,  <38.021839, 37.238876, 26.584948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122204, 37.022594, 26.612301>,  <38.289482, 36.662121, 26.657890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122204, 37.022594, 26.612301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217680, 0.022390, 0.975763,
		0.881890, 0.432867, 0.186805,
		-0.418193, 0.901180, -0.113972,
		37.996746, 37.292950, 26.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485207, 37.086971, 27.182051>,  <38.289482, 36.662121, 26.657890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485207, 37.086971, 27.182051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150139, 37.269554, 27.062073>,  <37.949100, 37.379105, 26.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150139, 37.269554, 27.062073>,  <38.485207, 37.086971, 27.182051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150139, 37.269554, 27.062073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291295, 0.091192, 0.952277,
		0.462022, 0.885062, 0.056574,
		-0.837665, 0.456453, -0.299947,
		37.898838, 37.406490, 26.972088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442772, 37.548939, 27.644440>,  <38.485207, 37.086971, 27.182051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442772, 37.548939, 27.644440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074028, 37.534649, 27.490091>,  <37.852779, 37.526077, 27.397482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074028, 37.534649, 27.490091>,  <38.442772, 37.548939, 27.644440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074028, 37.534649, 27.490091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387448, 0.104057, 0.916000,
		0.007432, 0.993930, -0.109766,
		-0.921862, -0.035721, -0.385869,
		37.797470, 37.523933, 27.374331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123981, 38.183743, 27.822857>,  <38.442772, 37.548939, 27.644440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123981, 38.183743, 27.822857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851849, 37.901855, 27.742336>,  <37.688568, 37.732723, 27.694023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851849, 37.901855, 27.742336>,  <38.123981, 38.183743, 27.822857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851849, 37.901855, 27.742336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462750, 0.200047, 0.863622,
		-0.568338, 0.680704, -0.462206,
		-0.680334, -0.704715, -0.201302,
		37.647747, 37.690441, 27.681946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483986, 38.460400, 27.931780>,  <38.123981, 38.183743, 27.822857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483986, 38.460400, 27.931780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430550, 38.069542, 27.997923>,  <37.398487, 37.835026, 28.037609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430550, 38.069542, 27.997923>,  <37.483986, 38.460400, 27.931780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430550, 38.069542, 27.997923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654771, 0.212275, 0.725407,
		-0.743928, -0.011361, -0.668164,
		-0.133593, -0.977144, 0.165357,
		37.390472, 37.776398, 28.047529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807922, 38.374104, 28.021732>,  <37.483986, 38.460400, 27.931780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807922, 38.374104, 28.021732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937801, 38.055653, 28.225990>,  <37.015728, 37.864582, 28.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937801, 38.055653, 28.225990>,  <36.807922, 38.374104, 28.021732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937801, 38.055653, 28.225990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519080, 0.301327, 0.799849,
		-0.790651, -0.524772, -0.315414,
		0.324696, -0.796126, 0.510643,
		37.035210, 37.816814, 28.379183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193855, 38.101254, 28.370617>,  <36.807922, 38.374104, 28.021732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193855, 38.101254, 28.370617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504642, 37.932659, 28.557665>,  <36.691116, 37.831505, 28.669893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504642, 37.932659, 28.557665>,  <36.193855, 38.101254, 28.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504642, 37.932659, 28.557665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489489, 0.062633, 0.869757,
		-0.395877, -0.904670, -0.157648,
		0.776970, -0.421484, 0.467622,
		36.737732, 37.806213, 28.697950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982365, 37.570591, 28.796839>,  <36.193855, 38.101254, 28.370617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982365, 37.570591, 28.796839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339161, 37.661949, 28.952881>,  <36.553238, 37.716763, 29.046507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339161, 37.661949, 28.952881>,  <35.982365, 37.570591, 28.796839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339161, 37.661949, 28.952881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427630, 0.146554, 0.891995,
		0.146554, -0.962475, 0.228392,
		-0.891995, -0.228392, -0.390105,
		36.606758, 37.730469, 29.069912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903530, 37.371250, 29.463182>,  <35.982365, 37.570591, 28.796839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903530, 37.371250, 29.463182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239861, 37.584774, 29.499090>,  <36.441658, 37.712887, 29.520636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239861, 37.584774, 29.499090>,  <35.903530, 37.371250, 29.463182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239861, 37.584774, 29.499090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197563, 0.148235, 0.969018,
		0.503960, -0.832513, 0.230100,
		0.840829, 0.533805, 0.089769,
		36.492107, 37.744915, 29.526020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360920, 37.004044, 29.994579>,  <35.903530, 37.371250, 29.463182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360920, 37.004044, 29.994579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455349, 37.391598, 29.964804>,  <36.512005, 37.624130, 29.946939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455349, 37.391598, 29.964804>,  <36.360920, 37.004044, 29.994579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455349, 37.391598, 29.964804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103613, 0.101262, 0.989450,
		0.966197, -0.225866, 0.124294,
		0.236069, 0.968881, -0.074437,
		36.526169, 37.682262, 29.942472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790367, 37.111542, 30.523546>,  <36.360920, 37.004044, 29.994579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790367, 37.111542, 30.523546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677803, 37.481873, 30.422623>,  <36.610264, 37.704071, 30.362068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677803, 37.481873, 30.422623>,  <36.790367, 37.111542, 30.523546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677803, 37.481873, 30.422623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083340, 0.238359, 0.967595,
		0.955961, 0.293320, 0.010081,
		-0.281412, 0.925823, -0.252307,
		36.593380, 37.759621, 30.346931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123997, 37.670055, 31.032907>,  <36.790367, 37.111542, 30.523546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123997, 37.670055, 31.032907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808052, 37.835918, 30.852165>,  <36.618484, 37.935436, 30.743719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808052, 37.835918, 30.852165>,  <37.123997, 37.670055, 31.032907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808052, 37.835918, 30.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316744, 0.355089, 0.879537,
		0.525152, 0.837839, -0.149134,
		-0.789866, 0.414653, -0.451857,
		36.571091, 37.960316, 30.716608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155258, 38.398876, 31.279728>,  <37.123997, 37.670055, 31.032907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155258, 38.398876, 31.279728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784523, 38.284748, 31.182104>,  <36.562080, 38.216270, 31.123529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784523, 38.284748, 31.182104>,  <37.155258, 38.398876, 31.279728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784523, 38.284748, 31.182104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340169, 0.362978, 0.867486,
		-0.158924, 0.887039, -0.433479,
		-0.926838, -0.285321, -0.244057,
		36.506474, 38.199150, 31.108887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923023, 38.435421, 31.025164>,  <37.155258, 38.398876, 31.279728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923023, 38.435421, 31.025164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142891, 38.733585, 31.176016>,  <38.274811, 38.912483, 31.266527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142891, 38.733585, 31.176016>,  <37.923023, 38.435421, 31.025164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142891, 38.733585, 31.176016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196399, 0.323483, -0.925627,
		-0.811967, 0.582857, 0.031411,
		0.549670, 0.745410, 0.377130,
		38.307793, 38.957207, 31.289154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768127, 39.033016, 30.625536>,  <37.923023, 38.435421, 31.025164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768127, 39.033016, 30.625536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120575, 39.093834, 30.804651>,  <38.332043, 39.130325, 30.912121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120575, 39.093834, 30.804651>,  <37.768127, 39.033016, 30.625536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120575, 39.093834, 30.804651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366712, 0.378190, -0.849997,
		-0.298588, 0.913156, 0.277473,
		0.881117, 0.152046, 0.447788,
		38.384911, 39.139446, 30.938988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930557, 39.743351, 30.467808>,  <37.768127, 39.033016, 30.625536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930557, 39.743351, 30.467808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285164, 39.577950, 30.550848>,  <38.497929, 39.478710, 30.600672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285164, 39.577950, 30.550848>,  <37.930557, 39.743351, 30.467808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285164, 39.577950, 30.550848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316038, 0.213447, -0.924425,
		0.337939, 0.885131, 0.319907,
		0.886520, -0.413502, 0.207603,
		38.551121, 39.453899, 30.613129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503109, 40.184490, 30.139908>,  <37.930557, 39.743351, 30.467808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503109, 40.184490, 30.139908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707401, 39.847881, 30.210325>,  <38.829979, 39.645916, 30.252575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707401, 39.847881, 30.210325>,  <38.503109, 40.184490, 30.139908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707401, 39.847881, 30.210325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298203, -0.018655, -0.954320,
		0.806366, 0.539900, 0.241417,
		0.510733, -0.841523, 0.176043,
		38.860622, 39.595425, 30.263138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124683, 40.324284, 29.952690>,  <38.503109, 40.184490, 30.139908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124683, 40.324284, 29.952690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116508, 39.926476, 29.911663>,  <39.111603, 39.687790, 29.887047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116508, 39.926476, 29.911663>,  <39.124683, 40.324284, 29.952690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116508, 39.926476, 29.911663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502326, 0.078487, -0.861109,
		0.864437, -0.069116, 0.497968,
		-0.020433, -0.994516, -0.102565,
		39.110378, 39.628120, 29.880894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830078, 40.138729, 29.749630>,  <39.124683, 40.324284, 29.952690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830078, 40.138729, 29.749630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585861, 39.844673, 29.631781>,  <39.439331, 39.668240, 29.561071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585861, 39.844673, 29.631781>,  <39.830078, 40.138729, 29.749630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585861, 39.844673, 29.631781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422855, 0.011962, -0.906119,
		0.669650, -0.677807, 0.303555,
		-0.610543, -0.735142, -0.294624,
		39.402699, 39.624130, 29.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254539, 39.662773, 29.408016>,  <39.830078, 40.138729, 29.749630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254539, 39.662773, 29.408016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893299, 39.530506, 29.298428>,  <39.676552, 39.451145, 29.232676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893299, 39.530506, 29.298428>,  <40.254539, 39.662773, 29.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893299, 39.530506, 29.298428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317426, -0.084371, -0.944522,
		0.289208, -0.939968, 0.181158,
		-0.903106, -0.330668, -0.273970,
		39.622368, 39.431305, 29.216236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452854, 39.090401, 29.045650>,  <40.254539, 39.662773, 29.408016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452854, 39.090401, 29.045650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089241, 39.199139, 28.919313>,  <39.871075, 39.264381, 28.843512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089241, 39.199139, 28.919313>,  <40.452854, 39.090401, 29.045650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089241, 39.199139, 28.919313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307361, -0.074429, -0.948678,
		-0.281405, -0.959457, -0.015898,
		-0.909033, 0.271849, -0.315845,
		39.816532, 39.280693, 28.824560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272804, 38.671928, 28.414070>,  <40.452854, 39.090401, 29.045650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272804, 38.671928, 28.414070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022243, 38.983707, 28.410248>,  <39.871906, 39.170773, 28.407955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022243, 38.983707, 28.410248>,  <40.272804, 38.671928, 28.414070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022243, 38.983707, 28.410248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186161, 0.137682, -0.972825,
		-0.756946, -0.611156, -0.231346,
		-0.626400, 0.779443, -0.009556,
		39.834324, 39.217541, 28.407381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850349, 38.554302, 27.814806>,  <40.272804, 38.671928, 28.414070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850349, 38.554302, 27.814806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854343, 38.941952, 27.913351>,  <39.856739, 39.174541, 27.972479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854343, 38.941952, 27.913351>,  <39.850349, 38.554302, 27.814806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854343, 38.941952, 27.913351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264404, 0.235049, -0.935330,
		-0.964360, 0.074478, -0.253893,
		0.009984, 0.969126, 0.246365,
		39.857338, 39.232689, 27.987261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568436, 38.905460, 27.196157>,  <39.850349, 38.554302, 27.814806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568436, 38.905460, 27.196157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786442, 39.167980, 27.404856>,  <39.917248, 39.325493, 27.530075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786442, 39.167980, 27.404856>,  <39.568436, 38.905460, 27.196157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786442, 39.167980, 27.404856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395868, 0.347126, -0.850172,
		-0.739083, 0.669902, -0.070619,
		0.545018, 0.656304, 0.521748,
		39.949947, 39.364872, 27.561380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380058, 39.506794, 26.946566>,  <39.568436, 38.905460, 27.196157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380058, 39.506794, 26.946566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740421, 39.563770, 27.110558>,  <39.956638, 39.597954, 27.208952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740421, 39.563770, 27.110558>,  <39.380058, 39.506794, 26.946566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740421, 39.563770, 27.110558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370397, 0.240046, -0.897321,
		-0.226225, 0.960255, 0.163500,
		0.900904, 0.142437, 0.409980,
		40.010693, 39.606503, 27.233551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485676, 40.074139, 26.644960>,  <39.380058, 39.506794, 26.946566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485676, 40.074139, 26.644960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833782, 39.909954, 26.753887>,  <40.042645, 39.811443, 26.819242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.833782, 39.909954, 26.753887>,  <39.485676, 40.074139, 26.644960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833782, 39.909954, 26.753887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390549, 0.238071, -0.889266,
		0.300181, 0.880251, 0.367491,
		0.870266, -0.410464, 0.272317,
		40.094864, 39.786816, 26.835583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839302, 40.510704, 26.276808>,  <39.485676, 40.074139, 26.644960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839302, 40.510704, 26.276808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065464, 40.195534, 26.374371>,  <40.201160, 40.006432, 26.432907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065464, 40.195534, 26.374371>,  <39.839302, 40.510704, 26.276808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065464, 40.195534, 26.374371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362247, -0.028451, -0.931648,
		0.741009, 0.615113, 0.269337,
		0.565405, -0.787926, 0.243905,
		40.235085, 39.959156, 26.447542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401279, 40.533611, 25.864210>,  <39.839302, 40.510704, 26.276808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401279, 40.533611, 25.864210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461998, 40.154720, 25.977154>,  <40.498428, 39.927387, 26.044920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461998, 40.154720, 25.977154>,  <40.401279, 40.533611, 25.864210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461998, 40.154720, 25.977154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383535, -0.206840, -0.900066,
		0.910966, 0.244920, 0.331896,
		0.151794, -0.947223, 0.282360,
		40.507538, 39.870552, 26.061861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084042, 40.388954, 25.556995>,  <40.401279, 40.533611, 25.864210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084042, 40.388954, 25.556995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918575, 40.030804, 25.622942>,  <40.819294, 39.815914, 25.662510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918575, 40.030804, 25.622942>,  <41.084042, 40.388954, 25.556995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918575, 40.030804, 25.622942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374737, -0.332487, -0.865462,
		0.829731, -0.296230, 0.473069,
		-0.413665, -0.895377, 0.164866,
		40.794476, 39.762192, 25.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544167, 39.825268, 25.287197>,  <41.084042, 40.388954, 25.556995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544167, 39.825268, 25.287197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179554, 39.662830, 25.313124>,  <40.960789, 39.565369, 25.328680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179554, 39.662830, 25.313124>,  <41.544167, 39.825268, 25.287197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179554, 39.662830, 25.313124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038510, -0.241209, -0.969709,
		0.409429, -0.881422, 0.235508,
		-0.911530, -0.406096, 0.064815,
		40.906094, 39.541000, 25.332567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612663, 39.156700, 25.197342>,  <41.544167, 39.825268, 25.287197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612663, 39.156700, 25.197342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252335, 39.277012, 25.072084>,  <41.036137, 39.349197, 24.996929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252335, 39.277012, 25.072084>,  <41.612663, 39.156700, 25.197342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252335, 39.277012, 25.072084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201309, -0.349688, -0.914983,
		-0.384709, -0.887272, 0.254456,
		-0.900819, 0.300778, -0.313144,
		40.982090, 39.367245, 24.978142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431999, 38.584145, 24.882662>,  <41.612663, 39.156700, 25.197342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431999, 38.584145, 24.882662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191208, 38.873573, 24.747570>,  <41.046734, 39.047230, 24.666515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191208, 38.873573, 24.747570>,  <41.431999, 38.584145, 24.882662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191208, 38.873573, 24.747570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151417, -0.311839, -0.937992,
		-0.784023, -0.615791, 0.078160,
		-0.601980, 0.723573, -0.337730,
		41.010612, 39.090645, 24.646252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105530, 38.228786, 24.432074>,  <41.431999, 38.584145, 24.882662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105530, 38.228786, 24.432074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026802, 38.604965, 24.321201>,  <40.979565, 38.830673, 24.254679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026802, 38.604965, 24.321201>,  <41.105530, 38.228786, 24.432074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026802, 38.604965, 24.321201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163112, -0.247360, -0.955096,
		-0.966776, -0.233195, -0.104711,
		-0.196822, 0.940443, -0.277179,
		40.967754, 38.887096, 24.238049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602856, 38.137817, 23.908161>,  <41.105530, 38.228786, 24.432074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602856, 38.137817, 23.908161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769585, 38.492550, 23.828371>,  <40.869621, 38.705391, 23.780497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769585, 38.492550, 23.828371>,  <40.602856, 38.137817, 23.908161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769585, 38.492550, 23.828371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179184, -0.295303, -0.938450,
		-0.891152, 0.355425, -0.281995,
		0.416823, 0.886831, -0.199474,
		40.894630, 38.758598, 23.768530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348927, 38.282516, 23.216064>,  <40.602856, 38.137817, 23.908161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348927, 38.282516, 23.216064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660625, 38.530983, 23.249355>,  <40.847645, 38.680065, 23.269331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.660625, 38.530983, 23.249355>,  <40.348927, 38.282516, 23.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660625, 38.530983, 23.249355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264126, -0.205067, -0.942436,
		-0.568344, 0.756371, -0.323864,
		0.779245, 0.621169, 0.083229,
		40.894398, 38.717335, 23.274324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382465, 38.620438, 22.539507>,  <40.348927, 38.282516, 23.216064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382465, 38.620438, 22.539507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740257, 38.654510, 22.715071>,  <40.954933, 38.674953, 22.820410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740257, 38.654510, 22.715071>,  <40.382465, 38.620438, 22.539507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740257, 38.654510, 22.715071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446891, -0.200368, -0.871861,
		0.013680, 0.976011, -0.217291,
		0.894484, 0.085178, 0.438912,
		41.008602, 38.680065, 22.846745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856297, 39.069767, 22.091011>,  <40.382465, 38.620438, 22.539507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856297, 39.069767, 22.091011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100704, 38.866280, 22.333618>,  <41.247349, 38.744186, 22.479181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100704, 38.866280, 22.333618>,  <40.856297, 39.069767, 22.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100704, 38.866280, 22.333618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581669, -0.231173, -0.779884,
		0.536952, 0.829315, 0.154655,
		0.611018, -0.508719, 0.606516,
		41.284008, 38.713665, 22.515574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402794, 39.213013, 21.788010>,  <40.856297, 39.069767, 22.091011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402794, 39.213013, 21.788010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472446, 38.898769, 22.025496>,  <41.514236, 38.710224, 22.167988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472446, 38.898769, 22.025496>,  <41.402794, 39.213013, 21.788010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472446, 38.898769, 22.025496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525711, -0.435652, -0.730641,
		0.832651, 0.439347, 0.337144,
		0.174128, -0.785609, 0.593715,
		41.524685, 38.663086, 22.203609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088493, 39.018311, 21.636644>,  <41.402794, 39.213013, 21.788010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088493, 39.018311, 21.636644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948437, 38.689697, 21.816637>,  <41.864403, 38.492531, 21.924633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948437, 38.689697, 21.816637>,  <42.088493, 39.018311, 21.636644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948437, 38.689697, 21.816637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466757, -0.569529, -0.676591,
		0.812119, -0.026873, 0.582873,
		-0.350146, -0.821532, 0.449982,
		41.843391, 38.443237, 21.951632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602943, 38.556210, 21.848232>,  <42.088493, 39.018311, 21.636644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602943, 38.556210, 21.848232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279758, 38.328194, 21.788565>,  <42.085850, 38.191383, 21.752764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279758, 38.328194, 21.788565>,  <42.602943, 38.556210, 21.848232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279758, 38.328194, 21.788565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550781, -0.640670, -0.534960,
		0.209384, -0.514385, 0.831605,
		-0.807960, -0.570044, -0.149167,
		42.037369, 38.157181, 21.743814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801754, 37.907146, 22.015469>,  <42.602943, 38.556210, 21.848232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801754, 37.907146, 22.015469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463337, 37.821087, 21.820360>,  <42.260284, 37.769451, 21.703295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463337, 37.821087, 21.820360>,  <42.801754, 37.907146, 22.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463337, 37.821087, 21.820360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455458, -0.767213, -0.451600,
		-0.277064, -0.604233, 0.747086,
		-0.846046, -0.215145, -0.487770,
		42.209522, 37.756542, 21.674028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698360, 37.204967, 22.197035>,  <42.801754, 37.907146, 22.015469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698360, 37.204967, 22.197035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510979, 37.292244, 21.854588>,  <42.398548, 37.344612, 21.649118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510979, 37.292244, 21.854588>,  <42.698360, 37.204967, 22.197035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510979, 37.292244, 21.854588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622292, -0.606366, -0.495049,
		-0.627140, -0.764664, 0.148272,
		-0.468453, 0.218196, -0.856121,
		42.370441, 37.357704, 21.597752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711758, 36.668129, 21.838017>,  <42.698360, 37.204967, 22.197035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711758, 36.668129, 21.838017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634586, 36.934814, 21.550053>,  <42.588284, 37.094826, 21.377275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634586, 36.934814, 21.550053>,  <42.711758, 36.668129, 21.838017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634586, 36.934814, 21.550053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466770, -0.582997, -0.665011,
		-0.863078, -0.464334, -0.198725,
		-0.192931, 0.666715, -0.719909,
		42.576706, 37.134830, 21.334080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609257, 36.236038, 21.273941>,  <42.711758, 36.668129, 21.838017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609257, 36.236038, 21.273941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663223, 36.593796, 21.103361>,  <42.695602, 36.808449, 21.001013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663223, 36.593796, 21.103361>,  <42.609257, 36.236038, 21.273941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663223, 36.593796, 21.103361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568735, -0.422328, -0.705819,
		-0.811381, -0.147314, -0.565649,
		0.134912, 0.894392, -0.426451,
		42.703697, 36.862114, 20.975426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298588, 36.157246, 20.560503>,  <42.609257, 36.236038, 21.273941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298588, 36.157246, 20.560503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563068, 36.454094, 20.604446>,  <42.721756, 36.632202, 20.630812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563068, 36.454094, 20.604446>,  <42.298588, 36.157246, 20.560503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563068, 36.454094, 20.604446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573727, -0.405862, -0.711416,
		-0.483368, 0.533420, -0.694132,
		0.661205, 0.742118, 0.109857,
		42.761429, 36.676731, 20.637403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505329, 36.239315, 19.963194>,  <42.298588, 36.157246, 20.560503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505329, 36.239315, 19.963194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799648, 36.436028, 20.149420>,  <42.976238, 36.554054, 20.261156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799648, 36.436028, 20.149420>,  <42.505329, 36.239315, 19.963194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799648, 36.436028, 20.149420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652380, -0.330329, -0.682116,
		-0.181663, 0.805625, -0.563885,
		0.735798, 0.491783, 0.465565,
		43.020386, 36.583561, 20.289089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820709, 36.444183, 19.400877>,  <42.505329, 36.239315, 19.963194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820709, 36.444183, 19.400877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082790, 36.489426, 19.699650>,  <43.240040, 36.516571, 19.878914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082790, 36.489426, 19.699650>,  <42.820709, 36.444183, 19.400877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082790, 36.489426, 19.699650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748468, -0.231311, -0.621523,
		0.102474, 0.966282, -0.236215,
		0.655206, 0.113110, 0.746934,
		43.279354, 36.523357, 19.923731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371567, 36.924637, 19.175646>,  <42.820709, 36.444183, 19.400877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371567, 36.924637, 19.175646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492199, 36.680168, 19.468363>,  <43.564579, 36.533489, 19.643993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492199, 36.680168, 19.468363>,  <43.371567, 36.924637, 19.175646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492199, 36.680168, 19.468363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791835, -0.266972, -0.549294,
		0.531079, 0.745117, 0.403429,
		0.301584, -0.611168, 0.731793,
		43.582676, 36.496819, 19.687901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986523, 37.052811, 19.190832>,  <43.371567, 36.924637, 19.175646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986523, 37.052811, 19.190832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999268, 36.684433, 19.346191>,  <44.006912, 36.463406, 19.439407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999268, 36.684433, 19.346191>,  <43.986523, 37.052811, 19.190832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999268, 36.684433, 19.346191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783478, -0.218274, -0.581824,
		0.620602, 0.322836, 0.714583,
		0.031859, -0.920941, 0.388396,
		44.008823, 36.408150, 19.462709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665436, 36.850182, 19.285109>,  <43.986523, 37.052811, 19.190832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665436, 36.850182, 19.285109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487156, 36.492111, 19.285812>,  <44.380188, 36.277267, 19.286236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487156, 36.492111, 19.285812>,  <44.665436, 36.850182, 19.285109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487156, 36.492111, 19.285812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742665, -0.370866, -0.557591,
		0.499797, -0.247212, 0.830114,
		-0.445704, -0.895179, 0.001762,
		44.353443, 36.223557, 19.286341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239857, 36.378952, 19.517790>,  <44.665436, 36.850182, 19.285109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239857, 36.378952, 19.517790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957798, 36.156597, 19.341715>,  <44.788563, 36.023186, 19.236071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957798, 36.156597, 19.341715>,  <45.239857, 36.378952, 19.517790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957798, 36.156597, 19.341715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708147, -0.583683, -0.397294,
		-0.036079, -0.591865, 0.805229,
		-0.705143, -0.555887, -0.440186,
		44.746254, 35.989830, 19.209660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887524, 36.281216, 19.321301>,  <45.239857, 36.378952, 19.517790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887524, 36.281216, 19.321301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163582, 36.019489, 19.444954>,  <46.329216, 35.862453, 19.519146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163582, 36.019489, 19.444954>,  <45.887524, 36.281216, 19.321301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163582, 36.019489, 19.444954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256243, 0.178547, 0.949979,
		-0.676785, -0.734838, -0.044441,
		0.690146, -0.654319, 0.309135,
		46.370625, 35.823193, 19.537695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507404, 35.730637, 19.726097>,  <45.887524, 36.281216, 19.321301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507404, 35.730637, 19.726097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890743, 35.764942, 19.835068>,  <46.120747, 35.785526, 19.900450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890743, 35.764942, 19.835068>,  <45.507404, 35.730637, 19.726097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890743, 35.764942, 19.835068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273700, 0.003241, 0.961810,
		0.081609, -0.996310, 0.026580,
		0.958346, 0.085767, 0.272426,
		46.178246, 35.790672, 19.916796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627777, 35.109047, 20.162275>,  <45.507404, 35.730637, 19.726097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627777, 35.109047, 20.162275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884369, 35.407890, 20.231937>,  <46.038322, 35.587196, 20.273735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884369, 35.407890, 20.231937>,  <45.627777, 35.109047, 20.162275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884369, 35.407890, 20.231937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230144, -0.029140, 0.972720,
		0.731804, -0.664061, 0.153250,
		0.641480, 0.747110, 0.174155,
		46.076813, 35.632023, 20.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983509, 34.854130, 20.740007>,  <45.627777, 35.109047, 20.162275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983509, 34.854130, 20.740007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069469, 35.244637, 20.729309>,  <46.121044, 35.478943, 20.722891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.069469, 35.244637, 20.729309>,  <45.983509, 34.854130, 20.740007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069469, 35.244637, 20.729309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256863, 0.082919, 0.962884,
		0.942253, -0.200053, 0.268586,
		0.214899, 0.976270, -0.026744,
		46.133938, 35.537518, 20.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071686, 34.959625, 21.376869>,  <45.983509, 34.854130, 20.740007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071686, 34.959625, 21.376869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998604, 35.326733, 21.235836>,  <45.954754, 35.546997, 21.151217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998604, 35.326733, 21.235836>,  <46.071686, 34.959625, 21.376869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998604, 35.326733, 21.235836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285760, 0.293564, 0.912229,
		0.940722, 0.267426, 0.208626,
		-0.182709, 0.917771, -0.352582,
		45.943790, 35.602062, 21.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386627, 35.416412, 21.883671>,  <46.071686, 34.959625, 21.376869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386627, 35.416412, 21.883671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117577, 35.638371, 21.687849>,  <45.956146, 35.771545, 21.570356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117577, 35.638371, 21.687849>,  <46.386627, 35.416412, 21.883671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117577, 35.638371, 21.687849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459882, 0.204834, 0.864032,
		0.579725, 0.806309, 0.117409,
		-0.672628, 0.554895, -0.489554,
		45.915787, 35.804840, 21.540983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293987, 36.036522, 22.280891>,  <46.386627, 35.416412, 21.883671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293987, 36.036522, 22.280891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968494, 36.026066, 22.048630>,  <45.773201, 36.019794, 21.909273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.968494, 36.026066, 22.048630>,  <46.293987, 36.036522, 22.280891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968494, 36.026066, 22.048630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528470, 0.449197, 0.720376,
		0.242000, 0.893050, -0.379337,
		-0.813729, -0.026137, -0.580656,
		45.724377, 36.018227, 21.874434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042107, 36.675362, 22.329962>,  <46.293987, 36.036522, 22.280891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042107, 36.675362, 22.329962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738289, 36.464085, 22.178120>,  <45.555996, 36.337318, 22.087015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738289, 36.464085, 22.178120>,  <46.042107, 36.675362, 22.329962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738289, 36.464085, 22.178120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617797, 0.403228, 0.675081,
		-0.203505, 0.747275, -0.632586,
		-0.759548, -0.528192, -0.379606,
		45.510426, 36.305626, 22.064238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625362, 37.048809, 21.984579>,  <46.042107, 36.675362, 22.329962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625362, 37.048809, 21.984579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417973, 36.734966, 22.120562>,  <45.293537, 36.546661, 22.202150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417973, 36.734966, 22.120562>,  <45.625362, 37.048809, 21.984579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417973, 36.734966, 22.120562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550804, 0.610545, 0.569078,
		-0.654062, 0.107804, -0.748719,
		-0.518476, -0.784610, 0.339956,
		45.262428, 36.499584, 22.222548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102997, 37.358746, 22.316309>,  <45.625362, 37.048809, 21.984579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102997, 37.358746, 22.316309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044052, 36.981255, 22.434744>,  <45.008686, 36.754761, 22.505804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044052, 36.981255, 22.434744>,  <45.102997, 37.358746, 22.316309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044052, 36.981255, 22.434744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680844, 0.313926, 0.661742,
		-0.717452, -0.104074, -0.688790,
		-0.147359, -0.943726, 0.296085,
		44.999844, 36.698135, 22.523569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289364, 37.221279, 22.327772>,  <45.102997, 37.358746, 22.316309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289364, 37.221279, 22.327772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502384, 37.001537, 22.585327>,  <44.630196, 36.869690, 22.739861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502384, 37.001537, 22.585327>,  <44.289364, 37.221279, 22.327772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502384, 37.001537, 22.585327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512230, 0.396425, 0.761884,
		-0.673802, -0.735562, -0.070281,
		0.532552, -0.549359, 0.643889,
		44.662151, 36.836731, 22.778494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736931, 36.962673, 22.834522>,  <44.289364, 37.221279, 22.327772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736931, 36.962673, 22.834522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090641, 36.889027, 23.006176>,  <44.302868, 36.844837, 23.109169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090641, 36.889027, 23.006176>,  <43.736931, 36.962673, 22.834522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090641, 36.889027, 23.006176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385878, 0.229416, 0.893570,
		-0.262971, -0.955756, 0.131821,
		0.884276, -0.184116, 0.429135,
		44.355923, 36.833794, 23.134916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614296, 36.417393, 23.326178>,  <43.736931, 36.962673, 22.834522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614296, 36.417393, 23.326178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941818, 36.608009, 23.454216>,  <44.138332, 36.722378, 23.531038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.941818, 36.608009, 23.454216>,  <43.614296, 36.417393, 23.326178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941818, 36.608009, 23.454216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434123, 0.149169, 0.888418,
		0.375618, -0.866406, 0.329017,
		0.818809, 0.476539, 0.320096,
		44.187462, 36.750973, 23.550245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742210, 36.122608, 23.985655>,  <43.614296, 36.417393, 23.326178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742210, 36.122608, 23.985655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939251, 36.470417, 23.971386>,  <44.057476, 36.679104, 23.962826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939251, 36.470417, 23.971386>,  <43.742210, 36.122608, 23.985655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939251, 36.470417, 23.971386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293152, 0.204391, 0.933962,
		0.819392, -0.449617, 0.355586,
		0.492604, 0.869522, -0.035670,
		44.087032, 36.731274, 23.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969456, 36.175343, 24.607649>,  <43.742210, 36.122608, 23.985655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969456, 36.175343, 24.607649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017090, 36.546768, 24.467024>,  <44.045670, 36.769623, 24.382648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017090, 36.546768, 24.467024>,  <43.969456, 36.175343, 24.607649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017090, 36.546768, 24.467024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405638, 0.368683, 0.836379,
		0.906244, 0.043010, 0.420562,
		0.119082, 0.928559, -0.351563,
		44.052814, 36.825336, 24.361555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288597, 36.531784, 25.203398>,  <43.969456, 36.175343, 24.607649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288597, 36.531784, 25.203398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136379, 36.808895, 24.958370>,  <44.045048, 36.975163, 24.811354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136379, 36.808895, 24.958370>,  <44.288597, 36.531784, 25.203398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136379, 36.808895, 24.958370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256503, 0.557344, 0.789667,
		0.888476, 0.457632, -0.034396,
		-0.380547, 0.692778, -0.612571,
		44.022217, 37.016727, 24.774599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488491, 37.185467, 25.413227>,  <44.288597, 36.531784, 25.203398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488491, 37.185467, 25.413227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154682, 37.248096, 25.201923>,  <43.954399, 37.285675, 25.075140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.154682, 37.248096, 25.201923>,  <44.488491, 37.185467, 25.413227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154682, 37.248096, 25.201923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421894, 0.435062, 0.795441,
		0.354373, 0.886682, -0.297009,
		-0.834521, 0.156577, -0.528260,
		43.904327, 37.295071, 25.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325542, 37.808662, 25.608974>,  <44.488491, 37.185467, 25.413227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325542, 37.808662, 25.608974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980701, 37.672215, 25.459084>,  <43.773796, 37.590343, 25.369150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980701, 37.672215, 25.459084>,  <44.325542, 37.808662, 25.608974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980701, 37.672215, 25.459084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491074, 0.379967, 0.783882,
		-0.125016, 0.859803, -0.495086,
		-0.862100, -0.341122, -0.374725,
		43.722073, 37.569878, 25.346666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922993, 38.362103, 25.517986>,  <44.325542, 37.808662, 25.608974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922993, 38.362103, 25.517986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673904, 38.049332, 25.529327>,  <43.524452, 37.861668, 25.536131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673904, 38.049332, 25.529327>,  <43.922993, 38.362103, 25.517986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673904, 38.049332, 25.529327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486893, 0.415611, 0.768247,
		-0.612500, 0.464598, -0.639525,
		-0.622720, -0.781931, 0.028352,
		43.487087, 37.814751, 25.537832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354141, 38.640110, 25.466461>,  <43.922993, 38.362103, 25.517986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354141, 38.640110, 25.466461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281525, 38.291332, 25.648346>,  <43.237957, 38.082066, 25.757477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281525, 38.291332, 25.648346>,  <43.354141, 38.640110, 25.466461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281525, 38.291332, 25.648346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350411, 0.489399, 0.798562,
		-0.918834, -0.014366, -0.394383,
		-0.181538, -0.871942, 0.454710,
		43.227062, 38.029751, 25.784760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.737534, 38.774109, 25.650244>,  <43.354141, 38.640110, 25.466461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.737534, 38.774109, 25.650244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843655, 38.459583, 25.873428>,  <42.907326, 38.270866, 26.007339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843655, 38.459583, 25.873428>,  <42.737534, 38.774109, 25.650244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843655, 38.459583, 25.873428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354379, 0.458670, 0.814885,
		-0.896679, -0.413918, -0.156969,
		0.265299, -0.786317, 0.557963,
		42.923244, 38.223690, 26.040817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163971, 38.732704, 26.150156>,  <42.737534, 38.774109, 25.650244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163971, 38.732704, 26.150156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475983, 38.531891, 26.299559>,  <42.663189, 38.411404, 26.389200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475983, 38.531891, 26.299559>,  <42.163971, 38.732704, 26.150156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475983, 38.531891, 26.299559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175457, 0.397481, 0.900680,
		-0.600635, -0.768095, 0.221963,
		0.780034, -0.502035, 0.373508,
		42.709991, 38.381279, 26.411612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838848, 38.338207, 26.718491>,  <42.163971, 38.732704, 26.150156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838848, 38.338207, 26.718491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228127, 38.387421, 26.796209>,  <42.461693, 38.416950, 26.842840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228127, 38.387421, 26.796209>,  <41.838848, 38.338207, 26.718491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228127, 38.387421, 26.796209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222792, 0.294867, 0.929202,
		0.057035, -0.947584, 0.314375,
		0.973196, 0.123037, 0.194296,
		42.520084, 38.424332, 26.854498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002590, 37.968906, 27.392763>,  <41.838848, 38.338207, 26.718491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002590, 37.968906, 27.392763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281757, 38.250435, 27.339787>,  <42.449257, 38.419353, 27.308001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281757, 38.250435, 27.339787>,  <42.002590, 37.968906, 27.392763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281757, 38.250435, 27.339787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108534, 0.286734, 0.951842,
		0.707905, -0.649935, 0.276506,
		0.697919, 0.703824, -0.132440,
		42.491135, 38.461582, 27.300055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400742, 37.967499, 28.020636>,  <42.002590, 37.968906, 27.392763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400742, 37.967499, 28.020636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464161, 38.320347, 27.843222>,  <42.502213, 38.532055, 27.736773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464161, 38.320347, 27.843222>,  <42.400742, 37.967499, 28.020636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464161, 38.320347, 27.843222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073285, 0.458492, 0.885672,
		0.984627, -0.107921, 0.137341,
		0.158553, 0.882121, -0.443535,
		42.511726, 38.584984, 27.710161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853031, 38.283249, 28.466913>,  <42.400742, 37.967499, 28.020636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853031, 38.283249, 28.466913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717346, 38.594845, 28.255970>,  <42.635937, 38.781803, 28.129404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717346, 38.594845, 28.255970>,  <42.853031, 38.283249, 28.466913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717346, 38.594845, 28.255970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245038, 0.468074, 0.849036,
		0.908235, 0.417228, 0.032105,
		-0.339214, 0.778991, -0.527358,
		42.615582, 38.828541, 28.097763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255264, 38.897465, 28.707388>,  <42.853031, 38.283249, 28.466913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255264, 38.897465, 28.707388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898712, 38.978161, 28.545038>,  <42.684780, 39.026577, 28.447628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898712, 38.978161, 28.545038>,  <43.255264, 38.897465, 28.707388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898712, 38.978161, 28.545038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220360, 0.589632, 0.777030,
		0.396077, 0.782070, -0.481133,
		-0.891383, 0.201741, -0.405876,
		42.631298, 39.038685, 28.423275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302952, 39.618977, 28.730043>,  <43.255264, 38.897465, 28.707388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302952, 39.618977, 28.730043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920044, 39.514397, 28.680611>,  <42.690300, 39.451649, 28.650951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920044, 39.514397, 28.680611>,  <43.302952, 39.618977, 28.730043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920044, 39.514397, 28.680611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257911, 0.578546, 0.773800,
		-0.130813, 0.772610, -0.621258,
		-0.957272, -0.261453, -0.123583,
		42.632862, 39.435963, 28.643536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867527, 40.164364, 29.064402>,  <43.302952, 39.618977, 28.730043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867527, 40.164364, 29.064402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578442, 39.891815, 29.018074>,  <42.404991, 39.728287, 28.990278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578442, 39.891815, 29.018074>,  <42.867527, 40.164364, 29.064402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578442, 39.891815, 29.018074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396639, 0.271660, 0.876857,
		-0.566000, 0.679659, -0.466592,
		-0.722718, -0.681370, -0.115820,
		42.361626, 39.687405, 28.983328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214985, 40.565826, 29.198971>,  <42.867527, 40.164364, 29.064402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214985, 40.565826, 29.198971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202076, 40.176487, 29.289785>,  <42.194328, 39.942883, 29.344275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202076, 40.176487, 29.289785>,  <42.214985, 40.565826, 29.198971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202076, 40.176487, 29.289785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376612, 0.222255, 0.899314,
		-0.925809, -0.056477, -0.373750,
		-0.032277, -0.973352, 0.227035,
		42.192394, 39.884483, 29.357897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513790, 40.478123, 29.428926>,  <42.214985, 40.565826, 29.198971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513790, 40.478123, 29.428926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727375, 40.164745, 29.556114>,  <41.855526, 39.976719, 29.632427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727375, 40.164745, 29.556114>,  <41.513790, 40.478123, 29.428926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727375, 40.164745, 29.556114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291204, 0.182657, 0.939062,
		-0.793781, -0.594014, -0.130611,
		0.533959, -0.783443, 0.317969,
		41.887562, 39.929714, 29.651505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019398, 39.962471, 29.680799>,  <41.513790, 40.478123, 29.428926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019398, 39.962471, 29.680799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375111, 39.898327, 29.852127>,  <41.588539, 39.859840, 29.954924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.375111, 39.898327, 29.852127>,  <41.019398, 39.962471, 29.680799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375111, 39.898327, 29.852127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426445, 0.047706, 0.903254,
		-0.165285, -0.985904, -0.025964,
		0.889284, -0.160366, 0.428319,
		41.641895, 39.850216, 29.980623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806412, 39.813816, 30.307076>,  <41.019398, 39.962471, 29.680799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806412, 39.813816, 30.307076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200714, 39.838161, 30.369797>,  <41.437294, 39.852768, 30.407429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200714, 39.838161, 30.369797>,  <40.806412, 39.813816, 30.307076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200714, 39.838161, 30.369797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157850, 0.012751, 0.987381,
		0.058093, -0.998065, 0.022176,
		0.985753, 0.060860, 0.156804,
		41.496441, 39.856419, 30.416838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930660, 39.281910, 30.764597>,  <40.806412, 39.813816, 30.307076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930660, 39.281910, 30.764597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215611, 39.561363, 30.791239>,  <41.386581, 39.729034, 30.807224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215611, 39.561363, 30.791239>,  <40.930660, 39.281910, 30.764597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215611, 39.561363, 30.791239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131796, 0.039961, 0.990471,
		0.689314, -0.714364, 0.120544,
		0.712374, 0.698632, 0.066605,
		41.429321, 39.770954, 30.811220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378380, 39.021404, 31.319597>,  <40.930660, 39.281910, 30.764597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378380, 39.021404, 31.319597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412266, 39.418705, 31.287916>,  <41.432598, 39.657085, 31.268908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412266, 39.418705, 31.287916>,  <41.378380, 39.021404, 31.319597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412266, 39.418705, 31.287916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100739, 0.087620, 0.991047,
		0.991299, -0.075980, 0.107482,
		0.084717, 0.993252, -0.079204,
		41.437679, 39.716682, 31.264154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796654, 39.186150, 31.911991>,  <41.378380, 39.021404, 31.319597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796654, 39.186150, 31.911991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637054, 39.536884, 31.804699>,  <41.541294, 39.747326, 31.740324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637054, 39.536884, 31.804699>,  <41.796654, 39.186150, 31.911991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637054, 39.536884, 31.804699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094605, 0.251595, 0.963198,
		0.912057, 0.409694, -0.017434,
		-0.399002, 0.876841, -0.268228,
		41.517353, 39.799938, 31.724230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022083, 39.638828, 32.446911>,  <41.796654, 39.186150, 31.911991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022083, 39.638828, 32.446911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709740, 39.822090, 32.277039>,  <41.522335, 39.932049, 32.175114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709740, 39.822090, 32.277039>,  <42.022083, 39.638828, 32.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709740, 39.822090, 32.277039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354229, 0.235228, 0.905091,
		0.514572, 0.857180, -0.021385,
		-0.780856, 0.458159, -0.424680,
		41.475483, 39.959538, 32.149635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052845, 40.383682, 32.465916>,  <42.022083, 39.638828, 32.446911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052845, 40.383682, 32.465916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656864, 40.333321, 32.440178>,  <41.419273, 40.303104, 32.424736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656864, 40.333321, 32.440178>,  <42.052845, 40.383682, 32.465916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656864, 40.333321, 32.440178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109648, 0.396290, 0.911555,
		-0.089266, 0.909452, -0.406114,
		-0.989954, -0.125900, -0.064345,
		41.359879, 40.295551, 32.420876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746193, 40.947624, 32.808826>,  <42.052845, 40.383682, 32.465916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746193, 40.947624, 32.808826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473755, 40.654953, 32.797733>,  <41.310295, 40.479351, 32.791077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473755, 40.654953, 32.797733>,  <41.746193, 40.947624, 32.808826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473755, 40.654953, 32.797733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208828, 0.157805, 0.965137,
		-0.701788, 0.663137, -0.260273,
		-0.681090, -0.731674, -0.027736,
		41.269428, 40.435452, 32.789413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149067, 41.282196, 33.154232>,  <41.746193, 40.947624, 32.808826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149067, 41.282196, 33.154232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079868, 40.888252, 33.158699>,  <41.038349, 40.651886, 33.161381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079868, 40.888252, 33.158699>,  <41.149067, 41.282196, 33.154232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079868, 40.888252, 33.158699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338003, 0.070014, 0.938537,
		-0.925108, 0.158591, -0.344998,
		-0.172998, -0.984859, 0.011167,
		41.027969, 40.592796, 33.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539883, 41.202808, 33.407280>,  <41.149067, 41.282196, 33.154232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539883, 41.202808, 33.407280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712986, 40.851513, 33.488678>,  <40.816849, 40.640736, 33.537518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712986, 40.851513, 33.488678>,  <40.539883, 41.202808, 33.407280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712986, 40.851513, 33.488678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386830, 0.022992, 0.921864,
		-0.814297, -0.477667, -0.329780,
		0.432761, -0.878240, 0.203499,
		40.842815, 40.588039, 33.549728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210678, 40.962322, 33.965652>,  <40.539883, 41.202808, 33.407280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210678, 40.962322, 33.965652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514912, 40.703217, 33.983173>,  <40.697453, 40.547752, 33.993687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514912, 40.703217, 33.983173>,  <40.210678, 40.962322, 33.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514912, 40.703217, 33.983173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195904, -0.164652, 0.966702,
		-0.618979, -0.743838, -0.252130,
		0.760583, -0.647762, 0.043805,
		40.743088, 40.508888, 33.996315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897758, 40.317215, 34.258820>,  <40.210678, 40.962322, 33.965652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897758, 40.317215, 34.258820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286022, 40.310066, 34.354744>,  <40.518978, 40.305779, 34.412296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286022, 40.310066, 34.354744>,  <39.897758, 40.317215, 34.258820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286022, 40.310066, 34.354744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239264, -0.171634, 0.955665,
		0.024085, -0.984999, -0.170872,
		0.970656, -0.017866, 0.239809,
		40.577217, 40.304707, 34.426685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118340, 39.590710, 34.529842>,  <39.897758, 40.317215, 34.258820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118340, 39.590710, 34.529842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310886, 39.908413, 34.678131>,  <40.426414, 40.099037, 34.767105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310886, 39.908413, 34.678131>,  <40.118340, 39.590710, 34.529842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310886, 39.908413, 34.678131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332360, -0.225970, 0.915683,
		0.811065, -0.563990, 0.155207,
		0.481364, 0.794263, 0.370724,
		40.455296, 40.146690, 34.789349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541088, 39.394600, 35.109974>,  <40.118340, 39.590710, 34.529842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541088, 39.394600, 35.109974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434650, 39.778587, 35.144955>,  <40.370789, 40.008980, 35.165943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434650, 39.778587, 35.144955>,  <40.541088, 39.394600, 35.109974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434650, 39.778587, 35.144955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445859, -0.203009, 0.871778,
		0.854636, 0.192983, 0.482032,
		-0.266095, 0.959971, 0.087455,
		40.354820, 40.066578, 35.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908825, 39.317757, 35.680515>,  <40.541088, 39.394600, 35.109974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908825, 39.317757, 35.680515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887611, 39.717113, 35.672482>,  <40.874882, 39.956726, 35.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887611, 39.717113, 35.672482>,  <40.908825, 39.317757, 35.680515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887611, 39.717113, 35.672482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523902, -0.010694, 0.851712,
		0.850126, 0.055695, 0.523626,
		-0.053036, 0.998390, -0.020087,
		40.871700, 40.016632, 35.666454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993069, 39.647324, 36.317230>,  <40.908825, 39.317757, 35.680515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993069, 39.647324, 36.317230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768768, 39.908791, 36.113945>,  <40.634190, 40.065670, 35.991974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768768, 39.908791, 36.113945>,  <40.993069, 39.647324, 36.317230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768768, 39.908791, 36.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649435, 0.033513, 0.759678,
		0.513608, 0.756039, 0.405722,
		-0.560750, 0.653668, -0.508211,
		40.600544, 40.104893, 35.961483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944187, 40.250595, 36.691975>,  <40.993069, 39.647324, 36.317230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944187, 40.250595, 36.691975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628540, 40.225086, 36.447609>,  <40.439152, 40.209782, 36.300987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628540, 40.225086, 36.447609>,  <40.944187, 40.250595, 36.691975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628540, 40.225086, 36.447609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614167, 0.097000, 0.783192,
		0.009313, 0.993239, -0.115712,
		-0.789121, -0.063773, -0.610918,
		40.391804, 40.205956, 36.264332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471073, 40.841667, 36.768940>,  <40.944187, 40.250595, 36.691975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471073, 40.841667, 36.768940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274593, 40.514942, 36.647919>,  <40.156708, 40.318905, 36.575306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274593, 40.514942, 36.647919>,  <40.471073, 40.841667, 36.768940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274593, 40.514942, 36.647919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598898, 0.064481, 0.798225,
		-0.632493, 0.573285, -0.520862,
		-0.491196, -0.816815, -0.302556,
		40.127235, 40.269897, 36.557152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780575, 40.961956, 36.964485>,  <40.471073, 40.841667, 36.768940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780575, 40.961956, 36.964485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758484, 40.571632, 36.879868>,  <39.745228, 40.337440, 36.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758484, 40.571632, 36.879868>,  <39.780575, 40.961956, 36.964485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758484, 40.571632, 36.879868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730579, -0.104924, 0.674718,
		-0.680591, 0.191812, -0.707110,
		-0.055226, -0.975807, -0.211544,
		39.741917, 40.278889, 36.816406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122219, 40.780064, 36.971142>,  <39.780575, 40.961956, 36.964485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122219, 40.780064, 36.971142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315842, 40.440891, 37.057590>,  <39.432014, 40.237389, 37.109459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315842, 40.440891, 37.057590>,  <39.122219, 40.780064, 36.971142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315842, 40.440891, 37.057590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621530, -0.159321, 0.767018,
		-0.615943, -0.505606, -0.604133,
		0.484060, -0.847927, 0.216117,
		39.461060, 40.186512, 37.122425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701481, 40.246716, 37.145737>,  <39.122219, 40.780064, 36.971142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701481, 40.246716, 37.145737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035145, 40.100388, 37.310829>,  <39.235344, 40.012589, 37.409885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035145, 40.100388, 37.310829>,  <38.701481, 40.246716, 37.145737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035145, 40.100388, 37.310829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524037, -0.292441, 0.799914,
		-0.171924, -0.883547, -0.435646,
		0.834163, -0.365820, 0.412734,
		39.285393, 39.990643, 37.434650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404228, 39.667206, 37.490334>,  <38.701481, 40.246716, 37.145737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404228, 39.667206, 37.490334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772240, 39.717613, 37.638748>,  <38.993046, 39.747856, 37.727798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772240, 39.717613, 37.638748>,  <38.404228, 39.667206, 37.490334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772240, 39.717613, 37.638748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297139, -0.392917, 0.870244,
		0.255452, -0.910898, -0.324050,
		0.920029, 0.126018, 0.371035,
		39.048248, 39.755417, 37.750057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547482, 39.089500, 37.886772>,  <38.404228, 39.667206, 37.490334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547482, 39.089500, 37.886772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799984, 39.368843, 38.021725>,  <38.951485, 39.536449, 38.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799984, 39.368843, 38.021725>,  <38.547482, 39.089500, 37.886772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799984, 39.368843, 38.021725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305774, -0.175676, 0.935757,
		0.712758, -0.693859, 0.102643,
		0.631251, 0.698354, 0.337378,
		38.989361, 39.578350, 38.122940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042271, 38.813629, 38.333405>,  <38.547482, 39.089500, 37.886772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042271, 38.813629, 38.333405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008774, 39.193665, 38.453617>,  <38.988674, 39.421684, 38.525745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008774, 39.193665, 38.453617>,  <39.042271, 38.813629, 38.333405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008774, 39.193665, 38.453617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334028, -0.310908, 0.889809,
		0.938836, -0.025873, 0.343392,
		-0.083742, 0.950087, 0.300534,
		38.983650, 39.478691, 38.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169128, 38.802120, 39.021786>,  <39.042271, 38.813629, 38.333405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169128, 38.802120, 39.021786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005390, 39.166565, 39.002548>,  <38.907146, 39.385231, 38.991005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005390, 39.166565, 39.002548>,  <39.169128, 38.802120, 39.021786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005390, 39.166565, 39.002548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433449, -0.147822, 0.888972,
		0.802841, 0.384745, 0.455431,
		-0.409350, 0.911109, -0.048090,
		38.882584, 39.439899, 38.988121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132957, 39.081310, 39.699200>,  <39.169128, 38.802120, 39.021786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132957, 39.081310, 39.699200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870056, 39.325050, 39.521790>,  <38.712315, 39.471294, 39.415344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870056, 39.325050, 39.521790>,  <39.132957, 39.081310, 39.699200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870056, 39.325050, 39.521790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616944, -0.096980, 0.781009,
		0.432895, 0.786949, 0.439675,
		-0.657253, 0.609350, -0.443521,
		38.672878, 39.507854, 39.388733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967823, 39.642792, 40.222321>,  <39.132957, 39.081310, 39.699200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967823, 39.642792, 40.222321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682392, 39.612667, 39.943714>,  <38.511135, 39.594593, 39.776550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682392, 39.612667, 39.943714>,  <38.967823, 39.642792, 40.222321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682392, 39.612667, 39.943714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699239, 0.015064, 0.714729,
		-0.043332, 0.997046, -0.063408,
		-0.713574, -0.075308, -0.696521,
		38.468319, 39.590076, 39.734756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453033, 40.199474, 40.475288>,  <38.967823, 39.642792, 40.222321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453033, 40.199474, 40.475288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241947, 39.969170, 40.225483>,  <38.115295, 39.830986, 40.075600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241947, 39.969170, 40.225483>,  <38.453033, 40.199474, 40.475288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241947, 39.969170, 40.225483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734610, -0.059768, 0.675852,
		-0.426456, 0.815430, -0.391420,
		-0.527715, -0.575762, -0.624511,
		38.083633, 39.796440, 40.038128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753181, 40.358585, 40.387775>,  <38.453033, 40.199474, 40.475288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753181, 40.358585, 40.387775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788239, 39.964672, 40.327747>,  <37.809273, 39.728325, 40.291729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788239, 39.964672, 40.327747>,  <37.753181, 40.358585, 40.387775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788239, 39.964672, 40.327747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679169, -0.169285, 0.714193,
		-0.728730, 0.039329, -0.683671,
		0.087646, -0.984782, -0.150074,
		37.814533, 39.669239, 40.282726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140198, 40.079887, 40.747646>,  <37.753181, 40.358585, 40.387775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140198, 40.079887, 40.747646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150070, 40.451904, 40.894291>,  <37.155994, 40.675114, 40.982277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150070, 40.451904, 40.894291>,  <37.140198, 40.079887, 40.747646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150070, 40.451904, 40.894291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621305, -0.273028, 0.734463,
		0.783180, -0.245907, 0.571103,
		0.024683, 0.930046, 0.366613,
		37.157475, 40.730919, 41.004276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610317, 40.159622, 41.168243>,  <37.140198, 40.079887, 40.747646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610317, 40.159622, 41.168243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490814, 39.778088, 41.156036>,  <36.419113, 39.549164, 41.148712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490814, 39.778088, 41.156036>,  <36.610317, 40.159622, 41.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490814, 39.778088, 41.156036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887936, -0.266110, -0.375174,
		0.349735, -0.139184, 0.926452,
		-0.298757, -0.953841, -0.030519,
		36.401188, 39.491936, 41.146881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082962, 39.563286, 41.394711>,  <36.610317, 40.159622, 41.168243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082962, 39.563286, 41.394711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854267, 39.392498, 41.114479>,  <36.717049, 39.290024, 40.946339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854267, 39.392498, 41.114479>,  <37.082962, 39.563286, 41.394711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854267, 39.392498, 41.114479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819076, -0.346180, -0.457465,
		-0.047201, -0.835377, 0.547647,
		-0.571740, -0.426972, -0.700577,
		36.682747, 39.264408, 40.904305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375626, 38.820793, 41.102108>,  <37.082962, 39.563286, 41.394711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375626, 38.820793, 41.102108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167339, 39.014168, 40.820641>,  <37.042370, 39.130192, 40.651760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167339, 39.014168, 40.820641>,  <37.375626, 38.820793, 41.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167339, 39.014168, 40.820641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784746, -0.053552, -0.617500,
		-0.336202, -0.873742, -0.351487,
		-0.520712, 0.483433, -0.703670,
		37.011124, 39.159199, 40.609539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389767, 38.365421, 40.478722>,  <37.375626, 38.820793, 41.102108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389767, 38.365421, 40.478722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388828, 38.764603, 40.453186>,  <37.388264, 39.004112, 40.437866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388828, 38.764603, 40.453186>,  <37.389767, 38.365421, 40.478722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388828, 38.764603, 40.453186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778364, -0.038255, -0.626647,
		-0.627809, -0.051162, -0.776684,
		-0.002348, 0.997957, -0.063840,
		37.388123, 39.063992, 40.434032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809509, 38.544334, 39.948772>,  <37.389767, 38.365421, 40.478722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809509, 38.544334, 39.948772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732792, 38.932423, 40.007938>,  <37.686760, 39.165276, 40.043438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732792, 38.932423, 40.007938>,  <37.809509, 38.544334, 39.948772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732792, 38.932423, 40.007938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532182, 0.229447, -0.814945,
		-0.824618, -0.077586, -0.560344,
		-0.191798, 0.970224, 0.147916,
		37.675251, 39.223492, 40.052315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472763, 38.839935, 39.326797>,  <37.809509, 38.544334, 39.948772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472763, 38.839935, 39.326797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664284, 39.133797, 39.519062>,  <37.779194, 39.310112, 39.634422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664284, 39.133797, 39.519062>,  <37.472763, 38.839935, 39.326797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664284, 39.133797, 39.519062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507382, 0.215252, -0.834404,
		-0.716460, 0.643393, -0.269687,
		0.478799, 0.734651, 0.480665,
		37.807922, 39.354191, 39.663261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437534, 39.540756, 38.918304>,  <37.472763, 38.839935, 39.326797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437534, 39.540756, 38.918304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764099, 39.538021, 39.149277>,  <37.960037, 39.536381, 39.287861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764099, 39.538021, 39.149277>,  <37.437534, 39.540756, 38.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764099, 39.538021, 39.149277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557670, 0.268909, -0.785297,
		-0.149909, 0.963141, 0.223352,
		0.816413, -0.006834, 0.577427,
		38.009022, 39.535973, 39.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828915, 40.104698, 38.649811>,  <37.437534, 39.540756, 38.918304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828915, 40.104698, 38.649811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092014, 39.913940, 38.883026>,  <38.249874, 39.799484, 39.022953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092014, 39.913940, 38.883026>,  <37.828915, 40.104698, 38.649811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092014, 39.913940, 38.883026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734172, 0.232870, -0.637780,
		0.168384, 0.847550, 0.503296,
		0.657753, -0.476897, 0.583035,
		38.289341, 39.770870, 39.057938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345016, 40.569672, 38.797306>,  <37.828915, 40.104698, 38.649811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345016, 40.569672, 38.797306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523113, 40.214493, 38.843456>,  <38.629971, 40.001385, 38.871147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523113, 40.214493, 38.843456>,  <38.345016, 40.569672, 38.797306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523113, 40.214493, 38.843456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728824, 0.284532, -0.622782,
		0.520169, 0.361377, 0.773842,
		0.445242, -0.887946, 0.115375,
		38.656685, 39.948109, 38.878067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071766, 40.697998, 38.858437>,  <38.345016, 40.569672, 38.797306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071766, 40.697998, 38.858437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037613, 40.318710, 38.736061>,  <39.017120, 40.091137, 38.662636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037613, 40.318710, 38.736061>,  <39.071766, 40.697998, 38.858437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037613, 40.318710, 38.736061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445756, 0.238261, -0.862863,
		0.891074, -0.210043, 0.402331,
		-0.085378, -0.948216, -0.305936,
		39.012001, 40.034245, 38.644279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793610, 40.548649, 38.529125>,  <39.071766, 40.697998, 38.858437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793610, 40.548649, 38.529125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542496, 40.258133, 38.417133>,  <39.391827, 40.083824, 38.349937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542496, 40.258133, 38.417133>,  <39.793610, 40.548649, 38.529125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542496, 40.258133, 38.417133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407730, -0.000435, -0.913102,
		0.663052, -0.687392, 0.296402,
		-0.627788, -0.726287, -0.279982,
		39.354160, 40.040249, 38.333138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163258, 39.929478, 38.317650>,  <39.793610, 40.548649, 38.529125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163258, 39.929478, 38.317650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808704, 39.916847, 38.132900>,  <39.595974, 39.909267, 38.022049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808704, 39.916847, 38.132900>,  <40.163258, 39.929478, 38.317650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808704, 39.916847, 38.132900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450514, -0.288563, -0.844848,
		-0.106601, -0.956940, 0.270004,
		-0.886382, -0.031579, -0.461876,
		39.542789, 39.907375, 37.994339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344715, 39.743855, 37.664330>,  <40.163258, 39.929478, 38.317650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344715, 39.743855, 37.664330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952888, 39.702271, 37.595463>,  <39.717793, 39.677319, 37.554142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952888, 39.702271, 37.595463>,  <40.344715, 39.743855, 37.664330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952888, 39.702271, 37.595463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181744, -0.090926, -0.979133,
		0.086136, -0.990416, 0.107963,
		-0.979566, -0.103960, -0.172171,
		39.659019, 39.671082, 37.543812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227661, 39.400654, 37.069462>,  <40.344715, 39.743855, 37.664330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227661, 39.400654, 37.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864735, 39.568626, 37.061161>,  <39.646976, 39.669411, 37.056183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864735, 39.568626, 37.061161>,  <40.227661, 39.400654, 37.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864735, 39.568626, 37.061161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046584, 0.051362, -0.997593,
		-0.417852, -0.906103, -0.066164,
		-0.907320, 0.419928, -0.020748,
		39.592537, 39.694603, 37.054935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930981, 38.984951, 36.569374>,  <40.227661, 39.400654, 37.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930981, 38.984951, 36.569374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838589, 39.369411, 36.629807>,  <39.783154, 39.600090, 36.666065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838589, 39.369411, 36.629807>,  <39.930981, 38.984951, 36.569374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838589, 39.369411, 36.629807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202783, 0.199430, -0.958701,
		-0.951591, -0.190808, -0.240971,
		-0.230984, 0.961156, 0.151084,
		39.769295, 39.657757, 36.675133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577038, 39.184162, 36.056343>,  <39.930981, 38.984951, 36.569374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577038, 39.184162, 36.056343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751560, 39.508266, 36.212860>,  <39.856274, 39.702728, 36.306770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751560, 39.508266, 36.212860>,  <39.577038, 39.184162, 36.056343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751560, 39.508266, 36.212860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508894, 0.136432, -0.849949,
		-0.742065, 0.569970, -0.352809,
		0.436311, 0.810260, 0.391296,
		39.882454, 39.751343, 36.330250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370209, 39.783443, 35.674114>,  <39.577038, 39.184162, 36.056343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370209, 39.783443, 35.674114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721027, 39.876701, 35.842133>,  <39.931519, 39.932655, 35.942944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721027, 39.876701, 35.842133>,  <39.370209, 39.783443, 35.674114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721027, 39.876701, 35.842133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379307, 0.200520, -0.903282,
		-0.294818, 0.951545, 0.087433,
		0.877045, 0.233140, 0.420045,
		39.984142, 39.946644, 35.968147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317677, 40.524616, 35.603405>,  <39.370209, 39.783443, 35.674114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317677, 40.524616, 35.603405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647655, 40.431114, 35.809250>,  <39.845642, 40.375011, 35.932755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647655, 40.431114, 35.809250>,  <39.317677, 40.524616, 35.603405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647655, 40.431114, 35.809250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555175, 0.164289, -0.815346,
		0.106048, 0.958315, 0.265305,
		0.824945, -0.233757, 0.514610,
		39.895138, 40.360989, 35.963634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830040, 40.904140, 35.286076>,  <39.317677, 40.524616, 35.603405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830040, 40.904140, 35.286076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051434, 40.635811, 35.483521>,  <40.184269, 40.474815, 35.601990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051434, 40.635811, 35.483521>,  <39.830040, 40.904140, 35.286076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051434, 40.635811, 35.483521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742191, 0.128353, -0.657782,
		0.377897, 0.730429, 0.568918,
		0.553486, -0.670820, 0.493614,
		40.217480, 40.434566, 35.631603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497299, 41.168774, 35.520741>,  <39.830040, 40.904140, 35.286076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497299, 41.168774, 35.520741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534710, 40.777199, 35.448151>,  <40.557156, 40.542255, 35.404598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534710, 40.777199, 35.448151>,  <40.497299, 41.168774, 35.520741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534710, 40.777199, 35.448151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696486, 0.194581, -0.690685,
		0.711448, -0.061793, 0.700016,
		0.093531, -0.978938, -0.181472,
		40.562771, 40.483517, 35.393707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242607, 41.002754, 35.459194>,  <40.497299, 41.168774, 35.520741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242607, 41.002754, 35.459194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048759, 40.701645, 35.280991>,  <40.932449, 40.520981, 35.174068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048759, 40.701645, 35.280991>,  <41.242607, 41.002754, 35.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048759, 40.701645, 35.280991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628385, 0.054701, -0.775977,
		0.608503, -0.656006, 0.446521,
		-0.484620, -0.752771, -0.445509,
		40.903374, 40.475815, 35.147339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744423, 40.568771, 35.221340>,  <41.242607, 41.002754, 35.459194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744423, 40.568771, 35.221340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409309, 40.511532, 35.010574>,  <41.208241, 40.477188, 34.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409309, 40.511532, 35.010574>,  <41.744423, 40.568771, 35.221340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409309, 40.511532, 35.010574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522017, 0.072957, -0.849809,
		0.160050, -0.987016, 0.013578,
		-0.837784, -0.143100, -0.526916,
		41.157974, 40.468601, 34.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888409, 40.424740, 34.507298>,  <41.744423, 40.568771, 35.221340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888409, 40.424740, 34.507298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496136, 40.347679, 34.493748>,  <41.260773, 40.301441, 34.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496136, 40.347679, 34.493748>,  <41.888409, 40.424740, 34.507298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496136, 40.347679, 34.493748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066270, -0.164264, -0.984188,
		0.184044, -0.967420, 0.173857,
		-0.980681, -0.192655, -0.033879,
		41.201931, 40.289883, 34.483585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727585, 39.721874, 34.291012>,  <41.888409, 40.424740, 34.507298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727585, 39.721874, 34.291012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438026, 39.973843, 34.178459>,  <41.264290, 40.125023, 34.110928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438026, 39.973843, 34.178459>,  <41.727585, 39.721874, 34.291012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438026, 39.973843, 34.178459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102682, -0.304932, -0.946823,
		-0.682226, -0.714293, 0.156057,
		-0.723895, 0.629922, -0.281377,
		41.220860, 40.162819, 34.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498154, 39.459282, 33.731754>,  <41.727585, 39.721874, 34.291012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498154, 39.459282, 33.731754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302975, 39.805809, 33.689056>,  <41.185867, 40.013725, 33.663437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302975, 39.805809, 33.689056>,  <41.498154, 39.459282, 33.731754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302975, 39.805809, 33.689056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129009, -0.192526, -0.972774,
		-0.863286, -0.460892, 0.205706,
		-0.487948, 0.866321, -0.106746,
		41.156590, 40.065704, 33.657032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626762, 38.843643, 33.953335>,  <41.498154, 39.459282, 33.731754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626762, 38.843643, 33.953335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012280, 38.934650, 34.008961>,  <42.243591, 38.989254, 34.042336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012280, 38.934650, 34.008961>,  <41.626762, 38.843643, 33.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012280, 38.934650, 34.008961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212667, -0.970473, 0.113825,
		0.160856, -0.080130, -0.983720,
		0.963794, 0.227514, 0.139065,
		42.301418, 39.002903, 34.050682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033897, 38.259872, 33.637096>,  <41.626762, 38.843643, 33.953335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033897, 38.259872, 33.637096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271164, 38.460545, 33.888962>,  <42.413525, 38.580948, 34.040081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271164, 38.460545, 33.888962>,  <42.033897, 38.259872, 33.637096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271164, 38.460545, 33.888962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242257, -0.857086, 0.454659,
		0.767765, -0.117150, -0.629931,
		0.593168, 0.501677, 0.629660,
		42.449116, 38.611046, 34.077858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247978, 37.736107, 33.922596>,  <42.033897, 38.259872, 33.637096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247978, 37.736107, 33.922596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451225, 38.029625, 34.102974>,  <42.573174, 38.205734, 34.211201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451225, 38.029625, 34.102974>,  <42.247978, 37.736107, 33.922596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451225, 38.029625, 34.102974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476601, -0.675664, 0.562433,
		0.717401, -0.070861, -0.693047,
		0.508121, 0.733797, 0.450949,
		42.603661, 38.249763, 34.238258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894703, 37.516216, 33.983265>,  <42.247978, 37.736107, 33.922596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894703, 37.516216, 33.983265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850414, 37.792011, 34.269581>,  <42.823841, 37.957489, 34.441372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850414, 37.792011, 34.269581>,  <42.894703, 37.516216, 33.983265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850414, 37.792011, 34.269581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351575, -0.646477, 0.677099,
		0.929590, 0.326620, -0.170828,
		-0.110718, 0.689483, 0.715790,
		42.817200, 37.998856, 34.484318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567524, 37.778862, 34.202469>,  <42.894703, 37.516216, 33.983265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567524, 37.778862, 34.202469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280849, 37.754704, 34.480377>,  <43.108845, 37.740208, 34.647121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280849, 37.754704, 34.480377>,  <43.567524, 37.778862, 34.202469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280849, 37.754704, 34.480377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442802, -0.809067, 0.386442,
		0.538780, 0.584605, 0.606591,
		-0.716689, -0.060392, 0.694773,
		43.065842, 37.736588, 34.688808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881973, 37.838390, 34.882679>,  <43.567524, 37.778862, 34.202469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881973, 37.838390, 34.882679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563488, 37.605896, 34.815483>,  <43.372398, 37.466400, 34.775166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563488, 37.605896, 34.815483>,  <43.881973, 37.838390, 34.882679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563488, 37.605896, 34.815483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450119, -0.754600, 0.477464,
		-0.404282, 0.304547, 0.862443,
		-0.796209, -0.581232, -0.167989,
		43.324627, 37.431526, 34.765087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556690, 37.626171, 35.565933>,  <43.881973, 37.838390, 34.882679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556690, 37.626171, 35.565933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481441, 37.364334, 35.273052>,  <43.436291, 37.207233, 35.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481441, 37.364334, 35.273052>,  <43.556690, 37.626171, 35.565933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481441, 37.364334, 35.273052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322233, -0.745382, 0.583585,
		-0.927780, -0.126153, 0.351156,
		-0.188125, -0.654592, -0.732201,
		43.425003, 37.167957, 35.053391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519135, 37.027573, 35.853317>,  <43.556690, 37.626171, 35.565933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519135, 37.027573, 35.853317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560184, 36.898613, 35.476906>,  <43.584816, 36.821236, 35.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560184, 36.898613, 35.476906>,  <43.519135, 37.027573, 35.853317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560184, 36.898613, 35.476906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442053, -0.832690, 0.333492,
		-0.891099, -0.450208, 0.057060,
		0.102627, -0.322398, -0.941025,
		43.590973, 36.801895, 35.194599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270683, 36.371868, 35.631519>,  <43.519135, 37.027573, 35.853317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270683, 36.371868, 35.631519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550259, 36.414097, 35.348579>,  <43.718002, 36.439434, 35.178814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.550259, 36.414097, 35.348579>,  <43.270683, 36.371868, 35.631519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550259, 36.414097, 35.348579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416981, -0.863697, 0.283115,
		-0.581048, -0.492831, -0.647689,
		0.698934, 0.105571, -0.707351,
		43.759937, 36.445766, 35.136375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350624, 35.732662, 35.353542>,  <43.270683, 36.371868, 35.631519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350624, 35.732662, 35.353542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681332, 35.945740, 35.281216>,  <43.879757, 36.073586, 35.237820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681332, 35.945740, 35.281216>,  <43.350624, 35.732662, 35.353542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681332, 35.945740, 35.281216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562196, -0.771070, 0.298975,
		0.019837, -0.348839, -0.936973,
		0.826766, 0.532694, -0.180820,
		43.929363, 36.105549, 35.226971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754150, 35.406876, 34.828823>,  <43.350624, 35.732662, 35.353542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754150, 35.406876, 34.828823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929714, 35.617054, 35.120373>,  <44.035053, 35.743160, 35.295303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929714, 35.617054, 35.120373>,  <43.754150, 35.406876, 34.828823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929714, 35.617054, 35.120373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514258, -0.812091, 0.275766,
		0.736815, 0.253794, -0.626652,
		0.438911, 0.525449, 0.728876,
		44.061386, 35.774689, 35.339035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446980, 35.612000, 34.804951>,  <43.754150, 35.406876, 34.828823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446980, 35.612000, 34.804951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379059, 35.512154, 35.186287>,  <44.338306, 35.452244, 35.415089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379059, 35.512154, 35.186287>,  <44.446980, 35.612000, 34.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379059, 35.512154, 35.186287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612523, -0.784562, -0.096326,
		0.771999, 0.567587, 0.286117,
		-0.169803, -0.249616, 0.953341,
		44.328117, 35.437267, 35.472290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980576, 35.291676, 35.040840>,  <44.446980, 35.612000, 34.804951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980576, 35.291676, 35.040840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713417, 35.166889, 35.311127>,  <44.553123, 35.092018, 35.473301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713417, 35.166889, 35.311127>,  <44.980576, 35.291676, 35.040840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713417, 35.166889, 35.311127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495407, -0.863900, 0.090826,
		0.555421, 0.395419, 0.731540,
		-0.667892, -0.311963, 0.675721,
		44.513050, 35.073299, 35.513844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813251, 35.908253, 35.495808>,  <44.980576, 35.291676, 35.040840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813251, 35.908253, 35.495808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715969, 35.672905, 35.804268>,  <44.657600, 35.531696, 35.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715969, 35.672905, 35.804268>,  <44.813251, 35.908253, 35.495808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715969, 35.672905, 35.804268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923453, -0.383708, -0.001519,
		0.296790, 0.711751, 0.636652,
		-0.243208, -0.588369, 0.771150,
		44.643005, 35.496395, 36.035614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175217, 36.060562, 36.237370>,  <44.813251, 35.908253, 35.495808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175217, 36.060562, 36.237370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088009, 35.673588, 36.185940>,  <45.035683, 35.441402, 36.155083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088009, 35.673588, 36.185940>,  <45.175217, 36.060562, 36.237370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088009, 35.673588, 36.185940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969391, -0.229913, 0.086148,
		-0.112903, -0.105854, 0.987951,
		-0.218024, -0.967437, -0.128572,
		45.022602, 35.383358, 36.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378075, 35.671844, 36.822536>,  <45.175217, 36.060562, 36.237370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378075, 35.671844, 36.822536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382126, 35.431820, 36.502583>,  <45.384556, 35.287804, 36.310608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382126, 35.431820, 36.502583>,  <45.378075, 35.671844, 36.822536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382126, 35.431820, 36.502583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979753, -0.154002, 0.127935,
		-0.199953, -0.784988, 0.586355,
		0.010128, -0.600064, -0.799888,
		45.385162, 35.251801, 36.262615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863770, 35.202347, 37.080933>,  <45.378075, 35.671844, 36.822536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863770, 35.202347, 37.080933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836102, 35.252678, 36.685078>,  <45.819500, 35.282875, 36.447563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836102, 35.252678, 36.685078>,  <45.863770, 35.202347, 37.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836102, 35.252678, 36.685078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991489, 0.118351, -0.054248,
		0.110298, -0.984967, -0.132944,
		-0.069167, 0.125829, -0.989638,
		45.815353, 35.290428, 36.388187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193714, 34.684528, 36.675991>,  <45.863770, 35.202347, 37.080933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193714, 34.684528, 36.675991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203213, 35.023815, 36.464344>,  <46.208912, 35.227386, 36.337357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203213, 35.023815, 36.464344>,  <46.193714, 34.684528, 36.675991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203213, 35.023815, 36.464344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998181, -0.049455, -0.034487,
		-0.055419, -0.527333, -0.847850,
		0.023744, 0.848218, -0.529114,
		46.210335, 35.278282, 36.305611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616695, 34.530663, 36.046219>,  <46.193714, 34.684528, 36.675991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616695, 34.530663, 36.046219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633499, 34.908897, 36.175274>,  <46.643581, 35.135838, 36.252708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633499, 34.908897, 36.175274>,  <46.616695, 34.530663, 36.046219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633499, 34.908897, 36.175274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999082, -0.042463, -0.005623,
		0.008384, 0.322579, -0.946505,
		0.042005, 0.945590, 0.322639,
		46.646099, 35.192574, 36.272064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.100628, 34.822021, 35.608242>,  <46.616695, 34.530663, 36.046219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.100628, 34.822021, 35.608242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069378, 34.991283, 35.969315>,  <47.050629, 35.092842, 36.185959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069378, 34.991283, 35.969315>,  <47.100628, 34.822021, 35.608242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069378, 34.991283, 35.969315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977411, -0.145846, 0.152962,
		0.196380, 0.894240, -0.402206,
		-0.078125, 0.423160, 0.902681,
		47.045940, 35.118233, 36.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772449, 34.661480, 35.196831>,  <47.100628, 34.822021, 35.608242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772449, 34.661480, 35.196831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666721, 34.917053, 34.907860>,  <47.603283, 35.070396, 34.734478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666721, 34.917053, 34.907860>,  <47.772449, 34.661480, 35.196831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666721, 34.917053, 34.907860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958406, -0.090400, 0.270715,
		0.107662, 0.763931, 0.636254,
		-0.264324, 0.638935, -0.722423,
		47.587425, 35.108734, 34.691132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.926163, 34.316635, 25.672180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.564651, 34.157677, 25.608616>,  <41.347744, 34.062302, 25.570478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.564651, 34.157677, 25.608616>,  <41.926163, 34.316635, 25.672180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564651, 34.157677, 25.608616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266637, 0.232368, 0.935366,
		-0.334789, 0.887737, -0.315972,
		-0.903781, -0.397400, -0.158909,
		41.293518, 34.038456, 25.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451420, 34.830421, 25.970734>,  <41.926163, 34.316635, 25.672180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451420, 34.830421, 25.970734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255810, 34.484104, 25.928291>,  <41.138443, 34.276314, 25.902826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255810, 34.484104, 25.928291>,  <41.451420, 34.830421, 25.970734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255810, 34.484104, 25.928291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533574, 0.200685, 0.821599,
		-0.690042, 0.458394, -0.560104,
		-0.489021, -0.865795, -0.106106,
		41.109104, 34.224365, 25.896460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699474, 34.961433, 25.998117>,  <41.451420, 34.830421, 25.970734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699474, 34.961433, 25.998117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761513, 34.576130, 26.085819>,  <40.798737, 34.344948, 26.138441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.761513, 34.576130, 26.085819>,  <40.699474, 34.961433, 25.998117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761513, 34.576130, 26.085819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127126, 0.200635, 0.971383,
		-0.979686, -0.178532, -0.091337,
		0.155098, -0.963261, 0.219255,
		40.808041, 34.287151, 26.151596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163109, 34.844891, 26.425285>,  <40.699474, 34.961433, 25.998117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163109, 34.844891, 26.425285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433899, 34.562519, 26.508583>,  <40.596375, 34.393097, 26.558561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433899, 34.562519, 26.508583>,  <40.163109, 34.844891, 26.425285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433899, 34.562519, 26.508583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072249, 0.217833, 0.973308,
		-0.732451, -0.673951, 0.096464,
		0.676975, -0.705931, 0.208244,
		40.636993, 34.350739, 26.571056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820541, 34.382225, 26.855408>,  <40.163109, 34.844891, 26.425285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820541, 34.382225, 26.855408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210590, 34.323368, 26.921726>,  <40.444618, 34.288052, 26.961517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210590, 34.323368, 26.921726>,  <39.820541, 34.382225, 26.855408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210590, 34.323368, 26.921726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144456, 0.145505, 0.978755,
		-0.168145, -0.978354, 0.120629,
		0.975120, -0.147147, 0.165795,
		40.503128, 34.279224, 26.971464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913471, 33.821789, 27.407242>,  <39.820541, 34.382225, 26.855408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913471, 33.821789, 27.407242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257412, 34.025238, 27.389545>,  <40.463776, 34.147308, 27.378927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257412, 34.025238, 27.389545>,  <39.913471, 33.821789, 27.407242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257412, 34.025238, 27.389545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026331, 0.042355, 0.998756,
		0.509867, -0.859945, 0.023026,
		0.859851, 0.508626, -0.044239,
		40.515366, 34.177826, 27.376274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255154, 33.507137, 27.938242>,  <39.913471, 33.821789, 27.407242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255154, 33.507137, 27.938242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471210, 33.839081, 27.882273>,  <40.600845, 34.038246, 27.848692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471210, 33.839081, 27.882273>,  <40.255154, 33.507137, 27.938242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471210, 33.839081, 27.882273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177116, 0.050444, 0.982896,
		0.822722, -0.555690, -0.119733,
		0.540146, 0.829858, -0.139923,
		40.633255, 34.088039, 27.840296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633862, 33.623859, 28.510788>,  <40.255154, 33.507137, 27.938242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633862, 33.623859, 28.510788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658543, 33.998360, 28.372444>,  <40.673351, 34.223061, 28.289438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658543, 33.998360, 28.372444>,  <40.633862, 33.623859, 28.510788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658543, 33.998360, 28.372444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075007, 0.349890, 0.933783,
		0.995272, -0.031677, 0.091816,
		0.061705, 0.936255, -0.345859,
		40.677055, 34.279236, 28.268686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113834, 34.023281, 28.971340>,  <40.633862, 33.623859, 28.510788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113834, 34.023281, 28.971340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.849117, 34.268890, 28.799292>,  <40.690289, 34.416256, 28.696062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.849117, 34.268890, 28.799292>,  <41.113834, 34.023281, 28.971340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849117, 34.268890, 28.799292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214853, 0.394325, 0.893502,
		0.718242, 0.683724, -0.129035,
		-0.661791, 0.614027, -0.430121,
		40.650581, 34.453098, 28.670256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339123, 34.648285, 29.160530>,  <41.113834, 34.023281, 28.971340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339123, 34.648285, 29.160530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957809, 34.708611, 29.055834>,  <40.729023, 34.744804, 28.993017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.957809, 34.708611, 29.055834>,  <41.339123, 34.648285, 29.160530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957809, 34.708611, 29.055834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171206, 0.444128, 0.879453,
		0.248876, 0.883180, -0.397560,
		-0.953283, 0.150810, -0.261739,
		40.671825, 34.753853, 28.977312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124546, 35.387253, 29.344172>,  <41.339123, 34.648285, 29.160530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124546, 35.387253, 29.344172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788097, 35.172165, 29.320957>,  <40.586227, 35.043114, 29.307030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788097, 35.172165, 29.320957>,  <41.124546, 35.387253, 29.344172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788097, 35.172165, 29.320957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326121, 0.418661, 0.847566,
		-0.431455, 0.731835, -0.527508,
		-0.841125, -0.537718, -0.058034,
		40.535759, 35.010849, 29.303547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648643, 35.877289, 29.431000>,  <41.124546, 35.387253, 29.344172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648643, 35.877289, 29.431000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458748, 35.538597, 29.527067>,  <40.344810, 35.335384, 29.584707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458748, 35.538597, 29.527067>,  <40.648643, 35.877289, 29.431000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458748, 35.538597, 29.527067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500630, 0.484224, 0.717563,
		-0.723874, 0.220418, -0.653775,
		-0.474737, -0.846725, 0.240169,
		40.316326, 35.284580, 29.599117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970421, 36.075073, 29.419046>,  <40.648643, 35.877289, 29.431000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970421, 36.075073, 29.419046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992817, 35.744778, 29.643553>,  <40.006252, 35.546600, 29.778257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992817, 35.744778, 29.643553>,  <39.970421, 36.075073, 29.419046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992817, 35.744778, 29.643553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643728, 0.399856, 0.652480,
		-0.763204, -0.397834, -0.509164,
		0.055987, -0.825738, 0.561268,
		40.009613, 35.497055, 29.811934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384186, 36.189388, 29.737495>,  <39.970421, 36.075073, 29.419046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384186, 36.189388, 29.737495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557766, 35.905022, 29.958868>,  <39.661915, 35.734402, 30.091692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557766, 35.905022, 29.958868>,  <39.384186, 36.189388, 29.737495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557766, 35.905022, 29.958868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482994, 0.334978, 0.809016,
		-0.760528, -0.618378, -0.198004,
		0.433950, -0.710914, 0.553433,
		39.687950, 35.691746, 30.124897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723507, 35.981308, 30.063026>,  <39.384186, 36.189388, 29.737495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723507, 35.981308, 30.063026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044594, 35.864391, 30.270954>,  <39.237247, 35.794243, 30.395712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044594, 35.864391, 30.270954>,  <38.723507, 35.981308, 30.063026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044594, 35.864391, 30.270954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439735, 0.298701, 0.847001,
		-0.402840, -0.908485, 0.111242,
		0.802716, -0.292289, 0.519822,
		39.285408, 35.776703, 30.426901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459782, 35.515831, 30.491652>,  <38.723507, 35.981308, 30.063026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459782, 35.515831, 30.491652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805805, 35.630955, 30.656013>,  <39.013420, 35.700031, 30.754631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805805, 35.630955, 30.656013>,  <38.459782, 35.515831, 30.491652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805805, 35.630955, 30.656013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478776, 0.228981, 0.847550,
		0.149845, -0.929910, 0.335879,
		0.865055, 0.287812, 0.410907,
		39.065323, 35.717300, 30.779285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359016, 35.329456, 31.142292>,  <38.459782, 35.515831, 30.491652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359016, 35.329456, 31.142292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674541, 35.572319, 31.180525>,  <38.863857, 35.718037, 31.203465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.674541, 35.572319, 31.180525>,  <38.359016, 35.329456, 31.142292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674541, 35.572319, 31.180525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346075, 0.310221, 0.885435,
		0.507951, -0.731517, 0.454828,
		0.788808, 0.607162, 0.095583,
		38.911182, 35.754467, 31.209200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571369, 35.277782, 31.831112>,  <38.359016, 35.329456, 31.142292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571369, 35.277782, 31.831112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722649, 35.619793, 31.689190>,  <38.813416, 35.825001, 31.604036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722649, 35.619793, 31.689190>,  <38.571369, 35.277782, 31.831112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722649, 35.619793, 31.689190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356396, 0.488217, 0.796634,
		0.854369, -0.174837, 0.489373,
		0.378201, 0.855030, -0.354806,
		38.836109, 35.876301, 31.582748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619625, 35.766125, 32.407936>,  <38.571369, 35.277782, 31.831112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619625, 35.766125, 32.407936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706860, 36.051975, 32.142078>,  <38.759201, 36.223484, 31.982565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706860, 36.051975, 32.142078>,  <38.619625, 35.766125, 32.407936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706860, 36.051975, 32.142078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313268, 0.696256, 0.645825,
		0.924285, 0.067367, 0.375712,
		0.218085, 0.714625, -0.664643,
		38.772285, 36.266361, 31.942686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071220, 36.362297, 32.760372>,  <38.619625, 35.766125, 32.407936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071220, 36.362297, 32.760372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858898, 36.487331, 32.445278>,  <38.731506, 36.562351, 32.256222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858898, 36.487331, 32.445278>,  <39.071220, 36.362297, 32.760372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858898, 36.487331, 32.445278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427007, 0.704245, 0.567190,
		0.732059, 0.637438, -0.240338,
		-0.530805, 0.312590, -0.787739,
		38.699657, 36.581108, 32.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044270, 36.996529, 32.713547>,  <39.071220, 36.362297, 32.760372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044270, 36.996529, 32.713547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713371, 36.937649, 32.496658>,  <38.514832, 36.902321, 32.366528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713371, 36.937649, 32.496658>,  <39.044270, 36.996529, 32.713547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713371, 36.937649, 32.496658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431760, 0.784089, 0.445856,
		0.359514, 0.602939, -0.712190,
		-0.827244, -0.147204, -0.542216,
		38.465199, 36.893486, 32.333992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690399, 36.836445, 32.673580>,  <39.044270, 36.996529, 32.713547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690399, 36.836445, 32.673580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925785, 37.156399, 32.720749>,  <40.067017, 37.348370, 32.749050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.925785, 37.156399, 32.720749>,  <39.690399, 36.836445, 32.673580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925785, 37.156399, 32.720749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394314, -0.156589, -0.905537,
		-0.705855, 0.579372, -0.407550,
		0.588460, 0.799880, 0.117925,
		40.102322, 37.396362, 32.756126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584419, 37.255535, 32.077930>,  <39.690399, 36.836445, 32.673580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584419, 37.255535, 32.077930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950390, 37.315552, 32.227806>,  <40.169971, 37.351562, 32.317730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.950390, 37.315552, 32.227806>,  <39.584419, 37.255535, 32.077930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950390, 37.315552, 32.227806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403615, -0.341558, -0.848783,
		0.000626, 0.927807, -0.373060,
		0.914929, 0.150041, 0.374690,
		40.224869, 37.360565, 32.340214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027271, 37.688568, 31.531715>,  <39.584419, 37.255535, 32.077930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027271, 37.688568, 31.531715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297607, 37.491081, 31.750612>,  <40.459808, 37.372589, 31.881950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297607, 37.491081, 31.750612>,  <40.027271, 37.688568, 31.531715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297607, 37.491081, 31.750612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480354, -0.268085, -0.835099,
		0.559014, 0.827267, 0.055978,
		0.675843, -0.493721, 0.547244,
		40.500359, 37.342964, 31.914785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762955, 37.946918, 31.297419>,  <40.027271, 37.688568, 31.531715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762955, 37.946918, 31.297419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.839489, 37.604443, 31.489393>,  <40.885410, 37.398956, 31.604578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.839489, 37.604443, 31.489393>,  <40.762955, 37.946918, 31.297419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839489, 37.604443, 31.489393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646272, -0.258121, -0.718127,
		0.738731, 0.447572, 0.503940,
		0.191336, -0.856185, 0.479935,
		40.896889, 37.347588, 31.633373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429932, 37.922451, 31.352499>,  <40.762955, 37.946918, 31.297419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429932, 37.922451, 31.352499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350060, 37.536957, 31.423311>,  <41.302135, 37.305660, 31.465797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.350060, 37.536957, 31.423311>,  <41.429932, 37.922451, 31.352499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350060, 37.536957, 31.423311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739794, -0.266743, -0.617700,
		0.642521, 0.007624, 0.766230,
		-0.199677, -0.963737, 0.177029,
		41.290157, 37.247837, 31.476419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080513, 37.612995, 31.459202>,  <41.429932, 37.922451, 31.352499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080513, 37.612995, 31.459202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.854671, 37.297234, 31.362822>,  <41.719166, 37.107777, 31.304995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.854671, 37.297234, 31.362822>,  <42.080513, 37.612995, 31.459202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854671, 37.297234, 31.362822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754061, -0.374667, -0.539459,
		0.335577, -0.486272, 0.806801,
		-0.564606, -0.789407, -0.240949,
		41.685291, 37.060410, 31.290537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515137, 37.090656, 31.523464>,  <42.080513, 37.612995, 31.459202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515137, 37.090656, 31.523464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.223305, 36.976887, 31.274685>,  <42.048206, 36.908627, 31.125418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.223305, 36.976887, 31.274685>,  <42.515137, 37.090656, 31.523464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223305, 36.976887, 31.274685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667513, -0.494017, -0.557112,
		-0.148797, -0.821615, 0.550280,
		-0.729580, -0.284422, -0.621947,
		42.004433, 36.891560, 31.088100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603489, 36.276810, 31.369629>,  <42.515137, 37.090656, 31.523464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603489, 36.276810, 31.369629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.366642, 36.429398, 31.085691>,  <42.224533, 36.520950, 30.915329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.366642, 36.429398, 31.085691>,  <42.603489, 36.276810, 31.369629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366642, 36.429398, 31.085691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576350, -0.415175, -0.703882,
		-0.563217, -0.825901, 0.025975,
		-0.592121, 0.381467, -0.709842,
		42.189007, 36.543839, 30.872738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476585, 35.671329, 30.936804>,  <42.603489, 36.276810, 31.369629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476585, 35.671329, 30.936804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.382515, 35.997345, 30.724995>,  <42.326073, 36.192955, 30.597908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.382515, 35.997345, 30.724995>,  <42.476585, 35.671329, 30.936804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382515, 35.997345, 30.724995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559419, -0.332010, -0.759487,
		-0.794821, -0.474842, -0.377868,
		-0.235180, 0.815043, -0.529524,
		42.311962, 36.241859, 30.566137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409519, 35.487309, 30.197670>,  <42.476585, 35.671329, 30.936804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409519, 35.487309, 30.197670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.419994, 35.883446, 30.143211>,  <42.426281, 36.121128, 30.110537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.419994, 35.883446, 30.143211>,  <42.409519, 35.487309, 30.197670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419994, 35.883446, 30.143211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334137, -0.137034, -0.932510,
		-0.942161, -0.021069, -0.334499,
		0.026190, 0.990342, -0.136148,
		42.427853, 36.180550, 30.102367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924870, 35.632126, 29.594303>,  <42.409519, 35.487309, 30.197670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924870, 35.632126, 29.594303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.219120, 35.897858, 29.647249>,  <42.395668, 36.057297, 29.679016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.219120, 35.897858, 29.647249>,  <41.924870, 35.632126, 29.594303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219120, 35.897858, 29.647249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403611, -0.272927, -0.873275,
		-0.544020, 0.695824, -0.468904,
		0.735622, 0.664334, 0.132364,
		42.439808, 36.097157, 29.686958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023701, 36.015820, 29.053967>,  <41.924870, 35.632126, 29.594303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023701, 36.015820, 29.053967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.384506, 36.050758, 29.223076>,  <42.600990, 36.071720, 29.324541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.384506, 36.050758, 29.223076>,  <42.023701, 36.015820, 29.053967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384506, 36.050758, 29.223076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431029, -0.127494, -0.893286,
		-0.024123, 0.987986, -0.152650,
		0.902016, 0.087345, 0.422775,
		42.655109, 36.076962, 29.349909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422607, 36.443745, 28.598049>,  <42.023701, 36.015820, 29.053967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422607, 36.443745, 28.598049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717743, 36.283287, 28.815184>,  <42.894825, 36.187012, 28.945463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.717743, 36.283287, 28.815184>,  <42.422607, 36.443745, 28.598049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717743, 36.283287, 28.815184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586329, -0.017488, -0.809884,
		0.334376, 0.915847, 0.222301,
		0.737842, -0.401148, 0.542835,
		42.939095, 36.162941, 28.978035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949169, 36.878632, 28.436047>,  <42.422607, 36.443745, 28.598049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949169, 36.878632, 28.436047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.110016, 36.534378, 28.561012>,  <43.206524, 36.327824, 28.635990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.110016, 36.534378, 28.561012>,  <42.949169, 36.878632, 28.436047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110016, 36.534378, 28.561012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467663, -0.100279, -0.878201,
		0.787141, 0.499246, 0.362164,
		0.402121, -0.860638, 0.312412,
		43.230652, 36.276188, 28.654736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621014, 36.821922, 28.192190>,  <42.949169, 36.878632, 28.436047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621014, 36.821922, 28.192190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.542416, 36.436794, 28.266344>,  <43.495258, 36.205719, 28.310837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.542416, 36.436794, 28.266344>,  <43.621014, 36.821922, 28.192190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542416, 36.436794, 28.266344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477907, -0.259138, -0.839317,
		0.856151, -0.076323, 0.511058,
		-0.196493, -0.962820, 0.185386,
		43.483467, 36.147949, 28.321960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179688, 36.493938, 27.876432>,  <43.621014, 36.821922, 28.192190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179688, 36.493938, 27.876432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.925705, 36.193562, 27.949005>,  <43.773315, 36.013336, 27.992548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.925705, 36.193562, 27.949005>,  <44.179688, 36.493938, 27.876432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925705, 36.193562, 27.949005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302376, -0.457680, -0.836120,
		0.710918, -0.476036, 0.517673,
		-0.634952, -0.750945, 0.181431,
		43.735218, 35.968277, 28.003435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571667, 35.857868, 27.883215>,  <44.179688, 36.493938, 27.876432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571667, 35.857868, 27.883215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.186581, 35.785397, 27.802858>,  <43.955528, 35.741913, 27.754644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.186581, 35.785397, 27.802858>,  <44.571667, 35.857868, 27.883215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186581, 35.785397, 27.802858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269362, -0.573200, -0.773877,
		0.025061, -0.799134, 0.600631,
		-0.962713, -0.181181, -0.200892,
		43.897766, 35.731041, 27.742590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454758, 35.166992, 27.911821>,  <44.571667, 35.857868, 27.883215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454758, 35.166992, 27.911821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.169384, 35.306633, 27.668793>,  <43.998161, 35.390419, 27.522976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.169384, 35.306633, 27.668793>,  <44.454758, 35.166992, 27.911821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169384, 35.306633, 27.668793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380358, -0.535280, -0.754191,
		-0.588514, -0.769156, 0.249098,
		-0.713428, 0.349105, -0.607574,
		43.955357, 35.411362, 27.486521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229599, 34.674797, 27.528614>,  <44.454758, 35.166992, 27.911821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229599, 34.674797, 27.528614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.082497, 34.960331, 27.290222>,  <43.994236, 35.131653, 27.147186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.082497, 34.960331, 27.290222>,  <44.229599, 34.674797, 27.528614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082497, 34.960331, 27.290222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174459, -0.576551, -0.798219,
		-0.913411, -0.397524, 0.087495,
		-0.367757, 0.713837, -0.595979,
		43.972168, 35.174480, 27.111429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.780163, 34.319023, 27.085474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.823208, 34.672295, 26.902863>,  <43.849033, 34.884258, 26.793297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.823208, 34.672295, 26.902863>,  <43.780163, 34.319023, 27.085474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823208, 34.672295, 26.902863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281009, -0.413449, -0.866080,
		-0.953653, 0.221490, 0.203688,
		0.107613, 0.883177, -0.456527,
		43.855492, 34.937248, 26.765905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186455, 34.360588, 26.661596>,  <43.780163, 34.319023, 27.085474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186455, 34.360588, 26.661596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470036, 34.601646, 26.515062>,  <43.640182, 34.746281, 26.427141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.470036, 34.601646, 26.515062>,  <43.186455, 34.360588, 26.661596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470036, 34.601646, 26.515062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226298, -0.297583, -0.927488,
		-0.667966, 0.740444, -0.074594,
		0.708951, 0.602649, -0.366336,
		43.682720, 34.782440, 26.405161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830421, 34.696995, 26.104792>,  <43.186455, 34.360588, 26.661596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830421, 34.696995, 26.104792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222023, 34.745243, 26.039064>,  <43.456985, 34.774193, 25.999628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.222023, 34.745243, 26.039064>,  <42.830421, 34.696995, 26.104792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222023, 34.745243, 26.039064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132638, -0.235143, -0.962868,
		-0.154783, 0.964447, -0.214207,
		0.979004, 0.120624, -0.164318,
		43.515724, 34.781429, 25.989769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911385, 35.131069, 25.521534>,  <42.830421, 34.696995, 26.104792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911385, 35.131069, 25.521534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257977, 34.933022, 25.547050>,  <43.465931, 34.814194, 25.562361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.257977, 34.933022, 25.547050>,  <42.911385, 35.131069, 25.521534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257977, 34.933022, 25.547050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060385, -0.230799, -0.971126,
		0.495543, 0.837611, -0.229881,
		0.866482, -0.495116, 0.063791,
		43.517921, 34.784489, 25.566189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370453, 35.297714, 25.004896>,  <42.911385, 35.131069, 25.521534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370453, 35.297714, 25.004896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535862, 34.947639, 25.105331>,  <43.635105, 34.737595, 25.165592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.535862, 34.947639, 25.105331>,  <43.370453, 35.297714, 25.004896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535862, 34.947639, 25.105331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124127, -0.219007, -0.967796,
		0.901995, 0.431369, 0.018071,
		0.413520, -0.875190, 0.251088,
		43.659920, 34.685081, 25.180658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006878, 35.192562, 24.494091>,  <43.370453, 35.297714, 25.004896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006878, 35.192562, 24.494091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.913357, 34.829227, 24.632809>,  <43.857246, 34.611229, 24.716040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.913357, 34.829227, 24.632809>,  <44.006878, 35.192562, 24.494091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913357, 34.829227, 24.632809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052991, -0.368056, -0.928292,
		0.970840, -0.198656, 0.134184,
		-0.233798, -0.908334, 0.346797,
		43.843216, 34.556728, 24.736847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343933, 34.789822, 24.138882>,  <44.006878, 35.192562, 24.494091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343933, 34.789822, 24.138882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.100090, 34.506424, 24.281101>,  <43.953785, 34.336388, 24.366434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.100090, 34.506424, 24.281101>,  <44.343933, 34.789822, 24.138882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100090, 34.506424, 24.281101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076765, -0.499184, -0.863089,
		0.788976, -0.498853, 0.358695,
		-0.609610, -0.708492, 0.355550,
		43.917206, 34.293877, 24.387766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681652, 34.085587, 24.104513>,  <44.343933, 34.789822, 24.138882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681652, 34.085587, 24.104513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284000, 34.042343, 24.102415>,  <44.045410, 34.016396, 24.101156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.284000, 34.042343, 24.102415>,  <44.681652, 34.085587, 24.104513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284000, 34.042343, 24.102415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081546, -0.716256, -0.693057,
		0.071168, -0.689413, 0.720864,
		-0.994126, -0.108107, -0.005245,
		43.985764, 34.009911, 24.100842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515606, 33.455086, 24.031727>,  <44.681652, 34.085587, 24.104513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515606, 33.455086, 24.031727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.175274, 33.630104, 23.915354>,  <43.971073, 33.735115, 23.845530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.175274, 33.630104, 23.915354>,  <44.515606, 33.455086, 24.031727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175274, 33.630104, 23.915354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062149, -0.633606, -0.771155,
		-0.521750, -0.638042, 0.566285,
		-0.850831, 0.437545, -0.290931,
		43.920025, 33.761368, 23.828075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131355, 32.945312, 23.845182>,  <44.515606, 33.455086, 24.031727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131355, 32.945312, 23.845182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960716, 33.257305, 23.662037>,  <43.858334, 33.444500, 23.552151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.960716, 33.257305, 23.662037>,  <44.131355, 32.945312, 23.845182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960716, 33.257305, 23.662037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070731, -0.533458, -0.842864,
		-0.901671, -0.327179, 0.282742,
		-0.426598, 0.779984, -0.457863,
		43.832737, 33.491299, 23.524677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511192, 32.709251, 23.579521>,  <44.131355, 32.945312, 23.845182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511192, 32.709251, 23.579521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675423, 33.000374, 23.359806>,  <43.773960, 33.175049, 23.227976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675423, 33.000374, 23.359806>,  <43.511192, 32.709251, 23.579521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675423, 33.000374, 23.359806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149578, -0.540486, -0.827950,
		-0.899473, 0.422099, -0.113047,
		0.410578, 0.727810, -0.549290,
		43.798595, 33.218716, 23.195019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421524, 32.465271, 22.882986>,  <43.511192, 32.709251, 23.579521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421524, 32.465271, 22.882986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633011, 32.803719, 22.856033>,  <43.759903, 33.006786, 22.839861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633011, 32.803719, 22.856033>,  <43.421524, 32.465271, 22.882986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633011, 32.803719, 22.856033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246193, -0.228843, -0.941817,
		-0.812307, 0.481370, -0.329302,
		0.528721, 0.846117, -0.067381,
		43.791626, 33.057552, 22.835819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536827, 32.523273, 22.116644>,  <43.421524, 32.465271, 22.882986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536827, 32.523273, 22.116644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.802910, 32.787346, 22.256159>,  <43.962559, 32.945789, 22.339867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.802910, 32.787346, 22.256159>,  <43.536827, 32.523273, 22.116644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802910, 32.787346, 22.256159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483443, -0.024833, -0.875023,
		-0.569016, 0.750692, -0.335682,
		0.665209, 0.660185, 0.348786,
		44.002472, 32.985401, 22.360794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646751, 32.888683, 21.484936>,  <43.536827, 32.523273, 22.116644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646751, 32.888683, 21.484936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.954884, 32.948608, 21.732853>,  <44.139763, 32.984566, 21.881603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.954884, 32.948608, 21.732853>,  <43.646751, 32.888683, 21.484936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954884, 32.948608, 21.732853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625546, 0.010869, -0.780112,
		-0.123609, 0.988654, -0.085344,
		0.770333, 0.149816, 0.619792,
		44.185982, 32.993553, 21.918791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031384, 33.366955, 21.123676>,  <43.646751, 32.888683, 21.484936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031384, 33.366955, 21.123676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280033, 33.211273, 21.395588>,  <44.429222, 33.117867, 21.558735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.280033, 33.211273, 21.395588>,  <44.031384, 33.366955, 21.123676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280033, 33.211273, 21.395588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763057, 0.104798, -0.637779,
		0.176985, 0.915172, 0.362129,
		0.621627, -0.389202, 0.679780,
		44.466522, 33.094513, 21.599522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582802, 33.746548, 21.099003>,  <44.031384, 33.366955, 21.123676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582802, 33.746548, 21.099003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.716873, 33.414341, 21.276945>,  <44.797318, 33.215015, 21.383711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.716873, 33.414341, 21.276945>,  <44.582802, 33.746548, 21.099003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716873, 33.414341, 21.276945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730979, -0.068653, -0.678937,
		0.594409, 0.552749, 0.584078,
		0.335183, -0.830515, 0.444856,
		44.817429, 33.165188, 21.410402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267761, 33.840828, 21.171629>,  <44.582802, 33.746548, 21.099003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267761, 33.840828, 21.171629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208878, 33.445465, 21.156803>,  <45.173550, 33.208248, 21.147907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.208878, 33.445465, 21.156803>,  <45.267761, 33.840828, 21.171629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208878, 33.445465, 21.156803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628023, -0.064453, -0.775521,
		0.764145, -0.137439, 0.630233,
		-0.147207, -0.988411, -0.037063,
		45.164715, 33.148941, 21.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948826, 33.465439, 21.063095>,  <45.267761, 33.840828, 21.171629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948826, 33.465439, 21.063095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.648724, 33.240582, 20.923885>,  <45.468662, 33.105667, 20.840361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.648724, 33.240582, 20.923885>,  <45.948826, 33.465439, 21.063095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648724, 33.240582, 20.923885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505692, -0.148811, -0.849783,
		0.425909, -0.813543, 0.395916,
		-0.750251, -0.562141, -0.348023,
		45.423649, 33.071938, 20.819479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274414, 32.954166, 20.820047>,  <45.948826, 33.465439, 21.063095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274414, 32.954166, 20.820047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.934647, 32.910011, 20.613632>,  <45.730785, 32.883518, 20.489782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.934647, 32.910011, 20.613632>,  <46.274414, 32.954166, 20.820047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934647, 32.910011, 20.613632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527224, -0.135406, -0.838868,
		0.022728, -0.984621, 0.173217,
		-0.849422, -0.110390, -0.516039,
		45.679821, 32.876896, 20.458820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540741, 32.480988, 20.336811>,  <46.274414, 32.954166, 20.820047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540741, 32.480988, 20.336811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.194656, 32.632488, 20.205391>,  <45.987003, 32.723389, 20.126539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.194656, 32.632488, 20.205391>,  <46.540741, 32.480988, 20.336811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.194656, 32.632488, 20.205391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354848, -0.000395, -0.934924,
		-0.354238, -0.925496, -0.134059,
		-0.865216, 0.378756, -0.328550,
		45.935093, 32.746117, 20.106827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487526, 32.029678, 19.750147>,  <46.540741, 32.480988, 20.336811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487526, 32.029678, 19.750147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.260696, 32.352516, 19.684395>,  <46.124599, 32.546219, 19.644943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.260696, 32.352516, 19.684395>,  <46.487526, 32.029678, 19.750147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260696, 32.352516, 19.684395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295894, 0.013368, -0.955127,
		-0.768683, -0.590267, -0.246395,
		-0.567074, 0.807097, -0.164381,
		46.090572, 32.594646, 19.635080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980133, 31.871229, 19.220718>,  <46.487526, 32.029678, 19.750147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980133, 31.871229, 19.220718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.020767, 32.269146, 19.224051>,  <46.045147, 32.507896, 19.226049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.020767, 32.269146, 19.224051>,  <45.980133, 31.871229, 19.220718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020767, 32.269146, 19.224051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349082, -0.027805, -0.936680,
		-0.931570, 0.098059, -0.350088,
		0.101584, 0.994792, 0.008328,
		46.051243, 32.567585, 19.226549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365158, 32.304241, 18.832823>,  <45.980133, 31.871229, 19.220718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365158, 32.304241, 18.832823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.753933, 32.396900, 18.849171>,  <45.987198, 32.452496, 18.858980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.753933, 32.396900, 18.849171>,  <45.365158, 32.304241, 18.832823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753933, 32.396900, 18.849171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089303, -0.202642, -0.975172,
		-0.217611, 0.951460, -0.217643,
		0.971941, 0.231645, 0.040871,
		46.045517, 32.466393, 18.861431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588318, 32.410076, 18.785097>,  <45.365158, 32.304241, 18.832823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588318, 32.410076, 18.785097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328503, 32.339504, 18.489267>,  <44.172611, 32.297161, 18.311769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.328503, 32.339504, 18.489267>,  <44.588318, 32.410076, 18.785097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328503, 32.339504, 18.489267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760247, 0.136566, 0.635117,
		-0.011051, 0.974794, -0.222833,
		-0.649540, -0.176427, -0.739575,
		44.133640, 32.286575, 18.267395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071075, 32.860077, 18.921167>,  <44.588318, 32.410076, 18.785097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071075, 32.860077, 18.921167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.911896, 32.570202, 18.696144>,  <43.816387, 32.396278, 18.561131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.911896, 32.570202, 18.696144>,  <44.071075, 32.860077, 18.921167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911896, 32.570202, 18.696144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789155, -0.042300, 0.612735,
		-0.467835, 0.687783, -0.555054,
		-0.397950, -0.724683, -0.562557,
		43.792511, 32.352798, 18.527376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406052, 33.123535, 18.745892>,  <44.071075, 32.860077, 18.921167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406052, 33.123535, 18.745892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.411205, 32.726162, 18.700401>,  <43.414299, 32.487740, 18.673107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.411205, 32.726162, 18.700401>,  <43.406052, 33.123535, 18.745892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411205, 32.726162, 18.700401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824213, -0.074948, 0.561298,
		-0.566133, 0.086500, -0.819763,
		0.012888, -0.993429, -0.113725,
		43.415073, 32.428135, 18.666285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842426, 32.918262, 18.367943>,  <43.406052, 33.123535, 18.745892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842426, 32.918262, 18.367943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.963512, 32.593296, 18.567280>,  <43.036163, 32.398315, 18.686882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.963512, 32.593296, 18.567280>,  <42.842426, 32.918262, 18.367943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963512, 32.593296, 18.567280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798336, 0.069463, 0.598193,
		-0.520597, -0.578928, -0.627551,
		0.302719, -0.812414, 0.498342,
		43.054329, 32.349571, 18.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254360, 32.340034, 18.420179>,  <42.842426, 32.918262, 18.367943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254360, 32.340034, 18.420179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497635, 32.290474, 18.733805>,  <42.643600, 32.260738, 18.921980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.497635, 32.290474, 18.733805>,  <42.254360, 32.340034, 18.420179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497635, 32.290474, 18.733805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788310, 0.021617, 0.614898,
		-0.093137, -0.992059, -0.084527,
		0.608188, -0.123903, 0.784063,
		42.680092, 32.253304, 18.969023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892414, 32.055744, 18.923985>,  <42.254360, 32.340034, 18.420179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892414, 32.055744, 18.923985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202347, 32.123463, 19.167616>,  <42.388306, 32.164093, 19.313795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.202347, 32.123463, 19.167616>,  <41.892414, 32.055744, 18.923985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202347, 32.123463, 19.167616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604279, -0.084677, 0.792261,
		0.185705, -0.981920, 0.036695,
		0.774829, 0.169301, 0.609079,
		42.434795, 32.174252, 19.350340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781635, 31.647444, 19.393126>,  <41.892414, 32.055744, 18.923985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781635, 31.647444, 19.393126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035748, 31.903091, 19.566536>,  <42.188213, 32.056480, 19.670582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035748, 31.903091, 19.566536>,  <41.781635, 31.647444, 19.393126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035748, 31.903091, 19.566536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584024, 0.030284, 0.811171,
		0.505306, -0.768511, 0.392500,
		0.635281, 0.639119, 0.433526,
		42.226334, 32.094826, 19.696594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857826, 31.353579, 20.076225>,  <41.781635, 31.647444, 19.393126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857826, 31.353579, 20.076225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963581, 31.739338, 20.073750>,  <42.027035, 31.970793, 20.072264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.963581, 31.739338, 20.073750>,  <41.857826, 31.353579, 20.076225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963581, 31.739338, 20.073750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516072, 0.146897, 0.843855,
		0.814721, -0.219909, 0.536536,
		0.264386, 0.964397, -0.006191,
		42.042896, 32.028656, 20.071892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221191, 31.441368, 20.790913>,  <41.857826, 31.353579, 20.076225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221191, 31.441368, 20.790913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104927, 31.801300, 20.660791>,  <42.035168, 32.017258, 20.582718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.104927, 31.801300, 20.660791>,  <42.221191, 31.441368, 20.790913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104927, 31.801300, 20.660791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343160, 0.219328, 0.913310,
		0.893171, 0.377097, 0.245035,
		-0.290664, 0.899829, -0.325303,
		42.017727, 32.071247, 20.563200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535233, 31.983706, 21.178028>,  <42.221191, 31.441368, 20.790913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535233, 31.983706, 21.178028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.213455, 32.181213, 21.045931>,  <42.020390, 32.299717, 20.966673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.213455, 32.181213, 21.045931>,  <42.535233, 31.983706, 21.178028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213455, 32.181213, 21.045931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165218, 0.348023, 0.922812,
		0.570588, 0.796914, -0.198386,
		-0.804445, 0.493769, -0.330243,
		41.972122, 32.329346, 20.946857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688457, 32.681709, 21.350346>,  <42.535233, 31.983706, 21.178028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688457, 32.681709, 21.350346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293625, 32.660351, 21.289930>,  <42.056725, 32.647537, 21.253681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293625, 32.660351, 21.289930>,  <42.688457, 32.681709, 21.350346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293625, 32.660351, 21.289930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156307, 0.527589, 0.834996,
		0.035100, 0.847820, -0.529121,
		-0.987085, -0.053397, -0.151039,
		41.997498, 32.644333, 21.244619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386356, 33.351559, 21.543465>,  <42.688457, 32.681709, 21.350346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386356, 33.351559, 21.543465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047085, 33.140526, 21.562441>,  <41.843521, 33.013905, 21.573826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047085, 33.140526, 21.562441>,  <42.386356, 33.351559, 21.543465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047085, 33.140526, 21.562441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200951, 0.403333, 0.892716,
		-0.490119, 0.747647, -0.448116,
		-0.848176, -0.527586, 0.047441,
		41.792633, 32.982250, 21.576674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973801, 33.918915, 21.791449>,  <42.386356, 33.351559, 21.543465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973801, 33.918915, 21.791449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.808235, 33.567947, 21.888453>,  <41.708897, 33.357368, 21.946655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.808235, 33.567947, 21.888453>,  <41.973801, 33.918915, 21.791449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808235, 33.567947, 21.888453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209426, 0.351040, 0.912640,
		-0.885900, 0.326964, -0.329054,
		-0.413911, -0.877420, 0.242511,
		41.684063, 33.304722, 21.961206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326366, 34.075516, 22.117123>,  <41.973801, 33.918915, 21.791449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326366, 34.075516, 22.117123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423168, 33.705589, 22.234528>,  <41.481251, 33.483635, 22.304972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.423168, 33.705589, 22.234528>,  <41.326366, 34.075516, 22.117123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423168, 33.705589, 22.234528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173536, 0.256373, 0.950873,
		-0.954629, -0.281054, -0.098444,
		0.242009, -0.924815, 0.293514,
		41.495770, 33.428146, 22.322582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673679, 33.868965, 22.564022>,  <41.326366, 34.075516, 22.117123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673679, 33.868965, 22.564022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.983944, 33.640350, 22.671125>,  <41.170101, 33.503181, 22.735388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.983944, 33.640350, 22.671125>,  <40.673679, 33.868965, 22.564022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983944, 33.640350, 22.671125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146905, 0.249100, 0.957271,
		-0.613818, -0.781851, 0.109255,
		0.775659, -0.571540, 0.267760,
		41.216640, 33.468887, 22.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452324, 33.619274, 23.248854>,  <40.673679, 33.868965, 22.564022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452324, 33.619274, 23.248854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841377, 33.527401, 23.234882>,  <41.074810, 33.472275, 23.226500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841377, 33.527401, 23.234882>,  <40.452324, 33.619274, 23.248854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841377, 33.527401, 23.234882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050682, 0.063050, 0.996723,
		-0.226733, -0.971220, 0.072966,
		0.972638, -0.229688, -0.034928,
		41.133167, 33.458496, 23.224403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529415, 33.008545, 23.634338>,  <40.452324, 33.619274, 23.248854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529415, 33.008545, 23.634338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.872120, 33.214832, 23.633755>,  <41.077744, 33.338604, 23.633404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.872120, 33.214832, 23.633755>,  <40.529415, 33.008545, 23.634338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872120, 33.214832, 23.633755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031308, 0.054836, 0.998004,
		0.514765, -0.855004, 0.063128,
		0.856759, 0.515714, -0.001459,
		41.129147, 33.369545, 23.633316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873966, 32.683548, 24.077301>,  <40.529415, 33.008545, 23.634338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873966, 32.683548, 24.077301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.080109, 33.024345, 24.040386>,  <41.203796, 33.228825, 24.018238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.080109, 33.024345, 24.040386>,  <40.873966, 32.683548, 24.077301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080109, 33.024345, 24.040386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052657, 0.138968, 0.988896,
		0.855355, -0.504776, 0.116482,
		0.515359, 0.851991, -0.092286,
		41.234715, 33.279942, 24.012701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312912, 32.618484, 24.557779>,  <40.873966, 32.683548, 24.077301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312912, 32.618484, 24.557779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343266, 33.013340, 24.501484>,  <41.361477, 33.250252, 24.467707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343266, 33.013340, 24.501484>,  <41.312912, 32.618484, 24.557779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343266, 33.013340, 24.501484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037033, 0.143837, 0.988908,
		0.996429, -0.069828, 0.047471,
		0.075881, 0.987135, -0.140737,
		41.366032, 33.309479, 24.459263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866085, 32.935127, 25.013918>,  <41.312912, 32.618484, 24.557779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866085, 32.935127, 25.013918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.606960, 33.224495, 24.918419>,  <41.451485, 33.398117, 24.861118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.606960, 33.224495, 24.918419>,  <41.866085, 32.935127, 25.013918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606960, 33.224495, 24.918419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055050, 0.357038, 0.932466,
		0.759805, 0.590923, -0.271119,
		-0.647816, 0.723418, -0.238749,
		41.412617, 33.441521, 24.846794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075077, 33.498180, 25.358170>,  <41.866085, 32.935127, 25.013918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075077, 33.498180, 25.358170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698185, 33.602703, 25.274334>,  <41.472050, 33.665417, 25.224033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698185, 33.602703, 25.274334>,  <42.075077, 33.498180, 25.358170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698185, 33.602703, 25.274334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106978, 0.358184, 0.927502,
		0.317437, 0.896338, -0.309536,
		-0.942226, 0.261310, -0.209589,
		41.415516, 33.681095, 25.211456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.909485, 35.731014, 29.617115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586826, 35.852882, 29.414536>,  <43.393230, 35.926003, 29.292988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586826, 35.852882, 29.414536>,  <43.909485, 35.731014, 29.617115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586826, 35.852882, 29.414536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398599, 0.352255, 0.846779,
		0.436387, 0.884926, -0.162706,
		-0.806650, 0.304669, -0.506450,
		43.344830, 35.944283, 29.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782425, 36.411724, 29.863537>,  <43.909485, 35.731014, 29.617115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782425, 36.411724, 29.863537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437012, 36.286808, 29.705149>,  <43.229763, 36.211857, 29.610115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.437012, 36.286808, 29.705149>,  <43.782425, 36.411724, 29.863537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437012, 36.286808, 29.705149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504292, 0.530371, 0.681466,
		-0.002802, 0.788151, -0.615476,
		-0.863529, -0.312289, -0.395972,
		43.177952, 36.193123, 29.586357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396526, 36.956978, 29.909616>,  <43.782425, 36.411724, 29.863537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396526, 36.956978, 29.909616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114452, 36.679684, 29.850109>,  <42.945206, 36.513306, 29.814405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114452, 36.679684, 29.850109>,  <43.396526, 36.956978, 29.909616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114452, 36.679684, 29.850109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615478, 0.494357, 0.613839,
		-0.351993, 0.524434, -0.775287,
		-0.705187, -0.693239, -0.148767,
		42.902897, 36.471714, 29.805479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798923, 37.391857, 30.002235>,  <43.396526, 36.956978, 29.909616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798923, 37.391857, 30.002235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654976, 37.018890, 30.015417>,  <42.568607, 36.795109, 30.023325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.654976, 37.018890, 30.015417>,  <42.798923, 37.391857, 30.002235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654976, 37.018890, 30.015417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639994, 0.272398, 0.718475,
		-0.678897, 0.237468, -0.694772,
		-0.359869, -0.932421, 0.032952,
		42.547016, 36.739162, 30.025303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050896, 37.354156, 29.882839>,  <42.798923, 37.391857, 30.002235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050896, 37.354156, 29.882839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118565, 37.001724, 30.059509>,  <42.159164, 36.790264, 30.165512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118565, 37.001724, 30.059509>,  <42.050896, 37.354156, 29.882839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118565, 37.001724, 30.059509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748269, 0.176846, 0.639389,
		-0.641462, -0.438660, -0.629368,
		0.169173, -0.881081, 0.441675,
		42.169315, 36.737400, 30.192013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422329, 36.971458, 29.915361>,  <42.050896, 37.354156, 29.882839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422329, 36.971458, 29.915361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.645252, 36.807934, 30.204435>,  <41.779007, 36.709820, 30.377880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.645252, 36.807934, 30.204435>,  <41.422329, 36.971458, 29.915361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645252, 36.807934, 30.204435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671631, 0.289781, 0.681865,
		-0.488177, -0.865388, -0.113075,
		0.557311, -0.408816, 0.722686,
		41.812447, 36.685287, 30.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943584, 36.514557, 30.398443>,  <41.422329, 36.971458, 29.915361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943584, 36.514557, 30.398443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.268150, 36.629650, 30.601940>,  <41.462891, 36.698708, 30.724039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.268150, 36.629650, 30.601940>,  <40.943584, 36.514557, 30.398443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268150, 36.629650, 30.601940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584082, 0.367289, 0.723842,
		0.021415, -0.884482, 0.466082,
		0.811412, 0.287731, 0.508744,
		41.511574, 36.715969, 30.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853203, 36.091957, 31.016829>,  <40.943584, 36.514557, 30.398443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853203, 36.091957, 31.016829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111855, 36.385040, 31.101681>,  <41.267048, 36.560890, 31.152592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.111855, 36.385040, 31.101681>,  <40.853203, 36.091957, 31.016829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111855, 36.385040, 31.101681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557492, 0.264137, 0.787042,
		0.520642, -0.627189, 0.579280,
		0.646633, 0.732711, 0.212132,
		41.305843, 36.604855, 31.165321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139992, 35.972698, 31.621534>,  <40.853203, 36.091957, 31.016829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139992, 35.972698, 31.621534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166729, 36.368645, 31.571424>,  <41.182770, 36.606213, 31.541359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166729, 36.368645, 31.571424>,  <41.139992, 35.972698, 31.621534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166729, 36.368645, 31.571424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501837, 0.141871, 0.853248,
		0.862375, 0.005833, 0.506236,
		0.066843, 0.989868, -0.125274,
		41.186783, 36.665604, 31.533842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201851, 36.218388, 32.266685>,  <41.139992, 35.972698, 31.621534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201851, 36.218388, 32.266685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089447, 36.553455, 32.079350>,  <41.022007, 36.754498, 31.966949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.089447, 36.553455, 32.079350>,  <41.201851, 36.218388, 32.266685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089447, 36.553455, 32.079350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471572, 0.304503, 0.827586,
		0.835856, 0.453411, 0.309456,
		-0.281006, 0.837673, -0.468336,
		41.005146, 36.804756, 31.938848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319962, 36.729118, 32.687557>,  <41.201851, 36.218388, 32.266685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319962, 36.729118, 32.687557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070454, 36.932838, 32.450397>,  <40.920750, 37.055069, 32.308102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070454, 36.932838, 32.450397>,  <41.319962, 36.729118, 32.687557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070454, 36.932838, 32.450397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460481, 0.373485, 0.805274,
		0.631565, 0.775321, 0.001556,
		-0.623765, 0.509299, -0.592901,
		40.883324, 37.085629, 32.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293888, 37.399227, 33.090199>,  <41.319962, 36.729118, 32.687557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293888, 37.399227, 33.090199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.980293, 37.412781, 32.842258>,  <40.792137, 37.420914, 32.693493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.980293, 37.412781, 32.842258>,  <41.293888, 37.399227, 33.090199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980293, 37.412781, 32.842258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525869, 0.494377, 0.692137,
		0.329892, 0.868587, -0.369767,
		-0.783985, 0.033881, -0.619854,
		40.745098, 37.422947, 32.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167645, 38.188057, 32.924286>,  <41.293888, 37.399227, 33.090199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167645, 38.188057, 32.924286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838142, 37.964439, 32.886566>,  <40.640442, 37.830269, 32.863934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.838142, 37.964439, 32.886566>,  <41.167645, 38.188057, 32.924286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838142, 37.964439, 32.886566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405334, 0.464449, 0.787395,
		-0.396391, 0.686846, -0.609193,
		-0.823759, -0.559043, -0.094299,
		40.591015, 37.796726, 32.858276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549343, 38.638607, 33.077454>,  <41.167645, 38.188057, 32.924286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549343, 38.638607, 33.077454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459862, 38.253601, 33.138790>,  <40.406174, 38.022598, 33.175591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459862, 38.253601, 33.138790>,  <40.549343, 38.638607, 33.077454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459862, 38.253601, 33.138790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630967, 0.262930, 0.729896,
		-0.742856, 0.066531, -0.666136,
		-0.223708, -0.962518, 0.153340,
		40.392750, 37.964844, 33.184792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870125, 39.340271, 33.315773>,  <40.549343, 38.638607, 33.077454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870125, 39.340271, 33.315773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905289, 39.733036, 33.248699>,  <40.926388, 39.968697, 33.208454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905289, 39.733036, 33.248699>,  <40.870125, 39.340271, 33.315773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905289, 39.733036, 33.248699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104992, -0.158262, -0.981799,
		-0.990580, 0.103911, 0.089181,
		0.087905, 0.981914, -0.167681,
		40.931660, 40.027611, 33.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428291, 39.447971, 32.767845>,  <40.870125, 39.340271, 33.315773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428291, 39.447971, 32.767845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657162, 39.775944, 32.775112>,  <40.794483, 39.972729, 32.779472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.657162, 39.775944, 32.775112>,  <40.428291, 39.447971, 32.767845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657162, 39.775944, 32.775112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034751, 0.046374, -0.998320,
		-0.819396, 0.570580, 0.055027,
		0.572173, 0.819932, 0.018171,
		40.828815, 40.021923, 32.780563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162815, 39.934269, 32.327919>,  <40.428291, 39.447971, 32.767845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162815, 39.934269, 32.327919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550674, 40.030228, 32.346813>,  <40.783390, 40.087803, 32.358150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550674, 40.030228, 32.346813>,  <40.162815, 39.934269, 32.327919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550674, 40.030228, 32.346813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032787, 0.063886, -0.997418,
		-0.242299, 0.968693, 0.054082,
		0.969647, 0.239901, 0.047240,
		40.841568, 40.102200, 32.360985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319447, 40.440632, 31.687973>,  <40.162815, 39.934269, 32.327919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319447, 40.440632, 31.687973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673256, 40.306381, 31.817572>,  <40.885540, 40.225830, 31.895330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673256, 40.306381, 31.817572>,  <40.319447, 40.440632, 31.687973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673256, 40.306381, 31.817572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244132, -0.258790, -0.934573,
		0.397513, 0.905750, -0.146969,
		0.884524, -0.335625, 0.323995,
		40.938614, 40.205692, 31.914770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781830, 40.776657, 31.325247>,  <40.319447, 40.440632, 31.687973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781830, 40.776657, 31.325247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012527, 40.474152, 31.448812>,  <41.150948, 40.292648, 31.522951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.012527, 40.474152, 31.448812>,  <40.781830, 40.776657, 31.325247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012527, 40.474152, 31.448812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443973, -0.027254, -0.895626,
		0.685751, 0.653695, 0.320043,
		0.576744, -0.756267, 0.308912,
		41.185551, 40.247272, 31.541487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506901, 40.997684, 31.119907>,  <40.781830, 40.776657, 31.325247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506901, 40.997684, 31.119907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503941, 40.602024, 31.178595>,  <41.502167, 40.364628, 31.213806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503941, 40.602024, 31.178595>,  <41.506901, 40.997684, 31.119907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503941, 40.602024, 31.178595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445001, -0.134650, -0.885350,
		0.895500, 0.058740, 0.441169,
		-0.007399, -0.989151, 0.146718,
		41.501720, 40.305279, 31.222610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232014, 40.711544, 31.092480>,  <41.506901, 40.997684, 31.119907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232014, 40.711544, 31.092480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982655, 40.414219, 30.995443>,  <41.833038, 40.235825, 30.937222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.982655, 40.414219, 30.995443>,  <42.232014, 40.711544, 31.092480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982655, 40.414219, 30.995443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520575, -0.163068, -0.838099,
		0.583413, -0.648761, 0.488609,
		-0.623402, -0.743315, -0.242593,
		41.795635, 40.191223, 30.922665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665970, 40.262581, 30.839052>,  <42.232014, 40.711544, 31.092480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665970, 40.262581, 30.839052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312988, 40.155170, 30.684561>,  <42.101200, 40.090725, 30.591866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.312988, 40.155170, 30.684561>,  <42.665970, 40.262581, 30.839052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312988, 40.155170, 30.684561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458613, -0.308438, -0.833391,
		0.104662, -0.912556, 0.395332,
		-0.882451, -0.268529, -0.386229,
		42.048252, 40.074612, 30.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784046, 39.569824, 30.494762>,  <42.665970, 40.262581, 30.839052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784046, 39.569824, 30.494762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426094, 39.665035, 30.343752>,  <42.211323, 39.722164, 30.253145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.426094, 39.665035, 30.343752>,  <42.784046, 39.569824, 30.494762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426094, 39.665035, 30.343752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209434, -0.523012, -0.826194,
		-0.394110, -0.818413, 0.418183,
		-0.894882, 0.238030, -0.377528,
		42.157631, 39.736443, 30.230494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459278, 38.893211, 30.241280>,  <42.784046, 39.569824, 30.494762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459278, 38.893211, 30.241280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307404, 39.219421, 30.066582>,  <42.216278, 39.415150, 29.961763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307404, 39.219421, 30.066582>,  <42.459278, 38.893211, 30.241280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307404, 39.219421, 30.066582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313557, -0.330708, -0.890120,
		-0.870355, -0.474914, -0.130149,
		-0.379689, 0.815530, -0.436746,
		42.193497, 39.464081, 29.935558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177975, 38.595043, 29.616638>,  <42.459278, 38.893211, 30.241280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177975, 38.595043, 29.616638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160534, 38.987255, 29.540043>,  <42.150070, 39.222580, 29.494085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.160534, 38.987255, 29.540043>,  <42.177975, 38.595043, 29.616638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160534, 38.987255, 29.540043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116923, -0.185345, -0.975693,
		-0.992183, -0.064932, -0.106564,
		-0.043603, 0.980526, -0.191488,
		42.147453, 39.281414, 29.482597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692314, 38.631115, 29.140228>,  <42.177975, 38.595043, 29.616638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692314, 38.631115, 29.140228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905041, 38.967255, 29.098309>,  <42.032677, 39.168938, 29.073156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905041, 38.967255, 29.098309>,  <41.692314, 38.631115, 29.140228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905041, 38.967255, 29.098309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169889, -0.227100, -0.958939,
		-0.829646, 0.492172, -0.263541,
		0.531813, 0.840352, -0.104798,
		42.064583, 39.219360, 29.066870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403145, 38.971870, 28.491655>,  <41.692314, 38.631115, 29.140228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403145, 38.971870, 28.491655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.764229, 39.130398, 28.558632>,  <41.980881, 39.225513, 28.598818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.764229, 39.130398, 28.558632>,  <41.403145, 38.971870, 28.491655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764229, 39.130398, 28.558632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253753, -0.176152, -0.951094,
		-0.347443, 0.901055, -0.259582,
		0.902714, 0.396321, 0.167443,
		42.035042, 39.249294, 28.608864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522346, 39.468231, 27.984467>,  <41.403145, 38.971870, 28.491655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522346, 39.468231, 27.984467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877598, 39.321838, 28.095673>,  <42.090748, 39.234005, 28.162395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.877598, 39.321838, 28.095673>,  <41.522346, 39.468231, 27.984467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877598, 39.321838, 28.095673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271594, -0.070076, -0.959857,
		0.370771, 0.927980, 0.037161,
		0.888125, -0.365980, 0.278016,
		42.144035, 39.212044, 28.179077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017525, 39.999340, 27.860670>,  <41.522346, 39.468231, 27.984467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017525, 39.999340, 27.860670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711140, 39.857571, 27.646124>,  <40.527309, 39.772511, 27.517397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.711140, 39.857571, 27.646124>,  <41.017525, 39.999340, 27.860670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711140, 39.857571, 27.646124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584008, 0.034802, 0.811002,
		-0.268769, 0.934439, -0.233641,
		-0.765962, -0.354420, -0.536366,
		40.481350, 39.751244, 27.485214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509743, 40.350353, 28.230854>,  <41.017525, 39.999340, 27.860670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509743, 40.350353, 28.230854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335262, 40.053833, 28.026814>,  <40.230576, 39.875923, 27.904388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.335262, 40.053833, 28.026814>,  <40.509743, 40.350353, 28.230854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335262, 40.053833, 28.026814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659836, -0.121940, 0.741449,
		-0.611837, 0.660006, -0.435945,
		-0.436201, -0.741298, -0.510103,
		40.204403, 39.831444, 27.873783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790955, 40.476032, 28.359392>,  <40.509743, 40.350353, 28.230854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790955, 40.476032, 28.359392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820419, 40.099110, 28.228777>,  <39.838100, 39.872955, 28.150408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.820419, 40.099110, 28.228777>,  <39.790955, 40.476032, 28.359392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820419, 40.099110, 28.228777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666682, -0.290041, 0.686594,
		-0.741693, 0.167120, -0.649586,
		0.073663, -0.942309, -0.326538,
		39.842518, 39.816418, 28.130816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134155, 40.313820, 28.475283>,  <39.790955, 40.476032, 28.359392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134155, 40.313820, 28.475283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339046, 39.973022, 28.431967>,  <39.461983, 39.768543, 28.405977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339046, 39.973022, 28.431967>,  <39.134155, 40.313820, 28.475283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339046, 39.973022, 28.431967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472299, -0.384749, 0.793033,
		-0.717326, -0.355068, -0.599475,
		0.512229, -0.851995, -0.108292,
		39.492714, 39.717422, 28.399479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635998, 39.775791, 28.397850>,  <39.134155, 40.313820, 28.475283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635998, 39.775791, 28.397850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983444, 39.644440, 28.546265>,  <39.191914, 39.565628, 28.635313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.983444, 39.644440, 28.546265>,  <38.635998, 39.775791, 28.397850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983444, 39.644440, 28.546265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490940, -0.469227, 0.734033,
		-0.066944, -0.819750, -0.568795,
		0.868617, -0.328384, 0.371037,
		39.244030, 39.545925, 28.657576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536350, 39.007866, 28.644583>,  <38.635998, 39.775791, 28.397850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536350, 39.007866, 28.644583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847824, 39.181648, 28.825645>,  <39.034706, 39.285919, 28.934284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847824, 39.181648, 28.825645>,  <38.536350, 39.007866, 28.644583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847824, 39.181648, 28.825645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254833, -0.440269, 0.860943,
		0.573336, -0.785753, -0.232115,
		0.778682, 0.434459, 0.452658,
		39.081429, 39.311985, 28.961443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758869, 38.541615, 29.183054>,  <38.536350, 39.007866, 28.644583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758869, 38.541615, 29.183054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948017, 38.878265, 29.287403>,  <39.061508, 39.080257, 29.350012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.948017, 38.878265, 29.287403>,  <38.758869, 38.541615, 29.183054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948017, 38.878265, 29.287403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139296, -0.220937, 0.965289,
		0.870050, -0.492798, 0.012760,
		0.472873, 0.841628, 0.260871,
		39.089878, 39.130753, 29.365664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222748, 38.378452, 29.662809>,  <38.758869, 38.541615, 29.183054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222748, 38.378452, 29.662809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148853, 38.761200, 29.752501>,  <39.104519, 38.990849, 29.806314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.148853, 38.761200, 29.752501>,  <39.222748, 38.378452, 29.662809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148853, 38.761200, 29.752501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023855, -0.232451, 0.972316,
		0.982499, 0.174270, 0.065768,
		-0.184733, 0.956868, 0.224226,
		39.093433, 39.048260, 29.819769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474861, 38.441772, 30.436760>,  <39.222748, 38.378452, 29.662809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474861, 38.441772, 30.436760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265614, 38.777348, 30.376713>,  <39.140064, 38.978691, 30.340685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.265614, 38.777348, 30.376713>,  <39.474861, 38.441772, 30.436760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265614, 38.777348, 30.376713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156840, 0.078369, 0.984510,
		0.837706, 0.538557, 0.090583,
		-0.523116, 0.838937, -0.150118,
		39.108681, 39.029030, 30.331678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665333, 38.811378, 30.987724>,  <39.474861, 38.441772, 30.436760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665333, 38.811378, 30.987724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343231, 39.019901, 30.874720>,  <39.149971, 39.145016, 30.806917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.343231, 39.019901, 30.874720>,  <39.665333, 38.811378, 30.987724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343231, 39.019901, 30.874720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352290, -0.037397, 0.935143,
		0.476929, 0.852551, 0.213764,
		-0.805252, 0.521304, -0.282510,
		39.101654, 39.176292, 30.789967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573959, 39.320305, 31.532267>,  <39.665333, 38.811378, 30.987724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573959, 39.320305, 31.532267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227379, 39.276295, 31.337475>,  <39.019428, 39.249889, 31.220600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.227379, 39.276295, 31.337475>,  <39.573959, 39.320305, 31.532267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227379, 39.276295, 31.337475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484326, -0.051507, 0.873370,
		-0.121175, 0.992594, -0.008659,
		-0.866455, -0.110024, -0.486980,
		38.967442, 39.243286, 31.191381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153099, 39.870049, 31.699060>,  <39.573959, 39.320305, 31.532267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153099, 39.870049, 31.699060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902458, 39.580029, 31.584747>,  <38.752071, 39.406017, 31.516159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902458, 39.580029, 31.584747>,  <39.153099, 39.870049, 31.699060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902458, 39.580029, 31.584747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507721, 0.101578, 0.855512,
		-0.591258, 0.681167, -0.431771,
		-0.626605, -0.725048, -0.285784,
		38.714478, 39.362514, 31.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.306908, 39.943184, 23.647495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170830, 39.567543, 23.666914>,  <41.089184, 39.342159, 23.678564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170830, 39.567543, 23.666914>,  <41.306908, 39.943184, 23.647495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170830, 39.567543, 23.666914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477121, 0.216863, 0.851661,
		-0.810324, 0.266567, -0.521840,
		-0.340192, -0.939102, 0.048545,
		41.068771, 39.285812, 23.681477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683590, 40.094158, 23.840111>,  <41.306908, 39.943184, 23.647495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683590, 40.094158, 23.840111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776676, 39.726227, 23.966450>,  <40.832527, 39.505466, 24.042253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776676, 39.726227, 23.966450>,  <40.683590, 40.094158, 23.840111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776676, 39.726227, 23.966450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332456, 0.229960, 0.914654,
		-0.913957, -0.317856, -0.252288,
		0.232712, -0.919829, 0.315846,
		40.846489, 39.450279, 24.061203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131348, 40.023727, 24.274378>,  <40.683590, 40.094158, 23.840111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131348, 40.023727, 24.274378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406857, 39.747009, 24.361107>,  <40.572163, 39.580978, 24.413143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406857, 39.747009, 24.361107>,  <40.131348, 40.023727, 24.274378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406857, 39.747009, 24.361107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129628, 0.176736, 0.975685,
		-0.713293, -0.700133, 0.032055,
		0.688774, -0.691794, 0.216821,
		40.613487, 39.539471, 24.426153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743076, 39.608326, 24.707054>,  <40.131348, 40.023727, 24.274378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743076, 39.608326, 24.707054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128792, 39.530586, 24.779024>,  <40.360222, 39.483944, 24.822206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128792, 39.530586, 24.779024>,  <39.743076, 39.608326, 24.707054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128792, 39.530586, 24.779024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180812, 0.013312, 0.983428,
		-0.193523, -0.980842, -0.022304,
		0.964290, -0.194349, 0.179924,
		40.418079, 39.472282, 24.833002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694572, 38.997898, 25.222076>,  <39.743076, 39.608326, 24.707054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694572, 38.997898, 25.222076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061085, 39.149292, 25.274500>,  <40.280991, 39.240128, 25.305954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061085, 39.149292, 25.274500>,  <39.694572, 38.997898, 25.222076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061085, 39.149292, 25.274500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126021, -0.038175, 0.991293,
		0.380193, -0.924819, 0.012718,
		0.916281, 0.378486, 0.131060,
		40.335968, 39.262836, 25.313818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993515, 38.725533, 25.785166>,  <39.694572, 38.997898, 25.222076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993515, 38.725533, 25.785166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241772, 39.036552, 25.744747>,  <40.390728, 39.223164, 25.720497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241772, 39.036552, 25.744747>,  <39.993515, 38.725533, 25.785166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241772, 39.036552, 25.744747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129059, 0.025808, 0.991301,
		0.773397, -0.628287, -0.084332,
		0.620645, 0.777554, -0.101046,
		40.427967, 39.269817, 25.714434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510410, 38.581573, 26.307297>,  <39.993515, 38.725533, 25.785166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510410, 38.581573, 26.307297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542255, 38.975334, 26.244537>,  <40.561363, 39.211590, 26.206882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542255, 38.975334, 26.244537>,  <40.510410, 38.581573, 26.307297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542255, 38.975334, 26.244537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089637, 0.149691, 0.984661,
		0.992787, -0.092456, -0.076322,
		0.079613, 0.984401, -0.156898,
		40.566139, 39.270653, 26.197468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012482, 38.876999, 26.698172>,  <40.510410, 38.581573, 26.307297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012482, 38.876999, 26.698172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767815, 39.187744, 26.638369>,  <40.621014, 39.374191, 26.602488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767815, 39.187744, 26.638369>,  <41.012482, 38.876999, 26.698172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767815, 39.187744, 26.638369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019798, 0.173891, 0.984566,
		0.790870, 0.605183, -0.090982,
		-0.611664, 0.776862, -0.149507,
		40.584316, 39.420803, 26.593517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277596, 39.486717, 27.131800>,  <41.012482, 38.876999, 26.698172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277596, 39.486717, 27.131800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885899, 39.525394, 27.060551>,  <40.650879, 39.548603, 27.017801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885899, 39.525394, 27.060551>,  <41.277596, 39.486717, 27.131800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885899, 39.525394, 27.060551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138138, 0.324666, 0.935687,
		0.148308, 0.940873, -0.304570,
		-0.979246, 0.096697, -0.178121,
		40.592125, 39.554405, 27.007114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016041, 39.666061, 27.249620>,  <41.277596, 39.486717, 27.131800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016041, 39.666061, 27.249620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213997, 39.440331, 27.513929>,  <42.332771, 39.304893, 27.672514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213997, 39.440331, 27.513929>,  <42.016041, 39.666061, 27.249620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213997, 39.440331, 27.513929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320789, -0.588057, -0.742484,
		0.807575, 0.579417, -0.109994,
		0.494890, -0.564327, 0.660771,
		42.362465, 39.271034, 27.712160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782455, 39.703461, 27.107525>,  <42.016041, 39.666061, 27.249620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782455, 39.703461, 27.107525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707161, 39.363129, 27.303751>,  <42.661983, 39.158928, 27.421486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707161, 39.363129, 27.303751>,  <42.782455, 39.703461, 27.107525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707161, 39.363129, 27.303751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289815, -0.525371, -0.799995,
		0.938389, -0.008415, 0.345477,
		-0.188235, -0.850832, 0.490564,
		42.650692, 39.107880, 27.450920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452484, 39.275898, 27.104385>,  <42.782455, 39.703461, 27.107525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452484, 39.275898, 27.104385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141117, 39.035690, 27.177538>,  <42.954296, 38.891567, 27.221430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141117, 39.035690, 27.177538>,  <43.452484, 39.275898, 27.104385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141117, 39.035690, 27.177538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273583, -0.586741, -0.762160,
		0.564995, -0.543245, 0.621020,
		-0.778417, -0.600517, 0.182883,
		42.907593, 38.855534, 27.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796001, 38.518803, 27.130175>,  <43.452484, 39.275898, 27.104385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796001, 38.518803, 27.130175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408344, 38.491821, 27.035343>,  <43.175751, 38.475632, 26.978445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408344, 38.491821, 27.035343>,  <43.796001, 38.518803, 27.130175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408344, 38.491821, 27.035343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243548, -0.410118, -0.878913,
		-0.037947, -0.909535, 0.413891,
		-0.969146, -0.067450, -0.237079,
		43.117599, 38.471584, 26.964220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776382, 37.862164, 26.904245>,  <43.796001, 38.518803, 27.130175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776382, 37.862164, 26.904245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450558, 38.028793, 26.742771>,  <43.255062, 38.128773, 26.645887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450558, 38.028793, 26.742771>,  <43.776382, 37.862164, 26.904245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450558, 38.028793, 26.742771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051108, -0.641667, -0.765279,
		-0.577824, -0.643996, 0.501386,
		-0.814559, 0.416572, -0.403684,
		43.206192, 38.153767, 26.621666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238884, 37.273685, 26.834227>,  <43.776382, 37.862164, 26.904245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238884, 37.273685, 26.834227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145538, 37.559750, 26.570688>,  <43.089531, 37.731388, 26.412565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145538, 37.559750, 26.570688>,  <43.238884, 37.273685, 26.834227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145538, 37.559750, 26.570688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121437, -0.650817, -0.749460,
		-0.964777, -0.254905, 0.065029,
		-0.233363, 0.715165, -0.658848,
		43.075531, 37.774300, 26.373034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901718, 36.872822, 26.268856>,  <43.238884, 37.273685, 26.834227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901718, 36.872822, 26.268856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013645, 37.233715, 26.137602>,  <43.080803, 37.450253, 26.058849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013645, 37.233715, 26.137602>,  <42.901718, 36.872822, 26.268856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013645, 37.233715, 26.137602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224072, -0.393726, -0.891500,
		-0.933537, 0.175934, -0.312338,
		0.279821, 0.902234, -0.328136,
		43.097591, 37.504387, 26.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754616, 36.774109, 25.611912>,  <42.901718, 36.872822, 26.268856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754616, 36.774109, 25.611912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954002, 37.119732, 25.583815>,  <43.073635, 37.327106, 25.566957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954002, 37.119732, 25.583815>,  <42.754616, 36.774109, 25.611912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954002, 37.119732, 25.583815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254048, -0.223063, -0.941118,
		-0.828849, 0.451272, -0.330702,
		0.498467, 0.864058, -0.070241,
		43.103542, 37.378948, 25.562742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569057, 37.087742, 24.942924>,  <42.754616, 36.774109, 25.611912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569057, 37.087742, 24.942924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922619, 37.237125, 25.055525>,  <43.134754, 37.326756, 25.123085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922619, 37.237125, 25.055525>,  <42.569057, 37.087742, 24.942924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922619, 37.237125, 25.055525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398490, -0.286366, -0.871321,
		-0.244792, 0.882338, -0.401940,
		0.883902, 0.373462, 0.281503,
		43.187790, 37.349163, 25.139977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852135, 37.371460, 24.357534>,  <42.569057, 37.087742, 24.942924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852135, 37.371460, 24.357534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185024, 37.360729, 24.579048>,  <43.384758, 37.354290, 24.711956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185024, 37.360729, 24.579048>,  <42.852135, 37.371460, 24.357534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185024, 37.360729, 24.579048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540045, -0.186852, -0.820633,
		0.125490, 0.982022, -0.141016,
		0.832228, -0.026826, 0.553784,
		43.434692, 37.352680, 24.745184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324883, 37.757168, 24.005564>,  <42.852135, 37.371460, 24.357534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324883, 37.757168, 24.005564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567108, 37.571579, 24.264185>,  <43.712440, 37.460228, 24.419357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567108, 37.571579, 24.264185>,  <43.324883, 37.757168, 24.005564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567108, 37.571579, 24.264185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606041, -0.257691, -0.752535,
		0.515763, 0.847543, 0.125137,
		0.605559, -0.463968, 0.646553,
		43.748775, 37.432388, 24.458151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034496, 38.048370, 23.981216>,  <43.324883, 37.757168, 24.005564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034496, 38.048370, 23.981216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010468, 37.661934, 24.081669>,  <43.996052, 37.430073, 24.141941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010468, 37.661934, 24.081669>,  <44.034496, 38.048370, 23.981216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010468, 37.661934, 24.081669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726173, -0.214914, -0.653058,
		0.684882, 0.143136, 0.714456,
		-0.060070, -0.966087, 0.251133,
		43.992447, 37.372108, 24.157009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686440, 37.863041, 23.940802>,  <44.034496, 38.048370, 23.981216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686440, 37.863041, 23.940802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484020, 37.518070, 23.936062>,  <44.362568, 37.311089, 23.933218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484020, 37.518070, 23.936062>,  <44.686440, 37.863041, 23.940802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484020, 37.518070, 23.936062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628491, -0.359304, -0.689855,
		0.590689, -0.356548, 0.723851,
		-0.506049, -0.862424, -0.011850,
		44.332207, 37.259342, 23.932507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283649, 37.276997, 23.943186>,  <44.686440, 37.863041, 23.940802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283649, 37.276997, 23.943186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940281, 37.128819, 23.801264>,  <44.734261, 37.039913, 23.716110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940281, 37.128819, 23.801264>,  <45.283649, 37.276997, 23.943186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940281, 37.128819, 23.801264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507298, -0.510738, -0.694115,
		0.075921, -0.775833, 0.626354,
		-0.858420, -0.370446, -0.354803,
		44.682755, 37.017685, 23.694822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.774883, 33.131699, 22.846521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838978, 33.520367, 22.777020>,  <38.877434, 33.753567, 22.735319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838978, 33.520367, 22.777020>,  <38.774883, 33.131699, 22.846521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838978, 33.520367, 22.777020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047582, 0.168221, 0.984600,
		0.985932, -0.166033, -0.019279,
		0.160233, 0.971666, -0.173755,
		38.887047, 33.811867, 22.724894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846500, 33.340202, 23.542929>,  <38.774883, 33.131699, 22.846521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846500, 33.340202, 23.542929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822674, 33.699844, 23.369467>,  <38.808380, 33.915630, 23.265388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.822674, 33.699844, 23.369467>,  <38.846500, 33.340202, 23.542929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822674, 33.699844, 23.369467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137417, 0.437677, 0.888569,
		0.988721, -0.006665, -0.149622,
		-0.059564, 0.899108, -0.433656,
		38.804806, 33.969578, 23.239370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337395, 33.643612, 23.772493>,  <38.846500, 33.340202, 23.542929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337395, 33.643612, 23.772493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094406, 33.941181, 23.661098>,  <38.948612, 34.119724, 23.594261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.094406, 33.941181, 23.661098>,  <39.337395, 33.643612, 23.772493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094406, 33.941181, 23.661098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143968, 0.447891, 0.882421,
		0.781187, 0.495952, -0.379182,
		-0.607470, 0.743926, -0.278485,
		38.912167, 34.164360, 23.577553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662628, 34.295464, 23.943316>,  <39.337395, 33.643612, 23.772493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662628, 34.295464, 23.943316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269875, 34.366093, 23.915827>,  <39.034222, 34.408470, 23.899334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.269875, 34.366093, 23.915827>,  <39.662628, 34.295464, 23.943316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269875, 34.366093, 23.915827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007752, 0.399822, 0.916560,
		0.189315, 0.899425, -0.393948,
		-0.981886, 0.176573, -0.068720,
		38.975307, 34.419064, 23.895210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605778, 34.988045, 24.192368>,  <39.662628, 34.295464, 23.943316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605778, 34.988045, 24.192368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234901, 34.840748, 24.219845>,  <39.012375, 34.752369, 24.236330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.234901, 34.840748, 24.219845>,  <39.605778, 34.988045, 24.192368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234901, 34.840748, 24.219845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073826, 0.359413, 0.930254,
		-0.367249, 0.857449, -0.360429,
		-0.927188, -0.368243, 0.068692,
		38.956745, 34.730274, 24.240452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242172, 35.473660, 24.544714>,  <39.605778, 34.988045, 24.192368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242172, 35.473660, 24.544714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992310, 35.168964, 24.613491>,  <38.842392, 34.986149, 24.654757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.992310, 35.168964, 24.613491>,  <39.242172, 35.473660, 24.544714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992310, 35.168964, 24.613491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137568, 0.324083, 0.935973,
		-0.768687, 0.561008, -0.307231,
		-0.624656, -0.761735, 0.171942,
		38.804913, 34.940445, 24.665073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654236, 35.654057, 24.891727>,  <39.242172, 35.473660, 24.544714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654236, 35.654057, 24.891727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661770, 35.267673, 24.994938>,  <38.666290, 35.035843, 25.056864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661770, 35.267673, 24.994938>,  <38.654236, 35.654057, 24.891727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661770, 35.267673, 24.994938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244804, 0.245762, 0.937908,
		-0.969390, -0.080834, -0.231840,
		0.018837, -0.965954, 0.258027,
		38.667419, 34.977886, 25.072346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028843, 35.552170, 25.213928>,  <38.654236, 35.654057, 24.891727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028843, 35.552170, 25.213928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262814, 35.250084, 25.332258>,  <38.403198, 35.068832, 25.403257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262814, 35.250084, 25.332258>,  <38.028843, 35.552170, 25.213928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262814, 35.250084, 25.332258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323094, 0.117587, 0.939033,
		-0.743953, -0.644849, -0.175224,
		0.584931, -0.755211, 0.295826,
		38.438293, 35.023521, 25.421005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644756, 35.230366, 25.816017>,  <38.028843, 35.552170, 25.213928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644756, 35.230366, 25.816017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021301, 35.097656, 25.840536>,  <38.247231, 35.018028, 25.855247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.021301, 35.097656, 25.840536>,  <37.644756, 35.230366, 25.816017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021301, 35.097656, 25.840536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071755, -0.019344, 0.997235,
		-0.329673, -0.943160, -0.042016,
		0.941364, -0.331777, 0.061299,
		38.303711, 34.998123, 25.858927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642834, 34.642113, 26.244905>,  <37.644756, 35.230366, 25.816017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642834, 34.642113, 26.244905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033756, 34.723389, 26.268837>,  <38.268311, 34.772152, 26.283195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.033756, 34.723389, 26.268837>,  <37.642834, 34.642113, 26.244905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033756, 34.723389, 26.268837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076385, 0.074644, 0.994280,
		0.197561, -0.976290, 0.088471,
		0.977310, 0.203189, 0.059828,
		38.326950, 34.784344, 26.286785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999840, 34.118458, 26.656250>,  <37.642834, 34.642113, 26.244905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999840, 34.118458, 26.656250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220898, 34.451096, 26.678295>,  <38.353535, 34.650677, 26.691523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220898, 34.451096, 26.678295>,  <37.999840, 34.118458, 26.656250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220898, 34.451096, 26.678295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053835, -0.101610, 0.993366,
		0.831675, -0.546014, -0.100923,
		0.552647, 0.831591, 0.055111,
		38.386692, 34.700573, 26.694828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596138, 33.920753, 27.055347>,  <37.999840, 34.118458, 26.656250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596138, 33.920753, 27.055347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569645, 34.318821, 27.084332>,  <38.553749, 34.557663, 27.101721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569645, 34.318821, 27.084332>,  <38.596138, 33.920753, 27.055347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569645, 34.318821, 27.084332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028434, -0.074470, 0.996818,
		0.997399, 0.063966, 0.033230,
		-0.066237, 0.995169, 0.072458,
		38.549774, 34.617371, 27.106070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873737, 34.086075, 27.661514>,  <38.596138, 33.920753, 27.055347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873737, 34.086075, 27.661514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652859, 34.417545, 27.624928>,  <38.520332, 34.616428, 27.602976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.652859, 34.417545, 27.624928>,  <38.873737, 34.086075, 27.661514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652859, 34.417545, 27.624928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437649, -0.194743, 0.877803,
		0.709605, 0.524753, 0.470208,
		-0.552199, 0.828679, -0.091467,
		38.487198, 34.666149, 27.597486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790272, 34.363621, 28.357903>,  <38.873737, 34.086075, 27.661514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790272, 34.363621, 28.357903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495239, 34.553864, 28.166164>,  <38.318218, 34.668007, 28.051121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495239, 34.553864, 28.166164>,  <38.790272, 34.363621, 28.357903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495239, 34.553864, 28.166164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524107, 0.044385, 0.850495,
		0.425774, 0.878539, 0.216530,
		-0.737583, 0.475604, -0.479346,
		38.273964, 34.696545, 28.022360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484001, 34.879799, 28.536552>,  <38.790272, 34.363621, 28.357903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484001, 34.879799, 28.536552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856422, 34.858204, 28.680901>,  <40.079876, 34.845245, 28.767509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.856422, 34.858204, 28.680901>,  <39.484001, 34.879799, 28.536552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856422, 34.858204, 28.680901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340869, -0.224209, -0.912984,
		0.130200, 0.973045, -0.190347,
		0.931051, -0.053988, 0.360872,
		40.135738, 34.842007, 28.789162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871353, 35.263477, 28.012018>,  <39.484001, 34.879799, 28.536552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871353, 35.263477, 28.012018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128956, 35.037350, 28.218191>,  <40.283516, 34.901672, 28.341894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.128956, 35.037350, 28.218191>,  <39.871353, 35.263477, 28.012018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128956, 35.037350, 28.218191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456509, -0.256665, -0.851893,
		0.613888, 0.783921, 0.092782,
		0.644004, -0.565323, 0.515431,
		40.322159, 34.867752, 28.372820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522774, 35.314316, 27.605316>,  <39.871353, 35.263477, 28.012018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522774, 35.314316, 27.605316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.551155, 34.991673, 27.840042>,  <40.568184, 34.798088, 27.980877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.551155, 34.991673, 27.840042>,  <40.522774, 35.314316, 27.605316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551155, 34.991673, 27.840042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568897, -0.450512, -0.688037,
		0.819343, 0.382652, 0.426913,
		0.070950, -0.806607, 0.586814,
		40.572441, 34.749691, 28.016087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247093, 35.176113, 27.555990>,  <40.522774, 35.314316, 27.605316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247093, 35.176113, 27.555990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059238, 34.835136, 27.647884>,  <40.946526, 34.630550, 27.703020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.059238, 34.835136, 27.647884>,  <41.247093, 35.176113, 27.555990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059238, 34.835136, 27.647884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356577, -0.421197, -0.833934,
		0.807646, -0.309730, 0.501773,
		-0.469640, -0.852444, 0.229735,
		40.918346, 34.579403, 27.716805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747097, 34.611927, 27.515816>,  <41.247093, 35.176113, 27.555990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747097, 34.611927, 27.515816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374207, 34.475689, 27.466923>,  <41.150471, 34.393948, 27.437588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.374207, 34.475689, 27.466923>,  <41.747097, 34.611927, 27.515816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374207, 34.475689, 27.466923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254049, -0.375470, -0.891337,
		0.257692, -0.861984, 0.436553,
		-0.932231, -0.340596, -0.122231,
		41.094536, 34.373508, 27.430254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779827, 33.976971, 27.258846>,  <41.747097, 34.611927, 27.515816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779827, 33.976971, 27.258846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400398, 34.064987, 27.167809>,  <41.172741, 34.117798, 27.113186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400398, 34.064987, 27.167809>,  <41.779827, 33.976971, 27.258846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400398, 34.064987, 27.167809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116931, -0.424558, -0.897819,
		-0.294184, -0.878256, 0.376992,
		-0.948569, 0.220042, -0.227593,
		41.115829, 34.131001, 27.099531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574532, 33.480465, 26.768539>,  <41.779827, 33.976971, 27.258846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574532, 33.480465, 26.768539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.274719, 33.740963, 26.721058>,  <41.094833, 33.897263, 26.692570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.274719, 33.740963, 26.721058>,  <41.574532, 33.480465, 26.768539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274719, 33.740963, 26.721058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082732, -0.270067, -0.959281,
		-0.656781, -0.709189, 0.256301,
		-0.749529, 0.651241, -0.118702,
		41.049862, 33.936337, 26.685448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070412, 33.039299, 26.409204>,  <41.574532, 33.480465, 26.768539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070412, 33.039299, 26.409204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000484, 33.426094, 26.335037>,  <40.958527, 33.658169, 26.290537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000484, 33.426094, 26.335037>,  <41.070412, 33.039299, 26.409204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000484, 33.426094, 26.335037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165273, -0.214468, -0.962646,
		-0.970630, -0.137645, 0.197310,
		-0.174820, 0.966984, -0.185420,
		40.948040, 33.716190, 26.279411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713287, 33.017609, 25.822748>,  <41.070412, 33.039299, 26.409204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713287, 33.017609, 25.822748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790642, 33.409809, 25.836666>,  <40.837055, 33.645130, 25.845016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790642, 33.409809, 25.836666>,  <40.713287, 33.017609, 25.822748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790642, 33.409809, 25.836666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104119, 0.014752, -0.994456,
		-0.975582, 0.195937, -0.099236,
		0.193386, 0.980506, 0.034792,
		40.848656, 33.703960, 25.847103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279278, 33.325275, 25.269642>,  <40.713287, 33.017609, 25.822748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279278, 33.325275, 25.269642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579136, 33.565403, 25.381104>,  <40.759048, 33.709480, 25.447981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579136, 33.565403, 25.381104>,  <40.279278, 33.325275, 25.269642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579136, 33.565403, 25.381104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328112, 0.028550, -0.944207,
		-0.574785, 0.799248, -0.175571,
		0.749643, 0.600323, 0.278653,
		40.804028, 33.745499, 25.464699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202057, 33.963600, 24.922428>,  <40.279278, 33.325275, 25.269642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202057, 33.963600, 24.922428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.587650, 33.885990, 24.995193>,  <40.819008, 33.839424, 25.038853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.587650, 33.885990, 24.995193>,  <40.202057, 33.963600, 24.922428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587650, 33.885990, 24.995193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187456, 0.010436, -0.982217,
		0.188675, 0.980941, 0.046432,
		0.963982, -0.194024, 0.181914,
		40.876846, 33.827782, 25.049768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612717, 34.410507, 24.486433>,  <40.202057, 33.963600, 24.922428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612717, 34.410507, 24.486433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.860508, 34.114128, 24.590157>,  <41.009182, 33.936302, 24.652391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.860508, 34.114128, 24.590157>,  <40.612717, 34.410507, 24.486433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860508, 34.114128, 24.590157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396094, 0.009833, -0.918157,
		0.677755, 0.671492, 0.299576,
		0.619481, -0.740946, 0.259310,
		41.046352, 33.891846, 24.667950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355762, 34.551479, 24.163239>,  <40.612717, 34.410507, 24.486433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355762, 34.551479, 24.163239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353043, 34.160473, 24.247536>,  <41.351410, 33.925869, 24.298115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353043, 34.160473, 24.247536>,  <41.355762, 34.551479, 24.163239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353043, 34.160473, 24.247536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491277, -0.186827, -0.850731,
		0.870977, 0.097748, 0.481503,
		-0.006801, -0.977518, 0.210743,
		41.351002, 33.867218, 24.310759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074936, 34.296879, 23.989326>,  <41.355762, 34.551479, 24.163239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074936, 34.296879, 23.989326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813919, 33.994076, 23.975918>,  <41.657310, 33.812393, 23.967873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813919, 33.994076, 23.975918>,  <42.074936, 34.296879, 23.989326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813919, 33.994076, 23.975918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201739, -0.130915, -0.970651,
		0.730405, -0.640153, 0.238146,
		-0.652541, -0.757011, -0.033523,
		41.618156, 33.766972, 23.965860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708405, 33.904873, 24.091024>,  <42.074936, 34.296879, 23.989326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708405, 33.904873, 24.091024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.107483, 33.929642, 24.102106>,  <43.346931, 33.944504, 24.108755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.107483, 33.929642, 24.102106>,  <42.708405, 33.904873, 24.091024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107483, 33.929642, 24.102106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034808, 0.116747, 0.992552,
		0.058220, -0.991230, 0.118633,
		0.997697, 0.061916, 0.027706,
		43.406792, 33.948215, 24.110418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941570, 33.572399, 24.718916>,  <42.708405, 33.904873, 24.091024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941570, 33.572399, 24.718916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255310, 33.794727, 24.608749>,  <43.443554, 33.928123, 24.542650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255310, 33.794727, 24.608749>,  <42.941570, 33.572399, 24.718916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255310, 33.794727, 24.608749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271069, 0.092243, 0.958130,
		0.557957, -0.826166, -0.078316,
		0.784351, 0.555824, -0.275415,
		43.490616, 33.961475, 24.526125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535824, 33.390785, 25.226887>,  <42.941570, 33.572399, 24.718916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535824, 33.390785, 25.226887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.612057, 33.757496, 25.086485>,  <43.657799, 33.977520, 25.002243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.612057, 33.757496, 25.086485>,  <43.535824, 33.390785, 25.226887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612057, 33.757496, 25.086485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332394, 0.276171, 0.901800,
		0.923684, -0.288541, -0.252096,
		0.190585, 0.916773, -0.351004,
		43.669231, 34.032528, 24.981184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210690, 33.582165, 25.521889>,  <43.535824, 33.390785, 25.226887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210690, 33.582165, 25.521889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.024654, 33.919819, 25.415205>,  <43.913033, 34.122410, 25.351194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.024654, 33.919819, 25.415205>,  <44.210690, 33.582165, 25.521889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024654, 33.919819, 25.415205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261769, 0.418939, 0.869464,
		0.845679, 0.334557, -0.415810,
		-0.465084, 0.844134, -0.266711,
		43.885128, 34.173058, 25.335192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686790, 34.108700, 25.757875>,  <44.210690, 33.582165, 25.521889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686790, 34.108700, 25.757875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.332695, 34.284172, 25.696026>,  <44.120239, 34.389458, 25.658916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.332695, 34.284172, 25.696026>,  <44.686790, 34.108700, 25.757875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332695, 34.284172, 25.696026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154718, 0.591209, 0.791539,
		0.438653, 0.676777, -0.591233,
		-0.885238, 0.438685, -0.154626,
		44.067123, 34.415779, 25.649637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768456, 34.829910, 25.713146>,  <44.686790, 34.108700, 25.757875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768456, 34.829910, 25.713146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383148, 34.792061, 25.813679>,  <44.151966, 34.769352, 25.873999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.383148, 34.792061, 25.813679>,  <44.768456, 34.829910, 25.713146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383148, 34.792061, 25.813679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123305, 0.675564, 0.726918,
		-0.238574, 0.731205, -0.639079,
		-0.963265, -0.094622, 0.251333,
		44.094170, 34.763676, 25.889078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548008, 35.573330, 25.896568>,  <44.768456, 34.829910, 25.713146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548008, 35.573330, 25.896568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.290173, 35.317600, 26.064268>,  <44.135471, 35.164162, 26.164888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.290173, 35.317600, 26.064268>,  <44.548008, 35.573330, 25.896568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290173, 35.317600, 26.064268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084929, 0.485105, 0.870322,
		-0.759801, 0.596603, -0.258394,
		-0.644585, -0.639327, 0.419252,
		44.096798, 35.125801, 26.190044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201466, 35.998783, 26.095762>,  <44.548008, 35.573330, 25.896568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201466, 35.998783, 26.095762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.078163, 35.682465, 26.307276>,  <44.004181, 35.492672, 26.434185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.078163, 35.682465, 26.307276>,  <44.201466, 35.998783, 26.095762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078163, 35.682465, 26.307276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144313, 0.588292, 0.795667,
		-0.940295, 0.168955, -0.295465,
		-0.308252, -0.790801, 0.528786,
		43.985687, 35.445225, 26.465912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434002, 36.002033, 26.316534>,  <44.201466, 35.998783, 26.095762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434002, 36.002033, 26.316534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.610786, 35.753208, 26.575054>,  <43.716858, 35.603912, 26.730165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.610786, 35.753208, 26.575054>,  <43.434002, 36.002033, 26.316534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610786, 35.753208, 26.575054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374188, 0.526960, 0.763084,
		-0.815263, -0.579092, 0.000127,
		0.441962, -0.622066, 0.646299,
		43.743374, 35.566589, 26.768944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915375, 35.747543, 26.861206>,  <43.434002, 36.002033, 26.316534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915375, 35.747543, 26.861206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259163, 35.670010, 27.050407>,  <43.465435, 35.623489, 27.163929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.259163, 35.670010, 27.050407>,  <42.915375, 35.747543, 26.861206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259163, 35.670010, 27.050407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394922, 0.335729, 0.855174,
		-0.324563, -0.921799, 0.212001,
		0.859474, -0.193834, 0.473004,
		43.517006, 35.611858, 27.192308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686386, 35.389648, 27.522154>,  <42.915375, 35.747543, 26.861206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686386, 35.389648, 27.522154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.066963, 35.495461, 27.585123>,  <43.295307, 35.558949, 27.622906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.066963, 35.495461, 27.585123>,  <42.686386, 35.389648, 27.522154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066963, 35.495461, 27.585123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234372, 0.290947, 0.927588,
		0.199573, -0.919442, 0.338818,
		0.951441, 0.264531, 0.157426,
		43.352394, 35.574821, 27.632351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934231, 34.964336, 28.045004>,  <42.686386, 35.389648, 27.522154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934231, 34.964336, 28.045004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167454, 35.289219, 28.037394>,  <43.307388, 35.484150, 28.032827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167454, 35.289219, 28.037394>,  <42.934231, 34.964336, 28.045004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167454, 35.289219, 28.037394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040347, 0.052336, 0.997814,
		0.811429, -0.581015, 0.063285,
		0.583057, 0.812209, -0.019024,
		43.342369, 35.532883, 28.031687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293934, 34.914455, 28.644976>,  <42.934231, 34.964336, 28.045004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293934, 34.914455, 28.644976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.357777, 35.295410, 28.541059>,  <43.396084, 35.523983, 28.478710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.357777, 35.295410, 28.541059>,  <43.293934, 34.914455, 28.644976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357777, 35.295410, 28.541059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065292, 0.272770, 0.959861,
		0.985019, -0.136241, 0.105720,
		0.159610, 0.952384, -0.259789,
		43.405659, 35.581123, 28.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671272, 35.178875, 29.210674>,  <43.293934, 34.914455, 28.644976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671272, 35.178875, 29.210674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.524651, 35.500393, 29.023251>,  <43.436676, 35.693306, 28.910795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.524651, 35.500393, 29.023251>,  <43.671272, 35.178875, 29.210674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524651, 35.500393, 29.023251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132780, 0.453265, 0.881431,
		0.920873, 0.385309, -0.059419,
		-0.366556, 0.803796, -0.468560,
		43.414684, 35.741531, 28.882683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.531185, 36.536671, 23.683838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.173130, 36.621670, 23.527084>,  <44.958298, 36.672668, 23.433031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.173130, 36.621670, 23.527084>,  <45.531185, 36.536671, 23.683838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173130, 36.621670, 23.527084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245218, -0.499425, -0.830929,
		-0.372284, -0.839894, 0.394947,
		-0.895139, 0.212493, -0.391885,
		44.904587, 36.685417, 23.409519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.182129, 35.944351, 23.645205>,  <45.531185, 36.536671, 23.683838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.182129, 35.944351, 23.645205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.033451, 36.211411, 23.387186>,  <44.944244, 36.371647, 23.232376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.033451, 36.211411, 23.387186>,  <45.182129, 35.944351, 23.645205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033451, 36.211411, 23.387186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281899, -0.580847, -0.763643,
		-0.884519, -0.465681, 0.027689,
		-0.371697, 0.667651, -0.645045,
		44.921944, 36.411705, 23.193672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877720, 35.541588, 23.062925>,  <45.182129, 35.944351, 23.645205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877720, 35.541588, 23.062925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.937122, 35.905231, 22.907253>,  <44.972763, 36.123417, 22.813850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.937122, 35.905231, 22.907253>,  <44.877720, 35.541588, 23.062925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937122, 35.905231, 22.907253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370225, -0.416036, -0.830571,
		-0.916994, -0.020736, -0.398361,
		0.148510, 0.909112, -0.389180,
		44.981674, 36.177963, 22.790499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532562, 35.445183, 22.421656>,  <44.877720, 35.541588, 23.062925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532562, 35.445183, 22.421656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767624, 35.767860, 22.396648>,  <44.908661, 35.961468, 22.381643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.767624, 35.767860, 22.396648>,  <44.532562, 35.445183, 22.421656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767624, 35.767860, 22.396648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330339, -0.309739, -0.891593,
		-0.738609, 0.503293, -0.448502,
		0.587651, 0.806696, -0.062519,
		44.943920, 36.009869, 22.377893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415459, 35.698605, 21.706635>,  <44.532562, 35.445183, 22.421656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415459, 35.698605, 21.706635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745819, 35.896370, 21.815035>,  <44.944035, 36.015030, 21.880075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.745819, 35.896370, 21.815035>,  <44.415459, 35.698605, 21.706635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745819, 35.896370, 21.815035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412351, -0.201879, -0.888376,
		-0.384512, 0.845461, -0.370603,
		0.825904, 0.494410, 0.271002,
		44.993591, 36.044693, 21.896336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673378, 35.949024, 21.098883>,  <44.415459, 35.698605, 21.706635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673378, 35.949024, 21.098883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007927, 35.988979, 21.314478>,  <45.208656, 36.012955, 21.443834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.007927, 35.988979, 21.314478>,  <44.673378, 35.949024, 21.098883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007927, 35.988979, 21.314478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545921, -0.062908, -0.835471,
		-0.049550, 0.993008, -0.107148,
		0.836370, 0.099892, 0.538987,
		45.258839, 36.018948, 21.476173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103699, 36.566200, 20.876377>,  <44.673378, 35.949024, 21.098883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103699, 36.566200, 20.876377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.350254, 36.309895, 21.059454>,  <45.498188, 36.156113, 21.169300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.350254, 36.309895, 21.059454>,  <45.103699, 36.566200, 20.876377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350254, 36.309895, 21.059454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574959, -0.030915, -0.817598,
		0.538037, 0.767115, 0.349358,
		0.616391, -0.640764, 0.457693,
		45.535172, 36.117664, 21.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708836, 36.768993, 20.588543>,  <45.103699, 36.566200, 20.876377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708836, 36.768993, 20.588543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.808323, 36.427216, 20.771002>,  <45.868015, 36.222149, 20.880478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.808323, 36.427216, 20.771002>,  <45.708836, 36.768993, 20.588543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808323, 36.427216, 20.771002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591655, -0.238842, -0.769999,
		0.766865, 0.461397, 0.446129,
		0.248721, -0.854440, 0.456147,
		45.882938, 36.170883, 20.907846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.442604, 36.783321, 20.670736>,  <45.708836, 36.768993, 20.588543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.442604, 36.783321, 20.670736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.346485, 36.396538, 20.704771>,  <46.288815, 36.164467, 20.725193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.346485, 36.396538, 20.704771>,  <46.442604, 36.783321, 20.670736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346485, 36.396538, 20.704771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613551, -0.219228, -0.758613,
		0.752204, -0.130089, 0.645962,
		-0.240300, -0.966962, 0.085088,
		46.274395, 36.106449, 20.730297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081917, 36.447502, 20.661751>,  <46.442604, 36.783321, 20.670736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081917, 36.447502, 20.661751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.776787, 36.214497, 20.549484>,  <46.593708, 36.074692, 20.482124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.776787, 36.214497, 20.549484>,  <47.081917, 36.447502, 20.661751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776787, 36.214497, 20.549484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395324, -0.076669, -0.915336,
		0.511679, -0.809195, 0.288768,
		-0.762825, -0.582515, -0.280665,
		46.547939, 36.039742, 20.465284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.441406, 35.858154, 20.303421>,  <47.081917, 36.447502, 20.661751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.441406, 35.858154, 20.303421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.057739, 35.830135, 20.193811>,  <46.827538, 35.813324, 20.128046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.057739, 35.830135, 20.193811>,  <47.441406, 35.858154, 20.303421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057739, 35.830135, 20.193811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282395, -0.291310, -0.913998,
		-0.015800, -0.954061, 0.299197,
		-0.959168, -0.070051, -0.274024,
		46.769989, 35.809120, 20.111605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475208, 35.295929, 19.875084>,  <47.441406, 35.858154, 20.303421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475208, 35.295929, 19.875084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.128895, 35.470932, 19.777920>,  <46.921108, 35.575935, 19.719622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.128895, 35.470932, 19.777920>,  <47.475208, 35.295929, 19.875084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128895, 35.470932, 19.777920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048850, -0.409201, -0.911135,
		-0.498027, -0.800713, 0.332908,
		-0.865784, 0.437507, -0.242908,
		46.869160, 35.602184, 19.705048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.919613, 34.814751, 19.811489>,  <47.475208, 35.295929, 19.875084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.919613, 34.814751, 19.811489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.882000, 35.137245, 19.577858>,  <46.859432, 35.330742, 19.437679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.882000, 35.137245, 19.577858>,  <46.919613, 34.814751, 19.811489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.882000, 35.137245, 19.577858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017871, -0.585217, -0.810680,
		-0.995409, -0.086665, 0.040619,
		-0.094029, 0.806232, -0.584079,
		46.853790, 35.379116, 19.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410706, 34.728909, 19.302635>,  <46.919613, 34.814751, 19.811489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410706, 34.728909, 19.302635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.630486, 35.014977, 19.129831>,  <46.762352, 35.186619, 19.026148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.630486, 35.014977, 19.129831>,  <46.410706, 34.728909, 19.302635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630486, 35.014977, 19.129831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097879, -0.458398, -0.883341,
		-0.829775, 0.527634, -0.181865,
		0.549448, 0.715174, -0.432012,
		46.795319, 35.229530, 19.000227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253971, 33.873867, 19.395830>,  <46.410706, 34.728909, 19.302635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253971, 33.873867, 19.395830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.188683, 33.484329, 19.332603>,  <46.149509, 33.250607, 19.294668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.188683, 33.484329, 19.332603>,  <46.253971, 33.873867, 19.395830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188683, 33.484329, 19.332603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527914, -0.049138, 0.847875,
		-0.833466, 0.221836, -0.506086,
		-0.163221, -0.973845, -0.158065,
		46.139717, 33.192177, 19.285185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563843, 33.752773, 19.388905>,  <46.253971, 33.873867, 19.395830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563843, 33.752773, 19.388905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.718998, 33.396893, 19.485224>,  <45.812092, 33.183365, 19.543015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.718998, 33.396893, 19.485224>,  <45.563843, 33.752773, 19.388905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718998, 33.396893, 19.485224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688803, -0.106211, 0.717126,
		-0.612450, -0.444025, -0.654024,
		0.387886, -0.889697, 0.240797,
		45.835365, 33.129982, 19.557463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894516, 33.435009, 19.680344>,  <45.563843, 33.752773, 19.388905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894516, 33.435009, 19.680344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170803, 33.166466, 19.787815>,  <45.336575, 33.005341, 19.852299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170803, 33.166466, 19.787815>,  <44.894516, 33.435009, 19.680344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170803, 33.166466, 19.787815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561144, -0.263275, 0.784731,
		-0.456098, -0.692796, -0.558577,
		0.690718, -0.671357, 0.268679,
		45.378017, 32.965057, 19.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546860, 32.774776, 19.843184>,  <44.894516, 33.435009, 19.680344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546860, 32.774776, 19.843184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.891174, 32.779675, 20.046713>,  <45.097763, 32.782612, 20.168831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.891174, 32.779675, 20.046713>,  <44.546860, 32.774776, 19.843184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891174, 32.779675, 20.046713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500969, -0.156191, 0.851254,
		0.089894, -0.987651, -0.128315,
		0.860784, 0.012240, 0.508823,
		45.149410, 32.783348, 20.199360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588985, 32.217518, 20.412786>,  <44.546860, 32.774776, 19.843184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588985, 32.217518, 20.412786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.846947, 32.485535, 20.559837>,  <45.001724, 32.646343, 20.648067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.846947, 32.485535, 20.559837>,  <44.588985, 32.217518, 20.412786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846947, 32.485535, 20.559837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398407, -0.115754, 0.909875,
		0.652207, -0.733245, 0.192298,
		0.644902, 0.670039, 0.367625,
		45.040417, 32.686546, 20.670124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854340, 31.884035, 21.058550>,  <44.588985, 32.217518, 20.412786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854340, 31.884035, 21.058550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.952312, 32.268894, 21.106348>,  <45.011097, 32.499809, 21.135027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.952312, 32.268894, 21.106348>,  <44.854340, 31.884035, 21.058550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952312, 32.268894, 21.106348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433425, -0.001587, 0.901188,
		0.867266, -0.272522, 0.416630,
		0.244932, 0.962148, 0.119494,
		45.025791, 32.557537, 21.142197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119713, 31.961264, 21.735271>,  <44.854340, 31.884035, 21.058550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119713, 31.961264, 21.735271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.017551, 32.331566, 21.623741>,  <44.956253, 32.553749, 21.556822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.017551, 32.331566, 21.623741>,  <45.119713, 31.961264, 21.735271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017551, 32.331566, 21.623741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318882, 0.191596, 0.928227,
		0.912734, 0.325986, 0.246273,
		-0.255404, 0.925756, -0.278827,
		44.940929, 32.609291, 21.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183758, 32.420650, 22.347460>,  <45.119713, 31.961264, 21.735271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183758, 32.420650, 22.347460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.975281, 32.664974, 22.109043>,  <44.850193, 32.811569, 21.965994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.975281, 32.664974, 22.109043>,  <45.183758, 32.420650, 22.347460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975281, 32.664974, 22.109043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430714, 0.414674, 0.801580,
		0.736778, 0.674502, 0.046959,
		-0.521194, 0.610812, -0.596041,
		44.818924, 32.848217, 21.930231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385277, 33.091778, 22.481405>,  <45.183758, 32.420650, 22.347460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385277, 33.091778, 22.481405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006855, 33.086208, 22.351915>,  <44.779804, 33.082867, 22.274221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.006855, 33.086208, 22.351915>,  <45.385277, 33.091778, 22.481405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006855, 33.086208, 22.351915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305317, 0.372835, 0.876228,
		0.108496, 0.927793, -0.356971,
		-0.946050, -0.013923, -0.323722,
		44.723042, 33.082031, 22.254799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928684, 33.800907, 22.569124>,  <45.385277, 33.091778, 22.481405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928684, 33.800907, 22.569124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.644691, 33.519913, 22.549370>,  <44.474297, 33.351318, 22.537518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.644691, 33.519913, 22.549370>,  <44.928684, 33.800907, 22.569124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644691, 33.519913, 22.549370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520717, 0.476473, 0.708398,
		-0.474106, 0.528668, -0.704083,
		-0.709984, -0.702484, -0.049388,
		44.431698, 33.309166, 22.534554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307945, 34.174377, 22.635330>,  <44.928684, 33.800907, 22.569124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307945, 34.174377, 22.635330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.131966, 33.821365, 22.701767>,  <44.026379, 33.609558, 22.741629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.131966, 33.821365, 22.701767>,  <44.307945, 34.174377, 22.635330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131966, 33.821365, 22.701767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525942, 0.403137, 0.748910,
		-0.727892, 0.242130, -0.641519,
		-0.439953, -0.882527, 0.166094,
		43.999981, 33.556606, 22.751595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650101, 34.200253, 22.362808>,  <44.307945, 34.174377, 22.635330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650101, 34.200253, 22.362808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674576, 33.941093, 22.666513>,  <43.689262, 33.785599, 22.848736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.674576, 33.941093, 22.666513>,  <43.650101, 34.200253, 22.362808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.674576, 33.941093, 22.666513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376774, 0.689418, 0.618663,
		-0.924282, -0.323927, -0.201926,
		0.061191, -0.647900, 0.759264,
		43.692932, 33.746723, 22.894293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304211, 34.469761, 22.894255>,  <43.650101, 34.200253, 22.362808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304211, 34.469761, 22.894255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462410, 34.158806, 23.089907>,  <43.557331, 33.972233, 23.207298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462410, 34.158806, 23.089907>,  <43.304211, 34.469761, 22.894255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462410, 34.158806, 23.089907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079275, 0.501672, 0.861418,
		-0.915038, -0.379467, 0.136784,
		0.395500, -0.777387, 0.489131,
		43.581059, 33.925591, 23.236647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897392, 34.379814, 23.388763>,  <43.304211, 34.469761, 22.894255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897392, 34.379814, 23.388763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.207352, 34.171246, 23.531679>,  <43.393326, 34.046104, 23.617428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.207352, 34.171246, 23.531679>,  <42.897392, 34.379814, 23.388763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207352, 34.171246, 23.531679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199000, 0.335259, 0.920869,
		-0.599941, -0.784682, 0.156030,
		0.774900, -0.521417, 0.357287,
		43.439823, 34.014820, 23.638865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318577, 33.852299, 23.423351>,  <42.897392, 34.379814, 23.388763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318577, 33.852299, 23.423351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957382, 33.698505, 23.500080>,  <41.740665, 33.606232, 23.546118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.957382, 33.698505, 23.500080>,  <42.318577, 33.852299, 23.423351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957382, 33.698505, 23.500080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016585, -0.414917, -0.909708,
		0.429355, -0.824633, 0.368287,
		-0.902983, -0.384480, 0.191823,
		41.686485, 33.583160, 23.557627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415192, 33.127380, 23.243570>,  <42.318577, 33.852299, 23.423351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415192, 33.127380, 23.243570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.033035, 33.245205, 23.235023>,  <41.803741, 33.315899, 23.229895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.033035, 33.245205, 23.235023>,  <42.415192, 33.127380, 23.243570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033035, 33.245205, 23.235023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108461, -0.417239, -0.902302,
		-0.274701, -0.859735, 0.430576,
		-0.955393, 0.294564, -0.021368,
		41.746418, 33.333576, 23.228613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118477, 32.535378, 22.981747>,  <42.415192, 33.127380, 23.243570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118477, 32.535378, 22.981747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.857853, 32.831646, 22.916176>,  <41.701477, 33.009407, 22.876833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.857853, 32.831646, 22.916176>,  <42.118477, 32.535378, 22.981747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857853, 32.831646, 22.916176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178826, -0.359967, -0.915666,
		-0.737219, -0.567297, 0.366992,
		-0.651559, 0.740674, -0.163926,
		41.662384, 33.053848, 22.866999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543915, 32.203995, 22.789799>,  <42.118477, 32.535378, 22.981747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543915, 32.203995, 22.789799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521675, 32.575134, 22.642288>,  <41.508331, 32.797817, 22.553782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521675, 32.575134, 22.642288>,  <41.543915, 32.203995, 22.789799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521675, 32.575134, 22.642288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169811, -0.372756, -0.912260,
		-0.983907, 0.011900, 0.178285,
		-0.055601, 0.927853, -0.368778,
		41.504993, 32.853489, 22.531654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987003, 32.206284, 22.255283>,  <41.543915, 32.203995, 22.789799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987003, 32.206284, 22.255283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.189354, 32.536793, 22.156195>,  <41.310764, 32.735100, 22.096741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.189354, 32.536793, 22.156195>,  <40.987003, 32.206284, 22.255283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189354, 32.536793, 22.156195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138083, -0.205909, -0.968780,
		-0.851485, 0.524286, 0.009930,
		0.505873, 0.826272, -0.247723,
		41.341114, 32.784676, 22.081879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661053, 32.407024, 21.741711>,  <40.987003, 32.206284, 22.255283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661053, 32.407024, 21.741711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006248, 32.598591, 21.677347>,  <41.213364, 32.713531, 21.638729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.006248, 32.598591, 21.677347>,  <40.661053, 32.407024, 21.741711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006248, 32.598591, 21.677347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040358, -0.252127, -0.966852,
		-0.503614, 0.840873, -0.198254,
		0.862986, 0.478919, -0.160910,
		41.265144, 32.742268, 21.629074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728302, 32.775166, 21.041080>,  <40.661053, 32.407024, 21.741711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728302, 32.775166, 21.041080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117222, 32.732098, 21.124063>,  <41.350574, 32.706257, 21.173853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.117222, 32.732098, 21.124063>,  <40.728302, 32.775166, 21.041080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117222, 32.732098, 21.124063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180442, -0.218394, -0.959033,
		0.148566, 0.969903, -0.192917,
		0.972301, -0.107669, 0.207457,
		41.408913, 32.699799, 21.186300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487541, 33.370758, 20.766289>,  <40.728302, 32.775166, 21.041080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487541, 33.370758, 20.766289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182838, 33.396587, 20.508432>,  <40.000019, 33.412086, 20.353718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.182838, 33.396587, 20.508432>,  <40.487541, 33.370758, 20.766289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182838, 33.396587, 20.508432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538393, 0.490374, 0.685322,
		0.360369, 0.869117, -0.338777,
		-0.761752, 0.064573, -0.644642,
		39.954311, 33.415958, 20.315041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353638, 33.987820, 20.592566>,  <40.487541, 33.370758, 20.766289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353638, 33.987820, 20.592566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.008358, 33.788895, 20.557747>,  <39.801189, 33.669540, 20.536856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.008358, 33.788895, 20.557747>,  <40.353638, 33.987820, 20.592566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008358, 33.788895, 20.557747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391303, 0.550063, 0.737775,
		-0.319020, 0.670907, -0.669411,
		-0.863196, -0.497308, -0.087047,
		39.749397, 33.639702, 20.531633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791096, 34.432426, 20.777479>,  <40.353638, 33.987820, 20.592566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791096, 34.432426, 20.777479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.592495, 34.085289, 20.784752>,  <39.473335, 33.877007, 20.789116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.592495, 34.085289, 20.784752>,  <39.791096, 34.432426, 20.777479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592495, 34.085289, 20.784752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504722, 0.305672, 0.807354,
		-0.706215, 0.391677, -0.589787,
		-0.496504, -0.867844, 0.018182,
		39.443542, 33.824936, 20.790207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081642, 34.633682, 20.784037>,  <39.791096, 34.432426, 20.777479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081642, 34.633682, 20.784037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067688, 34.255356, 20.913168>,  <39.059315, 34.028358, 20.990646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067688, 34.255356, 20.913168>,  <39.081642, 34.633682, 20.784037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067688, 34.255356, 20.913168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629077, 0.271781, 0.728284,
		-0.776560, -0.177678, -0.604471,
		-0.034884, -0.945815, 0.322827,
		39.057224, 33.971611, 21.010015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361328, 34.372326, 20.788767>,  <39.081642, 34.633682, 20.784037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361328, 34.372326, 20.788767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587578, 34.203522, 21.072166>,  <38.723328, 34.102238, 21.242207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.587578, 34.203522, 21.072166>,  <38.361328, 34.372326, 20.788767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587578, 34.203522, 21.072166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630160, 0.333002, 0.701433,
		-0.531948, -0.843216, -0.077583,
		0.565624, -0.422015, 0.708500,
		38.757263, 34.076916, 21.284716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947277, 34.277332, 21.389053>,  <38.361328, 34.372326, 20.788767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947277, 34.277332, 21.389053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300491, 34.218525, 21.567331>,  <38.512421, 34.183243, 21.674297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.300491, 34.218525, 21.567331>,  <37.947277, 34.277332, 21.389053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300491, 34.218525, 21.567331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401512, 0.255047, 0.879625,
		-0.242990, -0.955687, 0.166186,
		0.883031, -0.147015, 0.445694,
		38.565399, 34.174419, 21.701040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967987, 33.739395, 21.969549>,  <37.947277, 34.277332, 21.389053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967987, 33.739395, 21.969549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236454, 34.023582, 22.054184>,  <38.397533, 34.194096, 22.104965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.236454, 34.023582, 22.054184>,  <37.967987, 33.739395, 21.969549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236454, 34.023582, 22.054184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557337, 0.295422, 0.775952,
		0.488779, -0.638721, 0.594247,
		0.671170, 0.710465, 0.211587,
		38.437805, 34.236721, 22.117661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.711693, 35.239876, 18.708017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.024609, 35.449772, 18.842289>,  <44.212357, 35.575710, 18.922852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.024609, 35.449772, 18.842289>,  <43.711693, 35.239876, 18.708017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024609, 35.449772, 18.842289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570812, 0.388106, 0.723565,
		0.249402, -0.757645, 0.603136,
		0.782286, 0.524736, 0.335679,
		44.259293, 35.607193, 18.942993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697170, 35.124428, 19.382614>,  <43.711693, 35.239876, 18.708017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697170, 35.124428, 19.382614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.909092, 35.462856, 19.359035>,  <44.036247, 35.665913, 19.344889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.909092, 35.462856, 19.359035>,  <43.697170, 35.124428, 19.382614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909092, 35.462856, 19.359035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561708, 0.402117, 0.723040,
		0.635444, -0.349960, 0.688287,
		0.529807, 0.846067, -0.058947,
		44.068035, 35.716675, 19.341351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888939, 35.302673, 20.108561>,  <43.697170, 35.124428, 19.382614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888939, 35.302673, 20.108561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.914883, 35.635567, 19.888309>,  <43.930447, 35.835300, 19.756159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.914883, 35.635567, 19.888309>,  <43.888939, 35.302673, 20.108561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914883, 35.635567, 19.888309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414572, 0.524386, 0.743740,
		0.907703, 0.180039, 0.379028,
		0.064855, 0.832229, -0.550626,
		43.934338, 35.885235, 19.723122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157196, 35.796066, 20.576685>,  <43.888939, 35.302673, 20.108561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157196, 35.796066, 20.576685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973549, 36.023441, 20.303604>,  <43.863361, 36.159866, 20.139755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.973549, 36.023441, 20.303604>,  <44.157196, 35.796066, 20.576685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973549, 36.023441, 20.303604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298325, 0.625206, 0.721193,
		0.836785, 0.534782, -0.117465,
		-0.459121, 0.568441, -0.682702,
		43.835812, 36.193974, 20.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219128, 36.478512, 20.879448>,  <44.157196, 35.796066, 20.576685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219128, 36.478512, 20.879448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.956982, 36.547287, 20.585257>,  <43.799694, 36.588554, 20.408741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.956982, 36.547287, 20.585257>,  <44.219128, 36.478512, 20.879448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956982, 36.547287, 20.585257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555774, 0.549619, 0.623726,
		0.511478, 0.817530, -0.264641,
		-0.655367, 0.171941, -0.735480,
		43.760372, 36.598869, 20.364613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032375, 37.171440, 20.844456>,  <44.219128, 36.478512, 20.879448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032375, 37.171440, 20.844456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.711521, 37.012474, 20.666182>,  <43.519009, 36.917095, 20.559217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.711521, 37.012474, 20.666182>,  <44.032375, 37.171440, 20.844456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711521, 37.012474, 20.666182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594728, 0.598691, 0.536533,
		0.053603, 0.695436, -0.716586,
		-0.802138, -0.397414, -0.445687,
		43.470879, 36.893250, 20.532476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608570, 37.649029, 20.712925>,  <44.032375, 37.171440, 20.844456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608570, 37.649029, 20.712925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344967, 37.351624, 20.667498>,  <43.186806, 37.173180, 20.640242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.344967, 37.351624, 20.667498>,  <43.608570, 37.649029, 20.712925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344967, 37.351624, 20.667498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702962, 0.555171, 0.444555,
		-0.267481, 0.372800, -0.888523,
		-0.659013, -0.743509, -0.113566,
		43.147263, 37.128571, 20.633429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014118, 37.981689, 20.444429>,  <43.608570, 37.649029, 20.712925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014118, 37.981689, 20.444429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916115, 37.637554, 20.623219>,  <42.857311, 37.431072, 20.730492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916115, 37.637554, 20.623219>,  <43.014118, 37.981689, 20.444429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916115, 37.637554, 20.623219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664457, 0.484734, 0.568796,
		-0.706022, -0.157635, -0.690423,
		-0.245010, -0.860339, 0.446975,
		42.842613, 37.379452, 20.757311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387501, 37.901001, 20.325459>,  <43.014118, 37.981689, 20.444429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387501, 37.901001, 20.325459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442707, 37.680660, 20.654703>,  <42.475830, 37.548454, 20.852251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442707, 37.680660, 20.654703>,  <42.387501, 37.901001, 20.325459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442707, 37.680660, 20.654703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749150, 0.485557, 0.450564,
		-0.647862, -0.678820, -0.345656,
		0.138016, -0.550851, 0.823112,
		42.484112, 37.515404, 20.901636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724205, 37.767368, 20.569263>,  <42.387501, 37.901001, 20.325459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724205, 37.767368, 20.569263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.932892, 37.626434, 20.880049>,  <42.058105, 37.541874, 21.066521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.932892, 37.626434, 20.880049>,  <41.724205, 37.767368, 20.569263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932892, 37.626434, 20.880049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640961, 0.439150, 0.629536,
		-0.563011, -0.826443, 0.003278,
		0.521715, -0.352335, 0.776964,
		42.089405, 37.520733, 21.113138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208633, 37.503334, 20.942001>,  <41.724205, 37.767368, 20.569263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208633, 37.503334, 20.942001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514641, 37.602051, 21.179941>,  <41.698246, 37.661282, 21.322704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514641, 37.602051, 21.179941>,  <41.208633, 37.503334, 20.942001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514641, 37.602051, 21.179941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619352, 0.535082, 0.574535,
		-0.176506, -0.807950, 0.562195,
		0.765016, 0.246788, 0.594850,
		41.744144, 37.676086, 21.358397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892567, 37.500454, 21.519751>,  <41.208633, 37.503334, 20.942001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892567, 37.500454, 21.519751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.234100, 37.698750, 21.583254>,  <41.439022, 37.817726, 21.621355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.234100, 37.698750, 21.583254>,  <40.892567, 37.500454, 21.519751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234100, 37.698750, 21.583254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471485, 0.607271, 0.639471,
		0.220603, -0.620856, 0.752245,
		0.853836, 0.495741, 0.158759,
		41.490250, 37.847473, 21.630882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020451, 36.854877, 21.708500>,  <40.892567, 37.500454, 21.519751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020451, 36.854877, 21.708500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633018, 36.773743, 21.650938>,  <40.400558, 36.725063, 21.616402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.633018, 36.773743, 21.650938>,  <41.020451, 36.854877, 21.708500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633018, 36.773743, 21.650938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223545, -0.456489, -0.861189,
		0.108990, -0.866300, 0.487489,
		-0.968581, -0.202837, -0.143904,
		40.342445, 36.712891, 21.607767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879566, 36.044937, 21.653975>,  <41.020451, 36.854877, 21.708500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879566, 36.044937, 21.653975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624477, 36.276913, 21.451200>,  <40.471424, 36.416100, 21.329536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624477, 36.276913, 21.451200>,  <40.879566, 36.044937, 21.653975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624477, 36.276913, 21.451200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289245, -0.429662, -0.855411,
		-0.713895, -0.692144, 0.106262,
		-0.637724, 0.579937, -0.506933,
		40.433159, 36.450893, 21.299120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446918, 35.501907, 21.225452>,  <40.879566, 36.044937, 21.653975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446918, 35.501907, 21.225452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395481, 35.852528, 21.039925>,  <40.364616, 36.062901, 20.928608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395481, 35.852528, 21.039925>,  <40.446918, 35.501907, 21.225452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395481, 35.852528, 21.039925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292173, -0.413455, -0.862374,
		-0.947680, -0.246415, -0.202934,
		-0.128597, 0.876547, -0.463819,
		40.356903, 36.115490, 20.900780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096455, 35.277725, 20.583910>,  <40.446918, 35.501907, 21.225452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096455, 35.277725, 20.583910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.229767, 35.650433, 20.526304>,  <40.309753, 35.874058, 20.491741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.229767, 35.650433, 20.526304>,  <40.096455, 35.277725, 20.583910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229767, 35.650433, 20.526304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180107, -0.212852, -0.960341,
		-0.925465, 0.294125, -0.238757,
		0.333280, 0.931764, -0.144013,
		40.329750, 35.929962, 20.483101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743809, 35.711800, 19.993496>,  <40.096455, 35.277725, 20.583910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743809, 35.711800, 19.993496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098721, 35.881153, 20.066694>,  <40.311668, 35.982765, 20.110613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098721, 35.881153, 20.066694>,  <39.743809, 35.711800, 19.993496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098721, 35.881153, 20.066694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246990, -0.101072, -0.963732,
		-0.389529, 0.900297, -0.194250,
		0.887279, 0.423379, 0.182994,
		40.364902, 36.008167, 20.121592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865959, 36.074493, 19.369099>,  <39.743809, 35.711800, 19.993496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865959, 36.074493, 19.369099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.215630, 36.045883, 19.561226>,  <40.425430, 36.028717, 19.676502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.215630, 36.045883, 19.561226>,  <39.865959, 36.074493, 19.369099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215630, 36.045883, 19.561226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445449, -0.275764, -0.851780,
		0.193381, 0.958560, -0.209203,
		0.874173, -0.071529, 0.480317,
		40.477882, 36.024426, 19.705320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175766, 36.472122, 18.924879>,  <39.865959, 36.074493, 19.369099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175766, 36.472122, 18.924879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.443027, 36.254471, 19.127855>,  <40.603386, 36.123878, 19.249641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.443027, 36.254471, 19.127855>,  <40.175766, 36.472122, 18.924879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443027, 36.254471, 19.127855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492077, -0.188382, -0.849925,
		0.558060, 0.817581, 0.141884,
		0.668154, -0.544127, 0.507441,
		40.643475, 36.091232, 19.280088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938171, 36.673893, 18.698015>,  <40.175766, 36.472122, 18.924879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938171, 36.673893, 18.698015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959335, 36.308662, 18.859749>,  <40.972034, 36.089523, 18.956789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.959335, 36.308662, 18.859749>,  <40.938171, 36.673893, 18.698015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959335, 36.308662, 18.859749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296620, -0.372257, -0.879455,
		0.953529, 0.166468, 0.251140,
		0.052913, -0.913079, 0.404336,
		40.975208, 36.034740, 18.981050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667442, 36.420555, 18.497829>,  <40.938171, 36.673893, 18.698015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667442, 36.420555, 18.497829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.421284, 36.117832, 18.585949>,  <41.273590, 35.936199, 18.638821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.421284, 36.117832, 18.585949>,  <41.667442, 36.420555, 18.497829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421284, 36.117832, 18.585949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356030, -0.516245, -0.778931,
		0.703228, -0.400918, 0.587141,
		-0.615397, -0.756806, 0.220299,
		41.236664, 35.890789, 18.652039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137661, 35.933517, 18.671200>,  <41.667442, 36.420555, 18.497829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137661, 35.933517, 18.671200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794231, 35.790558, 18.524164>,  <41.588173, 35.704784, 18.435942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.794231, 35.790558, 18.524164>,  <42.137661, 35.933517, 18.671200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794231, 35.790558, 18.524164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506799, -0.483224, -0.713897,
		0.077515, -0.799227, 0.596010,
		-0.858572, -0.357395, -0.367590,
		41.536659, 35.683338, 18.413887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271687, 35.240810, 18.467751>,  <42.137661, 35.933517, 18.671200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271687, 35.240810, 18.467751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930428, 35.326290, 18.277391>,  <41.725674, 35.377579, 18.163176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930428, 35.326290, 18.277391>,  <42.271687, 35.240810, 18.467751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930428, 35.326290, 18.277391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333983, -0.477046, -0.812947,
		-0.400752, -0.852502, 0.335616,
		-0.853143, 0.213700, -0.475898,
		41.674484, 35.390400, 18.134623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038181, 34.614807, 18.173422>,  <42.271687, 35.240810, 18.467751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038181, 34.614807, 18.173422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.854088, 34.900509, 17.962513>,  <41.743629, 35.071930, 17.835968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.854088, 34.900509, 17.962513>,  <42.038181, 34.614807, 18.173422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854088, 34.900509, 17.962513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327405, -0.415501, -0.848625,
		-0.825220, -0.563201, -0.042623,
		-0.460237, 0.714257, -0.527274,
		41.716015, 35.114784, 17.804331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711613, 34.221447, 17.657568>,  <42.038181, 34.614807, 18.173422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711613, 34.221447, 17.657568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711258, 34.601913, 17.534098>,  <41.711044, 34.830193, 17.460016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711258, 34.601913, 17.534098>,  <41.711613, 34.221447, 17.657568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711258, 34.601913, 17.534098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283615, -0.295760, -0.912189,
		-0.958938, -0.088357, -0.269502,
		-0.000890, 0.951167, -0.308675,
		41.710991, 34.887264, 17.441496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276978, 33.776939, 17.284781>,  <41.711613, 34.221447, 17.657568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276978, 33.776939, 17.284781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.186150, 33.387402, 17.288158>,  <41.131653, 33.153679, 17.290184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.186150, 33.387402, 17.288158>,  <41.276978, 33.776939, 17.284781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186150, 33.387402, 17.288158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595212, 0.145637, 0.790261,
		-0.770819, 0.174419, -0.612713,
		-0.227070, -0.973842, 0.008443,
		41.118031, 33.095249, 17.290691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599770, 33.749722, 17.459541>,  <41.276978, 33.776939, 17.284781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599770, 33.749722, 17.459541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705288, 33.370804, 17.532251>,  <40.768600, 33.143452, 17.575878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.705288, 33.370804, 17.532251>,  <40.599770, 33.749722, 17.459541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705288, 33.370804, 17.532251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507544, 0.023935, 0.861293,
		-0.820250, -0.319466, -0.474480,
		0.263798, -0.947295, 0.181776,
		40.784428, 33.086617, 17.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979355, 33.392376, 17.600882>,  <40.599770, 33.749722, 17.459541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979355, 33.392376, 17.600882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292564, 33.196693, 17.754528>,  <40.480492, 33.079285, 17.846716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.292564, 33.196693, 17.754528>,  <39.979355, 33.392376, 17.600882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292564, 33.196693, 17.754528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419060, 0.041425, 0.907013,
		-0.459633, -0.871181, -0.172572,
		0.783024, -0.489211, 0.384117,
		40.527473, 33.049931, 17.869762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701763, 32.955299, 18.051981>,  <39.979355, 33.392376, 17.600882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701763, 32.955299, 18.051981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078964, 32.930393, 18.182747>,  <40.305283, 32.915451, 18.261206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.078964, 32.930393, 18.182747>,  <39.701763, 32.955299, 18.051981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078964, 32.930393, 18.182747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326474, 0.017415, 0.945046,
		-0.064538, -0.997908, -0.003906,
		0.943000, -0.062266, 0.326915,
		40.361866, 32.911713, 18.280821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725307, 32.417934, 18.409481>,  <39.701763, 32.955299, 18.051981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725307, 32.417934, 18.409481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023602, 32.644646, 18.549566>,  <40.202576, 32.780674, 18.633617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023602, 32.644646, 18.549566>,  <39.725307, 32.417934, 18.409481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023602, 32.644646, 18.549566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463425, 0.063617, 0.883850,
		0.478668, -0.821410, 0.310101,
		0.745730, 0.566779, 0.350210,
		40.247322, 32.814678, 18.654629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831932, 32.199722, 19.073748>,  <39.725307, 32.417934, 18.409481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831932, 32.199722, 19.073748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981083, 32.570522, 19.089952>,  <40.070572, 32.793003, 19.099676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.981083, 32.570522, 19.089952>,  <39.831932, 32.199722, 19.073748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981083, 32.570522, 19.089952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483608, 0.156892, 0.861109,
		0.791890, -0.340676, 0.506804,
		0.372873, 0.926998, 0.040513,
		40.092945, 32.848621, 19.102106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197880, 32.166065, 19.681772>,  <39.831932, 32.199722, 19.073748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197880, 32.166065, 19.681772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120281, 32.547531, 19.589781>,  <40.073723, 32.776409, 19.534586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.120281, 32.547531, 19.589781>,  <40.197880, 32.166065, 19.681772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120281, 32.547531, 19.589781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412269, 0.133470, 0.901232,
		0.890168, 0.269651, 0.367273,
		-0.193998, 0.953663, -0.229980,
		40.062080, 32.833630, 19.520786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279911, 32.528759, 20.336971>,  <40.197880, 32.166065, 19.681772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279911, 32.528759, 20.336971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064564, 32.780827, 20.113169>,  <39.935356, 32.932068, 19.978888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064564, 32.780827, 20.113169>,  <40.279911, 32.528759, 20.336971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064564, 32.780827, 20.113169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556532, 0.232688, 0.797576,
		0.632801, 0.740770, 0.225439,
		-0.538364, 0.630171, -0.559507,
		39.903053, 32.969879, 19.945316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973240, 32.901440, 20.387983>,  <40.279911, 32.528759, 20.336971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973240, 32.901440, 20.387983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290108, 32.739170, 20.570368>,  <41.480228, 32.641808, 20.679798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.290108, 32.739170, 20.570368>,  <40.973240, 32.901440, 20.387983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290108, 32.739170, 20.570368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351211, -0.307982, -0.884194,
		0.499122, 0.860567, -0.101496,
		0.792167, -0.405674, 0.455961,
		41.527760, 32.617466, 20.707155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448227, 33.177952, 20.035694>,  <40.973240, 32.901440, 20.387983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448227, 33.177952, 20.035694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637383, 32.868576, 20.204529>,  <41.750877, 32.682949, 20.305830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637383, 32.868576, 20.204529>,  <41.448227, 33.177952, 20.035694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637383, 32.868576, 20.204529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601845, -0.066343, -0.795853,
		0.643549, 0.630385, 0.434119,
		0.472893, -0.773443, 0.422089,
		41.779251, 32.636543, 20.331156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216713, 33.307045, 20.075134>,  <41.448227, 33.177952, 20.035694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216713, 33.307045, 20.075134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196522, 32.907688, 20.085443>,  <42.184406, 32.668076, 20.091629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196522, 32.907688, 20.085443>,  <42.216713, 33.307045, 20.075134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196522, 32.907688, 20.085443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723333, -0.054340, -0.688358,
		0.688652, -0.016105, 0.724913,
		-0.050478, -0.998393, 0.025772,
		42.181377, 32.608170, 20.093176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867134, 33.101776, 20.214005>,  <42.216713, 33.307045, 20.075134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867134, 33.101776, 20.214005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.679306, 32.793640, 20.041454>,  <42.566608, 32.608761, 19.937925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.679306, 32.793640, 20.041454>,  <42.867134, 33.101776, 20.214005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679306, 32.793640, 20.041454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756135, -0.098643, -0.646939,
		0.455809, -0.629961, 0.628798,
		-0.469573, -0.770337, -0.431373,
		42.538433, 32.562538, 19.912043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382011, 32.603416, 20.096294>,  <42.867134, 33.101776, 20.214005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382011, 32.603416, 20.096294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.080364, 32.495960, 19.856581>,  <42.899376, 32.431488, 19.712753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.080364, 32.495960, 19.856581>,  <43.382011, 32.603416, 20.096294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080364, 32.495960, 19.856581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656090, -0.348785, -0.669250,
		-0.029235, -0.897877, 0.439275,
		-0.754117, -0.268639, -0.599284,
		42.854130, 32.415367, 19.676796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574169, 31.989344, 19.852070>,  <43.382011, 32.603416, 20.096294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574169, 31.989344, 19.852070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.288670, 32.094723, 19.592482>,  <43.117371, 32.157951, 19.436729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.288670, 32.094723, 19.592482>,  <43.574169, 31.989344, 19.852070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288670, 32.094723, 19.592482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556843, -0.348590, -0.753930,
		-0.424847, -0.899488, 0.102105,
		-0.713744, 0.263449, -0.648971,
		43.074547, 32.173756, 19.397791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469105, 31.350061, 19.438072>,  <43.574169, 31.989344, 19.852070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469105, 31.350061, 19.438072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.345749, 31.664207, 19.223373>,  <43.271736, 31.852695, 19.094555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.345749, 31.664207, 19.223373>,  <43.469105, 31.350061, 19.438072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345749, 31.664207, 19.223373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554765, -0.309876, -0.772148,
		-0.772744, -0.535890, -0.340131,
		-0.308388, 0.785366, -0.536748,
		43.253231, 31.899817, 19.062349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288235, 31.105524, 18.705568>,  <43.469105, 31.350061, 19.438072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288235, 31.105524, 18.705568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.342743, 31.501244, 18.684711>,  <43.375446, 31.738676, 18.672197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.342743, 31.501244, 18.684711>,  <43.288235, 31.105524, 18.705568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342743, 31.501244, 18.684711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587515, -0.123077, -0.799799,
		-0.797657, 0.078352, -0.598000,
		0.136266, 0.989299, -0.052140,
		43.383621, 31.798033, 18.669069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171043, 31.343245, 18.024590>,  <43.288235, 31.105524, 18.705568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171043, 31.343245, 18.024590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368290, 31.653715, 18.181757>,  <43.486637, 31.839998, 18.276056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368290, 31.653715, 18.181757>,  <43.171043, 31.343245, 18.024590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368290, 31.653715, 18.181757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591110, 0.032440, -0.805938,
		-0.638297, 0.629681, -0.442809,
		0.493119, 0.776177, 0.392917,
		43.516224, 31.886568, 18.299633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.362614, 36.370556, 32.405949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612656, 36.680412, 32.367645>,  <37.762680, 36.866325, 32.344662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.612656, 36.680412, 32.367645>,  <37.362614, 36.370556, 32.405949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612656, 36.680412, 32.367645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614738, -0.564204, -0.551155,
		-0.480974, 0.285666, -0.828890,
		0.625109, 0.774641, -0.095757,
		37.800190, 36.912804, 32.338917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507107, 36.540707, 31.621891>,  <37.362614, 36.370556, 32.405949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507107, 36.540707, 31.621891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816357, 36.701496, 31.818134>,  <38.001907, 36.797970, 31.935881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816357, 36.701496, 31.818134>,  <37.507107, 36.540707, 31.621891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816357, 36.701496, 31.818134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629297, -0.389638, -0.672434,
		-0.079142, 0.828612, -0.554200,
		0.773125, 0.401974, 0.490606,
		38.048294, 36.822090, 31.965317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995190, 36.925518, 31.187187>,  <37.507107, 36.540707, 31.621891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995190, 36.925518, 31.187187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225536, 36.832745, 31.500769>,  <38.363743, 36.777081, 31.688917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.225536, 36.832745, 31.500769>,  <37.995190, 36.925518, 31.187187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225536, 36.832745, 31.500769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721998, -0.305574, -0.620761,
		0.383531, 0.923489, -0.008514,
		0.575867, -0.231934, 0.783954,
		38.398296, 36.763165, 31.735954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660641, 37.130775, 31.012890>,  <37.995190, 36.925518, 31.187187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660641, 37.130775, 31.012890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732880, 36.866070, 31.303944>,  <38.776222, 36.707245, 31.478575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732880, 36.866070, 31.303944>,  <38.660641, 37.130775, 31.012890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732880, 36.866070, 31.303944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721436, -0.413705, -0.555319,
		0.668516, 0.625231, 0.402706,
		0.180601, -0.661766, 0.727632,
		38.787060, 36.667542, 31.522234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374805, 37.050014, 31.224434>,  <38.660641, 37.130775, 31.012890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374805, 37.050014, 31.224434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.206711, 36.698139, 31.313473>,  <39.105854, 36.487015, 31.366896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.206711, 36.698139, 31.313473>,  <39.374805, 37.050014, 31.224434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206711, 36.698139, 31.313473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711095, -0.471643, -0.521437,
		0.563689, -0.060838, 0.823744,
		-0.420236, -0.879688, 0.222598,
		39.080639, 36.434231, 31.380253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894768, 36.657337, 31.320118>,  <39.374805, 37.050014, 31.224434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894768, 36.657337, 31.320118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.601997, 36.387409, 31.282370>,  <39.426334, 36.225452, 31.259720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.601997, 36.387409, 31.282370>,  <39.894768, 36.657337, 31.320118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601997, 36.387409, 31.282370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590146, -0.558577, -0.582855,
		0.340608, -0.482298, 0.807078,
		-0.731925, -0.674819, -0.094370,
		39.382420, 36.184963, 31.254059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212856, 35.997997, 31.353258>,  <39.894768, 36.657337, 31.320118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212856, 35.997997, 31.353258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860157, 35.915581, 31.183517>,  <39.648537, 35.866131, 31.081673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.860157, 35.915581, 31.183517>,  <40.212856, 35.997997, 31.353258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860157, 35.915581, 31.183517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460298, -0.572607, -0.678415,
		-0.103205, -0.793517, 0.599733,
		-0.881745, -0.206040, -0.424350,
		39.595634, 35.853767, 31.056213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220238, 35.302559, 31.234301>,  <40.212856, 35.997997, 31.353258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220238, 35.302559, 31.234301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.938328, 35.415985, 30.974182>,  <39.769180, 35.484039, 30.818111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.938328, 35.415985, 30.974182>,  <40.220238, 35.302559, 31.234301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938328, 35.415985, 30.974182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471594, -0.497536, -0.728050,
		-0.529998, -0.819785, 0.216920,
		-0.704771, 0.283567, -0.650299,
		39.726894, 35.501053, 30.779093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124016, 34.711033, 30.802753>,  <40.220238, 35.302559, 31.234301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124016, 34.711033, 30.802753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976330, 35.007576, 30.578588>,  <39.887718, 35.185501, 30.444090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976330, 35.007576, 30.578588>,  <40.124016, 34.711033, 30.802753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976330, 35.007576, 30.578588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302603, -0.474257, -0.826748,
		-0.878699, -0.474831, -0.049234,
		-0.369216, 0.741361, -0.560414,
		39.865566, 35.229984, 30.410463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667202, 34.400970, 30.437269>,  <40.124016, 34.711033, 30.802753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667202, 34.400970, 30.437269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803204, 34.729790, 30.254564>,  <39.884804, 34.927082, 30.144941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803204, 34.729790, 30.254564>,  <39.667202, 34.400970, 30.437269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803204, 34.729790, 30.254564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131343, -0.522448, -0.842494,
		-0.931207, 0.226459, -0.285604,
		0.340004, 0.822049, -0.456764,
		39.905205, 34.976406, 30.117535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478153, 34.309780, 29.776905>,  <39.667202, 34.400970, 30.437269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478153, 34.309780, 29.776905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726490, 34.621010, 29.738613>,  <39.875492, 34.807747, 29.715639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726490, 34.621010, 29.738613>,  <39.478153, 34.309780, 29.776905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726490, 34.621010, 29.738613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326247, -0.367473, -0.870934,
		-0.712827, 0.509479, -0.481985,
		0.620839, 0.778071, -0.095728,
		39.912743, 34.854431, 29.709894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274914, 34.593685, 29.163496>,  <39.478153, 34.309780, 29.776905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274914, 34.593685, 29.163496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651718, 34.716778, 29.217037>,  <39.877800, 34.790634, 29.249163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651718, 34.716778, 29.217037>,  <39.274914, 34.593685, 29.163496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651718, 34.716778, 29.217037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234296, -0.317554, -0.918839,
		-0.240250, 0.896918, -0.371239,
		0.942011, 0.307731, 0.133852,
		39.934322, 34.809097, 29.257193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753063, 35.003899, 28.707317>,  <39.274914, 34.593685, 29.163496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753063, 35.003899, 28.707317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410706, 34.922623, 28.517094>,  <38.205292, 34.873859, 28.402960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.410706, 34.922623, 28.517094>,  <38.753063, 35.003899, 28.707317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410706, 34.922623, 28.517094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485810, 0.000652, 0.874064,
		-0.177289, 0.979140, -0.099268,
		-0.855896, -0.203187, -0.475560,
		38.153938, 34.861668, 28.374426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274303, 35.398125, 29.093428>,  <38.753063, 35.003899, 28.707317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274303, 35.398125, 29.093428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038147, 35.154682, 28.881378>,  <37.896454, 35.008617, 28.754148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038147, 35.154682, 28.881378>,  <38.274303, 35.398125, 29.093428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038147, 35.154682, 28.881378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664883, -0.005624, 0.746926,
		-0.457568, 0.793449, -0.401335,
		-0.590391, -0.608611, -0.530124,
		37.861031, 34.972099, 28.722342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628086, 35.668274, 29.132723>,  <38.274303, 35.398125, 29.093428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628086, 35.668274, 29.132723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588390, 35.278458, 29.052303>,  <37.564575, 35.044567, 29.004051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588390, 35.278458, 29.052303>,  <37.628086, 35.668274, 29.132723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588390, 35.278458, 29.052303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616762, -0.098314, 0.780986,
		-0.780870, 0.201501, -0.591303,
		-0.099236, -0.974542, -0.201049,
		37.558620, 34.986095, 28.991989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003670, 35.580791, 29.106779>,  <37.628086, 35.668274, 29.132723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003670, 35.580791, 29.106779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152908, 35.218235, 29.186031>,  <37.242451, 35.000702, 29.233582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152908, 35.218235, 29.186031>,  <37.003670, 35.580791, 29.106779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152908, 35.218235, 29.186031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488448, -0.010330, 0.872532,
		-0.788809, -0.422311, -0.446580,
		0.373093, -0.906392, 0.198129,
		37.264835, 34.946316, 29.245470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506512, 35.281792, 29.455395>,  <37.003670, 35.580791, 29.106779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506512, 35.281792, 29.455395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790054, 35.009544, 29.529467>,  <36.960178, 34.846195, 29.573910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790054, 35.009544, 29.529467>,  <36.506512, 35.281792, 29.455395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790054, 35.009544, 29.529467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290645, -0.042634, 0.955881,
		-0.642691, -0.731401, -0.228038,
		0.708854, -0.680614, 0.185178,
		37.002712, 34.805359, 29.585020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198837, 34.596710, 29.580465>,  <36.506512, 35.281792, 29.455395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198837, 34.596710, 29.580465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563042, 34.633018, 29.741827>,  <36.781563, 34.654804, 29.838644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563042, 34.633018, 29.741827>,  <36.198837, 34.596710, 29.580465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563042, 34.633018, 29.741827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399208, -0.061221, 0.914814,
		0.107736, -0.993988, -0.019505,
		0.910509, 0.090772, 0.403404,
		36.836193, 34.660252, 29.862848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205929, 34.056019, 30.119026>,  <36.198837, 34.596710, 29.580465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205929, 34.056019, 30.119026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490402, 34.322712, 30.208195>,  <36.661087, 34.482727, 30.261696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490402, 34.322712, 30.208195>,  <36.205929, 34.056019, 30.119026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490402, 34.322712, 30.208195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357962, 0.070522, 0.931069,
		0.605050, -0.741956, 0.288817,
		0.711181, 0.666729, 0.222922,
		36.703758, 34.522732, 30.275072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438377, 33.835365, 30.826595>,  <36.205929, 34.056019, 30.119026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438377, 33.835365, 30.826595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536610, 34.217491, 30.760790>,  <36.595551, 34.446766, 30.721306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536610, 34.217491, 30.760790>,  <36.438377, 33.835365, 30.826595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536610, 34.217491, 30.760790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399380, 0.254351, 0.880796,
		0.883280, -0.150606, 0.443997,
		0.245584, 0.955314, -0.164514,
		36.610287, 34.504086, 30.711435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803822, 34.076790, 31.405632>,  <36.438377, 33.835365, 30.826595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803822, 34.076790, 31.405632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673618, 34.404099, 31.216118>,  <36.595497, 34.600483, 31.102409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673618, 34.404099, 31.216118>,  <36.803822, 34.076790, 31.405632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673618, 34.404099, 31.216118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271777, 0.398963, 0.875766,
		0.905640, 0.413831, 0.092524,
		-0.325505, 0.818274, -0.473786,
		36.575966, 34.649582, 31.073982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856152, 34.604568, 31.909620>,  <36.803822, 34.076790, 31.405632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856152, 34.604568, 31.909620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621181, 34.779652, 31.637342>,  <36.480198, 34.884701, 31.473976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621181, 34.779652, 31.637342>,  <36.856152, 34.604568, 31.909620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621181, 34.779652, 31.637342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390056, 0.583833, 0.712036,
		0.709074, 0.683777, -0.172229,
		-0.587427, 0.437707, -0.680692,
		36.444954, 34.910965, 31.433134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008236, 35.261929, 31.903133>,  <36.856152, 34.604568, 31.909620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008236, 35.261929, 31.903133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632900, 35.227966, 31.769087>,  <36.407700, 35.207588, 31.688658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632900, 35.227966, 31.769087>,  <37.008236, 35.261929, 31.903133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632900, 35.227966, 31.769087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285413, 0.737242, 0.612384,
		0.195070, 0.670273, -0.716018,
		-0.938343, -0.084903, -0.335118,
		36.351398, 35.202496, 31.668550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676781, 35.919586, 32.029129>,  <37.008236, 35.261929, 31.903133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676781, 35.919586, 32.029129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343300, 35.707291, 31.968117>,  <36.143211, 35.579914, 31.931509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343300, 35.707291, 31.968117>,  <36.676781, 35.919586, 32.029129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343300, 35.707291, 31.968117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449320, 0.491377, 0.746097,
		-0.321030, 0.690555, -0.648130,
		-0.833697, -0.530738, -0.152533,
		36.093189, 35.548069, 31.922358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116795, 36.461849, 32.168533>,  <36.676781, 35.919586, 32.029129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116795, 36.461849, 32.168533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934303, 36.107548, 32.202690>,  <35.824806, 35.894966, 32.223186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934303, 36.107548, 32.202690>,  <36.116795, 36.461849, 32.168533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934303, 36.107548, 32.202690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314015, 0.250045, 0.915899,
		-0.832614, 0.391048, -0.392219,
		-0.456233, -0.885753, 0.085396,
		35.797432, 35.841824, 32.228310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502682, 36.695389, 32.101524>,  <36.116795, 36.461849, 32.168533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502682, 36.695389, 32.101524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486423, 36.337601, 32.279636>,  <35.476669, 36.122929, 32.386501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486423, 36.337601, 32.279636>,  <35.502682, 36.695389, 32.101524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486423, 36.337601, 32.279636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508931, 0.402037, 0.761154,
		-0.859847, -0.195679, -0.471563,
		-0.040644, -0.894470, 0.445278,
		35.474232, 36.069260, 32.413219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636536, 37.273830, 31.643936>,  <35.502682, 36.695389, 32.101524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636536, 37.273830, 31.643936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825737, 37.171726, 31.306625>,  <35.939259, 37.110462, 31.104239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825737, 37.171726, 31.306625>,  <35.636536, 37.273830, 31.643936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825737, 37.171726, 31.306625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465063, -0.885249, 0.007107,
		-0.748322, 0.388815, -0.537435,
		0.473001, -0.255260, -0.843275,
		35.967636, 37.095150, 31.053642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255173, 37.704952, 31.137789>,  <35.636536, 37.273830, 31.643936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255173, 37.704952, 31.137789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556328, 37.961033, 31.198851>,  <35.737019, 38.114681, 31.235487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.556328, 37.961033, 31.198851>,  <35.255173, 37.704952, 31.137789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556328, 37.961033, 31.198851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338229, -0.177392, -0.924193,
		-0.564593, 0.747443, -0.350092,
		0.752885, 0.640204, 0.152653,
		35.782192, 38.153095, 31.244646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269405, 38.154858, 30.617142>,  <35.255173, 37.704952, 31.137789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269405, 38.154858, 30.617142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648064, 38.164486, 30.745689>,  <35.875259, 38.170261, 30.822819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648064, 38.164486, 30.745689>,  <35.269405, 38.154858, 30.617142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648064, 38.164486, 30.745689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321011, 0.017622, -0.946911,
		-0.028452, 0.999555, 0.008956,
		0.946648, 0.024067, 0.321370,
		35.932056, 38.171707, 30.842100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615284, 38.722378, 30.264378>,  <35.269405, 38.154858, 30.617142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615284, 38.722378, 30.264378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895699, 38.466099, 30.389637>,  <36.063946, 38.312332, 30.464792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895699, 38.466099, 30.389637>,  <35.615284, 38.722378, 30.264378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895699, 38.466099, 30.389637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427449, 0.026023, -0.903665,
		0.570825, 0.767354, 0.292108,
		0.701032, -0.640696, 0.313150,
		36.106007, 38.273891, 30.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148556, 38.921814, 29.902138>,  <35.615284, 38.722378, 30.264378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148556, 38.921814, 29.902138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286106, 38.574455, 30.045038>,  <36.368637, 38.366039, 30.130779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.286106, 38.574455, 30.045038>,  <36.148556, 38.921814, 29.902138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286106, 38.574455, 30.045038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458812, -0.176559, -0.870815,
		0.819292, 0.463366, 0.337717,
		0.343879, -0.868400, 0.357251,
		36.389271, 38.313934, 30.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867954, 38.902534, 29.673714>,  <36.148556, 38.921814, 29.902138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867954, 38.902534, 29.673714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752163, 38.530048, 29.762287>,  <36.682686, 38.306557, 29.815432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.752163, 38.530048, 29.762287>,  <36.867954, 38.902534, 29.673714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752163, 38.530048, 29.762287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451347, -0.336806, -0.826346,
		0.844089, -0.139268, 0.517802,
		-0.289482, -0.931218, 0.221436,
		36.665318, 38.250683, 29.828718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512127, 38.488174, 29.534491>,  <36.867954, 38.902534, 29.673714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512127, 38.488174, 29.534491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195255, 38.244061, 29.534578>,  <37.005131, 38.097591, 29.534632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195255, 38.244061, 29.534578>,  <37.512127, 38.488174, 29.534491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195255, 38.244061, 29.534578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362295, -0.470567, -0.804555,
		0.491112, -0.637274, 0.593878,
		-0.792181, -0.610286, 0.000220,
		36.957600, 38.060974, 29.534645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818951, 37.814766, 29.488237>,  <37.512127, 38.488174, 29.534491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818951, 37.814766, 29.488237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434265, 37.778210, 29.384886>,  <37.203453, 37.756275, 29.322876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.434265, 37.778210, 29.384886>,  <37.818951, 37.814766, 29.488237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434265, 37.778210, 29.384886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269220, -0.491492, -0.828225,
		-0.051298, -0.866073, 0.497278,
		-0.961711, -0.091390, -0.258377,
		37.145752, 37.750793, 29.307373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704536, 37.116077, 29.311640>,  <37.818951, 37.814766, 29.488237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704536, 37.116077, 29.311640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431847, 37.346821, 29.131643>,  <37.268234, 37.485268, 29.023645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431847, 37.346821, 29.131643>,  <37.704536, 37.116077, 29.311640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431847, 37.346821, 29.131643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166815, -0.476306, -0.863311,
		-0.712340, -0.663603, 0.228480,
		-0.681722, 0.576856, -0.449991,
		37.227329, 37.519878, 28.996647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281837, 36.632908, 28.823782>,  <37.704536, 37.116077, 29.311640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281837, 36.632908, 28.823782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224491, 37.003597, 28.684853>,  <37.190083, 37.226009, 28.601496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224491, 37.003597, 28.684853>,  <37.281837, 36.632908, 28.823782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224491, 37.003597, 28.684853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166951, -0.323272, -0.931462,
		-0.975486, -0.191530, -0.108370,
		-0.143370, 0.926721, -0.347324,
		37.181480, 37.281612, 28.580656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158134, 36.536674, 28.143013>,  <37.281837, 36.632908, 28.823782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158134, 36.536674, 28.143013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194267, 36.933067, 28.103418>,  <37.215946, 37.170902, 28.079660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194267, 36.933067, 28.103418>,  <37.158134, 36.536674, 28.143013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194267, 36.933067, 28.103418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314792, -0.122711, -0.941195,
		-0.944852, 0.053863, -0.323037,
		0.090336, 0.990980, -0.098988,
		37.221367, 37.230362, 28.073723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792641, 36.786949, 27.452435>,  <37.158134, 36.536674, 28.143013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792641, 36.786949, 27.452435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048470, 37.084778, 27.528913>,  <37.201969, 37.263477, 27.574800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048470, 37.084778, 27.528913>,  <36.792641, 36.786949, 27.452435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048470, 37.084778, 27.528913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245983, 0.037415, -0.968552,
		-0.728312, 0.666491, -0.159223,
		0.639574, 0.744573, 0.191195,
		37.240341, 37.308151, 27.586271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624180, 37.266090, 26.914608>,  <36.792641, 36.786949, 27.452435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624180, 37.266090, 26.914608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979984, 37.378994, 27.058331>,  <37.193466, 37.446735, 27.144564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979984, 37.378994, 27.058331>,  <36.624180, 37.266090, 26.914608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979984, 37.378994, 27.058331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344742, 0.101510, -0.933193,
		-0.299871, 0.953954, -0.007010,
		0.889511, 0.282254, 0.359308,
		37.246838, 37.463669, 27.166122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780907, 37.887886, 26.635693>,  <36.624180, 37.266090, 26.914608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780907, 37.887886, 26.635693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137653, 37.740082, 26.740034>,  <37.351700, 37.651402, 26.802639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.137653, 37.740082, 26.740034>,  <36.780907, 37.887886, 26.635693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137653, 37.740082, 26.740034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355404, 0.215786, -0.909464,
		0.279764, 0.903826, 0.323776,
		0.891863, -0.369506, 0.260854,
		37.405212, 37.629230, 26.818291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319927, 38.318409, 26.483995>,  <36.780907, 37.887886, 26.635693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319927, 38.318409, 26.483995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556046, 37.998146, 26.524969>,  <37.697716, 37.805988, 26.549553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.556046, 37.998146, 26.524969>,  <37.319927, 38.318409, 26.483995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556046, 37.998146, 26.524969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475967, 0.242766, -0.845293,
		0.651925, 0.547728, 0.524392,
		0.590295, -0.800661, 0.102436,
		37.733135, 37.757946, 26.555700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027451, 38.558643, 26.233191>,  <37.319927, 38.318409, 26.483995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027451, 38.558643, 26.233191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034847, 38.159946, 26.201796>,  <38.039284, 37.920727, 26.182959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034847, 38.159946, 26.201796>,  <38.027451, 38.558643, 26.233191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034847, 38.159946, 26.201796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566401, 0.075131, -0.820698,
		0.823922, -0.029281, 0.565946,
		0.018489, -0.996744, -0.078487,
		38.040394, 37.860924, 26.178249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830582, 38.301933, 26.161676>,  <38.027451, 38.558643, 26.233191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830582, 38.301933, 26.161676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579918, 38.022690, 26.023140>,  <38.429520, 37.855145, 25.940018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579918, 38.022690, 26.023140>,  <38.830582, 38.301933, 26.161676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579918, 38.022690, 26.023140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458861, 0.028672, -0.888045,
		0.629879, -0.715421, 0.302366,
		-0.626657, -0.698105, -0.346339,
		38.391922, 37.813259, 25.919239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297443, 38.028099, 25.699659>,  <38.830582, 38.301933, 26.161676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297443, 38.028099, 25.699659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938560, 37.887161, 25.593168>,  <38.723232, 37.802597, 25.529274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.938560, 37.887161, 25.593168>,  <39.297443, 38.028099, 25.699659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938560, 37.887161, 25.593168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259108, 0.068169, -0.963440,
		0.357614, -0.933383, 0.030135,
		-0.897204, -0.352348, -0.266226,
		38.669399, 37.781456, 25.513300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454407, 37.386150, 25.360268>,  <39.297443, 38.028099, 25.699659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454407, 37.386150, 25.360268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091133, 37.493366, 25.231670>,  <38.873169, 37.557697, 25.154512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091133, 37.493366, 25.231670>,  <39.454407, 37.386150, 25.360268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091133, 37.493366, 25.231670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220211, -0.347221, -0.911562,
		-0.355990, -0.898654, 0.256306,
		-0.908173, 0.268065, -0.321501,
		38.818680, 37.573776, 25.135221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161942, 36.762806, 25.036922>,  <39.454407, 37.386150, 25.360268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161942, 36.762806, 25.036922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969051, 37.083843, 24.896467>,  <38.853317, 37.276466, 24.812195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969051, 37.083843, 24.896467>,  <39.161942, 36.762806, 25.036922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969051, 37.083843, 24.896467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205335, -0.286102, -0.935940,
		-0.851641, -0.523439, -0.026834,
		-0.482230, 0.802594, -0.351136,
		38.824383, 37.324623, 24.791126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835484, 36.542519, 24.456089>,  <39.161942, 36.762806, 25.036922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835484, 36.542519, 24.456089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.817596, 36.934708, 24.379492>,  <38.806862, 37.170021, 24.333534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.817596, 36.934708, 24.379492>,  <38.835484, 36.542519, 24.456089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817596, 36.934708, 24.379492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168435, -0.181540, -0.968851,
		-0.984698, -0.075583, -0.157027,
		-0.044722, 0.980475, -0.191493,
		38.804180, 37.228851, 24.322044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257542, 36.784328, 23.943132>,  <38.835484, 36.542519, 24.456089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257542, 36.784328, 23.943132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560398, 37.045612, 23.945919>,  <38.742111, 37.202381, 23.947592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.560398, 37.045612, 23.945919>,  <38.257542, 36.784328, 23.943132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560398, 37.045612, 23.945919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260867, -0.292564, -0.919976,
		-0.598899, 0.698372, -0.391914,
		0.757145, 0.653210, 0.006966,
		38.787540, 37.241577, 23.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173679, 37.057396, 23.351343>,  <38.257542, 36.784328, 23.943132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173679, 37.057396, 23.351343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551193, 37.166870, 23.425493>,  <38.777702, 37.232555, 23.469982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.551193, 37.166870, 23.425493>,  <38.173679, 37.057396, 23.351343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551193, 37.166870, 23.425493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257524, -0.257181, -0.931418,
		-0.207241, 0.926798, -0.313205,
		0.943786, 0.273686, 0.185374,
		38.834328, 37.248978, 23.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324268, 37.436443, 22.813583>,  <38.173679, 37.057396, 23.351343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324268, 37.436443, 22.813583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680477, 37.369335, 22.982735>,  <38.894203, 37.329071, 23.084227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.680477, 37.369335, 22.982735>,  <38.324268, 37.436443, 22.813583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680477, 37.369335, 22.982735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357682, -0.316216, -0.878676,
		0.281134, 0.933735, -0.221590,
		0.890521, -0.167767, 0.422880,
		38.947632, 37.319004, 23.109598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794933, 37.724277, 22.357601>,  <38.324268, 37.436443, 22.813583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794933, 37.724277, 22.357601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005417, 37.475513, 22.589577>,  <39.131706, 37.326256, 22.728762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005417, 37.475513, 22.589577>,  <38.794933, 37.724277, 22.357601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005417, 37.475513, 22.589577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503498, -0.321729, -0.801860,
		0.685271, 0.713944, 0.143836,
		0.526207, -0.621912, 0.579941,
		39.163280, 37.288940, 22.763559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467426, 37.884628, 22.278349>,  <38.794933, 37.724277, 22.357601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467426, 37.884628, 22.278349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498749, 37.502113, 22.391052>,  <39.517540, 37.272606, 22.458673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498749, 37.502113, 22.391052>,  <39.467426, 37.884628, 22.278349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498749, 37.502113, 22.391052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606675, -0.178560, -0.774636,
		0.791084, 0.231591, 0.566173,
		0.078303, -0.956285, 0.281756,
		39.522240, 37.215229, 22.475578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165527, 37.752628, 22.209761>,  <39.467426, 37.884628, 22.278349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165527, 37.752628, 22.209761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001671, 37.387775, 22.215490>,  <39.903358, 37.168861, 22.218929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.001671, 37.387775, 22.215490>,  <40.165527, 37.752628, 22.209761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001671, 37.387775, 22.215490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553112, -0.260831, -0.791223,
		0.725438, -0.316194, 0.611360,
		-0.409642, -0.912134, 0.014326,
		39.878777, 37.114136, 22.219788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680252, 37.359154, 22.192659>,  <40.165527, 37.752628, 22.209761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680252, 37.359154, 22.192659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.392498, 37.123146, 22.046034>,  <40.219845, 36.981541, 21.958059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.392498, 37.123146, 22.046034>,  <40.680252, 37.359154, 22.192659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392498, 37.123146, 22.046034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619732, -0.306836, -0.722346,
		0.313721, -0.746814, 0.586384,
		-0.719382, -0.590017, -0.366564,
		40.176682, 36.946140, 21.936064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334229, 37.372452, 22.458368>,  <40.680252, 37.359154, 22.192659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334229, 37.372452, 22.458368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515015, 37.701992, 22.321545>,  <41.623486, 37.899715, 22.239450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515015, 37.701992, 22.321545>,  <41.334229, 37.372452, 22.458368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515015, 37.701992, 22.321545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295764, 0.500164, 0.813855,
		0.841579, -0.266663, 0.469719,
		0.451961, 0.823849, -0.342058,
		41.650604, 37.949146, 22.218927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876778, 37.629642, 22.919418>,  <41.334229, 37.372452, 22.458368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876778, 37.629642, 22.919418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763031, 37.947048, 22.704210>,  <41.694782, 38.137493, 22.575085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763031, 37.947048, 22.704210>,  <41.876778, 37.629642, 22.919418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763031, 37.947048, 22.704210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149482, 0.517628, 0.842447,
		0.946990, 0.319989, -0.028581,
		-0.284368, 0.793516, -0.538021,
		41.677719, 38.185104, 22.542805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203014, 38.194603, 23.219238>,  <41.876778, 37.629642, 22.919418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203014, 38.194603, 23.219238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921959, 38.377136, 23.000858>,  <41.753326, 38.486656, 22.869831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.921959, 38.377136, 23.000858>,  <42.203014, 38.194603, 23.219238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921959, 38.377136, 23.000858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409828, 0.367681, 0.834776,
		0.581668, 0.810293, -0.071331,
		-0.702640, 0.456329, -0.545949,
		41.711166, 38.514034, 22.837074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192478, 38.899803, 23.447069>,  <42.203014, 38.194603, 23.219238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192478, 38.899803, 23.447069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.844330, 38.851646, 23.256086>,  <41.635441, 38.822754, 23.141497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.844330, 38.851646, 23.256086>,  <42.192478, 38.899803, 23.447069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844330, 38.851646, 23.256086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485702, 0.369307, 0.792279,
		0.080944, 0.921476, -0.379908,
		-0.870369, -0.120392, -0.477456,
		41.583218, 38.815529, 23.112850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880409, 39.605331, 23.397648>,  <42.192478, 38.899803, 23.447069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880409, 39.605331, 23.397648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.615242, 39.305992, 23.388655>,  <41.456142, 39.126389, 23.383259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.615242, 39.305992, 23.388655>,  <41.880409, 39.605331, 23.397648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615242, 39.305992, 23.388655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553086, 0.469266, 0.688393,
		-0.504609, 0.468786, -0.724989,
		-0.662922, -0.748351, -0.022483,
		41.416367, 39.081486, 23.381910>
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
