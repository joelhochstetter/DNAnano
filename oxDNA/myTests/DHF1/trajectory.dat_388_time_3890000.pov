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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.598260, 4.742119, 2.542397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.786469, 5.091988, 2.495819>,  <4.899393, 5.301909, 2.467873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.786469, 5.091988, 2.495819>,  <4.598260, 4.742119, 2.542397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.786469, 5.091988, 2.495819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434026, -0.114517, 0.893592,
		0.768266, -0.470993, -0.433513,
		0.470520, 0.874672, -0.116444,
		4.927625, 5.354389, 2.460886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383771, 4.788357, 2.584510>,  <4.598260, 4.742119, 2.542397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383771, 4.788357, 2.584510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187748, 5.111671, 2.715057>,  <5.070134, 5.305660, 2.793386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187748, 5.111671, 2.715057>,  <5.383771, 4.788357, 2.584510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187748, 5.111671, 2.715057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586755, 0.028990, 0.809245,
		0.644640, 0.588076, -0.488473,
		-0.490059, 0.808286, 0.326368,
		5.040730, 5.354157, 2.812968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.712839, 4.017911, 2.649021>,  <5.383771, 4.788357, 2.584510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.712839, 4.017911, 2.649021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.585419, 3.701157, 2.857422>,  <5.508967, 3.511104, 2.982462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.585419, 3.701157, 2.857422>,  <5.712839, 4.017911, 2.649021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.585419, 3.701157, 2.857422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438327, -0.364283, -0.821685,
		0.840473, -0.490117, -0.231063,
		-0.318550, -0.791886, 0.521002,
		5.489854, 3.463591, 3.013722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.885318, 3.458436, 2.282789>,  <5.712839, 4.017911, 2.649021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.885318, 3.458436, 2.282789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.570923, 3.359634, 2.509491>,  <5.382286, 3.300354, 2.645512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.570923, 3.359634, 2.509491>,  <5.885318, 3.458436, 2.282789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.570923, 3.359634, 2.509491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486863, -0.317704, -0.813652,
		0.381035, -0.915453, 0.129455,
		-0.785988, -0.247003, 0.566756,
		5.335126, 3.285534, 2.679518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.618196, 2.817390, 2.033925>,  <5.885318, 3.458436, 2.282789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.618196, 2.817390, 2.033925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.306042, 2.956100, 2.242058>,  <5.118749, 3.039326, 2.366937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.306042, 2.956100, 2.242058>,  <5.618196, 2.817390, 2.033925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.306042, 2.956100, 2.242058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620352, -0.324907, -0.713862,
		-0.078489, -0.879877, 0.468674,
		-0.780386, 0.346773, 0.520332,
		5.071926, 3.060133, 2.398157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.095276, 2.275935, 2.041314>,  <5.618196, 2.817390, 2.033925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.095276, 2.275935, 2.041314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.929382, 2.633682, 2.108368>,  <4.829846, 2.848330, 2.148600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.929382, 2.633682, 2.108368>,  <5.095276, 2.275935, 2.041314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.929382, 2.633682, 2.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654298, -0.165084, -0.737998,
		-0.632368, -0.415757, 0.653649,
		-0.414735, 0.894367, 0.167635,
		4.804962, 2.901993, 2.158659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.477404, 2.101904, 2.078658>,  <5.095276, 2.275935, 2.041314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.477404, 2.101904, 2.078658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492329, 2.482857, 1.957611>,  <4.501283, 2.711428, 1.884983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492329, 2.482857, 1.957611>,  <4.477404, 2.101904, 2.078658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.492329, 2.482857, 1.957611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690192, -0.194436, -0.697015,
		-0.722664, 0.234872, 0.650071,
		0.037312, 0.952381, -0.302618,
		4.503522, 2.768571, 1.866826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.681281, 2.409630, 2.040985>,  <4.477404, 2.101904, 2.078658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.681281, 2.409630, 2.040985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.913933, 2.610718, 1.785179>,  <4.053524, 2.731371, 1.631696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.913933, 2.610718, 1.785179>,  <3.681281, 2.409630, 2.040985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.913933, 2.610718, 1.785179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676029, -0.138528, -0.723736,
		-0.452428, 0.853277, 0.259282,
		0.581630, 0.502721, -0.639514,
		4.088422, 2.761534, 1.593325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.732250, 2.107693, 0.732273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847182, 2.436867, 0.536224>,  <3.916142, 2.634371, 0.418595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847182, 2.436867, 0.536224>,  <3.732250, 2.107693, 0.732273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847182, 2.436867, 0.536224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447432, 0.337120, 0.828344,
		0.846904, -0.457305, -0.271343,
		0.287330, 0.822935, -0.490121,
		3.933382, 2.683747, 0.389188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.465482, 2.306597, 0.751715>,  <3.732250, 2.107693, 0.732273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.465482, 2.306597, 0.751715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.266437, 2.645699, 0.678291>,  <4.147009, 2.849160, 0.634237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.266437, 2.645699, 0.678291>,  <4.465482, 2.306597, 0.751715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.266437, 2.645699, 0.678291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355210, 0.392224, 0.848520,
		0.791333, 0.357033, -0.496306,
		-0.497613, 0.847755, -0.183558,
		4.117153, 2.900025, 0.623224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.902470, 2.925166, 0.739146>,  <4.465482, 2.306597, 0.751715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.902470, 2.925166, 0.739146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.530629, 2.972382, 0.878807>,  <4.307525, 3.000711, 0.962604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.530629, 2.972382, 0.878807>,  <4.902470, 2.925166, 0.739146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530629, 2.972382, 0.878807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368558, 0.303474, 0.878674,
		-0.002241, 0.945500, -0.325614,
		-0.929602, 0.118039, 0.349152,
		4.251749, 3.007793, 0.983553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.931256, 3.588491, 1.126430>,  <4.902470, 2.925166, 0.739146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.931256, 3.588491, 1.126430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.611322, 3.384598, 1.253197>,  <4.419362, 3.262262, 1.329257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.611322, 3.384598, 1.253197>,  <4.931256, 3.588491, 1.126430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.611322, 3.384598, 1.253197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198367, 0.273844, 0.941095,
		-0.566494, 0.815586, -0.117915,
		-0.799835, -0.509734, 0.316916,
		4.371372, 3.231678, 1.348271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.381865, 3.978693, 1.537906>,  <4.931256, 3.588491, 1.126430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.381865, 3.978693, 1.537906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437371, 3.597221, 1.644669>,  <4.470675, 3.368338, 1.708726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.437371, 3.597221, 1.644669>,  <4.381865, 3.978693, 1.537906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.437371, 3.597221, 1.644669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344262, 0.299160, 0.889937,
		-0.928562, -0.031608, 0.369829,
		0.138767, -0.953679, 0.266907,
		4.479002, 3.311118, 1.724741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.220198, 4.060518, 2.162052>,  <4.381865, 3.978693, 1.537906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.220198, 4.060518, 2.162052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377670, 3.693138, 2.177361>,  <4.472154, 3.472710, 2.186546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.377670, 3.693138, 2.177361>,  <4.220198, 4.060518, 2.162052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.377670, 3.693138, 2.177361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437762, 0.223924, 0.870760,
		-0.808319, -0.326048, 0.490217,
		0.393681, -0.918450, 0.038271,
		4.495775, 3.417603, 2.188842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.164228, 3.809194, 2.950799>,  <4.220198, 4.060518, 2.162052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.164228, 3.809194, 2.950799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.434530, 3.573532, 2.773598>,  <4.596711, 3.432135, 2.667277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.434530, 3.573532, 2.773598>,  <4.164228, 3.809194, 2.950799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434530, 3.573532, 2.773598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547097, -0.001902, 0.837067,
		-0.494006, -0.808017, 0.321039,
		0.675754, -0.589155, -0.443003,
		4.637257, 3.396785, 2.640697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.223023, 3.131914, 3.339559>,  <4.164228, 3.809194, 2.950799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.223023, 3.131914, 3.339559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.569972, 3.168236, 3.143837>,  <4.778141, 3.190029, 3.026404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.569972, 3.168236, 3.143837>,  <4.223023, 3.131914, 3.339559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.569972, 3.168236, 3.143837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488217, 0.035360, 0.872006,
		0.096487, -0.995240, -0.013663,
		0.867372, 0.090808, -0.489305,
		4.830184, 3.195477, 2.997046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
