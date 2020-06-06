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
	<24.123220, 35.230740, 35.287025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229620, 34.924938, 35.052151>,  <24.293459, 34.741459, 34.911228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.229620, 34.924938, 35.052151>,  <24.123220, 35.230740, 35.287025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.229620, 34.924938, 35.052151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849327, -0.102245, 0.517870,
		-0.455948, -0.636463, 0.622114,
		0.265997, -0.764500, -0.587184,
		24.309420, 34.695587, 34.875996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434725, 34.796612, 35.742462>,  <24.123220, 35.230740, 35.287025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434725, 34.796612, 35.742462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574408, 34.720879, 35.375374>,  <24.658216, 34.675438, 35.155121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574408, 34.720879, 35.375374>,  <24.434725, 34.796612, 35.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574408, 34.720879, 35.375374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933326, 0.157450, 0.322663,
		0.083403, -0.969207, 0.231694,
		0.349207, -0.189335, -0.917718,
		24.679171, 34.664078, 35.100060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966871, 34.309761, 35.780422>,  <24.434725, 34.796612, 35.742462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966871, 34.309761, 35.780422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048933, 34.556301, 35.476311>,  <25.098169, 34.704227, 35.293842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048933, 34.556301, 35.476311>,  <24.966871, 34.309761, 35.780422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048933, 34.556301, 35.476311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911254, 0.163146, 0.378154,
		0.357112, -0.770385, -0.528183,
		0.205154, 0.616352, -0.760277,
		25.110479, 34.741207, 35.248226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600334, 34.098347, 35.506172>,  <24.966871, 34.309761, 35.780422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600334, 34.098347, 35.506172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535744, 34.488770, 35.447868>,  <25.496988, 34.723022, 35.412888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535744, 34.488770, 35.447868>,  <25.600334, 34.098347, 35.506172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535744, 34.488770, 35.447868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916958, 0.202994, 0.343485,
		0.364847, -0.078187, -0.927779,
		-0.161478, 0.976053, -0.145756,
		25.487301, 34.781586, 35.404140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194736, 34.416599, 35.137894>,  <25.600334, 34.098347, 35.506172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194736, 34.416599, 35.137894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002392, 34.712547, 35.326092>,  <25.886984, 34.890118, 35.439011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002392, 34.712547, 35.326092>,  <26.194736, 34.416599, 35.137894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002392, 34.712547, 35.326092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876054, 0.383359, 0.292515,
		0.036056, 0.552836, -0.832510,
		-0.480863, 0.739871, 0.470492,
		25.858133, 34.934509, 35.467239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550148, 35.029472, 34.995255>,  <26.194736, 34.416599, 35.137894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550148, 35.029472, 34.995255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397322, 35.115261, 35.354816>,  <26.305626, 35.166733, 35.570553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397322, 35.115261, 35.354816>,  <26.550148, 35.029472, 34.995255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397322, 35.115261, 35.354816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921365, 0.163655, 0.352567,
		-0.071494, 0.962922, -0.260133,
		-0.382066, 0.214471, 0.898903,
		26.282701, 35.179604, 35.624489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082462, 35.311699, 35.208225>,  <26.550148, 35.029472, 34.995255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082462, 35.311699, 35.208225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834534, 35.265087, 35.518642>,  <26.685776, 35.237118, 35.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834534, 35.265087, 35.518642>,  <27.082462, 35.311699, 35.208225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834534, 35.265087, 35.518642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693985, 0.380258, 0.611383,
		-0.366343, 0.917510, -0.154819,
		-0.619821, -0.116534, 0.776042,
		26.648588, 35.230125, 35.751453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060022, 34.856018, 35.880287>,  <27.082462, 35.311699, 35.208225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060022, 34.856018, 35.880287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899357, 35.222092, 35.867020>,  <26.802958, 35.441734, 35.859058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899357, 35.222092, 35.867020>,  <27.060022, 34.856018, 35.880287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899357, 35.222092, 35.867020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260612, -0.079511, 0.962164,
		0.877921, 0.395112, 0.270446,
		-0.401666, 0.915186, -0.033167,
		26.778856, 35.496647, 35.857071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215458, 35.113377, 36.509773>,  <27.060022, 34.856018, 35.880287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215458, 35.113377, 36.509773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906927, 35.308273, 36.345997>,  <26.721807, 35.425213, 36.247730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906927, 35.308273, 36.345997>,  <27.215458, 35.113377, 36.509773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906927, 35.308273, 36.345997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552146, -0.192347, 0.811257,
		0.316525, 0.851818, 0.417393,
		-0.771328, 0.487245, -0.409445,
		26.675529, 35.454449, 36.223164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892769, 35.416965, 37.060150>,  <27.215458, 35.113377, 36.509773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892769, 35.416965, 37.060150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622953, 35.459026, 36.767864>,  <26.461063, 35.484261, 36.592495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622953, 35.459026, 36.767864>,  <26.892769, 35.416965, 37.060150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622953, 35.459026, 36.767864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735368, -0.182920, 0.652514,
		-0.065051, 0.977489, 0.200709,
		-0.674539, 0.105149, -0.730713,
		26.420591, 35.490570, 36.548649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428053, 35.823505, 37.391598>,  <26.892769, 35.416965, 37.060150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428053, 35.823505, 37.391598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260685, 35.623089, 37.088577>,  <26.160263, 35.502838, 36.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260685, 35.623089, 37.088577>,  <26.428053, 35.823505, 37.391598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260685, 35.623089, 37.088577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691346, -0.365230, 0.623416,
		-0.589037, 0.784579, -0.193573,
		-0.418421, -0.501041, -0.757550,
		26.135159, 35.472778, 36.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794834, 36.001392, 37.316307>,  <26.428053, 35.823505, 37.391598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794834, 36.001392, 37.316307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485428, 35.767380, 37.218811>,  <25.299784, 35.626972, 37.160313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485428, 35.767380, 37.218811>,  <25.794834, 36.001392, 37.316307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485428, 35.767380, 37.218811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573055, -0.481353, -0.663255,
		0.270703, -0.652714, 0.707591,
		-0.773517, -0.585033, -0.243737,
		25.253372, 35.591869, 37.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865482, 35.248302, 37.379177>,  <25.794834, 36.001392, 37.316307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865482, 35.248302, 37.379177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623573, 35.317444, 37.068214>,  <25.478428, 35.358929, 36.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623573, 35.317444, 37.068214>,  <25.865482, 35.248302, 37.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623573, 35.317444, 37.068214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685501, -0.383899, -0.618635,
		-0.405387, -0.907050, 0.113674,
		-0.604772, 0.172863, -0.777411,
		25.442141, 35.369301, 36.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470798, 34.651665, 37.678986>,  <25.865482, 35.248302, 37.379177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470798, 34.651665, 37.678986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206923, 34.675858, 37.379345>,  <25.048597, 34.690372, 37.199562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.206923, 34.675858, 37.379345>,  <25.470798, 34.651665, 37.678986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.206923, 34.675858, 37.379345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736126, 0.252827, -0.627852,
		0.151418, -0.965619, -0.211310,
		-0.659690, 0.060483, -0.749100,
		25.009016, 34.694004, 37.154613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724882, 34.359703, 37.068985>,  <25.470798, 34.651665, 37.678986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724882, 34.359703, 37.068985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455811, 34.638920, 36.970810>,  <25.294367, 34.806450, 36.911903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455811, 34.638920, 36.970810>,  <25.724882, 34.359703, 37.068985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455811, 34.638920, 36.970810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658640, 0.413719, -0.628514,
		-0.337186, -0.584445, -0.738058,
		-0.672680, 0.698041, -0.245439,
		25.254007, 34.848331, 36.897179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765924, 34.430012, 36.280266>,  <25.724882, 34.359703, 37.068985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765924, 34.430012, 36.280266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642813, 34.762993, 36.464565>,  <25.568947, 34.962784, 36.575146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642813, 34.762993, 36.464565>,  <25.765924, 34.430012, 36.280266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642813, 34.762993, 36.464565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608462, 0.544499, -0.577317,
		-0.731469, 0.102664, -0.674102,
		-0.307778, 0.832455, 0.460751,
		25.550480, 35.012730, 36.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402161, 34.877140, 35.926388>,  <25.765924, 34.430012, 36.280266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402161, 34.877140, 35.926388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617092, 35.073387, 36.200783>,  <25.746050, 35.191135, 36.365417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617092, 35.073387, 36.200783>,  <25.402161, 34.877140, 35.926388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617092, 35.073387, 36.200783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588012, 0.365146, -0.721741,
		-0.604583, 0.791178, -0.092286,
		0.537328, 0.490617, 0.685984,
		25.778290, 35.220573, 36.406578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513653, 35.477493, 35.588066>,  <25.402161, 34.877140, 35.926388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513653, 35.477493, 35.588066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780022, 35.475552, 35.886471>,  <25.939842, 35.474384, 36.065514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780022, 35.475552, 35.886471>,  <25.513653, 35.477493, 35.588066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780022, 35.475552, 35.886471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610184, 0.578872, -0.540909,
		-0.429215, 0.815404, 0.388446,
		0.665920, -0.004857, 0.746007,
		25.979797, 35.474094, 36.110271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654573, 36.157421, 35.851990>,  <25.513653, 35.477493, 35.588066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654573, 36.157421, 35.851990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963831, 35.916748, 35.932217>,  <26.149385, 35.772343, 35.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963831, 35.916748, 35.932217>,  <25.654573, 36.157421, 35.851990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963831, 35.916748, 35.932217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606436, 0.608730, -0.511549,
		0.185703, 0.517129, 0.835519,
		0.773143, -0.601685, 0.200563,
		26.195774, 35.736244, 35.992386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136576, 36.672901, 35.786324>,  <25.654573, 36.157421, 35.851990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136576, 36.672901, 35.786324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331678, 36.324013, 35.800865>,  <26.448740, 36.114677, 35.809589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331678, 36.324013, 35.800865>,  <26.136576, 36.672901, 35.786324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331678, 36.324013, 35.800865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681313, 0.354302, -0.640534,
		0.545809, 0.337190, 0.767069,
		0.487755, -0.872223, 0.036351,
		26.478004, 36.062347, 35.811771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777168, 36.940571, 35.665890>,  <26.136576, 36.672901, 35.786324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777168, 36.940571, 35.665890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791153, 36.541382, 35.644592>,  <26.799543, 36.301868, 35.631813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791153, 36.541382, 35.644592>,  <26.777168, 36.940571, 35.665890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791153, 36.541382, 35.644592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712191, 0.062254, -0.699220,
		0.701114, -0.013470, 0.712922,
		0.034964, -0.997969, -0.053240,
		26.801641, 36.241989, 35.628620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349314, 36.833099, 35.143448>,  <26.777168, 36.940571, 35.665890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349314, 36.833099, 35.143448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225243, 36.454609, 35.180187>,  <27.150801, 36.227512, 35.202232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225243, 36.454609, 35.180187>,  <27.349314, 36.833099, 35.143448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225243, 36.454609, 35.180187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748028, -0.302546, -0.590695,
		0.586723, -0.114512, 0.801650,
		-0.310178, -0.946231, 0.091852,
		27.132189, 36.170738, 35.207745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799290, 36.403183, 34.855656>,  <27.349314, 36.833099, 35.143448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799290, 36.403183, 34.855656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060198, 36.275997, 35.130882>,  <28.216743, 36.199684, 35.296021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060198, 36.275997, 35.130882>,  <27.799290, 36.403183, 34.855656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060198, 36.275997, 35.130882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651251, -0.229376, -0.723366,
		0.387831, 0.919938, 0.057458,
		0.652272, -0.317963, 0.688070,
		28.255880, 36.180607, 35.337303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511778, 36.848087, 34.822014>,  <27.799290, 36.403183, 34.855656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511778, 36.848087, 34.822014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526161, 36.463055, 34.929451>,  <28.534792, 36.232037, 34.993916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526161, 36.463055, 34.929451>,  <28.511778, 36.848087, 34.822014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526161, 36.463055, 34.929451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636590, -0.185121, -0.748654,
		0.770364, 0.197907, 0.606113,
		0.035959, -0.962582, 0.268596,
		28.536949, 36.174282, 35.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122028, 36.591007, 34.986000>,  <28.511778, 36.848087, 34.822014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122028, 36.591007, 34.986000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914904, 36.291611, 34.820290>,  <28.790628, 36.111973, 34.720863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914904, 36.291611, 34.820290>,  <29.122028, 36.591007, 34.986000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914904, 36.291611, 34.820290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722384, -0.123134, -0.680441,
		0.458295, -0.651607, 0.604461,
		-0.517810, -0.748496, -0.414279,
		28.759560, 36.067062, 34.696007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664814, 36.362663, 34.735298>,  <29.122028, 36.591007, 34.986000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664814, 36.362663, 34.735298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369122, 36.188232, 34.530018>,  <29.191706, 36.083572, 34.406849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369122, 36.188232, 34.530018>,  <29.664814, 36.362663, 34.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369122, 36.188232, 34.530018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614817, -0.125987, -0.778542,
		0.274848, -0.891046, 0.361241,
		-0.739229, -0.436078, -0.513203,
		29.147352, 36.057407, 34.376057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024637, 35.944435, 34.302013>,  <29.664814, 36.362663, 34.735298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024637, 35.944435, 34.302013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674265, 35.957352, 34.109470>,  <29.464041, 35.965103, 33.993946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674265, 35.957352, 34.109470>,  <30.024637, 35.944435, 34.302013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674265, 35.957352, 34.109470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466176, -0.200188, -0.861745,
		-0.124189, -0.979225, 0.160297,
		-0.875932, 0.032293, -0.481353,
		29.411486, 35.967041, 33.965065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887117, 35.303936, 33.948551>,  <30.024637, 35.944435, 34.302013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887117, 35.303936, 33.948551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709404, 35.618084, 33.776127>,  <29.602776, 35.806572, 33.672672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709404, 35.618084, 33.776127>,  <29.887117, 35.303936, 33.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709404, 35.618084, 33.776127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301671, -0.321905, -0.897425,
		-0.843569, -0.528747, -0.093906,
		-0.444282, 0.785368, -0.431057,
		29.576120, 35.853695, 33.646809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420916, 35.046150, 33.450016>,  <29.887117, 35.303936, 33.948551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420916, 35.046150, 33.450016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495785, 35.422745, 33.337891>,  <29.540707, 35.648701, 33.270615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495785, 35.422745, 33.337891>,  <29.420916, 35.046150, 33.450016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495785, 35.422745, 33.337891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286753, -0.325295, -0.901086,
		-0.939542, 0.088279, -0.330860,
		0.187174, 0.941483, -0.280314,
		29.551937, 35.705189, 33.253796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068716, 35.359097, 32.784996>,  <29.420916, 35.046150, 33.450016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068716, 35.359097, 32.784996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429934, 35.512520, 32.862343>,  <29.646664, 35.604576, 32.908749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429934, 35.512520, 32.862343>,  <29.068716, 35.359097, 32.784996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429934, 35.512520, 32.862343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333827, -0.343405, -0.877856,
		-0.270310, 0.857294, -0.438154,
		0.903046, 0.383561, 0.193363,
		29.700848, 35.627586, 32.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242073, 35.849911, 32.281364>,  <29.068716, 35.359097, 32.784996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242073, 35.849911, 32.281364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592869, 35.743408, 32.441364>,  <29.803347, 35.679508, 32.537365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592869, 35.743408, 32.441364>,  <29.242073, 35.849911, 32.281364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592869, 35.743408, 32.441364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407789, -0.027901, -0.912650,
		0.254155, 0.963500, 0.084105,
		0.876991, -0.266252, 0.399996,
		29.855967, 35.663532, 32.561363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639681, 36.227150, 31.836193>,  <29.242073, 35.849911, 32.281364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639681, 36.227150, 31.836193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881699, 35.923294, 31.931580>,  <30.026909, 35.740978, 31.988811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881699, 35.923294, 31.931580>,  <29.639681, 36.227150, 31.836193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881699, 35.923294, 31.931580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465478, 0.094498, -0.880000,
		0.645951, 0.643439, 0.410773,
		0.605044, -0.759642, 0.238466,
		30.063211, 35.695400, 32.003120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385471, 36.458496, 31.669865>,  <29.639681, 36.227150, 31.836193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385471, 36.458496, 31.669865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356668, 36.059589, 31.676580>,  <30.339386, 35.820248, 31.680611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356668, 36.059589, 31.676580>,  <30.385471, 36.458496, 31.669865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356668, 36.059589, 31.676580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311927, -0.038505, -0.949326,
		0.947373, -0.063122, 0.313846,
		-0.072008, -0.997263, 0.016789,
		30.335066, 35.760410, 31.681618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007353, 36.053574, 31.356852>,  <30.385471, 36.458496, 31.669865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007353, 36.053574, 31.356852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668303, 35.843311, 31.327959>,  <30.464872, 35.717155, 31.310623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668303, 35.843311, 31.327959>,  <31.007353, 36.053574, 31.356852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668303, 35.843311, 31.327959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200551, -0.191358, -0.960813,
		0.491234, -0.828895, 0.267621,
		-0.847625, -0.525656, -0.072234,
		30.414015, 35.685616, 31.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108854, 35.426758, 31.024361>,  <31.007353, 36.053574, 31.356852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108854, 35.426758, 31.024361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783562, 35.611610, 30.882891>,  <30.588387, 35.722523, 30.798008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783562, 35.611610, 30.882891>,  <31.108854, 35.426758, 31.024361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783562, 35.611610, 30.882891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302849, -0.182884, -0.935327,
		-0.496927, -0.867748, 0.008770,
		-0.813232, 0.462133, -0.353676,
		30.539593, 35.750252, 30.776789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651747, 34.977848, 30.600311>,  <31.108854, 35.426758, 31.024361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651747, 34.977848, 30.600311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662605, 35.369003, 30.517372>,  <30.669121, 35.603699, 30.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662605, 35.369003, 30.517372>,  <30.651747, 34.977848, 30.600311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662605, 35.369003, 30.517372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319383, -0.205036, -0.925178,
		-0.947237, -0.041105, -0.317889,
		0.027149, 0.977891, -0.207346,
		30.670750, 35.662369, 30.455168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916712, 34.774963, 30.922682>,  <30.651747, 34.977848, 30.600311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916712, 34.774963, 30.922682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178453, 35.019230, 31.101080>,  <30.335499, 35.165791, 31.208118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178453, 35.019230, 31.101080>,  <29.916712, 34.774963, 30.922682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178453, 35.019230, 31.101080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406864, -0.212833, 0.888349,
		0.637405, -0.762753, 0.109189,
		0.654352, 0.610663, 0.445998,
		30.374760, 35.202431, 31.234879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177860, 34.445522, 31.542917>,  <29.916712, 34.774963, 30.922682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177860, 34.445522, 31.542917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277925, 34.828438, 31.600916>,  <30.337965, 35.058186, 31.635715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277925, 34.828438, 31.600916>,  <30.177860, 34.445522, 31.542917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277925, 34.828438, 31.600916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230145, -0.086671, 0.969289,
		0.940453, -0.275849, 0.198633,
		0.250162, 0.957286, 0.144995,
		30.352974, 35.115623, 31.644415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527210, 34.508446, 32.202419>,  <30.177860, 34.445522, 31.542917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527210, 34.508446, 32.202419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361105, 34.868347, 32.148754>,  <30.261442, 35.084290, 32.116554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361105, 34.868347, 32.148754>,  <30.527210, 34.508446, 32.202419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361105, 34.868347, 32.148754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325188, -0.009084, 0.945606,
		0.849594, 0.436302, 0.296361,
		-0.415262, 0.899754, -0.134162,
		30.236526, 35.138275, 32.108505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676067, 34.892662, 32.756920>,  <30.527210, 34.508446, 32.202419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676067, 34.892662, 32.756920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333086, 35.054657, 32.629951>,  <30.127296, 35.151855, 32.553768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333086, 35.054657, 32.629951>,  <30.676067, 34.892662, 32.756920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333086, 35.054657, 32.629951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416038, -0.182639, 0.890817,
		0.302797, 0.895894, 0.325095,
		-0.857453, 0.404989, -0.317423,
		30.075850, 35.176155, 32.534725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972929, 35.412556, 33.194557>,  <30.676067, 34.892662, 32.756920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972929, 35.412556, 33.194557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647158, 35.512302, 32.984978>,  <30.451694, 35.572151, 32.859230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647158, 35.512302, 32.984978>,  <30.972929, 35.412556, 33.194557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647158, 35.512302, 32.984978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370774, 0.470934, 0.800467,
		0.446352, 0.846191, -0.291086,
		-0.814431, 0.249363, -0.523948,
		30.402828, 35.587112, 32.827793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881998, 36.090019, 33.242344>,  <30.972929, 35.412556, 33.194557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881998, 36.090019, 33.242344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508902, 35.973465, 33.157410>,  <30.285044, 35.903534, 33.106449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508902, 35.973465, 33.157410>,  <30.881998, 36.090019, 33.242344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508902, 35.973465, 33.157410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330954, 0.458313, 0.824875,
		-0.143042, 0.839669, -0.523923,
		-0.932742, -0.291386, -0.212334,
		30.229078, 35.886047, 33.093708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315292, 36.605816, 33.099434>,  <30.881998, 36.090019, 33.242344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315292, 36.605816, 33.099434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116261, 36.290565, 33.244358>,  <29.996841, 36.101414, 33.331314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116261, 36.290565, 33.244358>,  <30.315292, 36.605816, 33.099434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116261, 36.290565, 33.244358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406304, 0.580799, 0.705401,
		-0.766375, 0.203786, -0.609213,
		-0.497581, -0.788127, 0.362311,
		29.966986, 36.054127, 33.353050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677114, 36.639408, 32.973831>,  <30.315292, 36.605816, 33.099434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677114, 36.639408, 32.973831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742516, 36.429333, 33.307884>,  <29.781757, 36.303288, 33.508316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742516, 36.429333, 33.307884>,  <29.677114, 36.639408, 32.973831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742516, 36.429333, 33.307884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691126, 0.543104, 0.476848,
		-0.703997, -0.655149, -0.274168,
		0.163505, -0.525184, 0.835134,
		29.791567, 36.271778, 33.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493221, 37.295040, 32.604191>,  <29.677114, 36.639408, 32.973831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493221, 37.295040, 32.604191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403282, 37.678974, 32.671314>,  <29.349318, 37.909336, 32.711590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403282, 37.678974, 32.671314>,  <29.493221, 37.295040, 32.604191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403282, 37.678974, 32.671314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940459, 0.258831, -0.220326,
		-0.254911, 0.108276, -0.960883,
		-0.224850, 0.959835, 0.167808,
		29.335827, 37.966923, 32.721657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964512, 37.726730, 32.171329>,  <29.493221, 37.295040, 32.604191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964512, 37.726730, 32.171329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852776, 37.951065, 32.483082>,  <29.785734, 38.085667, 32.670132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852776, 37.951065, 32.483082>,  <29.964512, 37.726730, 32.171329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852776, 37.951065, 32.483082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904292, 0.426570, 0.017153,
		-0.322839, 0.709577, -0.626319,
		-0.279340, 0.560838, 0.779378,
		29.768974, 38.119316, 32.716896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994150, 38.466080, 32.031624>,  <29.964512, 37.726730, 32.171329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994150, 38.466080, 32.031624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057722, 38.415264, 32.423256>,  <30.095865, 38.384777, 32.658237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057722, 38.415264, 32.423256>,  <29.994150, 38.466080, 32.031624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057722, 38.415264, 32.423256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770234, 0.636346, -0.042462,
		-0.617641, 0.760872, 0.198979,
		0.158928, -0.127034, 0.979083,
		30.105400, 38.377155, 32.716980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733810, 38.617699, 32.059437>,  <29.994150, 38.466080, 32.031624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733810, 38.617699, 32.059437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031210, 38.719791, 31.812191>,  <31.209650, 38.781048, 31.663843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031210, 38.719791, 31.812191>,  <30.733810, 38.617699, 32.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031210, 38.719791, 31.812191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136740, -0.962797, -0.233076,
		-0.654609, 0.088770, -0.750738,
		0.743498, 0.255230, -0.618117,
		31.254259, 38.796360, 31.626757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420944, 38.348049, 32.233532>,  <30.733810, 38.617699, 32.059437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420944, 38.348049, 32.233532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684179, 38.620647, 32.361584>,  <31.842121, 38.784206, 32.438416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684179, 38.620647, 32.361584>,  <31.420944, 38.348049, 32.233532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684179, 38.620647, 32.361584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703507, -0.708054, 0.061131,
		0.268327, 0.184981, -0.945401,
		0.658087, 0.681499, 0.320126,
		31.881605, 38.825096, 32.457623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068245, 38.162678, 31.990576>,  <31.420944, 38.348049, 32.233532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068245, 38.162678, 31.990576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134163, 38.389591, 32.313324>,  <32.173714, 38.525738, 32.506973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134163, 38.389591, 32.313324>,  <32.068245, 38.162678, 31.990576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134163, 38.389591, 32.313324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726890, -0.622797, 0.289404,
		0.666688, 0.538812, -0.514985,
		0.164796, 0.567279, 0.806868,
		32.183601, 38.559776, 32.555386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810379, 38.238625, 32.075573>,  <32.068245, 38.162678, 31.990576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810379, 38.238625, 32.075573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621067, 38.273964, 32.426163>,  <32.507481, 38.295166, 32.636517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621067, 38.273964, 32.426163>,  <32.810379, 38.238625, 32.075573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621067, 38.273964, 32.426163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547201, -0.750237, 0.371101,
		0.690347, 0.655240, 0.306726,
		-0.473278, 0.088348, 0.876472,
		32.479084, 38.300468, 32.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274448, 38.405209, 32.730385>,  <32.810379, 38.238625, 32.075573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274448, 38.405209, 32.730385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945927, 38.177013, 32.729748>,  <32.748814, 38.040096, 32.729366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945927, 38.177013, 32.729748>,  <33.274448, 38.405209, 32.730385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945927, 38.177013, 32.729748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562106, -0.809715, 0.168515,
		-0.097426, 0.137506, 0.985698,
		-0.821307, -0.570485, -0.001594,
		32.699535, 38.005867, 32.729271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506371, 37.858723, 33.200645>,  <33.274448, 38.405209, 32.730385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506371, 37.858723, 33.200645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206871, 37.734802, 32.966244>,  <33.027172, 37.660450, 32.825603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206871, 37.734802, 32.966244>,  <33.506371, 37.858723, 33.200645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206871, 37.734802, 32.966244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511450, -0.832384, -0.213439,
		-0.421656, -0.459523, 0.781694,
		-0.748749, -0.309800, -0.586003,
		32.982246, 37.641861, 32.790443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824696, 37.115047, 32.999973>,  <33.506371, 37.858723, 33.200645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824696, 37.115047, 32.999973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062557, 36.855114, 33.189331>,  <34.205273, 36.699154, 33.302944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062557, 36.855114, 33.189331>,  <33.824696, 37.115047, 32.999973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062557, 36.855114, 33.189331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708931, -0.146090, 0.689981,
		-0.379217, -0.745902, -0.547563,
		0.594652, -0.649837, 0.473393,
		34.240952, 36.660164, 33.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462273, 36.490921, 32.993919>,  <33.824696, 37.115047, 32.999973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462273, 36.490921, 32.993919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723934, 36.502258, 33.296253>,  <33.880932, 36.509060, 33.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723934, 36.502258, 33.296253>,  <33.462273, 36.490921, 32.993919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723934, 36.502258, 33.296253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741215, -0.174989, 0.648058,
		0.150630, -0.984162, -0.093461,
		0.654149, 0.028342, 0.755835,
		33.920177, 36.510761, 33.523003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339962, 35.923820, 33.363182>,  <33.462273, 36.490921, 32.993919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339962, 35.923820, 33.363182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533295, 36.159096, 33.622543>,  <33.649296, 36.300262, 33.778160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533295, 36.159096, 33.622543>,  <33.339962, 35.923820, 33.363182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533295, 36.159096, 33.622543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720453, -0.153515, 0.676299,
		0.497331, -0.794020, 0.349563,
		0.483332, 0.588188, 0.648402,
		33.678295, 36.335552, 33.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118439, 35.701488, 33.919937>,  <33.339962, 35.923820, 33.363182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118439, 35.701488, 33.919937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286884, 36.041149, 34.047443>,  <33.387951, 36.244946, 34.123947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286884, 36.041149, 34.047443>,  <33.118439, 35.701488, 33.919937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286884, 36.041149, 34.047443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788818, 0.169405, 0.590819,
		0.447694, -0.500247, 0.741163,
		0.421112, 0.849149, 0.318763,
		33.413219, 36.295895, 34.143070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881832, 35.765186, 34.602470>,  <33.118439, 35.701488, 33.919937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881832, 35.765186, 34.602470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987175, 36.123135, 34.458328>,  <33.050381, 36.337902, 34.371841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987175, 36.123135, 34.458328>,  <32.881832, 35.765186, 34.602470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987175, 36.123135, 34.458328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743969, 0.426194, 0.514653,
		0.614128, 0.132557, 0.777994,
		0.263356, 0.894867, -0.360356,
		33.066181, 36.391594, 34.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735226, 36.192898, 35.106297>,  <32.881832, 35.765186, 34.602470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735226, 36.192898, 35.106297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727798, 36.434227, 34.787384>,  <32.723343, 36.579025, 34.596035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727798, 36.434227, 34.787384>,  <32.735226, 36.192898, 35.106297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727798, 36.434227, 34.787384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888457, 0.355788, 0.289929,
		0.458584, 0.713734, 0.529419,
		-0.018572, 0.603323, -0.797281,
		32.722225, 36.615223, 34.548199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253559, 36.662884, 35.425636>,  <32.735226, 36.192898, 35.106297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253559, 36.662884, 35.425636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401756, 37.031395, 35.378349>,  <32.490673, 37.252502, 35.349979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401756, 37.031395, 35.378349>,  <32.253559, 36.662884, 35.425636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401756, 37.031395, 35.378349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883456, -0.388820, -0.261391,
		-0.286779, -0.007593, -0.957967,
		0.370492, 0.921282, -0.118214,
		32.512905, 37.307781, 35.342884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267982, 36.714691, 34.722145>,  <32.253559, 36.662884, 35.425636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267982, 36.714691, 34.722145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543446, 36.909393, 34.937111>,  <32.708725, 37.026215, 35.066090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543446, 36.909393, 34.937111>,  <32.267982, 36.714691, 34.722145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543446, 36.909393, 34.937111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719557, -0.367440, -0.589259,
		-0.089359, 0.792499, -0.603292,
		0.688660, 0.486758, 0.537413,
		32.750042, 37.055420, 35.098335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629425, 37.162647, 34.208103>,  <32.267982, 36.714691, 34.722145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629425, 37.162647, 34.208103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855530, 37.075916, 34.526466>,  <32.991192, 37.023876, 34.717484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855530, 37.075916, 34.526466>,  <32.629425, 37.162647, 34.208103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855530, 37.075916, 34.526466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679757, -0.424184, -0.598329,
		0.467344, 0.879235, -0.092386,
		0.565260, -0.216826, 0.795907,
		33.025108, 37.010868, 34.765240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313370, 37.451012, 34.126083>,  <32.629425, 37.162647, 34.208103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313370, 37.451012, 34.126083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305466, 37.118023, 34.347569>,  <33.300724, 36.918228, 34.480457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305466, 37.118023, 34.347569>,  <33.313370, 37.451012, 34.126083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305466, 37.118023, 34.347569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797741, -0.346968, -0.493176,
		0.602676, 0.431972, 0.670956,
		-0.019762, -0.832474, 0.553711,
		33.299538, 36.868282, 34.513683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885517, 37.361809, 34.602203>,  <33.313370, 37.451012, 34.126083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885517, 37.361809, 34.602203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740692, 37.012592, 34.471535>,  <33.653797, 36.803062, 34.393135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740692, 37.012592, 34.471535>,  <33.885517, 37.361809, 34.602203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740692, 37.012592, 34.471535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849706, -0.165013, -0.500770,
		0.383287, -0.458884, 0.801571,
		-0.362065, -0.873038, -0.326669,
		33.632072, 36.750679, 34.373535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458858, 36.894871, 34.680027>,  <33.885517, 37.361809, 34.602203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458858, 36.894871, 34.680027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213043, 36.716003, 34.420063>,  <34.065556, 36.608685, 34.264084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213043, 36.716003, 34.420063>,  <34.458858, 36.894871, 34.680027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213043, 36.716003, 34.420063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753756, -0.089710, -0.651002,
		0.232803, -0.889941, 0.392185,
		-0.614536, -0.447167, -0.649913,
		34.028683, 36.581852, 34.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880325, 36.367863, 34.475426>,  <34.458858, 36.894871, 34.680027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880325, 36.367863, 34.475426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595764, 36.425659, 34.200317>,  <34.425026, 36.460339, 34.035252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595764, 36.425659, 34.200317>,  <34.880325, 36.367863, 34.475426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595764, 36.425659, 34.200317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641934, -0.264728, -0.719611,
		-0.286057, -0.953435, 0.095567,
		-0.711402, 0.144502, -0.687769,
		34.382343, 36.469006, 33.993988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747395, 35.712910, 34.131767>,  <34.880325, 36.367863, 34.475426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747395, 35.712910, 34.131767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664879, 36.037979, 33.913773>,  <34.615372, 36.233021, 33.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664879, 36.037979, 33.913773>,  <34.747395, 35.712910, 34.131767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664879, 36.037979, 33.913773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490825, -0.395883, -0.776123,
		-0.846485, -0.427595, -0.317215,
		-0.206287, 0.812674, -0.544984,
		34.602993, 36.281780, 33.750278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436375, 35.526226, 33.554245>,  <34.747395, 35.712910, 34.131767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436375, 35.526226, 33.554245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624569, 35.870628, 33.476990>,  <34.737488, 36.077271, 33.430637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624569, 35.870628, 33.476990>,  <34.436375, 35.526226, 33.554245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624569, 35.870628, 33.476990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328160, -0.373903, -0.867472,
		-0.819116, 0.344758, -0.458467,
		0.470490, 0.861010, -0.193134,
		34.765717, 36.128933, 33.419048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382488, 35.569923, 32.798771>,  <34.436375, 35.526226, 33.554245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382488, 35.569923, 32.798771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 35.866215, 32.896683>,  <34.782890, 36.043987, 32.955429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 35.866215, 32.896683>,  <34.382488, 35.569923, 32.798771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632740, 35.866215, 32.896683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597248, -0.252920, -0.761135,
		-0.501883, 0.622379, -0.600631,
		0.625626, 0.740726, 0.244779,
		34.820427, 36.088432, 32.970116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478840, 35.937523, 32.219929>,  <34.382488, 35.569923, 32.798771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478840, 35.937523, 32.219929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796967, 36.029102, 32.444447>,  <34.987843, 36.084049, 32.579159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796967, 36.029102, 32.444447>,  <34.478840, 35.937523, 32.219929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796967, 36.029102, 32.444447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605714, -0.263244, -0.750874,
		-0.024152, 0.937169, -0.348039,
		0.795315, 0.228947, 0.561299,
		35.035561, 36.097786, 32.612835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897640, 36.291603, 31.756758>,  <34.478840, 35.937523, 32.219929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897640, 36.291603, 31.756758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140270, 36.163181, 32.047684>,  <35.285847, 36.086128, 32.222240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140270, 36.163181, 32.047684>,  <34.897640, 36.291603, 31.756758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140270, 36.163181, 32.047684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620262, -0.381173, -0.685553,
		0.497334, 0.866966, -0.032071,
		0.606575, -0.321056, 0.727316,
		35.322243, 36.066864, 32.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500511, 36.565830, 31.547428>,  <34.897640, 36.291603, 31.756758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500511, 36.565830, 31.547428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597134, 36.266113, 31.794075>,  <35.655106, 36.086285, 31.942062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597134, 36.266113, 31.794075>,  <35.500511, 36.565830, 31.547428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597134, 36.266113, 31.794075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681310, -0.321523, -0.657601,
		0.690990, 0.578956, 0.432832,
		0.241556, -0.749289, 0.616618,
		35.669601, 36.041328, 31.979061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172852, 36.511570, 31.499317>,  <35.500511, 36.565830, 31.547428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172852, 36.511570, 31.499317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080498, 36.158714, 31.663527>,  <36.025085, 35.947002, 31.762053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080498, 36.158714, 31.663527>,  <36.172852, 36.511570, 31.499317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080498, 36.158714, 31.663527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683453, -0.447345, -0.576866,
		0.692519, 0.147382, 0.706185,
		-0.230889, -0.882134, 0.410523,
		36.011230, 35.894073, 31.786684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786545, 36.323326, 31.688354>,  <36.172852, 36.511570, 31.499317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786545, 36.323326, 31.688354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575176, 35.986122, 31.648130>,  <36.448357, 35.783802, 31.623997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575176, 35.986122, 31.648130>,  <36.786545, 36.323326, 31.688354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575176, 35.986122, 31.648130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791908, -0.446729, -0.416312,
		0.306030, -0.299621, 0.903644,
		-0.528420, -0.843007, -0.100560,
		36.416649, 35.733219, 31.617962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256062, 35.795746, 31.804621>,  <36.786545, 36.323326, 31.688354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256062, 35.795746, 31.804621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957432, 35.599155, 31.625256>,  <36.778252, 35.481201, 31.517635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957432, 35.599155, 31.625256>,  <37.256062, 35.795746, 31.804621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957432, 35.599155, 31.625256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661066, -0.472107, -0.583186,
		0.074921, -0.731826, 0.677361,
		-0.746578, -0.491474, -0.448415,
		36.733459, 35.451714, 31.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267838, 34.975883, 31.972893>,  <37.256062, 35.795746, 31.804621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267838, 34.975883, 31.972893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076130, 35.076466, 31.636543>,  <36.961105, 35.136814, 31.434734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076130, 35.076466, 31.636543>,  <37.267838, 34.975883, 31.972893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076130, 35.076466, 31.636543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677698, -0.502762, -0.536615,
		-0.557696, -0.827042, 0.070544,
		-0.479270, 0.251460, -0.840873,
		36.932350, 35.151905, 31.384281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286144, 34.347984, 31.616812>,  <37.267838, 34.975883, 31.972893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286144, 34.347984, 31.616812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214138, 34.599594, 31.314308>,  <37.170937, 34.750561, 31.132807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214138, 34.599594, 31.314308>,  <37.286144, 34.347984, 31.616812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214138, 34.599594, 31.314308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553540, -0.570756, -0.606491,
		-0.813136, -0.527793, -0.245448,
		-0.180011, 0.629024, -0.756257,
		37.160133, 34.788300, 31.087431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261402, 33.919807, 30.861032>,  <37.286144, 34.347984, 31.616812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261402, 33.919807, 30.861032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291134, 34.308758, 30.772532>,  <37.308971, 34.542130, 30.719431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291134, 34.308758, 30.772532>,  <37.261402, 33.919807, 30.861032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291134, 34.308758, 30.772532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603577, -0.220478, -0.766214,
		-0.793832, -0.076594, -0.603294,
		0.074326, 0.972380, -0.221253,
		37.313431, 34.600471, 30.706156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069672, 34.037392, 30.113277>,  <37.261402, 33.919807, 30.861032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069672, 34.037392, 30.113277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271255, 34.377674, 30.173037>,  <37.392204, 34.581844, 30.208891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271255, 34.377674, 30.173037>,  <37.069672, 34.037392, 30.113277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271255, 34.377674, 30.173037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387003, -0.067769, -0.919585,
		-0.772175, 0.521250, -0.363380,
		0.503960, 0.850709, 0.149395,
		37.422443, 34.632885, 30.217855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038097, 34.406258, 29.504631>,  <37.069672, 34.037392, 30.113277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038097, 34.406258, 29.504631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355015, 34.585659, 29.670094>,  <37.545166, 34.693298, 29.769371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355015, 34.585659, 29.670094>,  <37.038097, 34.406258, 29.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355015, 34.585659, 29.670094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420647, 0.089564, -0.902792,
		-0.441953, 0.889283, -0.117700,
		0.792296, 0.448502, 0.413657,
		37.592705, 34.720211, 29.794191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218533, 35.100445, 29.180344>,  <37.038097, 34.406258, 29.504631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218533, 35.100445, 29.180344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557201, 34.948090, 29.328978>,  <37.760403, 34.856674, 29.418158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557201, 34.948090, 29.328978>,  <37.218533, 35.100445, 29.180344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557201, 34.948090, 29.328978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464937, 0.189880, -0.864742,
		0.258817, 0.904913, 0.337856,
		0.846669, -0.380892, 0.371583,
		37.811203, 34.833820, 29.440453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761837, 35.508362, 28.971657>,  <37.218533, 35.100445, 29.180344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761837, 35.508362, 28.971657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954983, 35.178535, 29.089590>,  <38.070869, 34.980640, 29.160351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954983, 35.178535, 29.089590>,  <37.761837, 35.508362, 28.971657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954983, 35.178535, 29.089590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550345, 0.023862, -0.834596,
		0.681145, 0.565261, 0.465319,
		0.482868, -0.824567, 0.294835,
		38.099842, 34.931164, 29.178040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468498, 35.674549, 28.910017>,  <37.761837, 35.508362, 28.971657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468498, 35.674549, 28.910017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441402, 35.275719, 28.895884>,  <38.425144, 35.036419, 28.887403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441402, 35.275719, 28.895884>,  <38.468498, 35.674549, 28.910017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441402, 35.275719, 28.895884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624417, -0.014745, -0.780953,
		0.778149, -0.074962, 0.623590,
		-0.067737, -0.997077, -0.035334,
		38.421082, 34.976597, 28.885284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144333, 35.421650, 28.785252>,  <38.468498, 35.674549, 28.910017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144333, 35.421650, 28.785252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917385, 35.118446, 28.656561>,  <38.781216, 34.936523, 28.579348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917385, 35.118446, 28.656561>,  <39.144333, 35.421650, 28.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917385, 35.118446, 28.656561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514905, -0.021679, -0.856973,
		0.642621, -0.651881, 0.402604,
		-0.567372, -0.758012, -0.321725,
		38.747173, 34.891045, 28.560043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578209, 35.069969, 28.304659>,  <39.144333, 35.421650, 28.785252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578209, 35.069969, 28.304659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218372, 34.908180, 28.238766>,  <39.002472, 34.811108, 28.199230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218372, 34.908180, 28.238766>,  <39.578209, 35.069969, 28.304659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218372, 34.908180, 28.238766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290223, -0.271785, -0.917553,
		0.326351, -0.873233, 0.361882,
		-0.899592, -0.404471, -0.164735,
		38.948494, 34.786839, 28.189344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824047, 34.458729, 28.096369>,  <39.578209, 35.069969, 28.304659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824047, 34.458729, 28.096369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458672, 34.547272, 27.959761>,  <39.239449, 34.600399, 27.877796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458672, 34.547272, 27.959761>,  <39.824047, 34.458729, 28.096369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458672, 34.547272, 27.959761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261371, -0.324159, -0.909178,
		-0.311947, -0.919743, 0.238247,
		-0.913441, 0.221344, -0.341515,
		39.184643, 34.613682, 27.857306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556255, 33.877159, 27.727943>,  <39.824047, 34.458729, 28.096369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556255, 33.877159, 27.727943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376724, 34.201408, 27.577511>,  <39.269005, 34.395958, 27.487251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376724, 34.201408, 27.577511>,  <39.556255, 33.877159, 27.727943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376724, 34.201408, 27.577511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327901, -0.242101, -0.913164,
		-0.831283, -0.533174, -0.157142,
		-0.448830, 0.810625, -0.376083,
		39.242077, 34.444595, 27.464685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201408, 33.661652, 27.140747>,  <39.556255, 33.877159, 27.727943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201408, 33.661652, 27.140747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237720, 34.056652, 27.089212>,  <39.259506, 34.293652, 27.058292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237720, 34.056652, 27.089212>,  <39.201408, 33.661652, 27.140747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237720, 34.056652, 27.089212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293417, -0.150150, -0.944120,
		-0.951665, 0.047905, -0.303380,
		0.090780, 0.987502, -0.128836,
		39.264954, 34.352901, 27.050562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188663, 33.673904, 26.412521>,  <39.201408, 33.661652, 27.140747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188663, 33.673904, 26.412521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280277, 34.049114, 26.516560>,  <39.335247, 34.274239, 26.578983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280277, 34.049114, 26.516560>,  <39.188663, 33.673904, 26.412521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280277, 34.049114, 26.516560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410223, 0.149301, -0.899681,
		-0.882756, 0.312758, -0.350604,
		0.229037, 0.938025, 0.260097,
		39.348988, 34.330521, 26.594589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700996, 34.137402, 26.023323>,  <39.188663, 33.673904, 26.412521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700996, 34.137402, 26.023323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039093, 34.331818, 26.112164>,  <39.241951, 34.448467, 26.165468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039093, 34.331818, 26.112164>,  <38.700996, 34.137402, 26.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039093, 34.331818, 26.112164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184571, 0.124512, -0.974900,
		-0.501498, 0.865019, 0.015533,
		0.845241, 0.486044, 0.222100,
		39.292664, 34.477631, 26.178793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829609, 34.480629, 25.425514>,  <38.700996, 34.137402, 26.023323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829609, 34.480629, 25.425514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190323, 34.486561, 25.598284>,  <39.406754, 34.490120, 25.701946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190323, 34.486561, 25.598284>,  <38.829609, 34.480629, 25.425514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190323, 34.486561, 25.598284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422694, 0.177952, -0.888630,
		-0.090044, 0.983927, 0.154205,
		0.901788, 0.014834, 0.431923,
		39.460861, 34.491013, 25.727861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058331, 35.033260, 25.165123>,  <38.829609, 34.480629, 25.425514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058331, 35.033260, 25.165123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381432, 34.832069, 25.288115>,  <39.575294, 34.711353, 25.361910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381432, 34.832069, 25.288115>,  <39.058331, 35.033260, 25.165123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381432, 34.832069, 25.288115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484483, 0.269235, -0.832339,
		0.335863, 0.821296, 0.461160,
		0.807757, -0.502976, 0.307478,
		39.623760, 34.681175, 25.380358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487328, 35.506863, 25.149803>,  <39.058331, 35.033260, 25.165123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487328, 35.506863, 25.149803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684944, 35.159199, 25.140991>,  <39.803516, 34.950600, 25.135704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684944, 35.159199, 25.140991>,  <39.487328, 35.506863, 25.149803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684944, 35.159199, 25.140991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355810, 0.225240, -0.907009,
		0.793296, 0.440265, 0.420534,
		0.494045, -0.869157, -0.022031,
		39.833157, 34.898453, 25.134382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137024, 35.724716, 24.764723>,  <39.487328, 35.506863, 25.149803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137024, 35.724716, 24.764723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137352, 35.325264, 24.743771>,  <40.137547, 35.085594, 24.731199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137352, 35.325264, 24.743771>,  <40.137024, 35.724716, 24.764723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137352, 35.325264, 24.743771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249629, 0.050927, -0.967001,
		0.968341, -0.012287, 0.249328,
		0.000816, -0.998627, -0.052382,
		40.137596, 35.025677, 24.728056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785675, 35.528625, 24.547234>,  <40.137024, 35.724716, 24.764723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785675, 35.528625, 24.547234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544495, 35.221371, 24.461054>,  <40.399788, 35.037018, 24.409346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544495, 35.221371, 24.461054>,  <40.785675, 35.528625, 24.547234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544495, 35.221371, 24.461054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336996, -0.000445, -0.941506,
		0.723111, -0.640284, 0.259128,
		-0.602946, -0.768138, -0.215452,
		40.363609, 34.990929, 24.396418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143311, 34.881653, 24.295282>,  <40.785675, 35.528625, 24.547234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143311, 34.881653, 24.295282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770969, 34.883434, 24.149132>,  <40.547565, 34.884502, 24.061441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770969, 34.883434, 24.149132>,  <41.143311, 34.881653, 24.295282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770969, 34.883434, 24.149132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346440, -0.307202, -0.886344,
		-0.116188, -0.951634, 0.284417,
		-0.930849, 0.004449, -0.365377,
		40.491714, 34.884769, 24.039518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075336, 34.255230, 23.855211>,  <41.143311, 34.881653, 24.295282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075336, 34.255230, 23.855211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782421, 34.496788, 23.729307>,  <40.606674, 34.641724, 23.653765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782421, 34.496788, 23.729307>,  <41.075336, 34.255230, 23.855211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782421, 34.496788, 23.729307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257687, -0.182115, -0.948911,
		-0.630363, -0.775981, -0.022256,
		-0.732284, 0.603893, -0.314759,
		40.562737, 34.677956, 23.634880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738972, 33.853382, 23.403587>,  <41.075336, 34.255230, 23.855211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738972, 33.853382, 23.403587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666634, 34.236076, 23.312420>,  <40.623230, 34.465694, 23.257719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666634, 34.236076, 23.312420>,  <40.738972, 33.853382, 23.403587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666634, 34.236076, 23.312420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243962, -0.180859, -0.952771,
		-0.952774, -0.227903, -0.200701,
		-0.180840, 0.956739, -0.227917,
		40.612381, 34.523098, 23.244045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697765, 33.748943, 22.671343>,  <40.738972, 33.853382, 23.403587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697765, 33.748943, 22.671343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674835, 34.148254, 22.676376>,  <40.661076, 34.387840, 22.679398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674835, 34.148254, 22.676376>,  <40.697765, 33.748943, 22.671343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674835, 34.148254, 22.676376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209357, 0.024347, -0.977536,
		-0.976158, -0.053404, -0.210392,
		-0.057327, 0.998276, 0.012586,
		40.657639, 34.447739, 22.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266357, 33.929466, 22.120539>,  <40.697765, 33.748943, 22.671343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266357, 33.929466, 22.120539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472198, 34.255062, 22.228315>,  <40.595703, 34.450420, 22.292980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472198, 34.255062, 22.228315>,  <40.266357, 33.929466, 22.120539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472198, 34.255062, 22.228315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284540, 0.134313, -0.949209,
		-0.808838, 0.565135, -0.162495,
		0.514606, 0.813992, 0.269441,
		40.626579, 34.499260, 22.309147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062107, 34.407429, 21.580030>,  <40.266357, 33.929466, 22.120539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062107, 34.407429, 21.580030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409370, 34.521107, 21.742779>,  <40.617729, 34.589314, 21.840427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409370, 34.521107, 21.742779>,  <40.062107, 34.407429, 21.580030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409370, 34.521107, 21.742779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381081, 0.143471, -0.913342,
		-0.317941, 0.947971, 0.016254,
		0.868154, 0.284194, 0.406869,
		40.669815, 34.606365, 21.864840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300838, 34.872734, 21.184616>,  <40.062107, 34.407429, 21.580030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300838, 34.872734, 21.184616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638336, 34.821156, 21.393024>,  <40.840836, 34.790207, 21.518070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638336, 34.821156, 21.393024>,  <40.300838, 34.872734, 21.184616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638336, 34.821156, 21.393024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535436, 0.269868, -0.800300,
		-0.037410, 0.954224, 0.296744,
		0.843747, -0.128948, 0.521021,
		40.891460, 34.782471, 21.549332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675999, 35.257633, 20.861654>,  <40.300838, 34.872734, 21.184616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675999, 35.257633, 20.861654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948086, 35.038017, 21.055920>,  <41.111336, 34.906250, 21.172480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948086, 35.038017, 21.055920>,  <40.675999, 35.257633, 20.861654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948086, 35.038017, 21.055920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657323, 0.163662, -0.735623,
		0.324399, 0.819619, 0.472219,
		0.680215, -0.549036, 0.485663,
		41.152149, 34.873306, 21.201618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268177, 35.765305, 21.090223>,  <40.675999, 35.257633, 20.861654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268177, 35.765305, 21.090223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395321, 35.387421, 21.058025>,  <41.471607, 35.160690, 21.038706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395321, 35.387421, 21.058025>,  <41.268177, 35.765305, 21.090223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395321, 35.387421, 21.058025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536288, 0.249156, -0.806422,
		0.781894, 0.213163, 0.585836,
		0.317864, -0.944713, -0.080497,
		41.490681, 35.104008, 21.033876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022743, 35.777596, 20.984016>,  <41.268177, 35.765305, 21.090223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022743, 35.777596, 20.984016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877995, 35.431904, 20.844217>,  <41.791145, 35.224487, 20.760338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877995, 35.431904, 20.844217>,  <42.022743, 35.777596, 20.984016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877995, 35.431904, 20.844217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496976, 0.138344, -0.856666,
		0.788710, -0.483696, 0.379441,
		-0.361872, -0.864233, -0.349498,
		41.769432, 35.172634, 20.739368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598991, 35.529659, 20.595139>,  <42.022743, 35.777596, 20.984016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598991, 35.529659, 20.595139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275604, 35.323650, 20.481201>,  <42.081573, 35.200047, 20.412838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275604, 35.323650, 20.481201>,  <42.598991, 35.529659, 20.595139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275604, 35.323650, 20.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281285, 0.087002, -0.955672,
		0.516971, -0.852752, 0.074528,
		-0.808468, -0.515018, -0.284844,
		42.033062, 35.169144, 20.395748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822002, 35.168610, 20.047745>,  <42.598991, 35.529659, 20.595139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822002, 35.168610, 20.047745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423416, 35.173267, 20.014465>,  <42.184265, 35.176060, 19.994497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423416, 35.173267, 20.014465>,  <42.822002, 35.168610, 20.047745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423416, 35.173267, 20.014465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083480, 0.026358, -0.996161,
		-0.009410, -0.999585, -0.027237,
		-0.996465, 0.011647, -0.083197,
		42.124477, 35.176758, 19.989506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749226, 34.650887, 19.667770>,  <42.822002, 35.168610, 20.047745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749226, 34.650887, 19.667770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425896, 34.883163, 19.628973>,  <42.231899, 35.022530, 19.605694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425896, 34.883163, 19.628973>,  <42.749226, 34.650887, 19.667770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425896, 34.883163, 19.628973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107896, -0.015845, -0.994036,
		-0.578768, -0.813967, -0.049847,
		-0.808322, 0.580695, -0.096994,
		42.183399, 35.057373, 19.599874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572834, 34.406151, 18.996321>,  <42.749226, 34.650887, 19.667770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572834, 34.406151, 18.996321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358475, 34.732330, 19.083826>,  <42.229858, 34.928040, 19.136330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358475, 34.732330, 19.083826>,  <42.572834, 34.406151, 18.996321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358475, 34.732330, 19.083826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091760, 0.201325, -0.975217,
		-0.839284, -0.542687, -0.033063,
		-0.535894, 0.815451, 0.218766,
		42.197708, 34.976967, 19.149456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917423, 34.361477, 18.592218>,  <42.572834, 34.406151, 18.996321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917423, 34.361477, 18.592218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011154, 34.741856, 18.673006>,  <42.067390, 34.970081, 18.721478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011154, 34.741856, 18.673006>,  <41.917423, 34.361477, 18.592218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011154, 34.741856, 18.673006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126712, 0.235856, -0.963492,
		-0.963866, 0.200176, 0.175763,
		0.234323, 0.950948, 0.201968,
		42.081451, 35.027142, 18.733597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253784, 34.798935, 18.438953>,  <41.917423, 34.361477, 18.592218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253784, 34.798935, 18.438953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614590, 34.928436, 18.324720>,  <41.831074, 35.006138, 18.256182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614590, 34.928436, 18.324720>,  <41.253784, 34.798935, 18.438953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614590, 34.928436, 18.324720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269473, -0.094575, -0.958353,
		-0.337278, 0.941403, 0.001934,
		0.902013, 0.323753, -0.285581,
		41.885193, 35.025562, 18.239046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260139, 35.250141, 17.952745>,  <41.253784, 34.798935, 18.438953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260139, 35.250141, 17.952745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601982, 35.062321, 17.864046>,  <41.807087, 34.949627, 17.810827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601982, 35.062321, 17.864046>,  <41.260139, 35.250141, 17.952745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601982, 35.062321, 17.864046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316255, -0.131936, -0.939455,
		0.411866, 0.872991, -0.261251,
		0.854604, -0.469552, -0.221748,
		41.858364, 34.921455, 17.797522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734627, 35.606724, 17.414068>,  <41.260139, 35.250141, 17.952745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734627, 35.606724, 17.414068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724079, 35.210583, 17.468489>,  <41.717751, 34.972900, 17.501141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724079, 35.210583, 17.468489>,  <41.734627, 35.606724, 17.414068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724079, 35.210583, 17.468489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576888, -0.096071, -0.811154,
		0.816398, -0.099878, -0.568787,
		-0.026372, -0.990351, 0.136051,
		41.716167, 34.913479, 17.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977818, 36.151817, 17.903048>,  <41.734627, 35.606724, 17.414068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977818, 36.151817, 17.903048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622959, 36.293594, 17.784832>,  <41.410046, 36.378662, 17.713902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622959, 36.293594, 17.784832>,  <41.977818, 36.151817, 17.903048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622959, 36.293594, 17.784832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391280, -0.238140, 0.888926,
		0.244696, 0.904244, 0.349952,
		-0.887143, 0.354446, -0.295541,
		41.356815, 36.399929, 17.696169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472260, 36.233292, 17.351622>,  <41.977818, 36.151817, 17.903048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472260, 36.233292, 17.351622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794846, 36.322159, 17.570805>,  <42.988396, 36.375481, 17.702314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794846, 36.322159, 17.570805>,  <42.472260, 36.233292, 17.351622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794846, 36.322159, 17.570805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344808, -0.929546, -0.130585,
		0.480341, 0.294252, -0.826250,
		0.806462, 0.222172, 0.547959,
		43.036785, 36.388809, 17.735191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800014, 36.236607, 17.019962>,  <42.472260, 36.233292, 17.351622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800014, 36.236607, 17.019962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672009, 36.597218, 16.903458>,  <41.595203, 36.813583, 16.833555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672009, 36.597218, 16.903458>,  <41.800014, 36.236607, 17.019962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672009, 36.597218, 16.903458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432417, 0.134554, 0.891578,
		0.842975, 0.411264, 0.346778,
		-0.320014, 0.901531, -0.291263,
		41.576004, 36.867676, 16.816078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042225, 36.838646, 17.380201>,  <41.800014, 36.236607, 17.019962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042225, 36.838646, 17.380201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682190, 36.938145, 17.237114>,  <41.466167, 36.997845, 17.151260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682190, 36.938145, 17.237114>,  <42.042225, 36.838646, 17.380201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682190, 36.938145, 17.237114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303910, 0.229884, 0.924550,
		0.312217, 0.940891, -0.131318,
		-0.900088, 0.248751, -0.357720,
		41.412163, 37.012772, 17.129799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661728, 37.331848, 17.370981>,  <42.042225, 36.838646, 17.380201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661728, 37.331848, 17.370981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379044, 37.604160, 17.293945>,  <42.209431, 37.767548, 17.247723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379044, 37.604160, 17.293945>,  <42.661728, 37.331848, 17.370981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379044, 37.604160, 17.293945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509556, -0.300924, 0.806100,
		0.490822, 0.667819, 0.559564,
		-0.706715, 0.680781, -0.192591,
		42.167030, 37.808395, 17.236168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443211, 37.647953, 17.997330>,  <42.661728, 37.331848, 17.370981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443211, 37.647953, 17.997330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145546, 37.656330, 17.730263>,  <41.966946, 37.661358, 17.570023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145546, 37.656330, 17.730263>,  <42.443211, 37.647953, 17.997330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145546, 37.656330, 17.730263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662516, -0.150886, 0.733693,
		-0.085374, 0.988329, 0.126160,
		-0.744166, 0.020945, -0.667666,
		41.922295, 37.662613, 17.529963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762226, 38.191097, 18.001751>,  <42.443211, 37.647953, 17.997330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762226, 38.191097, 18.001751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708656, 37.807606, 17.901434>,  <41.676514, 37.577511, 17.841244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708656, 37.807606, 17.901434>,  <41.762226, 38.191097, 18.001751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708656, 37.807606, 17.901434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634982, -0.111272, 0.764472,
		-0.760830, 0.261632, -0.593875,
		-0.133928, -0.958732, -0.250791,
		41.668476, 37.519985, 17.826197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987625, 38.023998, 17.960947>,  <41.762226, 38.191097, 18.001751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987625, 38.023998, 17.960947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206985, 37.697330, 18.032839>,  <41.338604, 37.501331, 18.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206985, 37.697330, 18.032839>,  <40.987625, 38.023998, 17.960947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206985, 37.697330, 18.032839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603943, -0.238162, 0.760613,
		-0.578365, -0.525670, -0.623831,
		0.548404, -0.816670, 0.179730,
		41.371506, 37.452328, 18.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549965, 37.485439, 17.971575>,  <40.987625, 38.023998, 17.960947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549965, 37.485439, 17.971575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846558, 37.351906, 18.204386>,  <41.024513, 37.271786, 18.344072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846558, 37.351906, 18.204386>,  <40.549965, 37.485439, 17.971575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846558, 37.351906, 18.204386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641130, -0.096707, 0.761314,
		-0.197865, -0.937659, -0.285736,
		0.741486, -0.333831, 0.582027,
		41.069004, 37.251759, 18.378994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240093, 37.059250, 18.394440>,  <40.549965, 37.485439, 17.971575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240093, 37.059250, 18.394440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568756, 37.120918, 18.613932>,  <40.765953, 37.157921, 18.745626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568756, 37.120918, 18.613932>,  <40.240093, 37.059250, 18.394440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568756, 37.120918, 18.613932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551993, -0.024681, 0.833483,
		0.142045, -0.987735, 0.064824,
		0.821661, 0.154175, 0.548729,
		40.815254, 37.167171, 18.778551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034161, 36.699062, 19.080223>,  <40.240093, 37.059250, 18.394440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034161, 36.699062, 19.080223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332169, 36.955368, 19.154381>,  <40.510971, 37.109150, 19.198875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332169, 36.955368, 19.154381>,  <40.034161, 36.699062, 19.080223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332169, 36.955368, 19.154381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418146, 0.232073, 0.878235,
		0.519716, -0.731822, 0.440831,
		0.745016, 0.640764, 0.185396,
		40.555672, 37.147598, 19.209999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287380, 36.629711, 19.813723>,  <40.034161, 36.699062, 19.080223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287380, 36.629711, 19.813723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412533, 36.999290, 19.725704>,  <40.487625, 37.221039, 19.672894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412533, 36.999290, 19.725704>,  <40.287380, 36.629711, 19.813723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412533, 36.999290, 19.725704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287141, 0.312855, 0.905357,
		0.905347, -0.220089, 0.363192,
		0.312886, 0.923949, -0.220045,
		40.506397, 37.276474, 19.659691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730488, 36.816944, 20.361525>,  <40.287380, 36.629711, 19.813723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730488, 36.816944, 20.361525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601757, 37.165703, 20.213894>,  <40.524517, 37.374958, 20.125315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601757, 37.165703, 20.213894>,  <40.730488, 36.816944, 20.361525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601757, 37.165703, 20.213894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476180, 0.187873, 0.859044,
		0.818339, 0.452213, 0.354718,
		-0.321829, 0.871898, -0.369079,
		40.505207, 37.427273, 20.103170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097115, 37.353722, 20.783409>,  <40.730488, 36.816944, 20.361525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097115, 37.353722, 20.783409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774277, 37.508301, 20.604856>,  <40.580574, 37.601048, 20.497725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774277, 37.508301, 20.604856>,  <41.097115, 37.353722, 20.783409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774277, 37.508301, 20.604856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338728, 0.316178, 0.886169,
		0.483595, 0.866423, -0.124284,
		-0.807093, 0.386448, -0.446384,
		40.532150, 37.624237, 20.470942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121967, 38.093105, 20.897421>,  <41.097115, 37.353722, 20.783409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121967, 38.093105, 20.897421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739193, 37.987991, 20.848083>,  <40.509529, 37.924923, 20.818481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739193, 37.987991, 20.848083>,  <41.121967, 38.093105, 20.897421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739193, 37.987991, 20.848083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202991, 0.302018, 0.931440,
		-0.207514, 0.916369, -0.342355,
		-0.956939, -0.262781, -0.123342,
		40.452110, 37.909157, 20.811081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904545, 38.602329, 21.296432>,  <41.121967, 38.093105, 20.897421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904545, 38.602329, 21.296432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602798, 38.347248, 21.234106>,  <40.421753, 38.194199, 21.196711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602798, 38.347248, 21.234106>,  <40.904545, 38.602329, 21.296432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602798, 38.347248, 21.234106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278945, 0.096520, 0.955444,
		-0.594246, 0.764215, -0.250694,
		-0.754362, -0.637699, -0.155817,
		40.376492, 38.155937, 21.187361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436543, 38.775436, 21.768827>,  <40.904545, 38.602329, 21.296432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436543, 38.775436, 21.768827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285038, 38.418610, 21.670240>,  <40.194134, 38.204514, 21.611088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.285038, 38.418610, 21.670240>,  <40.436543, 38.775436, 21.768827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285038, 38.418610, 21.670240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466668, -0.045887, 0.883241,
		-0.799224, 0.449560, -0.398921,
		-0.378764, -0.892071, -0.246469,
		40.171410, 38.150990, 21.596300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729446, 38.829437, 21.927269>,  <40.436543, 38.775436, 21.768827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729446, 38.829437, 21.927269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785149, 38.434376, 21.898594>,  <39.818569, 38.197338, 21.881388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785149, 38.434376, 21.898594>,  <39.729446, 38.829437, 21.927269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785149, 38.434376, 21.898594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571684, -0.139295, 0.808563,
		-0.808570, -0.071613, -0.584025,
		0.139255, -0.987658, -0.071690,
		39.826923, 38.138077, 21.877087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141605, 38.437229, 22.129284>,  <39.729446, 38.829437, 21.927269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141605, 38.437229, 22.129284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395054, 38.128277, 22.146915>,  <39.547123, 37.942905, 22.157495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395054, 38.128277, 22.146915>,  <39.141605, 38.437229, 22.129284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395054, 38.128277, 22.146915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453147, -0.324352, 0.830334,
		-0.627039, -0.546094, -0.555520,
		0.633624, -0.772384, 0.044080,
		39.585140, 37.896561, 22.160139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745399, 37.875164, 22.284721>,  <39.141605, 38.437229, 22.129284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745399, 37.875164, 22.284721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119484, 37.779823, 22.389471>,  <39.343933, 37.722618, 22.452320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119484, 37.779823, 22.389471>,  <38.745399, 37.875164, 22.284721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119484, 37.779823, 22.389471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335789, -0.362205, 0.869514,
		-0.112395, -0.901110, -0.418771,
		0.935208, -0.238347, 0.261873,
		39.400047, 37.708321, 22.468033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693260, 37.212101, 22.557165>,  <38.745399, 37.875164, 22.284721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693260, 37.212101, 22.557165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027317, 37.373062, 22.707155>,  <39.227753, 37.469639, 22.797150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027317, 37.373062, 22.707155>,  <38.693260, 37.212101, 22.557165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027317, 37.373062, 22.707155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159781, -0.474843, 0.865445,
		0.526315, -0.782683, -0.332264,
		0.835142, 0.402407, 0.374975,
		39.277859, 37.493786, 22.819647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149616, 36.683201, 22.809204>,  <38.693260, 37.212101, 22.557165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149616, 36.683201, 22.809204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232372, 37.022045, 23.004997>,  <39.282024, 37.225353, 23.122475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232372, 37.022045, 23.004997>,  <39.149616, 36.683201, 22.809204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232372, 37.022045, 23.004997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084440, -0.482982, 0.871549,
		0.974714, -0.221647, -0.028394,
		0.206890, 0.847113, 0.489485,
		39.294437, 37.276180, 23.151842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330597, 36.500275, 23.544697>,  <39.149616, 36.683201, 22.809204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330597, 36.500275, 23.544697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257015, 36.892105, 23.577160>,  <39.212868, 37.127205, 23.596638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257015, 36.892105, 23.577160>,  <39.330597, 36.500275, 23.544697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257015, 36.892105, 23.577160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210510, -0.119912, 0.970210,
		0.960128, 0.161389, 0.228270,
		-0.183953, 0.979579, 0.081157,
		39.201828, 37.185978, 23.601507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737087, 36.685020, 24.095243>,  <39.330597, 36.500275, 23.544697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737087, 36.685020, 24.095243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470573, 36.983021, 24.082354>,  <39.310665, 37.161819, 24.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470573, 36.983021, 24.082354>,  <39.737087, 36.685020, 24.095243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470573, 36.983021, 24.082354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144315, -0.086427, 0.985750,
		0.731599, 0.661442, 0.165100,
		-0.666286, 0.745000, -0.032226,
		39.270687, 37.206520, 24.072685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892467, 37.031719, 24.642948>,  <39.737087, 36.685020, 24.095243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892467, 37.031719, 24.642948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528931, 37.183372, 24.573359>,  <39.310810, 37.274364, 24.531605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528931, 37.183372, 24.573359>,  <39.892467, 37.031719, 24.642948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528931, 37.183372, 24.573359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212001, -0.060621, 0.975387,
		0.359258, 0.923353, 0.135472,
		-0.908839, 0.379136, -0.173973,
		39.256279, 37.297112, 24.521166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771679, 37.579853, 25.162088>,  <39.892467, 37.031719, 24.642948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771679, 37.579853, 25.162088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408325, 37.449051, 25.057854>,  <39.190311, 37.370571, 24.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408325, 37.449051, 25.057854>,  <39.771679, 37.579853, 25.162088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408325, 37.449051, 25.057854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226988, -0.137743, 0.964107,
		-0.351163, 0.934930, 0.050897,
		-0.908384, -0.327006, -0.260588,
		39.135811, 37.350948, 24.979677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362045, 38.022099, 25.547117>,  <39.771679, 37.579853, 25.162088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362045, 38.022099, 25.547117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129196, 37.724617, 25.415644>,  <38.989487, 37.546127, 25.336760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129196, 37.724617, 25.415644>,  <39.362045, 38.022099, 25.547117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129196, 37.724617, 25.415644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443358, -0.048533, 0.895030,
		-0.681591, 0.666743, -0.301476,
		-0.582123, -0.743706, -0.328686,
		38.954559, 37.501507, 25.317038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778419, 38.221962, 25.840933>,  <39.362045, 38.022099, 25.547117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778419, 38.221962, 25.840933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 37.826141, 25.788776>,  <38.739002, 37.588650, 25.757483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753784, 37.826141, 25.788776>,  <38.778419, 38.221962, 25.840933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753784, 37.826141, 25.788776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613094, -0.065581, 0.787283,
		-0.787606, 0.128429, -0.602647,
		-0.061587, -0.989548, -0.130391,
		38.735310, 37.529278, 25.749659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103573, 38.136566, 26.003443>,  <38.778419, 38.221962, 25.840933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103573, 38.136566, 26.003443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264141, 37.771141, 26.029585>,  <38.360481, 37.551888, 26.045271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264141, 37.771141, 26.029585>,  <38.103573, 38.136566, 26.003443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264141, 37.771141, 26.029585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696324, -0.258050, 0.669733,
		-0.594976, -0.314352, -0.739720,
		0.401417, -0.913560, 0.065357,
		38.384567, 37.497074, 26.049192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620132, 37.540775, 25.760921>,  <38.103573, 38.136566, 26.003443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620132, 37.540775, 25.760921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888248, 37.362755, 25.998455>,  <38.049118, 37.255943, 26.140976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888248, 37.362755, 25.998455>,  <37.620132, 37.540775, 25.760921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888248, 37.362755, 25.998455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728998, -0.245188, 0.639097,
		-0.138829, -0.861285, -0.488789,
		0.670289, -0.445052, 0.593836,
		38.089336, 37.229240, 26.176605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246632, 37.009895, 26.000786>,  <37.620132, 37.540775, 25.760921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246632, 37.009895, 26.000786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554703, 37.045856, 26.253370>,  <37.739544, 37.067432, 26.404921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554703, 37.045856, 26.253370>,  <37.246632, 37.009895, 26.000786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554703, 37.045856, 26.253370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578643, -0.318001, 0.751031,
		0.268325, -0.943818, -0.192895,
		0.770178, 0.089903, 0.631462,
		37.785755, 37.072826, 26.442808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065399, 36.534973, 26.564131>,  <37.246632, 37.009895, 26.000786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065399, 36.534973, 26.564131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366524, 36.744526, 26.723543>,  <37.547199, 36.870255, 26.819191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366524, 36.744526, 26.723543>,  <37.065399, 36.534973, 26.564131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366524, 36.744526, 26.723543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329890, -0.223651, 0.917144,
		0.569603, -0.821908, 0.004455,
		0.752812, 0.523877, 0.398531,
		37.592369, 36.901688, 26.843103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230186, 36.179516, 27.207260>,  <37.065399, 36.534973, 26.564131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230186, 36.179516, 27.207260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376659, 36.548286, 27.257795>,  <37.464542, 36.769550, 27.288116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376659, 36.548286, 27.257795>,  <37.230186, 36.179516, 27.207260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376659, 36.548286, 27.257795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321546, -0.002044, 0.946892,
		0.873225, -0.387353, 0.295694,
		0.366177, 0.921929, 0.126337,
		37.486511, 36.824863, 27.295696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509583, 36.182514, 27.968534>,  <37.230186, 36.179516, 27.207260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509583, 36.182514, 27.968534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442688, 36.554855, 27.838581>,  <37.402554, 36.778259, 27.760609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442688, 36.554855, 27.838581>,  <37.509583, 36.182514, 27.968534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442688, 36.554855, 27.838581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337445, 0.255580, 0.905985,
		0.926372, 0.261140, 0.271370,
		-0.167232, 0.930852, -0.324883,
		37.392517, 36.834110, 27.741116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842403, 36.572906, 28.510578>,  <37.509583, 36.182514, 27.968534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842403, 36.572906, 28.510578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593700, 36.826950, 28.327253>,  <37.444477, 36.979378, 28.217258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593700, 36.826950, 28.327253>,  <37.842403, 36.572906, 28.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593700, 36.826950, 28.327253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053615, 0.549286, 0.833912,
		0.781369, 0.543067, -0.307474,
		-0.621762, 0.635108, -0.458312,
		37.407173, 37.017483, 28.189760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083633, 37.272182, 28.559406>,  <37.842403, 36.572906, 28.510578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083633, 37.272182, 28.559406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685986, 37.279671, 28.516750>,  <37.447395, 37.284164, 28.491158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685986, 37.279671, 28.516750>,  <38.083633, 37.272182, 28.559406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685986, 37.279671, 28.516750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074166, 0.599779, 0.796721,
		0.078878, 0.799946, -0.594865,
		-0.994121, 0.018725, -0.106639,
		37.387749, 37.285290, 28.484758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857368, 37.979748, 28.796167>,  <38.083633, 37.272182, 28.559406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857368, 37.979748, 28.796167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522102, 37.761589, 28.797653>,  <37.320942, 37.630692, 28.798544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522102, 37.761589, 28.797653>,  <37.857368, 37.979748, 28.796167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522102, 37.761589, 28.797653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280004, 0.436133, 0.855211,
		-0.468053, 0.715770, -0.518267,
		-0.838167, -0.545401, 0.003715,
		37.270653, 37.597969, 28.798767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305592, 38.431713, 28.903910>,  <37.857368, 37.979748, 28.796167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305592, 38.431713, 28.903910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171410, 38.075008, 29.025387>,  <37.090900, 37.860985, 29.098272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171410, 38.075008, 29.025387>,  <37.305592, 38.431713, 28.903910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171410, 38.075008, 29.025387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, 0.411022, 0.853697,
		-0.886119, 0.189260, -0.423052,
		-0.335454, -0.891763, 0.303692,
		37.070774, 37.807480, 29.116495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795582, 38.581650, 29.298878>,  <37.305592, 38.431713, 28.903910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795582, 38.581650, 29.298878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894772, 38.210312, 29.409641>,  <36.954285, 37.987507, 29.476099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894772, 38.210312, 29.409641>,  <36.795582, 38.581650, 29.298878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894772, 38.210312, 29.409641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362723, 0.176073, 0.915112,
		-0.898298, -0.327369, -0.293071,
		0.247977, -0.928347, 0.276910,
		36.969166, 37.931808, 29.492714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289116, 38.494019, 29.734655>,  <36.795582, 38.581650, 29.298878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289116, 38.494019, 29.734655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547508, 38.209133, 29.844534>,  <36.702545, 38.038200, 29.910461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547508, 38.209133, 29.844534>,  <36.289116, 38.494019, 29.734655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547508, 38.209133, 29.844534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314223, 0.079860, 0.945984,
		-0.695680, -0.697406, -0.172206,
		0.645982, -0.712213, 0.274698,
		36.741302, 37.995468, 29.926943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887241, 37.953762, 30.112709>,  <36.289116, 38.494019, 29.734655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887241, 37.953762, 30.112709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272610, 37.965874, 30.219223>,  <36.503830, 37.973141, 30.283131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272610, 37.965874, 30.219223>,  <35.887241, 37.953762, 30.112709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272610, 37.965874, 30.219223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264376, 0.270233, 0.925786,
		-0.043925, -0.962319, 0.268353,
		0.963419, 0.030281, 0.266284,
		36.561634, 37.974960, 30.299109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895321, 37.717636, 30.741617>,  <35.887241, 37.953762, 30.112709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895321, 37.717636, 30.741617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251175, 37.897694, 30.710854>,  <36.464687, 38.005726, 30.692396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251175, 37.897694, 30.710854>,  <35.895321, 37.717636, 30.741617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251175, 37.897694, 30.710854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052734, 0.066025, 0.996423,
		0.453610, -0.890513, 0.035000,
		0.889639, 0.450142, -0.076910,
		36.518066, 38.032738, 30.687780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372471, 37.389317, 31.153912>,  <35.895321, 37.717636, 30.741617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372471, 37.389317, 31.153912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528103, 37.755703, 31.114679>,  <36.621483, 37.975536, 31.091139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528103, 37.755703, 31.114679>,  <36.372471, 37.389317, 31.153912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528103, 37.755703, 31.114679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153539, 0.169464, 0.973503,
		0.908317, -0.363714, 0.206572,
		0.389084, 0.915966, -0.098083,
		36.644829, 38.030495, 31.085255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775078, 37.442524, 31.601419>,  <36.372471, 37.389317, 31.153912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775078, 37.442524, 31.601419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729870, 37.830753, 31.516375>,  <36.702744, 38.063690, 31.465347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729870, 37.830753, 31.516375>,  <36.775078, 37.442524, 31.601419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729870, 37.830753, 31.516375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220432, 0.184158, 0.957860,
		0.968832, 0.155127, 0.193133,
		-0.113024, 0.970578, -0.212613,
		36.695961, 38.121925, 31.452591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122753, 37.718269, 32.054874>,  <36.775078, 37.442524, 31.601419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122753, 37.718269, 32.054874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882771, 38.020741, 31.950378>,  <36.738781, 38.202225, 31.887682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882771, 38.020741, 31.950378>,  <37.122753, 37.718269, 32.054874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882771, 38.020741, 31.950378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241704, 0.139951, 0.960204,
		0.762646, 0.639225, 0.098807,
		-0.599958, 0.756178, -0.261236,
		36.702782, 38.247593, 31.872007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260597, 38.246254, 32.505051>,  <37.122753, 37.718269, 32.054874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260597, 38.246254, 32.505051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892799, 38.319309, 32.365810>,  <36.672123, 38.363144, 32.282265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892799, 38.319309, 32.365810>,  <37.260597, 38.246254, 32.505051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892799, 38.319309, 32.365810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374295, -0.136098, 0.917268,
		0.120153, 0.973714, 0.193502,
		-0.919492, 0.182639, -0.348104,
		36.616951, 38.374100, 32.261379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372421, 38.845287, 32.948521>,  <37.260597, 38.246254, 32.505051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372421, 38.845287, 32.948521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726269, 38.980022, 33.077515>,  <37.938576, 39.060863, 33.154911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726269, 38.980022, 33.077515>,  <37.372421, 38.845287, 32.948521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726269, 38.980022, 33.077515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361019, -0.056972, -0.930817,
		-0.295159, 0.939839, -0.172002,
		0.884617, 0.336835, 0.322483,
		37.991653, 39.081074, 33.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445629, 39.554913, 32.548630>,  <37.372421, 38.845287, 32.948521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445629, 39.554913, 32.548630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798649, 39.399906, 32.655170>,  <38.010460, 39.306900, 32.719093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798649, 39.399906, 32.655170>,  <37.445629, 39.554913, 32.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798649, 39.399906, 32.655170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422294, 0.404030, -0.811435,
		0.206835, 0.828606, 0.520223,
		0.882546, -0.387521, 0.266348,
		38.063412, 39.283649, 32.735073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885155, 39.928486, 32.200687>,  <37.445629, 39.554913, 32.548630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885155, 39.928486, 32.200687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121067, 39.632576, 32.330231>,  <38.262615, 39.455029, 32.407959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121067, 39.632576, 32.330231>,  <37.885155, 39.928486, 32.200687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121067, 39.632576, 32.330231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530378, 0.052416, -0.846139,
		0.608978, 0.670809, 0.423275,
		0.589784, -0.739776, 0.323862,
		38.298004, 39.410645, 32.427391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439308, 40.097324, 31.914993>,  <37.885155, 39.928486, 32.200687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439308, 40.097324, 31.914993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 39.720776, 32.039436>,  <38.522823, 39.494846, 32.114101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491505, 39.720776, 32.039436>,  <38.439308, 40.097324, 31.914993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491505, 39.720776, 32.039436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637211, -0.160767, -0.753734,
		0.759561, 0.296601, 0.578874,
		0.130494, -0.941372, 0.311110,
		38.530651, 39.438362, 32.132771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233250, 39.975273, 32.000340>,  <38.439308, 40.097324, 31.914993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233250, 39.975273, 32.000340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032372, 39.633476, 31.947220>,  <38.911842, 39.428398, 31.915348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032372, 39.633476, 31.947220>,  <39.233250, 39.975273, 32.000340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032372, 39.633476, 31.947220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589698, -0.226078, -0.775335,
		0.632498, -0.467682, 0.617430,
		-0.502197, -0.854495, -0.132798,
		38.881714, 39.377129, 31.907381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699661, 39.545536, 31.879772>,  <39.233250, 39.975273, 32.000340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699661, 39.545536, 31.879772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389351, 39.355465, 31.713696>,  <39.203163, 39.241425, 31.614050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389351, 39.355465, 31.713696>,  <39.699661, 39.545536, 31.879772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389351, 39.355465, 31.713696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512906, -0.091580, -0.853546,
		0.367559, -0.875113, 0.314764,
		-0.775776, -0.475173, -0.415190,
		39.156620, 39.212914, 31.589138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009769, 38.939831, 31.488350>,  <39.699661, 39.545536, 31.879772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009769, 38.939831, 31.488350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644970, 39.005993, 31.338203>,  <39.426090, 39.045692, 31.248116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644970, 39.005993, 31.338203>,  <40.009769, 38.939831, 31.488350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644970, 39.005993, 31.338203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386768, 0.041932, -0.921223,
		-0.136637, -0.985333, -0.102216,
		-0.911998, 0.165407, -0.375366,
		39.371372, 39.055614, 31.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976707, 38.414139, 30.967802>,  <40.009769, 38.939831, 31.488350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976707, 38.414139, 30.967802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706692, 38.692638, 30.870182>,  <39.544682, 38.859737, 30.811611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706692, 38.692638, 30.870182>,  <39.976707, 38.414139, 30.967802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706692, 38.692638, 30.870182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286635, -0.057308, -0.956324,
		-0.679827, -0.715508, -0.160885,
		-0.675037, 0.696250, -0.244049,
		39.504181, 38.901512, 30.796967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707355, 38.169998, 30.363029>,  <39.976707, 38.414139, 30.967802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707355, 38.169998, 30.363029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611984, 38.558407, 30.356499>,  <39.554764, 38.791454, 30.352581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611984, 38.558407, 30.356499>,  <39.707355, 38.169998, 30.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611984, 38.558407, 30.356499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211747, 0.035571, -0.976677,
		-0.947796, -0.236320, -0.214092,
		-0.238424, 0.971024, -0.016326,
		39.540459, 38.849712, 30.351601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285324, 38.309563, 29.757917>,  <39.707355, 38.169998, 30.363029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285324, 38.309563, 29.757917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438698, 38.662151, 29.868177>,  <39.530724, 38.873703, 29.934334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438698, 38.662151, 29.868177>,  <39.285324, 38.309563, 29.757917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438698, 38.662151, 29.868177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204345, 0.210093, -0.956088,
		-0.900677, 0.422927, -0.099567,
		0.383437, 0.881473, 0.275649,
		39.553730, 38.926594, 29.950872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010754, 38.770779, 29.300867>,  <39.285324, 38.309563, 29.757917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010754, 38.770779, 29.300867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333439, 38.944767, 29.460873>,  <39.527050, 39.049160, 29.556877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333439, 38.944767, 29.460873>,  <39.010754, 38.770779, 29.300867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333439, 38.944767, 29.460873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348012, 0.197388, -0.916474,
		-0.477597, 0.878544, 0.007861,
		0.806715, 0.434970, 0.400016,
		39.575455, 39.075256, 29.580877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173542, 39.315910, 28.885218>,  <39.010754, 38.770779, 29.300867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173542, 39.315910, 28.885218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533478, 39.285591, 29.057053>,  <39.749439, 39.267399, 29.160152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533478, 39.285591, 29.057053>,  <39.173542, 39.315910, 28.885218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533478, 39.285591, 29.057053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428569, 0.337269, -0.838200,
		-0.081353, 0.938352, 0.335972,
		0.899839, -0.075797, 0.429586,
		39.803429, 39.262852, 29.185928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557182, 39.895161, 28.732988>,  <39.173542, 39.315910, 28.885218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557182, 39.895161, 28.732988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835777, 39.624115, 28.827429>,  <40.002934, 39.461487, 28.884094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835777, 39.624115, 28.827429>,  <39.557182, 39.895161, 28.732988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835777, 39.624115, 28.827429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567024, 0.318075, -0.759811,
		0.439760, 0.663074, 0.605759,
		0.696487, -0.677614, 0.236103,
		40.044724, 39.420830, 28.898260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183975, 40.215660, 28.847080>,  <39.557182, 39.895161, 28.732988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183975, 40.215660, 28.847080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272175, 39.836704, 28.754269>,  <40.325096, 39.609333, 28.698582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272175, 39.836704, 28.754269>,  <40.183975, 40.215660, 28.847080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272175, 39.836704, 28.754269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542882, 0.316836, -0.777750,
		0.810344, 0.045533, 0.584182,
		0.220503, -0.947387, -0.232027,
		40.338326, 39.552486, 28.684660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878048, 40.203388, 28.641737>,  <40.183975, 40.215660, 28.847080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878048, 40.203388, 28.641737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726238, 39.861244, 28.500700>,  <40.635155, 39.655956, 28.416077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726238, 39.861244, 28.500700>,  <40.878048, 40.203388, 28.641737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726238, 39.861244, 28.500700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532502, 0.109700, -0.839290,
		0.756575, -0.506284, 0.413847,
		-0.379520, -0.855361, -0.352594,
		40.612381, 39.604637, 28.394922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412392, 39.728462, 28.327414>,  <40.878048, 40.203388, 28.641737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412392, 39.728462, 28.327414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102592, 39.535690, 28.163515>,  <40.916714, 39.420025, 28.065176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102592, 39.535690, 28.163515>,  <41.412392, 39.728462, 28.327414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102592, 39.535690, 28.163515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450658, 0.034186, -0.892042,
		0.443911, -0.875541, 0.190710,
		-0.774500, -0.481932, -0.409745,
		40.870243, 39.391109, 28.040592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633060, 39.377357, 27.763788>,  <41.412392, 39.728462, 28.327414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633060, 39.377357, 27.763788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241287, 39.370079, 27.683407>,  <41.006222, 39.365711, 27.635178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241287, 39.370079, 27.683407>,  <41.633060, 39.377357, 27.763788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241287, 39.370079, 27.683407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201417, -0.147420, -0.968348,
		-0.012007, -0.988907, 0.148052,
		-0.979432, -0.018194, -0.200953,
		40.947456, 39.364620, 27.623121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519165, 38.694847, 27.436527>,  <41.633060, 39.377357, 27.763788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519165, 38.694847, 27.436527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220184, 38.934650, 27.322052>,  <41.040794, 39.078533, 27.253366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220184, 38.934650, 27.322052>,  <41.519165, 38.694847, 27.436527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220184, 38.934650, 27.322052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180324, -0.231529, -0.955970,
		-0.639375, -0.766147, 0.064950,
		-0.747451, 0.599511, -0.286188,
		40.995949, 39.114502, 27.236195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182587, 38.262775, 26.968975>,  <41.519165, 38.694847, 27.436527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182587, 38.262775, 26.968975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079079, 38.641796, 26.893944>,  <41.016975, 38.869209, 26.848925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079079, 38.641796, 26.893944>,  <41.182587, 38.262775, 26.968975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079079, 38.641796, 26.893944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123191, -0.160233, -0.979362,
		-0.958052, -0.276533, -0.075267,
		-0.258765, 0.947552, -0.187578,
		41.001450, 38.926064, 26.837671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691006, 38.232807, 26.481319>,  <41.182587, 38.262775, 26.968975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691006, 38.232807, 26.481319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834343, 38.602966, 26.431965>,  <40.920345, 38.825062, 26.402353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834343, 38.602966, 26.431965>,  <40.691006, 38.232807, 26.481319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834343, 38.602966, 26.431965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124912, -0.178499, -0.975979,
		-0.925195, 0.334325, -0.179557,
		0.358345, 0.925400, -0.123385,
		40.941845, 38.880585, 26.394949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315636, 38.503693, 25.932617>,  <40.691006, 38.232807, 26.481319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315636, 38.503693, 25.932617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658493, 38.709721, 25.933043>,  <40.864208, 38.833340, 25.933298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658493, 38.709721, 25.933043>,  <40.315636, 38.503693, 25.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658493, 38.709721, 25.933043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069854, -0.114197, -0.990999,
		-0.510316, 0.849505, -0.133863,
		0.857145, 0.515074, 0.001065,
		40.915638, 38.864243, 25.933361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272423, 38.946190, 25.354973>,  <40.315636, 38.503693, 25.932617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272423, 38.946190, 25.354973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662220, 38.920208, 25.440891>,  <40.896099, 38.904621, 25.492443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662220, 38.920208, 25.440891>,  <40.272423, 38.946190, 25.354973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662220, 38.920208, 25.440891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202210, -0.160875, -0.966038,
		0.097302, 0.984835, -0.143639,
		0.974497, -0.064952, 0.214797,
		40.954571, 38.900723, 25.505331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527893, 39.241379, 24.833916>,  <40.272423, 38.946190, 25.354973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527893, 39.241379, 24.833916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825745, 39.016254, 24.977453>,  <41.004456, 38.881180, 25.063576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825745, 39.016254, 24.977453>,  <40.527893, 39.241379, 24.833916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825745, 39.016254, 24.977453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275129, -0.231011, -0.933241,
		0.608137, 0.793647, -0.017172,
		0.744630, -0.562813, 0.358842,
		41.049133, 38.847412, 25.085106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107986, 39.570244, 24.481791>,  <40.527893, 39.241379, 24.833916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107986, 39.570244, 24.481791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199486, 39.209267, 24.627813>,  <41.254387, 38.992680, 24.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199486, 39.209267, 24.627813>,  <41.107986, 39.570244, 24.481791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199486, 39.209267, 24.627813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254997, -0.306358, -0.917126,
		0.939495, 0.302878, 0.160043,
		0.228747, -0.902446, 0.365055,
		41.268108, 38.938534, 24.737329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824753, 39.472775, 24.340479>,  <41.107986, 39.570244, 24.481791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824753, 39.472775, 24.340479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701370, 39.099533, 24.414417>,  <41.627338, 38.875587, 24.458780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701370, 39.099533, 24.414417>,  <41.824753, 39.472775, 24.340479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701370, 39.099533, 24.414417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484364, -0.321314, -0.813725,
		0.818684, -0.161469, 0.551075,
		-0.308460, -0.933105, 0.184845,
		41.608833, 38.819603, 24.469872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370316, 38.997948, 24.276293>,  <41.824753, 39.472775, 24.340479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370316, 38.997948, 24.276293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062374, 38.745602, 24.237629>,  <41.877609, 38.594196, 24.214430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062374, 38.745602, 24.237629>,  <42.370316, 38.997948, 24.276293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062374, 38.745602, 24.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463490, -0.448511, -0.764209,
		0.438757, -0.633128, 0.637684,
		-0.769850, -0.630862, -0.096661,
		41.831421, 38.556343, 24.208630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587879, 38.389267, 24.354549>,  <42.370316, 38.997948, 24.276293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587879, 38.389267, 24.354549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266285, 38.385838, 24.116713>,  <42.073330, 38.383778, 23.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266285, 38.385838, 24.116713>,  <42.587879, 38.389267, 24.354549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266285, 38.385838, 24.116713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574286, -0.270639, -0.772625,
		-0.154292, -0.962643, 0.222516,
		-0.803983, -0.008578, -0.594590,
		42.025089, 38.383266, 23.938335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614017, 37.825653, 23.989662>,  <42.587879, 38.389267, 24.354549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614017, 37.825653, 23.989662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367718, 38.055660, 23.774183>,  <42.219936, 38.193665, 23.644896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367718, 38.055660, 23.774183>,  <42.614017, 37.825653, 23.989662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367718, 38.055660, 23.774183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434555, -0.322478, -0.840934,
		-0.657275, -0.751902, -0.051312,
		-0.615753, 0.575022, -0.538700,
		42.182991, 38.228168, 23.612574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486591, 37.380638, 23.406830>,  <42.614017, 37.825653, 23.989662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486591, 37.380638, 23.406830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313236, 37.722015, 23.291029>,  <42.209221, 37.926842, 23.221548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313236, 37.722015, 23.291029>,  <42.486591, 37.380638, 23.406830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313236, 37.722015, 23.291029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205868, -0.218991, -0.953761,
		-0.877377, -0.472951, -0.080787,
		-0.433390, 0.853440, -0.289503,
		42.183220, 37.978046, 23.204178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054939, 37.289486, 22.831451>,  <42.486591, 37.380638, 23.406830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054939, 37.289486, 22.831451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129040, 37.680679, 22.793024>,  <42.173500, 37.915394, 22.769968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129040, 37.680679, 22.793024>,  <42.054939, 37.289486, 22.831451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129040, 37.680679, 22.793024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317669, -0.152111, -0.935921,
		-0.929930, 0.142860, -0.338854,
		0.185249, 0.977984, -0.096070,
		42.184616, 37.974075, 22.764202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625931, 37.618511, 22.312130>,  <42.054939, 37.289486, 22.831451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625931, 37.618511, 22.312130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945606, 37.856281, 22.347818>,  <42.137413, 37.998943, 22.369230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945606, 37.856281, 22.347818>,  <41.625931, 37.618511, 22.312130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945606, 37.856281, 22.347818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293751, -0.256742, -0.920757,
		-0.524414, 0.762066, -0.379797,
		0.799187, 0.594424, 0.089219,
		42.185364, 38.034607, 22.374584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742466, 38.132744, 21.695702>,  <41.625931, 37.618511, 22.312130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742466, 38.132744, 21.695702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095318, 38.057980, 21.868635>,  <42.307030, 38.013123, 21.972395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095318, 38.057980, 21.868635>,  <41.742466, 38.132744, 21.695702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095318, 38.057980, 21.868635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418834, -0.108629, -0.901542,
		0.215471, 0.976353, -0.017541,
		0.882128, -0.186910, 0.432336,
		42.359955, 38.001907, 21.998337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254913, 38.353104, 21.261263>,  <41.742466, 38.132744, 21.695702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254913, 38.353104, 21.261263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513554, 38.155357, 21.493647>,  <42.668736, 38.036709, 21.633078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513554, 38.155357, 21.493647>,  <42.254913, 38.353104, 21.261263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513554, 38.155357, 21.493647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621463, -0.100270, -0.777001,
		0.442378, 0.863450, 0.242397,
		0.646596, -0.494368, 0.580959,
		42.707531, 38.007046, 21.667934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909832, 38.627213, 21.071228>,  <42.254913, 38.353104, 21.261263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909832, 38.627213, 21.071228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993359, 38.278156, 21.247816>,  <43.043476, 38.068722, 21.353769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993359, 38.278156, 21.247816>,  <42.909832, 38.627213, 21.071228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993359, 38.278156, 21.247816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733418, -0.158877, -0.660951,
		0.646912, 0.461799, 0.606833,
		0.208815, -0.872640, 0.441471,
		43.056004, 38.016365, 21.380257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681702, 38.526623, 21.057430>,  <42.909832, 38.627213, 21.071228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681702, 38.526623, 21.057430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564629, 38.149086, 21.118753>,  <43.494385, 37.922565, 21.155546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564629, 38.149086, 21.118753>,  <43.681702, 38.526623, 21.057430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564629, 38.149086, 21.118753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742787, -0.325382, -0.585145,
		0.602166, -0.057388, 0.796306,
		-0.292684, -0.943840, 0.153307,
		43.476822, 37.865932, 21.164745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301285, 38.091736, 21.184948>,  <43.681702, 38.526623, 21.057430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301285, 38.091736, 21.184948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016464, 37.862373, 21.022869>,  <43.845573, 37.724754, 20.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016464, 37.862373, 21.022869>,  <44.301285, 38.091736, 21.184948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016464, 37.862373, 21.022869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641989, -0.298023, -0.706423,
		0.284308, -0.763144, 0.580328,
		-0.712053, -0.573406, -0.405199,
		43.802849, 37.690353, 20.901310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657524, 37.416718, 20.965244>,  <44.301285, 38.091736, 21.184948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657524, 37.416718, 20.965244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310459, 37.411739, 20.766445>,  <44.102219, 37.408752, 20.647165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310459, 37.411739, 20.766445>,  <44.657524, 37.416718, 20.965244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310459, 37.411739, 20.766445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465869, -0.369380, -0.804067,
		-0.173571, -0.929195, 0.326297,
		-0.867663, -0.012449, -0.496997,
		44.050159, 37.408005, 20.617346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679893, 36.870678, 20.639616>,  <44.657524, 37.416718, 20.965244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679893, 36.870678, 20.639616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392891, 37.042568, 20.420336>,  <44.220692, 37.145702, 20.288767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392891, 37.042568, 20.420336>,  <44.679893, 36.870678, 20.639616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392891, 37.042568, 20.420336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491466, -0.245398, -0.835608,
		-0.493608, -0.868975, -0.035120,
		-0.717504, 0.429724, -0.548202,
		44.177639, 37.171486, 20.255875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402004, 36.842545, 20.673883>,  <44.679893, 36.870678, 20.639616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402004, 36.842545, 20.673883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756096, 36.759590, 20.840431>,  <45.968552, 36.709816, 20.940361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756096, 36.759590, 20.840431>,  <45.402004, 36.842545, 20.673883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756096, 36.759590, 20.840431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320200, 0.377605, 0.868842,
		-0.337413, -0.902443, 0.267860,
		0.885226, -0.207390, 0.416371,
		46.021664, 36.697372, 20.965342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243988, 36.412407, 21.324453>,  <45.402004, 36.842545, 20.673883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243988, 36.412407, 21.324453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594784, 36.602631, 21.351954>,  <45.805264, 36.716766, 21.368454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594784, 36.602631, 21.351954>,  <45.243988, 36.412407, 21.324453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594784, 36.602631, 21.351954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244266, 0.318021, 0.916077,
		0.413783, -0.820187, 0.395065,
		0.876994, 0.475559, 0.068752,
		45.857883, 36.745300, 21.372580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449871, 36.221748, 22.012371>,  <45.243988, 36.412407, 21.324453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449871, 36.221748, 22.012371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658890, 36.552158, 21.927860>,  <45.784302, 36.750404, 21.877153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658890, 36.552158, 21.927860>,  <45.449871, 36.221748, 22.012371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658890, 36.552158, 21.927860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121991, 0.317683, 0.940317,
		0.843840, -0.465582, 0.266770,
		0.522543, 0.826021, -0.211277,
		45.815651, 36.799965, 21.864477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856476, 36.425781, 22.664858>,  <45.449871, 36.221748, 22.012371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856476, 36.425781, 22.664858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831028, 36.753014, 22.436230>,  <45.815758, 36.949352, 22.299053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831028, 36.753014, 22.436230>,  <45.856476, 36.425781, 22.664858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831028, 36.753014, 22.436230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295069, 0.531702, 0.793869,
		0.953355, 0.219161, 0.207563,
		-0.063623, 0.818084, -0.571568,
		45.811939, 36.998440, 22.264759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410446, 36.992847, 22.948181>,  <45.856476, 36.425781, 22.664858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410446, 36.992847, 22.948181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136051, 37.170567, 22.717697>,  <45.971413, 37.277199, 22.579407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136051, 37.170567, 22.717697>,  <46.410446, 36.992847, 22.948181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136051, 37.170567, 22.717697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076000, 0.743835, 0.664028,
		0.723631, 0.499308, -0.476496,
		-0.685989, 0.444298, -0.576210,
		45.930256, 37.303856, 22.544834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581635, 37.705517, 23.074051>,  <46.410446, 36.992847, 22.948181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581635, 37.705517, 23.074051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206543, 37.709229, 22.935148>,  <45.981487, 37.711456, 22.851807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206543, 37.709229, 22.935148>,  <46.581635, 37.705517, 23.074051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206543, 37.709229, 22.935148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234976, 0.719300, 0.653754,
		0.255848, 0.694638, -0.672324,
		-0.937725, 0.009282, -0.347255,
		45.925224, 37.712013, 22.830973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280285, 38.399132, 23.176483>,  <46.581635, 37.705517, 23.074051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280285, 38.399132, 23.176483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924404, 38.226753, 23.116198>,  <45.710876, 38.123325, 23.080027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924404, 38.226753, 23.116198>,  <46.280285, 38.399132, 23.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924404, 38.226753, 23.116198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403585, 0.588075, 0.700919,
		-0.213428, 0.684435, -0.697135,
		-0.889701, -0.430949, -0.150716,
		45.657494, 38.097469, 23.070982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881653, 38.932343, 23.212683>,  <46.280285, 38.399132, 23.176483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881653, 38.932343, 23.212683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651314, 38.612957, 23.282936>,  <45.513111, 38.421326, 23.325089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651314, 38.612957, 23.282936>,  <45.881653, 38.932343, 23.212683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651314, 38.612957, 23.282936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328114, 0.422479, 0.844898,
		-0.748824, 0.428908, -0.505273,
		-0.575851, -0.798467, 0.175632,
		45.478558, 38.373417, 23.335625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184677, 39.168270, 23.260777>,  <45.881653, 38.932343, 23.212683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184677, 39.168270, 23.260777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246769, 38.835434, 23.473764>,  <45.284023, 38.635731, 23.601557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246769, 38.835434, 23.473764>,  <45.184677, 39.168270, 23.260777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246769, 38.835434, 23.473764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449656, 0.420417, 0.788073,
		-0.879610, -0.361761, -0.308894,
		0.155230, -0.832093, 0.532471,
		45.293339, 38.585808, 23.633505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515373, 39.172928, 23.589136>,  <45.184677, 39.168270, 23.260777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515373, 39.172928, 23.589136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740871, 38.915356, 23.796036>,  <44.876171, 38.760811, 23.920176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740871, 38.915356, 23.796036>,  <44.515373, 39.172928, 23.589136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740871, 38.915356, 23.796036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350699, 0.380380, 0.855758,
		-0.747799, -0.663827, -0.011388,
		0.563744, -0.643929, 0.517251,
		44.909996, 38.722176, 23.951212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127712, 38.806622, 24.038792>,  <44.515373, 39.172928, 23.589136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127712, 38.806622, 24.038792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483936, 38.737461, 24.207081>,  <44.697670, 38.695965, 24.308054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483936, 38.737461, 24.207081>,  <44.127712, 38.806622, 24.038792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483936, 38.737461, 24.207081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393764, 0.170004, 0.903354,
		-0.227717, -0.970156, 0.083316,
		0.890559, -0.172902, 0.420725,
		44.751102, 38.685589, 24.333298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143448, 38.264545, 24.477419>,  <44.127712, 38.806622, 24.038792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143448, 38.264545, 24.477419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441181, 38.498981, 24.605459>,  <44.619823, 38.639645, 24.682283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441181, 38.498981, 24.605459>,  <44.143448, 38.264545, 24.477419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441181, 38.498981, 24.605459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398780, 0.005607, 0.917029,
		0.535666, -0.810228, 0.237894,
		0.744336, 0.586089, 0.320099,
		44.664482, 38.674809, 24.701488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269409, 38.056164, 25.101721>,  <44.143448, 38.264545, 24.477419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269409, 38.056164, 25.101721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443718, 38.416130, 25.095253>,  <44.548302, 38.632111, 25.091372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443718, 38.416130, 25.095253>,  <44.269409, 38.056164, 25.101721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443718, 38.416130, 25.095253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236893, 0.132007, 0.962526,
		0.868323, -0.415610, 0.270708,
		0.435771, 0.899913, -0.016169,
		44.574448, 38.686104, 25.090403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597233, 38.082600, 25.797525>,  <44.269409, 38.056164, 25.101721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597233, 38.082600, 25.797525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608814, 38.460358, 25.666510>,  <44.615761, 38.687012, 25.587900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608814, 38.460358, 25.666510>,  <44.597233, 38.082600, 25.797525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608814, 38.460358, 25.666510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291751, 0.321394, 0.900881,
		0.956056, 0.069480, 0.284832,
		0.028950, 0.944393, -0.327541,
		44.617500, 38.743675, 25.568247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114777, 38.462048, 26.190771>,  <44.597233, 38.082600, 25.797525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114777, 38.462048, 26.190771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900475, 38.773445, 26.059975>,  <44.771893, 38.960281, 25.981497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900475, 38.773445, 26.059975>,  <45.114777, 38.462048, 26.190771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900475, 38.773445, 26.059975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161796, 0.285435, 0.944642,
		0.828730, 0.558999, -0.026966,
		-0.535751, 0.778490, -0.326992,
		44.739750, 39.006992, 25.961878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142994, 39.006008, 26.660440>,  <45.114777, 38.462048, 26.190771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142994, 39.006008, 26.660440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803616, 39.077576, 26.461193>,  <44.599987, 39.120514, 26.341644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803616, 39.077576, 26.461193>,  <45.142994, 39.006008, 26.660440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803616, 39.077576, 26.461193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455523, 0.232373, 0.859361,
		0.269504, 0.956029, -0.115656,
		-0.848450, 0.178917, -0.498118,
		44.549080, 39.131252, 26.311758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907707, 39.528965, 27.058996>,  <45.142994, 39.006008, 26.660440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907707, 39.528965, 27.058996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594055, 39.378025, 26.861916>,  <44.405865, 39.287460, 26.743668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594055, 39.378025, 26.861916>,  <44.907707, 39.528965, 27.058996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594055, 39.378025, 26.861916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583871, 0.179487, 0.791757,
		-0.210337, 0.908510, -0.361064,
		-0.784125, -0.377351, -0.492700,
		44.358818, 39.264820, 26.714106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347210, 39.970619, 27.192862>,  <44.907707, 39.528965, 27.058996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347210, 39.970619, 27.192862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173038, 39.634102, 27.064718>,  <44.068535, 39.432190, 26.987831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173038, 39.634102, 27.064718>,  <44.347210, 39.970619, 27.192862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173038, 39.634102, 27.064718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614633, 0.017815, 0.788612,
		-0.657746, 0.540286, -0.524843,
		-0.435427, -0.841293, -0.320360,
		44.042412, 39.381714, 26.968611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673611, 40.118488, 27.272985>,  <44.347210, 39.970619, 27.192862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673611, 40.118488, 27.272985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712486, 39.720425, 27.278925>,  <43.735809, 39.481586, 27.282488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712486, 39.720425, 27.278925>,  <43.673611, 40.118488, 27.272985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712486, 39.720425, 27.278925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567933, -0.043199, 0.821940,
		-0.817317, -0.088314, -0.569380,
		0.097185, -0.995156, 0.014849,
		43.741642, 39.421879, 27.283381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950363, 39.825317, 27.526978>,  <43.673611, 40.118488, 27.272985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950363, 39.825317, 27.526978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196529, 39.513115, 27.570917>,  <43.344231, 39.325794, 27.597281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196529, 39.513115, 27.570917>,  <42.950363, 39.825317, 27.526978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196529, 39.513115, 27.570917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582155, -0.356146, 0.730928,
		-0.531373, -0.513776, -0.673555,
		0.615418, -0.780509, 0.109851,
		43.381153, 39.278961, 27.603872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477451, 39.335747, 27.717377>,  <42.950363, 39.825317, 27.526978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477451, 39.335747, 27.717377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845169, 39.218784, 27.822748>,  <43.065800, 39.148605, 27.885971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845169, 39.218784, 27.822748>,  <42.477451, 39.335747, 27.717377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845169, 39.218784, 27.822748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352055, -0.311741, 0.882539,
		-0.175936, -0.904056, -0.389524,
		0.919295, -0.292404, 0.263431,
		43.120956, 39.131062, 27.901777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451317, 38.551697, 27.940615>,  <42.477451, 39.335747, 27.717377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451317, 38.551697, 27.940615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773544, 38.718025, 28.109446>,  <42.966881, 38.817822, 28.210745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773544, 38.718025, 28.109446>,  <42.451317, 38.551697, 27.940615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773544, 38.718025, 28.109446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284231, -0.353842, 0.891072,
		0.519873, -0.837789, -0.166857,
		0.805571, 0.415819, 0.422079,
		43.015217, 38.842770, 28.236069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667316, 38.091530, 28.492731>,  <42.451317, 38.551697, 27.940615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667316, 38.091530, 28.492731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832504, 38.436584, 28.609568>,  <42.931618, 38.643616, 28.679668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832504, 38.436584, 28.609568>,  <42.667316, 38.091530, 28.492731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832504, 38.436584, 28.609568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295441, -0.176482, 0.938919,
		0.861493, -0.474041, 0.181976,
		0.412971, 0.862635, 0.292089,
		42.956394, 38.695374, 28.697195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954571, 37.898766, 29.142998>,  <42.667316, 38.091530, 28.492731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954571, 37.898766, 29.142998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934906, 38.297871, 29.124878>,  <42.923107, 38.537334, 29.114006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934906, 38.297871, 29.124878>,  <42.954571, 37.898766, 29.142998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934906, 38.297871, 29.124878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426762, 0.020024, 0.904142,
		0.903027, 0.063779, 0.424823,
		-0.049159, 0.997763, -0.045300,
		42.920158, 38.597198, 29.111288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382092, 38.150043, 29.654760>,  <42.954571, 37.898766, 29.142998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382092, 38.150043, 29.654760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105782, 38.429546, 29.580400>,  <42.939995, 38.597248, 29.535784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105782, 38.429546, 29.580400>,  <43.382092, 38.150043, 29.654760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105782, 38.429546, 29.580400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256114, 0.003978, 0.966639,
		0.676188, 0.715345, 0.176214,
		-0.690779, 0.698760, -0.185899,
		42.898548, 38.639175, 29.524632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417694, 38.575912, 30.216707>,  <43.382092, 38.150043, 29.654760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417694, 38.575912, 30.216707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076424, 38.709866, 30.056732>,  <42.871662, 38.790237, 29.960747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076424, 38.709866, 30.056732>,  <43.417694, 38.575912, 30.216707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076424, 38.709866, 30.056732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358649, 0.180130, 0.915928,
		0.378770, 0.924881, -0.033576,
		-0.853173, 0.334885, -0.399935,
		42.820473, 38.810329, 29.936752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316677, 39.331928, 30.467857>,  <43.417694, 38.575912, 30.216707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316677, 39.331928, 30.467857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959377, 39.194569, 30.351805>,  <42.744995, 39.112152, 30.282173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959377, 39.194569, 30.351805>,  <43.316677, 39.331928, 30.467857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959377, 39.194569, 30.351805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409660, 0.355970, 0.839919,
		-0.185150, 0.869115, -0.458649,
		-0.893252, -0.343401, -0.290134,
		42.691402, 39.091549, 30.264765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914742, 39.822453, 30.612095>,  <43.316677, 39.331928, 30.467857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914742, 39.822453, 30.612095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673027, 39.503746, 30.611238>,  <42.527996, 39.312523, 30.610725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673027, 39.503746, 30.611238>,  <42.914742, 39.822453, 30.612095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673027, 39.503746, 30.611238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431035, 0.324650, 0.841909,
		-0.670107, 0.509679, -0.539615,
		-0.604289, -0.796763, -0.002139,
		42.491741, 39.264717, 30.610598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252224, 40.131672, 30.889175>,  <42.914742, 39.822453, 30.612095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252224, 40.131672, 30.889175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167610, 39.741425, 30.912592>,  <42.116840, 39.507278, 30.926641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167610, 39.741425, 30.912592>,  <42.252224, 40.131672, 30.889175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167610, 39.741425, 30.912592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558918, 0.169887, 0.811634,
		-0.801788, 0.138970, -0.581226,
		-0.211536, -0.975616, 0.058540,
		42.104149, 39.448738, 30.930155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556896, 40.102077, 31.031610>,  <42.252224, 40.131672, 30.889175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556896, 40.102077, 31.031610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707767, 39.749016, 31.143793>,  <41.798290, 39.537178, 31.211102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707767, 39.749016, 31.143793>,  <41.556896, 40.102077, 31.031610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707767, 39.749016, 31.143793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504075, 0.058391, 0.861684,
		-0.776948, -0.466376, -0.422902,
		0.377175, -0.882657, 0.280455,
		41.820919, 39.484219, 31.227930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973541, 39.602123, 31.267801>,  <41.556896, 40.102077, 31.031610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973541, 39.602123, 31.267801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313663, 39.481136, 31.440081>,  <41.517735, 39.408543, 31.543447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.313663, 39.481136, 31.440081>,  <40.973541, 39.602123, 31.267801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313663, 39.481136, 31.440081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445397, 0.022399, 0.895053,
		-0.280372, -0.952896, -0.115673,
		0.850302, -0.302468, 0.430697,
		41.568752, 39.390396, 31.569290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806683, 39.198006, 31.793716>,  <40.973541, 39.602123, 31.267801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806683, 39.198006, 31.793716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181522, 39.272083, 31.912067>,  <41.406425, 39.316532, 31.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181522, 39.272083, 31.912067>,  <40.806683, 39.198006, 31.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181522, 39.272083, 31.912067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274766, -0.131401, 0.952490,
		0.215279, -0.973876, -0.072249,
		0.937101, 0.185200, 0.295876,
		41.462654, 39.327644, 32.000832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959080, 38.689873, 32.247959>,  <40.806683, 39.198006, 31.793716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959080, 38.689873, 32.247959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221813, 38.976917, 32.340572>,  <41.379452, 39.149143, 32.396141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221813, 38.976917, 32.340572>,  <40.959080, 38.689873, 32.247959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221813, 38.976917, 32.340572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299293, -0.033715, 0.953565,
		0.692094, -0.695629, 0.192630,
		0.656833, 0.717609, 0.231531,
		41.418861, 39.192200, 32.410030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436485, 38.471352, 32.831978>,  <40.959080, 38.689873, 32.247959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436485, 38.471352, 32.831978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416416, 38.870815, 32.826950>,  <41.404373, 39.110493, 32.823933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416416, 38.870815, 32.826950>,  <41.436485, 38.471352, 32.831978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416416, 38.870815, 32.826950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172944, 0.003712, 0.984925,
		0.983653, 0.051592, 0.172526,
		-0.050174, 0.998662, -0.012574,
		41.401363, 39.170414, 32.823177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806744, 38.669613, 33.449188>,  <41.436485, 38.471352, 32.831978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806744, 38.669613, 33.449188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640572, 39.016552, 33.339550>,  <41.540867, 39.224716, 33.273766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640572, 39.016552, 33.339550>,  <41.806744, 38.669613, 33.449188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640572, 39.016552, 33.339550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041922, 0.282752, 0.958277,
		0.908657, 0.409591, -0.081104,
		-0.415433, 0.867345, -0.274095,
		41.515942, 39.276756, 33.257320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194187, 39.174141, 33.812931>,  <41.806744, 38.669613, 33.449188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194187, 39.174141, 33.812931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826126, 39.321705, 33.760441>,  <41.605289, 39.410244, 33.728947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826126, 39.321705, 33.760441>,  <42.194187, 39.174141, 33.812931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826126, 39.321705, 33.760441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039195, 0.246675, 0.968305,
		0.389583, 0.896136, -0.212521,
		-0.920157, 0.368905, -0.131225,
		41.550079, 39.432377, 33.721073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134300, 39.784603, 34.195473>,  <42.194187, 39.174141, 33.812931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134300, 39.784603, 34.195473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 39.680641, 34.140251>,  <41.522644, 39.618263, 34.107121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752014, 39.680641, 34.140251>,  <42.134300, 39.784603, 34.195473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752014, 39.680641, 34.140251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156946, 0.053309, 0.986167,
		-0.248954, 0.964160, -0.091740,
		-0.955714, -0.259909, -0.138049,
		41.465302, 39.602669, 34.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073505, 39.714912, 34.916504>,  <42.134300, 39.784603, 34.195473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073505, 39.714912, 34.916504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714672, 39.698746, 34.740498>,  <41.499374, 39.689045, 34.634895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714672, 39.698746, 34.740498>,  <42.073505, 39.714912, 34.916504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714672, 39.698746, 34.740498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441836, 0.070303, 0.894337,
		-0.005212, 0.996707, -0.080925,
		-0.897081, -0.040417, -0.440014,
		41.445549, 39.686619, 34.608494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642113, 40.307220, 35.151489>,  <42.073505, 39.714912, 34.916504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642113, 40.307220, 35.151489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390167, 40.021484, 35.029518>,  <41.238998, 39.850040, 34.956337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390167, 40.021484, 35.029518>,  <41.642113, 40.307220, 35.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390167, 40.021484, 35.029518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542375, 0.123507, 0.831009,
		-0.555965, 0.688810, -0.465236,
		-0.629867, -0.714344, -0.304928,
		41.201206, 39.807182, 34.938038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974506, 40.494682, 35.322124>,  <41.642113, 40.307220, 35.151489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974506, 40.494682, 35.322124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934422, 40.097301, 35.300194>,  <40.910370, 39.858871, 35.287037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934422, 40.097301, 35.300194>,  <40.974506, 40.494682, 35.322124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934422, 40.097301, 35.300194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556450, 0.010278, 0.830818,
		-0.824816, 0.113767, -0.553837,
		-0.100212, -0.993455, -0.054828,
		40.904358, 39.799267, 35.283745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275570, 40.273304, 35.352962>,  <40.974506, 40.494682, 35.322124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275570, 40.273304, 35.352962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471565, 39.949600, 35.482586>,  <40.589165, 39.755379, 35.560360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471565, 39.949600, 35.482586>,  <40.275570, 40.273304, 35.352962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471565, 39.949600, 35.482586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544201, 0.006438, 0.838930,
		-0.680995, -0.587421, -0.437243,
		0.489991, -0.809256, 0.324059,
		40.618561, 39.706825, 35.579803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779915, 39.934181, 35.641514>,  <40.275570, 40.273304, 35.352962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779915, 39.934181, 35.641514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087791, 39.721054, 35.782181>,  <40.272518, 39.593178, 35.866581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087791, 39.721054, 35.782181>,  <39.779915, 39.934181, 35.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087791, 39.721054, 35.782181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552015, -0.278735, 0.785866,
		-0.320711, -0.798999, -0.508670,
		0.769691, -0.532829, 0.351666,
		40.318699, 39.561207, 35.887684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568619, 39.196457, 35.716053>,  <39.779915, 39.934181, 35.641514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568619, 39.196457, 35.716053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877708, 39.256660, 35.962708>,  <40.063164, 39.292782, 36.110703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877708, 39.256660, 35.962708>,  <39.568619, 39.196457, 35.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877708, 39.256660, 35.962708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480736, -0.495587, 0.723385,
		0.414474, -0.855418, -0.310598,
		0.772725, 0.150508, 0.616639,
		40.109528, 39.301811, 36.147697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739754, 38.481819, 36.062798>,  <39.568619, 39.196457, 35.716053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739754, 38.481819, 36.062798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900528, 38.775322, 36.281902>,  <39.996994, 38.951424, 36.413364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900528, 38.775322, 36.281902>,  <39.739754, 38.481819, 36.062798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900528, 38.775322, 36.281902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391855, -0.402835, 0.827148,
		0.827586, -0.547105, 0.125613,
		0.401935, 0.733758, 0.547766,
		40.021107, 38.995449, 36.446232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080860, 38.170670, 36.689133>,  <39.739754, 38.481819, 36.062798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080860, 38.170670, 36.689133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025810, 38.544804, 36.819492>,  <39.992779, 38.769283, 36.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025810, 38.544804, 36.819492>,  <40.080860, 38.170670, 36.689133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025810, 38.544804, 36.819492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337407, -0.353620, 0.872416,
		0.931244, 0.010107, 0.364256,
		-0.137626, 0.935334, 0.325897,
		39.984524, 38.825405, 36.917263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482281, 38.161945, 37.177757>,  <40.080860, 38.170670, 36.689133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482281, 38.161945, 37.177757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204109, 38.438580, 37.255825>,  <40.037209, 38.604561, 37.302666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204109, 38.438580, 37.255825>,  <40.482281, 38.161945, 37.177757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204109, 38.438580, 37.255825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195368, -0.443332, 0.874807,
		0.691531, 0.570232, 0.443418,
		-0.695425, 0.691586, 0.195173,
		39.995483, 38.646057, 37.314377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573853, 38.354660, 37.882183>,  <40.482281, 38.161945, 37.177757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573853, 38.354660, 37.882183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205780, 38.501659, 37.828209>,  <39.984936, 38.589859, 37.795826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205780, 38.501659, 37.828209>,  <40.573853, 38.354660, 37.882183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205780, 38.501659, 37.828209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238336, -0.252433, 0.937803,
		0.310583, 0.895109, 0.319873,
		-0.920182, 0.367503, -0.134935,
		39.929726, 38.611912, 37.787727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401562, 38.736893, 38.480309>,  <40.573853, 38.354660, 37.882183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401562, 38.736893, 38.480309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040455, 38.699020, 38.312477>,  <39.823792, 38.676296, 38.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040455, 38.699020, 38.312477>,  <40.401562, 38.736893, 38.480309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040455, 38.699020, 38.312477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398986, -0.180096, 0.899097,
		-0.160688, 0.979082, 0.124811,
		-0.902768, -0.094677, -0.419579,
		39.769623, 38.670616, 38.186604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833252, 39.095280, 38.868355>,  <40.401562, 38.736893, 38.480309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833252, 39.095280, 38.868355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660168, 38.782257, 38.689304>,  <39.556316, 38.594444, 38.581875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660168, 38.782257, 38.689304>,  <39.833252, 39.095280, 38.868355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660168, 38.782257, 38.689304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327179, -0.326347, 0.886821,
		-0.840067, 0.530191, -0.114822,
		-0.432712, -0.782556, -0.447621,
		39.530354, 38.547489, 38.555019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207985, 39.026447, 39.147968>,  <39.833252, 39.095280, 38.868355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207985, 39.026447, 39.147968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262508, 38.665710, 38.983971>,  <39.295223, 38.449268, 38.885571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262508, 38.665710, 38.983971>,  <39.207985, 39.026447, 39.147968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262508, 38.665710, 38.983971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563868, -0.410905, 0.716387,
		-0.814539, 0.133534, -0.564531,
		0.136307, -0.901846, -0.409994,
		39.303402, 38.395157, 38.860973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695789, 38.522518, 39.456989>,  <39.207985, 39.026447, 39.147968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695789, 38.522518, 39.456989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914211, 38.255524, 39.254490>,  <39.045265, 38.095329, 39.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914211, 38.255524, 39.254490>,  <38.695789, 38.522518, 39.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914211, 38.255524, 39.254490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493401, -0.744613, 0.449563,
		-0.677033, 0.004294, -0.735940,
		0.546060, -0.667483, -0.506246,
		39.078030, 38.055279, 39.102615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272358, 38.042976, 39.188793>,  <38.695789, 38.522518, 39.456989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272358, 38.042976, 39.188793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617939, 37.852196, 39.253418>,  <38.825287, 37.737728, 39.292194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617939, 37.852196, 39.253418>,  <38.272358, 38.042976, 39.188793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617939, 37.852196, 39.253418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487549, -0.711959, 0.505382,
		-0.126013, -0.515398, -0.847636,
		0.863954, -0.476948, 0.161566,
		38.877125, 37.709110, 39.301888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218712, 37.391045, 38.910934>,  <38.272358, 38.042976, 39.188793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218712, 37.391045, 38.910934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457951, 37.394688, 39.231483>,  <38.601494, 37.396873, 39.423813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457951, 37.394688, 39.231483>,  <38.218712, 37.391045, 38.910934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457951, 37.394688, 39.231483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553817, -0.718076, 0.421489,
		0.579286, -0.695905, -0.424433,
		0.598092, 0.009105, 0.801376,
		38.637379, 37.397419, 39.471897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168438, 36.685047, 39.020622>,  <38.218712, 37.391045, 38.910934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168438, 36.685047, 39.020622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309166, 36.872482, 39.344757>,  <38.393604, 36.984943, 39.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309166, 36.872482, 39.344757>,  <38.168438, 36.685047, 39.020622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309166, 36.872482, 39.344757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545494, -0.600865, 0.584292,
		0.760696, -0.647601, 0.044214,
		0.351821, 0.468587, 0.810338,
		38.414711, 37.013058, 39.587860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366615, 36.159786, 39.440331>,  <38.168438, 36.685047, 39.020622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366615, 36.159786, 39.440331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314739, 36.479324, 39.675289>,  <38.283615, 36.671047, 39.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314739, 36.479324, 39.675289>,  <38.366615, 36.159786, 39.440331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314739, 36.479324, 39.675289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460571, -0.573144, 0.677777,
		0.878098, -0.182635, 0.442255,
		-0.129690, 0.798843, 0.587393,
		38.275833, 36.718979, 39.851505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553921, 35.946796, 40.116154>,  <38.366615, 36.159786, 39.440331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553921, 35.946796, 40.116154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297153, 36.252144, 40.145039>,  <38.143093, 36.435352, 40.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297153, 36.252144, 40.145039>,  <38.553921, 35.946796, 40.116154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297153, 36.252144, 40.145039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579891, -0.544924, 0.605627,
		0.501666, 0.346886, 0.792465,
		-0.641917, 0.763366, 0.072214,
		38.104580, 36.481155, 40.166702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476780, 36.020878, 40.856846>,  <38.553921, 35.946796, 40.116154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476780, 36.020878, 40.856846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154949, 36.218117, 40.724480>,  <37.961849, 36.336460, 40.645061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154949, 36.218117, 40.724480>,  <38.476780, 36.020878, 40.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154949, 36.218117, 40.724480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569230, -0.481623, 0.666346,
		0.169198, 0.724495, 0.668191,
		-0.804580, 0.493098, -0.330915,
		37.913574, 36.366047, 40.625206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184139, 36.076416, 41.477127>,  <38.476780, 36.020878, 40.856846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184139, 36.076416, 41.477127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902180, 36.122768, 41.197216>,  <37.733002, 36.150581, 41.029270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902180, 36.122768, 41.197216>,  <38.184139, 36.076416, 41.477127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902180, 36.122768, 41.197216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655195, -0.484316, 0.579791,
		-0.271726, 0.867185, 0.417320,
		-0.704901, 0.115882, -0.699776,
		37.690708, 36.157532, 40.987282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672115, 36.378193, 41.825665>,  <38.184139, 36.076416, 41.477127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672115, 36.378193, 41.825665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509510, 36.200127, 41.506519>,  <37.411949, 36.093288, 41.315033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509510, 36.200127, 41.506519>,  <37.672115, 36.378193, 41.825665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509510, 36.200127, 41.506519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756346, -0.325919, 0.567202,
		-0.512534, 0.834031, -0.204207,
		-0.406509, -0.445161, -0.797861,
		37.387558, 36.066578, 41.267162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992783, 36.491734, 41.864948>,  <37.672115, 36.378193, 41.825665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992783, 36.491734, 41.864948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033962, 36.177937, 41.620335>,  <37.058670, 35.989658, 41.473568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033962, 36.177937, 41.620335>,  <36.992783, 36.491734, 41.864948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033962, 36.177937, 41.620335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768848, -0.452826, 0.451465,
		-0.631089, 0.423695, -0.649777,
		0.102952, -0.784495, -0.611530,
		37.064846, 35.942589, 41.436874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258644, 36.461334, 42.596287>,  <36.992783, 36.491734, 41.864948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258644, 36.461334, 42.596287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315575, 36.152760, 42.844360>,  <37.349731, 35.967617, 42.993206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315575, 36.152760, 42.844360>,  <37.258644, 36.461334, 42.596287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315575, 36.152760, 42.844360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544009, 0.462486, 0.700114,
		-0.826921, -0.437030, -0.353846,
		0.142322, -0.771434, 0.620188,
		37.358273, 35.921329, 43.030418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631187, 36.057076, 42.656540>,  <37.258644, 36.461334, 42.596287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631187, 36.057076, 42.656540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869457, 36.000278, 42.972771>,  <37.012421, 35.966202, 43.162510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869457, 36.000278, 42.972771>,  <36.631187, 36.057076, 42.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869457, 36.000278, 42.972771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625152, 0.536042, 0.567313,
		-0.504335, -0.832164, 0.230540,
		0.595677, -0.141993, 0.790574,
		37.048161, 35.957680, 43.209942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348927, 35.353966, 42.476959>,  <36.631187, 36.057076, 42.656540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348927, 35.353966, 42.476959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169147, 35.281311, 42.127102>,  <36.061279, 35.237720, 41.917187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169147, 35.281311, 42.127102>,  <36.348927, 35.353966, 42.476959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169147, 35.281311, 42.127102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779058, 0.399397, -0.483271,
		0.437109, -0.898605, -0.038006,
		-0.449449, -0.181634, -0.874646,
		36.034313, 35.226822, 41.864708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828701, 34.998623, 42.029072>,  <36.348927, 35.353966, 42.476959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828701, 34.998623, 42.029072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553394, 35.191631, 41.812386>,  <36.388210, 35.307438, 41.682373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553394, 35.191631, 41.812386>,  <36.828701, 34.998623, 42.029072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553394, 35.191631, 41.812386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718855, 0.353101, -0.598805,
		-0.097656, -0.801555, -0.589892,
		-0.688267, 0.482523, -0.541720,
		36.346916, 35.336388, 41.649868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943523, 34.886234, 41.325157>,  <36.828701, 34.998623, 42.029072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943523, 34.886234, 41.325157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737473, 35.228573, 41.343819>,  <36.613842, 35.433975, 41.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737473, 35.228573, 41.343819>,  <36.943523, 34.886234, 41.325157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737473, 35.228573, 41.343819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666604, 0.434254, -0.605857,
		-0.538778, -0.280993, -0.794205,
		-0.515128, 0.855842, 0.046656,
		36.582935, 35.485325, 41.357815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898132, 35.107758, 40.601402>,  <36.943523, 34.886234, 41.325157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898132, 35.107758, 40.601402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865025, 35.427467, 40.839500>,  <36.845161, 35.619293, 40.982357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865025, 35.427467, 40.839500>,  <36.898132, 35.107758, 40.601402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865025, 35.427467, 40.839500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645458, 0.498079, -0.579052,
		-0.759298, 0.336277, -0.557122,
		-0.082769, 0.799272, 0.595243,
		36.840195, 35.667248, 41.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785637, 35.592514, 40.181561>,  <36.898132, 35.107758, 40.601402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785637, 35.592514, 40.181561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958366, 35.755955, 40.503201>,  <37.062004, 35.854019, 40.696182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958366, 35.755955, 40.503201>,  <36.785637, 35.592514, 40.181561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958366, 35.755955, 40.503201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477409, 0.652836, -0.588121,
		-0.765252, 0.637846, 0.086836,
		0.431821, 0.408605, 0.804098,
		37.087914, 35.878536, 40.744431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833447, 36.252892, 40.038342>,  <36.785637, 35.592514, 40.181561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833447, 36.252892, 40.038342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078705, 36.244801, 40.354225>,  <37.225861, 36.239944, 40.543755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078705, 36.244801, 40.354225>,  <36.833447, 36.252892, 40.038342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078705, 36.244801, 40.354225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688054, 0.504818, -0.521287,
		-0.388114, 0.862989, 0.323446,
		0.613146, -0.020230, 0.789710,
		37.262650, 36.238731, 40.591137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853687, 37.012112, 40.264141>,  <36.833447, 36.252892, 40.038342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853687, 37.012112, 40.264141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173779, 36.797081, 40.370461>,  <37.365833, 36.668064, 40.434254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173779, 36.797081, 40.370461>,  <36.853687, 37.012112, 40.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173779, 36.797081, 40.370461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593392, 0.645693, -0.480590,
		0.086728, 0.542305, 0.835694,
		0.800228, -0.537574, 0.265800,
		37.413845, 36.635807, 40.450199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327793, 37.396114, 40.624176>,  <36.853687, 37.012112, 40.264141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327793, 37.396114, 40.624176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568821, 37.115070, 40.472782>,  <37.713440, 36.946445, 40.381947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568821, 37.115070, 40.472782>,  <37.327793, 37.396114, 40.624176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568821, 37.115070, 40.472782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686521, 0.698173, -0.203085,
		0.406935, -0.137462, 0.903055,
		0.602573, -0.702608, -0.378481,
		37.749592, 36.904289, 40.359238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935356, 37.789425, 40.535553>,  <37.327793, 37.396114, 40.624176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935356, 37.789425, 40.535553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050926, 37.451252, 40.355881>,  <38.120266, 37.248348, 40.248077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050926, 37.451252, 40.355881>,  <37.935356, 37.789425, 40.535553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050926, 37.451252, 40.355881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872698, 0.425486, -0.239500,
		0.393602, -0.322802, 0.860742,
		0.288923, -0.845435, -0.449180,
		38.137604, 37.197620, 40.221127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690170, 37.736919, 40.665993>,  <37.935356, 37.789425, 40.535553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690170, 37.736919, 40.665993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644371, 37.492710, 40.352520>,  <38.616894, 37.346184, 40.164436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644371, 37.492710, 40.352520>,  <38.690170, 37.736919, 40.665993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644371, 37.492710, 40.352520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841009, 0.360319, -0.403578,
		0.528768, -0.705288, 0.472201,
		-0.114496, -0.610524, -0.783678,
		38.610023, 37.309551, 40.117416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382603, 37.353889, 40.480274>,  <38.690170, 37.736919, 40.665993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382603, 37.353889, 40.480274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135986, 37.421829, 40.172760>,  <38.988018, 37.462593, 39.988251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135986, 37.421829, 40.172760>,  <39.382603, 37.353889, 40.480274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135986, 37.421829, 40.172760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775787, 0.297611, -0.556401,
		0.134297, -0.939457, -0.315253,
		-0.616538, 0.169846, -0.768787,
		38.951023, 37.472782, 39.942123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667316, 37.077229, 39.780174>,  <39.382603, 37.353889, 40.480274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667316, 37.077229, 39.780174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443253, 37.406700, 39.744904>,  <39.308815, 37.604382, 39.723740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443253, 37.406700, 39.744904>,  <39.667316, 37.077229, 39.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443253, 37.406700, 39.744904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713980, 0.426080, -0.555598,
		-0.420063, -0.374181, -0.826763,
		-0.560161, 0.823677, -0.088177,
		39.275204, 37.653805, 39.718449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046284, 36.906254, 39.145885>,  <39.667316, 37.077229, 39.780174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046284, 36.906254, 39.145885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694588, 36.720238, 39.187210>,  <39.483570, 36.608627, 39.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694588, 36.720238, 39.187210>,  <40.046284, 36.906254, 39.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694588, 36.720238, 39.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169202, 0.507591, 0.844821,
		-0.445320, 0.725318, -0.524980,
		-0.879239, -0.465043, 0.103315,
		39.430817, 36.580727, 39.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526711, 37.348160, 39.114044>,  <40.046284, 36.906254, 39.145885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526711, 37.348160, 39.114044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409370, 37.036991, 39.336315>,  <39.338966, 36.850288, 39.469677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409370, 37.036991, 39.336315>,  <39.526711, 37.348160, 39.114044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409370, 37.036991, 39.336315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266378, 0.624741, 0.733990,
		-0.918144, 0.067297, -0.390491,
		-0.293351, -0.777926, 0.555676,
		39.321365, 36.803612, 39.503017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240612, 37.776085, 38.489471>,  <39.526711, 37.348160, 39.114044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240612, 37.776085, 38.489471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045708, 38.113525, 38.579720>,  <38.928764, 38.315990, 38.633869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045708, 38.113525, 38.579720>,  <39.240612, 37.776085, 38.489471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045708, 38.113525, 38.579720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283700, 0.397274, -0.872747,
		-0.825886, -0.361252, -0.432908,
		-0.487265, 0.843605, 0.225616,
		38.899529, 38.366608, 38.647404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807175, 37.926193, 37.900528>,  <39.240612, 37.776085, 38.489471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807175, 37.926193, 37.900528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919071, 38.262100, 38.086662>,  <38.986210, 38.463642, 38.198341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919071, 38.262100, 38.086662>,  <38.807175, 37.926193, 37.900528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919071, 38.262100, 38.086662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557305, 0.252632, -0.790941,
		-0.781764, 0.480596, -0.397333,
		0.279744, 0.839765, 0.465337,
		39.002995, 38.514030, 38.226265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583134, 38.609154, 37.666084>,  <38.807175, 37.926193, 37.900528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583134, 38.609154, 37.666084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946392, 38.667412, 37.823082>,  <39.164349, 38.702366, 37.917278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946392, 38.667412, 37.823082>,  <38.583134, 38.609154, 37.666084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946392, 38.667412, 37.823082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337627, 0.299522, -0.892353,
		-0.247529, 0.942907, 0.222836,
		0.908150, 0.145648, 0.392491,
		39.218838, 38.711105, 37.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807396, 39.234772, 37.536011>,  <38.583134, 38.609154, 37.666084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807396, 39.234772, 37.536011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153801, 39.059193, 37.631802>,  <39.361645, 38.953846, 37.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153801, 39.059193, 37.631802>,  <38.807396, 39.234772, 37.536011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153801, 39.059193, 37.631802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424001, 0.390793, -0.817009,
		0.265036, 0.809079, 0.524545,
		0.866013, -0.438945, 0.239476,
		39.413605, 38.927509, 37.703644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322392, 39.695957, 37.346970>,  <38.807396, 39.234772, 37.536011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322392, 39.695957, 37.346970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556351, 39.376289, 37.402431>,  <39.696728, 39.184490, 37.435707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556351, 39.376289, 37.402431>,  <39.322392, 39.695957, 37.346970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556351, 39.376289, 37.402431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649456, 0.359033, -0.670300,
		0.485899, 0.482110, 0.729021,
		0.584901, -0.799165, 0.138656,
		39.731823, 39.136539, 37.444027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090797, 39.965637, 37.453583>,  <39.322392, 39.695957, 37.346970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090797, 39.965637, 37.453583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077072, 39.604164, 37.282852>,  <40.068836, 39.387280, 37.180416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077072, 39.604164, 37.282852>,  <40.090797, 39.965637, 37.453583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077072, 39.604164, 37.282852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652703, 0.303154, -0.694317,
		0.756836, -0.302411, 0.579437,
		-0.034311, -0.903684, -0.426822,
		40.066780, 39.333057, 37.154804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625580, 39.904823, 37.099083>,  <40.090797, 39.965637, 37.453583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625580, 39.904823, 37.099083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489975, 39.572895, 36.921783>,  <40.408611, 39.373737, 36.815403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489975, 39.572895, 36.921783>,  <40.625580, 39.904823, 37.099083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489975, 39.572895, 36.921783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583348, 0.184229, -0.791053,
		0.738091, -0.526745, 0.421618,
		-0.339009, -0.829819, -0.443253,
		40.388271, 39.323948, 36.788807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154541, 39.547092, 36.938675>,  <40.625580, 39.904823, 37.099083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154541, 39.547092, 36.938675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846195, 39.458439, 36.699799>,  <40.661186, 39.405247, 36.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846195, 39.458439, 36.699799>,  <41.154541, 39.547092, 36.938675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846195, 39.458439, 36.699799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563245, 0.200724, -0.801539,
		0.297520, -0.954247, -0.029898,
		-0.770867, -0.221634, -0.597194,
		40.614933, 39.391949, 36.520641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399265, 39.075851, 36.367924>,  <41.154541, 39.547092, 36.938675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399265, 39.075851, 36.367924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057072, 39.212952, 36.212662>,  <40.851753, 39.295212, 36.119503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057072, 39.212952, 36.212662>,  <41.399265, 39.075851, 36.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057072, 39.212952, 36.212662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412795, -0.001160, -0.910823,
		-0.312633, -0.939427, -0.140492,
		-0.855489, 0.342748, -0.388154,
		40.800426, 39.315777, 36.096214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390778, 38.690376, 35.727146>,  <41.399265, 39.075851, 36.367924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390778, 38.690376, 35.727146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135609, 38.996910, 35.696693>,  <40.982510, 39.180828, 35.678421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135609, 38.996910, 35.696693>,  <41.390778, 38.690376, 35.727146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135609, 38.996910, 35.696693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250113, 0.112662, -0.961640,
		-0.728357, -0.632489, -0.263538,
		-0.637918, 0.766332, -0.076136,
		40.944233, 39.226810, 35.673851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925327, 39.256485, 35.714928>,  <41.390778, 38.690376, 35.727146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925327, 39.256485, 35.714928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170349, 39.506008, 35.520752>,  <42.317360, 39.655720, 35.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170349, 39.506008, 35.520752>,  <41.925327, 39.256485, 35.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170349, 39.506008, 35.520752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683919, -0.726176, -0.070157,
		-0.396276, -0.289024, -0.871453,
		0.612552, 0.623805, -0.485435,
		42.354115, 39.693150, 35.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266022, 38.925125, 35.238388>,  <41.925327, 39.256485, 35.714928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266022, 38.925125, 35.238388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502426, 39.246479, 35.267448>,  <42.644268, 39.439293, 35.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502426, 39.246479, 35.267448>,  <42.266022, 38.925125, 35.238388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502426, 39.246479, 35.267448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806522, -0.586812, -0.071926,
		-0.015154, 0.101100, -0.994761,
		0.591009, 0.803387, 0.072647,
		42.679729, 39.487495, 35.289242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924355, 38.798504, 34.826420>,  <42.266022, 38.925125, 35.238388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924355, 38.798504, 34.826420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002205, 39.076813, 35.102978>,  <43.048916, 39.243797, 35.268913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002205, 39.076813, 35.102978>,  <42.924355, 38.798504, 34.826420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002205, 39.076813, 35.102978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914775, -0.383131, 0.128052,
		0.353989, 0.607547, -0.711040,
		0.194624, 0.695771, 0.691393,
		43.060593, 39.285545, 35.310394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452026, 39.326435, 34.590721>,  <42.924355, 38.798504, 34.826420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452026, 39.326435, 34.590721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421532, 39.224159, 34.976219>,  <43.403236, 39.162792, 35.207520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421532, 39.224159, 34.976219>,  <43.452026, 39.326435, 34.590721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421532, 39.224159, 34.976219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946265, -0.323209, -0.010899,
		0.314279, 0.911130, 0.266592,
		-0.076235, -0.255692, 0.963748,
		43.398663, 39.147453, 35.265343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971806, 39.614952, 35.135208>,  <43.452026, 39.326435, 34.590721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971806, 39.614952, 35.135208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848789, 39.244209, 35.221329>,  <43.774979, 39.021763, 35.273003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848789, 39.244209, 35.221329>,  <43.971806, 39.614952, 35.135208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848789, 39.244209, 35.221329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950376, -0.310365, 0.021427,
		0.046963, 0.211208, 0.976312,
		-0.307538, -0.926857, 0.215303,
		43.756527, 38.966152, 35.285919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593967, 39.335224, 35.567619>,  <43.971806, 39.614952, 35.135208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593967, 39.335224, 35.567619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591297, 38.964191, 35.418198>,  <44.589695, 38.741570, 35.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591297, 38.964191, 35.418198>,  <44.593967, 39.335224, 35.567619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591297, 38.964191, 35.418198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225064, 0.365369, -0.903245,
		0.974321, 0.078044, -0.211205,
		-0.006675, -0.927585, -0.373552,
		44.589294, 38.685917, 35.306133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962288, 39.300503, 34.939507>,  <44.593967, 39.335224, 35.567619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962288, 39.300503, 34.939507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700558, 38.999928, 34.905579>,  <44.543518, 38.819584, 34.885223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700558, 38.999928, 34.905579>,  <44.962288, 39.300503, 34.939507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700558, 38.999928, 34.905579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273612, 0.339819, -0.899810,
		0.704976, -0.565563, -0.427956,
		-0.654328, -0.751440, -0.084820,
		44.504261, 38.774494, 34.880135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316013, 39.992008, 35.180851>,  <44.962288, 39.300503, 34.939507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316013, 39.992008, 35.180851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534317, 39.702011, 35.012787>,  <45.665298, 39.528011, 34.911949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534317, 39.702011, 35.012787>,  <45.316013, 39.992008, 35.180851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534317, 39.702011, 35.012787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681309, 0.092023, 0.726189,
		-0.487818, -0.682581, 0.544167,
		0.545759, -0.724993, -0.420158,
		45.698044, 39.484512, 34.886738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329884, 39.336632, 35.582664>,  <45.316013, 39.992008, 35.180851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329884, 39.336632, 35.582664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660034, 39.452034, 35.388542>,  <45.858124, 39.521275, 35.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660034, 39.452034, 35.388542>,  <45.329884, 39.336632, 35.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660034, 39.452034, 35.388542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442287, 0.203851, 0.873400,
		0.350913, -0.935525, 0.040650,
		0.825374, 0.288508, -0.485305,
		45.907646, 39.538586, 35.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803230, 39.123440, 36.015381>,  <45.329884, 39.336632, 35.582664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803230, 39.123440, 36.015381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008545, 39.383068, 35.790798>,  <46.131733, 39.538845, 35.656048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008545, 39.383068, 35.790798>,  <45.803230, 39.123440, 36.015381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008545, 39.383068, 35.790798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684618, 0.084832, 0.723949,
		0.517525, -0.755982, -0.400823,
		0.513290, 0.649072, -0.561461,
		46.162533, 39.577789, 35.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538006, 38.918476, 36.018951>,  <45.803230, 39.123440, 36.015381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538006, 38.918476, 36.018951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512299, 39.304958, 35.919098>,  <46.496876, 39.536846, 35.859188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.512299, 39.304958, 35.919098>,  <46.538006, 38.918476, 36.018951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512299, 39.304958, 35.919098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701643, 0.221629, 0.677184,
		0.709625, -0.131632, -0.692175,
		-0.064267, 0.966206, -0.249632,
		46.493019, 39.594822, 35.844208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032913, 38.713959, 35.502419>,  <46.538006, 38.918476, 36.018951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032913, 38.713959, 35.502419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826759, 38.483414, 35.248749>,  <46.703068, 38.345085, 35.096546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826759, 38.483414, 35.248749>,  <47.032913, 38.713959, 35.502419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826759, 38.483414, 35.248749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674687, -0.729184, 0.114403,
		-0.528369, -0.368909, 0.764678,
		-0.515387, -0.576365, -0.634176,
		46.672142, 38.310505, 35.058495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.869678, 37.985577, 35.801136>,  <47.032913, 38.713959, 35.502419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.869678, 37.985577, 35.801136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921623, 37.981705, 35.404541>,  <46.952789, 37.979382, 35.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921623, 37.981705, 35.404541>,  <46.869678, 37.985577, 35.801136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921623, 37.981705, 35.404541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772624, -0.625729, 0.107311,
		-0.621440, -0.779980, -0.073780,
		0.129867, -0.009683, -0.991484,
		46.960583, 37.978798, 35.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001980, 37.288975, 35.534000>,  <46.869678, 37.985577, 35.801136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001980, 37.288975, 35.534000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149681, 37.534031, 35.254478>,  <47.238300, 37.681065, 35.086765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149681, 37.534031, 35.254478>,  <47.001980, 37.288975, 35.534000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149681, 37.534031, 35.254478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870653, -0.491007, 0.029586,
		-0.324990, -0.619338, -0.714704,
		0.369249, 0.612644, -0.698801,
		47.260456, 37.717823, 35.044838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.367767, 36.922558, 34.986713>,  <47.001980, 37.288975, 35.534000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.367767, 36.922558, 34.986713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546131, 37.278690, 34.949871>,  <47.653149, 37.492371, 34.927765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546131, 37.278690, 34.949871>,  <47.367767, 36.922558, 34.986713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546131, 37.278690, 34.949871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893791, -0.448420, -0.007530,
		-0.048004, -0.078962, -0.995721,
		0.445907, 0.890328, -0.092102,
		47.679905, 37.545788, 34.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808537, 37.177963, 34.521049>,  <47.367767, 36.922558, 34.986713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808537, 37.177963, 34.521049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893276, 36.978642, 34.184761>,  <46.944122, 36.859051, 33.982986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893276, 36.978642, 34.184761>,  <46.808537, 37.177963, 34.521049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893276, 36.978642, 34.184761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264222, -0.799008, 0.540159,
		-0.940906, -0.336572, -0.037610,
		0.211853, -0.498302, -0.840722,
		46.956833, 36.829151, 33.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.393475, 36.540733, 34.590691>,  <46.808537, 37.177963, 34.521049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.393475, 36.540733, 34.590691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726223, 36.519676, 34.369705>,  <46.925873, 36.507042, 34.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726223, 36.519676, 34.369705>,  <46.393475, 36.540733, 34.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726223, 36.519676, 34.369705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218812, -0.883735, 0.413683,
		-0.510005, -0.465017, -0.723640,
		0.831875, -0.052639, -0.552460,
		46.975784, 36.503883, 34.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474525, 35.839340, 34.546951>,  <46.393475, 36.540733, 34.590691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474525, 35.839340, 34.546951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844143, 35.989983, 34.520672>,  <47.065914, 36.080368, 34.504906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.844143, 35.989983, 34.520672>,  <46.474525, 35.839340, 34.546951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.844143, 35.989983, 34.520672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349040, -0.761026, 0.546819,
		0.155936, -0.528215, -0.834669,
		0.924043, 0.376602, -0.065697,
		47.121357, 36.102962, 34.500961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941799, 35.222652, 34.387112>,  <46.474525, 35.839340, 34.546951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941799, 35.222652, 34.387112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122616, 35.530704, 34.567139>,  <47.231106, 35.715534, 34.675156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.122616, 35.530704, 34.567139>,  <46.941799, 35.222652, 34.387112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.122616, 35.530704, 34.567139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339876, -0.615207, 0.711341,
		0.824708, -0.168588, -0.539847,
		0.452041, 0.770129, 0.450067,
		47.258228, 35.761742, 34.702160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.620670, 34.920246, 34.427677>,  <46.941799, 35.222652, 34.387112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.620670, 34.920246, 34.427677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472691, 35.191017, 34.682209>,  <47.383904, 35.353477, 34.834927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.472691, 35.191017, 34.682209>,  <47.620670, 34.920246, 34.427677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.472691, 35.191017, 34.682209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195008, -0.613084, 0.765572,
		0.908355, 0.407312, 0.094806,
		-0.369951, 0.676923, 0.636327,
		47.361706, 35.394093, 34.873108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.213272, 35.021645, 34.800560>,  <47.620670, 34.920246, 34.427677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.213272, 35.021645, 34.800560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873314, 35.091080, 34.999577>,  <47.669338, 35.132740, 35.118988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.873314, 35.091080, 34.999577>,  <48.213272, 35.021645, 34.800560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.873314, 35.091080, 34.999577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216111, -0.746312, 0.629535,
		0.480603, 0.642562, 0.596770,
		-0.849892, 0.173588, 0.497545,
		47.618347, 35.143154, 35.148842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.043900, 33.575672, 27.416603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.694984, 33.451202, 27.265717>,  <42.485638, 33.376522, 27.175184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.694984, 33.451202, 27.265717>,  <43.043900, 33.575672, 27.416603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694984, 33.451202, 27.265717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409277, 0.042433, 0.911423,
		-0.267601, 0.949406, -0.164368,
		-0.872286, -0.311170, -0.377215,
		42.433300, 33.357853, 27.152552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579002, 33.995422, 27.681740>,  <43.043900, 33.575672, 27.416603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579002, 33.995422, 27.681740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.312016, 33.721146, 27.565584>,  <42.151825, 33.556580, 27.495892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.312016, 33.721146, 27.565584>,  <42.579002, 33.995422, 27.681740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312016, 33.721146, 27.565584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520050, 0.150135, 0.840837,
		-0.532954, 0.712245, -0.456802,
		-0.667464, -0.685687, -0.290388,
		42.111778, 33.515438, 27.478468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919548, 34.295940, 27.776052>,  <42.579002, 33.995422, 27.681740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919548, 34.295940, 27.776052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839737, 33.903984, 27.777174>,  <41.791851, 33.668812, 27.777847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839737, 33.903984, 27.777174>,  <41.919548, 34.295940, 27.776052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839737, 33.903984, 27.777174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509314, 0.106149, 0.854009,
		-0.837131, 0.168971, -0.520251,
		-0.199526, -0.979888, 0.002801,
		41.779881, 33.610016, 27.778015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231613, 34.275093, 27.969305>,  <41.919548, 34.295940, 27.776052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231613, 34.275093, 27.969305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.359581, 33.900826, 28.028858>,  <41.436363, 33.676266, 28.064590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.359581, 33.900826, 28.028858>,  <41.231613, 34.275093, 27.969305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359581, 33.900826, 28.028858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669719, -0.112179, 0.734093,
		-0.670170, -0.334562, -0.662526,
		0.319921, -0.935673, 0.148884,
		41.455559, 33.620125, 28.073524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624241, 33.913105, 27.975267>,  <41.231613, 34.275093, 27.969305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624241, 33.913105, 27.975267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.904224, 33.696331, 28.161331>,  <41.072212, 33.566269, 28.272970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.904224, 33.696331, 28.161331>,  <40.624241, 33.913105, 27.975267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904224, 33.696331, 28.161331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633387, -0.170115, 0.754905,
		-0.329978, -0.823024, -0.462326,
		0.699954, -0.541934, 0.465159,
		41.114212, 33.533752, 28.300879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355640, 33.234364, 28.122065>,  <40.624241, 33.913105, 27.975267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355640, 33.234364, 28.122065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.653694, 33.309479, 28.378035>,  <40.832527, 33.354549, 28.531616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.653694, 33.309479, 28.378035>,  <40.355640, 33.234364, 28.122065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653694, 33.309479, 28.378035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598652, -0.234542, 0.765902,
		0.293921, -0.953794, -0.062343,
		0.745135, 0.187793, 0.639927,
		40.877235, 33.365818, 28.570013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233166, 32.762146, 28.631166>,  <40.355640, 33.234364, 28.122065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233166, 32.762146, 28.631166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454296, 33.052307, 28.795200>,  <40.586975, 33.226402, 28.893621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.454296, 33.052307, 28.795200>,  <40.233166, 32.762146, 28.631166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454296, 33.052307, 28.795200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537797, -0.065321, 0.840540,
		0.636517, -0.685219, 0.354008,
		0.552830, 0.725402, 0.410087,
		40.620144, 33.269928, 28.918226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363941, 32.545250, 29.300804>,  <40.233166, 32.762146, 28.631166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363941, 32.545250, 29.300804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462189, 32.931252, 29.337536>,  <40.521137, 33.162853, 29.359575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.462189, 32.931252, 29.337536>,  <40.363941, 32.545250, 29.300804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462189, 32.931252, 29.337536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321942, -0.008147, 0.946724,
		0.914343, -0.262102, 0.308674,
		0.245623, 0.965006, 0.091831,
		40.535877, 33.220753, 29.365086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596214, 32.618557, 29.980358>,  <40.363941, 32.545250, 29.300804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596214, 32.618557, 29.980358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.504543, 32.989426, 29.861814>,  <40.449539, 33.211948, 29.790688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.504543, 32.989426, 29.861814>,  <40.596214, 32.618557, 29.980358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504543, 32.989426, 29.861814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418949, 0.180865, 0.889814,
		0.878612, 0.328086, 0.346987,
		-0.229178, 0.927172, -0.296361,
		40.435791, 33.267578, 29.772905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871708, 32.989277, 30.467726>,  <40.596214, 32.618557, 29.980358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871708, 32.989277, 30.467726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.628796, 33.269936, 30.318651>,  <40.483047, 33.438332, 30.229206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.628796, 33.269936, 30.318651>,  <40.871708, 32.989277, 30.467726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628796, 33.269936, 30.318651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184443, 0.331768, 0.925155,
		0.772778, 0.630572, -0.072063,
		-0.607285, 0.701648, -0.372687,
		40.446609, 33.480431, 30.206844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064301, 33.705475, 30.762871>,  <40.871708, 32.989277, 30.467726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064301, 33.705475, 30.762871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680405, 33.724369, 30.652121>,  <40.450066, 33.735706, 30.585670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680405, 33.724369, 30.652121>,  <41.064301, 33.705475, 30.762871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680405, 33.724369, 30.652121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219246, 0.490160, 0.843608,
		0.175562, 0.870352, -0.460072,
		-0.959744, 0.047237, -0.276875,
		40.392483, 33.738541, 30.569057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893982, 34.386887, 30.806124>,  <41.064301, 33.705475, 30.762871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893982, 34.386887, 30.806124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550461, 34.182716, 30.823666>,  <40.344349, 34.060215, 30.834190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550461, 34.182716, 30.823666>,  <40.893982, 34.386887, 30.806124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550461, 34.182716, 30.823666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259871, 0.507806, 0.821340,
		-0.441501, 0.693973, -0.568751,
		-0.858803, -0.510425, 0.043853,
		40.292820, 34.029591, 30.836823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355999, 34.836403, 30.910748>,  <40.893982, 34.386887, 30.806124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355999, 34.836403, 30.910748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183147, 34.497128, 31.033283>,  <40.079437, 34.293564, 31.106804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183147, 34.497128, 31.033283>,  <40.355999, 34.836403, 30.910748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183147, 34.497128, 31.033283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280363, 0.449217, 0.848293,
		-0.857122, 0.280689, -0.431921,
		-0.432132, -0.848185, 0.306339,
		40.053509, 34.242672, 31.125185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738609, 35.034706, 31.197674>,  <40.355999, 34.836403, 30.910748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738609, 35.034706, 31.197674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809078, 34.678825, 31.366150>,  <39.851360, 34.465298, 31.467236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.809078, 34.678825, 31.366150>,  <39.738609, 35.034706, 31.197674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809078, 34.678825, 31.366150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254628, 0.372129, 0.892572,
		-0.950857, -0.264490, -0.160985,
		0.176170, -0.889699, 0.421188,
		39.861931, 34.411915, 31.492506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278545, 35.070862, 31.704428>,  <39.738609, 35.034706, 31.197674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278545, 35.070862, 31.704428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528873, 34.782074, 31.822489>,  <39.679070, 34.608803, 31.893326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528873, 34.782074, 31.822489>,  <39.278545, 35.070862, 31.704428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528873, 34.782074, 31.822489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139244, 0.268922, 0.953044,
		-0.767440, -0.637529, 0.067766,
		0.625817, -0.721968, 0.295154,
		39.716618, 34.565483, 31.911036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863590, 34.642673, 32.157787>,  <39.278545, 35.070862, 31.704428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863590, 34.642673, 32.157787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252724, 34.585445, 32.230598>,  <39.486202, 34.551109, 32.274284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252724, 34.585445, 32.230598>,  <38.863590, 34.642673, 32.157787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252724, 34.585445, 32.230598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112472, 0.395154, 0.911704,
		-0.202366, -0.907405, 0.368326,
		0.972830, -0.143071, 0.182023,
		39.544571, 34.542522, 32.285206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802029, 34.415504, 32.778645>,  <38.863590, 34.642673, 32.157787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802029, 34.415504, 32.778645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173904, 34.548172, 32.714558>,  <39.397030, 34.627773, 32.676105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173904, 34.548172, 32.714558>,  <38.802029, 34.415504, 32.778645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173904, 34.548172, 32.714558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041855, 0.337030, 0.940563,
		0.365959, -0.881137, 0.299451,
		0.929690, 0.331674, -0.160219,
		39.452812, 34.647675, 32.666492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969746, 34.482220, 33.444801>,  <38.802029, 34.415504, 32.778645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969746, 34.482220, 33.444801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278740, 34.650021, 33.254101>,  <39.464134, 34.750702, 33.139679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278740, 34.650021, 33.254101>,  <38.969746, 34.482220, 33.444801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278740, 34.650021, 33.254101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122393, 0.638317, 0.759981,
		0.623116, -0.645431, 0.441754,
		0.772494, 0.419488, -0.476742,
		39.510483, 34.775871, 33.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464691, 34.482281, 33.892059>,  <38.969746, 34.482220, 33.444801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464691, 34.482281, 33.892059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547405, 34.782322, 33.640797>,  <39.597034, 34.962345, 33.490040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.547405, 34.782322, 33.640797>,  <39.464691, 34.482281, 33.892059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547405, 34.782322, 33.640797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019834, 0.638690, 0.769208,
		0.978186, -0.171517, 0.117192,
		0.206782, 0.750104, -0.628160,
		39.609440, 35.007355, 33.452347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983391, 34.940300, 34.287174>,  <39.464691, 34.482281, 33.892059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983391, 34.940300, 34.287174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857197, 35.156593, 33.975254>,  <39.781483, 35.286369, 33.788101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857197, 35.156593, 33.975254>,  <39.983391, 34.940300, 34.287174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857197, 35.156593, 33.975254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114749, 0.793993, 0.596999,
		0.941968, 0.277823, -0.188442,
		-0.315481, 0.540731, -0.779796,
		39.762554, 35.318813, 33.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385029, 35.613655, 34.234081>,  <39.983391, 34.940300, 34.287174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385029, 35.613655, 34.234081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027813, 35.661644, 34.060604>,  <39.813484, 35.690437, 33.956516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027813, 35.661644, 34.060604>,  <40.385029, 35.613655, 34.234081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027813, 35.661644, 34.060604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180695, 0.787071, 0.589804,
		0.412110, 0.605084, -0.681204,
		-0.893037, 0.119974, -0.433695,
		39.759903, 35.697636, 33.930496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840786, 36.102848, 34.450844>,  <40.385029, 35.613655, 34.234081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840786, 36.102848, 34.450844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.038280, 36.409573, 34.614902>,  <41.156776, 36.593609, 34.713337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.038280, 36.409573, 34.614902>,  <40.840786, 36.102848, 34.450844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038280, 36.409573, 34.614902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547800, 0.092046, -0.831530,
		-0.675379, 0.635239, -0.374612,
		0.493739, 0.766811, 0.410150,
		41.186401, 36.639614, 34.737949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656734, 36.723068, 34.013901>,  <40.840786, 36.102848, 34.450844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656734, 36.723068, 34.013901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994770, 36.795464, 34.215122>,  <41.197594, 36.838902, 34.335854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994770, 36.795464, 34.215122>,  <40.656734, 36.723068, 34.013901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994770, 36.795464, 34.215122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459524, 0.234998, -0.856512,
		-0.273236, 0.954997, 0.115426,
		0.845092, 0.180989, 0.503054,
		41.248299, 36.849762, 34.366039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867550, 37.421040, 33.821251>,  <40.656734, 36.723068, 34.013901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867550, 37.421040, 33.821251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163780, 37.191566, 33.961212>,  <41.341518, 37.053883, 34.045189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.163780, 37.191566, 33.961212>,  <40.867550, 37.421040, 33.821251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163780, 37.191566, 33.961212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519523, 0.158557, -0.839616,
		0.426198, 0.803581, 0.415467,
		0.740575, -0.573687, 0.349903,
		41.385952, 37.019459, 34.066181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402431, 37.771061, 33.606663>,  <40.867550, 37.421040, 33.821251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402431, 37.771061, 33.606663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.551815, 37.411045, 33.696518>,  <41.641445, 37.195038, 33.750431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.551815, 37.411045, 33.696518>,  <41.402431, 37.771061, 33.606663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551815, 37.411045, 33.696518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599504, 0.049371, -0.798848,
		0.707901, 0.433009, 0.558013,
		0.373458, -0.900037, 0.224640,
		41.663853, 37.141033, 33.763908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177940, 37.797455, 33.484192>,  <41.402431, 37.771061, 33.606663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177940, 37.797455, 33.484192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.082767, 37.408966, 33.479919>,  <42.025665, 37.175873, 33.477356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.082767, 37.408966, 33.479919>,  <42.177940, 37.797455, 33.484192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082767, 37.408966, 33.479919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571012, -0.130971, -0.810427,
		0.785707, -0.198926, 0.585742,
		-0.237930, -0.971224, -0.010684,
		42.011387, 37.117599, 33.476715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807480, 37.464695, 33.361176>,  <42.177940, 37.797455, 33.484192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807480, 37.464695, 33.361176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.556210, 37.165997, 33.273766>,  <42.405445, 36.986778, 33.221317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.556210, 37.165997, 33.273766>,  <42.807480, 37.464695, 33.361176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556210, 37.165997, 33.273766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519526, -0.193484, -0.832260,
		0.579208, -0.636340, 0.509499,
		-0.628180, -0.746750, -0.218527,
		42.367756, 36.941971, 33.208206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253662, 36.818241, 33.328091>,  <42.807480, 37.464695, 33.361176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253662, 36.818241, 33.328091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.899910, 36.749191, 33.154621>,  <42.687660, 36.707760, 33.050541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.899910, 36.749191, 33.154621>,  <43.253662, 36.818241, 33.328091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899910, 36.749191, 33.154621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466595, -0.301755, -0.831404,
		0.012657, -0.937627, 0.347412,
		-0.884380, -0.172624, -0.433673,
		42.634594, 36.697403, 33.024521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289524, 36.109837, 33.064545>,  <43.253662, 36.818241, 33.328091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289524, 36.109837, 33.064545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.983616, 36.287281, 32.877640>,  <42.800072, 36.393745, 32.765495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.983616, 36.287281, 32.877640>,  <43.289524, 36.109837, 33.064545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983616, 36.287281, 32.877640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365379, -0.298729, -0.881623,
		-0.530681, -0.844969, 0.066375,
		-0.764772, 0.443608, -0.467264,
		42.754185, 36.420364, 32.737461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.961544, 35.646893, 32.607491>,  <43.289524, 36.109837, 33.064545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.961544, 35.646893, 32.607491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.863308, 36.007381, 32.464668>,  <42.804367, 36.223675, 32.378975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.863308, 36.007381, 32.464668>,  <42.961544, 35.646893, 32.607491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863308, 36.007381, 32.464668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173862, -0.321412, -0.930842,
		-0.953656, -0.290681, -0.077753,
		-0.245588, 0.901221, -0.357055,
		42.789631, 36.277748, 32.357552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575478, 35.419777, 31.958616>,  <42.961544, 35.646893, 32.607491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575478, 35.419777, 31.958616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710484, 35.796265, 31.953007>,  <42.791485, 36.022156, 31.949640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710484, 35.796265, 31.953007>,  <42.575478, 35.419777, 31.958616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710484, 35.796265, 31.953007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307842, -0.124444, -0.943264,
		-0.889561, 0.314046, -0.331747,
		0.337512, 0.941217, -0.014023,
		42.811737, 36.078629, 31.948799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500717, 35.563168, 31.300608>,  <42.575478, 35.419777, 31.958616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500717, 35.563168, 31.300608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710777, 35.886879, 31.405891>,  <42.836815, 36.081108, 31.469061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.710777, 35.886879, 31.405891>,  <42.500717, 35.563168, 31.300608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710777, 35.886879, 31.405891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406960, 0.032814, -0.912856,
		-0.747395, 0.586504, -0.312113,
		0.525152, 0.809281, 0.263209,
		42.868324, 36.129662, 31.484854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457970, 36.094917, 30.776413>,  <42.500717, 35.563168, 31.300608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457970, 36.094917, 30.776413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.801865, 36.145020, 30.974470>,  <43.008202, 36.175079, 31.093304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.801865, 36.145020, 30.974470>,  <42.457970, 36.094917, 30.776413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801865, 36.145020, 30.974470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505637, -0.072025, -0.859735,
		-0.072025, 0.989507, -0.125257,
		0.859735, 0.125257, 0.495144,
		43.059784, 36.182598, 31.123013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911560, 36.405045, 30.407055>,  <42.457970, 36.094917, 30.776413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911560, 36.405045, 30.407055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.191513, 36.244141, 30.643139>,  <43.359486, 36.147598, 30.784790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.191513, 36.244141, 30.643139>,  <42.911560, 36.405045, 30.407055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191513, 36.244141, 30.643139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576369, -0.169971, -0.799317,
		0.421854, 0.899608, 0.112892,
		0.699884, -0.402263, 0.590210,
		43.401478, 36.123463, 30.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571259, 36.715691, 30.194292>,  <42.911560, 36.405045, 30.407055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571259, 36.715691, 30.194292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.684471, 36.378250, 30.376823>,  <43.752399, 36.175785, 30.486341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.684471, 36.378250, 30.376823>,  <43.571259, 36.715691, 30.194292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684471, 36.378250, 30.376823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641906, -0.186906, -0.743655,
		0.712637, 0.503396, 0.488612,
		0.283029, -0.843599, 0.456329,
		43.769379, 36.125172, 30.513721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.235901, 36.639889, 30.031229>,  <43.571259, 36.715691, 30.194292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.235901, 36.639889, 30.031229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.110535, 36.275597, 30.138811>,  <44.035316, 36.057022, 30.203360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.110535, 36.275597, 30.138811>,  <44.235901, 36.639889, 30.031229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110535, 36.275597, 30.138811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611754, -0.410262, -0.676345,
		0.726311, -0.047443, 0.685727,
		-0.313415, -0.910733, 0.268954,
		44.016510, 36.002377, 30.219498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823013, 36.314987, 30.103100>,  <44.235901, 36.639889, 30.031229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823013, 36.314987, 30.103100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.524998, 36.052750, 30.053913>,  <44.346188, 35.895409, 30.024401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.524998, 36.052750, 30.053913>,  <44.823013, 36.314987, 30.103100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524998, 36.052750, 30.053913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469091, -0.383913, -0.795339,
		0.474207, -0.650241, 0.593561,
		-0.745038, -0.655590, -0.122968,
		44.301487, 35.856071, 30.017023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203506, 35.751377, 29.882641>,  <44.823013, 36.314987, 30.103100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203506, 35.751377, 29.882641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.823582, 35.656139, 29.801481>,  <44.595627, 35.598995, 29.752787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.823582, 35.656139, 29.801481>,  <45.203506, 35.751377, 29.882641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823582, 35.656139, 29.801481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286099, -0.398872, -0.871234,
		0.126508, -0.885557, 0.446972,
		-0.949812, -0.238097, -0.202897,
		44.538639, 35.584709, 29.740612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195320, 35.022385, 29.731768>,  <45.203506, 35.751377, 29.882641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195320, 35.022385, 29.731768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.868301, 35.178394, 29.562296>,  <44.672092, 35.271999, 29.460613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.868301, 35.178394, 29.562296>,  <45.195320, 35.022385, 29.731768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868301, 35.178394, 29.562296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279923, -0.373804, -0.884259,
		-0.503255, -0.841518, 0.196424,
		-0.817544, 0.390024, -0.423679,
		44.623039, 35.295403, 29.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827808, 34.456959, 29.501448>,  <45.195320, 35.022385, 29.731768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827808, 34.456959, 29.501448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.711678, 34.759274, 29.266674>,  <44.641998, 34.940662, 29.125811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.711678, 34.759274, 29.266674>,  <44.827808, 34.456959, 29.501448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711678, 34.759274, 29.266674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252019, -0.531310, -0.808823,
		-0.923145, -0.382743, -0.036219,
		-0.290328, 0.755789, -0.586935,
		44.624580, 34.986012, 29.090593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<44.404999, 34.124870, 29.040377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.499104, 34.467937, 28.857487>,  <44.555569, 34.673779, 28.747753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.499104, 34.467937, 28.857487>,  <44.404999, 34.124870, 29.040377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499104, 34.467937, 28.857487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083159, -0.486465, -0.869733,
		-0.968367, 0.166595, -0.185771,
		0.235264, 0.857670, -0.457223,
		44.569683, 34.725239, 28.720320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111088, 34.018314, 28.423458>,  <44.404999, 34.124870, 29.040377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111088, 34.018314, 28.423458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375950, 34.312649, 28.366751>,  <44.534866, 34.489250, 28.332726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.375950, 34.312649, 28.366751>,  <44.111088, 34.018314, 28.423458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375950, 34.312649, 28.366751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089491, -0.265478, -0.959955,
		-0.744007, 0.622948, -0.241638,
		0.662152, 0.735837, -0.141769,
		44.574596, 34.533401, 28.324221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905727, 34.390419, 27.904285>,  <44.111088, 34.018314, 28.423458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905727, 34.390419, 27.904285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296749, 34.474663, 27.906635>,  <44.531361, 34.525208, 27.908045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296749, 34.474663, 27.906635>,  <43.905727, 34.390419, 27.904285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296749, 34.474663, 27.906635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004193, 0.008423, -0.999956,
		-0.210647, 0.977535, 0.007351,
		0.977553, 0.210607, 0.005873,
		44.590015, 34.537846, 27.908398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986641, 34.797714, 27.302006>,  <43.905727, 34.390419, 27.904285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986641, 34.797714, 27.302006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.361641, 34.675400, 27.368452>,  <44.586639, 34.602009, 27.408319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.361641, 34.675400, 27.368452>,  <43.986641, 34.797714, 27.302006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361641, 34.675400, 27.368452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134389, -0.122185, -0.983367,
		0.320998, 0.944227, -0.073454,
		0.937496, -0.305788, 0.166115,
		44.642891, 34.583664, 27.418287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364647, 35.165802, 26.822180>,  <43.986641, 34.797714, 27.302006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364647, 35.165802, 26.822180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.571999, 34.838852, 26.922724>,  <44.696411, 34.642681, 26.983049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.571999, 34.838852, 26.922724>,  <44.364647, 35.165802, 26.822180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571999, 34.838852, 26.922724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355046, -0.061685, -0.932812,
		0.777959, 0.572798, 0.258228,
		0.518384, -0.817372, 0.251358,
		44.727512, 34.593639, 26.998131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980629, 35.290379, 26.498304>,  <44.364647, 35.165802, 26.822180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980629, 35.290379, 26.498304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.993229, 34.899002, 26.579954>,  <45.000790, 34.664177, 26.628944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.993229, 34.899002, 26.579954>,  <44.980629, 35.290379, 26.498304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993229, 34.899002, 26.579954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167441, -0.196173, -0.966168,
		0.985379, 0.064608, 0.157652,
		0.031495, -0.978438, 0.204123,
		45.002678, 34.605469, 26.641191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541996, 35.073776, 26.173681>,  <44.980629, 35.290379, 26.498304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541996, 35.073776, 26.173681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.332268, 34.736000, 26.217533>,  <45.206432, 34.533337, 26.243845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.332268, 34.736000, 26.217533>,  <45.541996, 35.073776, 26.173681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332268, 34.736000, 26.217533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122026, -0.201927, -0.971769,
		0.842735, -0.496136, 0.208917,
		-0.524316, -0.844437, 0.109629,
		45.174973, 34.482670, 26.250422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.872181, 34.551258, 25.907526>,  <45.541996, 35.073776, 26.173681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.872181, 34.551258, 25.907526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.497505, 34.411938, 25.893127>,  <45.272701, 34.328346, 25.884489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.497505, 34.411938, 25.893127>,  <45.872181, 34.551258, 25.907526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497505, 34.411938, 25.893127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105037, -0.181430, -0.977778,
		0.334033, -0.919657, 0.206528,
		-0.936690, -0.348304, -0.035994,
		45.216499, 34.307446, 25.882330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912495, 33.860477, 25.698586>,  <45.872181, 34.551258, 25.907526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912495, 33.860477, 25.698586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.563259, 34.032547, 25.606783>,  <45.353718, 34.135788, 25.551701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.563259, 34.032547, 25.606783>,  <45.912495, 33.860477, 25.698586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563259, 34.032547, 25.606783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146289, -0.217909, -0.964943,
		-0.465105, -0.876052, 0.127323,
		-0.873085, 0.430173, -0.229507,
		45.301334, 34.161598, 25.537931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783279, 33.563606, 25.170219>,  <45.912495, 33.860477, 25.698586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783279, 33.563606, 25.170219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.523140, 33.861092, 25.108324>,  <45.367058, 34.039581, 25.071186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.523140, 33.861092, 25.108324>,  <45.783279, 33.563606, 25.170219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523140, 33.861092, 25.108324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152460, -0.071767, -0.985700,
		-0.744179, -0.664640, -0.066712,
		-0.650348, 0.743708, -0.154739,
		45.328037, 34.084206, 25.061903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357582, 33.299389, 24.623478>,  <45.783279, 33.563606, 25.170219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357582, 33.299389, 24.623478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314716, 33.697071, 24.626652>,  <45.288998, 33.935680, 24.628557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.314716, 33.697071, 24.626652>,  <45.357582, 33.299389, 24.623478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314716, 33.697071, 24.626652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083673, 0.016972, -0.996349,
		-0.990714, -0.106111, -0.085008,
		-0.107166, 0.994210, 0.007935,
		45.282566, 33.995335, 24.629032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862137, 33.495480, 24.089640>,  <45.357582, 33.299389, 24.623478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862137, 33.495480, 24.089640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.077328, 33.823624, 24.167192>,  <45.206444, 34.020512, 24.213724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.077328, 33.823624, 24.167192>,  <44.862137, 33.495480, 24.089640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077328, 33.823624, 24.167192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195304, 0.102439, -0.975378,
		-0.820022, 0.562598, -0.105109,
		0.537978, 0.820360, 0.193880,
		45.238720, 34.069733, 24.225357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783131, 33.944324, 23.599512>,  <44.862137, 33.495480, 24.089640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783131, 33.944324, 23.599512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130566, 34.092228, 23.731466>,  <45.339027, 34.180969, 23.810638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.130566, 34.092228, 23.731466>,  <44.783131, 33.944324, 23.599512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130566, 34.092228, 23.731466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227324, 0.294206, -0.928314,
		-0.440311, 0.881316, 0.171489,
		0.868591, 0.369763, 0.329886,
		45.391144, 34.203156, 23.830433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849461, 34.470592, 23.200903>,  <44.783131, 33.944324, 23.599512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849461, 34.470592, 23.200903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.221458, 34.436047, 23.343811>,  <45.444656, 34.415318, 23.429556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.221458, 34.436047, 23.343811>,  <44.849461, 34.470592, 23.200903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221458, 34.436047, 23.343811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367005, 0.271687, -0.889659,
		-0.020230, 0.958502, 0.284366,
		0.929999, -0.086366, 0.357271,
		45.500458, 34.410137, 23.450993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261444, 35.081554, 23.019983>,  <44.849461, 34.470592, 23.200903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261444, 35.081554, 23.019983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501453, 34.764729, 23.064907>,  <45.645458, 34.574635, 23.091862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.501453, 34.764729, 23.064907>,  <45.261444, 35.081554, 23.019983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501453, 34.764729, 23.064907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390011, 0.167054, -0.905529,
		0.698472, 0.587141, 0.409149,
		0.600023, -0.792060, 0.112309,
		45.681461, 34.527111, 23.098600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850895, 35.283878, 22.685902>,  <45.261444, 35.081554, 23.019983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850895, 35.283878, 22.685902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896343, 34.888371, 22.724751>,  <45.923611, 34.651066, 22.748060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.896343, 34.888371, 22.724751>,  <45.850895, 35.283878, 22.685902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896343, 34.888371, 22.724751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428651, -0.039402, -0.902610,
		0.896297, 0.144186, 0.419359,
		0.113620, -0.988766, 0.097121,
		45.930428, 34.591740, 22.753887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547211, 35.131325, 22.336374>,  <45.850895, 35.283878, 22.685902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547211, 35.131325, 22.336374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.377476, 34.770760, 22.370758>,  <46.275635, 34.554420, 22.391388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.377476, 34.770760, 22.370758>,  <46.547211, 35.131325, 22.336374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377476, 34.770760, 22.370758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337193, -0.245401, -0.908889,
		0.840382, -0.356687, 0.408083,
		-0.424333, -0.901417, 0.085959,
		46.250175, 34.500336, 22.396545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073006, 34.555103, 22.188354>,  <46.547211, 35.131325, 22.336374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073006, 34.555103, 22.188354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.700180, 34.426167, 22.122196>,  <46.476486, 34.348804, 22.082500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.700180, 34.426167, 22.122196>,  <47.073006, 34.555103, 22.188354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700180, 34.426167, 22.122196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211436, -0.113237, -0.970810,
		0.294205, -0.939825, 0.173699,
		-0.932061, -0.322344, -0.165398,
		46.420563, 34.329464, 22.072577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125954, 33.897781, 21.826363>,  <47.073006, 34.555103, 22.188354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125954, 33.897781, 21.826363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.742138, 33.996101, 21.771435>,  <46.511848, 34.055096, 21.738478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.742138, 33.996101, 21.771435>,  <47.125954, 33.897781, 21.826363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742138, 33.996101, 21.771435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031846, -0.389832, -0.920335,
		-0.279752, -0.887475, 0.366233,
		-0.959543, 0.245803, -0.137319,
		46.454273, 34.069843, 21.730240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.783920, 33.272648, 21.495344>,  <47.125954, 33.897781, 21.826363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.783920, 33.272648, 21.495344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.576702, 33.603874, 21.409615>,  <46.452370, 33.802608, 21.358177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.576702, 33.603874, 21.409615>,  <46.783920, 33.272648, 21.495344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576702, 33.603874, 21.409615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195209, -0.358413, -0.912926,
		-0.832778, -0.431102, 0.347321,
		-0.518048, 0.828065, -0.214323,
		46.421288, 33.852295, 21.345318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251450, 33.065784, 21.043690>,  <46.783920, 33.272648, 21.495344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251450, 33.065784, 21.043690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.269276, 33.458069, 20.967554>,  <46.279972, 33.693439, 20.921873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.269276, 33.458069, 20.967554>,  <46.251450, 33.065784, 21.043690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269276, 33.458069, 20.967554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139208, -0.182572, -0.973287,
		-0.989260, 0.069875, 0.128385,
		0.044569, 0.980707, -0.190338,
		46.282646, 33.752281, 20.910452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886032, 32.974499, 20.397301>,  <46.251450, 33.065784, 21.043690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886032, 32.974499, 20.397301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.058968, 33.335129, 20.391085>,  <46.162727, 33.551506, 20.387354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.058968, 33.335129, 20.391085>,  <45.886032, 32.974499, 20.397301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058968, 33.335129, 20.391085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205623, -0.115356, -0.971809,
		-0.877955, 0.416953, -0.235257,
		0.432337, 0.901578, -0.015542,
		46.188667, 33.605602, 20.386421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639790, 33.366695, 19.724178>,  <45.886032, 32.974499, 20.397301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639790, 33.366695, 19.724178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.990208, 33.502399, 19.861258>,  <46.200459, 33.583824, 19.943506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.990208, 33.502399, 19.861258>,  <45.639790, 33.366695, 19.724178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990208, 33.502399, 19.861258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397208, -0.104702, -0.911736,
		-0.273438, 0.934846, -0.226482,
		0.876047, 0.339263, 0.342699,
		46.253021, 33.604179, 19.964067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248749, 33.079529, 19.121351>,  <45.639790, 33.366695, 19.724178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248749, 33.079529, 19.121351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868340, 33.057037, 18.999762>,  <44.640095, 33.043545, 18.926807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868340, 33.057037, 18.999762>,  <45.248749, 33.079529, 19.121351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868340, 33.057037, 18.999762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304899, 0.332725, 0.892374,
		0.050964, 0.941346, -0.333571,
		-0.951020, -0.056226, -0.303973,
		44.583035, 33.040169, 18.908569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934410, 33.694458, 19.326498>,  <45.248749, 33.079529, 19.121351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934410, 33.694458, 19.326498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.638359, 33.425880, 19.311634>,  <44.460728, 33.264736, 19.302715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.638359, 33.425880, 19.311634>,  <44.934410, 33.694458, 19.326498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638359, 33.425880, 19.311634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373952, 0.365022, 0.852596,
		-0.558903, 0.644924, -0.521249,
		-0.740127, -0.671440, -0.037159,
		44.416321, 33.224449, 19.300486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365608, 34.100471, 19.513226>,  <44.934410, 33.694458, 19.326498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365608, 34.100471, 19.513226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.230152, 33.725082, 19.540342>,  <44.148880, 33.499847, 19.556612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.230152, 33.725082, 19.540342>,  <44.365608, 34.100471, 19.513226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230152, 33.725082, 19.540342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490646, 0.237604, 0.838338,
		-0.802864, 0.250630, -0.540919,
		-0.338638, -0.938471, 0.067793,
		44.128559, 33.443542, 19.560680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676872, 34.179268, 19.705973>,  <44.365608, 34.100471, 19.513226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676872, 34.179268, 19.705973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798553, 33.820618, 19.834667>,  <43.871563, 33.605427, 19.911884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.798553, 33.820618, 19.834667>,  <43.676872, 34.179268, 19.705973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798553, 33.820618, 19.834667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401144, 0.185766, 0.896980,
		-0.864028, -0.401926, -0.303168,
		0.304202, -0.896630, 0.321738,
		43.889812, 33.551628, 19.931189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062481, 33.828819, 20.057966>,  <43.676872, 34.179268, 19.705973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062481, 33.828819, 20.057966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.387772, 33.652832, 20.210329>,  <43.582947, 33.547241, 20.301746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.387772, 33.652832, 20.210329>,  <43.062481, 33.828819, 20.057966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387772, 33.652832, 20.210329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407034, 0.037765, 0.912632,
		-0.415911, -0.897221, -0.148369,
		0.813229, -0.439965, 0.380906,
		43.631741, 33.520844, 20.324600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826603, 33.513851, 20.561903>,  <43.062481, 33.828819, 20.057966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826603, 33.513851, 20.561903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.206089, 33.469845, 20.680452>,  <43.433781, 33.443439, 20.751581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.206089, 33.469845, 20.680452>,  <42.826603, 33.513851, 20.561903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206089, 33.469845, 20.680452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300714, -0.024820, 0.953391,
		-0.097540, -0.993619, -0.056633,
		0.948713, -0.110025, 0.296374,
		43.490704, 33.436840, 20.769365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926785, 32.874748, 21.081789>,  <42.826603, 33.513851, 20.561903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926785, 32.874748, 21.081789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.216801, 33.141842, 21.149258>,  <43.390808, 33.302097, 21.189739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.216801, 33.141842, 21.149258>,  <42.926785, 32.874748, 21.081789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216801, 33.141842, 21.149258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176160, -0.056960, 0.982712,
		0.665800, -0.742216, 0.076331,
		0.725037, 0.667737, 0.168673,
		43.434311, 33.342163, 21.199860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361210, 32.619411, 21.610344>,  <42.926785, 32.874748, 21.081789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361210, 32.619411, 21.610344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.417618, 33.015293, 21.600533>,  <43.451462, 33.252823, 21.594646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.417618, 33.015293, 21.600533>,  <43.361210, 32.619411, 21.610344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417618, 33.015293, 21.600533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226234, 0.056334, 0.972443,
		0.963811, -0.131584, 0.231848,
		0.141019, 0.989703, -0.024527,
		43.459923, 33.312202, 21.593174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608101, 32.730228, 22.343229>,  <43.361210, 32.619411, 21.610344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608101, 32.730228, 22.343229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542519, 33.102417, 22.212175>,  <43.503170, 33.325729, 22.133543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.542519, 33.102417, 22.212175>,  <43.608101, 32.730228, 22.343229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542519, 33.102417, 22.212175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101856, 0.314386, 0.943815,
		0.981195, 0.188114, 0.043229,
		-0.163955, 0.930470, -0.327634,
		43.493332, 33.381557, 22.113886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048218, 33.118496, 22.681566>,  <43.608101, 32.730228, 22.343229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048218, 33.118496, 22.681566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760647, 33.371719, 22.566761>,  <43.588104, 33.523655, 22.497877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.760647, 33.371719, 22.566761>,  <44.048218, 33.118496, 22.681566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760647, 33.371719, 22.566761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164823, 0.245877, 0.955185,
		0.675261, 0.734015, -0.072424,
		-0.718927, 0.633062, -0.287014,
		43.544968, 33.561638, 22.480658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152031, 33.744671, 23.032198>,  <44.048218, 33.118496, 22.681566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152031, 33.744671, 23.032198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.769230, 33.774300, 22.920015>,  <43.539547, 33.792076, 22.852705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.769230, 33.774300, 22.920015>,  <44.152031, 33.744671, 23.032198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769230, 33.774300, 22.920015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252844, 0.260857, 0.931678,
		0.142168, 0.962532, -0.230913,
		-0.957005, 0.074070, -0.280456,
		43.482128, 33.796520, 22.835878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925594, 34.418407, 23.246727>,  <44.152031, 33.744671, 23.032198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925594, 34.418407, 23.246727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596764, 34.195034, 23.202286>,  <43.399464, 34.061012, 23.175621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596764, 34.195034, 23.202286>,  <43.925594, 34.418407, 23.246727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596764, 34.195034, 23.202286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279012, 0.225004, 0.933555,
		-0.496328, 0.798454, -0.340780,
		-0.822077, -0.558431, -0.111102,
		43.350140, 34.027504, 23.168955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383102, 34.775635, 23.654961>,  <43.925594, 34.418407, 23.246727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383102, 34.775635, 23.654961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.224724, 34.417744, 23.572311>,  <43.129696, 34.203011, 23.522722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.224724, 34.417744, 23.572311>,  <43.383102, 34.775635, 23.654961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224724, 34.417744, 23.572311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418979, -0.024197, 0.907673,
		-0.817117, 0.445962, -0.365290,
		-0.395949, -0.894725, -0.206621,
		43.105938, 34.149326, 23.510324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749458, 34.757824, 23.925718>,  <43.383102, 34.775635, 23.654961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749458, 34.757824, 23.925718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.842159, 34.369305, 23.904295>,  <42.897781, 34.136192, 23.891441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.842159, 34.369305, 23.904295>,  <42.749458, 34.757824, 23.925718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842159, 34.369305, 23.904295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355688, -0.135855, 0.924678,
		-0.905415, -0.195249, -0.376965,
		0.231755, -0.971299, -0.053557,
		42.911686, 34.077915, 23.888227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106575, 34.321209, 24.280302>,  <42.749458, 34.757824, 23.925718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106575, 34.321209, 24.280302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426445, 34.081406, 24.293606>,  <42.618366, 33.937523, 24.301588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.426445, 34.081406, 24.293606>,  <42.106575, 34.321209, 24.280302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426445, 34.081406, 24.293606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322281, -0.381831, 0.866222,
		-0.506607, -0.703417, -0.498552,
		0.799678, -0.599508, 0.033260,
		42.666348, 33.901554, 24.303583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770821, 33.780621, 24.690411>,  <42.106575, 34.321209, 24.280302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770821, 33.780621, 24.690411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.165627, 33.717163, 24.700535>,  <42.402508, 33.679089, 24.706610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.165627, 33.717163, 24.700535>,  <41.770821, 33.780621, 24.690411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165627, 33.717163, 24.700535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057315, -0.200561, 0.978003,
		-0.150070, -0.966752, -0.207049,
		0.987013, -0.158636, 0.025311,
		42.461731, 33.669571, 24.708128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934910, 33.109726, 24.979107>,  <41.770821, 33.780621, 24.690411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934910, 33.109726, 24.979107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295219, 33.276501, 25.027716>,  <42.511406, 33.376564, 25.056881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.295219, 33.276501, 25.027716>,  <41.934910, 33.109726, 24.979107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295219, 33.276501, 25.027716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008614, -0.296920, 0.954863,
		0.434201, -0.859070, -0.271050,
		0.900775, 0.416937, 0.121523,
		42.565453, 33.401581, 25.064173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292252, 32.599781, 25.302443>,  <41.934910, 33.109726, 24.979107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292252, 32.599781, 25.302443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476830, 32.940826, 25.400524>,  <42.587578, 33.145454, 25.459373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.476830, 32.940826, 25.400524>,  <42.292252, 32.599781, 25.302443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476830, 32.940826, 25.400524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082805, -0.233790, 0.968755,
		0.883295, -0.467333, -0.037281,
		0.461447, 0.852609, 0.245203,
		42.615265, 33.196609, 25.474085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663540, 32.411041, 25.826254>,  <42.292252, 32.599781, 25.302443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663540, 32.411041, 25.826254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.658710, 32.805790, 25.890682>,  <42.655811, 33.042637, 25.929338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.658710, 32.805790, 25.890682>,  <42.663540, 32.411041, 25.826254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658710, 32.805790, 25.890682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037969, -0.161419, 0.986155,
		0.999206, 0.005795, 0.039420,
		-0.012078, 0.986869, 0.161071,
		42.655087, 33.101852, 25.939003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064556, 32.554623, 26.439108>,  <42.663540, 32.411041, 25.826254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064556, 32.554623, 26.439108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.815361, 32.863419, 26.388638>,  <42.665844, 33.048695, 26.358356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.815361, 32.863419, 26.388638>,  <43.064556, 32.554623, 26.439108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815361, 32.863419, 26.388638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215831, -0.014602, 0.976322,
		0.751868, 0.635467, 0.175716,
		-0.622986, 0.771990, -0.126174,
		42.628464, 33.095016, 26.350786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194817, 33.020851, 26.977888>,  <43.064556, 32.554623, 26.439108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194817, 33.020851, 26.977888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827747, 33.130558, 26.862892>,  <42.607506, 33.196384, 26.793894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827747, 33.130558, 26.862892>,  <43.194817, 33.020851, 26.977888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827747, 33.130558, 26.862892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319934, -0.080984, 0.943972,
		0.235621, 0.958237, 0.162065,
		-0.917674, 0.274269, -0.287491,
		42.552444, 33.212837, 26.776646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.211422, 35.604996, 31.645811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963192, 35.775127, 31.382301>,  <43.814255, 35.877205, 31.224195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963192, 35.775127, 31.382301>,  <44.211422, 35.604996, 31.645811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963192, 35.775127, 31.382301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438220, 0.508570, 0.741161,
		0.650268, 0.748635, -0.129220,
		-0.620576, 0.425326, -0.658774,
		43.777020, 35.902725, 31.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090836, 36.337208, 31.886593>,  <44.211422, 35.604996, 31.645811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090836, 36.337208, 31.886593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784168, 36.304398, 31.631880>,  <43.600166, 36.284714, 31.479052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.784168, 36.304398, 31.631880>,  <44.090836, 36.337208, 31.886593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.784168, 36.304398, 31.631880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557874, 0.576028, 0.597468,
		0.317798, 0.813304, -0.487382,
		-0.766669, -0.082024, -0.636782,
		43.554169, 36.279789, 31.440845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737663, 37.062992, 31.758574>,  <44.090836, 36.337208, 31.886593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737663, 37.062992, 31.758574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485737, 36.757607, 31.701361>,  <43.334583, 36.574375, 31.667032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.485737, 36.757607, 31.701361>,  <43.737663, 37.062992, 31.758574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485737, 36.757607, 31.701361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663539, 0.433091, 0.610039,
		-0.403796, 0.479118, -0.779355,
		-0.629813, -0.763464, -0.143033,
		43.296795, 36.528568, 31.658451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144310, 37.346657, 31.877810>,  <43.737663, 37.062992, 31.758574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144310, 37.346657, 31.877810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038235, 36.961010, 31.882595>,  <42.974590, 36.729622, 31.885466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.038235, 36.961010, 31.882595>,  <43.144310, 37.346657, 31.877810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038235, 36.961010, 31.882595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738211, 0.211003, 0.640721,
		-0.620257, 0.161082, -0.767681,
		-0.265192, -0.964122, 0.011964,
		42.958675, 36.671772, 31.886185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481022, 37.385159, 31.798376>,  <43.144310, 37.346657, 31.877810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481022, 37.385159, 31.798376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582932, 37.044319, 31.981247>,  <42.644077, 36.839813, 32.090969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582932, 37.044319, 31.981247>,  <42.481022, 37.385159, 31.798376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582932, 37.044319, 31.981247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576698, 0.245613, 0.779162,
		-0.776215, -0.462163, -0.428830,
		0.254774, -0.852102, 0.457177,
		42.659363, 36.788689, 32.118401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872215, 36.993069, 31.930103>,  <42.481022, 37.385159, 31.798376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872215, 36.993069, 31.930103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145962, 36.841461, 32.179256>,  <42.310211, 36.750496, 32.328747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.145962, 36.841461, 32.179256>,  <41.872215, 36.993069, 31.930103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145962, 36.841461, 32.179256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653991, 0.058634, 0.754226,
		-0.322388, -0.923530, -0.207747,
		0.684370, -0.379018, 0.622884,
		42.351273, 36.727757, 32.366123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524250, 36.498390, 32.423161>,  <41.872215, 36.993069, 31.930103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524250, 36.498390, 32.423161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865471, 36.612068, 32.598217>,  <42.070206, 36.680275, 32.703251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865471, 36.612068, 32.598217>,  <41.524250, 36.498390, 32.423161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865471, 36.612068, 32.598217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458992, 0.009682, 0.888387,
		0.248236, -0.958718, 0.138701,
		0.853056, 0.284192, 0.437641,
		42.121387, 36.697327, 32.729507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573536, 35.974236, 32.889942>,  <41.524250, 36.498390, 32.423161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573536, 35.974236, 32.889942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806248, 36.286858, 32.980007>,  <41.945877, 36.474430, 33.034046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.806248, 36.286858, 32.980007>,  <41.573536, 35.974236, 32.889942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806248, 36.286858, 32.980007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427217, 0.058077, 0.902282,
		0.692109, -0.621124, 0.367682,
		0.581783, 0.781557, 0.225159,
		41.980782, 36.521324, 33.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787933, 35.836407, 33.528728>,  <41.573536, 35.974236, 32.889942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787933, 35.836407, 33.528728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.815529, 36.233814, 33.492577>,  <41.832085, 36.472260, 33.470886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.815529, 36.233814, 33.492577>,  <41.787933, 35.836407, 33.528728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815529, 36.233814, 33.492577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291971, 0.106735, 0.950453,
		0.953936, -0.039184, 0.297442,
		0.068990, 0.993515, -0.090378,
		41.836227, 36.531868, 33.465462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116615, 35.980595, 34.052120>,  <41.787933, 35.836407, 33.528728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116615, 35.980595, 34.052120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968040, 36.341000, 33.962486>,  <41.878895, 36.557243, 33.908707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.968040, 36.341000, 33.962486>,  <42.116615, 35.980595, 34.052120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968040, 36.341000, 33.962486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241135, 0.139450, 0.960421,
		0.896600, 0.410766, 0.165469,
		-0.371434, 0.901013, -0.224081,
		41.856609, 36.611305, 33.895264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456711, 36.477722, 34.522972>,  <42.116615, 35.980595, 34.052120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456711, 36.477722, 34.522972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.136734, 36.676411, 34.388298>,  <41.944748, 36.795624, 34.307495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.136734, 36.676411, 34.388298>,  <42.456711, 36.477722, 34.522972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136734, 36.676411, 34.388298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268691, 0.205186, 0.941118,
		0.536555, 0.843308, -0.030674,
		-0.799946, 0.496720, -0.336683,
		41.896751, 36.825428, 34.287292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294533, 37.086777, 35.017693>,  <42.456711, 36.477722, 34.522972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294533, 37.086777, 35.017693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961842, 37.000465, 34.813080>,  <41.762226, 36.948677, 34.690311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.961842, 37.000465, 34.813080>,  <42.294533, 37.086777, 35.017693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961842, 37.000465, 34.813080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531520, 0.043396, 0.845933,
		-0.160335, 0.975478, -0.150784,
		-0.831732, -0.215777, -0.511528,
		41.712322, 36.935734, 34.659622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857925, 37.610802, 35.280548>,  <42.294533, 37.086777, 35.017693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857925, 37.610802, 35.280548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658657, 37.298260, 35.130180>,  <41.539097, 37.110733, 35.039959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658657, 37.298260, 35.130180>,  <41.857925, 37.610802, 35.280548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658657, 37.298260, 35.130180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617323, 0.015165, 0.786564,
		-0.608884, 0.623903, -0.489903,
		-0.498169, -0.781354, -0.375916,
		41.509205, 37.063854, 35.017406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107349, 37.800495, 35.216557>,  <41.857925, 37.610802, 35.280548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107349, 37.800495, 35.216557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.128162, 37.401310, 35.231354>,  <41.140648, 37.161800, 35.240231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.128162, 37.401310, 35.231354>,  <41.107349, 37.800495, 35.216557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128162, 37.401310, 35.231354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607859, -0.002260, 0.794042,
		-0.792339, -0.063797, -0.606737,
		0.052029, -0.997960, 0.036989,
		41.143772, 37.101921, 35.242451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892345, 38.530540, 35.198238>,  <41.107349, 37.800495, 35.216557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892345, 38.530540, 35.198238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.888092, 38.929699, 35.223839>,  <40.885540, 39.169193, 35.239201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.888092, 38.929699, 35.223839>,  <40.892345, 38.530540, 35.198238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888092, 38.929699, 35.223839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105554, 0.064769, -0.992302,
		-0.994357, -0.003794, -0.106020,
		-0.010632, 0.997893, 0.064003,
		40.884903, 39.229069, 35.243038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525986, 38.787220, 34.617268>,  <40.892345, 38.530540, 35.198238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525986, 38.787220, 34.617268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759525, 39.088791, 34.737740>,  <40.899651, 39.269733, 34.810024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759525, 39.088791, 34.737740>,  <40.525986, 38.787220, 34.617268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759525, 39.088791, 34.737740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260230, 0.177616, -0.949069,
		-0.769026, 0.632490, -0.092494,
		0.583849, 0.753929, 0.301184,
		40.934681, 39.314968, 34.828094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198776, 39.437443, 34.415791>,  <40.525986, 38.787220, 34.617268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198776, 39.437443, 34.415791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597778, 39.465645, 34.416664>,  <40.837181, 39.482567, 34.417187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.597778, 39.465645, 34.416664>,  <40.198776, 39.437443, 34.415791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597778, 39.465645, 34.416664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022373, 0.345607, -0.938113,
		-0.066895, 0.935727, 0.346323,
		0.997509, 0.070503, 0.002184,
		40.897030, 39.486797, 34.417320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192703, 39.657684, 33.851364>,  <40.198776, 39.437443, 34.415791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192703, 39.657684, 33.851364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.580105, 39.642864, 33.949860>,  <40.812546, 39.633972, 34.008957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.580105, 39.642864, 33.949860>,  <40.192703, 39.657684, 33.851364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580105, 39.642864, 33.949860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248968, 0.126618, -0.960199,
		0.004393, 0.991260, 0.131853,
		0.968502, -0.037046, 0.246236,
		40.870655, 39.631752, 34.023731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429745, 40.062366, 33.444847>,  <40.192703, 39.657684, 33.851364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429745, 40.062366, 33.444847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769970, 39.871063, 33.532303>,  <40.974106, 39.756279, 33.584778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.769970, 39.871063, 33.532303>,  <40.429745, 40.062366, 33.444847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769970, 39.871063, 33.532303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254906, 0.011308, -0.966900,
		0.459958, 0.878145, 0.131530,
		0.850565, -0.478261, 0.218643,
		41.025139, 39.727585, 33.597897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875713, 40.337765, 33.037743>,  <40.429745, 40.062366, 33.444847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875713, 40.337765, 33.037743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040371, 39.979286, 33.103943>,  <41.139164, 39.764198, 33.143661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040371, 39.979286, 33.103943>,  <40.875713, 40.337765, 33.037743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040371, 39.979286, 33.103943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352937, -0.010660, -0.935586,
		0.840230, 0.443536, 0.311911,
		0.411641, -0.896193, 0.165498,
		41.163864, 39.710430, 33.153591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550156, 40.421158, 32.803440>,  <40.875713, 40.337765, 33.037743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550156, 40.421158, 32.803440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516426, 40.024509, 32.842583>,  <41.496189, 39.786522, 32.866070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516426, 40.024509, 32.842583>,  <41.550156, 40.421158, 32.803440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516426, 40.024509, 32.842583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357586, -0.121782, -0.925906,
		0.930065, -0.043086, 0.364859,
		-0.084327, -0.991621, 0.097859,
		41.491127, 39.727024, 32.871941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227512, 40.165222, 32.654427>,  <41.550156, 40.421158, 32.803440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227512, 40.165222, 32.654427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974232, 39.864616, 32.580357>,  <41.822266, 39.684254, 32.535915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974232, 39.864616, 32.580357>,  <42.227512, 40.165222, 32.654427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974232, 39.864616, 32.580357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461294, -0.174314, -0.869955,
		0.621504, -0.636274, 0.457044,
		-0.633199, -0.751512, -0.185173,
		41.784271, 39.639164, 32.524803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613495, 39.772099, 32.331921>,  <42.227512, 40.165222, 32.654427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613495, 39.772099, 32.331921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262859, 39.603649, 32.238750>,  <42.052479, 39.502579, 32.182846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262859, 39.603649, 32.238750>,  <42.613495, 39.772099, 32.331921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262859, 39.603649, 32.238750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402879, -0.377425, -0.833810,
		0.263222, -0.824747, 0.500506,
		-0.876586, -0.421120, -0.232927,
		41.999882, 39.477314, 32.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721157, 39.042786, 31.987513>,  <42.613495, 39.772099, 32.331921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721157, 39.042786, 31.987513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344879, 39.113586, 31.871744>,  <42.119114, 39.156067, 31.802282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344879, 39.113586, 31.871744>,  <42.721157, 39.042786, 31.987513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344879, 39.113586, 31.871744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212475, -0.357684, -0.909349,
		-0.264476, -0.916915, 0.298864,
		-0.940694, 0.177000, -0.289421,
		42.062672, 39.166687, 31.784918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499149, 38.422146, 31.594793>,  <42.721157, 39.042786, 31.987513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499149, 38.422146, 31.594793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244003, 38.715717, 31.501440>,  <42.090916, 38.891861, 31.445429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244003, 38.715717, 31.501440>,  <42.499149, 38.422146, 31.594793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244003, 38.715717, 31.501440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066002, -0.249826, -0.966039,
		-0.767312, -0.631610, 0.110915,
		-0.637869, 0.733932, -0.233382,
		42.052643, 38.935898, 31.431425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947948, 38.204178, 31.181568>,  <42.499149, 38.422146, 31.594793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947948, 38.204178, 31.181568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977066, 38.590534, 31.082159>,  <41.994537, 38.822346, 31.022512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977066, 38.590534, 31.082159>,  <41.947948, 38.204178, 31.181568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977066, 38.590534, 31.082159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269463, -0.258965, -0.927538,
		-0.960256, 0.000553, -0.279122,
		0.072795, 0.965886, -0.248524,
		41.998905, 38.880299, 31.007603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613163, 38.326744, 30.518375>,  <41.947948, 38.204178, 31.181568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613163, 38.326744, 30.518375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883442, 38.618874, 30.558485>,  <42.045609, 38.794151, 30.582550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883442, 38.618874, 30.558485>,  <41.613163, 38.326744, 30.518375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883442, 38.618874, 30.558485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276125, -0.124624, -0.953008,
		-0.683511, 0.671633, -0.285870,
		0.675698, 0.730327, 0.100273,
		42.086151, 38.837971, 30.588568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514061, 38.621521, 29.834421>,  <41.613163, 38.326744, 30.518375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514061, 38.621521, 29.834421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858242, 38.760895, 29.983133>,  <42.064751, 38.844517, 30.072361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.858242, 38.760895, 29.983133>,  <41.514061, 38.621521, 29.834421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858242, 38.760895, 29.983133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367740, 0.080403, -0.926446,
		-0.352695, 0.933879, -0.058949,
		0.860449, 0.348431, 0.371783,
		42.116379, 38.865425, 30.094667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975231, 39.178337, 29.695803>,  <41.514061, 38.621521, 29.834421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975231, 39.178337, 29.695803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607681, 39.200294, 29.539522>,  <40.387150, 39.213470, 29.445753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.607681, 39.200294, 29.539522>,  <40.975231, 39.178337, 29.695803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607681, 39.200294, 29.539522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374867, 0.187337, 0.907954,
		0.123035, 0.980760, -0.151562,
		-0.918878, 0.054894, -0.390703,
		40.332016, 39.216763, 29.422312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570877, 39.796516, 30.022383>,  <40.975231, 39.178337, 29.695803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570877, 39.796516, 30.022383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253433, 39.597424, 29.882418>,  <40.062965, 39.477966, 29.798439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.253433, 39.597424, 29.882418>,  <40.570877, 39.796516, 30.022383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253433, 39.597424, 29.882418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446056, 0.084850, 0.890974,
		-0.413779, 0.863168, -0.289356,
		-0.793612, -0.497736, -0.349912,
		40.015350, 39.448101, 29.777445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049019, 40.128593, 30.173235>,  <40.570877, 39.796516, 30.022383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049019, 40.128593, 30.173235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896023, 39.762203, 30.124765>,  <39.804226, 39.542370, 30.095684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896023, 39.762203, 30.124765>,  <40.049019, 40.128593, 30.173235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896023, 39.762203, 30.124765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521172, 0.105593, 0.846894,
		-0.762941, 0.387084, -0.517771,
		-0.382492, -0.915978, -0.121176,
		39.781277, 39.487411, 30.088413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299686, 40.156620, 30.320574>,  <40.049019, 40.128593, 30.173235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299686, 40.156620, 30.320574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367085, 39.763962, 30.356329>,  <39.407524, 39.528366, 30.377783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367085, 39.763962, 30.356329>,  <39.299686, 40.156620, 30.320574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367085, 39.763962, 30.356329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701284, -0.055657, 0.710706,
		-0.692683, -0.182437, -0.697787,
		0.168495, -0.981641, 0.089387,
		39.417633, 39.469471, 30.383144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706711, 39.825939, 30.406166>,  <39.299686, 40.156620, 30.320574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706711, 39.825939, 30.406166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.955250, 39.544960, 30.545012>,  <39.104374, 39.376373, 30.628319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.955250, 39.544960, 30.545012>,  <38.706711, 39.825939, 30.406166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955250, 39.544960, 30.545012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560401, -0.088799, 0.823447,
		-0.547608, -0.706171, -0.448830,
		0.621350, -0.702451, 0.347112,
		39.141655, 39.334225, 30.649145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260544, 39.291794, 30.601282>,  <38.706711, 39.825939, 30.406166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260544, 39.291794, 30.601282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594105, 39.230137, 30.813263>,  <38.794239, 39.193142, 30.940451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.594105, 39.230137, 30.813263>,  <38.260544, 39.291794, 30.601282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594105, 39.230137, 30.813263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543988, -0.067403, 0.836382,
		-0.093218, -0.985744, -0.140070,
		0.833899, -0.154162, 0.529950,
		38.844276, 39.183891, 30.972248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121033, 38.691620, 31.022064>,  <38.260544, 39.291794, 30.601282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121033, 38.691620, 31.022064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444199, 38.844578, 31.201416>,  <38.638100, 38.936352, 31.309027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444199, 38.844578, 31.201416>,  <38.121033, 38.691620, 31.022064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444199, 38.844578, 31.201416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393275, -0.216777, 0.893500,
		0.438872, -0.898209, -0.024749,
		0.807915, 0.382399, 0.448380,
		38.686573, 38.959297, 31.335930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300011, 38.200214, 31.575281>,  <38.121033, 38.691620, 31.022064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300011, 38.200214, 31.575281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468189, 38.550797, 31.669127>,  <38.569096, 38.761147, 31.725433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468189, 38.550797, 31.669127>,  <38.300011, 38.200214, 31.575281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468189, 38.550797, 31.669127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382062, -0.063512, 0.921952,
		0.822954, -0.477268, 0.308158,
		0.420446, 0.876460, 0.234613,
		38.594322, 38.813736, 31.739510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406658, 38.164318, 32.199047>,  <38.300011, 38.200214, 31.575281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406658, 38.164318, 32.199047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474613, 38.558502, 32.197521>,  <38.515385, 38.795013, 32.196606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.474613, 38.558502, 32.197521>,  <38.406658, 38.164318, 32.199047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474613, 38.558502, 32.197521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144900, 0.028811, 0.989027,
		0.974753, -0.167468, 0.147687,
		0.169886, 0.985457, -0.003818,
		38.525578, 38.854137, 32.196377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895256, 38.385357, 32.859871>,  <38.406658, 38.164318, 32.199047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895256, 38.385357, 32.859871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764671, 38.737961, 32.723427>,  <38.686321, 38.949524, 32.641560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764671, 38.737961, 32.723427>,  <38.895256, 38.385357, 32.859871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764671, 38.737961, 32.723427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210443, 0.284036, 0.935434,
		0.921485, 0.377168, 0.092781,
		-0.326463, 0.881514, -0.341107,
		38.666733, 39.002415, 32.621094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236423, 38.861183, 33.265339>,  <38.895256, 38.385357, 32.859871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236423, 38.861183, 33.265339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905663, 39.017654, 33.103741>,  <38.707207, 39.111538, 33.006783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905663, 39.017654, 33.103741>,  <39.236423, 38.861183, 33.265339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905663, 39.017654, 33.103741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283909, 0.329738, 0.900372,
		0.485418, 0.859217, -0.161602,
		-0.826901, 0.391177, -0.404000,
		38.657593, 39.135006, 32.982540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138344, 39.465034, 33.673607>,  <39.236423, 38.861183, 33.265339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138344, 39.465034, 33.673607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790821, 39.390862, 33.489960>,  <38.582306, 39.346359, 33.379772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790821, 39.390862, 33.489960>,  <39.138344, 39.465034, 33.673607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790821, 39.390862, 33.489960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495095, 0.311185, 0.811199,
		-0.007551, 0.932083, -0.362165,
		-0.868806, -0.185432, -0.459120,
		38.530178, 39.335232, 33.352222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.994778, 39.597206, 26.045551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672325, 39.365307, 25.998135>,  <41.478855, 39.226170, 25.969685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672325, 39.365307, 25.998135>,  <41.994778, 39.597206, 26.045551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672325, 39.365307, 25.998135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294836, 0.219826, 0.929919,
		-0.513059, 0.784583, -0.348138,
		-0.806128, -0.579746, -0.118539,
		41.430485, 39.191383, 25.962572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526752, 40.045387, 26.343466>,  <41.994778, 39.597206, 26.045551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526752, 40.045387, 26.343466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336525, 39.693546, 26.347939>,  <41.222389, 39.482441, 26.350622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336525, 39.693546, 26.347939>,  <41.526752, 40.045387, 26.343466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336525, 39.693546, 26.347939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371825, 0.212518, 0.903650,
		-0.797232, 0.425593, -0.428126,
		-0.475571, -0.879606, 0.011180,
		41.193855, 39.429665, 26.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746517, 40.165161, 26.462906>,  <41.526752, 40.045387, 26.343466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746517, 40.165161, 26.462906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824051, 39.796295, 26.596796>,  <40.870571, 39.574974, 26.677130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824051, 39.796295, 26.596796>,  <40.746517, 40.165161, 26.462906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824051, 39.796295, 26.596796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437350, 0.224189, 0.870899,
		-0.878154, -0.315201, -0.359853,
		0.193833, -0.922165, 0.334725,
		40.882202, 39.519646, 26.697214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043766, 40.005161, 26.877047>,  <40.746517, 40.165161, 26.462906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043766, 40.005161, 26.877047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310642, 39.729641, 26.990473>,  <40.470768, 39.564327, 27.058529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310642, 39.729641, 26.990473>,  <40.043766, 40.005161, 26.877047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310642, 39.729641, 26.990473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398590, -0.008539, 0.917089,
		-0.629274, -0.724896, -0.280248,
		0.667188, -0.688805, 0.283563,
		40.510799, 39.522999, 27.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753010, 39.566673, 27.418804>,  <40.043766, 40.005161, 26.877047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753010, 39.566673, 27.418804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137047, 39.468548, 27.472536>,  <40.367470, 39.409672, 27.504776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137047, 39.468548, 27.472536>,  <39.753010, 39.566673, 27.418804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137047, 39.468548, 27.472536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204155, -0.286401, 0.936106,
		-0.191168, -0.926172, -0.325054,
		0.960091, -0.245315, 0.134332,
		40.425076, 39.394955, 27.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747196, 38.819675, 27.722530>,  <39.753010, 39.566673, 27.418804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747196, 38.819675, 27.722530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086815, 39.006523, 27.821262>,  <40.290585, 39.118633, 27.880501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086815, 39.006523, 27.821262>,  <39.747196, 38.819675, 27.722530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086815, 39.006523, 27.821262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180341, -0.182887, 0.966452,
		0.496591, -0.865073, -0.071038,
		0.849043, 0.467120, 0.246828,
		40.341530, 39.146660, 27.895311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183323, 38.408577, 28.140589>,  <39.747196, 38.819675, 27.722530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183323, 38.408577, 28.140589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306198, 38.782330, 28.212782>,  <40.379925, 39.006580, 28.256098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306198, 38.782330, 28.212782>,  <40.183323, 38.408577, 28.140589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306198, 38.782330, 28.212782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047612, -0.174324, 0.983537,
		0.950456, -0.310727, -0.009063,
		0.307191, 0.934377, 0.180482,
		40.398354, 39.062641, 28.266926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686306, 38.351147, 28.554510>,  <40.183323, 38.408577, 28.140589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686306, 38.351147, 28.554510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544907, 38.722439, 28.600868>,  <40.460068, 38.945213, 28.628683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544907, 38.722439, 28.600868>,  <40.686306, 38.351147, 28.554510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544907, 38.722439, 28.600868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116998, -0.166792, 0.979026,
		0.928091, 0.332521, 0.167561,
		-0.353494, 0.928230, 0.115894,
		40.438858, 39.000908, 28.635637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052975, 38.567467, 29.165859>,  <40.686306, 38.351147, 28.554510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052975, 38.567467, 29.165859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731461, 38.794483, 29.094500>,  <40.538551, 38.930691, 29.051683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731461, 38.794483, 29.094500>,  <41.052975, 38.567467, 29.165859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731461, 38.794483, 29.094500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205045, 0.017213, 0.978601,
		0.558463, 0.823168, 0.102535,
		-0.803789, 0.567536, -0.178399,
		40.490322, 38.964745, 29.040979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702244, 39.061687, 29.296570>,  <41.052975, 38.567467, 29.165859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702244, 39.061687, 29.296570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038261, 38.997059, 29.503727>,  <42.239872, 38.958282, 29.628021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038261, 38.997059, 29.503727>,  <41.702244, 39.061687, 29.296570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038261, 38.997059, 29.503727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529654, 0.037639, -0.847378,
		0.117422, 0.986142, 0.117197,
		0.840047, -0.161574, 0.517895,
		42.290276, 38.948586, 29.659096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088184, 39.652191, 29.185728>,  <41.702244, 39.061687, 29.296570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088184, 39.652191, 29.185728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335300, 39.355499, 29.290167>,  <42.483570, 39.177483, 29.352831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335300, 39.355499, 29.290167>,  <42.088184, 39.652191, 29.185728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335300, 39.355499, 29.290167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597667, 0.227138, -0.768897,
		0.511009, 0.631066, 0.583631,
		0.617790, -0.741730, 0.261097,
		42.520638, 39.132980, 29.368496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786503, 39.864754, 29.171944>,  <42.088184, 39.652191, 29.185728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786503, 39.864754, 29.171944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784397, 39.467171, 29.128092>,  <42.783134, 39.228622, 29.101780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784397, 39.467171, 29.128092>,  <42.786503, 39.864754, 29.171944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784397, 39.467171, 29.128092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600478, 0.084525, -0.795161,
		0.799624, -0.070015, 0.596406,
		-0.005262, -0.993959, -0.109631,
		42.782818, 39.168983, 29.095203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449158, 39.849369, 29.008440>,  <42.786503, 39.864754, 29.171944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449158, 39.849369, 29.008440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287235, 39.499317, 28.902395>,  <43.190083, 39.289288, 28.838768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287235, 39.499317, 28.902395>,  <43.449158, 39.849369, 29.008440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287235, 39.499317, 28.902395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536330, 0.007585, -0.843975,
		0.740594, -0.483837, 0.466285,
		-0.404809, -0.875125, -0.265114,
		43.165791, 39.236778, 28.822861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074036, 39.449173, 28.706783>,  <43.449158, 39.849369, 29.008440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074036, 39.449173, 28.706783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759869, 39.236061, 28.580755>,  <43.571369, 39.108192, 28.505138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759869, 39.236061, 28.580755>,  <44.074036, 39.449173, 28.706783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759869, 39.236061, 28.580755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484728, -0.212883, -0.848363,
		0.384918, -0.819039, 0.425455,
		-0.785415, -0.532781, -0.315069,
		43.524242, 39.076225, 28.486235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343460, 38.836086, 28.387825>,  <44.074036, 39.449173, 28.706783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343460, 38.836086, 28.387825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983898, 38.923840, 28.236118>,  <43.768162, 38.976494, 28.145094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983898, 38.923840, 28.236118>,  <44.343460, 38.836086, 28.387825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983898, 38.923840, 28.236118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341574, -0.191240, -0.920192,
		-0.274411, -0.956711, 0.096968,
		-0.898902, 0.219389, -0.379266,
		43.714226, 38.989655, 28.122339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232708, 38.363022, 27.851088>,  <44.343460, 38.836086, 28.387825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232708, 38.363022, 27.851088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954800, 38.637566, 27.765108>,  <43.788055, 38.802292, 27.713520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954800, 38.637566, 27.765108>,  <44.232708, 38.363022, 27.851088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954800, 38.637566, 27.765108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214247, -0.087787, -0.972826,
		-0.686582, -0.721941, -0.086060,
		-0.694768, 0.686364, -0.214947,
		43.746368, 38.843475, 27.700624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782211, 38.137321, 27.274694>,  <44.232708, 38.363022, 27.851088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782211, 38.137321, 27.274694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778858, 38.537308, 27.275114>,  <43.776848, 38.777298, 27.275366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778858, 38.537308, 27.275114>,  <43.782211, 38.137321, 27.274694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778858, 38.537308, 27.275114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291390, 0.003446, -0.956598,
		-0.956568, -0.007709, -0.291408,
		-0.008379, 0.999964, 0.001050,
		43.776344, 38.837296, 27.275429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437084, 38.316441, 26.562363>,  <43.782211, 38.137321, 27.274694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437084, 38.316441, 26.562363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666870, 38.611561, 26.704142>,  <43.804741, 38.788635, 26.789209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666870, 38.611561, 26.704142>,  <43.437084, 38.316441, 26.562363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666870, 38.611561, 26.704142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250216, 0.254011, -0.934275,
		-0.779346, 0.625398, -0.038690,
		0.574466, 0.737805, 0.354448,
		43.839211, 38.832901, 26.810476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323330, 38.786621, 26.050905>,  <43.437084, 38.316441, 26.562363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323330, 38.786621, 26.050905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648136, 38.911827, 26.247946>,  <43.843018, 38.986954, 26.366171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648136, 38.911827, 26.247946>,  <43.323330, 38.786621, 26.050905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648136, 38.911827, 26.247946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395154, 0.326288, -0.858714,
		-0.429525, 0.891939, 0.141259,
		0.812011, 0.313020, 0.492602,
		43.891739, 39.005733, 26.395727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388409, 39.428268, 25.814892>,  <43.323330, 38.786621, 26.050905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388409, 39.428268, 25.814892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753059, 39.345722, 25.957073>,  <43.971851, 39.296196, 26.042381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753059, 39.345722, 25.957073>,  <43.388409, 39.428268, 25.814892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753059, 39.345722, 25.957073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361218, -0.010348, -0.932424,
		0.196095, 0.978421, 0.065108,
		0.911630, -0.206362, 0.355453,
		44.026546, 39.283813, 26.063709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897480, 39.831413, 25.402430>,  <43.388409, 39.428268, 25.814892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897480, 39.831413, 25.402430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142200, 39.574097, 25.586550>,  <44.289032, 39.419708, 25.697021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142200, 39.574097, 25.586550>,  <43.897480, 39.831413, 25.402430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142200, 39.574097, 25.586550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613387, 0.018399, -0.789568,
		0.499451, 0.765402, 0.405842,
		0.611804, -0.643289, 0.460299,
		44.325741, 39.381111, 25.724640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525963, 40.048351, 25.278006>,  <43.897480, 39.831413, 25.402430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525963, 40.048351, 25.278006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563950, 39.657204, 25.352581>,  <44.586742, 39.422516, 25.397327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563950, 39.657204, 25.352581>,  <44.525963, 40.048351, 25.278006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563950, 39.657204, 25.352581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450261, -0.124838, -0.884127,
		0.887832, 0.167912, 0.428439,
		0.094970, -0.977866, 0.186439,
		44.592442, 39.363846, 25.408512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285164, 39.812756, 25.123632>,  <44.525963, 40.048351, 25.278006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285164, 39.812756, 25.123632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047733, 39.491116, 25.110468>,  <44.905273, 39.298130, 25.102570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047733, 39.491116, 25.110468>,  <45.285164, 39.812756, 25.123632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047733, 39.491116, 25.110468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419894, -0.274555, -0.865048,
		0.686551, -0.527294, 0.500608,
		-0.593579, -0.804102, -0.032912,
		44.869659, 39.249886, 25.100594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.457939, 34.048260, 24.097042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739822, 34.318039, 24.185143>,  <39.908951, 34.479908, 24.238003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.739822, 34.318039, 24.185143>,  <39.457939, 34.048260, 24.097042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739822, 34.318039, 24.185143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115930, -0.196803, 0.973565,
		0.699967, -0.711609, -0.060499,
		0.704704, 0.674450, 0.220252,
		39.951233, 34.520374, 24.251219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077991, 33.755554, 24.544043>,  <39.457939, 34.048260, 24.097042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077991, 33.755554, 24.544043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070766, 34.149696, 24.611858>,  <40.066433, 34.386181, 24.652548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070766, 34.149696, 24.611858>,  <40.077991, 33.755554, 24.544043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070766, 34.149696, 24.611858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043921, -0.168624, 0.984702,
		0.998872, 0.025233, -0.040232,
		-0.018063, 0.985358, 0.169542,
		40.065346, 34.445305, 24.662722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472130, 33.800503, 25.127695>,  <40.077991, 33.755554, 24.544043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472130, 33.800503, 25.127695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268776, 34.144955, 25.126795>,  <40.146763, 34.351624, 25.126255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.268776, 34.144955, 25.126795>,  <40.472130, 33.800503, 25.127695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268776, 34.144955, 25.126795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051091, -0.027555, 0.998314,
		0.859612, 0.507644, 0.058004,
		-0.508386, 0.861126, -0.002249,
		40.116261, 34.403294, 25.126120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640148, 33.988991, 25.764191>,  <40.472130, 33.800503, 25.127695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640148, 33.988991, 25.764191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345928, 34.239681, 25.661285>,  <40.169395, 34.390095, 25.599543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345928, 34.239681, 25.661285>,  <40.640148, 33.988991, 25.764191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345928, 34.239681, 25.661285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361433, -0.041836, 0.931459,
		0.573006, 0.778116, 0.257292,
		-0.735547, 0.626726, -0.257264,
		40.125263, 34.427700, 25.584106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616016, 34.505520, 26.326248>,  <40.640148, 33.988991, 25.764191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616016, 34.505520, 26.326248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261883, 34.528179, 26.141653>,  <40.049404, 34.541775, 26.030895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.261883, 34.528179, 26.141653>,  <40.616016, 34.505520, 26.326248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261883, 34.528179, 26.141653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452922, 0.119261, 0.883538,
		0.105087, 0.991246, -0.079929,
		-0.885335, 0.056647, -0.461490,
		39.996281, 34.545174, 26.003206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376511, 35.142860, 26.541397>,  <40.616016, 34.505520, 26.326248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376511, 35.142860, 26.541397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059681, 34.920734, 26.440010>,  <39.869583, 34.787460, 26.379177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059681, 34.920734, 26.440010>,  <40.376511, 35.142860, 26.541397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059681, 34.920734, 26.440010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374630, 0.114387, 0.920091,
		-0.481945, 0.823737, -0.298640,
		-0.792074, -0.555313, -0.253468,
		39.822060, 34.754139, 26.363970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943871, 35.449368, 26.957005>,  <40.376511, 35.142860, 26.541397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943871, 35.449368, 26.957005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763496, 35.112316, 26.839270>,  <39.655273, 34.910084, 26.768629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763496, 35.112316, 26.839270>,  <39.943871, 35.449368, 26.957005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763496, 35.112316, 26.839270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572999, 0.020452, 0.819301,
		-0.684345, 0.538108, -0.492048,
		-0.450936, -0.842627, -0.294339,
		39.628216, 34.859528, 26.750967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157291, 35.656456, 26.966951>,  <39.943871, 35.449368, 26.957005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157291, 35.656456, 26.966951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202148, 35.259552, 26.988262>,  <39.229061, 35.021408, 27.001049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202148, 35.259552, 26.988262>,  <39.157291, 35.656456, 26.966951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202148, 35.259552, 26.988262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622880, -0.028416, 0.781801,
		-0.774238, -0.120857, -0.621248,
		0.112140, -0.992263, 0.053279,
		39.235790, 34.961872, 27.004246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430328, 35.348389, 27.100502>,  <39.157291, 35.656456, 26.966951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430328, 35.348389, 27.100502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692112, 35.074661, 27.229122>,  <38.849182, 34.910427, 27.306293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692112, 35.074661, 27.229122>,  <38.430328, 35.348389, 27.100502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692112, 35.074661, 27.229122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574017, -0.172889, 0.800384,
		-0.492122, -0.708394, -0.505958,
		0.654462, -0.684315, 0.321548,
		38.888451, 34.869366, 27.325586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043823, 34.851009, 27.295881>,  <38.430328, 35.348389, 27.100502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043823, 34.851009, 27.295881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380741, 34.729698, 27.474121>,  <38.582893, 34.656910, 27.581066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380741, 34.729698, 27.474121>,  <38.043823, 34.851009, 27.295881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380741, 34.729698, 27.474121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509228, -0.176709, 0.842295,
		-0.176709, -0.936373, -0.303280,
		-0.842295, 0.303280, -0.445601,
		38.633430, 34.638714, 27.607801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788288, 34.411331, 27.873098>,  <38.043823, 34.851009, 27.295881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788288, 34.411331, 27.873098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174099, 34.467995, 27.962206>,  <38.405586, 34.501995, 28.015671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.174099, 34.467995, 27.962206>,  <37.788288, 34.411331, 27.873098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174099, 34.467995, 27.962206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190827, -0.208980, 0.959121,
		0.182425, -0.967605, -0.174534,
		0.964524, 0.141662, 0.222769,
		38.463455, 34.510494, 28.029036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946308, 33.925220, 28.347883>,  <37.788288, 34.411331, 27.873098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946308, 33.925220, 28.347883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213261, 34.217239, 28.406731>,  <38.373432, 34.392448, 28.442039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.213261, 34.217239, 28.406731>,  <37.946308, 33.925220, 28.347883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213261, 34.217239, 28.406731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168500, -0.044399, 0.984701,
		0.725407, -0.681956, 0.093382,
		0.667377, 0.730044, 0.147117,
		38.413475, 34.436253, 28.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362309, 33.689224, 28.862074>,  <37.946308, 33.925220, 28.347883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362309, 33.689224, 28.862074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371857, 34.089081, 28.866863>,  <38.377586, 34.328995, 28.869738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.371857, 34.089081, 28.866863>,  <38.362309, 33.689224, 28.862074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371857, 34.089081, 28.866863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178981, -0.007510, 0.983824,
		0.983563, -0.025626, 0.178737,
		0.023869, 0.999643, 0.011973,
		38.379017, 34.388973, 28.870455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840527, 33.946747, 29.507401>,  <38.362309, 33.689224, 28.862074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840527, 33.946747, 29.507401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580284, 34.231632, 29.401972>,  <38.424141, 34.402565, 29.338715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580284, 34.231632, 29.401972>,  <38.840527, 33.946747, 29.507401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580284, 34.231632, 29.401972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183077, 0.189736, 0.964616,
		0.737020, 0.675835, 0.006947,
		-0.650603, 0.712213, -0.263569,
		38.385105, 34.445297, 29.322901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469326, 34.163910, 29.755693>,  <38.840527, 33.946747, 29.507401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469326, 34.163910, 29.755693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762077, 33.930710, 29.896811>,  <39.937729, 33.790791, 29.981482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.762077, 33.930710, 29.896811>,  <39.469326, 34.163910, 29.755693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762077, 33.930710, 29.896811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378006, -0.083419, -0.922038,
		0.566974, 0.808181, 0.159323,
		0.731882, -0.582997, 0.352793,
		39.981644, 33.755810, 30.002649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013443, 34.463642, 29.508371>,  <39.469326, 34.163910, 29.755693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013443, 34.463642, 29.508371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139038, 34.089931, 29.575951>,  <40.214397, 33.865707, 29.616499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139038, 34.089931, 29.575951>,  <40.013443, 34.463642, 29.508371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139038, 34.089931, 29.575951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471155, -0.001158, -0.882050,
		0.824271, 0.356557, 0.439824,
		0.313992, -0.934273, 0.168948,
		40.233234, 33.809650, 29.626635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676922, 34.504467, 29.331652>,  <40.013443, 34.463642, 29.508371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676922, 34.504467, 29.331652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662323, 34.105682, 29.359165>,  <40.653564, 33.866409, 29.375673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662323, 34.105682, 29.359165>,  <40.676922, 34.504467, 29.331652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662323, 34.105682, 29.359165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689464, -0.074943, -0.720432,
		0.723400, 0.021134, 0.690106,
		-0.036493, -0.996964, 0.068785,
		40.651375, 33.806595, 29.379801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387802, 34.198132, 29.444735>,  <40.676922, 34.504467, 29.331652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387802, 34.198132, 29.444735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156239, 33.905930, 29.299829>,  <41.017300, 33.730610, 29.212887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.156239, 33.905930, 29.299829>,  <41.387802, 34.198132, 29.444735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156239, 33.905930, 29.299829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624160, -0.111122, -0.773354,
		0.524681, -0.673809, 0.520280,
		-0.578907, -0.730502, -0.362262,
		40.982567, 33.686779, 29.191151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829475, 33.614697, 29.403399>,  <41.387802, 34.198132, 29.444735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829475, 33.614697, 29.403399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534451, 33.584801, 29.134949>,  <41.357433, 33.566864, 28.973879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534451, 33.584801, 29.134949>,  <41.829475, 33.614697, 29.403399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534451, 33.584801, 29.134949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672834, -0.165793, -0.720977,
		-0.057379, -0.983324, 0.172574,
		-0.737565, -0.074745, -0.671126,
		41.313183, 33.562378, 28.933611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014130, 32.908482, 29.061308>,  <41.829475, 33.614697, 29.403399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014130, 32.908482, 29.061308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748917, 33.105614, 28.835917>,  <41.589790, 33.223892, 28.700682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.748917, 33.105614, 28.835917>,  <42.014130, 32.908482, 29.061308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748917, 33.105614, 28.835917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477951, -0.300641, -0.825335,
		-0.576154, -0.816538, -0.036215,
		-0.663030, 0.492829, -0.563481,
		41.550007, 33.253464, 28.666872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000885, 32.473095, 28.436209>,  <42.014130, 32.908482, 29.061308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000885, 32.473095, 28.436209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.841549, 32.826046, 28.336027>,  <41.745945, 33.037819, 28.275919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.841549, 32.826046, 28.336027>,  <42.000885, 32.473095, 28.436209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841549, 32.826046, 28.336027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303247, -0.131005, -0.943864,
		-0.865658, -0.451932, -0.215394,
		-0.398344, 0.882380, -0.250453,
		41.722046, 33.090759, 28.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668587, 32.299706, 27.821508>,  <42.000885, 32.473095, 28.436209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668587, 32.299706, 27.821508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.715317, 32.696754, 27.808537>,  <41.743355, 32.934982, 27.800753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.715317, 32.696754, 27.808537>,  <41.668587, 32.299706, 27.821508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715317, 32.696754, 27.808537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116983, -0.046180, -0.992060,
		-0.986239, 0.112103, -0.121515,
		0.116825, 0.992623, -0.032431,
		41.750362, 32.994541, 27.798807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335590, 32.526375, 27.197618>,  <41.668587, 32.299706, 27.821508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335590, 32.526375, 27.197618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593929, 32.819893, 27.281925>,  <41.748932, 32.996002, 27.332510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.593929, 32.819893, 27.281925>,  <41.335590, 32.526375, 27.197618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593929, 32.819893, 27.281925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249769, 0.057796, -0.966579,
		-0.721451, 0.676910, -0.145952,
		0.645851, 0.733793, 0.210768,
		41.787685, 33.040031, 27.345156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271095, 32.932590, 26.652168>,  <41.335590, 32.526375, 27.197618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271095, 32.932590, 26.652168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616898, 33.081036, 26.787756>,  <41.824379, 33.170101, 26.869108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.616898, 33.081036, 26.787756>,  <41.271095, 32.932590, 26.652168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616898, 33.081036, 26.787756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293088, 0.175661, -0.939810,
		-0.408316, 0.911822, 0.043093,
		0.864510, 0.371110, 0.338969,
		41.876251, 33.192368, 26.889446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420055, 33.598400, 26.361341>,  <41.271095, 32.932590, 26.652168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420055, 33.598400, 26.361341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.782772, 33.481350, 26.482731>,  <42.000404, 33.411121, 26.555565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.782772, 33.481350, 26.482731>,  <41.420055, 33.598400, 26.361341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782772, 33.481350, 26.482731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372416, 0.218694, -0.901931,
		0.197557, 0.930884, 0.307288,
		0.906795, -0.292622, 0.303471,
		42.054810, 33.393562, 26.573772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962868, 34.167664, 26.310930>,  <41.420055, 33.598400, 26.361341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962868, 34.167664, 26.310930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150269, 33.814419, 26.300943>,  <42.262711, 33.602474, 26.294950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150269, 33.814419, 26.300943>,  <41.962868, 34.167664, 26.310930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150269, 33.814419, 26.300943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593749, 0.335670, -0.731292,
		0.654191, 0.327789, 0.681607,
		0.468505, -0.883108, -0.024968,
		42.290821, 33.549488, 26.293453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617348, 34.369137, 26.120913>,  <41.962868, 34.167664, 26.310930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617348, 34.369137, 26.120913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613380, 33.974922, 26.053251>,  <42.611000, 33.738392, 26.012655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613380, 33.974922, 26.053251>,  <42.617348, 34.369137, 26.120913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613380, 33.974922, 26.053251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611615, 0.127850, -0.780757,
		0.791093, -0.111199, 0.601503,
		-0.009917, -0.985540, -0.169152,
		42.610405, 33.679260, 26.002506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280285, 34.221771, 25.879221>,  <42.617348, 34.369137, 26.120913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280285, 34.221771, 25.879221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.056755, 33.917011, 25.748241>,  <42.922638, 33.734158, 25.669653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.056755, 33.917011, 25.748241>,  <43.280285, 34.221771, 25.879221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056755, 33.917011, 25.748241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408870, 0.090396, -0.908104,
		0.721483, -0.641358, 0.261002,
		-0.558826, -0.761898, -0.327451,
		42.889107, 33.688442, 25.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927937, 34.026337, 25.888176>,  <43.280285, 34.221771, 25.879221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927937, 34.026337, 25.888176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312901, 34.134689, 25.880283>,  <44.543880, 34.199703, 25.875547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.312901, 34.134689, 25.880283>,  <43.927937, 34.026337, 25.888176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312901, 34.134689, 25.880283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027798, -0.025970, 0.999276,
		0.270177, -0.962261, -0.032524,
		0.962409, 0.270886, -0.019733,
		44.601624, 34.215954, 25.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322159, 33.525776, 26.275537>,  <43.927937, 34.026337, 25.888176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322159, 33.525776, 26.275537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.591213, 33.821457, 26.262074>,  <44.752647, 33.998867, 26.253996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.591213, 33.821457, 26.262074>,  <44.322159, 33.525776, 26.275537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591213, 33.821457, 26.262074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084510, -0.031551, 0.995923,
		0.735128, -0.672742, -0.083693,
		0.672640, 0.739204, -0.033660,
		44.793007, 34.043217, 26.251976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898159, 33.327347, 26.860847>,  <44.322159, 33.525776, 26.275537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898159, 33.327347, 26.860847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.966122, 33.714520, 26.786839>,  <45.006901, 33.946823, 26.742434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.966122, 33.714520, 26.786839>,  <44.898159, 33.327347, 26.860847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966122, 33.714520, 26.786839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228067, 0.144033, 0.962933,
		0.958706, -0.205805, -0.196282,
		0.169906, 0.967935, -0.185022,
		45.017094, 34.004902, 26.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637947, 33.639412, 27.190184>,  <44.898159, 33.327347, 26.860847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637947, 33.639412, 27.190184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.346603, 33.910702, 27.151190>,  <45.171799, 34.073475, 27.127794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.346603, 33.910702, 27.151190>,  <45.637947, 33.639412, 27.190184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346603, 33.910702, 27.151190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117848, 0.264147, 0.957255,
		0.674988, 0.685735, -0.272321,
		-0.728356, 0.678229, -0.097483,
		45.128098, 34.114170, 27.121944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806843, 34.130093, 27.714796>,  <45.637947, 33.639412, 27.190184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806843, 34.130093, 27.714796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.437420, 34.253582, 27.623819>,  <45.215767, 34.327675, 27.569233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.437420, 34.253582, 27.623819>,  <45.806843, 34.130093, 27.714796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437420, 34.253582, 27.623819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044800, 0.502202, 0.863589,
		0.380827, 0.807766, -0.449983,
		-0.923560, 0.308719, -0.227440,
		45.160351, 34.346199, 27.555588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824276, 34.897156, 27.907349>,  <45.806843, 34.130093, 27.714796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824276, 34.897156, 27.907349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.442005, 34.779800, 27.917229>,  <45.212643, 34.709385, 27.923157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.442005, 34.779800, 27.917229>,  <45.824276, 34.897156, 27.907349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442005, 34.779800, 27.917229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135271, 0.512037, 0.848245,
		-0.261517, 0.807304, -0.529027,
		-0.955673, -0.293392, 0.024701,
		45.155304, 34.691784, 27.924639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499577, 35.438885, 28.151585>,  <45.824276, 34.897156, 27.907349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499577, 35.438885, 28.151585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.213417, 35.163517, 28.199390>,  <45.041721, 34.998295, 28.228073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.213417, 35.163517, 28.199390>,  <45.499577, 35.438885, 28.151585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213417, 35.163517, 28.199390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321930, 0.476566, 0.818075,
		-0.620136, 0.546774, -0.562557,
		-0.715397, -0.688421, 0.119513,
		44.998798, 34.956989, 28.235245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909241, 35.835747, 28.217272>,  <45.499577, 35.438885, 28.151585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909241, 35.835747, 28.217272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.841621, 35.475174, 28.376694>,  <44.801052, 35.258831, 28.472347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.841621, 35.475174, 28.376694>,  <44.909241, 35.835747, 28.217272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841621, 35.475174, 28.376694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329921, 0.432798, 0.838951,
		-0.928750, 0.010330, -0.370564,
		-0.169046, -0.901432, 0.398553,
		44.790909, 35.204746, 28.496260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230232, 35.985973, 28.451483>,  <44.909241, 35.835747, 28.217272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230232, 35.985973, 28.451483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.342487, 35.662346, 28.658037>,  <44.409840, 35.468170, 28.781969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.342487, 35.662346, 28.658037>,  <44.230232, 35.985973, 28.451483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342487, 35.662346, 28.658037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572110, 0.290978, 0.766826,
		-0.770669, -0.510631, -0.381215,
		0.280640, -0.809066, 0.516385,
		44.426678, 35.419624, 28.812952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608883, 35.862778, 28.916359>,  <44.230232, 35.985973, 28.451483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608883, 35.862778, 28.916359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915287, 35.659203, 29.073439>,  <44.099129, 35.537056, 29.167686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.915287, 35.659203, 29.073439>,  <43.608883, 35.862778, 28.916359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915287, 35.659203, 29.073439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321944, 0.225026, 0.919628,
		-0.556405, -0.830868, 0.008520,
		0.766007, -0.508942, 0.392698,
		44.145088, 35.506519, 29.191248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281227, 35.319607, 29.305653>,  <43.608883, 35.862778, 28.916359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281227, 35.319607, 29.305653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.650887, 35.402409, 29.434092>,  <43.872681, 35.452087, 29.511156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.650887, 35.402409, 29.434092>,  <43.281227, 35.319607, 29.305653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650887, 35.402409, 29.434092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357244, 0.170368, 0.918342,
		0.135379, -0.963396, 0.231390,
		0.924148, 0.206987, 0.321103,
		43.928131, 35.464508, 29.530422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523640, 34.840515, 29.872885>,  <43.281227, 35.319607, 29.305653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523640, 34.840515, 29.872885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.727127, 35.184441, 29.890406>,  <43.849220, 35.390797, 29.900919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.727127, 35.184441, 29.890406>,  <43.523640, 34.840515, 29.872885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727127, 35.184441, 29.890406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317869, 0.140301, 0.937697,
		0.800102, -0.490949, 0.344683,
		0.508721, 0.859817, 0.043803,
		43.879742, 35.442387, 29.903547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565777, 34.816551, 30.606905>,  <43.523640, 34.840515, 29.872885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565777, 34.816551, 30.606905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.705009, 35.180588, 30.516956>,  <43.788548, 35.399010, 30.462986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.705009, 35.180588, 30.516956>,  <43.565777, 34.816551, 30.606905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705009, 35.180588, 30.516956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338991, 0.345835, 0.874919,
		0.874028, -0.228313, 0.428893,
		0.348081, 0.910094, -0.224873,
		43.809433, 35.453617, 30.449495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894669, 35.068417, 31.255987>,  <43.565777, 34.816551, 30.606905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894669, 35.068417, 31.255987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.857170, 35.390568, 31.021868>,  <43.834671, 35.583858, 30.881395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.857170, 35.390568, 31.021868>,  <43.894669, 35.068417, 31.255987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857170, 35.390568, 31.021868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502981, 0.469035, 0.725959,
		0.859198, 0.362453, 0.361118,
		-0.093749, 0.805379, -0.585300,
		43.829044, 35.632183, 30.846277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.724857, 39.229115, 25.096796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.373104, 39.087681, 24.969254>,  <45.162052, 39.002819, 24.892729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.373104, 39.087681, 24.969254>,  <45.724857, 39.229115, 25.096796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373104, 39.087681, 24.969254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457446, -0.441721, -0.771768,
		0.132039, -0.824537, 0.550186,
		-0.879380, -0.353584, -0.318856,
		45.109291, 38.981606, 24.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903351, 38.457104, 24.864252>,  <45.724857, 39.229115, 25.096796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903351, 38.457104, 24.864252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.555370, 38.551186, 24.690876>,  <45.346584, 38.607635, 24.586851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.555370, 38.551186, 24.690876>,  <45.903351, 38.457104, 24.864252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555370, 38.551186, 24.690876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201410, -0.632819, -0.747646,
		-0.450137, -0.737712, 0.503148,
		-0.869949, 0.235204, -0.433438,
		45.294384, 38.621746, 24.560844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693737, 37.832844, 24.576191>,  <45.903351, 38.457104, 24.864252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693737, 37.832844, 24.576191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.476555, 38.116982, 24.397034>,  <45.346245, 38.287464, 24.289539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.476555, 38.116982, 24.397034>,  <45.693737, 37.832844, 24.576191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476555, 38.116982, 24.397034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087667, -0.482499, -0.871498,
		-0.835172, -0.512452, 0.199703,
		-0.542957, 0.710343, -0.447895,
		45.313667, 38.330086, 24.262665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163765, 37.472103, 24.217983>,  <45.693737, 37.832844, 24.576191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163765, 37.472103, 24.217983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.203449, 37.831539, 24.047012>,  <45.227261, 38.047199, 23.944429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.203449, 37.831539, 24.047012>,  <45.163765, 37.472103, 24.217983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203449, 37.831539, 24.047012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056930, -0.433967, -0.899128,
		-0.993437, 0.064865, -0.094209,
		0.099206, 0.898591, -0.427426,
		45.233212, 38.101116, 23.918785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668449, 37.449959, 23.673893>,  <45.163765, 37.472103, 24.217983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668449, 37.449959, 23.673893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.947102, 37.724537, 23.590464>,  <45.114292, 37.889282, 23.540407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.947102, 37.724537, 23.590464>,  <44.668449, 37.449959, 23.673893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947102, 37.724537, 23.590464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059190, -0.344721, -0.936837,
		-0.714985, 0.640283, -0.280773,
		0.696629, 0.686444, -0.208572,
		45.156090, 37.930470, 23.527891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563347, 37.429607, 22.998720>,  <44.668449, 37.449959, 23.673893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563347, 37.429607, 22.998720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.900879, 37.643803, 23.012587>,  <45.103397, 37.772320, 23.020906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.900879, 37.643803, 23.012587>,  <44.563347, 37.429607, 22.998720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900879, 37.643803, 23.012587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337587, -0.479540, -0.809985,
		-0.417115, 0.695193, -0.585425,
		0.843831, 0.535489, 0.034665,
		45.154030, 37.804451, 23.022985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757755, 37.663322, 22.281168>,  <44.563347, 37.429607, 22.998720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757755, 37.663322, 22.281168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.110432, 37.682858, 22.468885>,  <45.322037, 37.694580, 22.581516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.110432, 37.682858, 22.468885>,  <44.757755, 37.663322, 22.281168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110432, 37.682858, 22.468885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465590, -0.251254, -0.848586,
		0.076468, 0.966688, -0.244267,
		0.881691, 0.048839, 0.469293,
		45.374939, 37.697510, 22.609673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195751, 38.050671, 21.752502>,  <44.757755, 37.663322, 22.281168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195751, 38.050671, 21.752502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.414383, 37.822285, 21.997536>,  <45.545563, 37.685253, 22.144556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.414383, 37.822285, 21.997536>,  <45.195751, 38.050671, 21.752502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414383, 37.822285, 21.997536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509120, -0.354228, -0.784423,
		0.664868, 0.740626, 0.097075,
		0.546577, -0.570961, 0.612582,
		45.578358, 37.650997, 22.181311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816448, 38.080379, 21.626427>,  <45.195751, 38.050671, 21.752502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816448, 38.080379, 21.626427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.791584, 37.719189, 21.796495>,  <45.776665, 37.502476, 21.898537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.791584, 37.719189, 21.796495>,  <45.816448, 38.080379, 21.626427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791584, 37.719189, 21.796495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550683, -0.386318, -0.739937,
		0.832397, 0.188138, 0.521268,
		-0.062165, -0.902974, 0.425174,
		45.772934, 37.448296, 21.924047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457912, 37.851028, 21.542501>,  <45.816448, 38.080379, 21.626427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457912, 37.851028, 21.542501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.266899, 37.513229, 21.639481>,  <46.152290, 37.310551, 21.697668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.266899, 37.513229, 21.639481>,  <46.457912, 37.851028, 21.542501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266899, 37.513229, 21.639481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542557, -0.500485, -0.674645,
		0.691079, -0.190626, 0.697188,
		-0.477537, -0.844498, 0.242450,
		46.123638, 37.259880, 21.712215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.046932, 37.262356, 21.594797>,  <46.457912, 37.851028, 21.542501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.046932, 37.262356, 21.594797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.683060, 37.116810, 21.514709>,  <46.464737, 37.029484, 21.466658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.683060, 37.116810, 21.514709>,  <47.046932, 37.262356, 21.594797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683060, 37.116810, 21.514709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392943, -0.598000, -0.698564,
		0.134450, -0.714144, 0.686966,
		-0.909680, -0.363860, -0.200217,
		46.410156, 37.007652, 21.454645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154251, 36.476151, 21.575760>,  <47.046932, 37.262356, 21.594797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154251, 36.476151, 21.575760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.814457, 36.532303, 21.372324>,  <46.610580, 36.565994, 21.250263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.814457, 36.532303, 21.372324>,  <47.154251, 36.476151, 21.575760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.814457, 36.532303, 21.372324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421019, -0.400601, -0.813795,
		-0.317980, -0.905435, 0.281205,
		-0.849489, 0.140378, -0.508588,
		46.559608, 36.574417, 21.219748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131950, 35.954510, 21.164160>,  <47.154251, 36.476151, 21.575760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131950, 35.954510, 21.164160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.846310, 36.180828, 20.999273>,  <46.674923, 36.316620, 20.900341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.846310, 36.180828, 20.999273>,  <47.131950, 35.954510, 21.164160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846310, 36.180828, 20.999273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245611, -0.348913, -0.904397,
		-0.655536, -0.747081, 0.110194,
		-0.714106, 0.565801, -0.412217,
		46.632076, 36.350567, 20.875608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.913334, 35.613491, 20.658257>,  <47.131950, 35.954510, 21.164160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.913334, 35.613491, 20.658257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.798588, 35.979736, 20.545570>,  <46.729740, 36.199482, 20.477959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.798588, 35.979736, 20.545570>,  <46.913334, 35.613491, 20.658257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798588, 35.979736, 20.545570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016107, -0.289424, -0.957065,
		-0.957837, -0.279083, 0.068277,
		-0.286862, 0.915613, -0.281716,
		46.712528, 36.254421, 20.461056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728661, 34.823624, 20.429531>,  <46.913334, 35.613491, 20.658257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728661, 34.823624, 20.429531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.547401, 34.467098, 20.423527>,  <46.438648, 34.253185, 20.419924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.547401, 34.467098, 20.423527>,  <46.728661, 34.823624, 20.429531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547401, 34.467098, 20.423527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298323, 0.135757, 0.944761,
		-0.840038, 0.432590, -0.327416,
		-0.453144, -0.891311, -0.015010,
		46.411457, 34.199703, 20.419024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.177685, 34.971046, 20.779861>,  <46.728661, 34.823624, 20.429531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.177685, 34.971046, 20.779861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.195057, 34.571556, 20.790146>,  <46.205479, 34.331863, 20.796316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.195057, 34.571556, 20.790146>,  <46.177685, 34.971046, 20.779861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195057, 34.571556, 20.790146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314098, 0.010782, 0.949329,
		-0.948396, -0.049307, -0.313230,
		0.043432, -0.998725, 0.025712,
		46.208088, 34.271938, 20.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619976, 34.830193, 21.078981>,  <46.177685, 34.971046, 20.779861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619976, 34.830193, 21.078981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.868595, 34.523460, 21.143053>,  <46.017765, 34.339420, 21.181496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.868595, 34.523460, 21.143053>,  <45.619976, 34.830193, 21.078981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868595, 34.523460, 21.143053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279773, -0.026297, 0.959706,
		-0.731715, -0.641315, -0.230882,
		0.621546, -0.766826, 0.160181,
		46.055058, 34.293411, 21.191107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222080, 34.373329, 21.437666>,  <45.619976, 34.830193, 21.078981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222080, 34.373329, 21.437666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.603756, 34.281090, 21.513918>,  <45.832764, 34.225746, 21.559669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.603756, 34.281090, 21.513918>,  <45.222080, 34.373329, 21.437666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.603756, 34.281090, 21.513918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179165, 0.069883, 0.981334,
		-0.239618, -0.970536, 0.025366,
		0.954192, -0.230601, 0.190631,
		45.890015, 34.211910, 21.571108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200073, 33.846004, 21.933008>,  <45.222080, 34.373329, 21.437666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200073, 33.846004, 21.933008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.568314, 34.000088, 21.958630>,  <45.789257, 34.092537, 21.974003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.568314, 34.000088, 21.958630>,  <45.200073, 33.846004, 21.933008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568314, 34.000088, 21.958630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078623, 0.022172, 0.996658,
		0.382501, -0.922563, 0.050698,
		0.920604, 0.385209, 0.064054,
		45.844494, 34.115650, 21.977846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452396, 33.417088, 22.338799>,  <45.200073, 33.846004, 21.933008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452396, 33.417088, 22.338799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.692657, 33.735748, 22.365814>,  <45.836815, 33.926945, 22.382023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.692657, 33.735748, 22.365814>,  <45.452396, 33.417088, 22.338799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692657, 33.735748, 22.365814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219563, 0.083137, 0.972049,
		0.768769, -0.598694, 0.224852,
		0.600654, 0.796651, 0.067538,
		45.872852, 33.974743, 22.386076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990601, 33.286961, 22.864752>,  <45.452396, 33.417088, 22.338799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990601, 33.286961, 22.864752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.986099, 33.685944, 22.836599>,  <45.983398, 33.925335, 22.819708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.986099, 33.685944, 22.836599>,  <45.990601, 33.286961, 22.864752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986099, 33.685944, 22.836599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115404, 0.068620, 0.990946,
		0.993255, 0.019270, 0.114339,
		-0.011250, 0.997457, -0.070381,
		45.982723, 33.985180, 22.815485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510071, 33.549068, 23.370789>,  <45.990601, 33.286961, 22.864752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510071, 33.549068, 23.370789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.252865, 33.846058, 23.295675>,  <46.098541, 34.024254, 23.250608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.252865, 33.846058, 23.295675>,  <46.510071, 33.549068, 23.370789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252865, 33.846058, 23.295675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041226, 0.211279, 0.976556,
		0.764743, 0.635682, -0.105247,
		-0.643016, 0.742475, -0.187781,
		46.059959, 34.068802, 23.239342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.739620, 34.194210, 23.730917>,  <46.510071, 33.549068, 23.370789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.739620, 34.194210, 23.730917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.350101, 34.254887, 23.663139>,  <46.116390, 34.291290, 23.622473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.350101, 34.254887, 23.663139>,  <46.739620, 34.194210, 23.730917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350101, 34.254887, 23.663139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134288, 0.217775, 0.966716,
		0.183540, 0.964139, -0.191699,
		-0.973797, 0.151688, -0.169443,
		46.057964, 34.300392, 23.612307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467255, 34.826759, 24.161245>,  <46.739620, 34.194210, 23.730917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467255, 34.826759, 24.161245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.139404, 34.612213, 24.080719>,  <45.942696, 34.483486, 24.032404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.139404, 34.612213, 24.080719>,  <46.467255, 34.826759, 24.161245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139404, 34.612213, 24.080719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360288, 0.209366, 0.909043,
		-0.445433, 0.817603, -0.364849,
		-0.819623, -0.536368, -0.201314,
		45.893517, 34.451302, 24.020325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.861420, 35.157715, 24.453033>,  <46.467255, 34.826759, 24.161245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.861420, 35.157715, 24.453033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.687023, 34.808525, 24.365553>,  <45.582386, 34.599010, 24.313065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.687023, 34.808525, 24.365553>,  <45.861420, 35.157715, 24.453033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687023, 34.808525, 24.365553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523304, 0.048218, 0.850781,
		-0.732162, 0.485383, -0.477852,
		-0.435996, -0.872971, -0.218700,
		45.556225, 34.546635, 24.299942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077335, 35.247517, 24.502184>,  <45.861420, 35.157715, 24.453033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077335, 35.247517, 24.502184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.148621, 34.857155, 24.552538>,  <45.191391, 34.622936, 24.582750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.148621, 34.857155, 24.552538>,  <45.077335, 35.247517, 24.502184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148621, 34.857155, 24.552538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650583, -0.020882, 0.759148,
		-0.738229, -0.217189, -0.638629,
		0.178215, -0.975906, 0.125884,
		45.202084, 34.564384, 24.590303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549614, 35.066692, 24.874420>,  <45.077335, 35.247517, 24.502184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549614, 35.066692, 24.874420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775650, 34.740917, 24.927134>,  <44.911270, 34.545452, 24.958761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775650, 34.740917, 24.927134>,  <44.549614, 35.066692, 24.874420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775650, 34.740917, 24.927134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519175, -0.226891, 0.824001,
		-0.641198, -0.534051, -0.551049,
		0.565086, -0.814438, 0.131784,
		44.945175, 34.496586, 24.966669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120281, 34.705402, 25.316130>,  <44.549614, 35.066692, 24.874420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120281, 34.705402, 25.316130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.463680, 34.510612, 25.380423>,  <44.669720, 34.393738, 25.418999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.463680, 34.510612, 25.380423>,  <44.120281, 34.705402, 25.316130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463680, 34.510612, 25.380423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298098, -0.218856, 0.929107,
		-0.417279, -0.845549, -0.333054,
		0.858496, -0.486980, 0.160733,
		44.721230, 34.364517, 25.428642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614403, 34.068218, 25.253162>,  <44.120281, 34.705402, 25.316130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614403, 34.068218, 25.253162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.282394, 33.851364, 25.200783>,  <43.083187, 33.721252, 25.169355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.282394, 33.851364, 25.200783>,  <43.614403, 34.068218, 25.253162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282394, 33.851364, 25.200783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134746, 0.032904, -0.990334,
		0.541204, -0.839647, 0.045739,
		-0.830025, -0.542135, -0.130947,
		43.033386, 33.688725, 25.161499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783985, 33.601269, 24.668121>,  <43.614403, 34.068218, 25.253162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783985, 33.601269, 24.668121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387810, 33.640915, 24.706484>,  <43.150105, 33.664703, 24.729502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387810, 33.640915, 24.706484>,  <43.783985, 33.601269, 24.668121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387810, 33.640915, 24.706484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077039, 0.179201, -0.980791,
		-0.114401, -0.978807, -0.169853,
		-0.990443, 0.099118, 0.095907,
		43.090675, 33.670650, 24.735256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687927, 33.213860, 24.014336>,  <43.783985, 33.601269, 24.668121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687927, 33.213860, 24.014336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360271, 33.409172, 24.134727>,  <43.163677, 33.526360, 24.206963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360271, 33.409172, 24.134727>,  <43.687927, 33.213860, 24.014336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360271, 33.409172, 24.134727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259066, 0.153216, -0.953630,
		-0.511752, -0.859132, 0.000991,
		-0.819143, 0.488279, 0.300980,
		43.114529, 33.555656, 24.225021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138138, 32.818348, 23.803331>,  <43.687927, 33.213860, 24.014336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138138, 32.818348, 23.803331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056961, 33.208927, 23.832644>,  <43.008255, 33.443275, 23.850231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056961, 33.208927, 23.832644>,  <43.138138, 32.818348, 23.803331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056961, 33.208927, 23.832644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092582, 0.055368, -0.994164,
		-0.974805, -0.208538, 0.079165,
		-0.202937, 0.976446, 0.073280,
		42.996078, 33.501862, 23.854628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618988, 32.928261, 23.523037>,  <43.138138, 32.818348, 23.803331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618988, 32.928261, 23.523037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.745556, 33.306698, 23.495377>,  <42.821495, 33.533760, 23.478781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.745556, 33.306698, 23.495377>,  <42.618988, 32.928261, 23.523037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745556, 33.306698, 23.495377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001532, -0.073407, -0.997301,
		-0.948618, 0.315458, -0.024677,
		0.316418, 0.946096, -0.069151,
		42.840481, 33.590527, 23.474630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210155, 33.330364, 22.960993>,  <42.618988, 32.928261, 23.523037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210155, 33.330364, 22.960993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.555912, 33.521976, 23.022120>,  <42.763367, 33.636944, 23.058796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.555912, 33.521976, 23.022120>,  <42.210155, 33.330364, 22.960993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555912, 33.521976, 23.022120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200565, -0.049786, -0.978415,
		-0.461081, 0.876386, -0.139111,
		0.864394, 0.479029, 0.152817,
		42.815231, 33.665684, 23.067965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287018, 33.703796, 22.406116>,  <42.210155, 33.330364, 22.960993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287018, 33.703796, 22.406116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651802, 33.747066, 22.564421>,  <42.870674, 33.773029, 22.659403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651802, 33.747066, 22.564421>,  <42.287018, 33.703796, 22.406116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651802, 33.747066, 22.564421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374529, 0.174318, -0.910682,
		-0.167505, 0.978729, 0.118455,
		0.911959, 0.108179, 0.395761,
		42.925388, 33.779522, 22.683149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929325, 34.386135, 22.196791>,  <42.287018, 33.703796, 22.406116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929325, 34.386135, 22.196791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603069, 34.502064, 21.996498>,  <41.407314, 34.571621, 21.876322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603069, 34.502064, 21.996498>,  <41.929325, 34.386135, 22.196791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603069, 34.502064, 21.996498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513606, 0.035711, 0.857283,
		0.266344, 0.956413, 0.119728,
		-0.815641, 0.289825, -0.500731,
		41.358376, 34.589012, 21.846279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715305, 34.947712, 22.491144>,  <41.929325, 34.386135, 22.196791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715305, 34.947712, 22.491144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388092, 34.820667, 22.299335>,  <41.191765, 34.744442, 22.184250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.388092, 34.820667, 22.299335>,  <41.715305, 34.947712, 22.491144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388092, 34.820667, 22.299335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494125, -0.038634, 0.868532,
		-0.294383, 0.947433, -0.125336,
		-0.818034, -0.317613, -0.479524,
		41.142681, 34.725384, 22.155478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262104, 35.599125, 22.627918>,  <41.715305, 34.947712, 22.491144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262104, 35.599125, 22.627918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075497, 35.262558, 22.518824>,  <40.963531, 35.060619, 22.453367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075497, 35.262558, 22.518824>,  <41.262104, 35.599125, 22.627918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075497, 35.262558, 22.518824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497728, -0.005168, 0.867318,
		-0.731182, 0.540368, -0.416383,
		-0.466519, -0.841413, -0.272735,
		40.935539, 35.010136, 22.437002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660950, 35.720924, 22.841932>,  <41.262104, 35.599125, 22.627918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660950, 35.720924, 22.841932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648670, 35.325710, 22.781485>,  <40.641304, 35.088581, 22.745216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648670, 35.325710, 22.781485>,  <40.660950, 35.720924, 22.841932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648670, 35.325710, 22.781485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435671, -0.122846, 0.891684,
		-0.899583, 0.093212, -0.426688,
		-0.030699, -0.988039, -0.151120,
		40.639462, 35.029297, 22.736149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981449, 35.596684, 22.895252>,  <40.660950, 35.720924, 22.841932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981449, 35.596684, 22.895252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198162, 35.281540, 23.012390>,  <40.328190, 35.092453, 23.082672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198162, 35.281540, 23.012390>,  <39.981449, 35.596684, 22.895252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198162, 35.281540, 23.012390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491572, -0.014391, 0.870718,
		-0.681786, -0.615691, -0.395085,
		0.541779, -0.787856, 0.292845,
		40.360695, 35.045181, 23.100243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523739, 35.358757, 23.274822>,  <39.981449, 35.596684, 22.895252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523739, 35.358757, 23.274822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850662, 35.155167, 23.382864>,  <40.046818, 35.033012, 23.447689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.850662, 35.155167, 23.382864>,  <39.523739, 35.358757, 23.274822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850662, 35.155167, 23.382864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275109, 0.067187, 0.959063,
		-0.506284, -0.858156, -0.085111,
		0.817307, -0.508973, 0.270102,
		40.095856, 35.002476, 23.463894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257763, 34.776676, 23.614773>,  <39.523739, 35.358757, 23.274822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257763, 34.776676, 23.614773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637009, 34.816868, 23.735422>,  <39.864555, 34.840984, 23.807812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637009, 34.816868, 23.735422>,  <39.257763, 34.776676, 23.614773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637009, 34.816868, 23.735422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294182, -0.082448, 0.952187,
		0.120548, -0.991517, -0.048610,
		0.948117, 0.100484, 0.301625,
		39.921444, 34.847012, 23.825911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.264263, 37.905369, 19.607010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.530968, 37.681499, 19.803862>,  <43.690990, 37.547176, 19.921972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.530968, 37.681499, 19.803862>,  <43.264263, 37.905369, 19.607010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530968, 37.681499, 19.803862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552209, 0.072449, 0.830552,
		-0.500495, -0.825538, -0.260753,
		0.666761, -0.559677, 0.492129,
		43.730995, 37.513596, 19.951500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906544, 37.397758, 19.972546>,  <43.264263, 37.905369, 19.607010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906544, 37.397758, 19.972546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264774, 37.430595, 20.147453>,  <43.479713, 37.450298, 20.252398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.264774, 37.430595, 20.147453>,  <42.906544, 37.397758, 19.972546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264774, 37.430595, 20.147453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442943, 0.072238, 0.893635,
		0.041764, -0.994004, 0.101052,
		0.895576, 0.082082, 0.437270,
		43.533447, 37.455223, 20.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908962, 36.838898, 20.393265>,  <42.906544, 37.397758, 19.972546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908962, 36.838898, 20.393265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.166294, 37.111679, 20.532448>,  <43.320694, 37.275349, 20.615957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.166294, 37.111679, 20.532448>,  <42.908962, 36.838898, 20.393265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166294, 37.111679, 20.532448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489116, 0.016455, 0.872063,
		0.588980, -0.731212, 0.344139,
		0.643326, 0.681952, 0.347956,
		43.359291, 37.316265, 20.636835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041283, 36.624805, 21.105194>,  <42.908962, 36.838898, 20.393265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041283, 36.624805, 21.105194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159744, 37.006290, 21.126068>,  <43.230820, 37.235184, 21.138592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.159744, 37.006290, 21.126068>,  <43.041283, 36.624805, 21.105194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159744, 37.006290, 21.126068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401825, 0.074840, 0.912653,
		0.866505, -0.291253, 0.405390,
		0.296152, 0.953714, 0.052183,
		43.248589, 37.292404, 21.141724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237461, 36.803547, 21.790329>,  <43.041283, 36.624805, 21.105194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237461, 36.803547, 21.790329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.202457, 37.187286, 21.683008>,  <43.181454, 37.417530, 21.618616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.202457, 37.187286, 21.683008>,  <43.237461, 36.803547, 21.790329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202457, 37.187286, 21.683008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350368, 0.222484, 0.909804,
		0.932515, 0.173621, 0.316657,
		-0.087510, 0.959352, -0.268301,
		43.176205, 37.475094, 21.602518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502377, 37.270664, 22.376093>,  <43.237461, 36.803547, 21.790329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502377, 37.270664, 22.376093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.244392, 37.484402, 22.157549>,  <43.089603, 37.612644, 22.026423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.244392, 37.484402, 22.157549>,  <43.502377, 37.270664, 22.376093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244392, 37.484402, 22.157549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353302, 0.425461, 0.833163,
		0.677647, 0.730385, -0.085622,
		-0.644959, 0.534340, -0.546359,
		43.050903, 37.644703, 21.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512295, 37.937218, 22.657587>,  <43.502377, 37.270664, 22.376093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512295, 37.937218, 22.657587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167568, 37.919548, 22.455467>,  <42.960732, 37.908947, 22.334196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.167568, 37.919548, 22.455467>,  <43.512295, 37.937218, 22.657587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167568, 37.919548, 22.455467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483834, 0.370647, 0.792796,
		0.152265, 0.927722, -0.340802,
		-0.861812, -0.044176, -0.505300,
		42.909023, 37.906296, 22.303877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305649, 38.709728, 22.556164>,  <43.512295, 37.937218, 22.657587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305649, 38.709728, 22.556164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.989574, 38.470737, 22.501577>,  <42.799931, 38.327343, 22.468826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.989574, 38.470737, 22.501577>,  <43.305649, 38.709728, 22.556164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989574, 38.470737, 22.501577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427438, 0.377700, 0.821365,
		-0.439204, 0.707363, -0.553839,
		-0.790188, -0.597478, -0.136466,
		42.752518, 38.291492, 22.460638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711597, 39.140179, 22.766623>,  <43.305649, 38.709728, 22.556164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711597, 39.140179, 22.766623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555767, 38.772030, 22.753075>,  <42.462269, 38.551140, 22.744946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555767, 38.772030, 22.753075>,  <42.711597, 39.140179, 22.766623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555767, 38.772030, 22.753075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571299, 0.212650, 0.792715,
		-0.722389, 0.328175, -0.608651,
		-0.389579, -0.920370, -0.033870,
		42.438892, 38.495918, 22.742914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928905, 39.214146, 22.851673>,  <42.711597, 39.140179, 22.766623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928905, 39.214146, 22.851673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009838, 38.838818, 22.963821>,  <42.058399, 38.613621, 23.031111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.009838, 38.838818, 22.963821>,  <41.928905, 39.214146, 22.851673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009838, 38.838818, 22.963821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526396, 0.137214, 0.839094,
		-0.825813, -0.317365, -0.466167,
		0.202335, -0.938324, 0.280373,
		42.070538, 38.557320, 23.047934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286201, 38.955456, 23.060816>,  <41.928905, 39.214146, 22.851673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286201, 38.955456, 23.060816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571335, 38.720192, 23.213627>,  <41.742413, 38.579033, 23.305313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.571335, 38.720192, 23.213627>,  <41.286201, 38.955456, 23.060816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571335, 38.720192, 23.213627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545885, -0.123303, 0.828737,
		-0.440321, -0.799293, -0.408959,
		0.712830, -0.588156, 0.382029,
		41.785183, 38.543747, 23.328236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988777, 38.246780, 23.204472>,  <41.286201, 38.955456, 23.060816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988777, 38.246780, 23.204472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297554, 38.324409, 23.446608>,  <41.482822, 38.370987, 23.591890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.297554, 38.324409, 23.446608>,  <40.988777, 38.246780, 23.204472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297554, 38.324409, 23.446608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622479, 0.037643, 0.781731,
		0.128926, -0.980265, 0.149864,
		0.771944, 0.194072, 0.605340,
		41.529137, 38.382629, 23.628210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616116, 37.556881, 22.929502>,  <40.988777, 38.246780, 23.204472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616116, 37.556881, 22.929502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245068, 37.592709, 22.784447>,  <40.022438, 37.614204, 22.697414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.245068, 37.592709, 22.784447>,  <40.616116, 37.556881, 22.929502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245068, 37.592709, 22.784447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366319, 0.028229, -0.930061,
		-0.073065, -0.995581, -0.058996,
		-0.927616, 0.089566, -0.362638,
		39.966782, 37.619579, 22.675655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537601, 37.026897, 22.351933>,  <40.616116, 37.556881, 22.929502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537601, 37.026897, 22.351933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.248070, 37.298229, 22.301430>,  <40.074348, 37.461029, 22.271128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.248070, 37.298229, 22.301430>,  <40.537601, 37.026897, 22.351933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248070, 37.298229, 22.301430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270654, 0.110820, -0.956277,
		-0.634675, -0.726356, -0.263807,
		-0.723833, 0.678326, -0.126257,
		40.030918, 37.501728, 22.263552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074577, 36.898846, 21.827358>,  <40.537601, 37.026897, 22.351933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074577, 36.898846, 21.827358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997135, 37.289814, 21.861198>,  <39.950668, 37.524395, 21.881502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997135, 37.289814, 21.861198>,  <40.074577, 36.898846, 21.827358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997135, 37.289814, 21.861198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047695, 0.095508, -0.994285,
		-0.979919, -0.188465, -0.065110,
		-0.193606, 0.977425, 0.084601,
		39.939053, 37.583042, 21.886580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577435, 37.030338, 21.370859>,  <40.074577, 36.898846, 21.827358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577435, 37.030338, 21.370859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774475, 37.373058, 21.431841>,  <39.892700, 37.578690, 21.468430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774475, 37.373058, 21.431841>,  <39.577435, 37.030338, 21.370859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774475, 37.373058, 21.431841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009999, 0.180743, -0.983479,
		-0.870196, 0.482941, 0.097602,
		0.492603, 0.856796, 0.152453,
		39.922256, 37.630096, 21.477577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193100, 37.540810, 21.022387>,  <39.577435, 37.030338, 21.370859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193100, 37.540810, 21.022387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548817, 37.722748, 21.041460>,  <39.762249, 37.831909, 21.052904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548817, 37.722748, 21.041460>,  <39.193100, 37.540810, 21.022387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548817, 37.722748, 21.041460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050264, 0.200843, -0.978333,
		-0.454566, 0.867629, 0.201470,
		0.889294, 0.454844, 0.047686,
		39.815605, 37.859200, 21.055765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192829, 38.011795, 20.477186>,  <39.193100, 37.540810, 21.022387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192829, 38.011795, 20.477186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.570686, 37.940292, 20.587233>,  <39.797401, 37.897392, 20.653261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.570686, 37.940292, 20.587233>,  <39.192829, 38.011795, 20.477186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570686, 37.940292, 20.587233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280161, 0.003107, -0.959948,
		0.170739, 0.983889, 0.053015,
		0.944647, -0.178753, 0.275116,
		39.854080, 37.886665, 20.669767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547218, 38.320568, 19.927574>,  <39.192829, 38.011795, 20.477186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547218, 38.320568, 19.927574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.838066, 38.098759, 20.089462>,  <40.012573, 37.965672, 20.186596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.838066, 38.098759, 20.089462>,  <39.547218, 38.320568, 19.927574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838066, 38.098759, 20.089462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286071, -0.291171, -0.912898,
		0.624067, 0.779565, -0.053083,
		0.727120, -0.554524, 0.404721,
		40.056202, 37.932400, 20.210878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131516, 38.511169, 19.556892>,  <39.547218, 38.320568, 19.927574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131516, 38.511169, 19.556892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231285, 38.156574, 19.712805>,  <40.291149, 37.943817, 19.806353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.231285, 38.156574, 19.712805>,  <40.131516, 38.511169, 19.556892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231285, 38.156574, 19.712805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531780, -0.211001, -0.820176,
		0.809319, 0.411851, 0.418786,
		0.249426, -0.886486, 0.389781,
		40.306114, 37.890629, 19.829739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795368, 38.484451, 19.545464>,  <40.131516, 38.511169, 19.556892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795368, 38.484451, 19.545464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666416, 38.105927, 19.554972>,  <40.589046, 37.878811, 19.560677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.666416, 38.105927, 19.554972>,  <40.795368, 38.484451, 19.545464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666416, 38.105927, 19.554972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644116, -0.237691, -0.727061,
		0.693677, -0.219077, 0.686161,
		-0.322377, -0.946313, 0.023770,
		40.569702, 37.822033, 19.562103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320827, 38.173565, 19.485029>,  <40.795368, 38.484451, 19.545464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320827, 38.173565, 19.485029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.142445, 37.823864, 19.408300>,  <41.035416, 37.614044, 19.362263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.142445, 37.823864, 19.408300>,  <41.320827, 38.173565, 19.485029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142445, 37.823864, 19.408300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565364, -0.109002, -0.817608,
		0.693890, -0.473069, 0.542883,
		-0.445960, -0.874256, -0.191821,
		41.008656, 37.561588, 19.350754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820934, 37.738567, 19.355358>,  <41.320827, 38.173565, 19.485029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820934, 37.738567, 19.355358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514423, 37.541237, 19.190702>,  <41.330517, 37.422840, 19.091909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514423, 37.541237, 19.190702>,  <41.820934, 37.738567, 19.355358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514423, 37.541237, 19.190702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536258, -0.138167, -0.832669,
		0.353903, -0.858800, 0.370426,
		-0.766277, -0.493328, -0.411640,
		41.284542, 37.393238, 19.067211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133675, 37.178379, 19.112829>,  <41.820934, 37.738567, 19.355358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133675, 37.178379, 19.112829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.798542, 37.174217, 18.894499>,  <41.597462, 37.171719, 18.763500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.798542, 37.174217, 18.894499>,  <42.133675, 37.178379, 19.112829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798542, 37.174217, 18.894499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545469, -0.056851, -0.836200,
		-0.022324, -0.998328, 0.053311,
		-0.837833, -0.010412, -0.545826,
		41.547192, 37.171097, 18.730751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265503, 36.624798, 18.459581>,  <42.133675, 37.178379, 19.112829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265503, 36.624798, 18.459581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.985325, 36.891953, 18.358938>,  <41.817219, 37.052246, 18.298552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.985325, 36.891953, 18.358938>,  <42.265503, 36.624798, 18.459581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985325, 36.891953, 18.358938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560621, 0.296712, -0.773089,
		-0.441679, -0.682563, -0.582261,
		-0.700445, 0.667885, -0.251607,
		41.775192, 37.092319, 18.283457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324604, 36.304176, 19.138350>,  <42.265503, 36.624798, 18.459581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324604, 36.304176, 19.138350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245251, 35.933235, 19.011442>,  <42.197639, 35.710670, 18.935297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.245251, 35.933235, 19.011442>,  <42.324604, 36.304176, 19.138350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245251, 35.933235, 19.011442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355334, -0.233630, 0.905072,
		-0.913445, 0.292290, -0.283172,
		-0.198386, -0.927353, -0.317268,
		42.185734, 35.655029, 18.916262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700184, 36.155563, 19.412222>,  <42.324604, 36.304176, 19.138350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700184, 36.155563, 19.412222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.846485, 35.790882, 19.337360>,  <41.934265, 35.572075, 19.292442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.846485, 35.790882, 19.337360>,  <41.700184, 36.155563, 19.412222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846485, 35.790882, 19.337360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256470, -0.292032, 0.921380,
		-0.894678, -0.288997, -0.340635,
		0.365753, -0.911701, -0.187155,
		41.956211, 35.517372, 19.281214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105694, 35.757824, 19.409971>,  <41.700184, 36.155563, 19.412222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105694, 35.757824, 19.409971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436790, 35.546570, 19.485769>,  <41.635448, 35.419815, 19.531248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436790, 35.546570, 19.485769>,  <41.105694, 35.757824, 19.409971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436790, 35.546570, 19.485769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402757, -0.324102, 0.856005,
		-0.390678, -0.784871, -0.480987,
		0.827742, -0.528143, 0.189492,
		41.685112, 35.388126, 19.542618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814957, 35.163494, 19.797384>,  <41.105694, 35.757824, 19.409971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814957, 35.163494, 19.797384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211647, 35.134899, 19.840050>,  <41.449661, 35.117741, 19.865648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.211647, 35.134899, 19.840050>,  <40.814957, 35.163494, 19.797384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211647, 35.134899, 19.840050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128378, -0.534501, 0.835361,
		-0.002708, -0.842139, -0.539254,
		0.991721, -0.071490, 0.106664,
		41.509163, 35.113453, 19.872049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003033, 34.461517, 19.953751>,  <40.814957, 35.163494, 19.797384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003033, 34.461517, 19.953751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336021, 34.652420, 20.066330>,  <41.535816, 34.766960, 20.133877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336021, 34.652420, 20.066330>,  <41.003033, 34.461517, 19.953751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336021, 34.652420, 20.066330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192632, -0.226974, 0.954660,
		0.519500, -0.848945, -0.097015,
		0.832474, 0.477258, 0.281447,
		41.585762, 34.795597, 20.150764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556892, 33.927299, 20.379639>,  <41.003033, 34.461517, 19.953751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556892, 33.927299, 20.379639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611153, 34.311069, 20.478521>,  <41.643707, 34.541332, 20.537851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.611153, 34.311069, 20.478521>,  <41.556892, 33.927299, 20.379639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611153, 34.311069, 20.478521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118693, -0.231980, 0.965452,
		0.983622, -0.160304, 0.082408,
		0.135649, 0.959421, 0.247207,
		41.651848, 34.598896, 20.552683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018410, 33.917313, 20.959864>,  <41.556892, 33.927299, 20.379639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018410, 33.917313, 20.959864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.832565, 34.271519, 20.960552>,  <41.721058, 34.484043, 20.960964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.832565, 34.271519, 20.960552>,  <42.018410, 33.917313, 20.959864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832565, 34.271519, 20.960552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312926, -0.166003, 0.935158,
		0.828380, 0.433946, 0.354227,
		-0.464611, 0.885513, 0.001720,
		41.693184, 34.537174, 20.961069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001202, 33.993340, 21.609470>,  <42.018410, 33.917313, 20.959864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001202, 33.993340, 21.609470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.719700, 34.246311, 21.480005>,  <41.550797, 34.398094, 21.402327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.719700, 34.246311, 21.480005>,  <42.001202, 33.993340, 21.609470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719700, 34.246311, 21.480005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454410, -0.050509, 0.889359,
		0.546111, 0.772968, 0.322929,
		-0.703757, 0.632431, -0.323661,
		41.508572, 34.436039, 21.382906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603855, 34.352776, 21.982679>,  <42.001202, 33.993340, 21.609470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603855, 34.352776, 21.982679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.888741, 34.113400, 22.129440>,  <43.059673, 33.969772, 22.217497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.888741, 34.113400, 22.129440>,  <42.603855, 34.352776, 21.982679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888741, 34.113400, 22.129440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466731, 0.013300, -0.884299,
		0.524324, 0.801054, 0.288785,
		0.712213, -0.598444, 0.366903,
		43.102406, 33.933865, 22.239511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309441, 34.580605, 21.723307>,  <42.603855, 34.352776, 21.982679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309441, 34.580605, 21.723307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368202, 34.206245, 21.851376>,  <43.403458, 33.981628, 21.928217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.368202, 34.206245, 21.851376>,  <43.309441, 34.580605, 21.723307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368202, 34.206245, 21.851376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482114, -0.214884, -0.849347,
		0.863704, 0.279132, 0.419643,
		0.146905, -0.935901, 0.320170,
		43.412273, 33.925476, 21.947426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870552, 34.540028, 21.539595>,  <43.309441, 34.580605, 21.723307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870552, 34.540028, 21.539595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.766460, 34.155914, 21.579868>,  <43.704006, 33.925446, 21.604033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.766460, 34.155914, 21.579868>,  <43.870552, 34.540028, 21.539595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766460, 34.155914, 21.579868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497046, -0.222627, -0.838679,
		0.827784, -0.168204, 0.535239,
		-0.260228, -0.960284, 0.100682,
		43.688393, 33.867828, 21.610073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413406, 34.169228, 21.427153>,  <43.870552, 34.540028, 21.539595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413406, 34.169228, 21.427153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.113842, 33.915306, 21.351101>,  <43.934101, 33.762951, 21.305470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.113842, 33.915306, 21.351101>,  <44.413406, 34.169228, 21.427153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113842, 33.915306, 21.351101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498800, -0.351127, -0.792407,
		0.436266, -0.688281, 0.579605,
		-0.748913, -0.634807, -0.190130,
		43.889168, 33.724865, 21.294062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659042, 33.442055, 21.261856>,  <44.413406, 34.169228, 21.427153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659042, 33.442055, 21.261856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.292763, 33.454075, 21.101561>,  <44.072994, 33.461288, 21.005384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.292763, 33.454075, 21.101561>,  <44.659042, 33.442055, 21.261856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292763, 33.454075, 21.101561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369011, -0.332011, -0.868101,
		-0.159134, -0.942797, 0.292935,
		-0.915701, 0.030049, -0.400736,
		44.018051, 33.463089, 20.981340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.684166, 32.847980, 20.706860>,  <44.659042, 33.442055, 21.261856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.684166, 32.847980, 20.706860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.380028, 33.084957, 20.600365>,  <44.197544, 33.227142, 20.536469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.380028, 33.084957, 20.600365>,  <44.684166, 32.847980, 20.706860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380028, 33.084957, 20.600365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171506, -0.212221, -0.962054,
		-0.626466, -0.777155, 0.059753,
		-0.760346, 0.592446, -0.266236,
		44.151924, 33.262691, 20.520494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273136, 32.369190, 20.304523>,  <44.684166, 32.847980, 20.706860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273136, 32.369190, 20.304523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.142956, 32.731705, 20.196659>,  <44.064846, 32.949215, 20.131941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.142956, 32.731705, 20.196659>,  <44.273136, 32.369190, 20.304523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142956, 32.731705, 20.196659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062296, -0.264017, -0.962504,
		-0.943503, -0.330051, 0.029468,
		-0.325455, 0.906290, -0.269661,
		44.045319, 33.003593, 20.115761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870716, 32.177082, 19.731585>,  <44.273136, 32.369190, 20.304523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870716, 32.177082, 19.731585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.912464, 32.572327, 19.686420>,  <43.937511, 32.809471, 19.659321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.912464, 32.572327, 19.686420>,  <43.870716, 32.177082, 19.731585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912464, 32.572327, 19.686420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122005, -0.125394, -0.984577,
		-0.987027, 0.088982, -0.133641,
		0.104367, 0.988109, -0.112911,
		43.943775, 32.868759, 19.652548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379044, 32.418858, 19.204351>,  <43.870716, 32.177082, 19.731585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379044, 32.418858, 19.204351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.698208, 32.658260, 19.232985>,  <43.889706, 32.801903, 19.250164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.698208, 32.658260, 19.232985>,  <43.379044, 32.418858, 19.204351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698208, 32.658260, 19.232985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320947, -0.321326, -0.890922,
		-0.510222, 0.733853, -0.448479,
		0.797914, 0.598506, 0.071581,
		43.937584, 32.837811, 19.254459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.466431, 35.766968, 33.948769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831226, 35.930801, 33.939697>,  <39.050102, 36.029102, 33.934254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.831226, 35.930801, 33.939697>,  <38.466431, 35.766968, 33.948769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831226, 35.930801, 33.939697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227304, -0.550590, -0.803233,
		-0.341482, 0.727384, -0.595233,
		0.911988, 0.409588, -0.022679,
		39.104824, 36.053677, 33.932892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674374, 36.008553, 33.221184>,  <38.466431, 35.766968, 33.948769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674374, 36.008553, 33.221184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.997540, 35.914997, 33.437542>,  <39.191441, 35.858864, 33.567356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.997540, 35.914997, 33.437542>,  <38.674374, 36.008553, 33.221184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997540, 35.914997, 33.437542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361204, -0.528688, -0.768128,
		0.465621, 0.815956, -0.342654,
		0.807916, -0.233889, 0.540895,
		39.239914, 35.844830, 33.599812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186127, 36.030449, 32.816505>,  <38.674374, 36.008553, 33.221184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186127, 36.030449, 32.816505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369240, 35.817116, 33.101040>,  <39.479107, 35.689117, 33.271759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.369240, 35.817116, 33.101040>,  <39.186127, 36.030449, 32.816505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369240, 35.817116, 33.101040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456905, -0.545223, -0.702830,
		0.762677, 0.646752, -0.005909,
		0.457778, -0.533333, 0.711333,
		39.506573, 35.657116, 33.314442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841393, 35.908653, 32.545635>,  <39.186127, 36.030449, 32.816505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841393, 35.908653, 32.545635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785469, 35.641945, 32.838451>,  <39.751915, 35.481922, 33.014141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785469, 35.641945, 32.838451>,  <39.841393, 35.908653, 32.545635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785469, 35.641945, 32.838451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349563, -0.724930, -0.593533,
		0.926423, 0.172913, 0.334427,
		-0.139807, -0.666766, 0.732036,
		39.743526, 35.441914, 33.058064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458645, 35.534863, 32.549618>,  <39.841393, 35.908653, 32.545635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458645, 35.534863, 32.549618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.177498, 35.304077, 32.716030>,  <40.008808, 35.165604, 32.815880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.177498, 35.304077, 32.716030>,  <40.458645, 35.534863, 32.549618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177498, 35.304077, 32.716030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282473, -0.763181, -0.581175,
		0.652827, -0.290972, 0.699394,
		-0.702870, -0.576966, 0.416033,
		39.966637, 35.130989, 32.840839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733322, 34.939354, 32.572758>,  <40.458645, 35.534863, 32.549618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733322, 34.939354, 32.572758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345512, 34.846371, 32.603699>,  <40.112827, 34.790581, 32.622265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345512, 34.846371, 32.603699>,  <40.733322, 34.939354, 32.572758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345512, 34.846371, 32.603699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121450, -0.730250, -0.672298,
		0.212767, -0.642416, 0.736228,
		-0.969526, -0.232457, 0.077352,
		40.054653, 34.776634, 32.626904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734982, 34.185772, 32.630131>,  <40.733322, 34.939354, 32.572758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734982, 34.185772, 32.630131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388653, 34.322773, 32.484230>,  <40.180855, 34.404972, 32.396690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388653, 34.322773, 32.484230>,  <40.734982, 34.185772, 32.630131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388653, 34.322773, 32.484230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093603, -0.605245, -0.790517,
		-0.491511, -0.718591, 0.491978,
		-0.865826, 0.342497, -0.364747,
		40.128906, 34.425522, 32.374805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481392, 33.604038, 32.233753>,  <40.734982, 34.185772, 32.630131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481392, 33.604038, 32.233753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228569, 33.899498, 32.140030>,  <40.076878, 34.076775, 32.083797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.228569, 33.899498, 32.140030>,  <40.481392, 33.604038, 32.233753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228569, 33.899498, 32.140030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005607, -0.297995, -0.954551,
		-0.774904, -0.604642, 0.184207,
		-0.632055, 0.738652, -0.234307,
		40.038952, 34.121094, 32.069736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874195, 33.202721, 32.026520>,  <40.481392, 33.604038, 32.233753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874195, 33.202721, 32.026520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.898502, 33.571831, 31.874313>,  <39.913086, 33.793297, 31.782990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.898502, 33.571831, 31.874313>,  <39.874195, 33.202721, 32.026520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898502, 33.571831, 31.874313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021860, -0.382359, -0.923755,
		-0.997913, 0.047815, -0.043406,
		0.060766, 0.922776, -0.380515,
		39.916733, 33.848663, 31.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609314, 33.109840, 31.405449>,  <39.874195, 33.202721, 32.026520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609314, 33.109840, 31.405449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711109, 33.487480, 31.321625>,  <39.772186, 33.714066, 31.271330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711109, 33.487480, 31.321625>,  <39.609314, 33.109840, 31.405449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711109, 33.487480, 31.321625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227580, -0.269075, -0.935845,
		-0.939917, 0.190466, -0.283333,
		0.254485, 0.944098, -0.209562,
		39.787453, 33.770710, 31.258757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154217, 33.385792, 30.903759>,  <39.609314, 33.109840, 31.405449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154217, 33.385792, 30.903759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518887, 33.550037, 30.897425>,  <39.737686, 33.648586, 30.893623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518887, 33.550037, 30.897425>,  <39.154217, 33.385792, 30.903759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518887, 33.550037, 30.897425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010873, -0.014420, -0.999837,
		-0.410774, 0.911696, -0.008682,
		0.911672, 0.410613, -0.015836,
		39.792389, 33.673222, 30.892673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125084, 33.754631, 30.263529>,  <39.154217, 33.385792, 30.903759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125084, 33.754631, 30.263529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519794, 33.739731, 30.326637>,  <39.756618, 33.730793, 30.364502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519794, 33.739731, 30.326637>,  <39.125084, 33.754631, 30.263529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519794, 33.739731, 30.326637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152265, -0.121033, -0.980901,
		0.055632, 0.991950, -0.113760,
		0.986773, -0.037248, 0.157773,
		39.815826, 33.728558, 30.373970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878567, 34.444607, 30.100985>,  <39.125084, 33.754631, 30.263529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878567, 34.444607, 30.100985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552364, 34.542419, 29.891165>,  <38.356644, 34.601109, 29.765272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552364, 34.542419, 29.891165>,  <38.878567, 34.444607, 30.100985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552364, 34.542419, 29.891165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499751, 0.159581, 0.851342,
		0.291891, 0.956419, -0.007932,
		-0.815505, 0.244535, -0.524552,
		38.307713, 34.615780, 29.733799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649284, 35.181709, 30.331354>,  <38.878567, 34.444607, 30.100985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649284, 35.181709, 30.331354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321457, 35.031071, 30.158623>,  <38.124760, 34.940689, 30.054983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.321457, 35.031071, 30.158623>,  <38.649284, 35.181709, 30.331354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321457, 35.031071, 30.158623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543500, 0.272349, 0.793999,
		-0.181410, 0.885438, -0.427891,
		-0.819572, -0.376598, -0.431829,
		38.075584, 34.918091, 30.029074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134045, 35.676838, 30.444582>,  <38.649284, 35.181709, 30.331354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134045, 35.676838, 30.444582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908646, 35.353916, 30.374454>,  <37.773407, 35.160164, 30.332378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908646, 35.353916, 30.374454>,  <38.134045, 35.676838, 30.444582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908646, 35.353916, 30.374454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652569, 0.304846, 0.693703,
		-0.506582, 0.505306, -0.698599,
		-0.563497, -0.807301, -0.175317,
		37.739597, 35.111725, 30.321859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523998, 35.825893, 30.180464>,  <38.134045, 35.676838, 30.444582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523998, 35.825893, 30.180464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475266, 35.484379, 30.382933>,  <37.446026, 35.279472, 30.504414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475266, 35.484379, 30.382933>,  <37.523998, 35.825893, 30.180464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475266, 35.484379, 30.382933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678872, 0.443709, 0.585026,
		-0.724079, -0.272353, -0.633667,
		-0.121830, -0.853784, 0.506173,
		37.438717, 35.228245, 30.534784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811638, 35.691372, 30.188332>,  <37.523998, 35.825893, 30.180464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811638, 35.691372, 30.188332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907600, 35.400970, 30.446127>,  <36.965176, 35.226730, 30.600805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.907600, 35.400970, 30.446127>,  <36.811638, 35.691372, 30.188332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907600, 35.400970, 30.446127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701445, 0.329323, 0.632077,
		-0.671135, -0.603712, -0.430245,
		0.239903, -0.726002, 0.644490,
		36.979572, 35.183170, 30.639475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183949, 35.363430, 30.301481>,  <36.811638, 35.691372, 30.188332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183949, 35.363430, 30.301481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430546, 35.287403, 30.607111>,  <36.578503, 35.241787, 30.790489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430546, 35.287403, 30.607111>,  <36.183949, 35.363430, 30.301481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430546, 35.287403, 30.607111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743108, 0.180296, 0.644425,
		-0.260243, -0.965074, -0.030088,
		0.616493, -0.190066, 0.764075,
		36.615494, 35.230385, 30.836334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792866, 34.897694, 30.784115>,  <36.183949, 35.363430, 30.301481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792866, 34.897694, 30.784115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074959, 35.066586, 31.011927>,  <36.244213, 35.167923, 31.148613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074959, 35.066586, 31.011927>,  <35.792866, 34.897694, 30.784115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074959, 35.066586, 31.011927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692974, 0.240818, 0.679554,
		0.149776, -0.873915, 0.462429,
		0.705234, 0.422232, 0.569531,
		36.286530, 35.193256, 31.182785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631882, 34.700619, 31.544224>,  <35.792866, 34.897694, 30.784115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631882, 34.700619, 31.544224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862808, 35.026100, 31.571321>,  <36.001366, 35.221390, 31.587580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862808, 35.026100, 31.571321>,  <35.631882, 34.700619, 31.544224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862808, 35.026100, 31.571321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420067, 0.224837, 0.879200,
		0.700176, -0.536036, 0.471612,
		0.577319, 0.813704, 0.067746,
		36.036003, 35.270210, 31.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658737, 34.726307, 32.209145>,  <35.631882, 34.700619, 31.544224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658737, 34.726307, 32.209145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781616, 35.085567, 32.083321>,  <35.855343, 35.301125, 32.007824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781616, 35.085567, 32.083321>,  <35.658737, 34.726307, 32.209145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781616, 35.085567, 32.083321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515571, 0.434909, 0.738269,
		0.799885, -0.064616, 0.596665,
		0.307199, 0.898153, -0.314563,
		35.873775, 35.355015, 31.988953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990269, 35.013779, 32.795906>,  <35.658737, 34.726307, 32.209145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990269, 35.013779, 32.795906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894051, 35.304367, 32.538418>,  <35.836319, 35.478722, 32.383926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.894051, 35.304367, 32.538418>,  <35.990269, 35.013779, 32.795906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894051, 35.304367, 32.538418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338133, 0.558933, 0.757139,
		0.909838, 0.399788, 0.111197,
		-0.240543, 0.726473, -0.643721,
		35.821888, 35.522308, 32.345303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195168, 35.751572, 33.137760>,  <35.990269, 35.013779, 32.795906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195168, 35.751572, 33.137760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895855, 35.818661, 32.881027>,  <35.716267, 35.858913, 32.726990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895855, 35.818661, 32.881027>,  <36.195168, 35.751572, 33.137760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895855, 35.818661, 32.881027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449754, 0.582945, 0.676680,
		0.487644, 0.795012, -0.360775,
		-0.748281, 0.167719, -0.641830,
		35.671371, 35.868977, 32.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011997, 36.400150, 33.352463>,  <36.195168, 35.751572, 33.137760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011997, 36.400150, 33.352463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712334, 36.287067, 33.112850>,  <35.532536, 36.219219, 32.969082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712334, 36.287067, 33.112850>,  <36.011997, 36.400150, 33.352463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712334, 36.287067, 33.112850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638933, 0.546952, 0.540933,
		0.174716, 0.787986, -0.590384,
		-0.749159, -0.282706, -0.599031,
		35.487587, 36.202255, 32.933140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737911, 36.999565, 33.341282>,  <36.011997, 36.400150, 33.352463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737911, 36.999565, 33.341282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460590, 36.741783, 33.212280>,  <35.294197, 36.587112, 33.134880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.460590, 36.741783, 33.212280>,  <35.737911, 36.999565, 33.341282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460590, 36.741783, 33.212280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632071, 0.328838, 0.701678,
		-0.346152, 0.690317, -0.635327,
		-0.693300, -0.644459, -0.322502,
		35.252602, 36.548447, 33.115528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154171, 37.365314, 33.102222>,  <35.737911, 36.999565, 33.341282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154171, 37.365314, 33.102222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030903, 36.998417, 33.203171>,  <34.956944, 36.778278, 33.263741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.030903, 36.998417, 33.203171>,  <35.154171, 37.365314, 33.102222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030903, 36.998417, 33.203171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686189, 0.398054, 0.608849,
		-0.658922, 0.014454, -0.752072,
		-0.308166, -0.917248, 0.252368,
		34.938454, 36.723244, 33.278881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466602, 38.067928, 33.019569>,  <35.154171, 37.365314, 33.102222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466602, 38.067928, 33.019569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126629, 38.199581, 33.184147>,  <34.922646, 38.278572, 33.282894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126629, 38.199581, 33.184147>,  <35.466602, 38.067928, 33.019569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126629, 38.199581, 33.184147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501112, -0.263680, -0.824233,
		-0.162795, -0.906721, 0.389043,
		-0.849932, 0.329135, 0.411443,
		34.871651, 38.298321, 33.307579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267647, 38.172661, 32.265076>,  <35.466602, 38.067928, 33.019569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267647, 38.172661, 32.265076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634060, 38.312363, 32.343971>,  <35.853909, 38.396183, 32.391308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634060, 38.312363, 32.343971>,  <35.267647, 38.172661, 32.265076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634060, 38.312363, 32.343971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299120, -0.267224, -0.916034,
		-0.267224, 0.898115, -0.349256,
		0.916034, 0.349256, 0.197236,
		35.908871, 38.417141, 32.403141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471394, 38.632355, 31.769735>,  <35.267647, 38.172661, 32.265076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471394, 38.632355, 31.769735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834919, 38.557835, 31.919050>,  <36.053036, 38.513123, 32.008640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.834919, 38.557835, 31.919050>,  <35.471394, 38.632355, 31.769735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834919, 38.557835, 31.919050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386970, 0.042069, -0.921132,
		0.155901, 0.981592, 0.110324,
		0.908818, -0.186298, 0.373288,
		36.107563, 38.501945, 32.031036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900734, 39.184612, 31.482471>,  <35.471394, 38.632355, 31.769735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900734, 39.184612, 31.482471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151005, 38.889767, 31.584595>,  <36.301167, 38.712860, 31.645868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151005, 38.889767, 31.584595>,  <35.900734, 39.184612, 31.482471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151005, 38.889767, 31.584595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446011, 0.069519, -0.892323,
		0.639997, 0.672181, 0.372259,
		0.625682, -0.737116, 0.255308,
		36.338711, 38.668633, 31.661186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538776, 39.389172, 31.170673>,  <35.900734, 39.184612, 31.482471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538776, 39.389172, 31.170673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581623, 39.002613, 31.264139>,  <36.607330, 38.770676, 31.320219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581623, 39.002613, 31.264139>,  <36.538776, 39.389172, 31.170673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581623, 39.002613, 31.264139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438434, -0.165022, -0.883484,
		0.892357, 0.197084, 0.406025,
		0.107118, -0.966398, 0.233667,
		36.613758, 38.712692, 31.334240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239582, 39.184216, 30.952316>,  <36.538776, 39.389172, 31.170673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239582, 39.184216, 30.952316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050774, 38.833626, 30.990244>,  <36.937489, 38.623272, 31.013000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050774, 38.833626, 30.990244>,  <37.239582, 39.184216, 30.952316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050774, 38.833626, 30.990244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350125, -0.285087, -0.892266,
		0.809078, -0.387972, 0.441442,
		-0.472023, -0.876472, 0.094819,
		36.909168, 38.570683, 31.018690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637688, 38.707047, 30.506680>,  <37.239582, 39.184216, 30.952316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637688, 38.707047, 30.506680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302818, 38.500595, 30.579063>,  <37.101894, 38.376724, 30.622494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302818, 38.500595, 30.579063>,  <37.637688, 38.707047, 30.506680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302818, 38.500595, 30.579063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234398, -0.637515, -0.733916,
		0.494161, -0.572000, 0.654691,
		-0.837175, -0.516131, 0.180959,
		37.051666, 38.345757, 30.633350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755356, 37.892700, 30.577730>,  <37.637688, 38.707047, 30.506680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755356, 37.892700, 30.577730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381096, 37.964592, 30.456232>,  <37.156540, 38.007729, 30.383333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381096, 37.964592, 30.456232>,  <37.755356, 37.892700, 30.577730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381096, 37.964592, 30.456232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092602, -0.705456, -0.702678,
		-0.340571, -0.685586, 0.643415,
		-0.935648, 0.179730, -0.303745,
		37.100403, 38.018513, 30.365108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619656, 37.193630, 30.378946>,  <37.755356, 37.892700, 30.577730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619656, 37.193630, 30.378946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341984, 37.436008, 30.223536>,  <37.175381, 37.581436, 30.130289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341984, 37.436008, 30.223536>,  <37.619656, 37.193630, 30.378946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341984, 37.436008, 30.223536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024731, -0.519369, -0.854192,
		-0.719380, -0.602568, 0.345548,
		-0.694176, 0.605943, -0.388526,
		37.133732, 37.617790, 30.106977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227219, 36.773052, 29.911129>,  <37.619656, 37.193630, 30.378946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227219, 36.773052, 29.911129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103695, 37.126949, 29.771486>,  <37.029579, 37.339287, 29.687700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103695, 37.126949, 29.771486>,  <37.227219, 36.773052, 29.911129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103695, 37.126949, 29.771486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193250, -0.417754, -0.887770,
		-0.931285, -0.206687, 0.299981,
		-0.308809, 0.884739, -0.349106,
		37.011051, 37.392372, 29.666754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708130, 36.618164, 29.313309>,  <37.227219, 36.773052, 29.911129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708130, 36.618164, 29.313309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804680, 37.004513, 29.275743>,  <36.862610, 37.236324, 29.253204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804680, 37.004513, 29.275743>,  <36.708130, 36.618164, 29.313309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804680, 37.004513, 29.275743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057645, -0.082332, -0.994936,
		-0.968718, 0.245569, 0.035804,
		0.241378, 0.965876, -0.093912,
		36.877094, 37.294277, 29.247570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191040, 36.914619, 28.777651>,  <36.708130, 36.618164, 29.313309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191040, 36.914619, 28.777651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528248, 37.129349, 28.791121>,  <36.730572, 37.258186, 28.799202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528248, 37.129349, 28.791121>,  <36.191040, 36.914619, 28.777651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528248, 37.129349, 28.791121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141117, -0.160327, -0.976924,
		-0.519041, 0.828319, -0.210915,
		0.843020, 0.536827, 0.033674,
		36.781155, 37.290398, 28.801222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138077, 37.380867, 28.187973>,  <36.191040, 36.914619, 28.777651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138077, 37.380867, 28.187973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519711, 37.337242, 28.299559>,  <36.748692, 37.311069, 28.366510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519711, 37.337242, 28.299559>,  <36.138077, 37.380867, 28.187973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519711, 37.337242, 28.299559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282811, 0.021244, -0.958940,
		0.098655, 0.993808, 0.051112,
		0.954089, -0.109059, 0.278964,
		36.805939, 37.304523, 28.383247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438824, 37.685993, 27.637297>,  <36.138077, 37.380867, 28.187973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438824, 37.685993, 27.637297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745941, 37.502213, 27.815916>,  <36.930210, 37.391945, 27.923088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745941, 37.502213, 27.815916>,  <36.438824, 37.685993, 27.637297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745941, 37.502213, 27.815916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466610, -0.076636, -0.881137,
		0.439058, 0.884893, 0.155542,
		0.767791, -0.459448, 0.446547,
		36.976280, 37.364380, 27.949881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007645, 38.002167, 27.345804>,  <36.438824, 37.685993, 27.637297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007645, 38.002167, 27.345804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129139, 37.643143, 27.473639>,  <37.202034, 37.427731, 27.550339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129139, 37.643143, 27.473639>,  <37.007645, 38.002167, 27.345804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129139, 37.643143, 27.473639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601048, -0.079752, -0.795224,
		0.739247, 0.433623, 0.515252,
		0.303735, -0.897558, 0.319585,
		37.220261, 37.373875, 27.569513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740654, 38.071365, 27.358370>,  <37.007645, 38.002167, 27.345804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740654, 38.071365, 27.358370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656582, 37.680477, 27.346571>,  <37.606140, 37.445946, 27.339491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656582, 37.680477, 27.346571>,  <37.740654, 38.071365, 27.358370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656582, 37.680477, 27.346571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611407, -0.107836, -0.783934,
		0.762894, -0.182800, 0.620143,
		-0.210177, -0.977218, -0.029498,
		37.593529, 37.387310, 27.337721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415459, 37.753399, 27.455545>,  <37.740654, 38.071365, 27.358370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415459, 37.753399, 27.455545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162956, 37.519043, 27.252270>,  <38.011456, 37.378429, 27.130304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162956, 37.519043, 27.252270>,  <38.415459, 37.753399, 27.455545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162956, 37.519043, 27.252270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591656, 0.059877, -0.803964,
		0.501463, -0.808176, 0.308847,
		-0.631251, -0.585889, -0.508188,
		37.973579, 37.343277, 27.099813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813702, 37.229729, 27.310389>,  <38.415459, 37.753399, 27.455545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813702, 37.229729, 27.310389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505054, 37.188362, 27.059338>,  <38.319866, 37.163544, 26.908707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.505054, 37.188362, 27.059338>,  <38.813702, 37.229729, 27.310389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505054, 37.188362, 27.059338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631107, -0.001182, -0.775695,
		0.079477, -0.994637, 0.066178,
		-0.771613, -0.103415, -0.627629,
		38.273571, 37.157337, 26.871050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018810, 36.672199, 26.821871>,  <38.813702, 37.229729, 27.310389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018810, 36.672199, 26.821871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.719681, 36.855648, 26.629858>,  <38.540203, 36.965717, 26.514650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.719681, 36.855648, 26.629858>,  <39.018810, 36.672199, 26.821871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719681, 36.855648, 26.629858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547671, 0.017467, -0.836511,
		-0.375256, -0.888461, -0.264235,
		-0.747823, 0.458620, -0.480030,
		38.495335, 36.993233, 26.485849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885956, 36.308563, 26.207651>,  <39.018810, 36.672199, 26.821871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885956, 36.308563, 26.207651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739151, 36.678856, 26.171169>,  <38.651066, 36.901031, 26.149281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739151, 36.678856, 26.171169>,  <38.885956, 36.308563, 26.207651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739151, 36.678856, 26.171169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254908, 0.005797, -0.966948,
		-0.894607, -0.378133, -0.238105,
		-0.367016, 0.925733, -0.091203,
		38.629047, 36.956577, 26.143808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562363, 36.257523, 25.547470>,  <38.885956, 36.308563, 26.207651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562363, 36.257523, 25.547470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640148, 36.645679, 25.604769>,  <38.686821, 36.878574, 25.639149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640148, 36.645679, 25.604769>,  <38.562363, 36.257523, 25.547470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640148, 36.645679, 25.604769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386849, 0.058331, -0.920297,
		-0.901406, 0.234379, -0.364053,
		0.194462, 0.970394, 0.143249,
		38.698486, 36.936798, 25.647743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199924, 36.543015, 24.887318>,  <38.562363, 36.257523, 25.547470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199924, 36.543015, 24.887318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427986, 36.838284, 25.031553>,  <38.564823, 37.015446, 25.118095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427986, 36.838284, 25.031553>,  <38.199924, 36.543015, 24.887318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427986, 36.838284, 25.031553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191956, 0.307069, -0.932128,
		-0.798800, 0.600670, 0.033378,
		0.570151, 0.738176, 0.360589,
		38.599030, 37.059738, 25.139730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978634, 37.095955, 24.592920>,  <38.199924, 36.543015, 24.887318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978634, 37.095955, 24.592920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348801, 37.192646, 24.709652>,  <38.570900, 37.250660, 24.779692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348801, 37.192646, 24.709652>,  <37.978634, 37.095955, 24.592920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348801, 37.192646, 24.709652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209226, 0.316150, -0.925350,
		-0.315945, 0.917396, 0.241996,
		0.925421, 0.241728, 0.291829,
		38.626427, 37.265163, 24.797201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053844, 37.750568, 24.336662>,  <37.978634, 37.095955, 24.592920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053844, 37.750568, 24.336662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426292, 37.610527, 24.377541>,  <38.649761, 37.526505, 24.402067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426292, 37.610527, 24.377541>,  <38.053844, 37.750568, 24.336662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426292, 37.610527, 24.377541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192038, 0.232418, -0.953469,
		0.310057, 0.907421, 0.283641,
		0.931121, -0.350100, 0.102196,
		38.705627, 37.505497, 24.408199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461533, 38.186749, 23.970276>,  <38.053844, 37.750568, 24.336662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461533, 38.186749, 23.970276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690136, 37.860184, 24.003372>,  <38.827297, 37.664246, 24.023230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690136, 37.860184, 24.003372>,  <38.461533, 38.186749, 23.970276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690136, 37.860184, 24.003372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302982, 0.116230, -0.945882,
		0.762613, 0.565650, 0.313785,
		0.571509, -0.816413, 0.082743,
		38.861588, 37.615261, 24.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067680, 38.478554, 23.653276>,  <38.461533, 38.186749, 23.970276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067680, 38.478554, 23.653276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119133, 38.081882, 23.655657>,  <39.150005, 37.843880, 23.657085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.119133, 38.081882, 23.655657>,  <39.067680, 38.478554, 23.653276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119133, 38.081882, 23.655657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478688, 0.056837, -0.876144,
		0.868511, 0.115552, 0.482014,
		0.128636, -0.991674, 0.005950,
		39.157722, 37.784382, 23.657442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785595, 38.397800, 23.730686>,  <39.067680, 38.478554, 23.653276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785595, 38.397800, 23.730686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615517, 38.079041, 23.559032>,  <39.513470, 37.887783, 23.456039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.615517, 38.079041, 23.559032>,  <39.785595, 38.397800, 23.730686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615517, 38.079041, 23.559032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470183, 0.210658, -0.857060,
		0.773391, -0.566193, 0.285117,
		-0.425199, -0.796900, -0.429135,
		39.487957, 37.839970, 23.430292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313015, 38.043766, 23.436928>,  <39.785595, 38.397800, 23.730686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313015, 38.043766, 23.436928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993538, 37.915211, 23.233437>,  <39.801853, 37.838078, 23.111341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993538, 37.915211, 23.233437>,  <40.313015, 38.043766, 23.436928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993538, 37.915211, 23.233437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485877, 0.154313, -0.860297,
		0.354993, -0.934290, 0.032907,
		-0.798688, -0.321388, -0.508730,
		39.753933, 37.818794, 23.080818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666523, 38.016102, 24.029907>,  <40.313015, 38.043766, 23.436928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666523, 38.016102, 24.029907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035862, 38.162086, 24.077629>,  <41.257465, 38.249676, 24.106262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035862, 38.162086, 24.077629>,  <40.666523, 38.016102, 24.029907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035862, 38.162086, 24.077629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162977, 0.091177, 0.982408,
		0.347664, -0.926547, 0.143668,
		0.923347, 0.364962, 0.119307,
		41.312866, 38.271576, 24.113420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060925, 37.630974, 24.597795>,  <40.666523, 38.016102, 24.029907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060925, 37.630974, 24.597795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215572, 37.996876, 24.550907>,  <41.308361, 38.216419, 24.522774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215572, 37.996876, 24.550907>,  <41.060925, 37.630974, 24.597795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215572, 37.996876, 24.550907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118915, 0.175492, 0.977272,
		0.914539, -0.363897, 0.176628,
		0.386623, 0.914757, -0.117222,
		41.331558, 38.271301, 24.515741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631424, 37.729198, 25.133799>,  <41.060925, 37.630974, 24.597795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631424, 37.729198, 25.133799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523033, 38.098438, 25.024652>,  <41.458000, 38.319984, 24.959164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523033, 38.098438, 25.024652>,  <41.631424, 37.729198, 25.133799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523033, 38.098438, 25.024652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135510, 0.244068, 0.960244,
		0.953001, 0.297176, 0.058954,
		-0.270973, 0.923102, -0.272867,
		41.441742, 38.375370, 24.942793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065178, 38.161053, 25.481092>,  <41.631424, 37.729198, 25.133799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065178, 38.161053, 25.481092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.746883, 38.371765, 25.361557>,  <41.555904, 38.498192, 25.289837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.746883, 38.371765, 25.361557>,  <42.065178, 38.161053, 25.481092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746883, 38.371765, 25.361557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000432, 0.492931, 0.870068,
		0.605640, 0.692476, -0.392017,
		-0.795739, 0.526779, -0.298838,
		41.508163, 38.529800, 25.271906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206898, 38.809189, 25.693626>,  <42.065178, 38.161053, 25.481092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206898, 38.809189, 25.693626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809475, 38.810028, 25.648310>,  <41.571022, 38.810532, 25.621119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.809475, 38.810028, 25.648310>,  <42.206898, 38.809189, 25.693626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809475, 38.810028, 25.648310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102172, 0.415732, 0.903730,
		0.048996, 0.909485, -0.412840,
		-0.993559, 0.002099, -0.113293,
		41.511406, 38.810658, 25.614323>
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
