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
	<24.569147, 35.351139, 34.696678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547352, 34.987797, 34.862534>,  <24.534275, 34.769791, 34.962048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.547352, 34.987797, 34.862534>,  <24.569147, 35.351139, 34.696678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547352, 34.987797, 34.862534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993271, -0.006805, 0.115615,
		-0.102198, 0.418144, 0.902614,
		-0.054486, -0.908355, 0.414634,
		24.531006, 34.715290, 34.986923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135700, 34.882431, 34.577572>,  <24.569147, 35.351139, 34.696678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135700, 34.882431, 34.577572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188793, 34.725109, 34.213661>,  <25.220650, 34.630718, 33.995316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188793, 34.725109, 34.213661>,  <25.135700, 34.882431, 34.577572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188793, 34.725109, 34.213661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928121, 0.371428, -0.025160,
		0.347813, -0.841044, 0.414333,
		0.132734, -0.393302, -0.909778,
		25.228613, 34.607117, 33.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701187, 34.319275, 34.493134>,  <25.135700, 34.882431, 34.577572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701187, 34.319275, 34.493134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646030, 34.556900, 34.176128>,  <25.612936, 34.699474, 33.985924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646030, 34.556900, 34.176128>,  <25.701187, 34.319275, 34.493134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646030, 34.556900, 34.176128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963181, 0.266886, 0.032465,
		0.230797, -0.758858, -0.608988,
		-0.137894, 0.594059, -0.792514,
		25.604662, 34.735119, 33.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438923, 34.635635, 34.401909>,  <25.701187, 34.319275, 34.493134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438923, 34.635635, 34.401909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627325, 34.978676, 34.484535>,  <26.740366, 35.184502, 34.534111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627325, 34.978676, 34.484535>,  <26.438923, 34.635635, 34.401909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627325, 34.978676, 34.484535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601690, 0.141095, 0.786169,
		0.645076, -0.494579, 0.582468,
		0.471006, 0.857604, 0.206566,
		26.768627, 35.235958, 34.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696054, 34.677654, 35.105083>,  <26.438923, 34.635635, 34.401909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696054, 34.677654, 35.105083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574886, 35.018848, 34.935074>,  <26.502186, 35.223564, 34.833069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574886, 35.018848, 34.935074>,  <26.696054, 34.677654, 35.105083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574886, 35.018848, 34.935074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810924, 0.003583, 0.585140,
		0.500642, 0.521915, 0.690625,
		-0.302919, 0.852990, -0.425027,
		26.484011, 35.274746, 34.807564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667416, 33.910191, 35.002991>,  <26.696054, 34.677654, 35.105083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667416, 33.910191, 35.002991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997631, 33.741215, 34.853306>,  <27.195761, 33.639832, 34.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997631, 33.741215, 34.853306>,  <26.667416, 33.910191, 35.002991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997631, 33.741215, 34.853306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051682, -0.716890, 0.695268,
		-0.561975, -0.554630, -0.613653,
		0.825538, -0.422438, -0.374210,
		27.245293, 33.614483, 34.741043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539181, 33.135639, 34.962818>,  <26.667416, 33.910191, 35.002991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539181, 33.135639, 34.962818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936832, 33.170876, 34.987938>,  <27.175425, 33.192017, 35.003010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936832, 33.170876, 34.987938>,  <26.539181, 33.135639, 34.962818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936832, 33.170876, 34.987938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024664, -0.749759, 0.661251,
		0.105330, -0.655822, -0.747531,
		0.994131, 0.088087, 0.062797,
		27.235071, 33.197300, 35.006779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838654, 32.410450, 34.949280>,  <26.539181, 33.135639, 34.962818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838654, 32.410450, 34.949280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102301, 32.662884, 35.112885>,  <27.260489, 32.814342, 35.211048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102301, 32.662884, 35.112885>,  <26.838654, 32.410450, 34.949280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102301, 32.662884, 35.112885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184226, -0.662800, 0.725781,
		0.729125, -0.403024, -0.553126,
		0.659119, 0.631085, 0.409016,
		27.300035, 32.852211, 35.235588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372383, 32.000038, 35.212624>,  <26.838654, 32.410450, 34.949280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372383, 32.000038, 35.212624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442942, 32.351299, 35.390491>,  <27.485277, 32.562054, 35.497215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442942, 32.351299, 35.390491>,  <27.372383, 32.000038, 35.212624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442942, 32.351299, 35.390491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333557, -0.478357, 0.812351,
		0.926080, 0.005029, -0.377294,
		0.176396, 0.878151, 0.444674,
		27.495861, 32.614746, 35.523895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998100, 31.949165, 35.653915>,  <27.372383, 32.000038, 35.212624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998100, 31.949165, 35.653915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827671, 32.271889, 35.817635>,  <27.725414, 32.465523, 35.915867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827671, 32.271889, 35.817635>,  <27.998100, 31.949165, 35.653915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827671, 32.271889, 35.817635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239249, -0.335823, 0.911034,
		0.872480, 0.486091, -0.049942,
		-0.426073, 0.806808, 0.409296,
		27.699848, 32.513931, 35.940422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486469, 32.217247, 36.155968>,  <27.998100, 31.949165, 35.653915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486469, 32.217247, 36.155968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124594, 32.361683, 36.246433>,  <27.907469, 32.448345, 36.300713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124594, 32.361683, 36.246433>,  <28.486469, 32.217247, 36.155968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124594, 32.361683, 36.246433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061303, -0.414973, 0.907766,
		0.421638, 0.835111, 0.353286,
		-0.904690, 0.361091, 0.226163,
		27.853188, 32.470009, 36.314281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529778, 32.427742, 36.810017>,  <28.486469, 32.217247, 36.155968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529778, 32.427742, 36.810017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152269, 32.312588, 36.744995>,  <27.925764, 32.243496, 36.705982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152269, 32.312588, 36.744995>,  <28.529778, 32.427742, 36.810017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152269, 32.312588, 36.744995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021585, -0.544285, 0.838622,
		-0.329900, 0.787957, 0.519894,
		-0.943769, -0.287883, -0.162552,
		27.869139, 32.226223, 36.696228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313457, 32.355198, 37.497459>,  <28.529778, 32.427742, 36.810017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313457, 32.355198, 37.497459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037943, 32.164684, 37.278835>,  <27.872635, 32.050377, 37.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037943, 32.164684, 37.278835>,  <28.313457, 32.355198, 37.497459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037943, 32.164684, 37.278835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135825, -0.655782, 0.742631,
		-0.712126, 0.585751, 0.387003,
		-0.688787, -0.476282, -0.546560,
		27.831306, 32.021801, 37.114868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699881, 32.231091, 37.917667>,  <28.313457, 32.355198, 37.497459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699881, 32.231091, 37.917667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669945, 31.971270, 37.615017>,  <27.651983, 31.815376, 37.433426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669945, 31.971270, 37.615017>,  <27.699881, 32.231091, 37.917667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669945, 31.971270, 37.615017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306213, -0.707122, 0.637347,
		-0.949017, 0.279386, -0.145982,
		-0.074839, -0.649555, -0.756622,
		27.647493, 31.776403, 37.388031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306543, 31.737881, 38.159885>,  <27.699881, 32.231091, 37.917667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306543, 31.737881, 38.159885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441069, 31.565859, 37.824757>,  <27.521784, 31.462646, 37.623680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441069, 31.565859, 37.824757>,  <27.306543, 31.737881, 38.159885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441069, 31.565859, 37.824757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013629, -0.891774, 0.452276,
		-0.941653, -0.140686, -0.305775,
		0.336311, -0.430054, -0.837824,
		27.541962, 31.436842, 37.573410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785032, 31.105951, 38.081856>,  <27.306543, 31.737881, 38.159885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785032, 31.105951, 38.081856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111376, 31.049879, 37.857452>,  <27.307182, 31.016235, 37.722813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111376, 31.049879, 37.857452>,  <26.785032, 31.105951, 38.081856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111376, 31.049879, 37.857452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031839, -0.957810, 0.285633,
		-0.577375, -0.250898, -0.776974,
		0.815858, -0.140179, -0.561004,
		27.356133, 31.007826, 37.689152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626040, 30.499090, 37.628689>,  <26.785032, 31.105951, 38.081856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626040, 30.499090, 37.628689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024614, 30.532335, 37.634487>,  <27.263760, 30.552282, 37.637966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024614, 30.532335, 37.634487>,  <26.626040, 30.499090, 37.628689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024614, 30.532335, 37.634487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083054, -0.996535, 0.004463,
		0.014815, -0.003243, -0.999885,
		0.996435, 0.083111, 0.014495,
		27.323545, 30.557268, 37.638836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876938, 29.946489, 37.137974>,  <26.626040, 30.499090, 37.628689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876938, 29.946489, 37.137974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139891, 30.039661, 37.424633>,  <27.297663, 30.095564, 37.596630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139891, 30.039661, 37.424633>,  <26.876938, 29.946489, 37.137974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139891, 30.039661, 37.424633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079590, -0.967170, 0.241345,
		0.749341, -0.101618, -0.654341,
		0.657384, 0.232928, 0.716652,
		27.337107, 30.109539, 37.639629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427412, 29.414125, 37.074577>,  <26.876938, 29.946489, 37.137974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427412, 29.414125, 37.074577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479053, 29.555429, 37.445206>,  <27.510038, 29.640213, 37.667583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479053, 29.555429, 37.445206>,  <27.427412, 29.414125, 37.074577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479053, 29.555429, 37.445206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348239, -0.891032, 0.291189,
		0.928473, 0.285076, -0.238055,
		0.129103, 0.353261, 0.926574,
		27.517784, 29.661407, 37.723179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932167, 29.154202, 37.353546>,  <27.427412, 29.414125, 37.074577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932167, 29.154202, 37.353546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780134, 29.274195, 37.703529>,  <27.688915, 29.346191, 37.913517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780134, 29.274195, 37.703529>,  <27.932167, 29.154202, 37.353546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780134, 29.274195, 37.703529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390555, -0.805434, 0.445806,
		0.838454, 0.511161, 0.188970,
		-0.380081, 0.299985, 0.874956,
		27.666109, 29.364189, 37.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449265, 29.109098, 37.802105>,  <27.932167, 29.154202, 37.353546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449265, 29.109098, 37.802105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127764, 29.119020, 38.039883>,  <27.934862, 29.124973, 38.182549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127764, 29.119020, 38.039883>,  <28.449265, 29.109098, 37.802105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127764, 29.119020, 38.039883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376356, -0.752633, 0.540278,
		0.460800, 0.657973, 0.595596,
		-0.803754, 0.024804, 0.594445,
		27.886637, 29.126461, 38.218216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769304, 29.032837, 38.523952>,  <28.449265, 29.109098, 37.802105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769304, 29.032837, 38.523952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381079, 28.937990, 38.540829>,  <28.148144, 28.881083, 38.550953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381079, 28.937990, 38.540829>,  <28.769304, 29.032837, 38.523952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381079, 28.937990, 38.540829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210061, -0.747742, 0.629886,
		-0.117809, 0.620207, 0.775541,
		-0.970564, -0.237117, 0.042191,
		28.089909, 28.866856, 38.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708910, 28.880615, 39.241135>,  <28.769304, 29.032837, 38.523952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708910, 28.880615, 39.241135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388969, 28.706816, 39.075512>,  <28.197004, 28.602535, 38.976139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388969, 28.706816, 39.075512>,  <28.708910, 28.880615, 39.241135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388969, 28.706816, 39.075512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136543, -0.803516, 0.579412,
		-0.584458, 0.406907, 0.702022,
		-0.799853, -0.434499, -0.414061,
		28.149014, 28.576466, 38.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375912, 28.492714, 39.810501>,  <28.708910, 28.880615, 39.241135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375912, 28.492714, 39.810501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266626, 28.358171, 39.450008>,  <28.201056, 28.277447, 39.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266626, 28.358171, 39.450008>,  <28.375912, 28.492714, 39.810501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266626, 28.358171, 39.450008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199416, -0.936329, 0.289001,
		-0.941057, -0.100760, 0.322893,
		-0.273214, -0.336356, -0.901232,
		28.184662, 28.257265, 39.179638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924829, 27.998592, 39.952911>,  <28.375912, 28.492714, 39.810501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924829, 27.998592, 39.952911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098730, 27.923267, 39.600655>,  <28.203070, 27.878073, 39.389301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098730, 27.923267, 39.600655>,  <27.924829, 27.998592, 39.952911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098730, 27.923267, 39.600655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186501, -0.937865, 0.292620,
		-0.881027, -0.291457, -0.372618,
		0.434751, -0.188313, -0.880641,
		28.229155, 27.866774, 39.336464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777462, 27.398840, 39.583267>,  <27.924829, 27.998592, 39.952911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777462, 27.398840, 39.583267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152908, 27.486982, 39.477104>,  <28.378176, 27.539867, 39.413406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152908, 27.486982, 39.477104>,  <27.777462, 27.398840, 39.583267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152908, 27.486982, 39.477104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305928, -0.887237, 0.345280,
		-0.159398, -0.405282, -0.900188,
		0.938616, 0.220356, -0.265411,
		28.434494, 27.553089, 39.397480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573353, 27.006777, 40.204399>,  <27.777462, 27.398840, 39.583267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573353, 27.006777, 40.204399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282341, 27.158113, 39.975468>,  <27.107733, 27.248915, 39.838108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282341, 27.158113, 39.975468>,  <27.573353, 27.006777, 40.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282341, 27.158113, 39.975468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297071, -0.578224, -0.759872,
		-0.618423, -0.722852, 0.308282,
		-0.727531, 0.378341, -0.572326,
		27.064081, 27.271616, 39.803768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989841, 26.534641, 39.979099>,  <27.573353, 27.006777, 40.204399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989841, 26.534641, 39.979099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079609, 26.804420, 39.697742>,  <27.133469, 26.966288, 39.528931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079609, 26.804420, 39.697742>,  <26.989841, 26.534641, 39.979099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079609, 26.804420, 39.697742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384744, -0.724483, -0.571923,
		-0.895326, -0.142275, -0.422077,
		0.224417, 0.674449, -0.703388,
		27.146935, 27.006756, 39.486725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709263, 26.440243, 39.331673>,  <26.989841, 26.534641, 39.979099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709263, 26.440243, 39.331673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075264, 26.595459, 39.287502>,  <27.294865, 26.688589, 39.261002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075264, 26.595459, 39.287502>,  <26.709263, 26.440243, 39.331673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075264, 26.595459, 39.287502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333519, -0.881531, -0.334167,
		-0.227015, 0.268934, -0.936023,
		0.915002, 0.388042, -0.110427,
		27.349764, 26.711872, 39.254375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951771, 26.359730, 38.705544>,  <26.709263, 26.440243, 39.331673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951771, 26.359730, 38.705544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240911, 26.380791, 38.981140>,  <27.414396, 26.393427, 39.146500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240911, 26.380791, 38.981140>,  <26.951771, 26.359730, 38.705544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240911, 26.380791, 38.981140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509529, -0.714134, -0.479992,
		0.466762, 0.698026, -0.543041,
		0.722851, 0.052653, 0.688995,
		27.457767, 26.396587, 39.187840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699596, 26.468498, 38.433769>,  <26.951771, 26.359730, 38.705544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699596, 26.468498, 38.433769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668491, 26.246498, 38.765053>,  <27.649828, 26.113298, 38.963821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668491, 26.246498, 38.765053>,  <27.699596, 26.468498, 38.433769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668491, 26.246498, 38.765053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238468, -0.816965, -0.525073,
		0.968032, 0.156670, 0.195880,
		-0.077764, -0.554998, 0.828209,
		27.645163, 26.079998, 39.013515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305922, 26.250210, 38.746624>,  <27.699596, 26.468498, 38.433769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305922, 26.250210, 38.746624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997810, 25.999350, 38.792847>,  <27.812944, 25.848833, 38.820580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997810, 25.999350, 38.792847>,  <28.305922, 26.250210, 38.746624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997810, 25.999350, 38.792847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401772, -0.617983, -0.675778,
		0.495229, -0.474108, 0.727991,
		-0.770278, -0.627151, 0.115560,
		27.766727, 25.811205, 38.827515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591562, 25.524143, 38.934898>,  <28.305922, 26.250210, 38.746624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591562, 25.524143, 38.934898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236116, 25.525337, 38.751438>,  <28.022850, 25.526054, 38.641361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236116, 25.525337, 38.751438>,  <28.591562, 25.524143, 38.934898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236116, 25.525337, 38.751438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354248, -0.630708, -0.690446,
		-0.291335, -0.776015, 0.559397,
		-0.888613, 0.002986, -0.458649,
		27.969532, 25.526234, 38.613842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474537, 24.848623, 38.651951>,  <28.591562, 25.524143, 38.934898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474537, 24.848623, 38.651951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288986, 25.136532, 38.445358>,  <28.177656, 25.309277, 38.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288986, 25.136532, 38.445358>,  <28.474537, 24.848623, 38.651951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288986, 25.136532, 38.445358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286358, -0.429876, -0.856274,
		-0.838343, -0.545102, -0.006704,
		-0.463875, 0.719771, -0.516478,
		28.149824, 25.352463, 38.290417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079676, 24.714861, 38.946743>,  <28.474537, 24.848623, 38.651951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079676, 24.714861, 38.946743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005880, 24.498699, 38.618370>,  <28.961603, 24.369001, 38.421349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005880, 24.498699, 38.618370>,  <29.079676, 24.714861, 38.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005880, 24.498699, 38.618370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586913, 0.609408, -0.533061,
		0.788351, -0.580158, 0.204742,
		-0.184488, -0.540405, -0.820930,
		28.950535, 24.336578, 38.372089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746298, 24.617065, 38.563438>,  <29.079676, 24.714861, 38.946743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746298, 24.617065, 38.563438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441324, 24.581802, 38.307026>,  <29.258341, 24.560644, 38.153179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441324, 24.581802, 38.307026>,  <29.746298, 24.617065, 38.563438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441324, 24.581802, 38.307026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498896, 0.550790, -0.669129,
		0.412064, -0.829975, -0.375959,
		-0.762435, -0.088159, -0.641032,
		29.212593, 24.555355, 38.114716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045355, 24.496754, 37.904579>,  <29.746298, 24.617065, 38.563438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045355, 24.496754, 37.904579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679396, 24.651930, 37.859928>,  <29.459820, 24.745035, 37.833138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679396, 24.651930, 37.859928>,  <30.045355, 24.496754, 37.904579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679396, 24.651930, 37.859928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364393, 0.674661, -0.641911,
		-0.173710, -0.627962, -0.758610,
		-0.914900, 0.387939, -0.111630,
		29.404926, 24.768311, 37.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912685, 24.620090, 37.182808>,  <30.045355, 24.496754, 37.904579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912685, 24.620090, 37.182808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662447, 24.868076, 37.372238>,  <29.512304, 25.016869, 37.485897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662447, 24.868076, 37.372238>,  <29.912685, 24.620090, 37.182808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662447, 24.868076, 37.372238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181582, 0.706073, -0.684462,
		-0.758722, -0.342203, -0.554290,
		-0.625594, 0.619966, 0.473575,
		29.474770, 25.054066, 37.514309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612938, 24.975634, 36.585266>,  <29.912685, 24.620090, 37.182808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612938, 24.975634, 36.585266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547308, 25.201729, 36.908646>,  <29.507931, 25.337385, 37.102673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547308, 25.201729, 36.908646>,  <29.612938, 24.975634, 36.585266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547308, 25.201729, 36.908646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008438, 0.820327, -0.571833,
		-0.986412, -0.087002, -0.139365,
		-0.164075, 0.565239, 0.808446,
		29.498085, 25.371300, 37.151180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208416, 25.529858, 36.248096>,  <29.612938, 24.975634, 36.585266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208416, 25.529858, 36.248096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294888, 25.672682, 36.611584>,  <29.346769, 25.758377, 36.829678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294888, 25.672682, 36.611584>,  <29.208416, 25.529858, 36.248096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294888, 25.672682, 36.611584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042308, 0.926429, -0.374085,
		-0.975437, 0.119315, 0.185167,
		0.216178, 0.357062, 0.908721,
		29.359741, 25.779800, 36.884201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767023, 26.180166, 36.431679>,  <29.208416, 25.529858, 36.248096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767023, 26.180166, 36.431679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082251, 26.187071, 36.677814>,  <29.271387, 26.191214, 36.825497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082251, 26.187071, 36.677814>,  <28.767023, 26.180166, 36.431679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082251, 26.187071, 36.677814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145170, 0.966202, -0.213025,
		-0.598222, 0.257207, 0.758930,
		0.788071, 0.017263, 0.615342,
		29.318672, 26.192249, 36.862415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698896, 26.765474, 36.802837>,  <28.767023, 26.180166, 36.431679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698896, 26.765474, 36.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089748, 26.691334, 36.844532>,  <29.324259, 26.646849, 36.869549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089748, 26.691334, 36.844532>,  <28.698896, 26.765474, 36.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089748, 26.691334, 36.844532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194082, 0.977641, -0.080928,
		-0.086909, 0.099308, 0.991254,
		0.977128, -0.185351, 0.104240,
		29.382887, 26.635729, 36.875805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912386, 27.294455, 37.321381>,  <28.698896, 26.765474, 36.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912386, 27.294455, 37.321381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239756, 27.167471, 37.129799>,  <29.436178, 27.091280, 37.014851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239756, 27.167471, 37.129799>,  <28.912386, 27.294455, 37.321381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239756, 27.167471, 37.129799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270750, 0.948253, -0.165865,
		0.506826, 0.006071, 0.862027,
		0.818426, -0.317459, -0.478956,
		29.485283, 27.072233, 36.986111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575720, 27.764214, 37.564819>,  <28.912386, 27.294455, 37.321381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575720, 27.764214, 37.564819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635880, 27.612541, 37.199612>,  <29.671974, 27.521538, 36.980488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635880, 27.612541, 37.199612>,  <29.575720, 27.764214, 37.564819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635880, 27.612541, 37.199612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225817, 0.912283, -0.341680,
		0.962490, -0.154787, 0.222832,
		0.150398, -0.379183, -0.913017,
		29.681000, 27.498787, 36.925705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058878, 28.148230, 37.383499>,  <29.575720, 27.764214, 37.564819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058878, 28.148230, 37.383499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940622, 27.994377, 37.033722>,  <29.869669, 27.902065, 36.823856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940622, 27.994377, 37.033722>,  <30.058878, 28.148230, 37.383499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940622, 27.994377, 37.033722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018832, 0.912838, -0.407887,
		0.955114, -0.137055, -0.262627,
		-0.295639, -0.384633, -0.874445,
		29.851931, 27.878986, 36.771389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441790, 28.640171, 36.982613>,  <30.058878, 28.148230, 37.383499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441790, 28.640171, 36.982613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171318, 28.475666, 36.738106>,  <30.009035, 28.376963, 36.591400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171318, 28.475666, 36.738106>,  <30.441790, 28.640171, 36.982613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171318, 28.475666, 36.738106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127107, 0.882374, -0.453057,
		0.725689, -0.228652, -0.648917,
		-0.676180, -0.411260, -0.611266,
		29.968464, 28.352287, 36.554726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688038, 28.622683, 36.394947>,  <30.441790, 28.640171, 36.982613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688038, 28.622683, 36.394947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296782, 28.604820, 36.313713>,  <30.062027, 28.594103, 36.264973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296782, 28.604820, 36.313713>,  <30.688038, 28.622683, 36.394947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296782, 28.604820, 36.313713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052425, 0.892152, -0.448683,
		0.201217, -0.449523, -0.870311,
		-0.978143, -0.044656, -0.203082,
		30.003338, 28.591423, 36.252789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611500, 28.898479, 35.665352>,  <30.688038, 28.622683, 36.394947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611500, 28.898479, 35.665352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245335, 28.918457, 35.825115>,  <30.025635, 28.930445, 35.920975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245335, 28.918457, 35.825115>,  <30.611500, 28.898479, 35.665352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245335, 28.918457, 35.825115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129690, 0.902760, -0.410128,
		-0.381053, -0.427236, -0.819920,
		-0.915412, 0.049945, 0.399407,
		29.970711, 28.933441, 35.944939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238222, 29.084713, 35.116013>,  <30.611500, 28.898479, 35.665352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238222, 29.084713, 35.116013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015249, 29.189985, 35.430973>,  <29.881466, 29.253149, 35.619949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015249, 29.189985, 35.430973>,  <30.238222, 29.084713, 35.116013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015249, 29.189985, 35.430973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273784, 0.837098, -0.473612,
		-0.783780, -0.479585, -0.394571,
		-0.557432, 0.263181, 0.787404,
		29.848019, 29.268940, 35.667194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609678, 29.287254, 34.902336>,  <30.238222, 29.084713, 35.116013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609678, 29.287254, 34.902336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610088, 29.452152, 35.266766>,  <29.610334, 29.551090, 35.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610088, 29.452152, 35.266766>,  <29.609678, 29.287254, 34.902336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610088, 29.452152, 35.266766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417732, 0.827951, -0.374161,
		-0.908570, -0.380200, 0.173057,
		0.001027, 0.412243, 0.911073,
		29.610395, 29.575825, 35.540089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978914, 29.494171, 34.934109>,  <29.609678, 29.287254, 34.902336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978914, 29.494171, 34.934109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190928, 29.698938, 35.204517>,  <29.318134, 29.821798, 35.366764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190928, 29.698938, 35.204517>,  <28.978914, 29.494171, 34.934109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190928, 29.698938, 35.204517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334972, 0.858777, -0.387680,
		-0.779012, -0.020965, 0.626658,
		0.530032, 0.511920, 0.676021,
		29.349937, 29.852514, 35.407322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475353, 29.947882, 35.091183>,  <28.978914, 29.494171, 34.934109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475353, 29.947882, 35.091183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830521, 30.094007, 35.203003>,  <29.043621, 30.181683, 35.270096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830521, 30.094007, 35.203003>,  <28.475353, 29.947882, 35.091183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830521, 30.094007, 35.203003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291780, 0.917090, -0.271681,
		-0.355621, 0.159664, 0.920892,
		0.887918, 0.365313, 0.279550,
		29.096895, 30.203602, 35.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294428, 30.709606, 35.386402>,  <28.475353, 29.947882, 35.091183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294428, 30.709606, 35.386402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690475, 30.682507, 35.337288>,  <28.928104, 30.666246, 35.307819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690475, 30.682507, 35.337288>,  <28.294428, 30.709606, 35.386402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690475, 30.682507, 35.337288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039865, 0.975414, -0.216743,
		0.134455, 0.209706, 0.968476,
		0.990118, -0.067750, -0.122789,
		28.987511, 30.662182, 35.300449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585215, 31.209976, 35.823090>,  <28.294428, 30.709606, 35.386402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585215, 31.209976, 35.823090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853937, 31.144192, 35.534195>,  <29.015171, 31.104721, 35.360859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.853937, 31.144192, 35.534195>,  <28.585215, 31.209976, 35.823090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853937, 31.144192, 35.534195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062098, 0.984112, -0.166333,
		0.738119, 0.066894, 0.671347,
		0.671807, -0.164463, -0.722238,
		29.055479, 31.094852, 35.317524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092779, 31.581188, 36.099194>,  <28.585215, 31.209976, 35.823090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092779, 31.581188, 36.099194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208065, 31.542761, 35.718098>,  <29.277237, 31.519705, 35.489441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208065, 31.542761, 35.718098>,  <29.092779, 31.581188, 36.099194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208065, 31.542761, 35.718098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347920, 0.937463, 0.010723,
		0.892124, -0.334566, 0.303613,
		0.288214, -0.096067, -0.952735,
		29.294529, 31.513941, 35.432278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817133, 31.870922, 36.022072>,  <29.092779, 31.581188, 36.099194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817133, 31.870922, 36.022072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674452, 31.861395, 35.648506>,  <29.588842, 31.855679, 35.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674452, 31.861395, 35.648506>,  <29.817133, 31.870922, 36.022072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674452, 31.861395, 35.648506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300707, 0.943545, -0.138916,
		0.884498, -0.330386, -0.329405,
		-0.356705, -0.023817, -0.933914,
		29.567440, 31.854250, 35.368332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356508, 32.133389, 35.703163>,  <29.817133, 31.870922, 36.022072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356508, 32.133389, 35.703163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034769, 32.167927, 35.468021>,  <29.841724, 32.188648, 35.326939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034769, 32.167927, 35.468021>,  <30.356508, 32.133389, 35.703163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034769, 32.167927, 35.468021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089373, 0.995710, 0.023966,
		0.587397, -0.033261, -0.808615,
		-0.804349, 0.086346, -0.587850,
		29.793465, 32.193832, 35.291668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013395, 31.944677, 35.254021>,  <30.356508, 32.133389, 35.703163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013395, 31.944677, 35.254021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179798, 32.122570, 34.936745>,  <31.279640, 32.229305, 34.746380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179798, 32.122570, 34.936745>,  <31.013395, 31.944677, 35.254021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179798, 32.122570, 34.936745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908516, -0.165695, 0.383592,
		0.039167, -0.880205, -0.472975,
		0.416009, 0.444730, -0.793191,
		31.304602, 32.255989, 34.698788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554762, 31.502928, 34.873703>,  <31.013395, 31.944677, 35.254021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554762, 31.502928, 34.873703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604519, 31.899683, 34.884167>,  <31.634373, 32.137737, 34.890446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604519, 31.899683, 34.884167>,  <31.554762, 31.502928, 34.873703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604519, 31.899683, 34.884167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780337, -0.114078, 0.614866,
		0.612862, -0.056074, -0.788198,
		0.124393, 0.991888, 0.026158,
		31.641836, 32.197250, 34.892014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209503, 31.640699, 34.797619>,  <31.554762, 31.502928, 34.873703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209503, 31.640699, 34.797619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060417, 31.944294, 35.011169>,  <31.970966, 32.126450, 35.139301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060417, 31.944294, 35.011169>,  <32.209503, 31.640699, 34.797619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060417, 31.944294, 35.011169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682263, -0.165826, 0.712053,
		0.628969, 0.629635, -0.456023,
		-0.372713, 0.758987, 0.533876,
		31.948603, 32.171989, 35.171333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663460, 32.201527, 34.866123>,  <32.209503, 31.640699, 34.797619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663460, 32.201527, 34.866123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421082, 32.180489, 35.183632>,  <32.275654, 32.167866, 35.374138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421082, 32.180489, 35.183632>,  <32.663460, 32.201527, 34.866123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421082, 32.180489, 35.183632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789896, -0.158096, 0.592512,
		0.094328, 0.986022, 0.137343,
		-0.605943, -0.052596, 0.793767,
		32.239300, 32.164711, 35.421761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011475, 32.527817, 35.415173>,  <32.663460, 32.201527, 34.866123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011475, 32.527817, 35.415173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741638, 32.298077, 35.600666>,  <32.579739, 32.160233, 35.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741638, 32.298077, 35.600666>,  <33.011475, 32.527817, 35.415173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741638, 32.298077, 35.600666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702220, -0.305574, 0.643048,
		-0.227631, 0.759437, 0.609458,
		-0.674589, -0.574352, 0.463734,
		32.539261, 32.125771, 35.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925220, 32.618782, 36.190075>,  <33.011475, 32.527817, 35.415173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925220, 32.618782, 36.190075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878567, 32.242352, 36.063091>,  <32.850574, 32.016495, 35.986900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878567, 32.242352, 36.063091>,  <32.925220, 32.618782, 36.190075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878567, 32.242352, 36.063091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755114, -0.291654, 0.587147,
		-0.645135, -0.171231, 0.744635,
		-0.116638, -0.941073, -0.317455,
		32.843575, 31.960030, 35.967854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738976, 32.107624, 36.783516>,  <32.925220, 32.618782, 36.190075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738976, 32.107624, 36.783516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928547, 31.902973, 36.496845>,  <33.042290, 31.780184, 36.324841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928547, 31.902973, 36.496845>,  <32.738976, 32.107624, 36.783516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928547, 31.902973, 36.496845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674027, -0.312959, 0.669137,
		-0.566640, -0.800185, 0.196531,
		0.473927, -0.511627, -0.716681,
		33.070724, 31.749485, 36.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850491, 31.398497, 37.058300>,  <32.738976, 32.107624, 36.783516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850491, 31.398497, 37.058300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114182, 31.442467, 36.760754>,  <33.272396, 31.468849, 36.582226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114182, 31.442467, 36.760754>,  <32.850491, 31.398497, 37.058300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114182, 31.442467, 36.760754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703279, -0.440247, 0.558195,
		-0.266124, -0.891122, -0.367531,
		0.659225, 0.109928, -0.743868,
		33.311951, 31.475445, 36.537594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310524, 30.919453, 37.216969>,  <32.850491, 31.398497, 37.058300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310524, 30.919453, 37.216969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503788, 31.119764, 36.929699>,  <33.619747, 31.239950, 36.757336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503788, 31.119764, 36.929699>,  <33.310524, 30.919453, 37.216969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503788, 31.119764, 36.929699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874397, -0.234262, 0.424913,
		0.044546, -0.833272, -0.551066,
		0.483162, 0.500779, -0.718175,
		33.648735, 31.269999, 36.714245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878807, 30.523140, 37.141582>,  <33.310524, 30.919453, 37.216969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878807, 30.523140, 37.141582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986092, 30.874115, 36.982502>,  <34.050465, 31.084700, 36.887054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986092, 30.874115, 36.982502>,  <33.878807, 30.523140, 37.141582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986092, 30.874115, 36.982502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954409, -0.185880, 0.233565,
		0.131013, -0.442217, -0.887288,
		0.268215, 0.877436, -0.397703,
		34.066555, 31.137346, 36.863190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539799, 30.415861, 36.785515>,  <33.878807, 30.523140, 37.141582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539799, 30.415861, 36.785515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500141, 30.805319, 36.867672>,  <34.476345, 31.038994, 36.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500141, 30.805319, 36.867672>,  <34.539799, 30.415861, 36.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500141, 30.805319, 36.867672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883193, -0.008984, 0.468923,
		0.458409, 0.227893, -0.859026,
		-0.099146, 0.973645, 0.205392,
		34.470398, 31.097412, 36.929291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270885, 30.672247, 36.727062>,  <34.539799, 30.415861, 36.785515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270885, 30.672247, 36.727062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049694, 30.926105, 36.943001>,  <34.916981, 31.078421, 37.072563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049694, 30.926105, 36.943001>,  <35.270885, 30.672247, 36.727062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049694, 30.926105, 36.943001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775144, 0.154243, 0.612667,
		0.305560, 0.757253, -0.577236,
		-0.552978, 0.634647, 0.539850,
		34.883801, 31.116499, 37.104958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753162, 31.154732, 36.928646>,  <35.270885, 30.672247, 36.727062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753162, 31.154732, 36.928646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434448, 31.227436, 37.159153>,  <35.243217, 31.271059, 37.297459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434448, 31.227436, 37.159153>,  <35.753162, 31.154732, 36.928646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434448, 31.227436, 37.159153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604211, 0.251375, 0.756134,
		-0.007424, 0.950670, -0.310116,
		-0.796790, 0.181763, 0.576271,
		35.195412, 31.281965, 37.332035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822842, 31.844379, 37.232193>,  <35.753162, 31.154732, 36.928646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822842, 31.844379, 37.232193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574772, 31.649994, 37.478519>,  <35.425930, 31.533361, 37.626316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574772, 31.649994, 37.478519>,  <35.822842, 31.844379, 37.232193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574772, 31.649994, 37.478519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558689, 0.277450, 0.781593,
		-0.550685, 0.828769, 0.099437,
		-0.620172, -0.485966, 0.615812,
		35.388721, 31.504204, 37.663261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760384, 32.308876, 37.776989>,  <35.822842, 31.844379, 37.232193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760384, 32.308876, 37.776989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617298, 31.957569, 37.903915>,  <35.531448, 31.746784, 37.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617298, 31.957569, 37.903915>,  <35.760384, 32.308876, 37.776989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617298, 31.957569, 37.903915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300463, 0.213487, 0.929594,
		-0.884175, 0.427869, 0.187520,
		-0.357711, -0.878267, 0.317318,
		35.509983, 31.694090, 37.999111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379818, 32.362335, 38.430679>,  <35.760384, 32.308876, 37.776989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379818, 32.362335, 38.430679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491581, 31.978437, 38.442101>,  <35.558640, 31.748098, 38.448956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491581, 31.978437, 38.442101>,  <35.379818, 32.362335, 38.430679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491581, 31.978437, 38.442101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220812, 0.093171, 0.970856,
		-0.934438, -0.264956, 0.237957,
		0.279405, -0.959749, 0.028556,
		35.575401, 31.690514, 38.450668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182861, 32.144936, 39.138966>,  <35.379818, 32.362335, 38.430679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182861, 32.144936, 39.138966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419327, 31.842722, 39.026039>,  <35.561207, 31.661394, 38.958282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419327, 31.842722, 39.026039>,  <35.182861, 32.144936, 39.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419327, 31.842722, 39.026039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173964, -0.222353, 0.959321,
		-0.787571, -0.616224, -0.000011,
		0.591159, -0.755531, -0.282319,
		35.596676, 31.616062, 38.941345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876480, 31.627476, 39.551399>,  <35.182861, 32.144936, 39.138966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876480, 31.627476, 39.551399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251228, 31.536755, 39.444939>,  <35.476078, 31.482323, 39.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251228, 31.536755, 39.444939>,  <34.876480, 31.627476, 39.551399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251228, 31.536755, 39.444939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240276, -0.135453, 0.961208,
		-0.254057, -0.964475, -0.072406,
		0.936869, -0.226804, -0.266153,
		35.532288, 31.468714, 39.365093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992149, 31.016870, 39.867691>,  <34.876480, 31.627476, 39.551399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992149, 31.016870, 39.867691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335388, 31.210966, 39.800507>,  <35.541332, 31.327423, 39.760197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335388, 31.210966, 39.800507>,  <34.992149, 31.016870, 39.867691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335388, 31.210966, 39.800507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317848, -0.245031, 0.915933,
		0.403291, -0.839346, -0.364493,
		0.858096, 0.485241, -0.167965,
		35.592815, 31.356539, 39.750118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549023, 30.556444, 39.826401>,  <34.992149, 31.016870, 39.867691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549023, 30.556444, 39.826401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707615, 30.891369, 39.976978>,  <35.802773, 31.092323, 40.067326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707615, 30.891369, 39.976978>,  <35.549023, 30.556444, 39.826401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707615, 30.891369, 39.976978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302437, -0.506293, 0.807588,
		0.866795, -0.206344, -0.453971,
		0.396483, 0.837311, 0.376446,
		35.826561, 31.142563, 40.089912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090652, 30.366949, 40.104935>,  <35.549023, 30.556444, 39.826401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090652, 30.366949, 40.104935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021847, 30.700531, 40.314671>,  <35.980564, 30.900681, 40.440510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021847, 30.700531, 40.314671>,  <36.090652, 30.366949, 40.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021847, 30.700531, 40.314671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158713, -0.501853, 0.850267,
		0.972225, 0.229477, -0.046033,
		-0.172015, 0.833957, 0.524335,
		35.970242, 30.950718, 40.471970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617081, 30.309078, 40.606552>,  <36.090652, 30.366949, 40.104935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617081, 30.309078, 40.606552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364021, 30.589590, 40.737984>,  <36.212185, 30.757896, 40.816845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364021, 30.589590, 40.737984>,  <36.617081, 30.309078, 40.606552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364021, 30.589590, 40.737984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170367, -0.287865, 0.942395,
		0.755470, 0.652182, 0.062642,
		-0.632645, 0.701279, 0.328584,
		36.174229, 30.799974, 40.836559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888641, 30.773750, 41.173512>,  <36.617081, 30.309078, 40.606552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888641, 30.773750, 41.173512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490398, 30.768560, 41.210617>,  <36.251453, 30.765446, 41.232880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490398, 30.768560, 41.210617>,  <36.888641, 30.773750, 41.173512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490398, 30.768560, 41.210617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093321, -0.222486, 0.970459,
		0.008046, 0.974850, 0.222718,
		-0.995604, -0.012976, 0.092764,
		36.191719, 30.764668, 41.238445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865391, 30.902931, 41.806194>,  <36.888641, 30.773750, 41.173512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865391, 30.902931, 41.806194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485367, 30.800797, 41.734425>,  <36.257355, 30.739515, 41.691364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485367, 30.800797, 41.734425>,  <36.865391, 30.902931, 41.806194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485367, 30.800797, 41.734425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082146, -0.350047, 0.933124,
		-0.301069, 0.901260, 0.311589,
		-0.950058, -0.255339, -0.179423,
		36.200348, 30.724195, 41.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512684, 31.168112, 42.383949>,  <36.865391, 30.902931, 41.806194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512684, 31.168112, 42.383949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284176, 30.881083, 42.224583>,  <36.147072, 30.708864, 42.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284176, 30.881083, 42.224583>,  <36.512684, 31.168112, 42.383949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284176, 30.881083, 42.224583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244219, -0.314827, 0.917192,
		-0.783586, 0.621266, 0.004607,
		-0.571271, -0.717574, -0.398419,
		36.112793, 30.665810, 42.105057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998402, 31.160809, 42.864559>,  <36.512684, 31.168112, 42.383949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998402, 31.160809, 42.864559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954449, 30.813665, 42.670757>,  <35.928078, 30.605379, 42.554474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954449, 30.813665, 42.670757>,  <35.998402, 31.160809, 42.864559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954449, 30.813665, 42.670757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426983, -0.398974, 0.811483,
		-0.897558, 0.296046, -0.326719,
		-0.109884, -0.867857, -0.484509,
		35.921482, 30.553308, 42.525406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249111, 31.008766, 42.971466>,  <35.998402, 31.160809, 42.864559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249111, 31.008766, 42.971466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430698, 30.672560, 42.853184>,  <35.539650, 30.470835, 42.782215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430698, 30.672560, 42.853184>,  <35.249111, 31.008766, 42.971466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430698, 30.672560, 42.853184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316232, -0.462253, 0.828444,
		-0.833011, -0.282580, -0.475649,
		0.453972, -0.840518, -0.295701,
		35.566891, 30.420404, 42.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721783, 30.413301, 43.005047>,  <35.249111, 31.008766, 42.971466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721783, 30.413301, 43.005047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075005, 30.226059, 43.018314>,  <35.286938, 30.113714, 43.026276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075005, 30.226059, 43.018314>,  <34.721783, 30.413301, 43.005047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075005, 30.226059, 43.018314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301597, -0.511952, 0.804329,
		-0.359529, -0.720267, -0.593258,
		0.883051, -0.468104, 0.033169,
		35.339920, 30.085627, 43.028263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632732, 29.671749, 42.957668>,  <34.721783, 30.413301, 43.005047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632732, 29.671749, 42.957668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986462, 29.748442, 43.127941>,  <35.198700, 29.794456, 43.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986462, 29.748442, 43.127941>,  <34.632732, 29.671749, 42.957668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986462, 29.748442, 43.127941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264091, -0.546452, 0.794762,
		0.384995, -0.815248, -0.432607,
		0.884327, 0.191732, 0.425681,
		35.251759, 29.805962, 43.255646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727081, 29.106083, 43.305161>,  <34.632732, 29.671749, 42.957668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727081, 29.106083, 43.305161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008259, 29.336800, 43.471622>,  <35.176964, 29.475229, 43.571499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008259, 29.336800, 43.471622>,  <34.727081, 29.106083, 43.305161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008259, 29.336800, 43.471622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127477, -0.473459, 0.871542,
		0.699731, -0.665693, -0.259286,
		0.702941, 0.576792, 0.416155,
		35.219143, 29.509838, 43.596470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179741, 28.685116, 43.629635>,  <34.727081, 29.106083, 43.305161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179741, 28.685116, 43.629635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250027, 29.036285, 43.807789>,  <35.292198, 29.246988, 43.914680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250027, 29.036285, 43.807789>,  <35.179741, 28.685116, 43.629635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250027, 29.036285, 43.807789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098878, -0.434398, 0.895277,
		0.979462, -0.201355, 0.010477,
		0.175717, 0.877926, 0.445386,
		35.302742, 29.299664, 43.941406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704662, 28.619606, 44.117054>,  <35.179741, 28.685116, 43.629635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704662, 28.619606, 44.117054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542137, 28.962355, 44.243977>,  <35.444622, 29.168003, 44.320129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542137, 28.962355, 44.243977>,  <35.704662, 28.619606, 44.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542137, 28.962355, 44.243977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099345, -0.303781, 0.947548,
		0.908317, 0.416524, 0.038305,
		-0.406313, 0.856869, 0.317309,
		35.420242, 29.219416, 44.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052498, 28.798035, 44.672398>,  <35.704662, 28.619606, 44.117054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052498, 28.798035, 44.672398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727627, 29.027897, 44.712673>,  <35.532703, 29.165813, 44.736839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727627, 29.027897, 44.712673>,  <36.052498, 28.798035, 44.672398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727627, 29.027897, 44.712673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048835, -0.105021, 0.993270,
		0.581361, 0.811631, 0.057233,
		-0.812179, 0.574653, 0.100691,
		35.483974, 29.200293, 44.742882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225311, 29.237743, 45.237499>,  <36.052498, 28.798035, 44.672398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225311, 29.237743, 45.237499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826733, 29.227659, 45.205372>,  <35.587585, 29.221609, 45.186096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826733, 29.227659, 45.205372>,  <36.225311, 29.237743, 45.237499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826733, 29.227659, 45.205372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073700, -0.199769, 0.977067,
		-0.040678, 0.979519, 0.197201,
		-0.996450, -0.025212, -0.080317,
		35.527798, 29.220097, 45.181278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205418, 29.543320, 45.809696>,  <36.225311, 29.237743, 45.237499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205418, 29.543320, 45.809696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850880, 29.383425, 45.716225>,  <35.638157, 29.287487, 45.660141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850880, 29.383425, 45.716225>,  <36.205418, 29.543320, 45.809696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850880, 29.383425, 45.716225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186751, -0.153196, 0.970389,
		-0.423700, 0.903737, 0.061133,
		-0.886342, -0.399737, -0.233683,
		35.584976, 29.263504, 45.646118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702160, 29.812567, 46.227921>,  <36.205418, 29.543320, 45.809696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702160, 29.812567, 46.227921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533585, 29.465191, 46.123459>,  <35.432442, 29.256765, 46.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533585, 29.465191, 46.123459>,  <35.702160, 29.812567, 46.227921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533585, 29.465191, 46.123459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085429, -0.248680, 0.964811,
		-0.902826, 0.428914, 0.030612,
		-0.421434, -0.868442, -0.261156,
		35.407154, 29.204659, 46.045113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288830, 29.634501, 46.731384>,  <35.702160, 29.812567, 46.227921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288830, 29.634501, 46.731384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270939, 29.280153, 46.546677>,  <35.260204, 29.067545, 46.435852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270939, 29.280153, 46.546677>,  <35.288830, 29.634501, 46.731384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270939, 29.280153, 46.546677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111581, -0.463773, 0.878900,
		-0.992748, -0.012214, 0.119589,
		-0.044728, -0.885870, -0.461772,
		35.257519, 29.014393, 46.408146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766487, 29.280956, 47.011993>,  <35.288830, 29.634501, 46.731384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766487, 29.280956, 47.011993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030102, 29.016367, 46.868816>,  <35.188271, 28.857613, 46.782909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030102, 29.016367, 46.868816>,  <34.766487, 29.280956, 47.011993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030102, 29.016367, 46.868816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000668, -0.476431, 0.879211,
		-0.752112, -0.579192, -0.314426,
		0.659035, -0.661476, -0.357943,
		35.227814, 28.817924, 46.761433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657722, 28.762592, 47.389576>,  <34.766487, 29.280956, 47.011993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657722, 28.762592, 47.389576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017475, 28.665958, 47.243835>,  <35.233326, 28.607979, 47.156391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017475, 28.665958, 47.243835>,  <34.657722, 28.762592, 47.389576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017475, 28.665958, 47.243835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275526, -0.333822, 0.901470,
		-0.339449, -0.911142, -0.233654,
		0.899366, -0.241625, -0.364359,
		35.287289, 28.593483, 47.134529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709278, 28.010460, 47.345779>,  <34.657722, 28.762592, 47.389576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709278, 28.010460, 47.345779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076813, 28.166248, 47.371223>,  <35.297333, 28.259722, 47.386490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076813, 28.166248, 47.371223>,  <34.709278, 28.010460, 47.345779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076813, 28.166248, 47.371223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146440, -0.486194, 0.861493,
		0.366454, -0.782259, -0.503768,
		0.918840, 0.389469, 0.063614,
		35.352467, 28.283089, 47.390308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196148, 27.475470, 47.580147>,  <34.709278, 28.010460, 47.345779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196148, 27.475470, 47.580147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402405, 27.807758, 47.664062>,  <35.526161, 28.007132, 47.714413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402405, 27.807758, 47.664062>,  <35.196148, 27.475470, 47.580147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402405, 27.807758, 47.664062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410825, -0.454585, 0.790301,
		0.751887, -0.321329, -0.575686,
		0.515644, 0.830723, 0.209786,
		35.557098, 28.056974, 47.726997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934193, 27.347191, 47.639561>,  <35.196148, 27.475470, 47.580147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934193, 27.347191, 47.639561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908661, 27.679266, 47.861088>,  <35.893341, 27.878511, 47.994003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908661, 27.679266, 47.861088>,  <35.934193, 27.347191, 47.639561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908661, 27.679266, 47.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603313, -0.409953, 0.684070,
		0.794946, 0.377787, -0.474698,
		-0.063829, 0.830190, 0.553815,
		35.889511, 27.928324, 48.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594028, 27.404606, 47.891792>,  <35.934193, 27.347191, 47.639561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594028, 27.404606, 47.891792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345104, 27.615120, 48.123569>,  <36.195747, 27.741428, 48.262634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345104, 27.615120, 48.123569>,  <36.594028, 27.404606, 47.891792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345104, 27.615120, 48.123569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493704, -0.310546, 0.812292,
		0.607439, 0.791572, -0.066572,
		-0.622313, 0.526285, 0.579440,
		36.158409, 27.773005, 48.297401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958138, 27.625650, 48.404354>,  <36.594028, 27.404606, 47.891792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958138, 27.625650, 48.404354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595867, 27.695486, 48.558899>,  <36.378506, 27.737387, 48.651627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595867, 27.695486, 48.558899>,  <36.958138, 27.625650, 48.404354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595867, 27.695486, 48.558899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313923, -0.336372, 0.887866,
		0.284973, 0.925404, 0.249836,
		-0.905672, 0.174589, 0.386363,
		36.324165, 27.747862, 48.674809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090561, 27.829569, 49.117741>,  <36.958138, 27.625650, 48.404354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090561, 27.829569, 49.117741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706367, 27.721689, 49.090225>,  <36.475853, 27.656961, 49.073715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706367, 27.721689, 49.090225>,  <37.090561, 27.829569, 49.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706367, 27.721689, 49.090225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106302, -0.583877, 0.804852,
		-0.257233, 0.765736, 0.589474,
		-0.960485, -0.269697, -0.068793,
		36.418221, 27.640779, 49.069588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836971, 27.929176, 49.775471>,  <37.090561, 27.829569, 49.117741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836971, 27.929176, 49.775471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552551, 27.705412, 49.605072>,  <36.381901, 27.571154, 49.502834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552551, 27.705412, 49.605072>,  <36.836971, 27.929176, 49.775471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552551, 27.705412, 49.605072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003867, -0.608943, 0.793205,
		-0.703134, 0.562358, 0.435150,
		-0.711047, -0.559412, -0.425994,
		36.339237, 27.537588, 49.477272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270199, 27.840954, 50.236237>,  <36.836971, 27.929176, 49.775471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270199, 27.840954, 50.236237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237499, 27.547533, 49.966358>,  <36.217880, 27.371481, 49.804432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237499, 27.547533, 49.966358>,  <36.270199, 27.840954, 50.236237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237499, 27.547533, 49.966358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104481, -0.679544, 0.726157,
		-0.991161, -0.011130, 0.132194,
		-0.081749, -0.733551, -0.674700,
		36.212975, 27.327467, 49.763947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790405, 27.339962, 50.548737>,  <36.270199, 27.840954, 50.236237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790405, 27.339962, 50.548737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956802, 27.123343, 50.256523>,  <36.056641, 26.993370, 50.081196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956802, 27.123343, 50.256523>,  <35.790405, 27.339962, 50.548737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956802, 27.123343, 50.256523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048287, -0.789051, 0.612426,
		-0.908085, -0.290041, -0.302091,
		0.415994, -0.541548, -0.730531,
		36.081600, 26.960878, 50.037365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377510, 26.685898, 50.381905>,  <35.790405, 27.339962, 50.548737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377510, 26.685898, 50.381905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771549, 26.638987, 50.331581>,  <36.007973, 26.610840, 50.301388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771549, 26.638987, 50.331581>,  <35.377510, 26.685898, 50.381905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771549, 26.638987, 50.331581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034170, -0.850346, 0.525113,
		-0.168566, -0.512989, -0.841682,
		0.985098, -0.117277, -0.125811,
		36.067078, 26.603804, 50.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493900, 26.029741, 50.140594>,  <35.377510, 26.685898, 50.381905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493900, 26.029741, 50.140594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854000, 26.129368, 50.283436>,  <36.070061, 26.189144, 50.369141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854000, 26.129368, 50.283436>,  <35.493900, 26.029741, 50.140594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854000, 26.129368, 50.283436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119813, -0.930263, 0.346777,
		0.418572, -0.269399, -0.867307,
		0.900246, 0.249066, 0.357104,
		36.124073, 26.204088, 50.390568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057587, 25.542568, 49.961662>,  <35.493900, 26.029741, 50.140594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057587, 25.542568, 49.961662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159035, 25.729082, 50.300663>,  <36.219906, 25.840990, 50.504063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159035, 25.729082, 50.300663>,  <36.057587, 25.542568, 49.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159035, 25.729082, 50.300663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159326, -0.884316, 0.438862,
		0.954091, 0.023723, -0.298575,
		0.253624, 0.466286, 0.847498,
		36.235123, 25.868967, 50.554913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500393, 25.156008, 50.367729>,  <36.057587, 25.542568, 49.961662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500393, 25.156008, 50.367729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348324, 25.400257, 50.645607>,  <36.257080, 25.546806, 50.812336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348324, 25.400257, 50.645607>,  <36.500393, 25.156008, 50.367729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348324, 25.400257, 50.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185967, -0.786220, 0.589300,
		0.906025, 0.094848, 0.412459,
		-0.380177, 0.610624, 0.694697,
		36.234272, 25.583445, 50.854015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817780, 25.103628, 51.014530>,  <36.500393, 25.156008, 50.367729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817780, 25.103628, 51.014530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433781, 25.208645, 51.053482>,  <36.203381, 25.271654, 51.076851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433781, 25.208645, 51.053482>,  <36.817780, 25.103628, 51.014530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433781, 25.208645, 51.053482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181916, -0.849111, 0.495900,
		0.212878, 0.458347, 0.862903,
		-0.959994, 0.262542, 0.097376,
		36.145782, 25.287407, 51.082695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311554, 24.930729, 50.406384>,  <36.817780, 25.103628, 51.014530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311554, 24.930729, 50.406384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482235, 25.258484, 50.559502>,  <37.584644, 25.455137, 50.651375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482235, 25.258484, 50.559502>,  <37.311554, 24.930729, 50.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482235, 25.258484, 50.559502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767340, -0.103987, -0.632753,
		-0.478663, 0.563731, -0.673119,
		0.426699, 0.819386, 0.382799,
		37.610245, 25.504299, 50.674343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298702, 25.378727, 49.847668>,  <37.311554, 24.930729, 50.406384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298702, 25.378727, 49.847668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608845, 25.429331, 50.095158>,  <37.794930, 25.459692, 50.243652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608845, 25.429331, 50.095158>,  <37.298702, 25.378727, 49.847668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608845, 25.429331, 50.095158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620106, 0.032984, -0.783824,
		-0.119568, 0.991417, -0.052874,
		0.775353, 0.126508, 0.618728,
		37.841450, 25.467283, 50.280777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566582, 25.976519, 49.609364>,  <37.298702, 25.378727, 49.847668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566582, 25.976519, 49.609364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815292, 25.703379, 49.762787>,  <37.964520, 25.539495, 49.854839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815292, 25.703379, 49.762787>,  <37.566582, 25.976519, 49.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815292, 25.703379, 49.762787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472799, -0.063167, -0.878903,
		0.624386, 0.727824, 0.283575,
		0.621774, -0.682849, 0.383555,
		38.001823, 25.498524, 49.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370632, 26.175409, 49.707020>,  <37.566582, 25.976519, 49.609364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370632, 26.175409, 49.707020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282341, 25.795246, 49.619385>,  <38.229366, 25.567148, 49.566803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282341, 25.795246, 49.619385>,  <38.370632, 26.175409, 49.707020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282341, 25.795246, 49.619385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460127, 0.096593, -0.882583,
		0.859979, -0.295618, 0.415988,
		-0.220726, -0.950410, -0.219090,
		38.216122, 25.510122, 49.553658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899437, 25.891706, 49.418777>,  <38.370632, 26.175409, 49.707020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899437, 25.891706, 49.418777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 25.711113, 49.281876>,  <38.372059, 25.602757, 49.199734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 25.711113, 49.281876>,  <38.899437, 25.891706, 49.418777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569824, 25.711113, 49.281876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335082, 0.098733, -0.937002,
		0.456835, -0.886799, 0.069926,
		-0.824028, -0.451486, -0.342255,
		38.322617, 25.575666, 49.179199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032558, 25.347639, 48.966076>,  <38.899437, 25.891706, 49.418777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032558, 25.347639, 48.966076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671547, 25.499552, 48.884884>,  <38.454941, 25.590700, 48.836170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671547, 25.499552, 48.884884>,  <39.032558, 25.347639, 48.966076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671547, 25.499552, 48.884884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260539, 0.106294, -0.959594,
		-0.342860, -0.918949, -0.194881,
		-0.902533, 0.379781, -0.202978,
		38.400787, 25.613485, 48.823990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748280, 25.028381, 48.288502>,  <39.032558, 25.347639, 48.966076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748280, 25.028381, 48.288502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565529, 25.377012, 48.359631>,  <38.455879, 25.586191, 48.402309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565529, 25.377012, 48.359631>,  <38.748280, 25.028381, 48.288502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565529, 25.377012, 48.359631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053048, 0.172853, -0.983518,
		-0.887948, -0.458777, -0.032737,
		-0.456874, 0.871576, 0.177822,
		38.428467, 25.638485, 48.412975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164448, 25.042204, 47.973442>,  <38.748280, 25.028381, 48.288502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164448, 25.042204, 47.973442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230343, 25.432091, 48.033829>,  <38.269878, 25.666023, 48.070061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230343, 25.432091, 48.033829>,  <38.164448, 25.042204, 47.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230343, 25.432091, 48.033829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061607, 0.162925, -0.984713,
		-0.984412, 0.152919, 0.086889,
		0.164738, 0.974716, 0.150964,
		38.279762, 25.724506, 48.079117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688332, 25.272964, 47.524292>,  <38.164448, 25.042204, 47.973442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688332, 25.272964, 47.524292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914711, 25.593786, 47.600613>,  <38.050541, 25.786280, 47.646404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914711, 25.593786, 47.600613>,  <37.688332, 25.272964, 47.524292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914711, 25.593786, 47.600613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100729, 0.296967, -0.949560,
		-0.818262, 0.518186, 0.248859,
		0.565951, 0.802056, 0.190801,
		38.084496, 25.834404, 47.657852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376408, 25.919266, 47.230198>,  <37.688332, 25.272964, 47.524292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376408, 25.919266, 47.230198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768921, 25.989588, 47.261616>,  <38.004429, 26.031782, 47.280468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768921, 25.989588, 47.261616>,  <37.376408, 25.919266, 47.230198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768921, 25.989588, 47.261616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027308, 0.276741, -0.960557,
		-0.190610, 0.944726, 0.266761,
		0.981286, 0.175807, 0.078548,
		38.063305, 26.042330, 47.285179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494675, 26.677406, 46.953175>,  <37.376408, 25.919266, 47.230198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494675, 26.677406, 46.953175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827923, 26.456169, 46.953560>,  <38.027870, 26.323427, 46.953789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827923, 26.456169, 46.953560>,  <37.494675, 26.677406, 46.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827923, 26.456169, 46.953560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168857, 0.252693, -0.952698,
		0.526687, 0.793874, 0.303917,
		0.833119, -0.553092, 0.000961,
		38.077858, 26.290241, 46.953850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928436, 27.125475, 46.655720>,  <37.494675, 26.677406, 46.953175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928436, 27.125475, 46.655720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078144, 26.760990, 46.586884>,  <38.167969, 26.542299, 46.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078144, 26.760990, 46.586884>,  <37.928436, 27.125475, 46.655720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078144, 26.760990, 46.586884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266603, 0.283481, -0.921174,
		0.888169, 0.298887, 0.349030,
		0.374270, -0.911211, -0.172095,
		38.190426, 26.487627, 46.535255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521725, 27.233379, 46.278522>,  <37.928436, 27.125475, 46.655720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521725, 27.233379, 46.278522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 26.853556, 46.206264>,  <38.357674, 26.625662, 46.162910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419193, 26.853556, 46.206264>,  <38.521725, 27.233379, 46.278522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419193, 26.853556, 46.206264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001961, 0.186381, -0.982476,
		0.966588, -0.252187, -0.045911,
		-0.256325, -0.949560, -0.180648,
		38.342297, 26.568687, 46.152069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960262, 27.075138, 45.715492>,  <38.521725, 27.233379, 46.278522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960262, 27.075138, 45.715492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675117, 26.795437, 45.736908>,  <38.504028, 26.627615, 45.749756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675117, 26.795437, 45.736908>,  <38.960262, 27.075138, 45.715492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675117, 26.795437, 45.736908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132472, 0.059297, -0.989411,
		0.688675, -0.712410, -0.134902,
		-0.712866, -0.699254, 0.053538,
		38.461258, 26.585661, 45.752968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098030, 26.536877, 45.108040>,  <38.960262, 27.075138, 45.715492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098030, 26.536877, 45.108040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725368, 26.447235, 45.222446>,  <38.501774, 26.393450, 45.291088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725368, 26.447235, 45.222446>,  <39.098030, 26.536877, 45.108040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725368, 26.447235, 45.222446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281569, -0.052259, -0.958117,
		0.229666, -0.973163, -0.014414,
		-0.931651, -0.224105, 0.286014,
		38.445873, 26.380003, 45.308250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871536, 25.853622, 44.749195>,  <39.098030, 26.536877, 45.108040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871536, 25.853622, 44.749195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558651, 26.081444, 44.850189>,  <38.370918, 26.218136, 44.910786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558651, 26.081444, 44.850189>,  <38.871536, 25.853622, 44.749195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558651, 26.081444, 44.850189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326897, -0.030224, -0.944577,
		-0.530353, -0.821400, 0.209827,
		-0.782217, 0.569551, 0.252484,
		38.323986, 26.252310, 44.925934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397400, 25.638006, 44.288536>,  <38.871536, 25.853622, 44.749195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397400, 25.638006, 44.288536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253334, 25.989286, 44.414425>,  <38.166893, 26.200054, 44.489956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253334, 25.989286, 44.414425>,  <38.397400, 25.638006, 44.288536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253334, 25.989286, 44.414425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337170, 0.192012, -0.921655,
		-0.869826, -0.438062, 0.226946,
		-0.360166, 0.878199, 0.314718,
		38.145283, 26.252747, 44.508839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826153, 25.727873, 43.888462>,  <38.397400, 25.638006, 44.288536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826153, 25.727873, 43.888462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890034, 26.098217, 44.025448>,  <37.928364, 26.320423, 44.107639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890034, 26.098217, 44.025448>,  <37.826153, 25.727873, 43.888462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890034, 26.098217, 44.025448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463114, 0.376638, -0.802290,
		-0.871792, -0.030471, 0.488928,
		0.159702, 0.925859, 0.342461,
		37.937943, 26.375975, 44.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216358, 26.176264, 43.737289>,  <37.826153, 25.727873, 43.888462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216358, 26.176264, 43.737289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499428, 26.447296, 43.817371>,  <37.669270, 26.609915, 43.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499428, 26.447296, 43.817371>,  <37.216358, 26.176264, 43.737289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499428, 26.447296, 43.817371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332353, 0.569298, -0.751958,
		-0.623490, 0.465601, 0.628073,
		0.707673, 0.677580, 0.200208,
		37.711731, 26.650570, 43.877434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849018, 26.871851, 43.827507>,  <37.216358, 26.176264, 43.737289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849018, 26.871851, 43.827507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232067, 26.913193, 43.719975>,  <37.461899, 26.937998, 43.655453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232067, 26.913193, 43.719975>,  <36.849018, 26.871851, 43.827507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232067, 26.913193, 43.719975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282573, 0.517762, -0.807512,
		0.055734, 0.849259, 0.525027,
		0.957626, 0.103352, -0.268834,
		37.519356, 26.944199, 43.639324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973232, 27.661987, 43.682289>,  <36.849018, 26.871851, 43.827507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973232, 27.661987, 43.682289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264992, 27.459644, 43.498077>,  <37.440048, 27.338238, 43.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264992, 27.459644, 43.498077>,  <36.973232, 27.661987, 43.682289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264992, 27.459644, 43.498077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177441, 0.510262, -0.841515,
		0.660680, 0.695514, 0.282423,
		0.729395, -0.505858, -0.460533,
		37.483810, 27.307886, 43.359917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266159, 28.211979, 43.189541>,  <36.973232, 27.661987, 43.682289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266159, 28.211979, 43.189541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361176, 27.842579, 43.069061>,  <37.418186, 27.620939, 42.996773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361176, 27.842579, 43.069061>,  <37.266159, 28.211979, 43.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361176, 27.842579, 43.069061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037234, 0.301191, -0.952836,
		0.970664, 0.237550, 0.037158,
		0.237538, -0.923501, -0.301201,
		37.432438, 27.565529, 42.978703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668728, 28.344820, 42.544983>,  <37.266159, 28.211979, 43.189541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668728, 28.344820, 42.544983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549480, 27.963200, 42.532883>,  <37.477932, 27.734228, 42.525623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549480, 27.963200, 42.532883>,  <37.668728, 28.344820, 42.544983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549480, 27.963200, 42.532883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029504, 0.040888, -0.998728,
		0.954074, -0.296843, -0.040338,
		-0.298114, -0.954050, -0.030252,
		37.460045, 27.676985, 42.523808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982319, 28.068459, 42.021034>,  <37.668728, 28.344820, 42.544983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982319, 28.068459, 42.021034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650112, 27.846760, 42.043140>,  <37.450787, 27.713741, 42.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650112, 27.846760, 42.043140>,  <37.982319, 28.068459, 42.021034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650112, 27.846760, 42.043140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018078, -0.125986, -0.991867,
		0.556700, -0.822764, 0.114653,
		-0.830517, -0.554245, 0.055262,
		37.400955, 27.680487, 42.059719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148243, 27.520473, 41.614136>,  <37.982319, 28.068459, 42.021034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148243, 27.520473, 41.614136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751080, 27.542143, 41.656471>,  <37.512783, 27.555145, 41.681873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751080, 27.542143, 41.656471>,  <38.148243, 27.520473, 41.614136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751080, 27.542143, 41.656471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111484, -0.114789, -0.987114,
		-0.041326, -0.991912, 0.120014,
		-0.992906, 0.054174, 0.105838,
		37.453209, 27.558395, 41.688221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969765, 26.907671, 41.152824>,  <38.148243, 27.520473, 41.614136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969765, 26.907671, 41.152824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623562, 27.103125, 41.196896>,  <37.415840, 27.220396, 41.223339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623562, 27.103125, 41.196896>,  <37.969765, 26.907671, 41.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623562, 27.103125, 41.196896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097826, 0.050832, -0.993904,
		-0.491256, -0.871006, 0.003806,
		-0.865504, 0.488634, 0.110179,
		37.363911, 27.249716, 41.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552368, 26.665812, 40.638004>,  <37.969765, 26.907671, 41.152824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552368, 26.665812, 40.638004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354980, 27.003246, 40.722713>,  <37.236549, 27.205708, 40.773540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354980, 27.003246, 40.722713>,  <37.552368, 26.665812, 40.638004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354980, 27.003246, 40.722713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182766, 0.137474, -0.973498,
		-0.850345, -0.519094, 0.086340,
		-0.493467, 0.843589, 0.211773,
		37.206940, 27.256323, 40.786243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956020, 26.583925, 40.381752>,  <37.552368, 26.665812, 40.638004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956020, 26.583925, 40.381752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002472, 26.979837, 40.414860>,  <37.030342, 27.217384, 40.434723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002472, 26.979837, 40.414860>,  <36.956020, 26.583925, 40.381752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002472, 26.979837, 40.414860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442670, 0.126176, -0.887763,
		-0.889133, 0.066452, 0.452798,
		0.116126, 0.989780, 0.082771,
		37.037312, 27.276772, 40.439690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332008, 26.804350, 40.385246>,  <36.956020, 26.583925, 40.381752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332008, 26.804350, 40.385246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549644, 27.122511, 40.278435>,  <36.680225, 27.313408, 40.214348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549644, 27.122511, 40.278435>,  <36.332008, 26.804350, 40.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549644, 27.122511, 40.278435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544245, 0.092359, -0.833827,
		-0.638565, 0.599004, 0.483145,
		0.544089, 0.795402, -0.267028,
		36.712872, 27.361132, 40.198326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906506, 27.139000, 40.025997>,  <36.332008, 26.804350, 40.385246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906506, 27.139000, 40.025997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250053, 27.316275, 39.923290>,  <36.456181, 27.422640, 39.861664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250053, 27.316275, 39.923290>,  <35.906506, 27.139000, 40.025997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250053, 27.316275, 39.923290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391195, 0.243992, -0.887375,
		-0.330625, 0.862584, 0.382930,
		0.858867, 0.443189, -0.256769,
		36.507713, 27.449232, 39.846260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724766, 27.839758, 39.766647>,  <35.906506, 27.139000, 40.025997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724766, 27.839758, 39.766647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089325, 27.781990, 39.612503>,  <36.308060, 27.747330, 39.520016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089325, 27.781990, 39.612503>,  <35.724766, 27.839758, 39.766647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089325, 27.781990, 39.612503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340230, 0.262398, -0.902990,
		0.231528, 0.954091, 0.190012,
		0.911394, -0.144420, -0.385363,
		36.362743, 27.738665, 39.496895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754158, 28.490601, 39.351372>,  <35.724766, 27.839758, 39.766647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754158, 28.490601, 39.351372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033287, 28.230068, 39.232170>,  <36.200764, 28.073748, 39.160648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033287, 28.230068, 39.232170>,  <35.754158, 28.490601, 39.351372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033287, 28.230068, 39.232170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132809, 0.291178, -0.947405,
		0.703849, 0.700700, 0.116688,
		0.697824, -0.651333, -0.298005,
		36.242634, 28.034668, 39.142769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215565, 28.814137, 38.980072>,  <35.754158, 28.490601, 39.351372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215565, 28.814137, 38.980072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300571, 28.445789, 38.849327>,  <36.351574, 28.224781, 38.770882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300571, 28.445789, 38.849327>,  <36.215565, 28.814137, 38.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300571, 28.445789, 38.849327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061029, 0.321341, -0.944995,
		0.975250, 0.220776, 0.012091,
		0.212517, -0.920868, -0.326862,
		36.364326, 28.169529, 38.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817448, 28.807457, 38.506176>,  <36.215565, 28.814137, 38.980072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817448, 28.807457, 38.506176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599979, 28.483120, 38.419502>,  <36.469498, 28.288517, 38.367496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599979, 28.483120, 38.419502>,  <36.817448, 28.807457, 38.506176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599979, 28.483120, 38.419502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051152, 0.289710, -0.955747,
		0.837736, -0.508531, -0.198984,
		-0.543674, -0.810842, -0.216688,
		36.436878, 28.239868, 38.354496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070301, 28.594017, 37.828129>,  <36.817448, 28.807457, 38.506176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070301, 28.594017, 37.828129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706043, 28.434843, 37.872612>,  <36.487488, 28.339338, 37.899303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706043, 28.434843, 37.872612>,  <37.070301, 28.594017, 37.828129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706043, 28.434843, 37.872612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224436, 0.250415, -0.941765,
		0.346915, -0.882575, -0.317351,
		-0.910647, -0.397937, 0.111209,
		36.432850, 28.315462, 37.905975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912041, 28.576313, 37.130184>,  <37.070301, 28.594017, 37.828129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912041, 28.576313, 37.130184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556282, 28.535496, 37.308426>,  <36.342827, 28.511005, 37.415371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556282, 28.535496, 37.308426>,  <36.912041, 28.576313, 37.130184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556282, 28.535496, 37.308426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456879, 0.231184, -0.858962,
		-0.015366, -0.967544, -0.252235,
		-0.889396, -0.102042, 0.445602,
		36.289463, 28.504883, 37.442108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507568, 28.114113, 36.702904>,  <36.912041, 28.576313, 37.130184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507568, 28.114113, 36.702904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250179, 28.326187, 36.923756>,  <36.095745, 28.453432, 37.056267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250179, 28.326187, 36.923756>,  <36.507568, 28.114113, 36.702904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250179, 28.326187, 36.923756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452913, 0.317786, -0.832996,
		-0.617103, -0.786075, 0.035643,
		-0.643470, 0.530187, 0.552130,
		36.057137, 28.485243, 37.089394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861603, 27.934532, 36.370632>,  <36.507568, 28.114113, 36.702904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861603, 27.934532, 36.370632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833652, 28.289165, 36.553535>,  <35.816883, 28.501945, 36.663277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833652, 28.289165, 36.553535>,  <35.861603, 27.934532, 36.370632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833652, 28.289165, 36.553535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476663, 0.372988, -0.796036,
		-0.876305, -0.273581, 0.396540,
		-0.069876, 0.886586, 0.457257,
		35.812691, 28.555141, 36.690712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177067, 28.165869, 36.212040>,  <35.861603, 27.934532, 36.370632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177067, 28.165869, 36.212040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373001, 28.500149, 36.311371>,  <35.490562, 28.700716, 36.370972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373001, 28.500149, 36.311371>,  <35.177067, 28.165869, 36.212040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373001, 28.500149, 36.311371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415487, 0.474188, -0.776219,
		-0.766442, 0.277039, 0.579496,
		0.489833, 0.835700, 0.248331,
		35.519951, 28.750858, 36.385872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625168, 28.771490, 36.120842>,  <35.177067, 28.165869, 36.212040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625168, 28.771490, 36.120842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983574, 28.949009, 36.115097>,  <35.198616, 29.055521, 36.111649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983574, 28.949009, 36.115097>,  <34.625168, 28.771490, 36.120842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983574, 28.949009, 36.115097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347710, 0.681163, -0.644294,
		-0.276153, 0.582289, 0.764643,
		0.896012, 0.443797, -0.014363,
		35.252377, 29.082148, 36.110786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501366, 29.483683, 36.192036>,  <34.625168, 28.771490, 36.120842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501366, 29.483683, 36.192036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867332, 29.436129, 36.037743>,  <35.086914, 29.407597, 35.945168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867332, 29.436129, 36.037743>,  <34.501366, 29.483683, 36.192036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867332, 29.436129, 36.037743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219838, 0.654703, -0.723212,
		0.338522, 0.746478, 0.572864,
		0.914917, -0.118886, -0.385736,
		35.141808, 29.400463, 35.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497120, 30.074537, 35.831997>,  <34.501366, 29.483683, 36.192036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497120, 30.074537, 35.831997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845860, 29.908701, 35.727695>,  <35.055103, 29.809198, 35.665115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845860, 29.908701, 35.727695>,  <34.497120, 30.074537, 35.831997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845860, 29.908701, 35.727695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043814, 0.596282, -0.801578,
		0.487809, 0.687431, 0.538034,
		0.871850, -0.414591, -0.260752,
		35.107414, 29.784323, 35.649471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973068, 30.610031, 35.711029>,  <34.497120, 30.074537, 35.831997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973068, 30.610031, 35.711029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105103, 30.298134, 35.498219>,  <35.184322, 30.110996, 35.370533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105103, 30.298134, 35.498219>,  <34.973068, 30.610031, 35.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105103, 30.298134, 35.498219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102012, 0.589778, -0.801097,
		0.938423, 0.210158, 0.274220,
		0.330085, -0.779741, -0.532022,
		35.204128, 30.064211, 35.338612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591072, 30.856686, 35.269222>,  <34.973068, 30.610031, 35.711029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591072, 30.856686, 35.269222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428154, 30.544897, 35.078842>,  <35.330402, 30.357824, 34.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428154, 30.544897, 35.078842>,  <35.591072, 30.856686, 35.269222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428154, 30.544897, 35.078842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087401, 0.552013, -0.829242,
		0.909104, -0.296150, -0.292961,
		-0.407298, -0.779472, -0.475953,
		35.305965, 30.311056, 34.936054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280685, 31.263010, 35.461761>,  <35.591072, 30.856686, 35.269222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280685, 31.263010, 35.461761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628689, 31.217121, 35.269962>,  <36.837490, 31.189589, 35.154881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628689, 31.217121, 35.269962>,  <36.280685, 31.263010, 35.461761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628689, 31.217121, 35.269962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465799, -0.127514, 0.875655,
		-0.161602, -0.985179, -0.057500,
		0.870010, -0.114725, -0.479502,
		36.889690, 31.182705, 35.126110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638298, 30.766808, 35.685341>,  <36.280685, 31.263010, 35.461761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638298, 30.766808, 35.685341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963593, 30.971292, 35.574127>,  <37.158772, 31.093983, 35.507401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963593, 30.971292, 35.574127>,  <36.638298, 30.766808, 35.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963593, 30.971292, 35.574127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536950, -0.475013, 0.697171,
		0.224331, -0.716259, -0.660794,
		0.813240, 0.511211, -0.278035,
		37.207565, 31.124657, 35.490715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189022, 30.304960, 35.665840>,  <36.638298, 30.766808, 35.685341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189022, 30.304960, 35.665840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343254, 30.668242, 35.730949>,  <37.435795, 30.886209, 35.770016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343254, 30.668242, 35.730949>,  <37.189022, 30.304960, 35.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343254, 30.668242, 35.730949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574679, -0.374405, 0.727712,
		0.721851, -0.187053, -0.666290,
		0.385583, 0.908203, 0.162770,
		37.458927, 30.940702, 35.779781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877975, 30.195490, 35.722992>,  <37.189022, 30.304960, 35.665840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877975, 30.195490, 35.722992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820812, 30.550550, 35.898102>,  <37.786514, 30.763588, 36.003170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820812, 30.550550, 35.898102>,  <37.877975, 30.195490, 35.722992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820812, 30.550550, 35.898102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534645, -0.302996, 0.788890,
		0.832906, 0.346792, -0.431280,
		-0.142904, 0.887654, 0.437778,
		37.777943, 30.816847, 36.029434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516651, 30.340420, 35.845291>,  <37.877975, 30.195490, 35.722992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516651, 30.340420, 35.845291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342937, 30.606899, 36.087803>,  <38.238708, 30.766787, 36.233311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342937, 30.606899, 36.087803>,  <38.516651, 30.340420, 35.845291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342937, 30.606899, 36.087803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702694, -0.170550, 0.690749,
		0.563577, 0.726011, -0.394067,
		-0.434283, 0.666199, 0.606281,
		38.212654, 30.806759, 36.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067223, 30.584881, 36.194794>,  <38.516651, 30.340420, 35.845291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067223, 30.584881, 36.194794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749458, 30.668009, 36.423084>,  <38.558800, 30.717886, 36.560059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749458, 30.668009, 36.423084>,  <39.067223, 30.584881, 36.194794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749458, 30.668009, 36.423084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457825, -0.412598, 0.787502,
		0.399137, 0.886890, 0.232627,
		-0.794409, 0.207819, 0.570723,
		38.511135, 30.730354, 36.594303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157654, 31.121567, 36.746479>,  <39.067223, 30.584881, 36.194794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157654, 31.121567, 36.746479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866173, 30.877306, 36.870476>,  <38.691284, 30.730749, 36.944874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866173, 30.877306, 36.870476>,  <39.157654, 31.121567, 36.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866173, 30.877306, 36.870476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536152, -0.227083, 0.813004,
		-0.426070, 0.758641, 0.492878,
		-0.728702, -0.610654, 0.309993,
		38.647564, 30.694109, 36.963474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090038, 31.285856, 37.436211>,  <39.157654, 31.121567, 36.746479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090038, 31.285856, 37.436211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909340, 30.930147, 37.407585>,  <38.800922, 30.716721, 37.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909340, 30.930147, 37.407585>,  <39.090038, 31.285856, 37.436211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909340, 30.930147, 37.407585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485023, -0.312124, 0.816904,
		-0.748787, 0.334321, 0.572317,
		-0.451742, -0.889274, -0.071561,
		38.773819, 30.663364, 37.386116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867916, 31.028248, 38.072388>,  <39.090038, 31.285856, 37.436211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867916, 31.028248, 38.072388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838123, 30.667250, 37.902706>,  <38.820248, 30.450651, 37.800896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838123, 30.667250, 37.902706>,  <38.867916, 31.028248, 38.072388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838123, 30.667250, 37.902706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313976, -0.424978, 0.849007,
		-0.946505, -0.069954, 0.315016,
		-0.074484, -0.902497, -0.424207,
		38.815777, 30.396502, 37.775444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527584, 30.609001, 38.552452>,  <38.867916, 31.028248, 38.072388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527584, 30.609001, 38.552452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728489, 30.354389, 38.318336>,  <38.849033, 30.201622, 38.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728489, 30.354389, 38.318336>,  <38.527584, 30.609001, 38.552452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728489, 30.354389, 38.318336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433215, -0.400559, 0.807389,
		-0.748369, -0.659078, 0.074567,
		0.502264, -0.636528, -0.585289,
		38.879169, 30.163431, 38.142750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471371, 29.947727, 38.765831>,  <38.527584, 30.609001, 38.552452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471371, 29.947727, 38.765831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811405, 29.954050, 38.555267>,  <39.015427, 29.957844, 38.428928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811405, 29.954050, 38.555267>,  <38.471371, 29.947727, 38.765831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811405, 29.954050, 38.555267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492167, -0.379552, 0.783398,
		-0.187413, -0.925035, -0.330433,
		0.850087, 0.015809, -0.526405,
		39.066433, 29.958794, 38.397346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721622, 29.242031, 38.803032>,  <38.471371, 29.947727, 38.765831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721622, 29.242031, 38.803032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042431, 29.457449, 38.699707>,  <39.234917, 29.586700, 38.637711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042431, 29.457449, 38.699707>,  <38.721622, 29.242031, 38.803032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042431, 29.457449, 38.699707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533499, -0.451447, 0.715244,
		0.268577, -0.711452, -0.649385,
		0.802025, 0.538545, -0.258311,
		39.283039, 29.619013, 38.622215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325699, 28.742971, 38.801907>,  <38.721622, 29.242031, 38.803032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325699, 28.742971, 38.801907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515038, 29.095284, 38.796806>,  <39.628643, 29.306671, 38.793747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515038, 29.095284, 38.796806>,  <39.325699, 28.742971, 38.801907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515038, 29.095284, 38.796806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692938, -0.363382, 0.622728,
		0.543854, -0.303605, -0.782334,
		0.473350, 0.880782, -0.012753,
		39.657043, 29.359518, 38.792980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036835, 28.570681, 38.642281>,  <39.325699, 28.742971, 38.801907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036835, 28.570681, 38.642281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049816, 28.934294, 38.808464>,  <40.057606, 29.152462, 38.908176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049816, 28.934294, 38.808464>,  <40.036835, 28.570681, 38.642281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049816, 28.934294, 38.808464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753436, -0.295381, 0.587440,
		0.656721, 0.293958, -0.694483,
		0.032454, 0.909032, 0.415461,
		40.059551, 29.207003, 38.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783062, 28.762005, 38.729107>,  <40.036835, 28.570681, 38.642281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783062, 28.762005, 38.729107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581924, 28.998915, 38.980934>,  <40.461243, 29.141060, 39.132030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581924, 28.998915, 38.980934>,  <40.783062, 28.762005, 38.729107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581924, 28.998915, 38.980934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668116, -0.195800, 0.717832,
		0.548423, 0.781584, -0.297251,
		-0.502845, 0.592274, 0.629570,
		40.431072, 29.176598, 39.169804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222618, 28.956579, 39.270042>,  <40.783062, 28.762005, 38.729107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222618, 28.956579, 39.270042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871719, 29.061838, 39.430641>,  <40.661182, 29.124994, 39.527000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871719, 29.061838, 39.430641>,  <41.222618, 28.956579, 39.270042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871719, 29.061838, 39.430641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308107, -0.332728, 0.891270,
		0.368124, 0.905564, 0.210805,
		-0.877243, 0.263147, 0.401496,
		40.608547, 29.140783, 39.551090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317638, 29.408703, 39.881935>,  <41.222618, 28.956579, 39.270042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317638, 29.408703, 39.881935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949444, 29.260038, 39.930225>,  <40.728527, 29.170839, 39.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949444, 29.260038, 39.930225>,  <41.317638, 29.408703, 39.881935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949444, 29.260038, 39.930225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207158, -0.202156, 0.957193,
		-0.331346, 0.906092, 0.263074,
		-0.920486, -0.371660, 0.120721,
		40.673298, 29.148540, 39.966442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131828, 29.675211, 40.498470>,  <41.317638, 29.408703, 39.881935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131828, 29.675211, 40.498470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880981, 29.366842, 40.453926>,  <40.730473, 29.181820, 40.427200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880981, 29.366842, 40.453926>,  <41.131828, 29.675211, 40.498470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880981, 29.366842, 40.453926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181497, -0.283656, 0.941593,
		-0.757484, 0.570279, 0.317806,
		-0.627118, -0.770923, -0.111361,
		40.692844, 29.135565, 40.420517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456333, 29.662817, 40.914581>,  <41.131828, 29.675211, 40.498470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456333, 29.662817, 40.914581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495865, 29.271372, 40.842419>,  <40.519585, 29.036505, 40.799122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495865, 29.271372, 40.842419>,  <40.456333, 29.662817, 40.914581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495865, 29.271372, 40.842419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132529, -0.192627, 0.972281,
		-0.986239, -0.072183, -0.148733,
		0.098832, -0.978613, -0.180410,
		40.525513, 28.977787, 40.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921791, 29.358452, 41.325836>,  <40.456333, 29.662817, 40.914581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921791, 29.358452, 41.325836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191822, 29.069445, 41.266182>,  <40.353840, 28.896040, 41.230389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191822, 29.069445, 41.266182>,  <39.921791, 29.358452, 41.325836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191822, 29.069445, 41.266182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150648, -0.332898, 0.930851,
		-0.722206, -0.605926, -0.333577,
		0.675073, -0.722519, -0.149139,
		40.394344, 28.852690, 41.221439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637318, 28.682278, 41.412758>,  <39.921791, 29.358452, 41.325836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637318, 28.682278, 41.412758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024185, 28.625120, 41.496819>,  <40.256306, 28.590826, 41.547256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024185, 28.625120, 41.496819>,  <39.637318, 28.682278, 41.412758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024185, 28.625120, 41.496819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250725, -0.401601, 0.880825,
		-0.041463, -0.904599, -0.424243,
		0.967170, -0.142890, 0.210154,
		40.314335, 28.582253, 41.559864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648136, 27.952591, 41.624889>,  <39.637318, 28.682278, 41.412758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648136, 27.952591, 41.624889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988724, 28.115242, 41.757343>,  <40.193077, 28.212833, 41.836815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988724, 28.115242, 41.757343>,  <39.648136, 27.952591, 41.624889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988724, 28.115242, 41.757343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111378, -0.476819, 0.871917,
		0.512438, -0.779293, -0.360708,
		0.851471, 0.406628, 0.331136,
		40.244164, 28.237230, 41.856686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926971, 27.448723, 42.039940>,  <39.648136, 27.952591, 41.624889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926971, 27.448723, 42.039940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124508, 27.786024, 42.124836>,  <40.243031, 27.988405, 42.175774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124508, 27.786024, 42.124836>,  <39.926971, 27.448723, 42.039940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124508, 27.786024, 42.124836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008949, -0.248992, 0.968464,
		0.869506, -0.476369, -0.130509,
		0.493842, 0.843253, 0.212237,
		40.272659, 28.039000, 42.188507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465313, 27.234299, 42.412273>,  <39.926971, 27.448723, 42.039940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465313, 27.234299, 42.412273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402298, 27.619570, 42.499420>,  <40.364487, 27.850733, 42.551708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402298, 27.619570, 42.499420>,  <40.465313, 27.234299, 42.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402298, 27.619570, 42.499420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176210, -0.244500, 0.953504,
		0.971664, 0.111824, 0.208240,
		-0.157539, 0.963180, 0.217868,
		40.355038, 27.908524, 42.564781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819145, 27.277979, 43.054859>,  <40.465313, 27.234299, 42.412273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819145, 27.277979, 43.054859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578445, 27.597307, 43.045242>,  <40.434025, 27.788904, 43.039474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578445, 27.597307, 43.045242>,  <40.819145, 27.277979, 43.054859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578445, 27.597307, 43.045242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221274, -0.137721, 0.965438,
		0.767418, 0.586275, 0.259522,
		-0.601754, 0.798320, -0.024038,
		40.397919, 27.836803, 43.038033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022018, 27.908493, 43.551716>,  <40.819145, 27.277979, 43.054859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022018, 27.908493, 43.551716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634010, 27.967871, 43.474739>,  <40.401207, 28.003496, 43.428555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634010, 27.967871, 43.474739>,  <41.022018, 27.908493, 43.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634010, 27.967871, 43.474739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172303, 0.138385, 0.975275,
		0.171403, 0.979191, -0.108659,
		-0.970017, 0.148443, -0.192437,
		40.343006, 28.012403, 43.417007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863350, 28.480560, 43.974297>,  <41.022018, 27.908493, 43.551716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863350, 28.480560, 43.974297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518105, 28.292286, 43.901093>,  <40.310959, 28.179321, 43.857170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518105, 28.292286, 43.901093>,  <40.863350, 28.480560, 43.974297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518105, 28.292286, 43.901093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286515, 0.157975, 0.944962,
		-0.415869, 0.868043, -0.271209,
		-0.863112, -0.470685, -0.183011,
		40.259171, 28.151081, 43.846188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395870, 28.937609, 44.147652>,  <40.863350, 28.480560, 43.974297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395870, 28.937609, 44.147652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223980, 28.576681, 44.161259>,  <40.120846, 28.360125, 44.169422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223980, 28.576681, 44.161259>,  <40.395870, 28.937609, 44.147652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223980, 28.576681, 44.161259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325333, 0.189866, 0.926342,
		-0.842314, 0.387006, -0.375144,
		-0.429727, -0.902318, 0.034021,
		40.095062, 28.305986, 44.171467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861309, 29.025425, 44.650703>,  <40.395870, 28.937609, 44.147652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861309, 29.025425, 44.650703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834351, 28.628946, 44.605122>,  <39.818176, 28.391060, 44.577770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834351, 28.628946, 44.605122>,  <39.861309, 29.025425, 44.650703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834351, 28.628946, 44.605122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247360, -0.094053, 0.964348,
		-0.966577, 0.093178, -0.238844,
		-0.067392, -0.991197, -0.113958,
		39.814133, 28.331587, 44.570934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309326, 28.813892, 44.995155>,  <39.861309, 29.025425, 44.650703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309326, 28.813892, 44.995155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563210, 28.506433, 44.963341>,  <39.715538, 28.321959, 44.944252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563210, 28.506433, 44.963341>,  <39.309326, 28.813892, 44.995155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563210, 28.506433, 44.963341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029679, -0.078608, 0.996463,
		-0.772180, -0.634826, -0.027081,
		0.634709, -0.768646, -0.079541,
		39.753624, 28.275839, 44.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101791, 28.359501, 45.375969>,  <39.309326, 28.813892, 44.995155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101791, 28.359501, 45.375969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479023, 28.234089, 45.331600>,  <39.705360, 28.158842, 45.304981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479023, 28.234089, 45.331600>,  <39.101791, 28.359501, 45.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479023, 28.234089, 45.331600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069046, -0.141662, 0.987504,
		-0.325325, -0.938952, -0.111950,
		0.943078, -0.313530, -0.110917,
		39.761948, 28.140030, 45.298325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181686, 27.770269, 45.722385>,  <39.101791, 28.359501, 45.375969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181686, 27.770269, 45.722385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547562, 27.930174, 45.698593>,  <39.767086, 28.026117, 45.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547562, 27.930174, 45.698593>,  <39.181686, 27.770269, 45.722385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547562, 27.930174, 45.698593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068683, -0.008728, 0.997600,
		0.398285, -0.916577, -0.035441,
		0.914687, 0.399763, -0.059477,
		39.821968, 28.050102, 45.680752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414955, 27.467537, 46.254726>,  <39.181686, 27.770269, 45.722385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414955, 27.467537, 46.254726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687485, 27.749788, 46.176868>,  <39.851002, 27.919140, 46.130154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687485, 27.749788, 46.176868>,  <39.414955, 27.467537, 46.254726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687485, 27.749788, 46.176868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425705, -0.165655, 0.889569,
		0.595463, -0.688944, -0.413255,
		0.681321, 0.705630, -0.194645,
		39.891880, 27.961477, 46.118473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985245, 27.162849, 46.491676>,  <39.414955, 27.467537, 46.254726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985245, 27.162849, 46.491676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037834, 27.559160, 46.478584>,  <40.069389, 27.796947, 46.470730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037834, 27.559160, 46.478584>,  <39.985245, 27.162849, 46.491676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037834, 27.559160, 46.478584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338299, -0.013807, 0.940937,
		0.931809, -0.134780, -0.336995,
		0.131472, 0.990779, -0.032731,
		40.077274, 27.856394, 46.468765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692596, 27.297791, 46.665901>,  <39.985245, 27.162849, 46.491676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692596, 27.297791, 46.665901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465218, 27.618443, 46.739933>,  <40.328789, 27.810833, 46.784351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465218, 27.618443, 46.739933>,  <40.692596, 27.297791, 46.665901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465218, 27.618443, 46.739933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349156, 0.031362, 0.936540,
		0.744954, 0.596997, -0.297722,
		-0.568449, 0.801630, 0.185082,
		40.294682, 27.858931, 46.795456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146248, 27.723873, 47.090450>,  <40.692596, 27.297791, 46.665901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146248, 27.723873, 47.090450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791969, 27.902060, 47.142761>,  <40.579403, 28.008970, 47.174149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791969, 27.902060, 47.142761>,  <41.146248, 27.723873, 47.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791969, 27.902060, 47.142761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243800, 0.206560, 0.947573,
		0.395097, 0.871146, -0.291554,
		-0.885697, 0.445464, 0.130774,
		40.526260, 28.035698, 47.181992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309662, 28.215635, 47.606415>,  <41.146248, 27.723873, 47.090450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309662, 28.215635, 47.606415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912590, 28.219490, 47.558250>,  <40.674347, 28.221804, 47.529350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912590, 28.219490, 47.558250>,  <41.309662, 28.215635, 47.606415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912590, 28.219490, 47.558250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116072, 0.200007, 0.972895,
		0.033460, 0.979747, -0.197424,
		-0.992677, 0.009637, -0.120413,
		40.614788, 28.222382, 47.522125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011879, 28.899818, 47.861855>,  <41.309662, 28.215635, 47.606415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011879, 28.899818, 47.861855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771633, 28.582575, 47.902336>,  <40.627487, 28.392229, 47.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771633, 28.582575, 47.902336>,  <41.011879, 28.899818, 47.861855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771633, 28.582575, 47.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066057, 0.076926, 0.994846,
		-0.796809, 0.604200, 0.006188,
		-0.600610, -0.793111, 0.101207,
		40.591450, 28.344641, 47.932697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845776, 29.011780, 48.526157>,  <41.011879, 28.899818, 47.861855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845776, 29.011780, 48.526157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762226, 28.630672, 48.437973>,  <40.712097, 28.402008, 48.385063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762226, 28.630672, 48.437973>,  <40.845776, 29.011780, 48.526157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762226, 28.630672, 48.437973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246278, -0.269416, 0.931001,
		-0.946424, 0.140168, 0.290920,
		-0.208875, -0.952769, -0.220461,
		40.699562, 28.344841, 48.371834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198513, 29.307640, 48.985668>,  <40.845776, 29.011780, 48.526157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198513, 29.307640, 48.985668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426189, 29.569166, 49.185085>,  <41.562794, 29.726082, 49.304737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426189, 29.569166, 49.185085>,  <41.198513, 29.307640, 48.985668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426189, 29.569166, 49.185085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172689, 0.497761, -0.849948,
		-0.803867, 0.569875, 0.170413,
		0.569189, 0.653817, 0.498545,
		41.596947, 29.765310, 49.334648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934212, 29.950216, 48.727352>,  <41.198513, 29.307640, 48.985668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934212, 29.950216, 48.727352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300526, 30.005228, 48.878307>,  <41.520313, 30.038235, 48.968880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300526, 30.005228, 48.878307>,  <40.934212, 29.950216, 48.727352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300526, 30.005228, 48.878307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205534, 0.646776, -0.734463,
		-0.345096, 0.750177, 0.564042,
		0.915786, 0.137531, 0.377387,
		41.575260, 30.046488, 48.991524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978775, 30.697283, 48.837612>,  <40.934212, 29.950216, 48.727352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978775, 30.697283, 48.837612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345459, 30.540560, 48.806309>,  <41.565472, 30.446526, 48.787525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345459, 30.540560, 48.806309>,  <40.978775, 30.697283, 48.837612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345459, 30.540560, 48.806309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188655, 0.597128, -0.779646,
		0.352201, 0.699947, 0.621312,
		0.916713, -0.391806, -0.078261,
		41.620472, 30.423018, 48.782829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453938, 31.346127, 48.712902>,  <40.978775, 30.697283, 48.837612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453938, 31.346127, 48.712902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617027, 30.998117, 48.602036>,  <41.714882, 30.789312, 48.535515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617027, 30.998117, 48.602036>,  <41.453938, 31.346127, 48.712902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617027, 30.998117, 48.602036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176551, 0.372933, -0.910907,
		0.895873, 0.322467, 0.305658,
		0.407727, -0.870021, -0.277168,
		41.739346, 30.737112, 48.518887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856236, 31.561697, 48.208042>,  <41.453938, 31.346127, 48.712902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856236, 31.561697, 48.208042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878445, 31.167068, 48.146603>,  <41.891769, 30.930290, 48.109741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.878445, 31.167068, 48.146603>,  <41.856236, 31.561697, 48.208042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878445, 31.167068, 48.146603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230177, 0.162336, -0.959513,
		0.971564, 0.017919, 0.236099,
		0.055521, -0.986573, -0.153596,
		41.895100, 30.871098, 48.100525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488552, 31.495661, 47.768002>,  <41.856236, 31.561697, 48.208042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488552, 31.495661, 47.768002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262028, 31.169214, 47.721977>,  <42.126114, 30.973347, 47.694363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262028, 31.169214, 47.721977>,  <42.488552, 31.495661, 47.768002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262028, 31.169214, 47.721977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128211, 0.050676, -0.990452,
		0.814156, -0.575660, 0.075937,
		-0.566315, -0.816118, -0.115064,
		42.092133, 30.924379, 47.687458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900414, 31.065956, 47.479198>,  <42.488552, 31.495661, 47.768002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900414, 31.065956, 47.479198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522587, 30.964340, 47.396008>,  <42.295891, 30.903370, 47.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522587, 30.964340, 47.396008>,  <42.900414, 31.065956, 47.479198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522587, 30.964340, 47.396008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219969, -0.019405, -0.975314,
		0.243732, -0.966999, 0.074210,
		-0.944568, -0.254040, -0.207980,
		42.239216, 30.888128, 47.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928131, 30.513384, 46.932674>,  <42.900414, 31.065956, 47.479198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928131, 30.513384, 46.932674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578068, 30.706766, 46.940266>,  <42.368031, 30.822796, 46.944820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578068, 30.706766, 46.940266>,  <42.928131, 30.513384, 46.932674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578068, 30.706766, 46.940266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036538, 0.105160, -0.993784,
		-0.482448, -0.869029, -0.109697,
		-0.875162, 0.483457, 0.018981,
		42.315517, 30.851803, 46.945961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551804, 30.051317, 46.461826>,  <42.928131, 30.513384, 46.932674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551804, 30.051317, 46.461826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307434, 30.366411, 46.430202>,  <42.160812, 30.555468, 46.411228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307434, 30.366411, 46.430202>,  <42.551804, 30.051317, 46.461826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307434, 30.366411, 46.430202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007178, -0.094343, -0.995514,
		-0.791659, -0.608748, 0.051982,
		-0.610921, 0.787734, -0.079057,
		42.124157, 30.602732, 46.406487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972141, 29.867289, 45.886303>,  <42.551804, 30.051317, 46.461826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972141, 29.867289, 45.886303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 30.262709, 45.939457>,  <41.926384, 30.499960, 45.971348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943542, 30.262709, 45.939457>,  <41.972141, 29.867289, 45.886303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943542, 30.262709, 45.939457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040304, 0.130251, -0.990662,
		-0.996626, -0.076182, 0.030530,
		-0.071494, 0.988550, 0.132882,
		41.922092, 30.559273, 45.979321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333557, 30.104843, 45.551205>,  <41.972141, 29.867289, 45.886303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333557, 30.104843, 45.551205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596981, 30.404629, 45.578346>,  <41.755035, 30.584499, 45.594631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596981, 30.404629, 45.578346>,  <41.333557, 30.104843, 45.551205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596981, 30.404629, 45.578346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108307, 0.183631, -0.977010,
		-0.744694, 0.636070, 0.202104,
		0.658559, 0.749463, 0.067858,
		41.794548, 30.629467, 45.598705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081223, 30.457180, 45.070953>,  <41.333557, 30.104843, 45.551205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081223, 30.457180, 45.070953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439529, 30.628065, 45.120079>,  <41.654514, 30.730597, 45.149555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439529, 30.628065, 45.120079>,  <41.081223, 30.457180, 45.070953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439529, 30.628065, 45.120079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004670, 0.267228, -0.963622,
		-0.444493, 0.863757, 0.237380,
		0.895770, 0.427215, 0.122815,
		41.708260, 30.756229, 45.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083508, 31.171701, 44.772438>,  <41.081223, 30.457180, 45.070953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083508, 31.171701, 44.772438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459393, 31.034920, 44.773289>,  <41.684925, 30.952850, 44.773800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459393, 31.034920, 44.773289>,  <41.083508, 31.171701, 44.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459393, 31.034920, 44.773289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109574, 0.295211, -0.949128,
		0.323928, 0.892143, 0.314883,
		0.939715, -0.341952, 0.002129,
		41.741306, 30.932335, 44.773926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338272, 31.659224, 44.406467>,  <41.083508, 31.171701, 44.772438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338272, 31.659224, 44.406467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572186, 31.334978, 44.418728>,  <41.712532, 31.140430, 44.426083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572186, 31.334978, 44.418728>,  <41.338272, 31.659224, 44.406467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572186, 31.334978, 44.418728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146921, 0.068679, -0.986761,
		0.797775, 0.581543, 0.159258,
		0.584781, -0.810612, 0.030651,
		41.747620, 31.091795, 44.427921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905704, 31.825491, 44.112797>,  <41.338272, 31.659224, 44.406467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905704, 31.825491, 44.112797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843349, 31.432499, 44.071938>,  <41.805935, 31.196705, 44.047421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843349, 31.432499, 44.071938>,  <41.905704, 31.825491, 44.112797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843349, 31.432499, 44.071938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127349, 0.082562, -0.988416,
		0.979531, -0.167094, 0.112247,
		-0.155891, -0.982478, -0.102152,
		41.796581, 31.137756, 44.041290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484043, 31.668982, 43.766479>,  <41.905704, 31.825491, 44.112797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484043, 31.668982, 43.766479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247681, 31.347980, 43.733452>,  <42.105862, 31.155380, 43.713634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247681, 31.347980, 43.733452>,  <42.484043, 31.668982, 43.766479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247681, 31.347980, 43.733452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310268, -0.131590, -0.941498,
		0.744688, -0.581958, 0.326749,
		-0.590909, -0.802502, -0.082569,
		42.070408, 31.107229, 43.708679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766098, 31.194403, 43.174629>,  <42.484043, 31.668982, 43.766479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766098, 31.194403, 43.174629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400436, 31.032312, 43.179043>,  <42.181042, 30.935059, 43.181690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400436, 31.032312, 43.179043>,  <42.766098, 31.194403, 43.174629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400436, 31.032312, 43.179043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031615, -0.098411, -0.994643,
		0.404140, -0.908905, 0.102774,
		-0.914150, -0.405225, 0.011037,
		42.126190, 30.910746, 43.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810547, 30.560009, 42.734867>,  <42.766098, 31.194403, 43.174629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810547, 30.560009, 42.734867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421757, 30.654045, 42.734077>,  <42.188484, 30.710466, 42.733604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421757, 30.654045, 42.734077>,  <42.810547, 30.560009, 42.734867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421757, 30.654045, 42.734077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011126, -0.054402, -0.998457,
		-0.234837, -0.970450, 0.055493,
		-0.971971, 0.235092, -0.001979,
		42.130165, 30.724573, 42.733482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527279, 30.140991, 42.282619>,  <42.810547, 30.560009, 42.734867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527279, 30.140991, 42.282619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256432, 30.433853, 42.312172>,  <42.093922, 30.609570, 42.329903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256432, 30.433853, 42.312172>,  <42.527279, 30.140991, 42.282619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256432, 30.433853, 42.312172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150084, -0.039114, -0.987899,
		-0.720404, -0.680016, 0.136369,
		-0.677121, 0.732154, 0.073882,
		42.053295, 30.653500, 42.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982651, 29.961172, 41.740414>,  <42.527279, 30.140991, 42.282619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982651, 29.961172, 41.740414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893833, 30.338419, 41.839394>,  <41.840542, 30.564766, 41.898781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893833, 30.338419, 41.839394>,  <41.982651, 29.961172, 41.740414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893833, 30.338419, 41.839394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273004, 0.183494, -0.944351,
		-0.936036, -0.277244, 0.216729,
		-0.222047, 0.943115, 0.247445,
		41.827221, 30.621353, 41.913628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189266, 30.055958, 41.605274>,  <41.982651, 29.961172, 41.740414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189266, 30.055958, 41.605274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390636, 30.400785, 41.581959>,  <41.511459, 30.607683, 41.567970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390636, 30.400785, 41.581959>,  <41.189266, 30.055958, 41.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390636, 30.400785, 41.581959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279071, 0.098383, -0.955218,
		-0.817731, 0.497146, 0.290107,
		0.503424, 0.862071, -0.058288,
		41.541664, 30.659407, 41.564472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771431, 30.512932, 41.211918>,  <41.189266, 30.055958, 41.605274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771431, 30.512932, 41.211918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153400, 30.631083, 41.200077>,  <41.382584, 30.701973, 41.192974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153400, 30.631083, 41.200077>,  <40.771431, 30.512932, 41.211918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153400, 30.631083, 41.200077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081538, 0.165104, -0.982900,
		-0.285439, 0.941006, 0.181746,
		0.954922, 0.295377, -0.029600,
		41.439877, 30.719696, 41.191196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683517, 30.982544, 40.782730>,  <40.771431, 30.512932, 41.211918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683517, 30.982544, 40.782730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082493, 30.955976, 40.793400>,  <41.321877, 30.940035, 40.799801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082493, 30.955976, 40.793400>,  <40.683517, 30.982544, 40.782730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082493, 30.955976, 40.793400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055189, 0.476439, -0.877473,
		0.045576, 0.876695, 0.478883,
		0.997435, -0.066421, 0.026670,
		41.381721, 30.936050, 40.801399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840305, 31.620127, 40.495834>,  <40.683517, 30.982544, 40.782730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840305, 31.620127, 40.495834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168713, 31.398424, 40.441090>,  <41.365757, 31.265402, 40.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.168713, 31.398424, 40.441090>,  <40.840305, 31.620127, 40.495834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168713, 31.398424, 40.441090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083507, 0.353747, -0.931606,
		0.564764, 0.753435, 0.336716,
		0.821016, -0.554256, -0.136866,
		41.415016, 31.232147, 40.400028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365753, 32.051208, 40.298077>,  <40.840305, 31.620127, 40.495834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365753, 32.051208, 40.298077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427586, 31.688606, 40.140926>,  <41.464687, 31.471045, 40.046638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427586, 31.688606, 40.140926>,  <41.365753, 32.051208, 40.298077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427586, 31.688606, 40.140926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100624, 0.410030, -0.906504,
		0.982842, 0.100600, 0.154601,
		0.154585, -0.906507, -0.392872,
		41.473961, 31.416655, 40.023064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073700, 32.026062, 39.994144>,  <41.365753, 32.051208, 40.298077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073700, 32.026062, 39.994144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829140, 31.766518, 39.812962>,  <41.682404, 31.610790, 39.704254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829140, 31.766518, 39.812962>,  <42.073700, 32.026062, 39.994144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829140, 31.766518, 39.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222959, 0.407959, -0.885358,
		0.759264, -0.642296, -0.104755,
		-0.611398, -0.648864, -0.452954,
		41.645721, 31.571859, 39.677074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417927, 31.845018, 39.394840>,  <42.073700, 32.026062, 39.994144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417927, 31.845018, 39.394840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041275, 31.736746, 39.314777>,  <41.815285, 31.671782, 39.266739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041275, 31.736746, 39.314777>,  <42.417927, 31.845018, 39.394840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041275, 31.736746, 39.314777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055583, 0.461402, -0.885449,
		0.332028, -0.844890, -0.419424,
		-0.941630, -0.270681, -0.200160,
		41.758785, 31.655540, 39.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401894, 31.463438, 38.852070>,  <42.417927, 31.845018, 39.394840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401894, 31.463438, 38.852070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026852, 31.600386, 38.876324>,  <41.801826, 31.682554, 38.890877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026852, 31.600386, 38.876324>,  <42.401894, 31.463438, 38.852070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026852, 31.600386, 38.876324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095098, 0.420241, -0.902415,
		-0.334440, -0.840345, -0.426580,
		-0.937607, 0.342371, 0.060630,
		41.745571, 31.703096, 38.894512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179790, 31.429379, 38.145985>,  <42.401894, 31.463438, 38.852070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179790, 31.429379, 38.145985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891483, 31.647081, 38.317692>,  <41.718498, 31.777702, 38.420715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891483, 31.647081, 38.317692>,  <42.179790, 31.429379, 38.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891483, 31.647081, 38.317692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054754, 0.572648, -0.817971,
		-0.691007, -0.613074, -0.382948,
		-0.720771, 0.544256, 0.429273,
		41.675251, 31.810358, 38.446472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671871, 31.516661, 37.648872>,  <42.179790, 31.429379, 38.145985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671871, 31.516661, 37.648872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626961, 31.828499, 37.895325>,  <41.600014, 32.015602, 38.043198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626961, 31.828499, 37.895325>,  <41.671871, 31.516661, 37.648872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626961, 31.828499, 37.895325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041112, 0.623169, -0.781006,
		-0.992826, -0.062356, -0.102017,
		-0.112274, 0.779598, 0.616135,
		41.593277, 32.062378, 38.080166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189735, 31.967228, 37.351448>,  <41.671871, 31.516661, 37.648872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189735, 31.967228, 37.351448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384354, 32.207142, 37.605545>,  <41.501125, 32.351089, 37.758003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384354, 32.207142, 37.605545>,  <41.189735, 31.967228, 37.351448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384354, 32.207142, 37.605545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070168, 0.697932, -0.712718,
		-0.870833, 0.391343, 0.297490,
		0.486546, 0.599784, 0.635242,
		41.530319, 32.387077, 37.796116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060268, 32.471886, 37.028408>,  <41.189735, 31.967228, 37.351448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060268, 32.471886, 37.028408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305798, 32.641094, 37.295025>,  <41.453114, 32.742619, 37.454994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305798, 32.641094, 37.295025>,  <41.060268, 32.471886, 37.028408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305798, 32.641094, 37.295025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111533, 0.789378, -0.603691,
		-0.781529, 0.444898, 0.437354,
		0.613818, 0.423022, 0.666543,
		41.489944, 32.768002, 37.494987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744522, 33.113197, 37.212208>,  <41.060268, 32.471886, 37.028408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744522, 33.113197, 37.212208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142948, 33.137009, 37.238472>,  <41.382004, 33.151295, 37.254230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142948, 33.137009, 37.238472>,  <40.744522, 33.113197, 37.212208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142948, 33.137009, 37.238472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012953, 0.830683, -0.556595,
		-0.087671, 0.553555, 0.828185,
		0.996065, 0.059525, 0.065657,
		41.441769, 33.154865, 37.258167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852524, 33.854313, 37.283367>,  <40.744522, 33.113197, 37.212208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852524, 33.854313, 37.283367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207077, 33.701897, 37.178196>,  <41.419811, 33.610447, 37.115093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207077, 33.701897, 37.178196>,  <40.852524, 33.854313, 37.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207077, 33.701897, 37.178196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204975, 0.832256, -0.515106,
		0.415096, 0.402690, 0.815804,
		0.886386, -0.381038, -0.262925,
		41.472992, 33.587585, 37.099319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267803, 34.394249, 37.348915>,  <40.852524, 33.854313, 37.283367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267803, 34.394249, 37.348915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476105, 34.140594, 37.120285>,  <41.601086, 33.988403, 36.983109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.476105, 34.140594, 37.120285>,  <41.267803, 34.394249, 37.348915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476105, 34.140594, 37.120285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359498, 0.770148, -0.526909,
		0.774326, 0.068908, 0.629023,
		0.520749, -0.634132, -0.571573,
		41.632328, 33.950356, 36.948814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814869, 34.827656, 37.080624>,  <41.267803, 34.394249, 37.348915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814869, 34.827656, 37.080624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832813, 34.498516, 36.854031>,  <41.843582, 34.301033, 36.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832813, 34.498516, 36.854031>,  <41.814869, 34.827656, 37.080624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832813, 34.498516, 36.854031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421163, 0.529777, -0.736178,
		0.905875, -0.205552, 0.370323,
		0.044866, -0.822851, -0.566483,
		41.846272, 34.251659, 36.684086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552746, 34.857056, 36.787216>,  <41.814869, 34.827656, 37.080624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552746, 34.857056, 36.787216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288574, 34.660385, 36.560204>,  <42.130074, 34.542381, 36.423996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288574, 34.660385, 36.560204>,  <42.552746, 34.857056, 36.787216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288574, 34.660385, 36.560204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282924, 0.537173, -0.794606,
		0.695552, -0.685346, -0.215656,
		-0.660425, -0.491676, -0.567533,
		42.090446, 34.512882, 36.389942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857281, 34.621891, 36.153660>,  <42.552746, 34.857056, 36.787216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857281, 34.621891, 36.153660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471207, 34.629124, 36.049282>,  <42.239563, 34.633465, 35.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471207, 34.629124, 36.049282>,  <42.857281, 34.621891, 36.153660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471207, 34.629124, 36.049282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252005, 0.331664, -0.909116,
		0.070105, -0.943224, -0.324675,
		-0.965183, 0.018086, -0.260948,
		42.181652, 34.634548, 35.970997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816238, 34.551201, 35.449749>,  <42.857281, 34.621891, 36.153660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816238, 34.551201, 35.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425560, 34.625683, 35.492428>,  <42.191151, 34.670372, 35.518036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425560, 34.625683, 35.492428>,  <42.816238, 34.551201, 35.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425560, 34.625683, 35.492428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002713, 0.486419, -0.873721,
		-0.214591, -0.853653, -0.474581,
		-0.976700, 0.186205, 0.106697,
		42.132549, 34.681545, 35.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593956, 34.450939, 34.784138>,  <42.816238, 34.551201, 35.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593956, 34.450939, 34.784138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383305, 34.694542, 35.021381>,  <42.256912, 34.840702, 35.163727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383305, 34.694542, 35.021381>,  <42.593956, 34.450939, 34.784138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383305, 34.694542, 35.021381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075230, 0.728344, -0.681069,
		-0.846759, -0.314052, -0.429383,
		-0.526630, 0.609004, 0.593106,
		42.225315, 34.877243, 35.199314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889996, 34.620029, 34.482525>,  <42.593956, 34.450939, 34.784138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889996, 34.620029, 34.482525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045658, 34.921497, 34.694389>,  <42.139057, 35.102379, 34.821507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045658, 34.921497, 34.694389>,  <41.889996, 34.620029, 34.482525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045658, 34.921497, 34.694389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012053, 0.579103, -0.815165,
		-0.921092, 0.310844, 0.234447,
		0.389158, 0.753668, 0.529661,
		42.162407, 35.147598, 34.853287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438816, 35.232178, 34.493679>,  <41.889996, 34.620029, 34.482525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438816, 35.232178, 34.493679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837757, 35.261181, 34.495949>,  <42.077122, 35.278584, 34.497311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837757, 35.261181, 34.495949>,  <41.438816, 35.232178, 34.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837757, 35.261181, 34.495949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020847, 0.359797, -0.932798,
		-0.069676, 0.930209, 0.360356,
		0.997352, 0.072506, 0.005677,
		42.136963, 35.282932, 34.497650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631660, 36.011585, 34.353447>,  <41.438816, 35.232178, 34.493679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631660, 36.011585, 34.353447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871738, 35.715767, 34.231567>,  <42.015785, 35.538277, 34.158440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871738, 35.715767, 34.231567>,  <41.631660, 36.011585, 34.353447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871738, 35.715767, 34.231567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145490, 0.273642, -0.950764,
		0.786511, 0.614973, 0.056641,
		0.600194, -0.739546, -0.304695,
		42.051796, 35.493904, 34.140160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992588, 36.102116, 33.622917>,  <41.631660, 36.011585, 34.353447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992588, 36.102116, 33.622917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941830, 35.708843, 33.675453>,  <41.911373, 35.472881, 33.706974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941830, 35.708843, 33.675453>,  <41.992588, 36.102116, 33.622917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941830, 35.708843, 33.675453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013101, -0.130738, -0.991330,
		0.991829, -0.127520, 0.003710,
		-0.126899, -0.983181, 0.131340,
		41.903759, 35.413887, 33.714855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615952, 35.634296, 33.348351>,  <41.992588, 36.102116, 33.622917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615952, 35.634296, 33.348351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250519, 35.474686, 33.317001>,  <42.031258, 35.378918, 33.298191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250519, 35.474686, 33.317001>,  <42.615952, 35.634296, 33.348351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250519, 35.474686, 33.317001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010428, 0.169669, -0.985446,
		0.406517, -0.901105, -0.150845,
		-0.913584, -0.399027, -0.078370,
		41.976444, 35.354977, 33.293491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658684, 35.117817, 32.932861>,  <42.615952, 35.634296, 33.348351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658684, 35.117817, 32.932861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289078, 35.268681, 32.907742>,  <42.067314, 35.359200, 32.892670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289078, 35.268681, 32.907742>,  <42.658684, 35.117817, 32.932861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289078, 35.268681, 32.907742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036946, -0.075397, -0.996469,
		-0.380562, -0.923074, 0.055734,
		-0.924017, 0.377159, -0.062797,
		42.011871, 35.381828, 32.888901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250286, 35.533131, 32.660343>,  <42.658684, 35.117817, 32.932861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250286, 35.533131, 32.660343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477226, 35.799595, 32.853977>,  <43.613392, 35.959473, 32.970158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477226, 35.799595, 32.853977>,  <43.250286, 35.533131, 32.660343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477226, 35.799595, 32.853977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518713, 0.745680, -0.418208,
		-0.639569, -0.013833, 0.768609,
		0.567352, 0.666160, 0.484089,
		43.647430, 35.999443, 32.999203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792469, 36.117302, 32.808258>,  <43.250286, 35.533131, 32.660343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792469, 36.117302, 32.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177967, 36.223896, 32.813549>,  <43.409267, 36.287853, 32.816723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177967, 36.223896, 32.813549>,  <42.792469, 36.117302, 32.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177967, 36.223896, 32.813549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229292, 0.852571, -0.469625,
		-0.136426, 0.449567, 0.882767,
		0.963749, 0.266481, 0.013231,
		43.467091, 36.303841, 32.817520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865276, 36.772449, 33.040302>,  <42.792469, 36.117302, 32.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865276, 36.772449, 33.040302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189739, 36.719330, 32.812481>,  <43.384415, 36.687458, 32.675789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189739, 36.719330, 32.812481>,  <42.865276, 36.772449, 33.040302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189739, 36.719330, 32.812481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145462, 0.897464, -0.416413,
		0.566454, 0.420624, 0.708664,
		0.811154, -0.132795, -0.569556,
		43.433086, 36.679493, 32.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170097, 37.448551, 33.072968>,  <42.865276, 36.772449, 33.040302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170097, 37.448551, 33.072968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358528, 37.280827, 32.762547>,  <43.471588, 37.180191, 32.576294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358528, 37.280827, 32.762547>,  <43.170097, 37.448551, 33.072968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358528, 37.280827, 32.762547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043890, 0.889843, -0.454151,
		0.881000, 0.179878, 0.437587,
		0.471076, -0.419313, -0.776057,
		43.499851, 37.155033, 32.529728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829865, 37.860374, 32.878647>,  <43.170097, 37.448551, 33.072968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829865, 37.860374, 32.878647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683712, 37.654419, 32.568451>,  <43.596020, 37.530846, 32.382332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683712, 37.654419, 32.568451>,  <43.829865, 37.860374, 32.878647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683712, 37.654419, 32.568451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026873, 0.826912, -0.561690,
		0.930470, -0.226071, -0.288301,
		-0.365382, -0.514888, -0.775491,
		43.574097, 37.499954, 32.335804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192387, 38.163586, 32.322029>,  <43.829865, 37.860374, 32.878647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192387, 38.163586, 32.322029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901840, 37.967434, 32.129395>,  <43.727512, 37.849743, 32.013813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901840, 37.967434, 32.129395>,  <44.192387, 38.163586, 32.322029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901840, 37.967434, 32.129395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044066, 0.666017, -0.744634,
		0.685905, -0.562091, -0.462156,
		-0.726355, -0.490383, -0.481594,
		43.683929, 37.820320, 31.984919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425980, 38.098728, 31.700438>,  <44.192387, 38.163586, 32.322029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425980, 38.098728, 31.700438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037022, 38.031746, 31.635427>,  <43.803646, 37.991554, 31.596422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037022, 38.031746, 31.635427>,  <44.425980, 38.098728, 31.700438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037022, 38.031746, 31.635427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052389, 0.522018, -0.851324,
		0.227403, -0.836334, -0.498833,
		-0.972391, -0.167460, -0.162524,
		43.745304, 37.981506, 31.586670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338654, 37.708828, 30.998936>,  <44.425980, 38.098728, 31.700438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338654, 37.708828, 30.998936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991467, 37.889133, 31.082306>,  <43.783154, 37.997318, 31.132328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991467, 37.889133, 31.082306>,  <44.338654, 37.708828, 30.998936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991467, 37.889133, 31.082306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038631, 0.357139, -0.933252,
		-0.495113, -0.818086, -0.292572,
		-0.867970, 0.450763, 0.208428,
		43.731075, 38.024361, 31.144835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990906, 37.609577, 30.401354>,  <44.338654, 37.708828, 30.998936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990906, 37.609577, 30.401354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771137, 37.898888, 30.568689>,  <43.639278, 38.072475, 30.669090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771137, 37.898888, 30.568689>,  <43.990906, 37.609577, 30.401354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771137, 37.898888, 30.568689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020183, 0.489044, -0.872026,
		-0.835304, -0.487549, -0.254091,
		-0.549417, 0.723279, 0.418341,
		43.606312, 38.115871, 30.694191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461552, 37.765839, 29.976931>,  <43.990906, 37.609577, 30.401354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461552, 37.765839, 29.976931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422318, 38.109627, 30.177603>,  <43.398777, 38.315899, 30.298006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422318, 38.109627, 30.177603>,  <43.461552, 37.765839, 29.976931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422318, 38.109627, 30.177603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014897, 0.502787, -0.864282,
		-0.995067, -0.092245, -0.036511,
		-0.098083, 0.859474, 0.501680,
		43.392891, 38.367470, 30.328108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889465, 38.078846, 29.687519>,  <43.461552, 37.765839, 29.976931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889465, 38.078846, 29.687519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111664, 38.360115, 29.865047>,  <43.244984, 38.528877, 29.971563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111664, 38.360115, 29.865047>,  <42.889465, 38.078846, 29.687519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111664, 38.360115, 29.865047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062876, 0.567739, -0.820804,
		-0.829138, 0.428048, 0.359590,
		0.555497, 0.703169, 0.443820,
		43.278313, 38.571064, 29.998194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532658, 38.615910, 29.586800>,  <42.889465, 38.078846, 29.687519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532658, 38.615910, 29.586800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905193, 38.746265, 29.651800>,  <43.128716, 38.824478, 29.690802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905193, 38.746265, 29.651800>,  <42.532658, 38.615910, 29.586800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905193, 38.746265, 29.651800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052994, 0.562780, -0.824906,
		-0.360283, 0.759653, 0.541408,
		0.931336, 0.325891, 0.162503,
		43.184593, 38.844032, 29.700550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566040, 39.340870, 29.427656>,  <42.532658, 38.615910, 29.586800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566040, 39.340870, 29.427656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951439, 39.234184, 29.418304>,  <43.182678, 39.170174, 29.412693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951439, 39.234184, 29.418304>,  <42.566040, 39.340870, 29.427656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951439, 39.234184, 29.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155502, 0.628549, -0.762066,
		0.217948, 0.730609, 0.647077,
		0.963492, -0.266713, -0.023380,
		43.240486, 39.154171, 29.411291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890846, 39.899094, 29.253714>,  <42.566040, 39.340870, 29.427656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890846, 39.899094, 29.253714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154846, 39.628429, 29.123156>,  <43.313244, 39.466030, 29.044821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154846, 39.628429, 29.123156>,  <42.890846, 39.899094, 29.253714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154846, 39.628429, 29.123156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240646, 0.601982, -0.761385,
		0.711684, 0.423966, 0.560142,
		0.659997, -0.676661, -0.326396,
		43.352844, 39.425430, 29.025236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455475, 40.268581, 29.220121>,  <42.890846, 39.899094, 29.253714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455475, 40.268581, 29.220121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540474, 39.943394, 29.003262>,  <43.591473, 39.748280, 28.873146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540474, 39.943394, 29.003262>,  <43.455475, 40.268581, 29.220121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540474, 39.943394, 29.003262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448513, 0.574071, -0.685038,
		0.868148, -0.097593, 0.486616,
		0.212497, -0.812968, -0.542151,
		43.604221, 39.699505, 28.840616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137737, 40.374180, 29.079378>,  <43.455475, 40.268581, 29.220121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137737, 40.374180, 29.079378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973198, 40.124161, 28.814014>,  <43.874474, 39.974152, 28.654797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973198, 40.124161, 28.814014>,  <44.137737, 40.374180, 29.079378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973198, 40.124161, 28.814014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494414, 0.458448, -0.738499,
		0.765734, -0.631778, 0.120450,
		-0.411347, -0.625045, -0.663409,
		43.849792, 39.936646, 28.614992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670731, 40.094517, 28.698383>,  <44.137737, 40.374180, 29.079378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670731, 40.094517, 28.698383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341618, 40.071781, 28.472178>,  <44.144150, 40.058140, 28.336454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341618, 40.071781, 28.472178>,  <44.670731, 40.094517, 28.698383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341618, 40.071781, 28.472178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504886, 0.383838, -0.773148,
		0.261007, -0.921649, -0.287120,
		-0.822779, -0.056834, -0.565512,
		44.094784, 40.054729, 28.302525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926456, 39.991394, 27.947062>,  <44.670731, 40.094517, 28.698383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926456, 39.991394, 27.947062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546459, 40.114357, 27.925098>,  <44.318462, 40.188133, 27.911921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546459, 40.114357, 27.925098>,  <44.926456, 39.991394, 27.947062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546459, 40.114357, 27.925098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238204, 0.599681, -0.763964,
		-0.201919, -0.738840, -0.642918,
		-0.949993, 0.307405, -0.054908,
		44.261459, 40.206577, 27.908627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758987, 39.998158, 27.227783>,  <44.926456, 39.991394, 27.947062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758987, 39.998158, 27.227783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474586, 40.234146, 27.380836>,  <44.303947, 40.375740, 27.472668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474586, 40.234146, 27.380836>,  <44.758987, 39.998158, 27.227783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474586, 40.234146, 27.380836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191589, 0.686079, -0.701847,
		-0.676589, -0.425705, -0.600835,
		-0.711000, 0.589975, 0.382633,
		44.261288, 40.411140, 27.495626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659931, 40.349640, 26.692942>,  <44.758987, 39.998158, 27.227783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659931, 40.349640, 26.692942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476555, 40.580036, 26.963665>,  <44.366531, 40.718273, 27.126099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476555, 40.580036, 26.963665>,  <44.659931, 40.349640, 26.692942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476555, 40.580036, 26.963665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233515, 0.812857, -0.533606,
		-0.857500, -0.086581, -0.507147,
		-0.458438, 0.575993, 0.676806,
		44.339024, 40.752834, 27.166706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320999, 40.764511, 26.251808>,  <44.659931, 40.349640, 26.692942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320999, 40.764511, 26.251808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341923, 40.926472, 26.616953>,  <44.354477, 41.023647, 26.836040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.341923, 40.926472, 26.616953>,  <44.320999, 40.764511, 26.251808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341923, 40.926472, 26.616953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208348, 0.889572, -0.406512,
		-0.976655, 0.211459, -0.037825,
		0.052313, 0.404903, 0.912862,
		44.357616, 41.047943, 26.890812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881561, 41.338161, 26.302111>,  <44.320999, 40.764511, 26.251808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881561, 41.338161, 26.302111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181103, 41.391167, 26.561852>,  <44.360828, 41.422970, 26.717695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181103, 41.391167, 26.561852>,  <43.881561, 41.338161, 26.302111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181103, 41.391167, 26.561852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272407, 0.831663, -0.483870,
		-0.604162, 0.539236, 0.586696,
		0.748854, 0.132516, 0.649351,
		44.405758, 41.430920, 26.756657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960606, 42.075462, 26.298561>,  <43.881561, 41.338161, 26.302111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960606, 42.075462, 26.298561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284542, 41.921062, 26.475271>,  <44.478905, 41.828423, 26.581297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284542, 41.921062, 26.475271>,  <43.960606, 42.075462, 26.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284542, 41.921062, 26.475271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578988, 0.647201, -0.495887,
		-0.094505, 0.657371, 0.747618,
		0.809841, -0.385998, 0.441773,
		44.527493, 41.805264, 26.607803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399410, 42.541840, 25.984867>,  <43.960606, 42.075462, 26.298561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399410, 42.541840, 25.984867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627338, 42.289433, 26.195436>,  <44.764095, 42.137989, 26.321779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627338, 42.289433, 26.195436>,  <44.399410, 42.541840, 25.984867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627338, 42.289433, 26.195436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821656, 0.448203, -0.352131,
		-0.013744, 0.633191, 0.773874,
		0.569818, -0.631018, 0.526425,
		44.798283, 42.100128, 26.353363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781292, 42.819683, 26.577320>,  <44.399410, 42.541840, 25.984867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781292, 42.819683, 26.577320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958691, 42.516998, 26.385199>,  <45.065128, 42.335388, 26.269926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958691, 42.516998, 26.385199>,  <44.781292, 42.819683, 26.577320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958691, 42.516998, 26.385199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722944, 0.618782, -0.307345,
		0.529776, -0.210926, 0.821491,
		0.443497, -0.756716, -0.480303,
		45.091740, 42.289982, 26.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408092, 42.588943, 26.848894>,  <44.781292, 42.819683, 26.577320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408092, 42.588943, 26.848894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391808, 42.546101, 26.451529>,  <45.382034, 42.520397, 26.213110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.391808, 42.546101, 26.451529>,  <45.408092, 42.588943, 26.848894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391808, 42.546101, 26.451529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843131, 0.529835, -0.091682,
		0.536164, -0.841311, 0.068730,
		-0.040718, -0.107105, -0.993414,
		45.379593, 42.513969, 26.153505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078293, 42.443436, 26.650423>,  <45.408092, 42.588943, 26.848894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078293, 42.443436, 26.650423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908504, 42.564243, 26.308989>,  <45.806629, 42.636726, 26.104128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908504, 42.564243, 26.308989>,  <46.078293, 42.443436, 26.650423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908504, 42.564243, 26.308989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880539, 0.357265, -0.311470,
		0.210886, -0.883825, -0.417590,
		-0.424475, 0.302019, -0.853584,
		45.781162, 42.654850, 26.052914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632351, 42.382824, 26.097092>,  <46.078293, 42.443436, 26.650423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632351, 42.382824, 26.097092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365673, 42.653511, 25.972149>,  <46.205666, 42.815926, 25.897182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365673, 42.653511, 25.972149>,  <46.632351, 42.382824, 26.097092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365673, 42.653511, 25.972149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745197, 0.597256, -0.296590,
		-0.014151, -0.430504, -0.902478,
		-0.666694, 0.676721, -0.312359,
		46.165665, 42.856529, 25.878441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.326904, 42.337643, 26.471342>,  <46.632351, 42.382824, 26.097092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.326904, 42.337643, 26.471342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676460, 42.193314, 26.601648>,  <47.886192, 42.106716, 26.679832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.676460, 42.193314, 26.601648>,  <47.326904, 42.337643, 26.471342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.676460, 42.193314, 26.601648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482956, -0.720820, 0.497164,
		0.055428, -0.591796, -0.804180,
		0.873889, -0.360826, 0.325765,
		47.938625, 42.085064, 26.699377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318409, 41.671623, 26.446947>,  <47.326904, 42.337643, 26.471342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318409, 41.671623, 26.446947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615150, 41.716251, 26.711432>,  <47.793198, 41.743027, 26.870123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.615150, 41.716251, 26.711432>,  <47.318409, 41.671623, 26.446947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.615150, 41.716251, 26.711432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318308, -0.809292, 0.493687,
		0.590193, -0.576714, -0.564865,
		0.741857, 0.111570, 0.661211,
		47.837708, 41.749722, 26.909794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721767, 41.091545, 26.457973>,  <47.318409, 41.671623, 26.446947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721767, 41.091545, 26.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731316, 41.260387, 26.820467>,  <47.737045, 41.361691, 27.037964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731316, 41.260387, 26.820467>,  <47.721767, 41.091545, 26.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731316, 41.260387, 26.820467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115202, -0.899292, 0.421904,
		0.993055, -0.114471, 0.027159,
		0.023873, 0.422103, 0.906233,
		47.738476, 41.387020, 27.092337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.053646, 40.597954, 26.784279>,  <47.721767, 41.091545, 26.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.053646, 40.597954, 26.784279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863312, 40.812984, 27.062729>,  <47.749111, 40.942005, 27.229799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863312, 40.812984, 27.062729>,  <48.053646, 40.597954, 26.784279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.863312, 40.812984, 27.062729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300127, -0.843206, 0.446013,
		0.826745, 0.003302, 0.562567,
		-0.475833, 0.537580, 0.696126,
		47.720562, 40.974258, 27.271566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.239822, 40.613346, 27.509418>,  <48.053646, 40.597954, 26.784279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.239822, 40.613346, 27.509418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843464, 40.662025, 27.486404>,  <47.605648, 40.691235, 27.472597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843464, 40.662025, 27.486404>,  <48.239822, 40.613346, 27.509418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843464, 40.662025, 27.486404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127664, -0.713998, 0.688410,
		0.042702, 0.689489, 0.723036,
		-0.990898, 0.121702, -0.057534,
		47.546196, 40.698536, 27.469145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.915138, 40.620022, 28.285046>,  <48.239822, 40.613346, 27.509418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.915138, 40.620022, 28.285046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609898, 40.561134, 28.033333>,  <47.426754, 40.525803, 27.882305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609898, 40.561134, 28.033333>,  <47.915138, 40.620022, 28.285046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609898, 40.561134, 28.033333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333410, -0.744448, 0.578476,
		-0.553630, 0.651247, 0.519008,
		-0.763106, -0.147220, -0.629282,
		47.380966, 40.516968, 27.844549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420120, 40.461143, 28.689253>,  <47.915138, 40.620022, 28.285046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420120, 40.461143, 28.689253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.274303, 40.370670, 28.327932>,  <47.186813, 40.316387, 28.111141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.274303, 40.370670, 28.327932>,  <47.420120, 40.461143, 28.689253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.274303, 40.370670, 28.327932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503219, -0.768356, 0.395474,
		-0.783503, 0.598726, 0.166284,
		-0.364546, -0.226178, -0.903299,
		47.164940, 40.302818, 28.056942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.669128, 40.418545, 28.707428>,  <47.420120, 40.461143, 28.689253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.669128, 40.418545, 28.707428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781670, 40.180000, 28.406710>,  <46.849194, 40.036873, 28.226278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781670, 40.180000, 28.406710>,  <46.669128, 40.418545, 28.707428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781670, 40.180000, 28.406710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497950, -0.760442, 0.416862,
		-0.820296, 0.257070, -0.510911,
		0.281355, -0.596358, -0.751796,
		46.866077, 40.001091, 28.181171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153175, 40.080494, 28.530748>,  <46.669128, 40.418545, 28.707428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153175, 40.080494, 28.530748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408073, 39.832962, 28.347023>,  <46.561012, 39.684444, 28.236788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408073, 39.832962, 28.347023>,  <46.153175, 40.080494, 28.530748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408073, 39.832962, 28.347023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402327, -0.775468, 0.486603,
		-0.657309, -0.125289, -0.743133,
		0.637243, -0.618831, -0.459315,
		46.599247, 39.647312, 28.209229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845852, 39.502613, 28.483538>,  <46.153175, 40.080494, 28.530748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845852, 39.502613, 28.483538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218319, 39.365520, 28.433802>,  <46.441799, 39.283264, 28.403961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218319, 39.365520, 28.433802>,  <45.845852, 39.502613, 28.483538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218319, 39.365520, 28.433802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193767, -0.754105, 0.627519,
		-0.308835, -0.560234, -0.768609,
		0.931169, -0.342730, -0.124339,
		46.497669, 39.262703, 28.396500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790947, 38.791431, 28.197117>,  <45.845852, 39.502613, 28.483538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790947, 38.791431, 28.197117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135353, 38.844913, 28.393393>,  <46.341995, 38.877003, 28.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.135353, 38.844913, 28.393393>,  <45.790947, 38.791431, 28.197117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135353, 38.844913, 28.393393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188149, -0.812627, 0.551577,
		0.472496, -0.567239, -0.674528,
		0.861016, 0.133706, 0.490689,
		46.393658, 38.885025, 28.540600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091003, 38.121380, 28.247707>,  <45.790947, 38.791431, 28.197117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091003, 38.121380, 28.247707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314346, 38.301636, 28.526320>,  <46.448353, 38.409790, 28.693487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314346, 38.301636, 28.526320>,  <46.091003, 38.121380, 28.247707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314346, 38.301636, 28.526320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050130, -0.819740, 0.570537,
		0.828082, -0.353483, -0.435121,
		0.558362, 0.450639, 0.696532,
		46.481853, 38.436829, 28.735279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550682, 37.715412, 28.539989>,  <46.091003, 38.121380, 28.247707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550682, 37.715412, 28.539989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543987, 37.971359, 28.847311>,  <46.539970, 38.124928, 29.031704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.543987, 37.971359, 28.847311>,  <46.550682, 37.715412, 28.539989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543987, 37.971359, 28.847311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082072, -0.766700, 0.636738,
		0.996486, -0.052397, 0.065350,
		-0.016741, 0.639864, 0.768306,
		46.538963, 38.163319, 29.077803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.063038, 37.433453, 29.016552>,  <46.550682, 37.715412, 28.539989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.063038, 37.433453, 29.016552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826546, 37.669346, 29.236610>,  <46.684650, 37.810883, 29.368645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826546, 37.669346, 29.236610>,  <47.063038, 37.433453, 29.016552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826546, 37.669346, 29.236610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014185, -0.689638, 0.724016,
		0.806376, 0.420258, 0.416102,
		-0.591233, 0.589731, 0.550146,
		46.649178, 37.846264, 29.401655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.387547, 37.460163, 29.622807>,  <47.063038, 37.433453, 29.016552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.387547, 37.460163, 29.622807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008606, 37.557732, 29.705788>,  <46.781242, 37.616272, 29.755575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.008606, 37.557732, 29.705788>,  <47.387547, 37.460163, 29.622807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008606, 37.557732, 29.705788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010464, -0.623939, 0.781403,
		0.320036, 0.742431, 0.588534,
		-0.947348, 0.243918, 0.207452,
		46.724403, 37.630909, 29.768023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422558, 37.730930, 30.287867>,  <47.387547, 37.460163, 29.622807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422558, 37.730930, 30.287867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035412, 37.649624, 30.228636>,  <46.803123, 37.600842, 30.193098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.035412, 37.649624, 30.228636>,  <47.422558, 37.730930, 30.287867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.035412, 37.649624, 30.228636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067822, -0.356020, 0.932014,
		-0.242164, 0.912104, 0.330792,
		-0.967862, -0.203265, -0.148076,
		46.745052, 37.588646, 30.184214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010181, 38.109413, 30.727106>,  <47.422558, 37.730930, 30.287867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010181, 38.109413, 30.727106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741707, 37.824570, 30.644741>,  <46.580620, 37.653664, 30.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.741707, 37.824570, 30.644741>,  <47.010181, 38.109413, 30.727106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741707, 37.824570, 30.644741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104423, -0.184179, 0.977330,
		-0.733894, 0.677476, 0.049259,
		-0.671190, -0.712113, -0.205912,
		46.540348, 37.610935, 30.582968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433620, 38.157585, 31.185764>,  <47.010181, 38.109413, 30.727106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433620, 38.157585, 31.185764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401161, 37.780411, 31.056589>,  <46.381687, 37.554108, 30.979084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401161, 37.780411, 31.056589>,  <46.433620, 38.157585, 31.185764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401161, 37.780411, 31.056589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290525, -0.287562, 0.912635,
		-0.953420, 0.167879, -0.250612,
		-0.081145, -0.942934, -0.322940,
		46.376816, 37.497532, 30.959707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864590, 37.915756, 31.440115>,  <46.433620, 38.157585, 31.185764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864590, 37.915756, 31.440115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071171, 37.581203, 31.366650>,  <46.195122, 37.380470, 31.322571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071171, 37.581203, 31.366650>,  <45.864590, 37.915756, 31.440115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071171, 37.581203, 31.366650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182131, -0.316866, 0.930819,
		-0.836721, -0.447276, -0.315979,
		0.516456, -0.836385, -0.183665,
		46.226109, 37.330288, 31.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410110, 37.292877, 31.613201>,  <45.864590, 37.915756, 31.440115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410110, 37.292877, 31.613201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785675, 37.155437, 31.621155>,  <46.011013, 37.072975, 31.625927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.785675, 37.155437, 31.621155>,  <45.410110, 37.292877, 31.613201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785675, 37.155437, 31.621155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236002, -0.600688, 0.763857,
		-0.250512, -0.721884, -0.645080,
		0.938907, -0.343595, 0.019886,
		46.067348, 37.052361, 31.627121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375484, 36.529457, 31.673706>,  <45.410110, 37.292877, 31.613201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375484, 36.529457, 31.673706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742657, 36.628323, 31.797842>,  <45.962959, 36.687641, 31.872324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.742657, 36.628323, 31.797842>,  <45.375484, 36.529457, 31.673706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742657, 36.628323, 31.797842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110756, -0.591490, 0.798669,
		0.380965, -0.767496, -0.515573,
		0.917932, 0.247162, 0.310342,
		46.018036, 36.702473, 31.890945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720966, 35.881367, 31.770538>,  <45.375484, 36.529457, 31.673706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720966, 35.881367, 31.770538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917801, 36.154411, 31.986649>,  <46.035900, 36.318237, 32.116314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917801, 36.154411, 31.986649>,  <45.720966, 35.881367, 31.770538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917801, 36.154411, 31.986649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014639, -0.614039, 0.789140,
		0.870425, -0.396231, -0.292165,
		0.492083, 0.682610, 0.540276,
		46.065426, 36.359196, 32.148731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.275703, 35.510937, 32.081276>,  <45.720966, 35.881367, 31.770538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.275703, 35.510937, 32.081276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250046, 35.840466, 32.306561>,  <46.234653, 36.038181, 32.441730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250046, 35.840466, 32.306561>,  <46.275703, 35.510937, 32.081276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250046, 35.840466, 32.306561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145674, -0.566056, 0.811394,
		0.987251, -0.030001, 0.156318,
		-0.064142, 0.823821, 0.563210,
		46.230804, 36.087612, 32.475525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728024, 35.334995, 32.682838>,  <46.275703, 35.510937, 32.081276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728024, 35.334995, 32.682838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522606, 35.655182, 32.806469>,  <46.399357, 35.847294, 32.880650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.522606, 35.655182, 32.806469>,  <46.728024, 35.334995, 32.682838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522606, 35.655182, 32.806469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065823, -0.395894, 0.915934,
		0.855536, 0.450026, 0.255997,
		-0.513542, 0.800465, 0.309079,
		46.368542, 35.895321, 32.899193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995670, 35.608871, 33.225182>,  <46.728024, 35.334995, 32.682838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995670, 35.608871, 33.225182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616779, 35.733662, 33.254654>,  <46.389446, 35.808537, 33.272339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616779, 35.733662, 33.254654>,  <46.995670, 35.608871, 33.225182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616779, 35.733662, 33.254654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090733, -0.481383, 0.871801,
		0.307454, 0.819109, 0.484286,
		-0.947227, 0.311980, 0.073683,
		46.332611, 35.827255, 33.276760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674789, 35.871159, 33.881897>,  <46.995670, 35.608871, 33.225182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674789, 35.871159, 33.881897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656628, 35.698025, 34.242027>,  <46.645729, 35.594147, 34.458107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.656628, 35.698025, 34.242027>,  <46.674789, 35.871159, 33.881897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656628, 35.698025, 34.242027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557273, -0.758970, -0.336767,
		0.829087, 0.486437, 0.275669,
		-0.045408, -0.432832, 0.900330,
		46.643005, 35.568176, 34.512127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411976, 35.710972, 34.293560>,  <46.674789, 35.871159, 33.881897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411976, 35.710972, 34.293560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107132, 35.461441, 34.362881>,  <46.924225, 35.311722, 34.404472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107132, 35.461441, 34.362881>,  <47.411976, 35.710972, 34.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107132, 35.461441, 34.362881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566360, -0.772031, -0.288451,
		0.313738, -0.121680, 0.941681,
		-0.762106, -0.623828, 0.173301,
		46.878502, 35.274292, 34.414871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804398, 35.147495, 34.360641>,  <47.411976, 35.710972, 34.293560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804398, 35.147495, 34.360641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425079, 35.053864, 34.274910>,  <47.197487, 34.997684, 34.223473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425079, 35.053864, 34.274910>,  <47.804398, 35.147495, 34.360641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425079, 35.053864, 34.274910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290576, -0.911960, -0.289646,
		-0.127655, -0.336949, 0.932829,
		-0.948298, -0.234083, -0.214326,
		47.140591, 34.983639, 34.210613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908203, 35.198006, 35.111229>,  <47.804398, 35.147495, 34.360641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908203, 35.198006, 35.111229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650318, 34.987415, 34.889538>,  <47.495586, 34.861061, 34.756523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650318, 34.987415, 34.889538>,  <47.908203, 35.198006, 35.111229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650318, 34.987415, 34.889538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377897, 0.410729, -0.829757,
		0.664483, -0.744397, -0.065849,
		-0.644714, -0.526475, -0.554227,
		47.456905, 34.829472, 34.723270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.637421, 33.046577, 45.138344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294468, 32.842072, 45.114685>,  <37.088696, 32.719368, 45.100491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294468, 32.842072, 45.114685>,  <37.637421, 33.046577, 45.138344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294468, 32.842072, 45.114685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021949, 0.151131, -0.988270,
		0.514206, -0.846031, -0.140799,
		-0.857386, -0.511264, -0.059143,
		37.037251, 32.688694, 45.096943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731808, 32.670181, 44.550114>,  <37.637421, 33.046577, 45.138344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731808, 32.670181, 44.550114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336014, 32.644985, 44.602188>,  <37.098537, 32.629868, 44.633430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.336014, 32.644985, 44.602188>,  <37.731808, 32.670181, 44.550114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336014, 32.644985, 44.602188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132002, 0.025619, -0.990918,
		0.059087, -0.997685, -0.033665,
		-0.989487, -0.062995, 0.130183,
		37.039169, 32.626091, 44.641243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425365, 32.112675, 44.101547>,  <37.731808, 32.670181, 44.550114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425365, 32.112675, 44.101547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124817, 32.368534, 44.166416>,  <36.944489, 32.522049, 44.205338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.124817, 32.368534, 44.166416>,  <37.425365, 32.112675, 44.101547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124817, 32.368534, 44.166416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196182, 0.018116, -0.980400,
		-0.630047, -0.768456, 0.111875,
		-0.751368, 0.639646, 0.162172,
		36.899406, 32.560429, 44.215069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769413, 31.792639, 43.772198>,  <37.425365, 32.112675, 44.101547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769413, 31.792639, 43.772198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735474, 32.188992, 43.814064>,  <36.715111, 32.426804, 43.839184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735474, 32.188992, 43.814064>,  <36.769413, 31.792639, 43.772198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735474, 32.188992, 43.814064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189575, 0.087074, -0.977998,
		-0.978194, -0.102819, 0.180459,
		-0.084844, 0.990882, 0.104667,
		36.710022, 32.486256, 43.845463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311176, 31.881599, 43.352501>,  <36.769413, 31.792639, 43.772198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311176, 31.881599, 43.352501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458668, 32.251347, 43.391663>,  <36.547161, 32.473194, 43.415157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458668, 32.251347, 43.391663>,  <36.311176, 31.881599, 43.352501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458668, 32.251347, 43.391663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082894, 0.137601, -0.987013,
		-0.925834, 0.355823, 0.127362,
		0.368727, 0.924368, 0.097900,
		36.569286, 32.528656, 43.421032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943935, 32.312740, 42.828587>,  <36.311176, 31.881599, 43.352501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943935, 32.312740, 42.828587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250988, 32.556931, 42.906635>,  <36.435219, 32.703445, 42.953465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250988, 32.556931, 42.906635>,  <35.943935, 32.312740, 42.828587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250988, 32.556931, 42.906635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061504, 0.232873, -0.970560,
		-0.637938, 0.757030, 0.141213,
		0.767627, 0.610473, 0.195119,
		36.481277, 32.740074, 42.965172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814556, 32.963169, 42.431610>,  <35.943935, 32.312740, 42.828587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814556, 32.963169, 42.431610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202015, 32.986393, 42.528229>,  <36.434490, 33.000328, 42.586201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202015, 32.986393, 42.528229>,  <35.814556, 32.963169, 42.431610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202015, 32.986393, 42.528229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207065, 0.348543, -0.914134,
		-0.137261, 0.935493, 0.325595,
		0.968650, 0.058056, 0.241550,
		36.492611, 33.003811, 42.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064899, 33.630337, 42.150608>,  <35.814556, 32.963169, 42.431610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064899, 33.630337, 42.150608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363392, 33.372051, 42.215359>,  <36.542488, 33.217079, 42.254208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363392, 33.372051, 42.215359>,  <36.064899, 33.630337, 42.150608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363392, 33.372051, 42.215359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350574, 0.174479, -0.920138,
		0.565899, 0.743382, 0.356570,
		0.746228, -0.645710, 0.161873,
		36.587261, 33.178337, 42.263920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621391, 33.940441, 41.908215>,  <36.064899, 33.630337, 42.150608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621391, 33.940441, 41.908215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714096, 33.551392, 41.915005>,  <36.769718, 33.317963, 41.919079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714096, 33.551392, 41.915005>,  <36.621391, 33.940441, 41.908215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714096, 33.551392, 41.915005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364586, 0.070672, -0.928484,
		0.901867, 0.221376, 0.370985,
		0.231762, -0.972625, 0.016974,
		36.783623, 33.259605, 41.920097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329079, 33.996101, 41.786713>,  <36.621391, 33.940441, 41.908215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329079, 33.996101, 41.786713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169857, 33.644547, 41.681557>,  <37.074326, 33.433613, 41.618462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.169857, 33.644547, 41.681557>,  <37.329079, 33.996101, 41.786713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169857, 33.644547, 41.681557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375200, 0.105530, -0.920917,
		0.837124, -0.465212, 0.287751,
		-0.398055, -0.878886, -0.262890,
		37.050442, 33.380882, 41.602692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868122, 33.617359, 41.529545>,  <37.329079, 33.996101, 41.786713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868122, 33.617359, 41.529545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522594, 33.482143, 41.380119>,  <37.315277, 33.401012, 41.290462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522594, 33.482143, 41.380119>,  <37.868122, 33.617359, 41.529545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522594, 33.482143, 41.380119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347857, 0.136185, -0.927604,
		0.364442, -0.931226, -0.000049,
		-0.863816, -0.338041, -0.373565,
		37.263451, 33.380730, 41.268051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191734, 33.234238, 41.118961>,  <37.868122, 33.617359, 41.529545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191734, 33.234238, 41.118961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.807381, 33.268375, 41.013573>,  <37.576767, 33.288857, 40.950340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.807381, 33.268375, 41.013573>,  <38.191734, 33.234238, 41.118961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807381, 33.268375, 41.013573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268713, 0.057050, -0.961529,
		-0.067030, -0.994717, -0.077752,
		-0.960885, 0.085345, -0.263469,
		37.519115, 33.293980, 40.934532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036648, 32.749763, 40.573265>,  <38.191734, 33.234238, 41.118961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036648, 32.749763, 40.573265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735355, 33.010876, 40.540962>,  <37.554581, 33.167542, 40.521580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.735355, 33.010876, 40.540962>,  <38.036648, 32.749763, 40.573265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735355, 33.010876, 40.540962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201083, 0.111623, -0.973194,
		-0.626268, -0.749277, -0.215341,
		-0.753229, 0.652781, -0.080761,
		37.509388, 33.206711, 40.516735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746666, 32.612419, 39.943031>,  <38.036648, 32.749763, 40.573265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746666, 32.612419, 39.943031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606167, 32.981838, 40.004581>,  <37.521870, 33.203491, 40.041512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.606167, 32.981838, 40.004581>,  <37.746666, 32.612419, 39.943031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606167, 32.981838, 40.004581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073637, 0.191089, -0.978807,
		-0.933383, -0.332471, -0.135126,
		-0.351246, 0.923552, 0.153877,
		37.500793, 33.258904, 40.050743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217278, 32.715725, 39.513645>,  <37.746666, 32.612419, 39.943031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217278, 32.715725, 39.513645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352020, 33.081856, 39.601917>,  <37.432865, 33.301537, 39.654881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352020, 33.081856, 39.601917>,  <37.217278, 32.715725, 39.513645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352020, 33.081856, 39.601917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100818, 0.197961, -0.975011,
		-0.936141, 0.350691, -0.025597,
		0.336861, 0.915329, 0.220676,
		37.453079, 33.356453, 39.668121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877155, 33.285755, 39.071754>,  <37.217278, 32.715725, 39.513645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877155, 33.285755, 39.071754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219612, 33.444286, 39.204380>,  <37.425087, 33.539406, 39.283955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219612, 33.444286, 39.204380>,  <36.877155, 33.285755, 39.071754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219612, 33.444286, 39.204380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184251, 0.365340, -0.912457,
		-0.482771, 0.842287, 0.239760,
		0.856145, 0.396332, 0.331568,
		37.476456, 33.563187, 39.303852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984108, 33.977295, 38.723423>,  <36.877155, 33.285755, 39.071754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984108, 33.977295, 38.723423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339096, 33.842777, 38.849472>,  <37.552090, 33.762066, 38.925102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.339096, 33.842777, 38.849472>,  <36.984108, 33.977295, 38.723423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339096, 33.842777, 38.849472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423686, 0.326280, -0.845004,
		0.181347, 0.883431, 0.432045,
		0.887470, -0.336290, 0.315127,
		37.605339, 33.741890, 38.944012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440128, 34.471161, 38.425850>,  <36.984108, 33.977295, 38.723423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440128, 34.471161, 38.425850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692081, 34.177788, 38.528084>,  <37.843254, 34.001762, 38.589424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.692081, 34.177788, 38.528084>,  <37.440128, 34.471161, 38.425850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692081, 34.177788, 38.528084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687113, 0.372782, -0.623626,
		0.362110, 0.568427, 0.738760,
		0.629882, -0.733433, 0.255586,
		37.881046, 33.957756, 38.604759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111649, 34.780884, 38.509094>,  <37.440128, 34.471161, 38.425850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111649, 34.780884, 38.509094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166233, 34.386169, 38.474167>,  <38.198986, 34.149342, 38.453209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166233, 34.386169, 38.474167>,  <38.111649, 34.780884, 38.509094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166233, 34.386169, 38.474167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798610, 0.161738, -0.579709,
		0.586173, 0.009376, 0.810131,
		0.136464, -0.986789, -0.087319,
		38.207172, 34.090134, 38.447971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873749, 34.599590, 38.534740>,  <38.111649, 34.780884, 38.509094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873749, 34.599590, 38.534740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719543, 34.273392, 38.362064>,  <38.627022, 34.077675, 38.258461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.719543, 34.273392, 38.362064>,  <38.873749, 34.599590, 38.534740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719543, 34.273392, 38.362064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601406, 0.132744, -0.787839,
		0.699781, -0.563339, 0.439268,
		-0.385510, -0.815493, -0.431687,
		38.603889, 34.028744, 38.232559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349190, 34.292843, 38.131855>,  <38.873749, 34.599590, 38.534740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349190, 34.292843, 38.131855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.034729, 34.143604, 37.934769>,  <38.846054, 34.054062, 37.816517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.034729, 34.143604, 37.934769>,  <39.349190, 34.292843, 38.131855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034729, 34.143604, 37.934769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559978, -0.092669, -0.823309,
		0.261513, -0.923154, 0.281777,
		-0.786153, -0.373095, -0.492712,
		38.798882, 34.031677, 37.786957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681454, 34.788662, 37.745983>,  <39.349190, 34.292843, 38.131855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681454, 34.788662, 37.745983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008945, 34.944004, 37.915154>,  <40.205441, 35.037209, 38.016655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008945, 34.944004, 37.915154>,  <39.681454, 34.788662, 37.745983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008945, 34.944004, 37.915154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466273, -0.019838, -0.884418,
		-0.335080, 0.921295, -0.197323,
		0.818725, 0.388357, 0.422928,
		40.254562, 35.060513, 38.042030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926651, 34.922375, 37.044258>,  <39.681454, 34.788662, 37.745983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926651, 34.922375, 37.044258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075100, 35.291733, 37.083462>,  <40.164169, 35.513348, 37.106983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075100, 35.291733, 37.083462>,  <39.926651, 34.922375, 37.044258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075100, 35.291733, 37.083462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155202, -0.165746, 0.973879,
		0.915520, -0.346221, -0.204825,
		0.371127, 0.923395, 0.098010,
		40.186440, 35.568752, 37.112865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356911, 34.874466, 37.563366>,  <39.926651, 34.922375, 37.044258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356911, 34.874466, 37.563366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366604, 35.274200, 37.552425>,  <40.372421, 35.514042, 37.545860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366604, 35.274200, 37.552425>,  <40.356911, 34.874466, 37.563366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366604, 35.274200, 37.552425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251245, 0.020394, 0.967709,
		0.967620, -0.030326, -0.250583,
		0.024237, 0.999332, -0.027353,
		40.373875, 35.574001, 37.544220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028847, 35.074795, 37.900211>,  <40.356911, 34.874466, 37.563366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028847, 35.074795, 37.900211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770569, 35.380085, 37.909737>,  <40.615604, 35.563259, 37.915451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.770569, 35.380085, 37.909737>,  <41.028847, 35.074795, 37.900211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770569, 35.380085, 37.909737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300102, 0.224962, 0.927001,
		0.702155, 0.605703, -0.374302,
		-0.645691, 0.763227, 0.023814,
		40.576862, 35.609055, 37.916882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347584, 35.690704, 38.100075>,  <41.028847, 35.074795, 37.900211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347584, 35.690704, 38.100075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958607, 35.737175, 38.180931>,  <40.725220, 35.765057, 38.229446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958607, 35.737175, 38.180931>,  <41.347584, 35.690704, 38.100075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958607, 35.737175, 38.180931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218982, 0.157488, 0.962935,
		0.080034, 0.980663, -0.178588,
		-0.972441, 0.116175, 0.202144,
		40.666874, 35.772026, 38.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284622, 36.195599, 38.603481>,  <41.347584, 35.690704, 38.100075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284622, 36.195599, 38.603481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.943600, 35.990028, 38.641495>,  <40.738987, 35.866688, 38.664303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.943600, 35.990028, 38.641495>,  <41.284622, 36.195599, 38.603481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943600, 35.990028, 38.641495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078782, 0.053392, 0.995461,
		-0.516668, 0.856171, -0.005031,
		-0.852554, -0.513926, 0.095037,
		40.687832, 35.835850, 38.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028355, 36.335918, 39.209068>,  <41.284622, 36.195599, 38.603481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028355, 36.335918, 39.209068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759171, 36.046875, 39.145866>,  <40.597660, 35.873451, 39.107944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759171, 36.046875, 39.145866>,  <41.028355, 36.335918, 39.209068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759171, 36.046875, 39.145866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065262, -0.154776, 0.985792,
		-0.736795, 0.673710, 0.056999,
		-0.672960, -0.722606, -0.158006,
		40.557281, 35.830093, 39.098465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413147, 36.460754, 39.637146>,  <41.028355, 36.335918, 39.209068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413147, 36.460754, 39.637146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429886, 36.071487, 39.546642>,  <40.439930, 35.837929, 39.492340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.429886, 36.071487, 39.546642>,  <40.413147, 36.460754, 39.637146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429886, 36.071487, 39.546642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179397, -0.230092, 0.956490,
		-0.982886, 0.000565, -0.184212,
		0.041845, -0.973169, -0.226256,
		40.442440, 35.779537, 39.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074638, 36.207111, 40.053993>,  <40.413147, 36.460754, 39.637146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074638, 36.207111, 40.053993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233337, 35.854141, 39.952866>,  <40.328556, 35.642361, 39.892189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.233337, 35.854141, 39.952866>,  <40.074638, 36.207111, 40.053993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233337, 35.854141, 39.952866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175276, -0.343186, 0.922768,
		-0.901039, -0.321792, -0.290826,
		0.396747, -0.882425, -0.252822,
		40.352360, 35.589413, 39.877018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583958, 35.693939, 40.265163>,  <40.074638, 36.207111, 40.053993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583958, 35.693939, 40.265163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924671, 35.487080, 40.231621>,  <40.129097, 35.362965, 40.211494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924671, 35.487080, 40.231621>,  <39.583958, 35.693939, 40.265163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924671, 35.487080, 40.231621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183085, -0.443795, 0.877226,
		-0.490874, -0.731847, -0.472697,
		0.851777, -0.517151, -0.083857,
		40.180206, 35.331936, 40.206463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420773, 34.949543, 40.445362>,  <39.583958, 35.693939, 40.265163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420773, 34.949543, 40.445362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811768, 35.013798, 40.500084>,  <40.046364, 35.052349, 40.532917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.811768, 35.013798, 40.500084>,  <39.420773, 34.949543, 40.445362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811768, 35.013798, 40.500084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009392, -0.614602, 0.788781,
		0.210787, -0.772308, -0.599257,
		0.977487, 0.160636, 0.136804,
		40.105015, 35.061989, 40.541126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634140, 34.324921, 40.696796>,  <39.420773, 34.949543, 40.445362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634140, 34.324921, 40.696796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928810, 34.573177, 40.804211>,  <40.105614, 34.722134, 40.868660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.928810, 34.573177, 40.804211>,  <39.634140, 34.324921, 40.696796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928810, 34.573177, 40.804211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019721, -0.416642, 0.908857,
		0.675960, -0.664236, -0.319169,
		0.736675, 0.620645, 0.268534,
		40.149811, 34.759369, 40.884769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030521, 33.942265, 40.949116>,  <39.634140, 34.324921, 40.696796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030521, 33.942265, 40.949116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129246, 34.296078, 41.107445>,  <40.188480, 34.508366, 41.202442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129246, 34.296078, 41.107445>,  <40.030521, 33.942265, 40.949116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129246, 34.296078, 41.107445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050264, -0.419599, 0.906317,
		0.967759, -0.203793, -0.148022,
		0.246811, 0.884537, 0.395827,
		40.203289, 34.561440, 41.226192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527370, 33.785309, 41.518326>,  <40.030521, 33.942265, 40.949116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527370, 33.785309, 41.518326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431812, 34.165108, 41.599693>,  <40.374477, 34.392986, 41.648514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431812, 34.165108, 41.599693>,  <40.527370, 33.785309, 41.518326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431812, 34.165108, 41.599693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017694, -0.205189, 0.978563,
		0.970885, 0.237370, 0.032218,
		-0.238893, 0.949502, 0.203414,
		40.360146, 34.449959, 41.660717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122208, 34.173965, 41.850086>,  <40.527370, 33.785309, 41.518326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122208, 34.173965, 41.850086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778103, 34.341866, 41.965847>,  <40.571640, 34.442608, 42.035301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778103, 34.341866, 41.965847>,  <41.122208, 34.173965, 41.850086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778103, 34.341866, 41.965847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278518, -0.088538, 0.956341,
		0.427051, 0.903309, -0.040743,
		-0.860265, 0.419754, 0.289398,
		40.520023, 34.467793, 42.052666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214314, 34.427483, 42.552933>,  <41.122208, 34.173965, 41.850086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214314, 34.427483, 42.552933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.814758, 34.430214, 42.534309>,  <40.575024, 34.431854, 42.523136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.814758, 34.430214, 42.534309>,  <41.214314, 34.427483, 42.552933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814758, 34.430214, 42.534309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046724, -0.261807, 0.963988,
		-0.005608, 0.965096, 0.261836,
		-0.998892, 0.006828, -0.046561,
		40.515091, 34.432262, 42.520340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866001, 34.791866, 43.150616>,  <41.214314, 34.427483, 42.552933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866001, 34.791866, 43.150616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.591675, 34.537815, 43.008476>,  <40.427078, 34.385384, 42.923195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.591675, 34.537815, 43.008476>,  <40.866001, 34.791866, 43.150616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591675, 34.537815, 43.008476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178476, -0.326577, 0.928167,
		-0.705552, 0.699972, 0.110616,
		-0.685815, -0.635128, -0.355345,
		40.385929, 34.347279, 42.901875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369968, 34.977253, 43.589535>,  <40.866001, 34.791866, 43.150616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369968, 34.977253, 43.589535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264599, 34.623539, 43.435314>,  <40.201378, 34.411312, 43.342781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264599, 34.623539, 43.435314>,  <40.369968, 34.977253, 43.589535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264599, 34.623539, 43.435314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214859, -0.335844, 0.917085,
		-0.940448, 0.324424, -0.101526,
		-0.263428, -0.884284, -0.385549,
		40.185570, 34.358253, 43.319649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611443, 34.807007, 43.736473>,  <40.369968, 34.977253, 43.589535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611443, 34.807007, 43.736473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774170, 34.449936, 43.658882>,  <39.871807, 34.235695, 43.612328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774170, 34.449936, 43.658882>,  <39.611443, 34.807007, 43.736473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774170, 34.449936, 43.658882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252751, -0.314043, 0.915147,
		-0.877849, -0.323268, -0.353383,
		0.406815, -0.892678, -0.193976,
		39.896214, 34.182133, 43.600689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.143085, 34.306053, 43.976551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454659, 34.056282, 43.953384>,  <39.641602, 33.906422, 43.939484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454659, 34.056282, 43.953384>,  <39.143085, 34.306053, 43.976551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454659, 34.056282, 43.953384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238783, -0.380728, 0.893324,
		-0.579867, -0.682010, -0.445664,
		0.778933, -0.624427, -0.057919,
		39.688339, 33.868954, 43.936008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903393, 33.539490, 43.966301>,  <39.143085, 34.306053, 43.976551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903393, 33.539490, 43.966301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263332, 33.590012, 44.133308>,  <39.479294, 33.620327, 44.233513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263332, 33.590012, 44.133308>,  <38.903393, 33.539490, 43.966301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263332, 33.590012, 44.133308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301268, -0.512247, 0.804264,
		0.315460, -0.849499, -0.422890,
		0.899846, 0.126310, 0.417520,
		39.533287, 33.627903, 44.258564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884182, 33.015572, 44.423798>,  <38.903393, 33.539490, 43.966301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884182, 33.015572, 44.423798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221046, 33.207039, 44.523098>,  <39.423164, 33.321918, 44.582680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.221046, 33.207039, 44.523098>,  <38.884182, 33.015572, 44.423798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221046, 33.207039, 44.523098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034439, -0.507205, 0.861137,
		0.538119, -0.716670, -0.443635,
		0.842165, 0.478672, 0.248255,
		39.473698, 33.350639, 44.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351418, 32.452477, 44.526054>,  <38.884182, 33.015572, 44.423798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351418, 32.452477, 44.526054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420807, 32.800182, 44.711216>,  <39.462440, 33.008808, 44.822315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.420807, 32.800182, 44.711216>,  <39.351418, 32.452477, 44.526054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420807, 32.800182, 44.711216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150791, -0.441046, 0.884726,
		0.973226, -0.223277, 0.054569,
		0.173471, 0.869268, 0.462906,
		39.472847, 33.060963, 44.850086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727528, 32.223133, 45.137386>,  <39.351418, 32.452477, 44.526054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727528, 32.223133, 45.137386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585274, 32.587543, 45.220863>,  <39.499924, 32.806190, 45.270950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.585274, 32.587543, 45.220863>,  <39.727528, 32.223133, 45.137386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585274, 32.587543, 45.220863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147449, -0.275187, 0.950016,
		0.922922, 0.307083, 0.232195,
		-0.355631, 0.911028, 0.208697,
		39.478584, 32.860851, 45.283474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147789, 32.485462, 45.680828>,  <39.727528, 32.223133, 45.137386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147789, 32.485462, 45.680828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800388, 32.683674, 45.676025>,  <39.591946, 32.802601, 45.673141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.800388, 32.683674, 45.676025>,  <40.147789, 32.485462, 45.680828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800388, 32.683674, 45.676025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145417, -0.231553, 0.961893,
		0.473869, 0.837156, 0.273164,
		-0.868506, 0.495533, -0.012011,
		39.539837, 32.832333, 45.672421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179134, 33.042904, 46.194302>,  <40.147789, 32.485462, 45.680828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179134, 33.042904, 46.194302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785637, 32.983280, 46.154228>,  <39.549538, 32.947506, 46.130184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785637, 32.983280, 46.154228>,  <40.179134, 33.042904, 46.194302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785637, 32.983280, 46.154228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090562, -0.070028, 0.993426,
		-0.155098, 0.986345, 0.055390,
		-0.983739, -0.149062, -0.100187,
		39.490517, 32.938560, 46.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976219, 33.274452, 46.880699>,  <40.179134, 33.042904, 46.194302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976219, 33.274452, 46.880699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649830, 33.119278, 46.709259>,  <39.453999, 33.026173, 46.606396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649830, 33.119278, 46.709259>,  <39.976219, 33.274452, 46.880699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649830, 33.119278, 46.709259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371328, -0.216509, 0.902906,
		-0.443065, 0.895896, 0.032613,
		-0.815971, -0.387936, -0.428599,
		39.405037, 33.002895, 46.580681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447327, 33.672382, 47.095955>,  <39.976219, 33.274452, 46.880699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447327, 33.672382, 47.095955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327595, 33.296101, 47.032108>,  <39.255756, 33.070332, 46.993801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.327595, 33.296101, 47.032108>,  <39.447327, 33.672382, 47.095955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327595, 33.296101, 47.032108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205817, -0.099689, 0.973500,
		-0.931687, 0.324249, -0.163773,
		-0.299330, -0.940704, -0.159615,
		39.237797, 33.013889, 46.984222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742882, 33.613564, 47.475552>,  <39.447327, 33.672382, 47.095955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742882, 33.613564, 47.475552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896416, 33.251278, 47.403595>,  <38.988537, 33.033909, 47.360420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896416, 33.251278, 47.403595>,  <38.742882, 33.613564, 47.475552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896416, 33.251278, 47.403595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310815, -0.310172, 0.898436,
		-0.869522, -0.288933, -0.400562,
		0.383831, -0.905710, -0.179896,
		39.011566, 32.979565, 47.349625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283485, 33.240772, 47.765636>,  <38.742882, 33.613564, 47.475552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283485, 33.240772, 47.765636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606552, 33.008343, 47.725563>,  <38.800392, 32.868885, 47.701519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606552, 33.008343, 47.725563>,  <38.283485, 33.240772, 47.765636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606552, 33.008343, 47.725563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244165, -0.484233, 0.840180,
		-0.536716, -0.654122, -0.532974,
		0.807663, -0.581071, -0.100182,
		38.848850, 32.834023, 47.695507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146988, 32.581192, 47.984909>,  <38.283485, 33.240772, 47.765636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146988, 32.581192, 47.984909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546036, 32.568878, 48.009563>,  <38.785465, 32.561489, 48.024357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.546036, 32.568878, 48.009563>,  <38.146988, 32.581192, 47.984909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546036, 32.568878, 48.009563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068885, -0.430237, 0.900084,
		-0.001194, -0.902191, -0.431335,
		0.997624, -0.030787, 0.061634,
		38.845322, 32.559643, 48.028053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269035, 31.916185, 48.070599>,  <38.146988, 32.581192, 47.984909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269035, 31.916185, 48.070599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597771, 32.105904, 48.196850>,  <38.795013, 32.219734, 48.272602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597771, 32.105904, 48.196850>,  <38.269035, 31.916185, 48.070599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597771, 32.105904, 48.196850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000254, -0.553706, 0.832712,
		0.569720, -0.684436, -0.454936,
		0.821839, 0.474297, 0.315631,
		38.844322, 32.248192, 48.291538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689716, 31.352697, 48.403549>,  <38.269035, 31.916185, 48.070599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689716, 31.352697, 48.403549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842140, 31.690474, 48.554131>,  <38.933594, 31.893139, 48.644478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842140, 31.690474, 48.554131>,  <38.689716, 31.352697, 48.403549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842140, 31.690474, 48.554131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133478, -0.453156, 0.881381,
		0.914865, -0.285611, -0.285393,
		0.381060, 0.844438, 0.376454,
		38.956459, 31.943806, 48.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175480, 31.074411, 48.777596>,  <38.689716, 31.352697, 48.403549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175480, 31.074411, 48.777596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165379, 31.450500, 48.913445>,  <39.159317, 31.676155, 48.994953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165379, 31.450500, 48.913445>,  <39.175480, 31.074411, 48.777596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165379, 31.450500, 48.913445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437972, -0.294982, 0.849215,
		0.898634, 0.170188, -0.404343,
		-0.025253, 0.940224, 0.339618,
		39.157803, 31.732567, 49.015331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819195, 31.235809, 49.024693>,  <39.175480, 31.074411, 48.777596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819195, 31.235809, 49.024693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576031, 31.495518, 49.207512>,  <39.430134, 31.651342, 49.317204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.576031, 31.495518, 49.207512>,  <39.819195, 31.235809, 49.024693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576031, 31.495518, 49.207512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358868, -0.288806, 0.887584,
		0.708281, 0.703590, -0.057435,
		-0.607907, 0.649271, 0.457052,
		39.393658, 31.690298, 49.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313622, 31.570223, 49.488880>,  <39.819195, 31.235809, 49.024693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313622, 31.570223, 49.488880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944016, 31.642010, 49.623928>,  <39.722252, 31.685081, 49.704956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944016, 31.642010, 49.623928>,  <40.313622, 31.570223, 49.488880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944016, 31.642010, 49.623928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301172, -0.202394, 0.931843,
		0.235569, 0.962719, 0.132964,
		-0.924014, 0.179469, 0.337622,
		39.666813, 31.695850, 49.725216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342144, 32.000973, 50.194973>,  <40.313622, 31.570223, 49.488880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342144, 32.000973, 50.194973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.996742, 31.800430, 50.173058>,  <39.789501, 31.680105, 50.159908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.996742, 31.800430, 50.173058>,  <40.342144, 32.000973, 50.194973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996742, 31.800430, 50.173058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131354, -0.328458, 0.935340,
		-0.486933, 0.800475, 0.349480,
		-0.863506, -0.501354, -0.054792,
		39.737690, 31.650024, 50.156620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033470, 32.159840, 50.832432>,  <40.342144, 32.000973, 50.194973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033470, 32.159840, 50.832432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845352, 31.832726, 50.699738>,  <39.732483, 31.636456, 50.620121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845352, 31.832726, 50.699738>,  <40.033470, 32.159840, 50.832432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845352, 31.832726, 50.699738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125897, -0.434222, 0.891965,
		-0.873485, 0.377718, 0.307168,
		-0.470291, -0.817790, -0.331733,
		39.704266, 31.587389, 50.600216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783154, 31.892151, 51.418510>,  <40.033470, 32.159840, 50.832432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783154, 31.892151, 51.418510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765762, 31.579008, 51.170238>,  <39.755325, 31.391123, 51.021275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765762, 31.579008, 51.170238>,  <39.783154, 31.892151, 51.418510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765762, 31.579008, 51.170238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127084, -0.620554, 0.773798,
		-0.990938, -0.045232, 0.126471,
		-0.043482, -0.782858, -0.620679,
		39.752716, 31.344151, 50.984035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421993, 31.366844, 51.838982>,  <39.783154, 31.892151, 51.418510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421993, 31.366844, 51.838982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 31.186501, 51.539234>,  <39.732357, 31.078295, 51.359386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615971, 31.186501, 51.539234>,  <39.421993, 31.366844, 51.838982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615971, 31.186501, 51.539234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257748, -0.745126, 0.615104,
		-0.835702, -0.491438, -0.245134,
		0.484941, -0.450861, -0.749371,
		39.761452, 31.051243, 51.314423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114944, 30.657227, 51.826488>,  <39.421993, 31.366844, 51.838982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114944, 30.657227, 51.826488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483128, 30.658302, 51.670151>,  <39.704037, 30.658947, 51.576347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483128, 30.658302, 51.670151>,  <39.114944, 30.657227, 51.826488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483128, 30.658302, 51.670151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250371, -0.771929, 0.584328,
		-0.300133, -0.635703, -0.711198,
		0.920454, 0.002687, -0.390843,
		39.759262, 30.659109, 51.552898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049290, 30.081425, 51.841053>,  <39.114944, 30.657227, 51.826488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049290, 30.081425, 51.841053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437332, 30.170681, 51.802879>,  <39.670158, 30.224236, 51.779976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.437332, 30.170681, 51.802879>,  <39.049290, 30.081425, 51.841053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437332, 30.170681, 51.802879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217260, -0.623236, 0.751249,
		0.108159, -0.749523, -0.653083,
		0.970103, 0.223143, -0.095433,
		39.728363, 30.237623, 51.774250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118641, 29.418482, 52.172428>,  <39.049290, 30.081425, 51.841053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118641, 29.418482, 52.172428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817410, 29.155367, 52.177876>,  <38.636669, 28.997498, 52.181145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817410, 29.155367, 52.177876>,  <39.118641, 29.418482, 52.172428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817410, 29.155367, 52.177876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508308, 0.568552, -0.646817,
		0.417725, -0.494028, -0.762524,
		-0.753080, -0.657788, 0.013620,
		38.591484, 28.958031, 52.181961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974140, 29.123547, 51.577591>,  <39.118641, 29.418482, 52.172428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974140, 29.123547, 51.577591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645374, 29.161953, 51.802177>,  <38.448116, 29.184996, 51.936928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645374, 29.161953, 51.802177>,  <38.974140, 29.123547, 51.577591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645374, 29.161953, 51.802177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486301, 0.394969, -0.779430,
		-0.296596, -0.913664, -0.277938,
		-0.821914, 0.096014, 0.561462,
		38.398800, 29.190758, 51.970615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597736, 28.634565, 51.269238>,  <38.974140, 29.123547, 51.577591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597736, 28.634565, 51.269238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357056, 28.903397, 51.441868>,  <38.212646, 29.064695, 51.545448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.357056, 28.903397, 51.441868>,  <38.597736, 28.634565, 51.269238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357056, 28.903397, 51.441868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434989, 0.177442, -0.882779,
		-0.669878, -0.718904, 0.185579,
		-0.601704, 0.672080, 0.431580,
		38.176544, 29.105021, 51.571342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942329, 28.574255, 51.006889>,  <38.597736, 28.634565, 51.269238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942329, 28.574255, 51.006889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900299, 28.938440, 51.166897>,  <37.875080, 29.156952, 51.262901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900299, 28.938440, 51.166897>,  <37.942329, 28.574255, 51.006889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900299, 28.938440, 51.166897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654927, 0.239344, -0.716788,
		-0.748352, -0.337298, 0.571139,
		-0.105072, 0.910464, 0.400019,
		37.868778, 29.211580, 51.286903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288940, 28.666578, 51.125984>,  <37.942329, 28.574255, 51.006889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288940, 28.666578, 51.125984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459774, 29.025080, 51.078106>,  <37.562275, 29.240181, 51.049377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.459774, 29.025080, 51.078106>,  <37.288940, 28.666578, 51.125984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459774, 29.025080, 51.078106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708124, 0.249208, -0.660648,
		-0.562279, 0.366913, 0.741092,
		0.427086, 0.896254, -0.119696,
		37.587898, 29.293957, 51.042198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699406, 29.082212, 50.964264>,  <37.288940, 28.666578, 51.125984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699406, 29.082212, 50.964264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026119, 29.278631, 50.843113>,  <37.222149, 29.396482, 50.770424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026119, 29.278631, 50.843113>,  <36.699406, 29.082212, 50.964264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026119, 29.278631, 50.843113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528318, 0.425660, -0.734638,
		-0.231819, 0.760057, 0.607102,
		0.816786, 0.491046, -0.302876,
		37.271156, 29.425945, 50.752251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493248, 29.691452, 50.660927>,  <36.699406, 29.082212, 50.964264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493248, 29.691452, 50.660927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851601, 29.651333, 50.487801>,  <37.066612, 29.627262, 50.383926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851601, 29.651333, 50.487801>,  <36.493248, 29.691452, 50.660927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851601, 29.651333, 50.487801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362503, 0.398210, -0.842627,
		0.256863, 0.911795, 0.320393,
		0.895886, -0.100297, -0.432814,
		37.120365, 29.621244, 50.357956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576054, 30.388439, 50.292038>,  <36.493248, 29.691452, 50.660927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576054, 30.388439, 50.292038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835804, 30.128046, 50.134796>,  <36.991653, 29.971809, 50.040451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835804, 30.128046, 50.134796>,  <36.576054, 30.388439, 50.292038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835804, 30.128046, 50.134796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063576, 0.468638, -0.881100,
		0.757804, 0.597158, 0.262935,
		0.649377, -0.650985, -0.393101,
		37.030617, 29.932751, 50.016865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808228, 30.796850, 49.824455>,  <36.576054, 30.388439, 50.292038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808228, 30.796850, 49.824455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951485, 30.450153, 49.685608>,  <37.037441, 30.242136, 49.602299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951485, 30.450153, 49.685608>,  <36.808228, 30.796850, 49.824455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951485, 30.450153, 49.685608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030101, 0.382307, -0.923545,
		0.933181, 0.320314, 0.163011,
		0.358145, -0.866741, -0.347120,
		37.058929, 30.190130, 49.581470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409393, 30.924885, 49.488338>,  <36.808228, 30.796850, 49.824455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409393, 30.924885, 49.488338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255569, 30.587084, 49.339245>,  <37.163277, 30.384403, 49.249790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.255569, 30.587084, 49.339245>,  <37.409393, 30.924885, 49.488338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255569, 30.587084, 49.339245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133710, 0.348565, -0.927698,
		0.913365, -0.406594, -0.021126,
		-0.384560, -0.844502, -0.372733,
		37.140202, 30.333733, 49.227425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900913, 30.800097, 49.020779>,  <37.409393, 30.924885, 49.488338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900913, 30.800097, 49.020779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569508, 30.596325, 48.927784>,  <37.370663, 30.474062, 48.871986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.569508, 30.596325, 48.927784>,  <37.900913, 30.800097, 49.020779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569508, 30.596325, 48.927784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086059, 0.294400, -0.951799,
		0.553316, -0.808586, -0.200074,
		-0.828514, -0.509428, -0.232482,
		37.320953, 30.443497, 48.858040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169918, 30.404984, 48.387741>,  <37.900913, 30.800097, 49.020779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169918, 30.404984, 48.387741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770229, 30.409922, 48.402771>,  <37.530418, 30.412884, 48.411789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.770229, 30.409922, 48.402771>,  <38.169918, 30.404984, 48.387741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770229, 30.409922, 48.402771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029755, 0.391336, -0.919767,
		-0.026060, -0.920165, -0.390662,
		-0.999218, 0.012345, 0.037578,
		37.470463, 30.413626, 48.414043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026806, 30.319420, 47.788548>,  <38.169918, 30.404984, 48.387741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026806, 30.319420, 47.788548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678730, 30.453842, 47.932682>,  <37.469887, 30.534496, 48.019161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678730, 30.453842, 47.932682>,  <38.026806, 30.319420, 47.788548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678730, 30.453842, 47.932682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110585, 0.579456, -0.807466,
		-0.480155, -0.742493, -0.467071,
		-0.870185, 0.336058, 0.360337,
		37.417675, 30.554659, 48.040783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666672, 30.354042, 47.191578>,  <38.026806, 30.319420, 47.788548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666672, 30.354042, 47.191578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471882, 30.601023, 47.438675>,  <37.355007, 30.749212, 47.586933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471882, 30.601023, 47.438675>,  <37.666672, 30.354042, 47.191578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471882, 30.601023, 47.438675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251770, 0.578015, -0.776216,
		-0.836343, -0.533526, -0.126021,
		-0.486973, 0.617454, 0.617744,
		37.325790, 30.786259, 47.623997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976151, 30.342838, 47.098587>,  <37.666672, 30.354042, 47.191578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976151, 30.342838, 47.098587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034008, 30.693640, 47.281868>,  <37.068722, 30.904119, 47.391834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.034008, 30.693640, 47.281868>,  <36.976151, 30.342838, 47.098587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034008, 30.693640, 47.281868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341234, 0.478871, -0.808852,
		-0.928784, -0.039361, 0.368526,
		0.144639, 0.877003, 0.458199,
		37.077400, 30.956741, 47.419327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418713, 30.638084, 46.927204>,  <36.976151, 30.342838, 47.098587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418713, 30.638084, 46.927204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678989, 30.928915, 47.014797>,  <36.835155, 31.103415, 47.067352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.678989, 30.928915, 47.014797>,  <36.418713, 30.638084, 46.927204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678989, 30.928915, 47.014797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315917, 0.521459, -0.792639,
		-0.690504, 0.446583, 0.569007,
		0.650693, 0.727079, 0.218987,
		36.874199, 31.147039, 47.080494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083878, 31.288116, 46.837914>,  <36.418713, 30.638084, 46.927204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083878, 31.288116, 46.837914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465778, 31.407074, 46.836941>,  <36.694920, 31.478449, 46.836357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465778, 31.407074, 46.836941>,  <36.083878, 31.288116, 46.837914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465778, 31.407074, 46.836941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193593, 0.615270, -0.764176,
		-0.225768, 0.730068, 0.645003,
		0.954752, 0.297395, -0.002428,
		36.752205, 31.496292, 46.836212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037037, 31.983044, 46.712685>,  <36.083878, 31.288116, 46.837914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037037, 31.983044, 46.712685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415222, 31.900539, 46.611843>,  <36.642132, 31.851036, 46.551338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415222, 31.900539, 46.611843>,  <36.037037, 31.983044, 46.712685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415222, 31.900539, 46.611843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105503, 0.538337, -0.836100,
		0.308176, 0.817098, 0.487215,
		0.945461, -0.206263, -0.252108,
		36.698860, 31.838661, 46.536209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308479, 32.663303, 46.551167>,  <36.037037, 31.983044, 46.712685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308479, 32.663303, 46.551167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569218, 32.407749, 46.387745>,  <36.725662, 32.254417, 46.289692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.569218, 32.407749, 46.387745>,  <36.308479, 32.663303, 46.551167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569218, 32.407749, 46.387745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040696, 0.567437, -0.822411,
		0.757259, 0.519458, 0.395881,
		0.651845, -0.638889, -0.408557,
		36.764771, 32.216084, 46.265179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852371, 33.060795, 46.325134>,  <36.308479, 32.663303, 46.551167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852371, 33.060795, 46.325134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883583, 32.720634, 46.117008>,  <36.902309, 32.516537, 45.992134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883583, 32.720634, 46.117008>,  <36.852371, 33.060795, 46.325134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883583, 32.720634, 46.117008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137991, 0.526096, -0.839155,
		0.987355, -0.006321, 0.158398,
		0.078028, -0.850402, -0.520315,
		36.906990, 32.465515, 45.960915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479046, 33.050903, 45.867916>,  <36.852371, 33.060795, 46.325134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479046, 33.050903, 45.867916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211033, 32.803192, 45.704185>,  <37.050224, 32.654564, 45.605946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211033, 32.803192, 45.704185>,  <37.479046, 33.050903, 45.867916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211033, 32.803192, 45.704185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038297, 0.521837, -0.852185,
		0.741342, -0.586669, -0.325932,
		-0.670034, -0.619278, -0.409328,
		37.010021, 32.617409, 45.581387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.124748, 41.705807, 27.824709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908913, 41.641880, 27.494061>,  <44.779411, 41.603523, 27.295671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.908913, 41.641880, 27.494061>,  <45.124748, 41.705807, 27.824709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908913, 41.641880, 27.494061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641640, -0.557614, 0.526654,
		-0.545105, 0.814570, 0.198336,
		-0.539591, -0.159821, -0.826619,
		44.747036, 41.593933, 27.246075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433064, 41.606457, 28.095806>,  <45.124748, 41.705807, 27.824709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433064, 41.606457, 28.095806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428112, 41.464005, 27.722065>,  <44.425140, 41.378532, 27.497820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.428112, 41.464005, 27.722065>,  <44.433064, 41.606457, 28.095806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428112, 41.464005, 27.722065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545807, -0.780535, 0.304728,
		-0.837819, 0.513749, -0.184719,
		-0.012374, -0.356128, -0.934355,
		44.424400, 41.357166, 27.441759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788212, 41.539684, 28.014341>,  <44.433064, 41.606457, 28.095806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788212, 41.539684, 28.014341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937889, 41.286926, 27.742846>,  <44.027695, 41.135273, 27.579948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937889, 41.286926, 27.742846>,  <43.788212, 41.539684, 28.014341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937889, 41.286926, 27.742846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490970, -0.755911, 0.433068,
		-0.786721, 0.171191, -0.593097,
		0.374191, -0.631896, -0.678741,
		44.050148, 41.097359, 27.539223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215977, 41.142853, 27.742189>,  <43.788212, 41.539684, 28.014341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215977, 41.142853, 27.742189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540371, 40.912323, 27.701893>,  <43.735008, 40.774006, 27.677715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540371, 40.912323, 27.701893>,  <43.215977, 41.142853, 27.742189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540371, 40.912323, 27.701893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489779, -0.762959, 0.421912,
		-0.320020, -0.292824, -0.901022,
		0.810989, -0.576322, -0.100743,
		43.783669, 40.739426, 27.671669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952488, 40.460224, 27.923557>,  <43.215977, 41.142853, 27.742189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952488, 40.460224, 27.923557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340305, 40.379025, 27.868742>,  <43.572994, 40.330303, 27.835854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340305, 40.379025, 27.868742>,  <42.952488, 40.460224, 27.923557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340305, 40.379025, 27.868742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095328, -0.828158, 0.552329,
		-0.225610, -0.522443, -0.822285,
		0.969542, -0.202998, -0.137037,
		43.631168, 40.318127, 27.827631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990406, 39.767559, 27.668619>,  <42.952488, 40.460224, 27.923557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990406, 39.767559, 27.668619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.334541, 39.856728, 27.851978>,  <43.541023, 39.910229, 27.961994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.334541, 39.856728, 27.851978>,  <42.990406, 39.767559, 27.668619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334541, 39.856728, 27.851978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138590, -0.763121, 0.631221,
		0.490528, -0.606590, -0.625644,
		0.860334, 0.222924, 0.458399,
		43.592640, 39.923603, 27.989498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301926, 39.129543, 27.716057>,  <42.990406, 39.767559, 27.668619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301926, 39.129543, 27.716057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473167, 39.360638, 27.994034>,  <43.575912, 39.499294, 28.160820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473167, 39.360638, 27.994034>,  <43.301926, 39.129543, 27.716057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473167, 39.360638, 27.994034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047072, -0.782185, 0.621265,
		0.902502, -0.233255, -0.362054,
		0.428106, 0.577736, 0.694944,
		43.601601, 39.533958, 28.202517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772591, 38.646275, 28.180468>,  <43.301926, 39.129543, 27.716057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772591, 38.646275, 28.180468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737305, 39.000481, 28.362928>,  <43.716133, 39.213005, 28.472404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737305, 39.000481, 28.362928>,  <43.772591, 38.646275, 28.180468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737305, 39.000481, 28.362928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101106, -0.447611, 0.888494,
		0.990957, 0.124501, -0.050044,
		-0.088218, 0.885519, 0.456151,
		43.710838, 39.266136, 28.499773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334724, 38.691200, 28.637259>,  <43.772591, 38.646275, 28.180468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334724, 38.691200, 28.637259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038811, 38.927639, 28.765837>,  <43.861263, 39.069504, 28.842983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038811, 38.927639, 28.765837>,  <44.334724, 38.691200, 28.637259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038811, 38.927639, 28.765837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028196, -0.450085, 0.892541,
		0.672254, 0.669350, 0.316299,
		-0.739783, 0.591096, 0.321444,
		43.816875, 39.104969, 28.862270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519081, 38.892574, 29.338625>,  <44.334724, 38.691200, 28.637259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519081, 38.892574, 29.338625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125858, 38.965858, 29.336096>,  <43.889927, 39.009830, 29.334579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125858, 38.965858, 29.336096>,  <44.519081, 38.892574, 29.338625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125858, 38.965858, 29.336096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085290, -0.426576, 0.900421,
		0.162270, 0.885702, 0.434973,
		-0.983054, 0.183210, -0.006321,
		43.830944, 39.020821, 29.334200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422722, 39.121555, 29.988413>,  <44.519081, 38.892574, 29.338625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422722, 39.121555, 29.988413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038685, 39.059395, 29.895401>,  <43.808262, 39.022099, 29.839594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.038685, 39.059395, 29.895401>,  <44.422722, 39.121555, 29.988413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038685, 39.059395, 29.895401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193190, -0.232682, 0.953172,
		-0.202226, 0.960058, 0.193375,
		-0.960095, -0.155398, -0.232527,
		43.750656, 39.012775, 29.825644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971283, 39.493626, 30.536703>,  <44.422722, 39.121555, 29.988413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971283, 39.493626, 30.536703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756325, 39.195969, 30.377979>,  <43.627350, 39.017376, 30.282745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756325, 39.195969, 30.377979>,  <43.971283, 39.493626, 30.536703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756325, 39.195969, 30.377979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252783, -0.306756, 0.917606,
		-0.804552, 0.593427, -0.023256,
		-0.537398, -0.744141, -0.396810,
		43.595104, 38.972725, 30.258936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352283, 39.475143, 30.946379>,  <43.971283, 39.493626, 30.536703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352283, 39.475143, 30.946379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360672, 39.120735, 30.761110>,  <43.365707, 38.908089, 30.649950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360672, 39.120735, 30.761110>,  <43.352283, 39.475143, 30.946379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360672, 39.120735, 30.761110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128869, -0.461805, 0.877570,
		-0.991440, 0.041281, -0.123868,
		0.020976, -0.886020, -0.463171,
		43.366966, 38.854931, 30.622158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026642, 39.039284, 31.414549>,  <43.352283, 39.475143, 30.946379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026642, 39.039284, 31.414549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192955, 38.757233, 31.184793>,  <43.292744, 38.588001, 31.046940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192955, 38.757233, 31.184793>,  <43.026642, 39.039284, 31.414549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192955, 38.757233, 31.184793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127221, -0.670450, 0.730966,
		-0.900524, -0.230847, -0.368466,
		0.415779, -0.705129, -0.574387,
		43.317688, 38.545692, 31.012478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549824, 38.525795, 31.290421>,  <43.026642, 39.039284, 31.414549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549824, 38.525795, 31.290421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917938, 38.373325, 31.255159>,  <43.138809, 38.281841, 31.234003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.917938, 38.373325, 31.255159>,  <42.549824, 38.525795, 31.290421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917938, 38.373325, 31.255159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156847, -0.565877, 0.809433,
		-0.358423, -0.731086, -0.580557,
		0.920289, -0.381178, -0.088155,
		43.194023, 38.258972, 31.228712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498302, 37.870037, 31.517569>,  <42.549824, 38.525795, 31.290421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498302, 37.870037, 31.517569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898056, 37.882942, 31.511997>,  <43.137909, 37.890686, 31.508654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.898056, 37.882942, 31.511997>,  <42.498302, 37.870037, 31.517569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898056, 37.882942, 31.511997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032050, -0.674071, 0.737971,
		0.014421, -0.737962, -0.674688,
		0.999383, 0.032266, -0.013931,
		43.197872, 37.892620, 31.507818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703281, 37.237514, 31.411764>,  <42.498302, 37.870037, 31.517569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703281, 37.237514, 31.411764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028957, 37.397644, 31.579971>,  <43.224361, 37.493721, 31.680897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.028957, 37.397644, 31.579971>,  <42.703281, 37.237514, 31.411764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028957, 37.397644, 31.579971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169635, -0.856705, 0.487114,
		0.555264, -0.325269, -0.765430,
		0.814191, 0.400320, 0.420520,
		43.273216, 37.517738, 31.706127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326962, 36.846920, 31.308613>,  <42.703281, 37.237514, 31.411764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326962, 36.846920, 31.308613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404842, 37.069855, 31.631466>,  <43.451572, 37.203617, 31.825178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.404842, 37.069855, 31.631466>,  <43.326962, 36.846920, 31.308613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404842, 37.069855, 31.631466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354496, -0.807244, 0.471901,
		0.914561, 0.194243, -0.354750,
		0.194706, 0.557339, 0.807132,
		43.463253, 37.237057, 31.873606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104744, 36.745438, 31.478447>,  <43.326962, 36.846920, 31.308613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104744, 36.745438, 31.478447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898563, 36.846283, 31.806044>,  <43.774857, 36.906792, 32.002602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898563, 36.846283, 31.806044>,  <44.104744, 36.745438, 31.478447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898563, 36.846283, 31.806044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210427, -0.889236, 0.406176,
		0.830681, 0.381702, 0.405305,
		-0.515451, 0.252115, 0.818992,
		43.743927, 36.921917, 32.051743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587856, 36.627785, 32.042316>,  <44.104744, 36.745438, 31.478447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587856, 36.627785, 32.042316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230709, 36.634701, 32.222313>,  <44.016422, 36.638851, 32.330311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.230709, 36.634701, 32.222313>,  <44.587856, 36.627785, 32.042316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230709, 36.634701, 32.222313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283218, -0.755344, 0.590967,
		0.350118, 0.655100, 0.669523,
		-0.892864, 0.017287, 0.449996,
		43.962849, 36.639889, 32.357311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769028, 36.429070, 32.733479>,  <44.587856, 36.627785, 32.042316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769028, 36.429070, 32.733479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369995, 36.405758, 32.748661>,  <44.130577, 36.391769, 32.757771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369995, 36.405758, 32.748661>,  <44.769028, 36.429070, 32.733479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369995, 36.405758, 32.748661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069232, -0.779543, 0.622510,
		-0.006690, 0.623631, 0.781690,
		-0.997578, -0.058283, 0.037959,
		44.070721, 36.388271, 32.760048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170910, 36.374969, 33.351063>,  <44.769028, 36.429070, 32.733479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170910, 36.374969, 33.351063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.552757, 36.255836, 33.351933>,  <45.781864, 36.184357, 33.352455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.552757, 36.255836, 33.351933>,  <45.170910, 36.374969, 33.351063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.552757, 36.255836, 33.351933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159893, 0.506297, -0.847407,
		0.251280, 0.809297, 0.530940,
		0.954616, -0.297830, 0.002179,
		45.839142, 36.166489, 33.352585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589138, 36.896370, 33.256008>,  <45.170910, 36.374969, 33.351063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589138, 36.896370, 33.256008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811691, 36.585186, 33.139248>,  <45.945225, 36.398476, 33.069191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811691, 36.585186, 33.139248>,  <45.589138, 36.896370, 33.256008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811691, 36.585186, 33.139248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282999, 0.507713, -0.813719,
		0.781246, 0.370135, 0.502648,
		0.556387, -0.777964, -0.291901,
		45.978607, 36.351795, 33.051678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289272, 37.152367, 33.244541>,  <45.589138, 36.896370, 33.256008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289272, 37.152367, 33.244541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285969, 36.839092, 32.995850>,  <46.283985, 36.651127, 32.846634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.285969, 36.839092, 32.995850>,  <46.289272, 37.152367, 33.244541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285969, 36.839092, 32.995850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448278, 0.552874, -0.702408,
		0.893856, -0.284509, 0.346520,
		-0.008259, -0.783189, -0.621729,
		46.283489, 36.604137, 32.809330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858002, 37.220425, 32.745502>,  <46.289272, 37.152367, 33.244541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.858002, 37.220425, 32.745502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.601246, 36.960697, 32.582355>,  <46.447193, 36.804859, 32.484467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.601246, 36.960697, 32.582355>,  <46.858002, 37.220425, 32.745502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601246, 36.960697, 32.582355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206585, 0.365807, -0.907473,
		0.738442, -0.666760, -0.100669,
		-0.641893, -0.649319, -0.407870,
		46.408676, 36.765900, 32.459995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278141, 37.070091, 32.136105>,  <46.858002, 37.220425, 32.745502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278141, 37.070091, 32.136105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915508, 36.914196, 32.071350>,  <46.697929, 36.820660, 32.032497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.915508, 36.914196, 32.071350>,  <47.278141, 37.070091, 32.136105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915508, 36.914196, 32.071350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031981, 0.319040, -0.947202,
		0.420813, -0.863895, -0.276772,
		-0.906584, -0.389743, -0.161884,
		46.643532, 36.797272, 32.022785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296131, 36.552769, 31.576349>,  <47.278141, 37.070091, 32.136105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296131, 36.552769, 31.576349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.932129, 36.716156, 31.604755>,  <46.713726, 36.814186, 31.621799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.932129, 36.716156, 31.604755>,  <47.296131, 36.552769, 31.576349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932129, 36.716156, 31.604755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002741, 0.165360, -0.986229,
		-0.414584, -0.897670, -0.149359,
		-0.910007, 0.408465, 0.071016,
		46.659126, 36.838696, 31.626060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799961, 36.215500, 31.086397>,  <47.296131, 36.552769, 31.576349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799961, 36.215500, 31.086397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614613, 36.564541, 31.148165>,  <46.503403, 36.773968, 31.185226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614613, 36.564541, 31.148165>,  <46.799961, 36.215500, 31.086397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614613, 36.564541, 31.148165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035841, 0.155660, -0.987160,
		-0.885439, -0.462957, -0.040854,
		-0.463371, 0.872606, 0.154421,
		46.475601, 36.826324, 31.194490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186138, 36.249783, 30.654158>,  <46.799961, 36.215500, 31.086397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186138, 36.249783, 30.654158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244339, 36.635952, 30.740671>,  <46.279259, 36.867653, 30.792580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.244339, 36.635952, 30.740671>,  <46.186138, 36.249783, 30.654158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244339, 36.635952, 30.740671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046484, 0.225039, -0.973240,
		-0.988265, 0.131559, 0.077621,
		0.145507, 0.965427, 0.216282,
		46.287991, 36.925579, 30.805555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769451, 36.647362, 30.200914>,  <46.186138, 36.249783, 30.654158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769451, 36.647362, 30.200914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.019192, 36.930080, 30.333958>,  <46.169037, 37.099712, 30.413784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.019192, 36.930080, 30.333958>,  <45.769451, 36.647362, 30.200914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019192, 36.930080, 30.333958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126689, 0.511780, -0.849724,
		-0.770801, 0.488389, 0.409074,
		0.624352, 0.706793, 0.332607,
		46.206497, 37.142120, 30.433741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482929, 37.225647, 29.875488>,  <45.769451, 36.647362, 30.200914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482929, 37.225647, 29.875488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850155, 37.336121, 29.989246>,  <46.070492, 37.402405, 30.057501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850155, 37.336121, 29.989246>,  <45.482929, 37.225647, 29.875488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850155, 37.336121, 29.989246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000766, 0.718623, -0.695399,
		-0.396428, 0.638204, 0.659954,
		0.918065, 0.276181, 0.284394,
		46.125576, 37.418976, 30.074564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425823, 37.990105, 29.950855>,  <45.482929, 37.225647, 29.875488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425823, 37.990105, 29.950855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807747, 37.883610, 29.898016>,  <46.036903, 37.819714, 29.866312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807747, 37.883610, 29.898016>,  <45.425823, 37.990105, 29.950855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807747, 37.883610, 29.898016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116996, 0.745269, -0.656419,
		0.273215, 0.611301, 0.742741,
		0.954812, -0.266241, -0.132099,
		46.094189, 37.803738, 29.858387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903774, 38.608189, 30.151144>,  <45.425823, 37.990105, 29.950855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903774, 38.608189, 30.151144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121910, 38.371666, 29.913500>,  <46.252792, 38.229752, 29.770912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.121910, 38.371666, 29.913500>,  <45.903774, 38.608189, 30.151144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121910, 38.371666, 29.913500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113461, 0.754329, -0.646617,
		0.830502, 0.285216, 0.478453,
		0.545337, -0.591303, -0.594112,
		46.285511, 38.194275, 29.735266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648582, 38.897354, 30.124403>,  <45.903774, 38.608189, 30.151144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648582, 38.897354, 30.124403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583336, 38.689129, 29.789164>,  <46.544189, 38.564194, 29.588020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583336, 38.689129, 29.789164>,  <46.648582, 38.897354, 30.124403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583336, 38.689129, 29.789164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349064, 0.764081, -0.542527,
		0.922793, -0.381044, 0.057076,
		-0.163116, -0.520563, -0.838097,
		46.534401, 38.532959, 29.537735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144081, 39.130947, 29.656063>,  <46.648582, 38.897354, 30.124403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144081, 39.130947, 29.656063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.924530, 38.943119, 29.379444>,  <46.792801, 38.830421, 29.213472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.924530, 38.943119, 29.379444>,  <47.144081, 39.130947, 29.656063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.924530, 38.943119, 29.379444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373357, 0.602478, -0.705425,
		0.747889, -0.645386, -0.155368,
		-0.548877, -0.469572, -0.691546,
		46.759869, 38.802246, 29.171980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.560310, 39.090691, 29.127438>,  <47.144081, 39.130947, 29.656063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.560310, 39.090691, 29.127438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.208927, 39.024170, 28.948257>,  <46.998096, 38.984257, 28.840750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.208927, 39.024170, 28.948257>,  <47.560310, 39.090691, 29.127438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.208927, 39.024170, 28.948257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324063, 0.481566, -0.814295,
		0.351136, -0.860487, -0.369143,
		-0.878457, -0.166303, -0.447947,
		46.945389, 38.974277, 28.813873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762604, 38.918118, 28.423788>,  <47.560310, 39.090691, 29.127438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762604, 38.918118, 28.423788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.378887, 39.027107, 28.394066>,  <47.148659, 39.092499, 28.376232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.378887, 39.027107, 28.394066>,  <47.762604, 38.918118, 28.423788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378887, 39.027107, 28.394066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259083, 0.744276, -0.615572,
		-0.112422, -0.609764, -0.784570,
		-0.959290, 0.272472, -0.074306,
		47.091099, 39.108849, 28.371775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643711, 39.067669, 27.727179>,  <47.762604, 38.918118, 28.423788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643711, 39.067669, 27.727179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.322723, 39.251698, 27.879169>,  <47.130131, 39.362114, 27.970364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.322723, 39.251698, 27.879169>,  <47.643711, 39.067669, 27.727179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322723, 39.251698, 27.879169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154925, 0.775609, -0.611905,
		-0.576233, -0.432166, -0.693677,
		-0.802468, 0.460068, 0.379978,
		47.081982, 39.389717, 27.993162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196148, 39.256523, 27.154604>,  <47.643711, 39.067669, 27.727179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196148, 39.256523, 27.154604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.106251, 39.485966, 27.469683>,  <47.052311, 39.623631, 27.658730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.106251, 39.485966, 27.469683>,  <47.196148, 39.256523, 27.154604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.106251, 39.485966, 27.469683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084149, 0.816782, -0.570777,
		-0.970777, -0.061996, -0.231837,
		-0.224746, 0.573606, 0.787696,
		47.038826, 39.658047, 27.705992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726025, 39.691593, 27.028553>,  <47.196148, 39.256523, 27.154604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726025, 39.691593, 27.028553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879223, 39.885307, 27.343204>,  <46.971142, 40.001537, 27.531996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.879223, 39.885307, 27.343204>,  <46.726025, 39.691593, 27.028553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.879223, 39.885307, 27.343204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054435, 0.838246, -0.542568,
		-0.922144, 0.250622, 0.294683,
		0.382996, 0.484285, 0.786627,
		46.994122, 40.030594, 27.579193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332752, 40.246998, 26.967855>,  <46.726025, 39.691593, 27.028553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332752, 40.246998, 26.967855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630051, 40.319443, 27.225471>,  <46.808430, 40.362907, 27.380041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.630051, 40.319443, 27.225471>,  <46.332752, 40.246998, 26.967855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630051, 40.319443, 27.225471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082865, 0.930327, -0.357246,
		-0.663867, 0.318890, 0.676454,
		0.743246, 0.181109, 0.644038,
		46.853024, 40.373775, 27.418682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249245, 40.860935, 27.439344>,  <46.332752, 40.246998, 26.967855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249245, 40.860935, 27.439344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643711, 40.795216, 27.448210>,  <46.880390, 40.755783, 27.453529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643711, 40.795216, 27.448210>,  <46.249245, 40.860935, 27.439344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643711, 40.795216, 27.448210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143408, 0.778304, -0.611292,
		0.083185, 0.606011, 0.791095,
		0.986161, -0.164300, 0.022164,
		46.939560, 40.745926, 27.454859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.634480, 35.651722, 41.806374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514484, 35.318611, 41.620258>,  <40.442486, 35.118744, 41.508591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514484, 35.318611, 41.620258>,  <40.634480, 35.651722, 41.806374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514484, 35.318611, 41.620258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203190, 0.420777, -0.884116,
		0.932051, -0.359769, 0.042982,
		-0.299991, -0.832775, -0.465287,
		40.424488, 35.068779, 41.480671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004105, 35.680470, 41.197922>,  <40.634480, 35.651722, 41.806374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004105, 35.680470, 41.197922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758327, 35.376640, 41.112591>,  <40.610863, 35.194344, 41.061394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758327, 35.376640, 41.112591>,  <41.004105, 35.680470, 41.197922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758327, 35.376640, 41.112591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227960, 0.087938, -0.969691,
		0.755314, -0.644446, 0.119121,
		-0.614439, -0.759576, -0.213328,
		40.573997, 35.148766, 41.048592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334335, 35.186085, 40.765453>,  <41.004105, 35.680470, 41.197922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334335, 35.186085, 40.765453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944164, 35.146172, 40.686886>,  <40.710060, 35.122223, 40.639748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944164, 35.146172, 40.686886>,  <41.334335, 35.186085, 40.765453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944164, 35.146172, 40.686886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176171, 0.182059, -0.967377,
		0.132286, -0.978212, -0.160007,
		-0.975430, -0.099782, -0.196416,
		40.651535, 35.116238, 40.627960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257961, 34.650505, 40.289993>,  <41.334335, 35.186085, 40.765453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257961, 34.650505, 40.289993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924221, 34.867924, 40.253288>,  <40.723976, 34.998375, 40.231266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924221, 34.867924, 40.253288>,  <41.257961, 34.650505, 40.289993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924221, 34.867924, 40.253288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188766, 0.125319, -0.973993,
		-0.517909, -0.829972, -0.207162,
		-0.834349, 0.543545, -0.091767,
		40.673916, 35.030987, 40.225758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915806, 34.488350, 39.568661>,  <41.257961, 34.650505, 40.289993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915806, 34.488350, 39.568661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739807, 34.833454, 39.668304>,  <40.634209, 35.040516, 39.728088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739807, 34.833454, 39.668304>,  <40.915806, 34.488350, 39.568661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739807, 34.833454, 39.668304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287982, 0.127185, -0.949152,
		-0.850571, -0.489361, 0.192497,
		-0.439995, 0.862757, 0.249107,
		40.607807, 35.092281, 39.743038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360947, 34.508530, 39.213032>,  <40.915806, 34.488350, 39.568661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360947, 34.508530, 39.213032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392471, 34.900318, 39.287243>,  <40.411388, 35.135391, 39.331768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392471, 34.900318, 39.287243>,  <40.360947, 34.508530, 39.213032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392471, 34.900318, 39.287243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232667, 0.199037, -0.951972,
		-0.969357, 0.031864, 0.243578,
		0.078815, 0.979474, 0.185525,
		40.416115, 35.194160, 39.342899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920753, 34.757912, 38.760250>,  <40.360947, 34.508530, 39.213032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920753, 34.757912, 38.760250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124870, 35.087101, 38.860107>,  <40.247341, 35.284615, 38.920021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124870, 35.087101, 38.860107>,  <39.920753, 34.757912, 38.760250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124870, 35.087101, 38.860107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192115, 0.392031, -0.899668,
		-0.838266, 0.411137, 0.358157,
		0.510296, 0.822969, 0.249641,
		40.277958, 35.333992, 38.935001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508450, 35.274288, 38.587914>,  <39.920753, 34.757912, 38.760250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508450, 35.274288, 38.587914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863792, 35.454987, 38.620773>,  <40.077000, 35.563404, 38.640491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863792, 35.454987, 38.620773>,  <39.508450, 35.274288, 38.587914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863792, 35.454987, 38.620773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145726, 0.447069, -0.882549,
		-0.435416, 0.772046, 0.462987,
		0.888356, 0.451746, 0.082154,
		40.130299, 35.590511, 38.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419876, 36.066608, 38.469345>,  <39.508450, 35.274288, 38.587914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419876, 36.066608, 38.469345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787407, 35.935764, 38.381027>,  <40.007927, 35.857258, 38.328037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787407, 35.935764, 38.381027>,  <39.419876, 36.066608, 38.469345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787407, 35.935764, 38.381027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114145, 0.315283, -0.942108,
		0.377788, 0.890839, 0.252353,
		0.918829, -0.327112, -0.220795,
		40.063057, 35.837631, 38.314789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647911, 36.543324, 38.005287>,  <39.419876, 36.066608, 38.469345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647911, 36.543324, 38.005287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928631, 36.260735, 37.968685>,  <40.097065, 36.091183, 37.946724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928631, 36.260735, 37.968685>,  <39.647911, 36.543324, 38.005287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928631, 36.260735, 37.968685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036461, 0.163903, -0.985802,
		0.711437, 0.688503, 0.140787,
		0.701803, -0.706470, -0.091503,
		40.139172, 36.048794, 37.941235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176411, 36.847584, 37.703117>,  <39.647911, 36.543324, 38.005287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176411, 36.847584, 37.703117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211384, 36.454929, 37.635307>,  <40.232368, 36.219337, 37.594620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211384, 36.454929, 37.635307>,  <40.176411, 36.847584, 37.703117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211384, 36.454929, 37.635307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068074, 0.175671, -0.982093,
		0.993842, 0.074328, 0.082184,
		0.087435, -0.981639, -0.169530,
		40.237614, 36.160439, 37.584450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694107, 36.798321, 37.153812>,  <40.176411, 36.847584, 37.703117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694107, 36.798321, 37.153812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493462, 36.452312, 37.158199>,  <40.373074, 36.244705, 37.160831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493462, 36.452312, 37.158199>,  <40.694107, 36.798321, 37.153812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493462, 36.452312, 37.158199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050920, 0.016870, -0.998560,
		0.863594, -0.501446, -0.052510,
		-0.501609, -0.865025, 0.010965,
		40.342979, 36.192806, 37.161488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910240, 36.536362, 36.597401>,  <40.694107, 36.798321, 37.153812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910240, 36.536362, 36.597401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586361, 36.316982, 36.680920>,  <40.392033, 36.185356, 36.731030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586361, 36.316982, 36.680920>,  <40.910240, 36.536362, 36.597401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586361, 36.316982, 36.680920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226640, -0.035950, -0.973315,
		0.541316, -0.835414, -0.095191,
		-0.809698, -0.548445, 0.208798,
		40.343452, 36.152451, 36.743561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878639, 36.111843, 35.954819>,  <40.910240, 36.536362, 36.597401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878639, 36.111843, 35.954819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736546, 36.455425, 35.807304>,  <40.651287, 36.661575, 35.718796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736546, 36.455425, 35.807304>,  <40.878639, 36.111843, 35.954819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736546, 36.455425, 35.807304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409594, 0.497659, 0.764571,
		0.840261, 0.120551, -0.528610,
		-0.355237, 0.858955, -0.368786,
		40.629974, 36.713112, 35.696667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463184, 35.722897, 35.781883>,  <40.878639, 36.111843, 35.954819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463184, 35.722897, 35.781883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706177, 35.456707, 35.608398>,  <41.851971, 35.296993, 35.504307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706177, 35.456707, 35.608398>,  <41.463184, 35.722897, 35.781883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706177, 35.456707, 35.608398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404727, -0.729129, 0.551875,
		-0.683489, -0.159723, -0.712272,
		0.607486, -0.665477, -0.433708,
		41.888420, 35.257065, 35.478283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984650, 35.237579, 35.624077>,  <41.463184, 35.722897, 35.781883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984650, 35.237579, 35.624077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350201, 35.075279, 35.629570>,  <41.569530, 34.977898, 35.632866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350201, 35.075279, 35.629570>,  <40.984650, 35.237579, 35.624077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350201, 35.075279, 35.629570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345559, -0.759665, 0.550907,
		-0.213101, -0.508208, -0.834454,
		0.913880, -0.405752, 0.013730,
		41.624363, 34.953552, 35.633690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951611, 34.524059, 35.566246>,  <40.984650, 35.237579, 35.624077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951611, 34.524059, 35.566246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321323, 34.557251, 35.715279>,  <41.543152, 34.577164, 35.804699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321323, 34.557251, 35.715279>,  <40.951611, 34.524059, 35.566246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321323, 34.557251, 35.715279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118355, -0.865679, 0.486407,
		0.362894, -0.493674, -0.790312,
		0.924284, 0.082977, 0.372579,
		41.598610, 34.582146, 35.827053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102055, 33.869339, 35.674141>,  <40.951611, 34.524059, 35.566246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102055, 33.869339, 35.674141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393818, 34.047897, 35.881481>,  <41.568874, 34.155033, 36.005886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393818, 34.047897, 35.881481>,  <41.102055, 33.869339, 35.674141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393818, 34.047897, 35.881481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102008, -0.820248, 0.562839,
		0.676429, -0.357663, -0.643833,
		0.729409, 0.446397, 0.518355,
		41.612640, 34.181816, 36.036987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666233, 33.338661, 35.737732>,  <41.102055, 33.869339, 35.674141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666233, 33.338661, 35.737732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711552, 33.611786, 36.026436>,  <41.738743, 33.775661, 36.199657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711552, 33.611786, 36.026436>,  <41.666233, 33.338661, 35.737732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711552, 33.611786, 36.026436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038866, -0.728924, 0.683490,
		0.992801, -0.049386, -0.109123,
		0.113297, 0.682811, 0.721757,
		41.745541, 33.816628, 36.242962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156075, 33.022568, 36.234856>,  <41.666233, 33.338661, 35.737732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156075, 33.022568, 36.234856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998959, 33.311954, 36.461948>,  <41.904690, 33.485584, 36.598206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998959, 33.311954, 36.461948>,  <42.156075, 33.022568, 36.234856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998959, 33.311954, 36.461948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030628, -0.606714, 0.794330,
		0.919119, 0.329392, 0.216152,
		-0.392788, 0.723463, 0.567731,
		41.881123, 33.528992, 36.632267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613827, 33.042404, 36.778233>,  <42.156075, 33.022568, 36.234856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613827, 33.042404, 36.778233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266068, 33.209412, 36.883926>,  <42.057411, 33.309616, 36.947342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266068, 33.209412, 36.883926>,  <42.613827, 33.042404, 36.778233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266068, 33.209412, 36.883926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058765, -0.443604, 0.894294,
		0.490603, 0.793027, 0.361134,
		-0.869400, 0.417521, 0.264236,
		42.005249, 33.334667, 36.963196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739422, 33.289688, 37.423897>,  <42.613827, 33.042404, 36.778233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739422, 33.289688, 37.423897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348068, 33.219456, 37.380180>,  <42.113258, 33.177315, 37.353951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348068, 33.219456, 37.380180>,  <42.739422, 33.289688, 37.423897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348068, 33.219456, 37.380180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025917, -0.628366, 0.777486,
		-0.205188, 0.757844, 0.619331,
		-0.978379, -0.175582, -0.109292,
		42.054554, 33.166782, 37.347393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531116, 33.174110, 38.049168>,  <42.739422, 33.289688, 37.423897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531116, 33.174110, 38.049168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196678, 33.038097, 37.876976>,  <41.996014, 32.956490, 37.773659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196678, 33.038097, 37.876976>,  <42.531116, 33.174110, 38.049168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196678, 33.038097, 37.876976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102964, -0.673506, 0.731975,
		-0.538829, 0.656328, 0.528107,
		-0.836099, -0.340033, -0.430483,
		41.945847, 32.936089, 37.747829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094730, 33.192009, 38.623615>,  <42.531116, 33.174110, 38.049168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094730, 33.192009, 38.623615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921375, 32.940075, 38.365784>,  <41.817364, 32.788914, 38.211086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921375, 32.940075, 38.365784>,  <42.094730, 33.192009, 38.623615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921375, 32.940075, 38.365784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192981, -0.633788, 0.749047,
		-0.880303, 0.449018, 0.153129,
		-0.433387, -0.629837, -0.644578,
		41.791359, 32.751125, 38.172409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473316, 32.974594, 38.972660>,  <42.094730, 33.192009, 38.623615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473316, 32.974594, 38.972660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503311, 32.702045, 38.681427>,  <41.521309, 32.538517, 38.506687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503311, 32.702045, 38.681427>,  <41.473316, 32.974594, 38.972660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503311, 32.702045, 38.681427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271132, -0.716565, 0.642668,
		-0.959617, 0.149213, -0.238477,
		0.074990, -0.681373, -0.728085,
		41.525806, 32.497635, 38.463001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819023, 32.563560, 39.086769>,  <41.473316, 32.974594, 38.972660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819023, 32.563560, 39.086769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094765, 32.344753, 38.896793>,  <41.260208, 32.213470, 38.782810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094765, 32.344753, 38.896793>,  <40.819023, 32.563560, 39.086769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094765, 32.344753, 38.896793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072051, -0.704124, 0.706412,
		-0.720833, -0.452748, -0.524804,
		0.689354, -0.547018, -0.474935,
		41.301571, 32.180649, 38.754314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449100, 31.957527, 38.907055>,  <40.819023, 32.563560, 39.086769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449100, 31.957527, 38.907055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841423, 31.879684, 38.911793>,  <41.076817, 31.832979, 38.914635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841423, 31.879684, 38.911793>,  <40.449100, 31.957527, 38.907055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841423, 31.879684, 38.911793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160466, -0.771243, 0.615983,
		-0.110740, -0.606062, -0.787670,
		0.980810, -0.194608, 0.011845,
		41.135666, 31.821302, 38.915344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536182, 31.203093, 39.027153>,  <40.449100, 31.957527, 38.907055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536182, 31.203093, 39.027153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898960, 31.352844, 39.104393>,  <41.116627, 31.442696, 39.150738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898960, 31.352844, 39.104393>,  <40.536182, 31.203093, 39.027153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898960, 31.352844, 39.104393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053285, -0.556677, 0.829018,
		0.417859, -0.741588, -0.524826,
		0.906948, 0.374378, 0.193097,
		41.171043, 31.465157, 39.162323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259235, 30.471222, 38.795643>,  <40.536182, 31.203093, 39.027153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259235, 30.471222, 38.795643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091328, 30.108786, 38.774483>,  <39.990585, 29.891325, 38.761787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091328, 30.108786, 38.774483>,  <40.259235, 30.471222, 38.795643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091328, 30.108786, 38.774483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483163, 0.272414, -0.832072,
		0.768343, -0.323716, -0.552139,
		-0.419766, -0.906089, -0.052900,
		39.965397, 29.836958, 38.758614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284485, 30.220341, 38.078735>,  <40.259235, 30.471222, 38.795643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284485, 30.220341, 38.078735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986801, 30.024826, 38.260826>,  <39.808189, 29.907516, 38.370083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986801, 30.024826, 38.260826>,  <40.284485, 30.220341, 38.078735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986801, 30.024826, 38.260826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612874, 0.228708, -0.756358,
		0.265581, -0.841892, -0.469771,
		-0.744212, -0.488785, 0.455233,
		39.763538, 29.878189, 38.397396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066242, 29.687094, 37.646404>,  <40.284485, 30.220341, 38.078735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066242, 29.687094, 37.646404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775890, 29.803312, 37.895782>,  <39.601681, 29.873043, 38.045410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775890, 29.803312, 37.895782>,  <40.066242, 29.687094, 37.646404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775890, 29.803312, 37.895782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590557, 0.201420, -0.781456,
		-0.352624, -0.935421, 0.025379,
		-0.725878, 0.290548, 0.623445,
		39.558128, 29.890476, 38.082817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437214, 29.401527, 37.245678>,  <40.066242, 29.687094, 37.646404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437214, 29.401527, 37.245678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296970, 29.642559, 37.532444>,  <39.212826, 29.787178, 37.704506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296970, 29.642559, 37.532444>,  <39.437214, 29.401527, 37.245678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296970, 29.642559, 37.532444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769242, 0.251336, -0.587450,
		-0.534172, -0.757448, 0.375409,
		-0.350609, 0.602580, 0.716918,
		39.191788, 29.823334, 37.747520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723629, 29.242123, 37.240547>,  <39.437214, 29.401527, 37.245678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723629, 29.242123, 37.240547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781944, 29.608522, 37.390049>,  <38.816933, 29.828362, 37.479752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781944, 29.608522, 37.390049>,  <38.723629, 29.242123, 37.240547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781944, 29.608522, 37.390049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681816, 0.366770, -0.632934,
		-0.716850, -0.162562, 0.678012,
		0.145784, 0.915999, 0.373757,
		38.825680, 29.883322, 37.502174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047314, 29.591793, 37.264763>,  <38.723629, 29.242123, 37.240547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047314, 29.591793, 37.264763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304932, 29.897642, 37.274200>,  <38.459503, 30.081152, 37.279861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304932, 29.897642, 37.274200>,  <38.047314, 29.591793, 37.264763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304932, 29.897642, 37.274200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627410, 0.545615, -0.555572,
		-0.437677, 0.343010, 0.831134,
		0.644046, 0.764623, 0.023595,
		38.498146, 30.127029, 37.281281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663494, 30.104630, 37.482990>,  <38.047314, 29.591793, 37.264763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663494, 30.104630, 37.482990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975922, 30.279291, 37.304436>,  <38.163380, 30.384089, 37.197304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975922, 30.279291, 37.304436>,  <37.663494, 30.104630, 37.482990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975922, 30.279291, 37.304436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623336, 0.502643, -0.599001,
		-0.037181, 0.746113, 0.664780,
		0.781070, 0.436652, -0.446390,
		38.210243, 30.410288, 37.170517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508640, 30.781792, 37.416382>,  <37.663494, 30.104630, 37.482990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508640, 30.781792, 37.416382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813473, 30.793596, 37.157658>,  <37.996372, 30.800678, 37.002422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813473, 30.793596, 37.157658>,  <37.508640, 30.781792, 37.416382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813473, 30.793596, 37.157658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595895, 0.422712, -0.682806,
		0.253265, 0.905784, 0.339724,
		0.762080, 0.029509, -0.646811,
		38.042095, 30.802448, 36.963615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659039, 31.500748, 37.168388>,  <37.508640, 30.781792, 37.416382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659039, 31.500748, 37.168388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774807, 31.249653, 36.879341>,  <37.844269, 31.098995, 36.705914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774807, 31.249653, 36.879341>,  <37.659039, 31.500748, 37.168388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774807, 31.249653, 36.879341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496111, 0.547246, -0.674089,
		0.818603, 0.553593, -0.153045,
		0.289418, -0.627739, -0.722621,
		37.861633, 31.061331, 36.662556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491432, 31.885166, 36.675449>,  <37.659039, 31.500748, 37.168388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491432, 31.885166, 36.675449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614052, 31.565378, 36.468811>,  <37.687622, 31.373505, 36.344830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614052, 31.565378, 36.468811>,  <37.491432, 31.885166, 36.675449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614052, 31.565378, 36.468811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358116, 0.405982, -0.840792,
		0.881919, 0.442745, -0.161851,
		0.306548, -0.799472, -0.516597,
		37.706017, 31.325537, 36.313831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882984, 32.123199, 36.152805>,  <37.491432, 31.885166, 36.675449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882984, 32.123199, 36.152805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747147, 31.763855, 36.041363>,  <37.665646, 31.548248, 35.974495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747147, 31.763855, 36.041363>,  <37.882984, 32.123199, 36.152805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747147, 31.763855, 36.041363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525406, 0.426876, -0.736020,
		0.780143, -0.103565, -0.616969,
		-0.339595, -0.898361, -0.278611,
		37.645267, 31.494347, 35.957779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026199, 32.122700, 35.452728>,  <37.882984, 32.123199, 36.152805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026199, 32.122700, 35.452728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737312, 31.858591, 35.535133>,  <37.563980, 31.700127, 35.584576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737312, 31.858591, 35.535133>,  <38.026199, 32.122700, 35.452728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737312, 31.858591, 35.535133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550919, 0.369056, -0.748523,
		0.418201, -0.654091, -0.630296,
		-0.722217, -0.660275, 0.206012,
		37.520649, 31.660509, 35.596939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.489708, 28.687155, 42.106762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128017, 28.526838, 42.047791>,  <40.911003, 28.430649, 42.012405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.128017, 28.526838, 42.047791>,  <41.489708, 28.687155, 42.106762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128017, 28.526838, 42.047791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075826, 0.189071, -0.979032,
		0.420262, -0.896448, -0.140573,
		-0.904229, -0.400791, -0.147433,
		40.856750, 28.406601, 42.003559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485943, 28.189844, 41.519753>,  <41.489708, 28.687155, 42.106762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485943, 28.189844, 41.519753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107410, 28.317829, 41.537994>,  <40.880291, 28.394621, 41.548939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.107410, 28.317829, 41.537994>,  <41.485943, 28.189844, 41.519753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107410, 28.317829, 41.537994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022849, 0.074512, -0.996958,
		-0.322390, -0.944495, -0.063202,
		-0.946331, 0.319965, 0.045602,
		40.823509, 28.413818, 41.551674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171799, 27.927830, 40.888046>,  <41.485943, 28.189844, 41.519753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171799, 27.927830, 40.888046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917557, 28.207172, 41.019684>,  <40.765011, 28.374777, 41.098667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917557, 28.207172, 41.019684>,  <41.171799, 27.927830, 40.888046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917557, 28.207172, 41.019684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328477, 0.141137, -0.933907,
		-0.698647, -0.701698, 0.139686,
		-0.635606, 0.698355, 0.329097,
		40.726875, 28.416679, 41.118412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562195, 27.738882, 40.560661>,  <41.171799, 27.927830, 40.888046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562195, 27.738882, 40.560661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554100, 28.129135, 40.648052>,  <40.549244, 28.363287, 40.700485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554100, 28.129135, 40.648052>,  <40.562195, 27.738882, 40.560661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554100, 28.129135, 40.648052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412869, 0.190863, -0.890568,
		-0.910566, -0.108219, 0.398947,
		-0.020232, 0.975633, 0.218473,
		40.548031, 28.421825, 40.713593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950798, 28.057144, 40.284374>,  <40.562195, 27.738882, 40.560661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950798, 28.057144, 40.284374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180882, 28.383389, 40.309402>,  <40.318932, 28.579136, 40.324421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180882, 28.383389, 40.309402>,  <39.950798, 28.057144, 40.284374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180882, 28.383389, 40.309402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481194, 0.399231, -0.780427,
		-0.661505, 0.418799, 0.622108,
		0.575206, 0.815612, 0.062570,
		40.353443, 28.628073, 40.328175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527309, 28.646692, 40.280388>,  <39.950798, 28.057144, 40.284374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527309, 28.646692, 40.280388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878571, 28.812004, 40.184021>,  <40.089329, 28.911192, 40.126202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878571, 28.812004, 40.184021>,  <39.527309, 28.646692, 40.280388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878571, 28.812004, 40.184021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431507, 0.466924, -0.771871,
		-0.206507, 0.781781, 0.588365,
		0.878155, 0.413280, -0.240921,
		40.142017, 28.935987, 40.111744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506950, 29.447157, 40.148251>,  <39.527309, 28.646692, 40.280388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506950, 29.447157, 40.148251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844746, 29.355997, 39.954384>,  <40.047424, 29.301302, 39.838062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844746, 29.355997, 39.954384>,  <39.506950, 29.447157, 40.148251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844746, 29.355997, 39.954384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158319, 0.758280, -0.632413,
		0.511638, 0.610798, 0.604278,
		0.844489, -0.227898, -0.484666,
		40.098091, 29.287628, 39.808983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726833, 30.036743, 40.060528>,  <39.506950, 29.447157, 40.148251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726833, 30.036743, 40.060528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905022, 29.796278, 39.795147>,  <40.011932, 29.651999, 39.635918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.905022, 29.796278, 39.795147>,  <39.726833, 30.036743, 40.060528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905022, 29.796278, 39.795147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290862, 0.603664, -0.742286,
		0.846734, 0.523636, 0.094057,
		0.445467, -0.601162, -0.663448,
		40.038662, 29.615929, 39.596111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213543, 30.394413, 39.542786>,  <39.726833, 30.036743, 40.060528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213543, 30.394413, 39.542786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154045, 30.048820, 39.350365>,  <40.118347, 29.841465, 39.234913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154045, 30.048820, 39.350365>,  <40.213543, 30.394413, 39.542786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154045, 30.048820, 39.350365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331003, 0.501905, -0.799080,
		0.931833, 0.040371, -0.360636,
		-0.148745, -0.863980, -0.481054,
		40.109421, 29.789627, 39.206047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972858, 30.444830, 39.385696>,  <40.213543, 30.394413, 39.542786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972858, 30.444830, 39.385696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.174824, 30.786621, 39.434578>,  <41.296001, 30.991695, 39.463905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.174824, 30.786621, 39.434578>,  <40.972858, 30.444830, 39.385696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174824, 30.786621, 39.434578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424647, -0.369155, 0.826680,
		0.751490, -0.365508, -0.549242,
		0.504913, 0.854476, 0.122205,
		41.326298, 31.042963, 39.471241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723595, 30.270115, 39.591469>,  <40.972858, 30.444830, 39.385696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723595, 30.270115, 39.591469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640221, 30.634840, 39.732979>,  <41.590199, 30.853674, 39.817886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.640221, 30.634840, 39.732979>,  <41.723595, 30.270115, 39.591469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640221, 30.634840, 39.732979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179363, -0.319948, 0.930302,
		0.961450, 0.257358, -0.096858,
		-0.208431, 0.911811, 0.353774,
		41.577690, 30.908384, 39.839111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314285, 30.472303, 40.049545>,  <41.723595, 30.270115, 39.591469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314285, 30.472303, 40.049545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036320, 30.727829, 40.181614>,  <41.869541, 30.881145, 40.260857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036320, 30.727829, 40.181614>,  <42.314285, 30.472303, 40.049545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036320, 30.727829, 40.181614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292289, -0.168589, 0.941353,
		0.657015, 0.750661, -0.069565,
		-0.694909, 0.638816, 0.330176,
		41.827847, 30.919474, 40.280666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616863, 30.650661, 40.675735>,  <42.314285, 30.472303, 40.049545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616863, 30.650661, 40.675735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.232792, 30.752628, 40.721481>,  <42.002350, 30.813808, 40.748928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.232792, 30.752628, 40.721481>,  <42.616863, 30.650661, 40.675735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232792, 30.752628, 40.721481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101943, -0.061454, 0.992890,
		0.260134, 0.965008, 0.033019,
		-0.960176, 0.254918, 0.114362,
		41.944740, 30.829103, 40.755791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612316, 31.244877, 41.021717>,  <42.616863, 30.650661, 40.675735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612316, 31.244877, 41.021717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.248566, 31.091150, 41.085381>,  <42.030315, 30.998915, 41.123581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.248566, 31.091150, 41.085381>,  <42.612316, 31.244877, 41.021717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248566, 31.091150, 41.085381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148700, 0.056996, 0.987238,
		-0.388484, 0.921440, 0.005317,
		-0.909378, -0.384317, 0.159160,
		41.975754, 30.975855, 41.133129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325253, 31.688244, 41.556808>,  <42.612316, 31.244877, 41.021717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325253, 31.688244, 41.556808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070053, 31.380247, 41.553509>,  <41.916931, 31.195450, 41.551529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070053, 31.380247, 41.553509>,  <42.325253, 31.688244, 41.556808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070053, 31.380247, 41.553509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055057, -0.056305, 0.996894,
		-0.768063, 0.635567, 0.078317,
		-0.638003, -0.769990, -0.008253,
		41.878651, 31.149250, 41.551033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783646, 31.887844, 41.978153>,  <42.325253, 31.688244, 41.556808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783646, 31.887844, 41.978153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801548, 31.488483, 41.964340>,  <41.812290, 31.248867, 41.956055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801548, 31.488483, 41.964340>,  <41.783646, 31.887844, 41.978153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801548, 31.488483, 41.964340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149244, -0.040860, 0.987956,
		-0.987787, -0.039064, -0.150834,
		0.044756, -0.998401, -0.034531,
		41.814976, 31.188963, 41.953979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173412, 31.578928, 42.325802>,  <41.783646, 31.887844, 41.978153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173412, 31.578928, 42.325802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438194, 31.279144, 42.330143>,  <41.597065, 31.099274, 42.332748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.438194, 31.279144, 42.330143>,  <41.173412, 31.578928, 42.325802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438194, 31.279144, 42.330143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174161, -0.139707, 0.974756,
		-0.729026, -0.647139, -0.223007,
		0.661959, -0.749462, 0.010856,
		41.636784, 31.054306, 42.333401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910980, 31.084572, 42.822784>,  <41.173412, 31.578928, 42.325802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910980, 31.084572, 42.822784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.290680, 30.965729, 42.781506>,  <41.518501, 30.894423, 42.756741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.290680, 30.965729, 42.781506>,  <40.910980, 31.084572, 42.822784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290680, 30.965729, 42.781506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016921, -0.375864, 0.926520,
		-0.314060, -0.877756, -0.361817,
		0.949252, -0.297105, -0.103192,
		41.575455, 30.876596, 42.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909737, 30.360697, 43.089478>,  <40.910980, 31.084572, 42.822784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909737, 30.360697, 43.089478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272648, 30.524427, 43.128040>,  <41.490395, 30.622665, 43.151176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272648, 30.524427, 43.128040>,  <40.909737, 30.360697, 43.089478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272648, 30.524427, 43.128040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041487, -0.315260, 0.948098,
		0.418475, -0.856191, -0.303011,
		0.907280, 0.409327, 0.096408,
		41.544830, 30.647224, 43.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359283, 30.007715, 43.609394>,  <40.909737, 30.360697, 43.089478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359283, 30.007715, 43.609394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.574856, 30.343962, 43.630997>,  <41.704201, 30.545710, 43.643959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.574856, 30.343962, 43.630997>,  <41.359283, 30.007715, 43.609394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574856, 30.343962, 43.630997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059025, -0.026274, 0.997911,
		0.840277, -0.540996, 0.035457,
		0.538934, 0.840614, 0.054010,
		41.736538, 30.596146, 43.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115948, 29.935104, 43.903744>,  <41.359283, 30.007715, 43.609394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115948, 29.935104, 43.903744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.982281, 30.309139, 43.950981>,  <41.902081, 30.533560, 43.979324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.982281, 30.309139, 43.950981>,  <42.115948, 29.935104, 43.903744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982281, 30.309139, 43.950981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115419, -0.083755, 0.989779,
		0.935420, 0.344383, -0.079939,
		-0.334168, 0.935086, 0.118094,
		41.882030, 30.589664, 43.986408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583828, 30.134970, 44.401871>,  <42.115948, 29.935104, 43.903744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583828, 30.134970, 44.401871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.326687, 30.441366, 44.402130>,  <42.172401, 30.625204, 44.402287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.326687, 30.441366, 44.402130>,  <42.583828, 30.134970, 44.401871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326687, 30.441366, 44.402130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164344, 0.137095, 0.976830,
		0.748154, 0.628063, -0.214017,
		-0.642851, 0.765991, 0.000650,
		42.133831, 30.671164, 44.402325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990341, 30.549131, 44.863876>,  <42.583828, 30.134970, 44.401871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990341, 30.549131, 44.863876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609322, 30.667667, 44.836086>,  <42.380711, 30.738789, 44.819412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.609322, 30.667667, 44.836086>,  <42.990341, 30.549131, 44.863876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609322, 30.667667, 44.836086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012189, 0.190937, 0.981526,
		0.304133, 0.935802, -0.178266,
		-0.952552, 0.296341, -0.069476,
		42.323555, 30.756569, 44.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.260902, 29.387014, 45.298573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650768, 29.310665, 45.251926>,  <34.884689, 29.264856, 45.223938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.650768, 29.310665, 45.251926>,  <34.260902, 29.387014, 45.298573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650768, 29.310665, 45.251926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038679, 0.369681, -0.928353,
		0.220308, 0.909342, 0.352932,
		0.974663, -0.190873, -0.116616,
		34.943169, 29.253403, 45.216942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393551, 29.920942, 44.913162>,  <34.260902, 29.387014, 45.298573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393551, 29.920942, 44.913162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700062, 29.666965, 44.873837>,  <34.883968, 29.514580, 44.850243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700062, 29.666965, 44.873837>,  <34.393551, 29.920942, 44.913162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700062, 29.666965, 44.873837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215381, 0.398010, -0.891739,
		0.605332, 0.662146, 0.441741,
		0.766279, -0.634942, -0.098314,
		34.929947, 29.476482, 44.844341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845043, 30.360617, 44.680500>,  <34.393551, 29.920942, 44.913162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845043, 30.360617, 44.680500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004013, 30.006187, 44.585060>,  <35.099396, 29.793530, 44.527798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004013, 30.006187, 44.585060>,  <34.845043, 30.360617, 44.680500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004013, 30.006187, 44.585060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309917, 0.374342, -0.873967,
		0.863716, 0.273389, 0.423382,
		0.397423, -0.886073, -0.238598,
		35.123241, 29.740366, 44.513481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494610, 30.396923, 44.550800>,  <34.845043, 30.360617, 44.680500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494610, 30.396923, 44.550800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446404, 30.049179, 44.359097>,  <35.417480, 29.840532, 44.244076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446404, 30.049179, 44.359097>,  <35.494610, 30.396923, 44.550800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446404, 30.049179, 44.359097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504031, 0.362332, -0.784008,
		0.855236, -0.336046, 0.394518,
		-0.120516, -0.869361, -0.479257,
		35.410248, 29.788370, 44.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093903, 30.203930, 44.223015>,  <35.494610, 30.396923, 44.550800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093903, 30.203930, 44.223015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843189, 29.985947, 44.000248>,  <35.692760, 29.855156, 43.866589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843189, 29.985947, 44.000248>,  <36.093903, 30.203930, 44.223015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843189, 29.985947, 44.000248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387148, 0.402467, -0.829540,
		0.676208, -0.735554, -0.041280,
		-0.626785, -0.544960, -0.556919,
		35.655155, 29.822458, 43.833172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473667, 29.951988, 43.692661>,  <36.093903, 30.203930, 44.223015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473667, 29.951988, 43.692661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100822, 29.904381, 43.555840>,  <35.877117, 29.875816, 43.473747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100822, 29.904381, 43.555840>,  <36.473667, 29.951988, 43.692661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100822, 29.904381, 43.555840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303300, 0.259647, -0.916838,
		0.197936, -0.958341, -0.205921,
		-0.932111, -0.119019, -0.342058,
		35.821190, 29.868675, 43.453220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550602, 29.639282, 43.059860>,  <36.473667, 29.951988, 43.692661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550602, 29.639282, 43.059860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173889, 29.772724, 43.043076>,  <35.947861, 29.852789, 43.033005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.173889, 29.772724, 43.043076>,  <36.550602, 29.639282, 43.059860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173889, 29.772724, 43.043076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194017, 0.437250, -0.878163,
		-0.274609, -0.835177, -0.476517,
		-0.941779, 0.333604, -0.041966,
		35.891354, 29.872805, 43.030487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227654, 29.339012, 42.390213>,  <36.550602, 29.639282, 43.059860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227654, 29.339012, 42.390213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020542, 29.663961, 42.497505>,  <35.896275, 29.858931, 42.561882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.020542, 29.663961, 42.497505>,  <36.227654, 29.339012, 42.390213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020542, 29.663961, 42.497505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099666, 0.368676, -0.924200,
		-0.849687, -0.451801, -0.271860,
		-0.517783, 0.812375, 0.268229,
		35.865208, 29.907675, 42.577972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672695, 29.424225, 41.939732>,  <36.227654, 29.339012, 42.390213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672695, 29.424225, 41.939732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761719, 29.773232, 42.113712>,  <35.815132, 29.982635, 42.218102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761719, 29.773232, 42.113712>,  <35.672695, 29.424225, 41.939732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761719, 29.773232, 42.113712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034566, 0.452923, -0.890879,
		-0.974305, 0.183242, 0.130963,
		0.222563, 0.872515, 0.434951,
		35.828487, 30.034986, 42.244198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176643, 29.888506, 41.592888>,  <35.672695, 29.424225, 41.939732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176643, 29.888506, 41.592888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465790, 30.114639, 41.751816>,  <35.639278, 30.250319, 41.847172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465790, 30.114639, 41.751816>,  <35.176643, 29.888506, 41.592888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465790, 30.114639, 41.751816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094476, 0.488745, -0.867296,
		-0.684500, 0.664476, 0.299887,
		0.722866, 0.565332, 0.397323,
		35.682648, 30.284239, 41.871014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955292, 30.526167, 41.381145>,  <35.176643, 29.888506, 41.592888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955292, 30.526167, 41.381145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.339241, 30.581779, 41.478565>,  <35.569611, 30.615147, 41.537018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.339241, 30.581779, 41.478565>,  <34.955292, 30.526167, 41.381145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339241, 30.581779, 41.478565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103208, 0.632373, -0.767758,
		-0.260756, 0.762085, 0.592649,
		0.959872, 0.139032, 0.243549,
		35.627201, 30.623489, 41.551628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053314, 31.260748, 41.442871>,  <34.955292, 30.526167, 41.381145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053314, 31.260748, 41.442871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397297, 31.071917, 41.365299>,  <35.603687, 30.958618, 41.318756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.397297, 31.071917, 41.365299>,  <35.053314, 31.260748, 41.442871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397297, 31.071917, 41.365299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125026, 0.563280, -0.816752,
		0.494808, 0.678129, 0.543421,
		0.859961, -0.472077, -0.193931,
		35.655285, 30.930294, 41.307121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371666, 31.766474, 41.166748>,  <35.053314, 31.260748, 41.442871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371666, 31.766474, 41.166748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619247, 31.463177, 41.084805>,  <35.767796, 31.281199, 41.035641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619247, 31.463177, 41.084805>,  <35.371666, 31.766474, 41.166748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619247, 31.463177, 41.084805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288072, 0.461800, -0.838901,
		0.730692, 0.460228, 0.504261,
		0.618954, -0.758242, -0.204855,
		35.804932, 31.235704, 41.023350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059959, 32.041973, 41.130703>,  <35.371666, 31.766474, 41.166748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059959, 32.041973, 41.130703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992081, 31.708525, 40.920456>,  <35.951355, 31.508455, 40.794308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.992081, 31.708525, 40.920456>,  <36.059959, 32.041973, 41.130703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992081, 31.708525, 40.920456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282121, 0.469938, -0.836401,
		0.944252, -0.290219, 0.155438,
		-0.169693, -0.833625, -0.525616,
		35.941174, 31.458437, 40.762772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653561, 32.147251, 41.329105>,  <36.059959, 32.041973, 41.130703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653561, 32.147251, 41.329105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752022, 32.527588, 41.404278>,  <36.811096, 32.755791, 41.449383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752022, 32.527588, 41.404278>,  <36.653561, 32.147251, 41.329105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752022, 32.527588, 41.404278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104329, -0.166781, 0.980459,
		0.963601, -0.260945, 0.058147,
		0.246148, 0.950837, 0.187935,
		36.825867, 32.812840, 41.460659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176041, 32.048615, 41.806026>,  <36.653561, 32.147251, 41.329105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176041, 32.048615, 41.806026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042690, 32.424400, 41.837704>,  <36.962681, 32.649872, 41.856709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042690, 32.424400, 41.837704>,  <37.176041, 32.048615, 41.806026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042690, 32.424400, 41.837704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012735, -0.079499, 0.996754,
		0.942707, 0.333304, 0.014539,
		-0.333377, 0.939462, 0.079189,
		36.942677, 32.706238, 41.861462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508606, 32.304935, 42.374229>,  <37.176041, 32.048615, 41.806026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508606, 32.304935, 42.374229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232998, 32.589138, 42.317043>,  <37.067635, 32.759659, 42.282730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.232998, 32.589138, 42.317043>,  <37.508606, 32.304935, 42.374229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232998, 32.589138, 42.317043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015561, 0.182718, 0.983042,
		0.724576, 0.679560, -0.114840,
		-0.689019, 0.710502, -0.142968,
		37.026291, 32.802288, 42.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820675, 32.910843, 42.677807>,  <37.508606, 32.304935, 42.374229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820675, 32.910843, 42.677807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421104, 32.928513, 42.683319>,  <37.181362, 32.939114, 42.686626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.421104, 32.928513, 42.683319>,  <37.820675, 32.910843, 42.677807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421104, 32.928513, 42.683319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023870, 0.236695, 0.971291,
		0.039645, 0.970579, -0.237496,
		-0.998929, 0.044176, 0.013784,
		37.121426, 32.941765, 42.687454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588543, 33.481720, 43.133602>,  <37.820675, 32.910843, 42.677807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588543, 33.481720, 43.133602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253704, 33.266563, 43.093708>,  <37.052803, 33.137470, 43.069771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.253704, 33.266563, 43.093708>,  <37.588543, 33.481720, 43.133602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253704, 33.266563, 43.093708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243961, 0.203857, 0.948117,
		-0.489652, 0.817994, -0.301872,
		-0.837093, -0.537892, -0.099740,
		37.002575, 33.105194, 43.063786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159695, 33.725014, 43.545738>,  <37.588543, 33.481720, 43.133602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159695, 33.725014, 43.545738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977242, 33.371208, 43.506584>,  <36.867767, 33.158924, 43.483093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.977242, 33.371208, 43.506584>,  <37.159695, 33.725014, 43.545738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977242, 33.371208, 43.506584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403507, 0.107535, 0.908636,
		-0.793172, 0.453957, -0.405957,
		-0.456136, -0.884511, -0.097881,
		36.840401, 33.105854, 43.477219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511093, 33.751259, 44.002544>,  <37.159695, 33.725014, 43.545738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511093, 33.751259, 44.002544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567753, 33.360027, 43.941502>,  <36.601749, 33.125286, 43.904877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567753, 33.360027, 43.941502>,  <36.511093, 33.751259, 44.002544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567753, 33.360027, 43.941502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212755, -0.180637, 0.960263,
		-0.966784, -0.103550, -0.233679,
		0.141646, -0.978084, -0.152606,
		36.610249, 33.066601, 43.895721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918743, 33.322140, 44.464283>,  <36.511093, 33.751259, 44.002544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918743, 33.322140, 44.464283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212051, 33.063488, 44.380199>,  <36.388035, 32.908295, 44.329750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212051, 33.063488, 44.380199>,  <35.918743, 33.322140, 44.464283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212051, 33.063488, 44.380199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147519, -0.150495, 0.977543,
		-0.663745, -0.747809, -0.014963,
		0.733267, -0.646632, -0.210206,
		36.432034, 32.869499, 44.317139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691849, 32.778744, 44.824013>,  <35.918743, 33.322140, 44.464283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691849, 32.778744, 44.824013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088451, 32.773048, 44.772293>,  <36.326412, 32.769630, 44.741261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088451, 32.773048, 44.772293>,  <35.691849, 32.778744, 44.824013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088451, 32.773048, 44.772293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121418, -0.255304, 0.959207,
		-0.046671, -0.966756, -0.251406,
		0.991504, -0.014242, -0.129297,
		36.385902, 32.768776, 44.733505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866585, 32.212307, 45.137566>,  <35.691849, 32.778744, 44.824013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866585, 32.212307, 45.137566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240055, 32.355541, 45.139591>,  <36.464138, 32.441483, 45.140808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240055, 32.355541, 45.139591>,  <35.866585, 32.212307, 45.137566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240055, 32.355541, 45.139591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156083, -0.419611, 0.894184,
		0.322321, -0.834086, -0.447671,
		0.933674, 0.358088, 0.005063,
		36.520157, 32.462967, 45.141109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196678, 31.671032, 45.403442>,  <35.866585, 32.212307, 45.137566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196678, 31.671032, 45.403442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460072, 31.971157, 45.426895>,  <36.618107, 32.151234, 45.440968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460072, 31.971157, 45.426895>,  <36.196678, 31.671032, 45.403442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460072, 31.971157, 45.426895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450118, -0.455067, 0.768315,
		0.603158, -0.479527, -0.637381,
		0.658479, 0.750312, 0.058634,
		36.657616, 32.196251, 45.444485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846085, 31.365776, 45.392132>,  <36.196678, 31.671032, 45.403442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846085, 31.365776, 45.392132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.898224, 31.727970, 45.553677>,  <36.929508, 31.945288, 45.650604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.898224, 31.727970, 45.553677>,  <36.846085, 31.365776, 45.392132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898224, 31.727970, 45.553677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407732, -0.420252, 0.810644,
		0.903750, 0.059001, -0.423975,
		0.130348, 0.905487, 0.403859,
		36.937328, 31.999617, 45.674835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534775, 31.325403, 45.652859>,  <36.846085, 31.365776, 45.392132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534775, 31.325403, 45.652859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320732, 31.590353, 45.862591>,  <37.192307, 31.749323, 45.988430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.320732, 31.590353, 45.862591>,  <37.534775, 31.325403, 45.652859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320732, 31.590353, 45.862591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194676, -0.507278, 0.839506,
		0.822048, 0.551299, 0.142499,
		-0.535105, 0.662374, 0.524331,
		37.160202, 31.789064, 46.019890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959377, 31.681585, 46.098141>,  <37.534775, 31.325403, 45.652859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959377, 31.681585, 46.098141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.603588, 31.689894, 46.280750>,  <37.390114, 31.694880, 46.390316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.603588, 31.689894, 46.280750>,  <37.959377, 31.681585, 46.098141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603588, 31.689894, 46.280750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414285, -0.385030, 0.824693,
		0.192905, 0.922670, 0.333868,
		-0.889469, 0.020771, 0.456523,
		37.336746, 31.696125, 46.417706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367558, 32.344700, 46.246151>,  <37.959377, 31.681585, 46.098141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367558, 32.344700, 46.246151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.701363, 32.536518, 46.354691>,  <38.901646, 32.651608, 46.419815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.701363, 32.536518, 46.354691>,  <38.367558, 32.344700, 46.246151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701363, 32.536518, 46.354691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075076, 0.388915, -0.918210,
		-0.545853, 0.786628, 0.288551,
		0.834511, 0.479544, 0.271347,
		38.951717, 32.680382, 46.436096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220356, 33.074402, 45.974514>,  <38.367558, 32.344700, 46.246151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220356, 33.074402, 45.974514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614525, 33.013157, 46.004169>,  <38.851028, 32.976410, 46.021961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614525, 33.013157, 46.004169>,  <38.220356, 33.074402, 45.974514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614525, 33.013157, 46.004169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145746, 0.535121, -0.832108,
		0.087730, 0.830785, 0.549636,
		0.985425, -0.153108, 0.074137,
		38.910152, 32.967224, 46.026409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517159, 33.622768, 45.738220>,  <38.220356, 33.074402, 45.974514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517159, 33.622768, 45.738220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835300, 33.381271, 45.716671>,  <39.026188, 33.236374, 45.703739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.835300, 33.381271, 45.716671>,  <38.517159, 33.622768, 45.738220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835300, 33.381271, 45.716671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336056, 0.513192, -0.789747,
		0.504451, 0.610027, 0.611062,
		0.795359, -0.603740, -0.053877,
		39.073910, 33.200150, 45.700508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166416, 34.069042, 45.649273>,  <38.517159, 33.622768, 45.738220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166416, 34.069042, 45.649273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271511, 33.703079, 45.526688>,  <39.334568, 33.483501, 45.453136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271511, 33.703079, 45.526688>,  <39.166416, 34.069042, 45.649273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271511, 33.703079, 45.526688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337819, 0.384742, -0.858983,
		0.903797, 0.122155, 0.410157,
		0.262734, -0.914905, -0.306463,
		39.350330, 33.428608, 45.434750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881798, 34.079102, 45.521603>,  <39.166416, 34.069042, 45.649273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881798, 34.079102, 45.521603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.746799, 33.756447, 45.327515>,  <39.665802, 33.562855, 45.211063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.746799, 33.756447, 45.327515>,  <39.881798, 34.079102, 45.521603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746799, 33.756447, 45.327515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543572, 0.253836, -0.800060,
		0.768523, -0.533767, 0.352796,
		-0.337493, -0.806635, -0.485220,
		39.645550, 33.514458, 45.181950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479191, 33.826820, 45.144886>,  <39.881798, 34.079102, 45.521603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479191, 33.826820, 45.144886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163136, 33.684212, 44.945457>,  <39.973503, 33.598644, 44.825802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.163136, 33.684212, 44.945457>,  <40.479191, 33.826820, 45.144886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163136, 33.684212, 44.945457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411193, 0.294883, -0.862534,
		0.454535, -0.886529, -0.086398,
		-0.790138, -0.356525, -0.498569,
		39.926094, 33.577255, 44.795887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819557, 33.523251, 44.573971>,  <40.479191, 33.826820, 45.144886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819557, 33.523251, 44.573971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431767, 33.572575, 44.489197>,  <40.199093, 33.602169, 44.438332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431767, 33.572575, 44.489197>,  <40.819557, 33.523251, 44.573971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431767, 33.572575, 44.489197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231644, 0.177270, -0.956512,
		-0.080379, -0.976406, -0.200423,
		-0.969474, 0.123311, -0.211930,
		40.140923, 33.609570, 44.425617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766472, 33.211529, 43.964268>,  <40.819557, 33.523251, 44.573971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766472, 33.211529, 43.964268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451550, 33.458149, 43.965729>,  <40.262596, 33.606121, 43.966606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451550, 33.458149, 43.965729>,  <40.766472, 33.211529, 43.964268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451550, 33.458149, 43.965729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055215, 0.076412, -0.995546,
		-0.614087, -0.783597, -0.094202,
		-0.787305, 0.616553, 0.003657,
		40.215359, 33.643116, 43.966827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393314, 33.024380, 43.341854>,  <40.766472, 33.211529, 43.964268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393314, 33.024380, 43.341854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240273, 33.383976, 43.427105>,  <40.148449, 33.599735, 43.478256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.240273, 33.383976, 43.427105>,  <40.393314, 33.024380, 43.341854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240273, 33.383976, 43.427105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035701, 0.244896, -0.968892,
		-0.923222, -0.363094, -0.125793,
		-0.382605, 0.898993, 0.213130,
		40.125492, 33.653675, 43.491043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986225, 33.211998, 42.857929>,  <40.393314, 33.024380, 43.341854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986225, 33.211998, 42.857929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020954, 33.580700, 43.009106>,  <40.041790, 33.801922, 43.099812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020954, 33.580700, 43.009106>,  <39.986225, 33.211998, 42.857929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020954, 33.580700, 43.009106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161567, 0.387378, -0.907653,
		-0.983035, 0.017744, 0.182558,
		0.086824, 0.921750, 0.377939,
		40.047001, 33.857224, 43.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495945, 33.590919, 42.505184>,  <39.986225, 33.211998, 42.857929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495945, 33.590919, 42.505184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.735504, 33.863396, 42.673611>,  <39.879242, 34.026882, 42.774666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.735504, 33.863396, 42.673611>,  <39.495945, 33.590919, 42.505184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735504, 33.863396, 42.673611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075646, 0.571559, -0.817067,
		-0.797242, 0.457491, 0.393837,
		0.598901, 0.681192, 0.421063,
		39.915176, 34.067753, 42.799931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178413, 34.254467, 42.368145>,  <39.495945, 33.590919, 42.505184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178413, 34.254467, 42.368145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567333, 34.338707, 42.408703>,  <39.800686, 34.389252, 42.433037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567333, 34.338707, 42.408703>,  <39.178413, 34.254467, 42.368145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567333, 34.338707, 42.408703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023872, 0.521007, -0.853219,
		-0.232516, 0.827164, 0.511602,
		0.972299, 0.210600, 0.101397,
		39.859024, 34.401886, 42.439121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322048, 35.053459, 42.279659>,  <39.178413, 34.254467, 42.368145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322048, 35.053459, 42.279659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.680134, 34.882614, 42.228798>,  <39.894985, 34.780106, 42.198280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.680134, 34.882614, 42.228798>,  <39.322048, 35.053459, 42.279659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680134, 34.882614, 42.228798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037438, 0.356403, -0.933582,
		0.444067, 0.830993, 0.335046,
		0.895211, -0.427116, -0.127155,
		39.948696, 34.754478, 42.190651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758823, 35.588902, 41.960545>,  <39.322048, 35.053459, 42.279659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758823, 35.588902, 41.960545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938103, 35.237747, 41.893093>,  <40.045670, 35.027054, 41.852623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938103, 35.237747, 41.893093>,  <39.758823, 35.588902, 41.960545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938103, 35.237747, 41.893093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252476, 0.305269, -0.918187,
		0.857538, 0.368959, 0.358467,
		0.448202, -0.877884, -0.168626,
		40.072563, 34.974380, 41.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.622917, 27.785194, 38.007294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447544, 27.755125, 38.365540>,  <28.342319, 27.737083, 38.580486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447544, 27.755125, 38.365540>,  <28.622917, 27.785194, 38.007294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447544, 27.755125, 38.365540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572675, 0.791379, -0.213920,
		-0.692689, -0.606686, -0.390018,
		-0.438434, -0.075174, 0.895614,
		28.316013, 27.732573, 38.634224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831375, 27.702848, 37.988811>,  <28.622917, 27.785194, 38.007294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831375, 27.702848, 37.988811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933634, 27.872826, 38.336159>,  <27.994989, 27.974812, 38.544567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933634, 27.872826, 38.336159>,  <27.831375, 27.702848, 37.988811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933634, 27.872826, 38.336159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630010, 0.754533, -0.183760,
		-0.733303, -0.500106, 0.460610,
		0.255646, 0.424941, 0.868372,
		28.010328, 28.000307, 38.596672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262323, 28.010899, 38.243202>,  <27.831375, 27.702848, 37.988811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262323, 28.010899, 38.243202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532450, 28.207909, 38.462791>,  <27.694525, 28.326115, 38.594543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532450, 28.207909, 38.462791>,  <27.262323, 28.010899, 38.243202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532450, 28.207909, 38.462791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539394, 0.837462, -0.087817,
		-0.502994, -0.236806, 0.831216,
		0.675316, 0.492524, 0.548970,
		27.735044, 28.355665, 38.627483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845423, 28.490028, 38.654308>,  <27.262323, 28.010899, 38.243202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845423, 28.490028, 38.654308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228245, 28.603790, 38.631844>,  <27.457939, 28.672049, 38.618362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.228245, 28.603790, 38.631844>,  <26.845423, 28.490028, 38.654308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228245, 28.603790, 38.631844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289571, 0.947071, -0.138580,
		0.013779, 0.148892, 0.988757,
		0.957057, 0.284406, -0.056165,
		27.515362, 28.689112, 38.614994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902691, 29.115757, 39.040325>,  <26.845423, 28.490028, 38.654308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902691, 29.115757, 39.040325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194677, 29.125219, 38.767097>,  <27.369869, 29.130898, 38.603161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194677, 29.125219, 38.767097>,  <26.902691, 29.115757, 39.040325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194677, 29.125219, 38.767097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337871, 0.881239, -0.330547,
		0.594131, 0.472079, 0.651268,
		0.729967, 0.023656, -0.683073,
		27.413668, 29.132317, 38.562176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165138, 29.751554, 39.051033>,  <26.902691, 29.115757, 39.040325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165138, 29.751554, 39.051033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307514, 29.623035, 38.700016>,  <27.392941, 29.545923, 38.489407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.307514, 29.623035, 38.700016>,  <27.165138, 29.751554, 39.051033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307514, 29.623035, 38.700016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170223, 0.901037, -0.398945,
		0.918875, 0.291378, 0.266022,
		0.355940, -0.321298, -0.877539,
		27.414295, 29.526646, 38.436756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752787, 30.057531, 38.915066>,  <27.165138, 29.751554, 39.051033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752787, 30.057531, 38.915066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665310, 29.958986, 38.537392>,  <27.612823, 29.899858, 38.310787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.665310, 29.958986, 38.537392>,  <27.752787, 30.057531, 38.915066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665310, 29.958986, 38.537392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174551, 0.942120, -0.286255,
		0.960055, -0.227409, -0.163032,
		-0.218693, -0.246363, -0.944181,
		27.599703, 29.885077, 38.254139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187845, 30.486216, 38.587177>,  <27.752787, 30.057531, 38.915066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187845, 30.486216, 38.587177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930420, 30.365940, 38.305634>,  <27.775965, 30.293774, 38.136707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930420, 30.365940, 38.305634>,  <28.187845, 30.486216, 38.587177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930420, 30.365940, 38.305634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080178, 0.888055, -0.452692,
		0.761182, -0.347770, -0.547410,
		-0.643562, -0.300691, -0.703855,
		27.737350, 30.275732, 38.094479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538059, 30.682011, 38.046314>,  <28.187845, 30.486216, 38.587177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538059, 30.682011, 38.046314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159895, 30.638962, 37.923279>,  <27.932997, 30.613132, 37.849457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159895, 30.638962, 37.923279>,  <28.538059, 30.682011, 38.046314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159895, 30.638962, 37.923279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121685, 0.759033, -0.639580,
		0.302305, -0.642096, -0.704503,
		-0.945412, -0.107621, -0.307593,
		27.876272, 30.606676, 37.831001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597569, 30.809414, 37.244209>,  <28.538059, 30.682011, 38.046314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597569, 30.809414, 37.244209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229916, 30.867373, 37.390747>,  <28.009325, 30.902147, 37.478668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229916, 30.867373, 37.390747>,  <28.597569, 30.809414, 37.244209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229916, 30.867373, 37.390747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156521, 0.719050, -0.677103,
		-0.361527, -0.679685, -0.638221,
		-0.919130, 0.144896, 0.366341,
		27.954176, 30.910841, 37.500648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176044, 30.801643, 36.640034>,  <28.597569, 30.809414, 37.244209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176044, 30.801643, 36.640034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969429, 31.002563, 36.917416>,  <27.845459, 31.123116, 37.083843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969429, 31.002563, 36.917416>,  <28.176044, 30.801643, 36.640034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969429, 31.002563, 36.917416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071255, 0.781837, -0.619398,
		-0.853294, -0.369356, -0.368058,
		-0.516539, 0.502303, 0.693455,
		27.814466, 31.153254, 37.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490929, 30.987148, 36.338596>,  <28.176044, 30.801643, 36.640034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490929, 30.987148, 36.338596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541159, 31.232706, 36.650330>,  <27.571297, 31.380041, 36.837368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541159, 31.232706, 36.650330>,  <27.490929, 30.987148, 36.338596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541159, 31.232706, 36.650330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142444, 0.788570, -0.598220,
		-0.981804, -0.035889, 0.186472,
		0.125577, 0.613897, 0.779334,
		27.578833, 31.416876, 36.884129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962782, 31.492081, 36.237938>,  <27.490929, 30.987148, 36.338596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962782, 31.492081, 36.237938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221523, 31.641340, 36.503971>,  <27.376768, 31.730896, 36.663593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221523, 31.641340, 36.503971>,  <26.962782, 31.492081, 36.237938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221523, 31.641340, 36.503971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041971, 0.888212, -0.457513,
		-0.761458, 0.268029, 0.590204,
		0.646854, 0.373149, 0.665087,
		27.415579, 31.753284, 36.703499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600586, 32.060143, 36.543411>,  <26.962782, 31.492081, 36.237938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600586, 32.060143, 36.543411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996349, 32.101997, 36.583660>,  <27.233807, 32.127110, 36.607807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996349, 32.101997, 36.583660>,  <26.600586, 32.060143, 36.543411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996349, 32.101997, 36.583660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028967, 0.821495, -0.569479,
		-0.142247, 0.560532, 0.815824,
		0.989407, 0.104639, 0.100619,
		27.293171, 32.133389, 36.613846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623394, 32.790627, 36.416153>,  <26.600586, 32.060143, 36.543411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623394, 32.790627, 36.416153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011751, 32.695126, 36.408531>,  <27.244766, 32.637825, 36.403957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011751, 32.695126, 36.408531>,  <26.623394, 32.790627, 36.416153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011751, 32.695126, 36.408531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157274, 0.695515, -0.701088,
		0.180640, 0.677684, 0.712820,
		0.970893, -0.238753, -0.019056,
		27.303019, 32.623501, 36.402813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013391, 33.491344, 36.371212>,  <26.623394, 32.790627, 36.416153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013391, 33.491344, 36.371212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239073, 33.193558, 36.228416>,  <27.374481, 33.014885, 36.142738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239073, 33.193558, 36.228416>,  <27.013391, 33.491344, 36.371212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239073, 33.193558, 36.228416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184427, 0.535096, -0.824415,
		0.804773, 0.399300, 0.439204,
		0.564205, -0.744468, -0.356989,
		27.408335, 32.970219, 36.121319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658098, 33.759655, 36.096130>,  <27.013391, 33.491344, 36.371212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658098, 33.759655, 36.096130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615719, 33.403522, 35.919003>,  <27.590292, 33.189842, 35.812725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615719, 33.403522, 35.919003>,  <27.658098, 33.759655, 36.096130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615719, 33.403522, 35.919003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278852, 0.400857, -0.872671,
		0.954472, -0.215940, 0.205799,
		-0.105949, -0.890328, -0.442822,
		27.583935, 33.136425, 35.786156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329609, 33.521156, 35.701061>,  <27.658098, 33.759655, 36.096130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329609, 33.521156, 35.701061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014606, 33.330097, 35.545273>,  <27.825605, 33.215462, 35.451797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014606, 33.330097, 35.545273>,  <28.329609, 33.521156, 35.701061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014606, 33.330097, 35.545273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112357, 0.510090, -0.852751,
		0.605979, -0.715306, -0.348032,
		-0.787505, -0.477645, -0.389474,
		27.778355, 33.186806, 35.428432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477974, 33.562424, 35.079960>,  <28.329609, 33.521156, 35.701061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477974, 33.562424, 35.079960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107061, 33.415318, 35.051964>,  <27.884514, 33.327053, 35.035168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.107061, 33.415318, 35.051964>,  <28.477974, 33.562424, 35.079960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107061, 33.415318, 35.051964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075441, 0.366685, -0.927281,
		0.366685, -0.854571, -0.367765,
		0.927281, 0.367765, 0.069989,
		27.828876, 33.304989, 35.030968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394503, 33.129269, 34.521603>,  <28.477974, 33.562424, 35.079960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394503, 33.129269, 34.521603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028116, 33.275711, 34.587292>,  <27.808285, 33.363575, 34.626705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028116, 33.275711, 34.587292>,  <28.394503, 33.129269, 34.521603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028116, 33.275711, 34.587292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029329, 0.347093, -0.937372,
		-0.400178, -0.863419, -0.307189,
		-0.915968, 0.366106, 0.164222,
		27.753326, 33.385544, 34.636559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834084, 32.426624, 34.440624>,  <28.394503, 33.129269, 34.521603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834084, 32.426624, 34.440624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140282, 32.360054, 34.689243>,  <29.323999, 32.320110, 34.838413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140282, 32.360054, 34.689243>,  <28.834084, 32.426624, 34.440624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140282, 32.360054, 34.689243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253900, -0.965715, 0.054124,
		0.591231, -0.199243, -0.781504,
		0.765494, -0.166424, 0.621548,
		29.369930, 32.310127, 34.875710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951809, 31.757551, 34.238953>,  <28.834084, 32.426624, 34.440624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951809, 31.757551, 34.238953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151144, 31.802227, 34.582855>,  <29.270746, 31.829033, 34.789196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151144, 31.802227, 34.582855>,  <28.951809, 31.757551, 34.238953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151144, 31.802227, 34.582855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152488, -0.964917, 0.213735,
		0.853467, -0.237615, -0.463824,
		0.498339, 0.111688, 0.859758,
		29.300646, 31.835733, 34.840782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.646801, 31.401571, 34.206837>,  <28.951809, 31.757551, 34.238953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.646801, 31.401571, 34.206837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524818, 31.432583, 34.586517>,  <29.451630, 31.451189, 34.814327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.524818, 31.432583, 34.586517>,  <29.646801, 31.401571, 34.206837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524818, 31.432583, 34.586517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014192, -0.996200, 0.085926,
		0.952260, 0.039674, 0.302698,
		-0.304957, 0.077528, 0.949205,
		29.433331, 31.455841, 34.871281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997747, 30.881037, 34.482071>,  <29.646801, 31.401571, 34.206837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997747, 30.881037, 34.482071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719374, 30.972212, 34.754459>,  <29.552349, 31.026917, 34.917892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719374, 30.972212, 34.754459>,  <29.997747, 30.881037, 34.482071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719374, 30.972212, 34.754459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105211, -0.905688, 0.410681,
		0.710355, 0.357453, 0.606319,
		-0.695936, 0.227938, 0.680968,
		29.510593, 31.040594, 34.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274616, 30.586128, 35.128235>,  <29.997747, 30.881037, 34.482071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274616, 30.586128, 35.128235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879007, 30.621223, 35.175797>,  <29.641642, 30.642281, 35.204334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.879007, 30.621223, 35.175797>,  <30.274616, 30.586128, 35.128235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879007, 30.621223, 35.175797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024720, -0.891560, 0.452228,
		0.145691, 0.444324, 0.883940,
		-0.989021, 0.087737, 0.118908,
		29.582300, 30.647545, 35.211468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203386, 30.665918, 35.776844>,  <30.274616, 30.586128, 35.128235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203386, 30.665918, 35.776844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856483, 30.531893, 35.629551>,  <29.648342, 30.451477, 35.541176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.856483, 30.531893, 35.629551>,  <30.203386, 30.665918, 35.776844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856483, 30.531893, 35.629551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036083, -0.779991, 0.624750,
		-0.496548, 0.528533, 0.688544,
		-0.867259, -0.335063, -0.368232,
		29.596306, 30.431374, 35.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858055, 30.618622, 36.347168>,  <30.203386, 30.665918, 35.776844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858055, 30.618622, 36.347168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721390, 30.381191, 36.055706>,  <29.639391, 30.238733, 35.880829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721390, 30.381191, 36.055706>,  <29.858055, 30.618622, 36.347168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721390, 30.381191, 36.055706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145945, -0.799412, 0.582786,
		-0.928421, 0.092775, 0.359761,
		-0.341665, -0.593576, -0.728651,
		29.618891, 30.203119, 35.837112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571424, 30.068300, 36.746811>,  <29.858055, 30.618622, 36.347168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571424, 30.068300, 36.746811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.602648, 29.923100, 36.375404>,  <29.621382, 29.835979, 36.152561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.602648, 29.923100, 36.375404>,  <29.571424, 30.068300, 36.746811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602648, 29.923100, 36.375404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092728, -0.924674, 0.369297,
		-0.992627, -0.114927, -0.038520,
		0.078060, -0.363002, -0.928513,
		29.626066, 29.814199, 36.096851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141558, 29.476522, 36.805832>,  <29.571424, 30.068300, 36.746811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141558, 29.476522, 36.805832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348028, 29.429937, 36.466419>,  <29.471910, 29.401987, 36.262772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348028, 29.429937, 36.466419>,  <29.141558, 29.476522, 36.805832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348028, 29.429937, 36.466419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021762, -0.988609, 0.148926,
		-0.856207, -0.095338, -0.507760,
		0.516175, -0.116461, -0.848529,
		29.502880, 29.394999, 36.211861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760912, 29.037107, 36.411747>,  <29.141558, 29.476522, 36.805832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760912, 29.037107, 36.411747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139889, 29.006117, 36.287586>,  <29.367275, 28.987522, 36.213089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139889, 29.006117, 36.287586>,  <28.760912, 29.037107, 36.411747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139889, 29.006117, 36.287586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030703, -0.987774, 0.152838,
		-0.318453, -0.135274, -0.938237,
		0.947441, -0.077479, -0.310406,
		29.424122, 28.982874, 36.194466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748655, 28.507179, 36.018120>,  <28.760912, 29.037107, 36.411747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748655, 28.507179, 36.018120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142141, 28.539831, 36.082172>,  <29.378233, 28.559422, 36.120602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142141, 28.539831, 36.082172>,  <28.748655, 28.507179, 36.018120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142141, 28.539831, 36.082172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063813, -0.991497, 0.113413,
		0.168024, -0.101348, -0.980559,
		0.983715, 0.081628, 0.160128,
		29.437256, 28.564320, 36.130211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019083, 27.892683, 35.710133>,  <28.748655, 28.507179, 36.018120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019083, 27.892683, 35.710133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297029, 28.020266, 35.967949>,  <29.463797, 28.096815, 36.122639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297029, 28.020266, 35.967949>,  <29.019083, 27.892683, 35.710133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297029, 28.020266, 35.967949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208908, -0.947140, 0.243483,
		0.688126, -0.034539, -0.724769,
		0.694867, 0.318957, 0.644536,
		29.505489, 28.115953, 36.161308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513021, 27.483091, 35.585556>,  <29.019083, 27.892683, 35.710133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513021, 27.483091, 35.585556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621250, 27.602055, 35.951801>,  <29.686188, 27.673431, 36.171547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621250, 27.602055, 35.951801>,  <29.513021, 27.483091, 35.585556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621250, 27.602055, 35.951801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327418, -0.922817, 0.202993,
		0.905311, 0.244862, -0.347065,
		0.270573, 0.297407, 0.915609,
		29.702421, 27.691277, 36.226482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923473, 26.947714, 35.839439>,  <29.513021, 27.483091, 35.585556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923473, 26.947714, 35.839439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852524, 27.135830, 36.185242>,  <29.809954, 27.248699, 36.392723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852524, 27.135830, 36.185242>,  <29.923473, 26.947714, 35.839439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852524, 27.135830, 36.185242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217917, -0.837859, 0.500504,
		0.959714, 0.277166, 0.046130,
		-0.177373, 0.470288, 0.864504,
		29.799313, 27.276917, 36.444592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481335, 26.623070, 36.315941>,  <29.923473, 26.947714, 35.839439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481335, 26.623070, 36.315941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173908, 26.767118, 36.527458>,  <29.989452, 26.853548, 36.654369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173908, 26.767118, 36.527458>,  <30.481335, 26.623070, 36.315941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173908, 26.767118, 36.527458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076573, -0.872368, 0.482816,
		0.635173, 0.330584, 0.698046,
		-0.768564, 0.360123, 0.528791,
		29.943338, 26.875156, 36.686096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617977, 26.499189, 37.016129>,  <30.481335, 26.623070, 36.315941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617977, 26.499189, 37.016129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220852, 26.535393, 36.984814>,  <29.982576, 26.557116, 36.966026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.220852, 26.535393, 36.984814>,  <30.617977, 26.499189, 37.016129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220852, 26.535393, 36.984814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116663, -0.877752, 0.464696,
		-0.026654, 0.470489, 0.882003,
		-0.992814, 0.090511, -0.078284,
		29.923008, 26.562546, 36.961327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361448, 26.272024, 37.677132>,  <30.617977, 26.499189, 37.016129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361448, 26.272024, 37.677132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067205, 26.241169, 37.407928>,  <29.890659, 26.222656, 37.246407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067205, 26.241169, 37.407928>,  <30.361448, 26.272024, 37.677132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067205, 26.241169, 37.407928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291338, -0.860896, 0.417109,
		-0.611561, 0.502900, 0.610807,
		-0.735605, -0.077137, -0.673004,
		29.846523, 26.218027, 37.206028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815207, 26.175112, 38.048912>,  <30.361448, 26.272024, 37.677132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815207, 26.175112, 38.048912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689262, 26.056461, 37.688274>,  <29.613695, 25.985271, 37.471893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689262, 26.056461, 37.688274>,  <29.815207, 26.175112, 38.048912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689262, 26.056461, 37.688274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410959, -0.813646, 0.411210,
		-0.855555, 0.499992, 0.134284,
		-0.314862, -0.296627, -0.901595,
		29.594805, 25.967474, 37.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113590, 26.057327, 38.219421>,  <29.815207, 26.175112, 38.048912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113590, 26.057327, 38.219421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218622, 25.875534, 37.878952>,  <29.281641, 25.766459, 37.674671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218622, 25.875534, 37.878952>,  <29.113590, 26.057327, 38.219421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218622, 25.875534, 37.878952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396485, -0.855037, 0.334233,
		-0.879689, 0.249715, -0.404711,
		0.262580, -0.454483, -0.851174,
		29.297396, 25.739189, 37.623600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517128, 25.776245, 37.911179>,  <29.113590, 26.057327, 38.219421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517128, 25.776245, 37.911179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831238, 25.568321, 37.776630>,  <29.019705, 25.443567, 37.695904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.831238, 25.568321, 37.776630>,  <28.517128, 25.776245, 37.911179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831238, 25.568321, 37.776630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426966, -0.848076, 0.313795,
		-0.448377, -0.102799, -0.887913,
		0.785276, -0.519807, -0.336366,
		29.066820, 25.412378, 37.675720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222212, 25.235527, 37.571712>,  <28.517128, 25.776245, 37.911179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222212, 25.235527, 37.571712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587559, 25.090706, 37.646202>,  <28.806767, 25.003813, 37.690895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.587559, 25.090706, 37.646202>,  <28.222212, 25.235527, 37.571712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587559, 25.090706, 37.646202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406628, -0.788339, 0.461709,
		-0.020355, -0.497434, -0.867263,
		0.913367, -0.362052, 0.186224,
		28.861568, 24.982090, 37.702068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140257, 24.535698, 37.438385>,  <28.222212, 25.235527, 37.571712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140257, 24.535698, 37.438385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485832, 24.559776, 37.638378>,  <28.693178, 24.574223, 37.758373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.485832, 24.559776, 37.638378>,  <28.140257, 24.535698, 37.438385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485832, 24.559776, 37.638378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234632, -0.830373, 0.505400,
		0.445596, -0.553948, -0.703268,
		0.863940, 0.060195, 0.499984,
		28.745014, 24.577835, 37.788372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.898148, 31.156069, 45.285557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.505142, 31.086615, 45.258682>,  <42.269337, 31.044943, 45.242558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.505142, 31.086615, 45.258682>,  <42.898148, 31.156069, 45.285557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505142, 31.086615, 45.258682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071564, 0.019089, 0.997253,
		-0.171875, 0.984625, -0.031181,
		-0.982516, -0.173634, -0.067183,
		42.210388, 31.034525, 45.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556866, 31.680214, 45.776295>,  <42.898148, 31.156069, 45.285557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556866, 31.680214, 45.776295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.318951, 31.365175, 45.711895>,  <42.176201, 31.176151, 45.673256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.318951, 31.365175, 45.711895>,  <42.556866, 31.680214, 45.776295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318951, 31.365175, 45.711895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353982, 0.076789, 0.932095,
		-0.721753, 0.611386, -0.324468,
		-0.594785, -0.787598, -0.160997,
		42.140514, 31.128897, 45.663597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983555, 31.822330, 46.174561>,  <42.556866, 31.680214, 45.776295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983555, 31.822330, 46.174561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.963753, 31.429028, 46.104408>,  <41.951874, 31.193047, 46.062317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.963753, 31.429028, 46.104408>,  <41.983555, 31.822330, 46.174561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963753, 31.429028, 46.104408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248647, -0.157932, 0.955632,
		-0.967328, 0.090913, -0.236666,
		-0.049502, -0.983256, -0.175377,
		41.948902, 31.134050, 46.051796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371494, 31.595207, 46.481720>,  <41.983555, 31.822330, 46.174561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371494, 31.595207, 46.481720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.629601, 31.290798, 46.454983>,  <41.784466, 31.108152, 46.438938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.629601, 31.290798, 46.454983>,  <41.371494, 31.595207, 46.481720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629601, 31.290798, 46.454983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072163, -0.147827, 0.986377,
		-0.760539, -0.631656, -0.150306,
		0.645270, -0.761024, -0.066846,
		41.823181, 31.062490, 46.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019726, 31.060751, 46.891590>,  <41.371494, 31.595207, 46.481720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019726, 31.060751, 46.891590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.410007, 30.975060, 46.873260>,  <41.644176, 30.923645, 46.862263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.410007, 30.975060, 46.873260>,  <41.019726, 31.060751, 46.891590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410007, 30.975060, 46.873260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021347, -0.301169, 0.953332,
		-0.218031, -0.929196, -0.298426,
		0.975708, -0.214226, -0.045828,
		41.702721, 30.910791, 46.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077583, 30.461573, 47.029320>,  <41.019726, 31.060751, 46.891590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077583, 30.461573, 47.029320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435028, 30.616570, 47.119919>,  <41.649494, 30.709568, 47.174278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.435028, 30.616570, 47.119919>,  <41.077583, 30.461573, 47.029320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435028, 30.616570, 47.119919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075153, -0.368341, 0.926648,
		0.442498, -0.845089, -0.300034,
		0.893615, 0.387492, 0.226501,
		41.703114, 30.732817, 47.187870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371445, 29.940365, 47.313919>,  <41.077583, 30.461573, 47.029320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371445, 29.940365, 47.313919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.571125, 30.262230, 47.442490>,  <41.690933, 30.455349, 47.519634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.571125, 30.262230, 47.442490>,  <41.371445, 29.940365, 47.313919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571125, 30.262230, 47.442490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037895, -0.350330, 0.935860,
		0.865656, -0.479365, -0.144393,
		0.499203, 0.804660, 0.321431,
		41.720886, 30.503628, 47.538918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805138, 29.592550, 47.813030>,  <41.371445, 29.940365, 47.313919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805138, 29.592550, 47.813030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.822224, 29.978155, 47.917992>,  <41.832478, 30.209518, 47.980968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.822224, 29.978155, 47.917992>,  <41.805138, 29.592550, 47.813030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822224, 29.978155, 47.917992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146119, -0.265846, 0.952877,
		0.988344, -0.002364, -0.152217,
		0.042718, 0.964012, 0.262402,
		41.835041, 30.267359, 47.996712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484684, 29.682302, 48.166801>,  <41.805138, 29.592550, 47.813030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484684, 29.682302, 48.166801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.273884, 30.005796, 48.271271>,  <42.147404, 30.199894, 48.333954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.273884, 30.005796, 48.271271>,  <42.484684, 29.682302, 48.166801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273884, 30.005796, 48.271271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051745, -0.276213, 0.959703,
		0.848286, 0.519281, 0.103717,
		-0.527003, 0.808736, 0.261178,
		42.115784, 30.248417, 48.349625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764858, 29.843723, 48.725273>,  <42.484684, 29.682302, 48.166801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764858, 29.843723, 48.725273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.424870, 30.053772, 48.742222>,  <42.220875, 30.179802, 48.752392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.424870, 30.053772, 48.742222>,  <42.764858, 29.843723, 48.725273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424870, 30.053772, 48.742222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164108, -0.340330, 0.925875,
		0.500617, 0.780014, 0.375447,
		-0.849971, 0.525123, 0.042369,
		42.169880, 30.211309, 48.754932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751427, 30.364201, 49.369888>,  <42.764858, 29.843723, 48.725273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751427, 30.364201, 49.369888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.388317, 30.239632, 49.257492>,  <42.170452, 30.164890, 49.190052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.388317, 30.239632, 49.257492>,  <42.751427, 30.364201, 49.369888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388317, 30.239632, 49.257492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197123, -0.274584, 0.941141,
		-0.370250, 0.909736, 0.187872,
		-0.907776, -0.311423, -0.280994,
		42.115986, 30.146204, 49.173195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429512, 30.684826, 49.854553>,  <42.751427, 30.364201, 49.369888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429512, 30.684826, 49.854553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.198284, 30.396866, 49.700890>,  <42.059547, 30.224091, 49.608692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.198284, 30.396866, 49.700890>,  <42.429512, 30.684826, 49.854553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198284, 30.396866, 49.700890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323166, -0.230308, 0.917890,
		-0.749263, 0.654754, -0.099512,
		-0.578073, -0.719900, -0.384155,
		42.024860, 30.180897, 49.585644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710121, 30.675749, 50.204208>,  <42.429512, 30.684826, 49.854553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710121, 30.675749, 50.204208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.782116, 30.319378, 50.037426>,  <41.825314, 30.105555, 49.937359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.782116, 30.319378, 50.037426>,  <41.710121, 30.675749, 50.204208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782116, 30.319378, 50.037426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173429, -0.445977, 0.878081,
		-0.968259, -0.085733, -0.234784,
		0.179989, -0.890929, -0.416953,
		41.836113, 30.052099, 49.912338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142803, 30.187965, 50.206017>,  <41.710121, 30.675749, 50.204208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142803, 30.187965, 50.206017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.491600, 29.992308, 50.213646>,  <41.700878, 29.874912, 50.218224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.491600, 29.992308, 50.213646>,  <41.142803, 30.187965, 50.206017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491600, 29.992308, 50.213646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201894, -0.323872, 0.924308,
		-0.445946, -0.809840, -0.381170,
		0.871992, -0.489148, 0.019073,
		41.753197, 29.845564, 50.219368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927349, 30.485483, 50.852356>,  <41.142803, 30.187965, 50.206017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927349, 30.485483, 50.852356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565098, 30.502644, 51.021118>,  <40.347748, 30.512939, 51.122375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565098, 30.502644, 51.021118>,  <40.927349, 30.485483, 50.852356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565098, 30.502644, 51.021118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319414, 0.585426, -0.745152,
		-0.278961, -0.809590, -0.516474,
		-0.905625, 0.042899, 0.421905,
		40.293411, 30.515512, 51.147690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418533, 30.387138, 50.394936>,  <40.927349, 30.485483, 50.852356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418533, 30.387138, 50.394936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230240, 30.609917, 50.668644>,  <40.117264, 30.743584, 50.832867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.230240, 30.609917, 50.668644>,  <40.418533, 30.387138, 50.394936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230240, 30.609917, 50.668644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534619, 0.436902, -0.723394,
		-0.701848, -0.706349, 0.092088,
		-0.470735, 0.556945, 0.684267,
		40.089020, 30.777000, 50.873924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759304, 30.321100, 50.145409>,  <40.418533, 30.387138, 50.394936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759304, 30.321100, 50.145409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742966, 30.628681, 50.400608>,  <39.733162, 30.813231, 50.553726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.742966, 30.628681, 50.400608>,  <39.759304, 30.321100, 50.145409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742966, 30.628681, 50.400608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492324, 0.540148, -0.682537,
		-0.869453, -0.341981, 0.356510,
		-0.040847, 0.768953, 0.637999,
		39.730713, 30.859367, 50.592007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048435, 30.551477, 50.091934>,  <39.759304, 30.321100, 50.145409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048435, 30.551477, 50.091934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237144, 30.865025, 50.253418>,  <39.350368, 31.053152, 50.350307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.237144, 30.865025, 50.253418>,  <39.048435, 30.551477, 50.091934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237144, 30.865025, 50.253418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415491, 0.601486, -0.682336,
		-0.777687, 0.154169, 0.609455,
		0.471774, 0.783867, 0.403711,
		39.378677, 31.100185, 50.374531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551712, 31.118969, 50.077641>,  <39.048435, 30.551477, 50.091934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551712, 31.118969, 50.077641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919334, 31.276382, 50.086250>,  <39.139908, 31.370831, 50.091415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.919334, 31.276382, 50.086250>,  <38.551712, 31.118969, 50.077641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919334, 31.276382, 50.086250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288115, 0.708126, -0.644629,
		-0.268927, 0.586250, 0.764192,
		0.919058, 0.393534, 0.021526,
		39.195053, 31.394442, 50.092709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430099, 31.843538, 50.132912>,  <38.551712, 31.118969, 50.077641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430099, 31.843538, 50.132912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805447, 31.799353, 50.001904>,  <39.030655, 31.772840, 49.923298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805447, 31.799353, 50.001904>,  <38.430099, 31.843538, 50.132912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805447, 31.799353, 50.001904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155934, 0.710354, -0.686354,
		0.308472, 0.695122, 0.649346,
		0.938366, -0.110465, -0.327517,
		39.086956, 31.766212, 49.903648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703640, 32.578709, 49.955650>,  <38.430099, 31.843538, 50.132912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703640, 32.578709, 49.955650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911064, 32.301605, 49.755177>,  <39.035519, 32.135342, 49.634892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911064, 32.301605, 49.755177>,  <38.703640, 32.578709, 49.955650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911064, 32.301605, 49.755177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125703, 0.518014, -0.846085,
		0.845753, 0.501743, 0.181537,
		0.518556, -0.692760, -0.501183,
		39.066631, 32.093777, 49.604820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943409, 32.914406, 49.476734>,  <38.703640, 32.578709, 49.955650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943409, 32.914406, 49.476734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.014034, 32.549465, 49.328979>,  <39.056412, 32.330502, 49.240326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.014034, 32.549465, 49.328979>,  <38.943409, 32.914406, 49.476734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014034, 32.549465, 49.328979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107131, 0.390864, -0.914193,
		0.978441, 0.121842, 0.166754,
		0.176565, -0.912348, -0.369385,
		39.067005, 32.275761, 49.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461811, 33.031952, 49.132683>,  <38.943409, 32.914406, 49.476734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461811, 33.031952, 49.132683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320332, 32.687691, 48.986164>,  <39.235443, 32.481136, 48.898251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.320332, 32.687691, 48.986164>,  <39.461811, 33.031952, 49.132683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320332, 32.687691, 48.986164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218057, 0.304954, -0.927067,
		0.909586, -0.407779, 0.079808,
		-0.353701, -0.860650, -0.366301,
		39.214222, 32.429497, 48.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958878, 32.842312, 48.624332>,  <39.461811, 33.031952, 49.132683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958878, 32.842312, 48.624332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611870, 32.663338, 48.537430>,  <39.403664, 32.555954, 48.485287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.611870, 32.663338, 48.537430>,  <39.958878, 32.842312, 48.624332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611870, 32.663338, 48.537430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082828, 0.300742, -0.950102,
		0.490453, -0.842230, -0.223840,
		-0.867522, -0.447441, -0.217260,
		39.351612, 32.529106, 48.472252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083160, 32.445148, 48.105362>,  <39.958878, 32.842312, 48.624332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083160, 32.445148, 48.105362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686604, 32.471973, 48.060394>,  <39.448669, 32.488068, 48.033413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686604, 32.471973, 48.060394>,  <40.083160, 32.445148, 48.105362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686604, 32.471973, 48.060394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120264, 0.127448, -0.984527,
		-0.051699, -0.989575, -0.134417,
		-0.991395, 0.067064, -0.112421,
		39.389187, 32.492092, 48.026669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847633, 32.004738, 47.577763>,  <40.083160, 32.445148, 48.105362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847633, 32.004738, 47.577763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525974, 32.239368, 47.616295>,  <39.332981, 32.380146, 47.639416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525974, 32.239368, 47.616295>,  <39.847633, 32.004738, 47.577763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525974, 32.239368, 47.616295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004108, 0.167536, -0.985857,
		-0.594419, -0.792376, -0.137133,
		-0.804145, 0.586576, 0.096331,
		39.284729, 32.415340, 47.645195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350716, 31.755043, 47.064270>,  <39.847633, 32.004738, 47.577763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350716, 31.755043, 47.064270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231140, 32.124180, 47.161427>,  <39.159393, 32.345661, 47.219723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231140, 32.124180, 47.161427>,  <39.350716, 31.755043, 47.064270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231140, 32.124180, 47.161427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036357, 0.265364, -0.963463,
		-0.953578, -0.279189, -0.112881,
		-0.298943, 0.922841, 0.242895,
		39.141457, 32.401031, 47.234295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750195, 31.893435, 46.680626>,  <39.350716, 31.755043, 47.064270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750195, 31.893435, 46.680626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894146, 32.255493, 46.771126>,  <38.980518, 32.472729, 46.825428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894146, 32.255493, 46.771126>,  <38.750195, 31.893435, 46.680626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894146, 32.255493, 46.771126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060251, 0.264542, -0.962490,
		-0.931050, 0.332751, 0.149740,
		0.359882, 0.905149, 0.226254,
		39.002110, 32.527039, 46.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006294, 31.974722, 46.800758>,  <38.750195, 31.893435, 46.680626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006294, 31.974722, 46.800758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632088, 31.836401, 46.829674>,  <37.407562, 31.753408, 46.847023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632088, 31.836401, 46.829674>,  <38.006294, 31.974722, 46.800758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632088, 31.836401, 46.829674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226837, -0.431123, 0.873314,
		-0.270828, 0.833400, 0.481764,
		-0.935520, -0.345800, 0.072285,
		37.351433, 31.732660, 46.851360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689888, 32.105827, 47.443954>,  <38.006294, 31.974722, 46.800758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689888, 32.105827, 47.443954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.436840, 31.817738, 47.330063>,  <37.285011, 31.644884, 47.261726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.436840, 31.817738, 47.330063>,  <37.689888, 32.105827, 47.443954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436840, 31.817738, 47.330063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119891, -0.454290, 0.882750,
		-0.765126, 0.524308, 0.373741,
		-0.632620, -0.720223, -0.284730,
		37.247055, 31.601671, 47.244644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270164, 32.031860, 48.025501>,  <37.689888, 32.105827, 47.443954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270164, 32.031860, 48.025501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222462, 31.684927, 47.832207>,  <37.193840, 31.476767, 47.716232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222462, 31.684927, 47.832207>,  <37.270164, 32.031860, 48.025501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222462, 31.684927, 47.832207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022944, -0.484168, 0.874675,
		-0.992598, 0.115399, 0.037840,
		-0.119257, -0.867332, -0.483232,
		37.186684, 31.424726, 47.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787491, 31.600214, 48.439312>,  <37.270164, 32.031860, 48.025501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787491, 31.600214, 48.439312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924164, 31.331867, 48.176041>,  <37.006168, 31.170858, 48.018078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924164, 31.331867, 48.176041>,  <36.787491, 31.600214, 48.439312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924164, 31.331867, 48.176041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020044, -0.694962, 0.718767,
		-0.939603, -0.258780, -0.224006,
		0.341678, -0.670866, -0.658175,
		37.026669, 31.130608, 47.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346886, 31.044399, 48.602585>,  <36.787491, 31.600214, 48.439312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346886, 31.044399, 48.602585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663120, 30.897118, 48.406872>,  <36.852859, 30.808748, 48.289444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.663120, 30.897118, 48.406872>,  <36.346886, 31.044399, 48.602585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663120, 30.897118, 48.406872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006937, -0.804359, 0.594103,
		-0.612311, -0.466296, -0.638470,
		0.790587, -0.368204, -0.489284,
		36.900295, 30.786655, 48.260086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164528, 30.364094, 48.443630>,  <36.346886, 31.044399, 48.602585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164528, 30.364094, 48.443630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563576, 30.391439, 48.440186>,  <36.803005, 30.407846, 48.438118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.563576, 30.391439, 48.440186>,  <36.164528, 30.364094, 48.443630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563576, 30.391439, 48.440186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052038, -0.665603, 0.744490,
		0.045162, -0.743169, -0.667578,
		0.997624, 0.068362, -0.008613,
		36.862862, 30.411947, 48.437603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470917, 29.648714, 48.346390>,  <36.164528, 30.364094, 48.443630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470917, 29.648714, 48.346390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715954, 29.899822, 48.538486>,  <36.862976, 30.050488, 48.653744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715954, 29.899822, 48.538486>,  <36.470917, 29.648714, 48.346390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715954, 29.899822, 48.538486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134757, -0.681652, 0.719160,
		0.778825, -0.375838, -0.502173,
		0.612595, 0.627771, 0.480240,
		36.899731, 30.088154, 48.682560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261173, 29.111197, 47.885113>,  <36.470917, 29.648714, 48.346390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261173, 29.111197, 47.885113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062992, 28.768194, 47.829670>,  <35.944084, 28.562393, 47.796406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062992, 28.768194, 47.829670>,  <36.261173, 29.111197, 47.885113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062992, 28.768194, 47.829670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049218, 0.187022, -0.981122,
		0.867239, -0.479279, -0.134865,
		-0.495454, -0.857505, -0.138604,
		35.914356, 28.510942, 47.788090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499496, 28.857363, 47.244461>,  <36.261173, 29.111197, 47.885113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499496, 28.857363, 47.244461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152885, 28.668278, 47.308552>,  <35.944920, 28.554827, 47.347004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152885, 28.668278, 47.308552>,  <36.499496, 28.857363, 47.244461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152885, 28.668278, 47.308552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234424, 0.102040, -0.966764,
		0.440653, -0.875288, -0.199236,
		-0.866528, -0.472713, 0.160225,
		35.892925, 28.526464, 47.356621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444778, 28.223782, 46.757202>,  <36.499496, 28.857363, 47.244461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444778, 28.223782, 46.757202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086510, 28.368732, 46.860310>,  <35.871548, 28.455704, 46.922176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086510, 28.368732, 46.860310>,  <36.444778, 28.223782, 46.757202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086510, 28.368732, 46.860310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215172, 0.154132, -0.964336,
		-0.389185, -0.919198, -0.060079,
		-0.895676, 0.362378, 0.257771,
		35.817806, 28.477446, 46.937641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001595, 27.865765, 46.313351>,  <36.444778, 28.223782, 46.757202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001595, 27.865765, 46.313351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776508, 28.174675, 46.431297>,  <35.641457, 28.360022, 46.502064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.776508, 28.174675, 46.431297>,  <36.001595, 27.865765, 46.313351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776508, 28.174675, 46.431297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180200, 0.233520, -0.955508,
		-0.806770, -0.590814, 0.007758,
		-0.562716, 0.772274, 0.294862,
		35.607693, 28.406357, 46.519756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519146, 27.920757, 45.727825>,  <36.001595, 27.865765, 46.313351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519146, 27.920757, 45.727825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431377, 28.242331, 45.948929>,  <35.378716, 28.435274, 46.081593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431377, 28.242331, 45.948929>,  <35.519146, 27.920757, 45.727825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431377, 28.242331, 45.948929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283102, 0.489724, -0.824635,
		-0.933653, -0.337430, 0.120139,
		-0.219422, 0.803935, 0.552759,
		35.365551, 28.483511, 46.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811668, 28.167694, 45.570385>,  <35.519146, 27.920757, 45.727825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811668, 28.167694, 45.570385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985394, 28.486233, 45.738766>,  <35.089630, 28.677357, 45.839794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985394, 28.486233, 45.738766>,  <34.811668, 28.167694, 45.570385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985394, 28.486233, 45.738766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195270, 0.539456, -0.819058,
		-0.879340, 0.273531, 0.389798,
		0.434317, 0.796346, 0.420952,
		35.115688, 28.725136, 45.865051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380890, 28.652952, 45.477470>,  <34.811668, 28.167694, 45.570385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380890, 28.652952, 45.477470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739151, 28.828833, 45.504227>,  <34.954105, 28.934361, 45.520279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739151, 28.828833, 45.504227>,  <34.380890, 28.652952, 45.477470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739151, 28.828833, 45.504227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165402, 0.468906, -0.867623,
		-0.412860, 0.766022, 0.492703,
		0.895650, 0.439701, 0.066891,
		35.007847, 28.960743, 45.524296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.155945, 27.249935, 48.360596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.142757, 27.649158, 48.381718>,  <40.134846, 27.888693, 48.394390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.142757, 27.649158, 48.381718>,  <40.155945, 27.249935, 48.360596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142757, 27.649158, 48.381718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161991, 0.046802, -0.985682,
		-0.986242, -0.041048, 0.160134,
		-0.032966, 0.998060, 0.052808,
		40.132866, 27.948576, 48.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457619, 27.700409, 48.124256>,  <40.155945, 27.249935, 48.360596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457619, 27.700409, 48.124256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.801060, 27.891888, 48.050880>,  <40.007126, 28.006775, 48.006855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.801060, 27.891888, 48.050880>,  <39.457619, 27.700409, 48.124256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801060, 27.891888, 48.050880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206314, -0.004897, -0.978473,
		-0.469292, 0.877965, 0.094558,
		0.858603, 0.478699, -0.183435,
		40.058640, 28.035498, 47.995850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340107, 27.954283, 47.486057>,  <39.457619, 27.700409, 48.124256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340107, 27.954283, 47.486057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.730072, 28.035044, 47.523548>,  <39.964050, 28.083500, 47.546043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.730072, 28.035044, 47.523548>,  <39.340107, 27.954283, 47.486057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730072, 28.035044, 47.523548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050133, 0.211077, -0.976183,
		-0.216879, 0.956390, 0.195659,
		0.974910, 0.201905, 0.093725,
		40.022545, 28.095615, 47.551666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419777, 28.636822, 47.400181>,  <39.340107, 27.954283, 47.486057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419777, 28.636822, 47.400181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.757313, 28.438841, 47.317280>,  <39.959835, 28.320053, 47.267540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.757313, 28.438841, 47.317280>,  <39.419777, 28.636822, 47.400181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757313, 28.438841, 47.317280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162227, 0.132848, -0.977770,
		0.511481, 0.858706, 0.031808,
		0.843842, -0.494951, -0.207255,
		40.010464, 28.290356, 47.255104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682446, 29.049803, 46.874329>,  <39.419777, 28.636822, 47.400181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682446, 29.049803, 46.874329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.869255, 28.696764, 46.852741>,  <39.981342, 28.484941, 46.839790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.869255, 28.696764, 46.852741>,  <39.682446, 29.049803, 46.874329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869255, 28.696764, 46.852741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031330, 0.077513, -0.996499,
		0.883690, 0.463697, 0.063852,
		0.467023, -0.882597, -0.053970,
		40.009361, 28.431986, 46.836552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233002, 29.087282, 46.411270>,  <39.682446, 29.049803, 46.874329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233002, 29.087282, 46.411270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.190781, 28.689606, 46.419704>,  <40.165447, 28.451000, 46.424763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.190781, 28.689606, 46.419704>,  <40.233002, 29.087282, 46.411270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190781, 28.689606, 46.419704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036034, -0.025009, -0.999038,
		0.993761, -0.104687, 0.038464,
		-0.105548, -0.994191, 0.021081,
		40.159115, 28.391348, 46.426029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773056, 28.900702, 45.939240>,  <40.233002, 29.087282, 46.411270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773056, 28.900702, 45.939240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.492832, 28.618444, 45.981724>,  <40.324696, 28.449091, 46.007214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.492832, 28.618444, 45.981724>,  <40.773056, 28.900702, 45.939240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492832, 28.618444, 45.981724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078512, -0.224156, -0.971386,
		0.709259, -0.672177, 0.212436,
		-0.700562, -0.705643, 0.106211,
		40.282665, 28.406752, 46.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096756, 28.261148, 45.702477>,  <40.773056, 28.900702, 45.939240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096756, 28.261148, 45.702477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.698917, 28.221209, 45.691048>,  <40.460217, 28.197245, 45.684189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.698917, 28.221209, 45.691048>,  <41.096756, 28.261148, 45.702477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698917, 28.221209, 45.691048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048334, -0.201474, -0.978301,
		0.091927, -0.974391, 0.205211,
		-0.994592, -0.099851, -0.028575,
		40.400539, 28.191254, 45.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026184, 27.873936, 45.147747>,  <41.096756, 28.261148, 45.702477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026184, 27.873936, 45.147747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.634525, 27.940144, 45.194874>,  <40.399532, 27.979868, 45.223152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.634525, 27.940144, 45.194874>,  <41.026184, 27.873936, 45.147747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634525, 27.940144, 45.194874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156425, -0.244093, -0.957053,
		-0.129650, -0.955522, 0.264893,
		-0.979144, 0.165518, 0.117821,
		40.340782, 27.989799, 45.230221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714767, 27.319874, 44.831257>,  <41.026184, 27.873936, 45.147747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714767, 27.319874, 44.831257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.433147, 27.599566, 44.880890>,  <40.264175, 27.767380, 44.910667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.433147, 27.599566, 44.880890>,  <40.714767, 27.319874, 44.831257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433147, 27.599566, 44.880890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398817, -0.244740, -0.883769,
		-0.587588, -0.671702, 0.451172,
		-0.704049, 0.699228, 0.124080,
		40.221931, 27.809334, 44.918114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035767, 27.027243, 44.601643>,  <40.714767, 27.319874, 44.831257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035767, 27.027243, 44.601643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.966572, 27.420931, 44.586754>,  <39.925056, 27.657145, 44.577820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.966572, 27.420931, 44.586754>,  <40.035767, 27.027243, 44.601643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966572, 27.420931, 44.586754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268035, -0.083410, -0.959792,
		-0.947752, -0.156054, 0.278234,
		-0.172987, 0.984221, -0.037224,
		39.914677, 27.716196, 44.575588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448044, 27.164831, 44.187225>,  <40.035767, 27.027243, 44.601643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448044, 27.164831, 44.187225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683487, 27.488125, 44.194088>,  <39.824753, 27.682100, 44.198204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.683487, 27.488125, 44.194088>,  <39.448044, 27.164831, 44.187225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683487, 27.488125, 44.194088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047750, 0.055942, -0.997292,
		-0.807005, 0.586198, 0.071521,
		0.588611, 0.808234, 0.017155,
		39.860069, 27.730595, 44.199234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682510, 27.466265, 44.105484>,  <39.448044, 27.164831, 44.187225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682510, 27.466265, 44.105484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.370411, 27.230371, 44.022133>,  <38.183151, 27.088835, 43.972122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.370411, 27.230371, 44.022133>,  <38.682510, 27.466265, 44.105484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370411, 27.230371, 44.022133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073454, -0.244450, 0.966876,
		-0.621138, 0.769712, 0.147414,
		-0.780252, -0.589735, -0.208376,
		38.136337, 27.053452, 43.959621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220173, 27.543175, 44.560936>,  <38.682510, 27.466265, 44.105484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220173, 27.543175, 44.560936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.112755, 27.178917, 44.435326>,  <38.048306, 26.960361, 44.359959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.112755, 27.178917, 44.435326>,  <38.220173, 27.543175, 44.560936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112755, 27.178917, 44.435326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107950, -0.295497, 0.949225,
		-0.957200, 0.288805, -0.018951,
		-0.268541, -0.910644, -0.314026,
		38.032192, 26.905724, 44.341118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611149, 27.324883, 44.926678>,  <38.220173, 27.543175, 44.560936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611149, 27.324883, 44.926678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.779999, 26.985825, 44.798107>,  <37.881310, 26.782391, 44.720966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.779999, 26.985825, 44.798107>,  <37.611149, 27.324883, 44.926678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779999, 26.985825, 44.798107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096792, -0.394680, 0.913706,
		-0.901357, -0.354584, -0.248648,
		0.422122, -0.847643, -0.321426,
		37.906635, 26.731531, 44.701679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140339, 26.761923, 45.245888>,  <37.611149, 27.324883, 44.926678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140339, 26.761923, 45.245888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.505573, 26.639759, 45.137810>,  <37.724712, 26.566462, 45.072964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.505573, 26.639759, 45.137810>,  <37.140339, 26.761923, 45.245888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505573, 26.639759, 45.137810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225278, -0.174494, 0.958541,
		-0.339894, -0.936097, -0.090526,
		0.913084, -0.305409, -0.270192,
		37.779499, 26.548136, 45.056751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212494, 26.156460, 45.575737>,  <37.140339, 26.761923, 45.245888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212494, 26.156460, 45.575737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600147, 26.217894, 45.498604>,  <37.832741, 26.254753, 45.452324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.600147, 26.217894, 45.498604>,  <37.212494, 26.156460, 45.575737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600147, 26.217894, 45.498604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226208, -0.243065, 0.943265,
		0.097997, -0.957774, -0.270305,
		0.969137, 0.153583, -0.192836,
		37.890888, 26.263968, 45.440754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673714, 25.525826, 45.733852>,  <37.212494, 26.156460, 45.575737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673714, 25.525826, 45.733852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.924610, 25.837278, 45.740826>,  <38.075146, 26.024151, 45.745010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.924610, 25.837278, 45.740826>,  <37.673714, 25.525826, 45.733852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924610, 25.837278, 45.740826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193044, -0.177112, 0.965073,
		0.754523, -0.601967, -0.261402,
		0.627239, 0.778632, 0.017429,
		38.112782, 26.070868, 45.746056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231567, 25.263557, 46.075630>,  <37.673714, 25.525826, 45.733852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231567, 25.263557, 46.075630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238712, 25.662907, 46.097305>,  <38.243000, 25.902515, 46.110310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238712, 25.662907, 46.097305>,  <38.231567, 25.263557, 46.075630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238712, 25.662907, 46.097305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092535, -0.055613, 0.994155,
		0.995549, -0.012743, -0.093378,
		0.017862, 0.998371, 0.054186,
		38.244072, 25.962418, 46.113560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770817, 25.342176, 46.478127>,  <38.231567, 25.263557, 46.075630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770817, 25.342176, 46.478127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580750, 25.693668, 46.496243>,  <38.466709, 25.904564, 46.507111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580750, 25.693668, 46.496243>,  <38.770817, 25.342176, 46.478127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580750, 25.693668, 46.496243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127665, 0.017922, 0.991655,
		0.870586, 0.476983, -0.120699,
		-0.475166, 0.878730, 0.045291,
		38.438198, 25.957287, 46.509830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247143, 25.815145, 46.922264>,  <38.770817, 25.342176, 46.478127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247143, 25.815145, 46.922264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.875893, 25.963955, 46.916855>,  <38.653141, 26.053242, 46.913609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.875893, 25.963955, 46.916855>,  <39.247143, 25.815145, 46.922264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875893, 25.963955, 46.916855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023707, 0.095319, 0.995165,
		0.371516, 0.923315, -0.097287,
		-0.928124, 0.372026, -0.013524,
		38.597454, 26.075563, 46.912796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330887, 26.177830, 47.468369>,  <39.247143, 25.815145, 46.922264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330887, 26.177830, 47.468369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934288, 26.177486, 47.416317>,  <38.696327, 26.177280, 47.385086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.934288, 26.177486, 47.416317>,  <39.330887, 26.177830, 47.468369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934288, 26.177486, 47.416317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129418, -0.098213, 0.986714,
		-0.013630, 0.995165, 0.097267,
		-0.991497, -0.000861, -0.130130,
		38.636841, 26.177229, 47.377277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031677, 26.781122, 47.842079>,  <39.330887, 26.177830, 47.468369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031677, 26.781122, 47.842079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.771069, 26.481474, 47.794182>,  <38.614704, 26.301685, 47.765446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.771069, 26.481474, 47.794182>,  <39.031677, 26.781122, 47.842079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771069, 26.481474, 47.794182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077750, -0.091069, 0.992805,
		-0.754635, 0.656144, 0.001089,
		-0.651522, -0.749121, -0.119739,
		38.575611, 26.256739, 47.758259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464775, 26.996431, 48.255230>,  <39.031677, 26.781122, 47.842079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464775, 26.996431, 48.255230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391762, 26.609013, 48.187588>,  <38.347954, 26.376562, 48.147003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391762, 26.609013, 48.187588>,  <38.464775, 26.996431, 48.255230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391762, 26.609013, 48.187588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137600, -0.145139, 0.979796,
		-0.973523, 0.202116, -0.106779,
		-0.182535, -0.968547, -0.169107,
		38.337002, 26.318449, 48.136856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848808, 26.808298, 48.606602>,  <38.464775, 26.996431, 48.255230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848808, 26.808298, 48.606602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060783, 26.472975, 48.555363>,  <38.187969, 26.271780, 48.524620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.060783, 26.472975, 48.555363>,  <37.848808, 26.808298, 48.606602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060783, 26.472975, 48.555363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186320, -0.262460, 0.946784,
		-0.827318, -0.477865, -0.295280,
		0.529934, -0.838308, -0.128102,
		38.219765, 26.221483, 48.516933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429295, 26.206888, 48.713558>,  <37.848808, 26.808298, 48.606602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429295, 26.206888, 48.713558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.812527, 26.111593, 48.777206>,  <38.042465, 26.054417, 48.815395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.812527, 26.111593, 48.777206>,  <37.429295, 26.206888, 48.713558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812527, 26.111593, 48.777206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214967, -0.230656, 0.948992,
		-0.189381, -0.943420, -0.272201,
		0.958084, -0.238235, 0.159122,
		38.099953, 26.040121, 48.824944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746033, 26.354088, 49.076424>,  <37.429295, 26.206888, 48.713558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746033, 26.354088, 49.076424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528080, 26.514738, 49.370853>,  <36.397308, 26.611128, 49.547512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.528080, 26.514738, 49.370853>,  <36.746033, 26.354088, 49.076424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528080, 26.514738, 49.370853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325821, 0.707441, -0.627191,
		-0.772624, -0.581571, -0.254612,
		-0.544879, 0.401625, 0.736073,
		36.364616, 26.635225, 49.591675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072311, 26.436836, 48.811192>,  <36.746033, 26.354088, 49.076424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072311, 26.436836, 48.811192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.114971, 26.698429, 49.110775>,  <36.140568, 26.855385, 49.290524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.114971, 26.698429, 49.110775>,  <36.072311, 26.436836, 48.811192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114971, 26.698429, 49.110775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393373, 0.719544, -0.572289,
		-0.913173, -0.233586, 0.333995,
		0.106645, 0.653983, 0.748954,
		36.146965, 26.894625, 49.335461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414562, 26.784271, 48.875183>,  <36.072311, 26.436836, 48.811192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414562, 26.784271, 48.875183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706863, 27.006186, 49.034286>,  <35.882244, 27.139334, 49.129749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706863, 27.006186, 49.034286>,  <35.414562, 26.784271, 48.875183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706863, 27.006186, 49.034286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272990, 0.771553, -0.574615,
		-0.625680, 0.311318, 0.715267,
		0.730754, 0.554786, 0.397758,
		35.926090, 27.172621, 49.153614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138252, 27.405119, 49.013077>,  <35.414562, 26.784271, 48.875183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138252, 27.405119, 49.013077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532558, 27.472322, 49.010410>,  <35.769142, 27.512646, 49.008812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532558, 27.472322, 49.010410>,  <35.138252, 27.405119, 49.013077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532558, 27.472322, 49.010410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137582, 0.783180, -0.606383,
		-0.096660, 0.598667, 0.795145,
		0.985763, 0.168010, -0.006663,
		35.828289, 27.522726, 49.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190247, 28.112530, 49.221260>,  <35.138252, 27.405119, 49.013077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190247, 28.112530, 49.221260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530262, 28.002480, 49.041603>,  <35.734272, 27.936449, 48.933807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.530262, 28.002480, 49.041603>,  <35.190247, 28.112530, 49.221260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530262, 28.002480, 49.041603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100034, 0.752884, -0.650506,
		0.517127, 0.597888, 0.612462,
		0.850043, -0.275128, -0.449146,
		35.785275, 27.919941, 48.906860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428818, 28.709049, 48.910152>,  <35.190247, 28.112530, 49.221260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428818, 28.709049, 48.910152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636608, 28.426746, 48.717464>,  <35.761280, 28.257364, 48.601852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.636608, 28.426746, 48.717464>,  <35.428818, 28.709049, 48.910152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636608, 28.426746, 48.717464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017844, 0.572591, -0.819647,
		0.854301, 0.417188, 0.310039,
		0.519472, -0.705757, -0.481721,
		35.792450, 28.215019, 48.572948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993191, 29.119770, 48.570244>,  <35.428818, 28.709049, 48.910152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993191, 29.119770, 48.570244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945881, 28.761084, 48.399639>,  <35.917496, 28.545872, 48.297276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945881, 28.761084, 48.399639>,  <35.993191, 29.119770, 48.570244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945881, 28.761084, 48.399639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082170, 0.436893, -0.895753,
		0.989576, -0.070896, -0.125355,
		-0.118272, -0.896715, -0.426513,
		35.910400, 28.492069, 48.271687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648262, 29.179161, 48.881413>,  <35.993191, 29.119770, 48.570244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648262, 29.179161, 48.881413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814644, 29.530857, 48.974293>,  <36.914474, 29.741875, 49.030022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.814644, 29.530857, 48.974293>,  <36.648262, 29.179161, 48.881413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814644, 29.530857, 48.974293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219149, -0.344730, 0.912762,
		0.882583, -0.328785, -0.336078,
		0.415959, 0.879239, 0.232199,
		36.939430, 29.794628, 49.043953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232067, 28.994743, 49.075108>,  <36.648262, 29.179161, 48.881413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232067, 28.994743, 49.075108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.191120, 29.356047, 49.241791>,  <37.166553, 29.572828, 49.341801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.191120, 29.356047, 49.241791>,  <37.232067, 28.994743, 49.075108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191120, 29.356047, 49.241791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336986, -0.362647, 0.868866,
		0.935928, 0.229368, -0.267262,
		-0.102368, 0.903260, 0.416705,
		37.160408, 29.627024, 49.366802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777470, 29.058985, 49.443550>,  <37.232067, 28.994743, 49.075108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777470, 29.058985, 49.443550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516491, 29.308750, 49.615326>,  <37.359905, 29.458611, 49.718391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516491, 29.308750, 49.615326>,  <37.777470, 29.058985, 49.443550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516491, 29.308750, 49.615326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453763, -0.131977, 0.881295,
		0.606971, 0.769862, -0.197229,
		-0.652446, 0.624415, 0.429441,
		37.320759, 29.496075, 49.744160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297840, 29.517874, 49.876404>,  <37.777470, 29.058985, 49.443550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297840, 29.517874, 49.876404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923389, 29.558765, 50.010994>,  <37.698719, 29.583300, 50.091747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.923389, 29.558765, 50.010994>,  <38.297840, 29.517874, 49.876404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923389, 29.558765, 50.010994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339921, 0.017917, 0.940283,
		0.090094, 0.994600, -0.051522,
		-0.936128, 0.102228, 0.336471,
		37.642551, 29.589434, 50.111935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381248, 30.128902, 50.421410>,  <38.297840, 29.517874, 49.876404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381248, 30.128902, 50.421410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053268, 29.916779, 50.507618>,  <37.856480, 29.789505, 50.559341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053268, 29.916779, 50.507618>,  <38.381248, 30.128902, 50.421410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053268, 29.916779, 50.507618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217830, 0.059114, 0.974195,
		-0.529363, 0.845742, 0.067046,
		-0.819954, -0.530307, 0.215521,
		37.807281, 29.757687, 50.572273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114040, 30.458876, 51.042286>,  <38.381248, 30.128902, 50.421410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114040, 30.458876, 51.042286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.933636, 30.101885, 51.038719>,  <37.825394, 29.887691, 51.036579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.933636, 30.101885, 51.038719>,  <38.114040, 30.458876, 51.042286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933636, 30.101885, 51.038719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305830, -0.163916, 0.937870,
		-0.838487, 0.420261, 0.346873,
		-0.451008, -0.892476, -0.008913,
		37.798332, 29.834143, 51.036045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688335, 30.367889, 51.693333>,  <38.114040, 30.458876, 51.042286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688335, 30.367889, 51.693333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.786255, 30.001642, 51.565762>,  <37.845009, 29.781893, 51.489220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.786255, 30.001642, 51.565762>,  <37.688335, 30.367889, 51.693333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786255, 30.001642, 51.565762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181640, -0.279800, 0.942719,
		-0.952407, -0.288709, 0.097817,
		0.244802, -0.915620, -0.318924,
		37.859695, 29.726955, 51.470085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317356, 29.930946, 52.154526>,  <37.688335, 30.367889, 51.693333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317356, 29.930946, 52.154526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.589821, 29.688324, 51.990524>,  <37.753300, 29.542749, 51.892124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.589821, 29.688324, 51.990524>,  <37.317356, 29.930946, 52.154526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589821, 29.688324, 51.990524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143464, -0.438572, 0.887171,
		-0.717936, -0.663131, -0.211721,
		0.681166, -0.606557, -0.410002,
		37.794170, 29.506357, 51.867523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223946, 29.275629, 52.477543>,  <37.317356, 29.930946, 52.154526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223946, 29.275629, 52.477543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598392, 29.243382, 52.340611>,  <37.823059, 29.224033, 52.258450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.598392, 29.243382, 52.340611>,  <37.223946, 29.275629, 52.477543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598392, 29.243382, 52.340611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226000, -0.607919, 0.761156,
		-0.269475, -0.789896, -0.550861,
		0.936113, -0.080618, -0.342335,
		37.879227, 29.219196, 52.237911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.752827, 34.264484, 37.110004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097523, 34.074860, 37.182308>,  <38.304340, 33.961082, 37.225689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097523, 34.074860, 37.182308>,  <37.752827, 34.264484, 37.110004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097523, 34.074860, 37.182308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343921, -0.283890, 0.895056,
		-0.372998, -0.833469, -0.407679,
		0.861737, -0.474064, 0.180757,
		38.356045, 33.932640, 37.236534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689209, 33.573380, 37.358402>,  <37.752827, 34.264484, 37.110004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689209, 33.573380, 37.358402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048996, 33.685879, 37.492188>,  <38.264866, 33.753380, 37.572460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048996, 33.685879, 37.492188>,  <37.689209, 33.573380, 37.358402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048996, 33.685879, 37.492188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249418, -0.298052, 0.921388,
		0.358827, -0.912175, -0.197938,
		0.899463, 0.281249, 0.334463,
		38.318836, 33.770252, 37.592525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088142, 33.002892, 37.662376>,  <37.689209, 33.573380, 37.358402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088142, 33.002892, 37.662376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224106, 33.338112, 37.833084>,  <38.305683, 33.539246, 37.935509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224106, 33.338112, 37.833084>,  <38.088142, 33.002892, 37.662376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224106, 33.338112, 37.833084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332132, -0.317575, 0.888164,
		0.879858, -0.443639, 0.170396,
		0.339910, 0.838051, 0.426768,
		38.326080, 33.589527, 37.961113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458160, 32.824047, 38.286049>,  <38.088142, 33.002892, 37.662376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458160, 32.824047, 38.286049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387714, 33.215481, 38.328674>,  <38.345448, 33.450340, 38.354248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387714, 33.215481, 38.328674>,  <38.458160, 32.824047, 38.286049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387714, 33.215481, 38.328674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444653, -0.175670, 0.878307,
		0.878218, 0.107301, 0.466069,
		-0.176118, 0.978584, 0.106564,
		38.334881, 33.509056, 38.360645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666080, 33.045982, 38.938946>,  <38.458160, 32.824047, 38.286049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666080, 33.045982, 38.938946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423695, 33.339813, 38.816826>,  <38.278263, 33.516109, 38.743553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423695, 33.339813, 38.816826>,  <38.666080, 33.045982, 38.938946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423695, 33.339813, 38.816826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439142, 0.011109, 0.898349,
		0.663295, 0.678439, 0.315850,
		-0.605966, 0.734573, -0.305300,
		38.241905, 33.560184, 38.725235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747784, 33.535851, 39.435612>,  <38.666080, 33.045982, 38.938946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747784, 33.535851, 39.435612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393326, 33.587399, 39.257561>,  <38.180653, 33.618328, 39.150730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393326, 33.587399, 39.257561>,  <38.747784, 33.535851, 39.435612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393326, 33.587399, 39.257561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424682, 0.158566, 0.891348,
		0.185448, 0.978903, -0.085785,
		-0.886146, 0.128867, -0.445128,
		38.127483, 33.626060, 39.124023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513775, 34.143131, 39.772255>,  <38.747784, 33.535851, 39.435612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513775, 34.143131, 39.772255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196022, 33.951023, 39.623501>,  <38.005371, 33.835758, 39.534248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196022, 33.951023, 39.623501>,  <38.513775, 34.143131, 39.772255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196022, 33.951023, 39.623501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462769, 0.081955, 0.882682,
		-0.393451, 0.873282, -0.287360,
		-0.794381, -0.480274, -0.371882,
		37.957706, 33.806942, 39.511936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868366, 34.489826, 40.106422>,  <38.513775, 34.143131, 39.772255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868366, 34.489826, 40.106422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742035, 34.135906, 39.969376>,  <37.666237, 33.923553, 39.887146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742035, 34.135906, 39.969376>,  <37.868366, 34.489826, 40.106422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742035, 34.135906, 39.969376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511627, -0.145296, 0.846834,
		-0.799058, 0.442744, -0.406798,
		-0.315824, -0.884798, -0.342619,
		37.647289, 33.870468, 39.866589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150398, 34.527382, 40.265873>,  <37.868366, 34.489826, 40.106422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150398, 34.527382, 40.265873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249634, 34.148422, 40.184990>,  <37.309174, 33.921047, 40.136459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249634, 34.148422, 40.184990>,  <37.150398, 34.527382, 40.265873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249634, 34.148422, 40.184990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416459, -0.292762, 0.860728,
		-0.874651, -0.129324, -0.467183,
		0.248087, -0.947399, -0.202207,
		37.324059, 33.864201, 40.124329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584293, 34.127090, 40.452171>,  <37.150398, 34.527382, 40.265873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584293, 34.127090, 40.452171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876133, 33.853779, 40.463593>,  <37.051235, 33.689793, 40.470444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876133, 33.853779, 40.463593>,  <36.584293, 34.127090, 40.452171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876133, 33.853779, 40.463593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351497, -0.338857, 0.872712,
		-0.586630, -0.646766, -0.487400,
		0.729600, -0.683278, 0.028552,
		37.095013, 33.648796, 40.472157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284882, 33.344299, 40.605911>,  <36.584293, 34.127090, 40.452171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284882, 33.344299, 40.605911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669815, 33.303429, 40.706684>,  <36.900776, 33.278908, 40.767147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669815, 33.303429, 40.706684>,  <36.284882, 33.344299, 40.605911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669815, 33.303429, 40.706684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266132, -0.543374, 0.796190,
		0.055545, -0.833250, -0.550100,
		0.962335, -0.102175, 0.251936,
		36.958515, 33.272778, 40.782265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372662, 32.597225, 40.769676>,  <36.284882, 33.344299, 40.605911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372662, 32.597225, 40.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649895, 32.834423, 40.933628>,  <36.816235, 32.976742, 41.032001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649895, 32.834423, 40.933628>,  <36.372662, 32.597225, 40.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649895, 32.834423, 40.933628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181860, -0.406373, 0.895426,
		0.697545, -0.695141, -0.173807,
		0.693078, 0.592992, 0.409882,
		36.857819, 33.012321, 41.056591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546040, 32.171368, 40.182732>,  <36.372662, 32.597225, 40.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546040, 32.171368, 40.182732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351055, 31.822872, 40.159698>,  <36.234062, 31.613773, 40.145878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351055, 31.822872, 40.159698>,  <36.546040, 32.171368, 40.182732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351055, 31.822872, 40.159698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182345, 0.166069, -0.969108,
		0.853890, -0.461908, -0.239820,
		-0.487466, -0.871242, -0.057578,
		36.204815, 31.561501, 40.142426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799736, 31.814108, 39.539097>,  <36.546040, 32.171368, 40.182732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799736, 31.814108, 39.539097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430481, 31.695507, 39.636997>,  <36.208927, 31.624348, 39.695740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430481, 31.695507, 39.636997>,  <36.799736, 31.814108, 39.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430481, 31.695507, 39.636997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305326, 0.178493, -0.935369,
		0.233650, -0.938204, -0.255303,
		-0.923138, -0.296500, 0.244753,
		36.153538, 31.606558, 39.710423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773392, 31.284647, 39.089001>,  <36.799736, 31.814108, 39.539097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773392, 31.284647, 39.089001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384090, 31.323549, 39.172253>,  <36.150509, 31.346889, 39.222202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384090, 31.323549, 39.172253>,  <36.773392, 31.284647, 39.089001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384090, 31.323549, 39.172253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206301, 0.028582, -0.978071,
		-0.101071, -0.994849, -0.007753,
		-0.973255, 0.097256, 0.208128,
		36.092113, 31.352726, 39.234692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517128, 30.840536, 38.599163>,  <36.773392, 31.284647, 39.089001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517128, 30.840536, 38.599163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215828, 31.072803, 38.722733>,  <36.035046, 31.212164, 38.796875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215828, 31.072803, 38.722733>,  <36.517128, 30.840536, 38.599163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215828, 31.072803, 38.722733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467701, -0.142635, -0.872302,
		-0.462454, -0.801549, 0.379020,
		-0.753254, 0.580667, 0.308923,
		35.989853, 31.247004, 38.815411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891346, 30.453735, 38.324162>,  <36.517128, 30.840536, 38.599163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891346, 30.453735, 38.324162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770287, 30.829973, 38.385719>,  <35.697651, 31.055716, 38.422653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770287, 30.829973, 38.385719>,  <35.891346, 30.453735, 38.324162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770287, 30.829973, 38.385719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680031, -0.099966, -0.726337,
		-0.667806, -0.324475, 0.669889,
		-0.302644, 0.940597, 0.153895,
		35.679493, 31.112152, 38.431889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117535, 30.453358, 38.392658>,  <35.891346, 30.453735, 38.324162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117535, 30.453358, 38.392658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237652, 30.822582, 38.296505>,  <35.309723, 31.044117, 38.238811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237652, 30.822582, 38.296505>,  <35.117535, 30.453358, 38.392658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237652, 30.822582, 38.296505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677034, 0.028744, -0.735390,
		-0.671900, 0.383579, 0.633575,
		0.300292, 0.923060, -0.240383,
		35.327740, 31.099501, 38.224388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543362, 30.793116, 38.343769>,  <35.117535, 30.453358, 38.392658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543362, 30.793116, 38.343769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801052, 31.016325, 38.134548>,  <34.955666, 31.150249, 38.009014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801052, 31.016325, 38.134548>,  <34.543362, 30.793116, 38.343769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801052, 31.016325, 38.134548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671795, 0.085936, -0.735736,
		-0.365607, 0.825365, 0.430238,
		0.644223, 0.558022, -0.523057,
		34.994320, 31.183731, 37.977631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137135, 31.377329, 38.070850>,  <34.543362, 30.793116, 38.343769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137135, 31.377329, 38.070850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468678, 31.345980, 37.849270>,  <34.667603, 31.327171, 37.716324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468678, 31.345980, 37.849270>,  <34.137135, 31.377329, 38.070850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468678, 31.345980, 37.849270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538320, 0.157919, -0.827812,
		0.152355, 0.984337, 0.088703,
		0.828854, -0.078371, -0.553948,
		34.717335, 31.322468, 37.683086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126179, 32.028366, 37.698227>,  <34.137135, 31.377329, 38.070850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126179, 32.028366, 37.698227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373348, 31.772503, 37.515358>,  <34.521648, 31.618986, 37.405636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373348, 31.772503, 37.515358>,  <34.126179, 32.028366, 37.698227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373348, 31.772503, 37.515358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568967, 0.037508, -0.821504,
		0.542628, 0.767745, -0.340766,
		0.617925, -0.639657, -0.457175,
		34.558727, 31.580606, 37.378204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340145, 32.339588, 37.135262>,  <34.126179, 32.028366, 37.698227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340145, 32.339588, 37.135262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436306, 31.962706, 37.041924>,  <34.494003, 31.736576, 36.985920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436306, 31.962706, 37.041924>,  <34.340145, 32.339588, 37.135262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436306, 31.962706, 37.041924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641517, 0.026183, -0.766662,
		0.728464, 0.334003, -0.598148,
		0.240406, -0.942208, -0.233342,
		34.508427, 31.680042, 36.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480011, 32.280720, 36.439137>,  <34.340145, 32.339588, 37.135262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480011, 32.280720, 36.439137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344982, 31.922583, 36.555351>,  <34.263966, 31.707701, 36.625080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344982, 31.922583, 36.555351>,  <34.480011, 32.280720, 36.439137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344982, 31.922583, 36.555351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715605, 0.043582, -0.697145,
		0.611518, -0.443249, -0.655420,
		-0.337573, -0.895338, 0.290540,
		34.243710, 31.653980, 36.642513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343838, 31.908091, 35.827065>,  <34.480011, 32.280720, 36.439137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343838, 31.908091, 35.827065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134533, 31.722401, 36.112915>,  <34.008949, 31.610987, 36.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134533, 31.722401, 36.112915>,  <34.343838, 31.908091, 35.827065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134533, 31.722401, 36.112915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805832, -0.003227, -0.592136,
		0.277190, -0.885711, -0.372399,
		-0.523260, -0.464226, 0.714629,
		33.977554, 31.583132, 36.327305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087811, 31.408215, 35.446049>,  <34.343838, 31.908091, 35.827065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087811, 31.408215, 35.446049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865429, 31.432299, 35.777660>,  <33.731998, 31.446749, 35.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865429, 31.432299, 35.777660>,  <34.087811, 31.408215, 35.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865429, 31.432299, 35.777660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824624, 0.085381, -0.559201,
		-0.104454, -0.994527, 0.002184,
		-0.555955, 0.060211, 0.829029,
		33.698643, 31.450361, 36.026371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532482, 30.964376, 35.358517>,  <34.087811, 31.408215, 35.446049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532482, 30.964376, 35.358517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426880, 31.218500, 35.648808>,  <33.363518, 31.370975, 35.822983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426880, 31.218500, 35.648808>,  <33.532482, 30.964376, 35.358517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426880, 31.218500, 35.648808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898841, 0.110851, -0.424024,
		-0.349835, -0.764260, 0.541778,
		-0.264008, 0.635310, 0.725727,
		33.347679, 31.409094, 35.866528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825581, 30.509464, 34.792931>,  <33.532482, 30.964376, 35.358517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825581, 30.509464, 34.792931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486515, 30.560118, 34.586853>,  <33.283077, 30.590509, 34.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486515, 30.560118, 34.586853>,  <33.825581, 30.509464, 34.792931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486515, 30.560118, 34.586853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010831, -0.966762, -0.255450,
		-0.530422, -0.222116, 0.818118,
		-0.847665, 0.126635, -0.515197,
		33.232216, 30.598108, 34.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593372, 30.588593, 34.573868>,  <33.825581, 30.509464, 34.792931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593372, 30.588593, 34.573868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815189, 30.382162, 34.312748>,  <34.948280, 30.258305, 34.156075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815189, 30.382162, 34.312748>,  <34.593372, 30.588593, 34.573868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815189, 30.382162, 34.312748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241073, -0.651202, 0.719597,
		-0.796471, -0.556420, -0.236707,
		0.554542, -0.516075, -0.652802,
		34.981552, 30.227339, 34.116909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398918, 29.793409, 34.455780>,  <34.593372, 30.588593, 34.573868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398918, 29.793409, 34.455780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782215, 29.904575, 34.428822>,  <35.012192, 29.971275, 34.412647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782215, 29.904575, 34.428822>,  <34.398918, 29.793409, 34.455780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782215, 29.904575, 34.428822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217664, -0.555946, 0.802213,
		0.185476, -0.783382, -0.593221,
		0.958239, 0.277914, -0.067399,
		35.069687, 29.987949, 34.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846428, 29.167889, 34.470657>,  <34.398918, 29.793409, 34.455780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846428, 29.167889, 34.470657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038422, 29.492981, 34.602772>,  <35.153618, 29.688036, 34.682041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038422, 29.492981, 34.602772>,  <34.846428, 29.167889, 34.470657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038422, 29.492981, 34.602772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262123, -0.492153, 0.830107,
		0.837203, -0.311861, -0.449260,
		0.479983, 0.812729, 0.330286,
		35.182415, 29.736799, 34.701859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550587, 28.987766, 34.630772>,  <34.846428, 29.167889, 34.470657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550587, 28.987766, 34.630772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447098, 29.317169, 34.832722>,  <35.385006, 29.514811, 34.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447098, 29.317169, 34.832722>,  <35.550587, 28.987766, 34.630772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447098, 29.317169, 34.832722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232780, -0.454114, 0.859996,
		0.937485, 0.340022, -0.074209,
		-0.258718, 0.823508, 0.504875,
		35.369484, 29.564222, 34.984184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048073, 29.037697, 35.095757>,  <35.550587, 28.987766, 34.630772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048073, 29.037697, 35.095757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762272, 29.257776, 35.268620>,  <35.590790, 29.389824, 35.372337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762272, 29.257776, 35.268620>,  <36.048073, 29.037697, 35.095757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762272, 29.257776, 35.268620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277925, -0.343657, 0.897027,
		0.642060, 0.761038, 0.092630,
		-0.714505, 0.550200, 0.432160,
		35.547920, 29.422836, 35.398266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368599, 29.450451, 35.563622>,  <36.048073, 29.037697, 35.095757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368599, 29.450451, 35.563622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988411, 29.443798, 35.687763>,  <35.760296, 29.439806, 35.762249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988411, 29.443798, 35.687763>,  <36.368599, 29.450451, 35.563622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988411, 29.443798, 35.687763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308929, -0.160054, 0.937521,
		0.034080, 0.986968, 0.157266,
		-0.950475, -0.016634, 0.310357,
		35.703270, 29.438808, 35.780869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350563, 29.774235, 36.224918>,  <36.368599, 29.450451, 35.563622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350563, 29.774235, 36.224918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015358, 29.558107, 36.194477>,  <35.814236, 29.428431, 36.176212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015358, 29.558107, 36.194477>,  <36.350563, 29.774235, 36.224918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015358, 29.558107, 36.194477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194351, -0.425886, 0.883657,
		-0.509866, 0.725725, 0.461909,
		-0.838012, -0.540319, -0.076099,
		35.763954, 29.396011, 36.171646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977985, 29.916075, 36.840508>,  <36.350563, 29.774235, 36.224918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977985, 29.916075, 36.840508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834717, 29.562782, 36.719440>,  <35.748756, 29.350807, 36.646801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834717, 29.562782, 36.719440>,  <35.977985, 29.916075, 36.840508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834717, 29.562782, 36.719440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145134, -0.372909, 0.916447,
		-0.922305, 0.284322, 0.261754,
		-0.358176, -0.883233, -0.302671,
		35.727264, 29.297812, 36.628639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563282, 29.632240, 37.379330>,  <35.977985, 29.916075, 36.840508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563282, 29.632240, 37.379330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647720, 29.293724, 37.183685>,  <35.698383, 29.090614, 37.066299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647720, 29.293724, 37.183685>,  <35.563282, 29.632240, 37.379330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647720, 29.293724, 37.183685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095200, -0.480204, 0.871975,
		-0.972818, -0.230635, -0.020802,
		0.211098, -0.846293, -0.489108,
		35.711048, 29.039837, 37.036953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105396, 29.090828, 37.718044>,  <35.563282, 29.632240, 37.379330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105396, 29.090828, 37.718044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410698, 28.914484, 37.529118>,  <35.593880, 28.808678, 37.415760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410698, 28.914484, 37.529118>,  <35.105396, 29.090828, 37.718044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410698, 28.914484, 37.529118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275827, -0.438729, 0.855241,
		-0.584261, -0.783045, -0.213260,
		0.763255, -0.440861, -0.472317,
		35.639675, 28.782227, 37.387421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093071, 28.374035, 37.977673>,  <35.105396, 29.090828, 37.718044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093071, 28.374035, 37.977673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 28.396923, 37.804264>,  <35.668640, 28.410656, 37.700218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452801, 28.396923, 37.804264>,  <35.093071, 28.374035, 37.977673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452801, 28.396923, 37.804264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370466, -0.626395, 0.685845,
		-0.232307, -0.777403, -0.584533,
		0.899327, 0.057223, -0.433517,
		35.722599, 28.414089, 37.674210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292721, 27.716619, 38.044624>,  <35.093071, 28.374035, 37.977673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292721, 27.716619, 38.044624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644543, 27.902187, 38.002361>,  <35.855637, 28.013529, 37.977005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644543, 27.902187, 38.002361>,  <35.292721, 27.716619, 38.044624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644543, 27.902187, 38.002361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395695, -0.589897, 0.703880,
		0.264219, -0.660907, -0.702417,
		0.879553, 0.463921, -0.105655,
		35.908409, 28.041365, 37.970665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820309, 27.164349, 38.034740>,  <35.292721, 27.716619, 38.044624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820309, 27.164349, 38.034740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017792, 27.501146, 38.121735>,  <36.136284, 27.703224, 38.173931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017792, 27.501146, 38.121735>,  <35.820309, 27.164349, 38.034740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017792, 27.501146, 38.121735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395046, -0.439948, 0.806465,
		0.774719, -0.312243, -0.549832,
		0.493710, 0.841992, 0.217486,
		36.165905, 27.753744, 38.186981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543617, 27.031830, 38.151772>,  <35.820309, 27.164349, 38.034740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543617, 27.031830, 38.151772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459198, 27.359058, 38.365768>,  <36.408546, 27.555395, 38.494167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459198, 27.359058, 38.365768>,  <36.543617, 27.031830, 38.151772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459198, 27.359058, 38.365768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547186, -0.354651, 0.758162,
		0.809967, 0.452747, -0.372790,
		-0.211045, 0.818072, 0.534993,
		36.395885, 27.604481, 38.526268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042679, 26.979979, 38.655701>,  <36.543617, 27.031830, 38.151772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042679, 26.979979, 38.655701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867268, 27.321932, 38.766605>,  <36.762020, 27.527103, 38.833149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867268, 27.321932, 38.766605>,  <37.042679, 26.979979, 38.655701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867268, 27.321932, 38.766605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462322, -0.049975, 0.885303,
		0.770685, 0.516411, -0.373315,
		-0.438524, 0.854881, 0.277263,
		36.735710, 27.578396, 38.849785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507824, 27.488794, 38.923756>,  <37.042679, 26.979979, 38.655701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507824, 27.488794, 38.923756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155159, 27.565598, 39.096176>,  <36.943562, 27.611679, 39.199631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155159, 27.565598, 39.096176>,  <37.507824, 27.488794, 38.923756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155159, 27.565598, 39.096176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428477, -0.056946, 0.901756,
		0.197693, 0.979739, -0.032065,
		-0.881660, 0.192010, 0.431054,
		36.890659, 27.623201, 39.225491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592926, 28.058060, 39.452824>,  <37.507824, 27.488794, 38.923756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592926, 28.058060, 39.452824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264603, 27.870892, 39.583862>,  <37.067608, 27.758591, 39.662483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264603, 27.870892, 39.583862>,  <37.592926, 28.058060, 39.452824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264603, 27.870892, 39.583862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325295, 0.088501, 0.941462,
		-0.469520, 0.879329, 0.079568,
		-0.820813, -0.467918, 0.327594,
		37.018360, 27.730516, 39.682140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339214, 28.433868, 39.971268>,  <37.592926, 28.058060, 39.452824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339214, 28.433868, 39.971268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139519, 28.095650, 40.046967>,  <37.019703, 27.892719, 40.092388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139519, 28.095650, 40.046967>,  <37.339214, 28.433868, 39.971268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139519, 28.095650, 40.046967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151004, 0.130169, 0.979926,
		-0.853207, 0.517791, 0.062696,
		-0.499235, -0.845547, 0.189249,
		36.989750, 27.841986, 40.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123722, 28.626625, 40.601589>,  <37.339214, 28.433868, 39.971268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123722, 28.626625, 40.601589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074982, 28.233591, 40.545475>,  <37.045738, 27.997770, 40.511806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074982, 28.233591, 40.545475>,  <37.123722, 28.626625, 40.601589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074982, 28.233591, 40.545475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012682, -0.139782, 0.990101,
		-0.992467, 0.122428, 0.004572,
		-0.121855, -0.982584, -0.140281,
		37.038425, 27.938816, 40.503391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602688, 28.362045, 40.955467>,  <37.123722, 28.626625, 40.601589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602688, 28.362045, 40.955467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799522, 28.017870, 40.902557>,  <36.917625, 27.811365, 40.870811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799522, 28.017870, 40.902557>,  <36.602688, 28.362045, 40.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799522, 28.017870, 40.902557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336735, -0.328248, 0.882532,
		-0.802782, -0.389744, -0.451266,
		0.492089, -0.860438, -0.132271,
		36.947147, 27.759739, 40.862877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185120, 27.901060, 41.309872>,  <36.602688, 28.362045, 40.955467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185120, 27.901060, 41.309872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543465, 27.725847, 41.280033>,  <36.758472, 27.620720, 41.262131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543465, 27.725847, 41.280033>,  <36.185120, 27.901060, 41.309872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543465, 27.725847, 41.280033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037225, -0.241279, 0.969742,
		-0.442779, -0.865974, -0.232457,
		0.895858, -0.438034, -0.074597,
		36.812222, 27.594437, 41.257652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123253, 27.273483, 41.673138>,  <36.185120, 27.901060, 41.309872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123253, 27.273483, 41.673138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511093, 27.371065, 41.680782>,  <36.743797, 27.429615, 41.685371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511093, 27.371065, 41.680782>,  <36.123253, 27.273483, 41.673138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511093, 27.371065, 41.680782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026589, -0.182681, 0.982813,
		0.243253, -0.952425, -0.183614,
		0.969598, 0.243955, 0.019114,
		36.801971, 27.444252, 41.686516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495434, 26.788990, 42.079033>,  <36.123253, 27.273483, 41.673138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495434, 26.788990, 42.079033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775524, 27.074556, 42.078022>,  <36.943577, 27.245897, 42.077415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775524, 27.074556, 42.078022>,  <36.495434, 26.788990, 42.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775524, 27.074556, 42.078022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149345, -0.143016, 0.978388,
		0.698126, -0.685470, -0.206763,
		0.700225, 0.713917, -0.002528,
		36.985592, 27.288731, 42.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035698, 26.445581, 42.429466>,  <36.495434, 26.788990, 42.079033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035698, 26.445581, 42.429466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187126, 26.815687, 42.438976>,  <37.277985, 27.037750, 42.444683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187126, 26.815687, 42.438976>,  <37.035698, 26.445581, 42.429466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187126, 26.815687, 42.438976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465282, -0.212454, 0.859288,
		0.800122, -0.314240, -0.510939,
		0.378573, 0.925266, 0.023779,
		37.300697, 27.093267, 42.446110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811249, 26.442516, 42.458725>,  <37.035698, 26.445581, 42.429466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811249, 26.442516, 42.458725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717777, 26.799824, 42.612331>,  <37.661694, 27.014208, 42.704494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717777, 26.799824, 42.612331>,  <37.811249, 26.442516, 42.458725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717777, 26.799824, 42.612331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332928, -0.297567, 0.894770,
		0.913539, 0.336936, -0.227860,
		-0.233677, 0.893268, 0.384015,
		37.647675, 27.067804, 42.727535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411709, 26.668930, 42.742149>,  <37.811249, 26.442516, 42.458725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411709, 26.668930, 42.742149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114628, 26.854469, 42.935329>,  <37.936378, 26.965792, 43.051239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114628, 26.854469, 42.935329>,  <38.411709, 26.668930, 42.742149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114628, 26.854469, 42.935329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318112, -0.390246, 0.864010,
		0.589238, 0.795333, 0.142281,
		-0.742700, 0.463846, 0.482953,
		37.891819, 26.993624, 43.080215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765285, 27.067698, 43.216965>,  <38.411709, 26.668930, 42.742149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765285, 27.067698, 43.216965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395012, 26.989475, 43.346500>,  <38.172848, 26.942541, 43.424221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395012, 26.989475, 43.346500>,  <38.765285, 27.067698, 43.216965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395012, 26.989475, 43.346500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365327, -0.239829, 0.899455,
		-0.098228, 0.950915, 0.293447,
		-0.925682, -0.195555, 0.323837,
		38.117306, 26.930809, 43.443653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183674, 27.547079, 43.573174>,  <38.765285, 27.067698, 43.216965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183674, 27.547079, 43.573174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509502, 27.761271, 43.662388>,  <39.704998, 27.889786, 43.715916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509502, 27.761271, 43.662388>,  <39.183674, 27.547079, 43.573174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509502, 27.761271, 43.662388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185743, 0.123475, -0.974810,
		-0.549527, 0.835475, 0.001118,
		0.814567, 0.535476, 0.223036,
		39.753872, 27.921913, 43.729298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099854, 28.179888, 43.154636>,  <39.183674, 27.547079, 43.573174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099854, 28.179888, 43.154636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485966, 28.125889, 43.244083>,  <39.717632, 28.093491, 43.297752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485966, 28.125889, 43.244083>,  <39.099854, 28.179888, 43.154636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485966, 28.125889, 43.244083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241107, 0.131137, -0.961598,
		0.100487, 0.982130, 0.159132,
		0.965282, -0.134996, 0.223621,
		39.775551, 28.085390, 43.311169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495239, 28.732128, 42.887466>,  <39.099854, 28.179888, 43.154636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495239, 28.732128, 42.887466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766735, 28.442453, 42.936237>,  <39.929634, 28.268648, 42.965500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766735, 28.442453, 42.936237>,  <39.495239, 28.732128, 42.887466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766735, 28.442453, 42.936237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390666, 0.215468, -0.894960,
		0.621844, 0.655080, 0.429162,
		0.678741, -0.724185, 0.121930,
		39.970356, 28.225199, 42.972816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099400, 29.139338, 42.752296>,  <39.495239, 28.732128, 42.887466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099400, 29.139338, 42.752296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183403, 28.748690, 42.733910>,  <40.233803, 28.514301, 42.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183403, 28.748690, 42.733910>,  <40.099400, 29.139338, 42.752296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183403, 28.748690, 42.733910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461621, 0.140488, -0.875882,
		0.861861, 0.162720, 0.480331,
		0.210004, -0.976619, -0.045966,
		40.246403, 28.455704, 42.720119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887104, 29.047504, 42.630123>,  <40.099400, 29.139338, 42.752296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887104, 29.047504, 42.630123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698486, 28.726549, 42.483799>,  <40.585316, 28.533976, 42.396004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698486, 28.726549, 42.483799>,  <40.887104, 29.047504, 42.630123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698486, 28.726549, 42.483799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456555, 0.132762, -0.879734,
		0.754454, -0.581848, 0.303730,
		-0.471548, -0.802388, -0.365808,
		40.557022, 28.485832, 42.374058>
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
