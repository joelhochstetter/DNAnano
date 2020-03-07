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
	<2.084470, 2.292434, 3.618562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.275093, 2.225746, 3.963838>,  <2.389467, 2.185733, 4.171003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.275093, 2.225746, 3.963838>,  <2.084470, 2.292434, 3.618562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.275093, 2.225746, 3.963838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878895, 0.113687, -0.463270,
		-0.020897, 0.979428, 0.200709,
		0.476557, -0.166721, 0.863190,
		2.418060, 2.175730, 4.222795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.516028, 2.928396, 3.741149>,  <2.084470, 2.292434, 3.618562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.516028, 2.928396, 3.741149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.674522, 2.602600, 3.910667>,  <2.769619, 2.407122, 4.012378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.674522, 2.602600, 3.910667>,  <2.516028, 2.928396, 3.741149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.674522, 2.602600, 3.910667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789760, 0.066940, -0.609752,
		0.468269, 0.576302, 0.669776,
		0.396236, -0.814491, 0.423795,
		2.793393, 2.358253, 4.037805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.237032, 2.994628, 3.943847>,  <2.516028, 2.928396, 3.741149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.237032, 2.994628, 3.943847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.207539, 2.604233, 3.861863>,  <3.189843, 2.369995, 3.812672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.207539, 2.604233, 3.861863>,  <3.237032, 2.994628, 3.943847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.207539, 2.604233, 3.861863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693643, 0.097475, -0.713693,
		0.716535, -0.194792, 0.669801,
		-0.073732, -0.975989, -0.204960,
		3.185419, 2.311436, 3.800375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.815546, 2.704139, 3.928227>,  <3.237032, 2.994628, 3.943847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.815546, 2.704139, 3.928227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.619476, 2.453079, 3.686306>,  <3.501835, 2.302443, 3.541154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.619476, 2.453079, 3.686306>,  <3.815546, 2.704139, 3.928227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.619476, 2.453079, 3.686306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809736, -0.071112, -0.582469,
		0.322579, -0.775240, 0.543088,
		-0.490174, -0.627651, -0.604801,
		3.472424, 2.264784, 3.504866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.307395, 2.150570, 3.775349>,  <3.815546, 2.704139, 3.928227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.307395, 2.150570, 3.775349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040306, 2.198029, 3.481391>,  <3.880053, 2.226504, 3.305017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.040306, 2.198029, 3.481391>,  <4.307395, 2.150570, 3.775349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040306, 2.198029, 3.481391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740746, 0.008071, -0.671737,
		-0.073769, -0.992904, -0.093277,
		-0.667723, 0.118647, -0.734894,
		3.839989, 2.233623, 3.260923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.355118, 1.588585, 3.399198>,  <4.307395, 2.150570, 3.775349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.355118, 1.588585, 3.399198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.216816, 1.860985, 3.140991>,  <4.133834, 2.024425, 2.986067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.216816, 1.860985, 3.140991>,  <4.355118, 1.588585, 3.399198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.216816, 1.860985, 3.140991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826051, -0.105403, -0.553651,
		-0.445075, -0.724659, -0.526097,
		-0.345756, 0.680999, -0.645517,
		4.113089, 2.065285, 2.947335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.481276, 1.312074, 2.707181>,  <4.355118, 1.588585, 3.399198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.481276, 1.312074, 2.707181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432835, 1.707184, 2.667917>,  <4.403770, 1.944250, 2.644359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432835, 1.707184, 2.667917>,  <4.481276, 1.312074, 2.707181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.432835, 1.707184, 2.667917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675883, 0.009631, -0.736945,
		-0.726991, -0.155590, -0.668787,
		-0.121102, 0.987775, -0.098159,
		4.396504, 2.003516, 2.638469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.407619, 1.538694, 1.997663>,  <4.481276, 1.312074, 2.707181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.407619, 1.538694, 1.997663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576519, 1.843651, 2.193811>,  <4.677859, 2.026625, 2.311500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.576519, 1.843651, 2.193811>,  <4.407619, 1.538694, 1.997663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.576519, 1.843651, 2.193811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768130, -0.013685, -0.640148,
		-0.481333, 0.646970, -0.591395,
		0.422250, 0.762393, 0.490370,
		4.703194, 2.072369, 2.340922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.736214, 1.981153, 1.923608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.749741, 2.379715, 1.892541>,  <5.757857, 2.618852, 1.873901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.749741, 2.379715, 1.892541>,  <5.736214, 1.981153, 1.923608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.749741, 2.379715, 1.892541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918429, 0.061629, 0.390755,
		0.394137, 0.058118, 0.917212,
		0.033817, 0.996406, -0.077667,
		5.759886, 2.678637, 1.869241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.740828, 2.391512, 2.685501>,  <5.736214, 1.981153, 1.923608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.740828, 2.391512, 2.685501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.552155, 2.580147, 2.387475>,  <5.438951, 2.693328, 2.208659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.552155, 2.580147, 2.387475>,  <5.740828, 2.391512, 2.685501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.552155, 2.580147, 2.387475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829376, 0.049645, 0.556480,
		0.299418, 0.880421, 0.367706,
		-0.471682, 0.471587, -0.745065,
		5.410650, 2.721623, 2.163955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321402, 3.036763, 2.979423>,  <5.740828, 2.391512, 2.685501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321402, 3.036763, 2.979423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.187454, 2.829346, 2.664723>,  <5.107086, 2.704895, 2.475903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.187454, 2.829346, 2.664723>,  <5.321402, 3.036763, 2.979423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187454, 2.829346, 2.664723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930043, 0.047847, 0.364323,
		-0.151273, 0.853712, -0.498290,
		-0.334868, -0.518543, -0.786750,
		5.086994, 2.673783, 2.428698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.718488, 3.325618, 2.772447>,  <5.321402, 3.036763, 2.979423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.718488, 3.325618, 2.772447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.702576, 2.956238, 2.619787>,  <4.693028, 2.734610, 2.528191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.702576, 2.956238, 2.619787>,  <4.718488, 3.325618, 2.772447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.702576, 2.956238, 2.619787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946599, -0.087474, 0.310320,
		-0.319949, 0.373614, -0.870658,
		-0.039780, -0.923451, -0.381650,
		4.690642, 2.679203, 2.505292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.164802, 3.258331, 2.302909>,  <4.718488, 3.325618, 2.772447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.164802, 3.258331, 2.302909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.225937, 2.877274, 2.408063>,  <4.262618, 2.648639, 2.471156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.225937, 2.877274, 2.408063>,  <4.164802, 3.258331, 2.302909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.225937, 2.877274, 2.408063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962703, -0.083427, 0.257377,
		-0.223257, -0.292417, -0.929865,
		0.152837, -0.952645, 0.262885,
		4.271788, 2.591480, 2.486929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536694, 2.879045, 2.104806>,  <4.164802, 3.258331, 2.302909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536694, 2.879045, 2.104806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717117, 2.644043, 2.373547>,  <3.825372, 2.503042, 2.534791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717117, 2.644043, 2.373547>,  <3.536694, 2.879045, 2.104806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717117, 2.644043, 2.373547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831405, -0.002879, 0.555660,
		-0.324518, -0.809216, -0.489752,
		0.451059, -0.587505, 0.671852,
		3.852435, 2.467792, 2.575103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015731, 2.438000, 2.296909>,  <3.536694, 2.879045, 2.104806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015731, 2.438000, 2.296909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.273994, 2.373238, 2.595415>,  <3.428953, 2.334380, 2.774518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.273994, 2.373238, 2.595415>,  <3.015731, 2.438000, 2.296909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.273994, 2.373238, 2.595415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758104, -0.018592, 0.651869,
		-0.091669, -0.986631, -0.134748,
		0.645659, -0.161908, 0.746264,
		3.467692, 2.324666, 2.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.753153, 1.772100, 2.619786>,  <3.015731, 2.438000, 2.296909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.753153, 1.772100, 2.619786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.992729, 1.937134, 2.894316>,  <3.136475, 2.036154, 3.059034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.992729, 1.937134, 2.894316>,  <2.753153, 1.772100, 2.619786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.992729, 1.937134, 2.894316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669844, -0.211547, 0.711728,
		0.438838, -0.886015, 0.149663,
		0.598941, 0.412585, 0.686326,
		3.172411, 2.060909, 3.100214>
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
