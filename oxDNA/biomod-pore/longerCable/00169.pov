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
	<24.131098, 34.602135, 35.098591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173618, 34.986244, 34.995388>,  <24.199131, 35.216709, 34.933468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173618, 34.986244, 34.995388>,  <24.131098, 34.602135, 35.098591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173618, 34.986244, 34.995388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920961, -0.192910, -0.338551,
		-0.374875, -0.201627, -0.904884,
		0.106300, 0.960277, -0.258008,
		24.205509, 35.274326, 34.917984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.094448, 34.611649, 34.352673>,  <24.131098, 34.602135, 35.098591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.094448, 34.611649, 34.352673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326891, 34.891552, 34.518875>,  <24.466356, 35.059494, 34.618599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326891, 34.891552, 34.518875>,  <24.094448, 34.611649, 34.352673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326891, 34.891552, 34.518875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779554, -0.332008, -0.531099,
		-0.233691, 0.632537, -0.738435,
		0.581106, 0.699763, 0.415509,
		24.501223, 35.101482, 34.643528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.459385, 34.735271, 33.736572>,  <24.094448, 34.611649, 34.352673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.459385, 34.735271, 33.736572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641092, 34.808544, 34.085304>,  <24.750116, 34.852509, 34.294544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641092, 34.808544, 34.085304>,  <24.459385, 34.735271, 33.736572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641092, 34.808544, 34.085304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867046, -0.315695, -0.385445,
		0.204626, 0.931011, -0.302236,
		0.454268, 0.183180, 0.871829,
		24.777372, 34.863499, 34.346851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175632, 34.638962, 33.516777>,  <24.459385, 34.735271, 33.736572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175632, 34.638962, 33.516777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169998, 34.700432, 33.911983>,  <25.166616, 34.737312, 34.149109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169998, 34.700432, 33.911983>,  <25.175632, 34.638962, 33.516777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169998, 34.700432, 33.911983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930143, -0.360589, 0.069348,
		0.366926, 0.919978, -0.137862,
		-0.014087, 0.153677, 0.988021,
		25.165771, 34.746536, 34.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723236, 35.153397, 33.601875>,  <25.175632, 34.638962, 33.516777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723236, 35.153397, 33.601875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643730, 34.884865, 33.887478>,  <25.596025, 34.723747, 34.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643730, 34.884865, 33.887478>,  <25.723236, 35.153397, 33.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643730, 34.884865, 33.887478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945592, -0.322847, -0.040314,
		0.257580, 0.667150, 0.698973,
		-0.198766, -0.671328, 0.714011,
		25.584101, 34.683468, 34.101681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326674, 35.198792, 34.087242>,  <25.723236, 35.153397, 33.601875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326674, 35.198792, 34.087242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112720, 34.861996, 34.115383>,  <25.984348, 34.659916, 34.132267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112720, 34.861996, 34.115383>,  <26.326674, 35.198792, 34.087242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112720, 34.861996, 34.115383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827735, -0.538893, -0.156362,
		0.169568, -0.025402, 0.985191,
		-0.534884, -0.841991, 0.070353,
		25.952255, 34.609398, 34.136490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070986, 35.136124, 33.851707>,  <26.326674, 35.198792, 34.087242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070986, 35.136124, 33.851707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263969, 35.312317, 34.154549>,  <27.379761, 35.418034, 34.336254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263969, 35.312317, 34.154549>,  <27.070986, 35.136124, 33.851707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263969, 35.312317, 34.154549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082018, -0.883276, 0.461624,
		0.872070, -0.160619, -0.462272,
		0.482460, 0.440483, 0.757104,
		27.408707, 35.444462, 34.381680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575947, 34.787518, 34.089127>,  <27.070986, 35.136124, 33.851707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575947, 34.787518, 34.089127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447048, 34.999146, 34.403130>,  <27.369709, 35.126122, 34.591534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447048, 34.999146, 34.403130>,  <27.575947, 34.787518, 34.089127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447048, 34.999146, 34.403130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108657, -0.803092, 0.585864,
		0.940399, 0.274090, 0.201307,
		-0.322247, 0.529072, 0.785009,
		27.350374, 35.157867, 34.638634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968987, 34.675972, 34.704491>,  <27.575947, 34.787518, 34.089127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968987, 34.675972, 34.704491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626616, 34.802341, 34.868240>,  <27.421194, 34.878162, 34.966488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626616, 34.802341, 34.868240>,  <27.968987, 34.675972, 34.704491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626616, 34.802341, 34.868240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168688, -0.577773, 0.798576,
		0.488811, 0.752577, 0.441238,
		-0.855925, 0.315921, 0.409372,
		27.369839, 34.897118, 34.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151646, 34.597328, 35.364845>,  <27.968987, 34.675972, 34.704491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151646, 34.597328, 35.364845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756659, 34.652901, 35.394802>,  <27.519667, 34.686245, 35.412777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756659, 34.652901, 35.394802>,  <28.151646, 34.597328, 35.364845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756659, 34.652901, 35.394802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047118, -0.712366, 0.700224,
		0.150636, 0.687919, 0.709983,
		-0.987466, 0.138932, 0.074894,
		27.460419, 34.694580, 35.417271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991814, 34.684139, 36.152843>,  <28.151646, 34.597328, 35.364845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991814, 34.684139, 36.152843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644510, 34.595005, 35.975544>,  <27.436129, 34.541523, 35.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644510, 34.595005, 35.975544>,  <27.991814, 34.684139, 36.152843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644510, 34.595005, 35.975544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154631, -0.727384, 0.668581,
		-0.471400, 0.649041, 0.597099,
		-0.868258, -0.222839, -0.443251,
		27.384033, 34.528152, 35.842567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456804, 34.615498, 36.709888>,  <27.991814, 34.684139, 36.152843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456804, 34.615498, 36.709888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339657, 34.408222, 36.388462>,  <27.269369, 34.283859, 36.195606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339657, 34.408222, 36.388462>,  <27.456804, 34.615498, 36.709888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339657, 34.408222, 36.388462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460835, -0.659862, 0.593475,
		-0.837771, 0.544119, -0.045547,
		-0.292866, -0.518185, -0.803563,
		27.251797, 34.252766, 36.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860863, 34.252560, 36.977425>,  <27.456804, 34.615498, 36.709888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860863, 34.252560, 36.977425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895197, 34.120300, 36.601486>,  <26.915798, 34.040943, 36.375923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895197, 34.120300, 36.601486>,  <26.860863, 34.252560, 36.977425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895197, 34.120300, 36.601486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685113, -0.704480, 0.185274,
		-0.723361, 0.627995, -0.287003,
		0.085837, -0.330649, -0.939842,
		26.920948, 34.021107, 36.319534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964785, 33.455128, 36.790607>,  <26.860863, 34.252560, 36.977425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964785, 33.455128, 36.790607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620342, 33.531300, 36.602043>,  <26.413677, 33.577003, 36.488903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620342, 33.531300, 36.602043>,  <26.964785, 33.455128, 36.790607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620342, 33.531300, 36.602043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453703, 0.706263, -0.543458,
		0.229453, -0.681858, -0.694565,
		-0.861107, 0.190428, -0.471415,
		26.362011, 33.588428, 36.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180426, 33.472263, 36.087299>,  <26.964785, 33.455128, 36.790607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180426, 33.472263, 36.087299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827320, 33.657810, 36.117119>,  <26.615458, 33.769138, 36.135010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827320, 33.657810, 36.117119>,  <27.180426, 33.472263, 36.087299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827320, 33.657810, 36.117119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324320, 0.716461, -0.617657,
		-0.339924, -0.521066, -0.782906,
		-0.882761, 0.463869, 0.074550,
		26.562492, 33.796970, 36.139484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892588, 33.737476, 35.373569>,  <27.180426, 33.472263, 36.087299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892588, 33.737476, 35.373569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794033, 33.985558, 35.671467>,  <26.734900, 34.134407, 35.850204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794033, 33.985558, 35.671467>,  <26.892588, 33.737476, 35.373569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794033, 33.985558, 35.671467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315209, 0.777935, -0.543563,
		-0.916481, 0.100823, -0.387167,
		-0.246387, 0.620203, 0.744742,
		26.720118, 34.171619, 35.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275084, 34.256721, 35.255142>,  <26.892588, 33.737476, 35.373569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275084, 34.256721, 35.255142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603626, 34.366905, 35.454941>,  <26.800753, 34.433014, 35.574821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603626, 34.366905, 35.454941>,  <26.275084, 34.256721, 35.255142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603626, 34.366905, 35.454941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125068, 0.767397, -0.628855,
		-0.556534, 0.578986, 0.595856,
		0.821357, 0.275457, 0.499496,
		26.850033, 34.449543, 35.604790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116909, 34.916302, 35.420368>,  <26.275084, 34.256721, 35.255142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116909, 34.916302, 35.420368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513475, 34.864094, 35.417187>,  <26.751415, 34.832771, 35.415279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513475, 34.864094, 35.417187>,  <26.116909, 34.916302, 35.420368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513475, 34.864094, 35.417187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099620, 0.793323, -0.600595,
		0.084696, 0.594647, 0.799514,
		0.991414, -0.130515, -0.007953,
		26.810900, 34.824940, 35.414803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375536, 35.499081, 35.579639>,  <26.116909, 34.916302, 35.420368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375536, 35.499081, 35.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677687, 35.315117, 35.392925>,  <26.858976, 35.204739, 35.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677687, 35.315117, 35.392925>,  <26.375536, 35.499081, 35.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677687, 35.315117, 35.392925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110131, 0.791299, -0.601429,
		0.645970, 0.402899, 0.648379,
		0.755377, -0.459911, -0.466784,
		26.904301, 35.177143, 35.252892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950802, 35.980129, 35.536938>,  <26.375536, 35.499081, 35.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950802, 35.980129, 35.536938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033337, 35.713058, 35.250824>,  <27.082857, 35.552814, 35.079155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033337, 35.713058, 35.250824>,  <26.950802, 35.980129, 35.536938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033337, 35.713058, 35.250824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060843, 0.738356, -0.671661,
		0.976588, 0.095067, 0.192973,
		0.206336, -0.667677, -0.715286,
		27.095238, 35.512756, 35.036240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628996, 36.010906, 35.221596>,  <26.950802, 35.980129, 35.536938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628996, 36.010906, 35.221596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375799, 35.872276, 34.944695>,  <27.223881, 35.789101, 34.778557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375799, 35.872276, 34.944695>,  <27.628996, 36.010906, 35.221596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375799, 35.872276, 34.944695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270958, 0.738454, -0.617469,
		0.725194, -0.578422, -0.373527,
		-0.632990, -0.346575, -0.692250,
		27.185902, 35.768303, 34.737019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934990, 35.769955, 34.643494>,  <27.628996, 36.010906, 35.221596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934990, 35.769955, 34.643494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591015, 35.946884, 34.541626>,  <27.384630, 36.053043, 34.480507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591015, 35.946884, 34.541626>,  <27.934990, 35.769955, 34.643494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591015, 35.946884, 34.541626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501565, 0.639917, -0.582184,
		-0.094545, -0.628376, -0.772143,
		-0.859938, 0.442323, -0.254670,
		27.333033, 36.079582, 34.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960072, 35.907944, 33.938786>,  <27.934990, 35.769955, 34.643494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960072, 35.907944, 33.938786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761988, 36.194328, 34.135632>,  <27.643137, 36.366158, 34.253738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761988, 36.194328, 34.135632>,  <27.960072, 35.907944, 33.938786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761988, 36.194328, 34.135632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673682, 0.674123, -0.302837,
		-0.548562, 0.181559, -0.816160,
		-0.495210, 0.715957, 0.492111,
		27.613424, 36.409115, 34.283264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472197, 35.566978, 33.603374>,  <27.960072, 35.907944, 33.938786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472197, 35.566978, 33.603374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776382, 35.555279, 33.343884>,  <28.958893, 35.548260, 33.188190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776382, 35.555279, 33.343884>,  <28.472197, 35.566978, 33.603374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776382, 35.555279, 33.343884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467615, 0.668511, -0.578298,
		0.450592, 0.743127, 0.494702,
		0.760462, -0.029246, -0.648723,
		29.004520, 35.546505, 33.149265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905861, 36.140766, 33.380554>,  <28.472197, 35.566978, 33.603374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905861, 36.140766, 33.380554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875927, 35.917480, 33.050026>,  <28.857967, 35.783508, 32.851711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875927, 35.917480, 33.050026>,  <28.905861, 36.140766, 33.380554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875927, 35.917480, 33.050026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330863, 0.795600, -0.507495,
		0.940707, 0.235421, -0.244228,
		-0.074833, -0.558210, -0.826318,
		28.853477, 35.750019, 32.802132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295540, 36.289539, 32.795490>,  <28.905861, 36.140766, 33.380554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295540, 36.289539, 32.795490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942629, 36.157200, 32.661549>,  <28.730883, 36.077797, 32.581184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942629, 36.157200, 32.661549>,  <29.295540, 36.289539, 32.795490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942629, 36.157200, 32.661549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146347, 0.868881, -0.472894,
		0.447401, -0.368220, -0.815013,
		-0.882278, -0.330848, -0.334850,
		28.677946, 36.057945, 32.561092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170074, 36.582336, 32.206539>,  <29.295540, 36.289539, 32.795490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170074, 36.582336, 32.206539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802780, 36.437008, 32.269588>,  <28.582403, 36.349812, 32.307419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802780, 36.437008, 32.269588>,  <29.170074, 36.582336, 32.206539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802780, 36.437008, 32.269588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377023, 0.680084, -0.628761,
		0.121244, -0.636777, -0.761456,
		-0.918234, -0.363320, 0.157623,
		28.527309, 36.328011, 32.316875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834839, 36.421505, 31.602304>,  <29.170074, 36.582336, 32.206539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834839, 36.421505, 31.602304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548595, 36.528675, 31.860334>,  <28.376850, 36.592979, 32.015152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548595, 36.528675, 31.860334>,  <28.834839, 36.421505, 31.602304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548595, 36.528675, 31.860334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326962, 0.687602, -0.648305,
		-0.617255, -0.674846, -0.404450,
		-0.715606, 0.267930, 0.645075,
		28.333914, 36.609055, 32.053856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367722, 36.829151, 31.213980>,  <28.834839, 36.421505, 31.602304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367722, 36.829151, 31.213980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257626, 36.872192, 31.596113>,  <28.191568, 36.898018, 31.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257626, 36.872192, 31.596113>,  <28.367722, 36.829151, 31.213980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257626, 36.872192, 31.596113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362936, 0.908555, -0.206896,
		-0.890236, -0.403672, -0.211019,
		-0.275240, 0.107600, 0.955335,
		28.175053, 36.904472, 31.882713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676607, 36.903065, 31.173363>,  <28.367722, 36.829151, 31.213980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676607, 36.903065, 31.173363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767576, 37.018120, 31.545502>,  <27.822157, 37.087154, 31.768785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767576, 37.018120, 31.545502>,  <27.676607, 36.903065, 31.173363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767576, 37.018120, 31.545502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276936, 0.935035, -0.221394,
		-0.933588, -0.207296, 0.292305,
		0.227421, 0.287641, 0.930345,
		27.835802, 37.104412, 31.824606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109314, 37.305992, 31.515320>,  <27.676607, 36.903065, 31.173363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109314, 37.305992, 31.515320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418667, 37.424152, 31.739681>,  <27.604279, 37.495049, 31.874298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418667, 37.424152, 31.739681>,  <27.109314, 37.305992, 31.515320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418667, 37.424152, 31.739681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256973, 0.954926, -0.148593,
		-0.579518, -0.029218, 0.814435,
		0.773384, 0.295401, 0.560906,
		27.650682, 37.512772, 31.907953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921745, 37.692699, 32.222992>,  <27.109314, 37.305992, 31.515320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921745, 37.692699, 32.222992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294716, 37.786427, 32.112957>,  <27.518497, 37.842663, 32.046936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294716, 37.786427, 32.112957>,  <26.921745, 37.692699, 32.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294716, 37.786427, 32.112957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295957, 0.931991, -0.209290,
		0.207342, 0.276562, 0.938362,
		0.932427, 0.234320, -0.275091,
		27.574444, 37.856724, 32.030430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151304, 38.189648, 32.661488>,  <26.921745, 37.692699, 32.222992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151304, 38.189648, 32.661488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366343, 38.212536, 32.324986>,  <27.495365, 38.226269, 32.123085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366343, 38.212536, 32.324986>,  <27.151304, 38.189648, 32.661488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366343, 38.212536, 32.324986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218432, 0.973088, -0.073397,
		0.814419, 0.223215, 0.535628,
		0.537596, 0.057223, -0.841259,
		27.527622, 38.229702, 32.072609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550074, 38.728329, 32.756741>,  <27.151304, 38.189648, 32.661488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550074, 38.728329, 32.756741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480021, 38.687866, 32.365005>,  <27.437988, 38.663589, 32.129967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480021, 38.687866, 32.365005>,  <27.550074, 38.728329, 32.756741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480021, 38.687866, 32.365005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197439, 0.978110, -0.065722,
		0.964544, 0.181848, -0.191274,
		-0.175135, -0.101157, -0.979334,
		27.427481, 38.657520, 32.071205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958927, 39.169022, 32.295326>,  <27.550074, 38.728329, 32.756741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958927, 39.169022, 32.295326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616434, 39.096363, 32.101887>,  <27.410938, 39.052769, 31.985823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.616434, 39.096363, 32.101887>,  <27.958927, 39.169022, 32.295326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616434, 39.096363, 32.101887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178202, 0.982536, -0.053542,
		0.484880, 0.040334, -0.873650,
		-0.856233, -0.181648, -0.483599,
		27.359564, 39.041870, 31.956806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072987, 39.535816, 31.678291>,  <27.958927, 39.169022, 32.295326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072987, 39.535816, 31.678291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694265, 39.499790, 31.801876>,  <27.467033, 39.478172, 31.876026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694265, 39.499790, 31.801876>,  <28.072987, 39.535816, 31.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694265, 39.499790, 31.801876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130131, 0.985198, -0.111578,
		-0.294337, -0.145848, -0.944507,
		-0.946801, -0.090069, 0.308960,
		27.410225, 39.472771, 31.894564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969393, 39.040195, 31.106359>,  <28.072987, 39.535816, 31.678291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969393, 39.040195, 31.106359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834406, 38.851486, 31.432194>,  <27.753414, 38.738262, 31.627693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834406, 38.851486, 31.432194>,  <27.969393, 39.040195, 31.106359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834406, 38.851486, 31.432194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653644, -0.740153, -0.157871,
		0.677396, 0.479171, 0.558149,
		-0.337468, -0.471772, 0.814584,
		27.733166, 38.709953, 31.676569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258856, 38.302574, 31.005432>,  <27.969393, 39.040195, 31.106359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258856, 38.302574, 31.005432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052782, 38.306587, 31.348240>,  <27.929138, 38.308994, 31.553925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052782, 38.306587, 31.348240>,  <28.258856, 38.302574, 31.005432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052782, 38.306587, 31.348240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485220, -0.820844, 0.301291,
		0.706503, 0.571064, 0.418018,
		-0.515184, 0.010033, 0.857021,
		27.898228, 38.309597, 31.605347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663750, 38.282551, 31.575686>,  <28.258856, 38.302574, 31.005432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663750, 38.282551, 31.575686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324200, 38.122952, 31.714373>,  <28.120470, 38.027191, 31.797585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324200, 38.122952, 31.714373>,  <28.663750, 38.282551, 31.575686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324200, 38.122952, 31.714373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509972, -0.790758, 0.338572,
		0.139081, 0.464222, 0.874731,
		-0.848873, -0.398999, 0.346719,
		28.069538, 38.003250, 31.818388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092962, 38.373051, 32.223679>,  <28.663750, 38.282551, 31.575686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092962, 38.373051, 32.223679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173710, 38.749031, 32.113590>,  <29.222158, 38.974617, 32.047539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173710, 38.749031, 32.113590>,  <29.092962, 38.373051, 32.223679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173710, 38.749031, 32.113590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818506, 0.316227, 0.479633,
		0.537862, 0.128446, 0.833190,
		0.201870, 0.939948, -0.275220,
		29.234270, 39.031017, 32.031025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618998, 37.906536, 32.620289>,  <29.092962, 38.373051, 32.223679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618998, 37.906536, 32.620289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326979, 37.778408, 32.378819>,  <28.151768, 37.701530, 32.233936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326979, 37.778408, 32.378819>,  <28.618998, 37.906536, 32.620289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326979, 37.778408, 32.378819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119735, -0.929637, 0.348480,
		-0.672827, 0.182125, 0.717032,
		-0.730046, -0.320320, -0.603678,
		28.107965, 37.682312, 32.197716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168051, 37.491398, 32.982567>,  <28.618998, 37.906536, 32.620289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168051, 37.491398, 32.982567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071962, 37.388557, 32.608147>,  <28.014309, 37.326851, 32.383495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071962, 37.388557, 32.608147>,  <28.168051, 37.491398, 32.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071962, 37.388557, 32.608147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067135, -0.966379, 0.248204,
		-0.968394, -0.003218, 0.249403,
		-0.240219, -0.257103, -0.936052,
		27.999897, 37.311428, 32.327332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412891, 37.173401, 32.908684>,  <28.168051, 37.491398, 32.982567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412891, 37.173401, 32.908684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664120, 37.009796, 32.643887>,  <27.814857, 36.911633, 32.485008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664120, 37.009796, 32.643887>,  <27.412891, 37.173401, 32.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664120, 37.009796, 32.643887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043037, -0.867678, 0.495260,
		-0.776964, -0.282569, -0.562568,
		0.628073, -0.409010, -0.661993,
		27.852541, 36.887093, 32.445290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299809, 36.489929, 32.995060>,  <27.412891, 37.173401, 32.908684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299809, 36.489929, 32.995060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603415, 36.496307, 32.734707>,  <27.785578, 36.500134, 32.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603415, 36.496307, 32.734707>,  <27.299809, 36.489929, 32.995060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603415, 36.496307, 32.734707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118209, -0.986459, 0.113685,
		-0.640254, -0.163228, -0.750621,
		0.759014, 0.015942, -0.650880,
		27.831118, 36.501091, 32.539444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260771, 35.877506, 32.528481>,  <27.299809, 36.489929, 32.995060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260771, 35.877506, 32.528481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645729, 35.980698, 32.562511>,  <27.876705, 36.042614, 32.582928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645729, 35.980698, 32.562511>,  <27.260771, 35.877506, 32.528481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645729, 35.980698, 32.562511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219259, -0.922605, 0.317374,
		0.160366, -0.286787, -0.944477,
		0.962397, 0.257981, 0.085074,
		27.934448, 36.058090, 32.588032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658291, 35.360645, 32.196651>,  <27.260771, 35.877506, 32.528481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658291, 35.360645, 32.196651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914434, 35.537907, 32.447586>,  <28.068121, 35.644264, 32.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914434, 35.537907, 32.447586>,  <27.658291, 35.360645, 32.196651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914434, 35.537907, 32.447586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480764, -0.868240, 0.122583,
		0.599004, 0.223105, -0.769037,
		0.640360, 0.443153, 0.627340,
		28.106543, 35.670853, 32.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296579, 35.352486, 31.882170>,  <27.658291, 35.360645, 32.196651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296579, 35.352486, 31.882170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365866, 35.398705, 32.273403>,  <28.407436, 35.426434, 32.508144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365866, 35.398705, 32.273403>,  <28.296579, 35.352486, 31.882170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365866, 35.398705, 32.273403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602792, -0.797800, -0.012506,
		0.778870, 0.591747, -0.207839,
		0.173215, 0.115543, 0.978083,
		28.417830, 35.433369, 32.566830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045929, 35.309692, 32.061420>,  <28.296579, 35.352486, 31.882170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045929, 35.309692, 32.061420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873022, 35.161751, 32.390381>,  <28.769278, 35.072987, 32.587757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873022, 35.161751, 32.390381>,  <29.045929, 35.309692, 32.061420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873022, 35.161751, 32.390381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640145, -0.768201, -0.009010,
		0.635104, 0.522563, 0.568832,
		-0.432269, -0.369857, 0.822404,
		28.743341, 35.050793, 32.637100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574356, 34.954430, 32.453693>,  <29.045929, 35.309692, 32.061420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574356, 34.954430, 32.453693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262709, 34.782646, 32.636360>,  <29.075720, 34.679577, 32.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262709, 34.782646, 32.636360>,  <29.574356, 34.954430, 32.453693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262709, 34.782646, 32.636360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565750, -0.795470, 0.217152,
		0.270008, 0.427546, 0.862728,
		-0.779117, -0.429456, 0.456667,
		29.028975, 34.653809, 32.773361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821722, 34.614742, 33.101006>,  <29.574356, 34.954430, 32.453693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821722, 34.614742, 33.101006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458429, 34.470219, 33.016556>,  <29.240454, 34.383503, 32.965885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458429, 34.470219, 33.016556>,  <29.821722, 34.614742, 33.101006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458429, 34.470219, 33.016556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207988, -0.827533, 0.521469,
		-0.363124, 0.429703, 0.826738,
		-0.908230, -0.361309, -0.211124,
		29.185961, 34.361824, 32.953220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093498, 33.765205, 33.191845>,  <29.821722, 34.614742, 33.101006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093498, 33.765205, 33.191845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492527, 33.741020, 33.177998>,  <30.731943, 33.726509, 33.169689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492527, 33.741020, 33.177998>,  <30.093498, 33.765205, 33.191845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492527, 33.741020, 33.177998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069168, -0.799514, -0.596651,
		0.008399, 0.597596, -0.801754,
		0.997570, -0.060467, -0.034619,
		30.791798, 33.722881, 33.167610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615995, 33.127254, 33.289547>,  <30.093498, 33.765205, 33.191845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615995, 33.127254, 33.289547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454889, 33.275635, 33.624252>,  <29.358225, 33.364662, 33.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454889, 33.275635, 33.624252>,  <29.615995, 33.127254, 33.289547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454889, 33.275635, 33.624252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725812, -0.427540, 0.538895,
		0.557654, 0.824381, -0.097044,
		-0.402765, 0.370952, 0.836765,
		29.334061, 33.386921, 33.875282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080893, 32.829899, 33.786674>,  <29.615995, 33.127254, 33.289547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080893, 32.829899, 33.786674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914820, 33.067593, 34.062214>,  <29.815176, 33.210209, 34.227535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914820, 33.067593, 34.062214>,  <30.080893, 32.829899, 33.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914820, 33.067593, 34.062214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647682, -0.338653, 0.682512,
		0.638853, 0.729518, -0.244274,
		-0.415180, 0.594237, 0.688846,
		29.790266, 33.245865, 34.268867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544167, 32.879753, 34.265759>,  <30.080893, 32.829899, 33.786674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544167, 32.879753, 34.265759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213379, 32.958725, 34.476334>,  <30.014906, 33.006107, 34.602680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213379, 32.958725, 34.476334>,  <30.544167, 32.879753, 34.265759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213379, 32.958725, 34.476334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419487, -0.406783, 0.811516,
		0.374367, 0.891935, 0.253577,
		-0.826970, 0.197433, 0.526442,
		29.965288, 33.017956, 34.634266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800322, 33.158165, 34.825394>,  <30.544167, 32.879753, 34.265759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800322, 33.158165, 34.825394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428520, 33.028984, 34.896637>,  <30.205439, 32.951473, 34.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428520, 33.028984, 34.896637>,  <30.800322, 33.158165, 34.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428520, 33.028984, 34.896637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343295, -0.581103, 0.737881,
		-0.134801, 0.747008, 0.651006,
		-0.929504, -0.322954, 0.178111,
		30.149670, 32.932098, 34.950069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324060, 33.664783, 35.279598>,  <30.800322, 33.158165, 34.825394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324060, 33.664783, 35.279598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575029, 33.567883, 35.575615>,  <31.725611, 33.509743, 35.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575029, 33.567883, 35.575615>,  <31.324060, 33.664783, 35.279598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575029, 33.567883, 35.575615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332189, 0.776286, 0.535753,
		-0.704267, -0.581976, 0.406586,
		0.627422, -0.242250, 0.740038,
		31.763256, 33.495209, 35.797626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919737, 33.571716, 35.824783>,  <31.324060, 33.664783, 35.279598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919737, 33.571716, 35.824783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280077, 33.679180, 35.961185>,  <31.496281, 33.743656, 36.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280077, 33.679180, 35.961185>,  <30.919737, 33.571716, 35.824783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280077, 33.679180, 35.961185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404637, 0.804186, 0.435377,
		-0.157268, -0.530196, 0.833162,
		0.900852, 0.268658, 0.341010,
		31.550333, 33.759777, 36.063488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915876, 33.711826, 36.444656>,  <30.919737, 33.571716, 35.824783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915876, 33.711826, 36.444656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207600, 33.930599, 36.280228>,  <31.382633, 34.061863, 36.181572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207600, 33.930599, 36.280228>,  <30.915876, 33.711826, 36.444656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207600, 33.930599, 36.280228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386225, 0.825038, 0.412484,
		0.564749, -0.142061, 0.812944,
		0.729307, 0.546929, -0.411072,
		31.426392, 34.094677, 36.156906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241089, 34.198593, 36.973259>,  <30.915876, 33.711826, 36.444656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241089, 34.198593, 36.973259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281694, 34.367687, 36.613037>,  <31.306059, 34.469143, 36.396904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281694, 34.367687, 36.613037>,  <31.241089, 34.198593, 36.973259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281694, 34.367687, 36.613037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432031, 0.834145, 0.342858,
		0.896127, 0.354261, 0.267312,
		0.101516, 0.422731, -0.900551,
		31.312149, 34.494507, 36.342873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747919, 34.752987, 36.890774>,  <31.241089, 34.198593, 36.973259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747919, 34.752987, 36.890774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077658, 34.932762, 37.028446>,  <31.275501, 35.040627, 37.111050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077658, 34.932762, 37.028446>,  <30.747919, 34.752987, 36.890774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077658, 34.932762, 37.028446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566069, -0.659162, -0.495046,
		0.004376, 0.602917, -0.797792,
		0.824346, 0.449439, 0.344177,
		31.324961, 35.067593, 37.131699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187809, 35.236649, 36.463768>,  <30.747919, 34.752987, 36.890774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187809, 35.236649, 36.463768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351374, 35.002941, 36.744175>,  <31.449512, 34.862717, 36.912418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351374, 35.002941, 36.744175>,  <31.187809, 35.236649, 36.463768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351374, 35.002941, 36.744175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458961, -0.532284, -0.711357,
		0.788762, 0.612622, 0.050498,
		0.408914, -0.584267, 0.701015,
		31.474049, 34.827660, 36.954479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915596, 35.140850, 36.207394>,  <31.187809, 35.236649, 36.463768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915596, 35.140850, 36.207394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782419, 34.837349, 36.431339>,  <31.702513, 34.655247, 36.565704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782419, 34.837349, 36.431339>,  <31.915596, 35.140850, 36.207394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782419, 34.837349, 36.431339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288826, -0.647256, -0.705436,
		0.897624, -0.073168, 0.434646,
		-0.332942, -0.758753, 0.559860,
		31.682537, 34.609722, 36.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420143, 34.652187, 36.182503>,  <31.915596, 35.140850, 36.207394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420143, 34.652187, 36.182503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099586, 34.435677, 36.284317>,  <31.907253, 34.305771, 36.345406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099586, 34.435677, 36.284317>,  <32.420143, 34.652187, 36.182503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099586, 34.435677, 36.284317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380335, -0.789569, -0.481587,
		0.461649, -0.289129, 0.838621,
		-0.801390, -0.541281, 0.254537,
		31.859169, 34.273293, 36.360680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694023, 34.006786, 36.532181>,  <32.420143, 34.652187, 36.182503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694023, 34.006786, 36.532181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321976, 33.918808, 36.414536>,  <32.098747, 33.866020, 36.343948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321976, 33.918808, 36.414536>,  <32.694023, 34.006786, 36.532181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321976, 33.918808, 36.414536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327762, -0.858415, -0.394583,
		-0.165683, -0.463408, 0.870518,
		-0.930119, -0.219947, -0.294112,
		32.042938, 33.852825, 36.326302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676941, 33.344925, 36.688766>,  <32.694023, 34.006786, 36.532181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676941, 33.344925, 36.688766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377625, 33.389313, 36.427158>,  <32.198036, 33.415947, 36.270191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377625, 33.389313, 36.427158>,  <32.676941, 33.344925, 36.688766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377625, 33.389313, 36.427158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259410, -0.858450, -0.442459,
		-0.610547, -0.500748, 0.613582,
		-0.748290, 0.110973, -0.654023,
		32.153137, 33.422604, 36.230949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273262, 32.703491, 36.750721>,  <32.676941, 33.344925, 36.688766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273262, 32.703491, 36.750721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206219, 32.876793, 36.396500>,  <32.165993, 32.980774, 36.183968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206219, 32.876793, 36.396500>,  <32.273262, 32.703491, 36.750721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206219, 32.876793, 36.396500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257539, -0.847822, -0.463543,
		-0.951621, -0.305756, 0.030519,
		-0.167606, 0.433257, -0.885549,
		32.155937, 33.006771, 36.130836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832628, 32.193878, 36.298569>,  <32.273262, 32.703491, 36.750721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832628, 32.193878, 36.298569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008286, 32.458286, 36.055191>,  <32.113678, 32.616932, 35.909164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008286, 32.458286, 36.055191>,  <31.832628, 32.193878, 36.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008286, 32.458286, 36.055191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312625, -0.747351, -0.586287,
		-0.842271, 0.067247, -0.534843,
		0.439142, 0.661018, -0.608449,
		32.140030, 32.656593, 35.872658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707224, 31.888832, 35.712303>,  <31.832628, 32.193878, 36.298569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707224, 31.888832, 35.712303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942980, 32.190258, 35.595852>,  <32.084435, 32.371113, 35.525982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942980, 32.190258, 35.595852>,  <31.707224, 31.888832, 35.712303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942980, 32.190258, 35.595852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202313, -0.486576, -0.849890,
		-0.782104, 0.442019, -0.439240,
		0.589391, 0.753567, -0.291127,
		32.119797, 32.416328, 35.508514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496490, 31.934082, 34.959194>,  <31.707224, 31.888832, 35.712303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496490, 31.934082, 34.959194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826689, 32.152020, 35.018112>,  <32.024807, 32.282784, 35.053463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826689, 32.152020, 35.018112>,  <31.496490, 31.934082, 34.959194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826689, 32.152020, 35.018112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313993, -0.226469, -0.922020,
		-0.469000, 0.807376, -0.358027,
		0.825498, 0.544846, 0.147296,
		32.074337, 32.315472, 35.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640051, 32.058701, 34.365326>,  <31.496490, 31.934082, 34.959194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640051, 32.058701, 34.365326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984152, 32.150623, 34.547382>,  <32.190613, 32.205776, 34.656616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984152, 32.150623, 34.547382>,  <31.640051, 32.058701, 34.365326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984152, 32.150623, 34.547382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504003, -0.248279, -0.827248,
		-0.077103, 0.941035, -0.329405,
		0.860254, 0.229805, 0.455141,
		32.242229, 32.219566, 34.683926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099590, 32.684933, 33.976131>,  <31.640051, 32.058701, 34.365326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099590, 32.684933, 33.976131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365669, 32.473869, 34.187447>,  <32.525314, 32.347233, 34.314236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365669, 32.473869, 34.187447>,  <32.099590, 32.684933, 33.976131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365669, 32.473869, 34.187447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665519, 0.098208, -0.739892,
		0.338528, 0.843760, 0.416494,
		0.665194, -0.527658, 0.528292,
		32.565228, 32.315571, 34.345936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643795, 32.925381, 33.723804>,  <32.099590, 32.684933, 33.976131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643795, 32.925381, 33.723804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768463, 32.584396, 33.891701>,  <32.843266, 32.379807, 33.992439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768463, 32.584396, 33.891701>,  <32.643795, 32.925381, 33.723804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768463, 32.584396, 33.891701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714900, -0.080615, -0.694564,
		0.625923, 0.516545, 0.584297,
		0.311670, -0.852457, 0.419737,
		32.861965, 32.328659, 34.017620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500244, 32.923420, 33.804970>,  <32.643795, 32.925381, 33.723804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500244, 32.923420, 33.804970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370590, 32.545368, 33.821327>,  <33.292797, 32.318539, 33.831142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370590, 32.545368, 33.821327>,  <33.500244, 32.923420, 33.804970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370590, 32.545368, 33.821327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506471, -0.209879, -0.836324,
		0.799016, -0.250367, 0.546708,
		-0.324130, -0.945128, 0.040893,
		33.273350, 32.261829, 33.833595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141430, 32.449032, 33.711823>,  <33.500244, 32.923420, 33.804970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141430, 32.449032, 33.711823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832844, 32.205326, 33.638458>,  <33.647694, 32.059101, 33.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832844, 32.205326, 33.638458>,  <34.141430, 32.449032, 33.711823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832844, 32.205326, 33.638458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494209, -0.392226, -0.775832,
		0.400748, -0.689171, 0.603692,
		-0.771465, -0.609263, -0.183411,
		33.601406, 32.022549, 33.583435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388092, 31.710844, 33.591011>,  <34.141430, 32.449032, 33.711823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388092, 31.710844, 33.591011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045647, 31.760326, 33.390305>,  <33.840179, 31.790016, 33.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045647, 31.760326, 33.390305>,  <34.388092, 31.710844, 33.591011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045647, 31.760326, 33.390305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446308, -0.312518, -0.838535,
		-0.260546, -0.941822, 0.212337,
		-0.856110, 0.123709, -0.501768,
		33.788815, 31.797438, 33.239773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321003, 31.227345, 33.193432>,  <34.388092, 31.710844, 33.591011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321003, 31.227345, 33.193432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052902, 31.465771, 33.016586>,  <33.892040, 31.608826, 32.910477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052902, 31.465771, 33.016586>,  <34.321003, 31.227345, 33.193432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052902, 31.465771, 33.016586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419582, -0.187029, -0.888240,
		-0.612139, -0.780849, -0.124742,
		-0.670251, 0.596066, -0.442118,
		33.851826, 31.644590, 32.883949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229324, 30.931581, 32.572514>,  <34.321003, 31.227345, 33.193432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229324, 30.931581, 32.572514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099541, 31.303034, 32.500546>,  <34.021671, 31.525906, 32.457363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099541, 31.303034, 32.500546>,  <34.229324, 30.931581, 32.572514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099541, 31.303034, 32.500546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366795, -0.051808, -0.928858,
		-0.871887, -0.367372, -0.323807,
		-0.324461, 0.928630, -0.179921,
		34.002201, 31.581623, 32.446568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966785, 30.882559, 31.920685>,  <34.229324, 30.931581, 32.572514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966785, 30.882559, 31.920685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021076, 31.276331, 31.965359>,  <34.053650, 31.512594, 31.992163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021076, 31.276331, 31.965359>,  <33.966785, 30.882559, 31.920685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021076, 31.276331, 31.965359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281870, 0.069702, -0.956917,
		-0.949804, 0.161361, -0.268022,
		0.135727, 0.984431, 0.111686,
		34.061794, 31.571661, 31.998865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613186, 31.188070, 31.406160>,  <33.966785, 30.882559, 31.920685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613186, 31.188070, 31.406160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889690, 31.456470, 31.513433>,  <34.055592, 31.617510, 31.577797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889690, 31.456470, 31.513433>,  <33.613186, 31.188070, 31.406160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889690, 31.456470, 31.513433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215466, 0.162850, -0.962837,
		-0.689738, 0.723352, -0.032007,
		0.691257, 0.671001, 0.268182,
		34.097069, 31.657770, 31.593887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457634, 31.713245, 31.050379>,  <33.613186, 31.188070, 31.406160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457634, 31.713245, 31.050379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843563, 31.770285, 31.138731>,  <34.075119, 31.804508, 31.191742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843563, 31.770285, 31.138731>,  <33.457634, 31.713245, 31.050379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843563, 31.770285, 31.138731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199395, 0.150706, -0.968261,
		-0.171362, 0.978240, 0.116971,
		0.964820, 0.142599, 0.220882,
		34.133011, 31.813065, 31.204996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735241, 32.172386, 30.536566>,  <33.457634, 31.713245, 31.050379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735241, 32.172386, 30.536566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080536, 32.043076, 30.691647>,  <34.287712, 31.965490, 30.784695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080536, 32.043076, 30.691647>,  <33.735241, 32.172386, 30.536566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080536, 32.043076, 30.691647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492472, 0.370654, -0.787456,
		0.110861, 0.870695, 0.479166,
		0.863238, -0.323274, 0.387702,
		34.339508, 31.946093, 30.807957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229904, 32.743847, 30.470266>,  <33.735241, 32.172386, 30.536566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229904, 32.743847, 30.470266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472668, 32.427055, 30.496906>,  <34.618324, 32.236980, 30.512890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472668, 32.427055, 30.496906>,  <34.229904, 32.743847, 30.470266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472668, 32.427055, 30.496906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492906, 0.309334, -0.813238,
		0.623465, 0.526386, 0.578108,
		0.606906, -0.791978, 0.066600,
		34.654739, 32.189461, 30.516886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736042, 32.962524, 30.057478>,  <34.229904, 32.743847, 30.470266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736042, 32.962524, 30.057478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827888, 32.574932, 30.094032>,  <34.882996, 32.342377, 30.115965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827888, 32.574932, 30.094032>,  <34.736042, 32.962524, 30.057478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827888, 32.574932, 30.094032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532621, 0.046512, -0.845075,
		0.814611, 0.242715, 0.526780,
		0.229614, -0.968982, 0.091386,
		34.896774, 32.284237, 30.121449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512714, 32.837784, 29.951277>,  <34.736042, 32.962524, 30.057478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512714, 32.837784, 29.951277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309425, 32.508221, 29.850960>,  <35.187454, 32.310482, 29.790770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309425, 32.508221, 29.850960>,  <35.512714, 32.837784, 29.951277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309425, 32.508221, 29.850960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397924, 0.033614, -0.916802,
		0.763787, -0.565733, 0.310767,
		-0.508219, -0.823903, -0.250793,
		35.156960, 32.261051, 29.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978424, 32.225506, 29.776230>,  <35.512714, 32.837784, 29.951277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978424, 32.225506, 29.776230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617989, 32.204693, 29.604027>,  <35.401730, 32.192207, 29.500706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617989, 32.204693, 29.604027>,  <35.978424, 32.225506, 29.776230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617989, 32.204693, 29.604027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431395, -0.006635, -0.902139,
		0.044088, -0.998623, 0.028427,
		-0.901086, -0.052037, -0.430508,
		35.347664, 32.189083, 29.474874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197475, 31.892286, 29.208374>,  <35.978424, 32.225506, 29.776230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197475, 31.892286, 29.208374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817875, 31.945440, 29.094013>,  <35.590115, 31.977333, 29.025396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817875, 31.945440, 29.094013>,  <36.197475, 31.892286, 29.208374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817875, 31.945440, 29.094013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307963, 0.196557, -0.930873,
		-0.067503, -0.971446, -0.227457,
		-0.949001, 0.132885, -0.285901,
		35.533176, 31.985306, 29.008244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093525, 31.499083, 28.702892>,  <36.197475, 31.892286, 29.208374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093525, 31.499083, 28.702892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815159, 31.783150, 28.660254>,  <35.648140, 31.953590, 28.634670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815159, 31.783150, 28.660254>,  <36.093525, 31.499083, 28.702892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815159, 31.783150, 28.660254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236084, 0.086059, -0.967914,
		-0.678208, -0.698752, -0.227550,
		-0.695915, 0.710169, -0.106598,
		35.606384, 31.996201, 28.628275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777195, 31.399603, 28.150553>,  <36.093525, 31.499083, 28.702892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777195, 31.399603, 28.150553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761406, 31.796047, 28.201366>,  <35.751934, 32.033913, 28.231855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761406, 31.796047, 28.201366>,  <35.777195, 31.399603, 28.150553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761406, 31.796047, 28.201366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184236, 0.132175, -0.973954,
		-0.982089, -0.015041, -0.187817,
		-0.039474, 0.991112, 0.127036,
		35.749565, 32.093380, 28.239477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244534, 31.528080, 27.594788>,  <35.777195, 31.399603, 28.150553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244534, 31.528080, 27.594788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452606, 31.847895, 27.714890>,  <35.577450, 32.039783, 27.786951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452606, 31.847895, 27.714890>,  <35.244534, 31.528080, 27.594788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452606, 31.847895, 27.714890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126121, 0.275795, -0.952906,
		-0.844692, 0.533552, 0.042625,
		0.520181, 0.799537, 0.300254,
		35.608662, 32.087757, 27.804966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017517, 32.073025, 27.158422>,  <35.244534, 31.528080, 27.594788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017517, 32.073025, 27.158422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370087, 32.187859, 27.308447>,  <35.581627, 32.256760, 27.398462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370087, 32.187859, 27.308447>,  <35.017517, 32.073025, 27.158422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370087, 32.187859, 27.308447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285402, 0.308995, -0.907231,
		-0.376348, 0.906699, 0.190420,
		0.881424, 0.287089, 0.375063,
		35.634514, 32.273987, 27.420965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175446, 32.696308, 26.738890>,  <35.017517, 32.073025, 27.158422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175446, 32.696308, 26.738890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514179, 32.585182, 26.920300>,  <35.717419, 32.518505, 27.029146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514179, 32.585182, 26.920300>,  <35.175446, 32.696308, 26.738890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514179, 32.585182, 26.920300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525044, 0.300682, -0.796191,
		0.084825, 0.912365, 0.400493,
		0.846837, -0.277814, 0.453527,
		35.768230, 32.501839, 27.056358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588032, 33.313580, 26.628080>,  <35.175446, 32.696308, 26.738890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588032, 33.313580, 26.628080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831264, 33.004822, 26.702278>,  <35.977203, 32.819565, 26.746798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831264, 33.004822, 26.702278>,  <35.588032, 33.313580, 26.628080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831264, 33.004822, 26.702278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548918, 0.240012, -0.800677,
		0.573520, 0.588699, 0.569656,
		0.608082, -0.771899, 0.185496,
		36.013691, 32.773251, 26.757927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272797, 33.664276, 26.446743>,  <35.588032, 33.313580, 26.628080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272797, 33.664276, 26.446743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397053, 33.287540, 26.498022>,  <36.471607, 33.061497, 26.528790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397053, 33.287540, 26.498022>,  <36.272797, 33.664276, 26.446743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397053, 33.287540, 26.498022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639911, 0.107485, -0.760895,
		0.702864, 0.318399, 0.636085,
		0.310638, -0.941843, 0.128200,
		36.490246, 33.004986, 26.536482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972084, 33.683342, 26.485428>,  <36.272797, 33.664276, 26.446743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972084, 33.683342, 26.485428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885700, 33.312641, 26.362467>,  <36.833870, 33.090221, 26.288691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885700, 33.312641, 26.362467>,  <36.972084, 33.683342, 26.485428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885700, 33.312641, 26.362467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602620, 0.121206, -0.788770,
		0.768250, -0.355594, 0.532301,
		-0.215964, -0.926748, -0.307405,
		36.820911, 33.034618, 26.270245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631668, 33.384758, 26.345894>,  <36.972084, 33.683342, 26.485428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631668, 33.384758, 26.345894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347240, 33.208138, 26.127020>,  <37.176582, 33.102165, 25.995695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347240, 33.208138, 26.127020>,  <37.631668, 33.384758, 26.345894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347240, 33.208138, 26.127020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612391, -0.006542, -0.790528,
		0.345479, -0.897212, 0.275053,
		-0.711071, -0.441551, -0.547185,
		37.133919, 33.075672, 25.962864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949493, 32.793777, 25.921450>,  <37.631668, 33.384758, 26.345894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949493, 32.793777, 25.921450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611881, 32.907444, 25.739525>,  <37.409313, 32.975643, 25.630369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611881, 32.907444, 25.739525>,  <37.949493, 32.793777, 25.921450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611881, 32.907444, 25.739525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489330, 0.061027, -0.869961,
		-0.219460, -0.956830, -0.190561,
		-0.844034, 0.284169, -0.454813,
		37.358669, 32.992695, 25.603081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004612, 32.506607, 25.404890>,  <37.949493, 32.793777, 25.921450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004612, 32.506607, 25.404890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730618, 32.767109, 25.274252>,  <37.566223, 32.923409, 25.195869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730618, 32.767109, 25.274252>,  <38.004612, 32.506607, 25.404890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730618, 32.767109, 25.274252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491169, 0.081707, -0.867224,
		-0.538098, -0.754448, -0.375844,
		-0.684984, 0.651254, -0.326595,
		37.525124, 32.962486, 25.176273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843014, 32.341732, 24.729975>,  <38.004612, 32.506607, 25.404890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843014, 32.341732, 24.729975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758186, 32.731026, 24.765415>,  <37.707291, 32.964600, 24.786680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758186, 32.731026, 24.765415>,  <37.843014, 32.341732, 24.729975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758186, 32.731026, 24.765415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432042, 0.174690, -0.884773,
		-0.876566, -0.149348, -0.457522,
		-0.212064, 0.973231, 0.088603,
		37.694569, 33.022995, 24.791996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706635, 32.553001, 23.991299>,  <37.843014, 32.341732, 24.729975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706635, 32.553001, 23.991299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740051, 32.891556, 24.201687>,  <37.760101, 33.094688, 24.327921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740051, 32.891556, 24.201687>,  <37.706635, 32.553001, 23.991299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740051, 32.891556, 24.201687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421818, 0.448160, -0.788176,
		-0.902823, 0.287712, -0.319581,
		0.083544, 0.846389, 0.525971,
		37.765114, 33.145473, 24.359478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576290, 33.010269, 23.515064>,  <37.706635, 32.553001, 23.991299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576290, 33.010269, 23.515064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781567, 33.178478, 23.814341>,  <37.904732, 33.279404, 23.993906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781567, 33.178478, 23.814341>,  <37.576290, 33.010269, 23.515064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781567, 33.178478, 23.814341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496441, 0.565672, -0.658454,
		-0.700129, 0.709347, 0.081533,
		0.513193, 0.420526, 0.748192,
		37.935524, 33.304638, 24.038797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405636, 33.805252, 23.396284>,  <37.576290, 33.010269, 23.515064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405636, 33.805252, 23.396284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717388, 33.733570, 23.636435>,  <37.904442, 33.690563, 23.780525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717388, 33.733570, 23.636435>,  <37.405636, 33.805252, 23.396284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717388, 33.733570, 23.636435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565463, 0.613867, -0.550834,
		-0.269841, 0.768800, 0.579769,
		0.779383, -0.179200, 0.600375,
		37.951202, 33.679810, 23.816547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716938, 34.512299, 23.512625>,  <37.405636, 33.805252, 23.396284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716938, 34.512299, 23.512625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995960, 34.240158, 23.602547>,  <38.163376, 34.076874, 23.656500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995960, 34.240158, 23.602547>,  <37.716938, 34.512299, 23.512625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995960, 34.240158, 23.602547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679514, 0.528586, -0.508780,
		0.227319, 0.507662, 0.831027,
		0.697558, -0.680350, 0.224805,
		38.205227, 34.036053, 23.669989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183739, 34.781178, 24.041069>,  <37.716938, 34.512299, 23.512625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183739, 34.781178, 24.041069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353039, 34.505127, 23.806263>,  <38.454620, 34.339497, 23.665380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353039, 34.505127, 23.806263>,  <38.183739, 34.781178, 24.041069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353039, 34.505127, 23.806263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551251, 0.710340, -0.437653,
		0.719015, -0.138356, 0.681084,
		0.423249, -0.690127, -0.587014,
		38.480015, 34.298088, 23.630159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836006, 34.992714, 24.011440>,  <38.183739, 34.781178, 24.041069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836006, 34.992714, 24.011440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790867, 34.757332, 23.691193>,  <38.763783, 34.616104, 23.499044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790867, 34.757332, 23.691193>,  <38.836006, 34.992714, 24.011440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790867, 34.757332, 23.691193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479990, 0.673226, -0.562474,
		0.869986, -0.447764, 0.206476,
		-0.112851, -0.588451, -0.800619,
		38.757011, 34.580795, 23.451008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484043, 35.132751, 23.645153>,  <38.836006, 34.992714, 24.011440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484043, 35.132751, 23.645153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260082, 34.936165, 23.378330>,  <39.125706, 34.818214, 23.218237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260082, 34.936165, 23.378330>,  <39.484043, 35.132751, 23.645153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260082, 34.936165, 23.378330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336501, 0.600819, -0.725109,
		0.757149, -0.630457, -0.171022,
		-0.559904, -0.491467, -0.667059,
		39.092110, 34.788723, 23.178213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916565, 34.901592, 23.092430>,  <39.484043, 35.132751, 23.645153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916565, 34.901592, 23.092430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550980, 34.886932, 22.930775>,  <39.331627, 34.878136, 22.833780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550980, 34.886932, 22.930775>,  <39.916565, 34.901592, 23.092430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550980, 34.886932, 22.930775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353230, 0.418381, -0.836771,
		0.199751, -0.907532, -0.369439,
		-0.913963, -0.036649, -0.404140,
		39.276791, 34.875938, 22.809532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983288, 34.634964, 22.370604>,  <39.916565, 34.901592, 23.092430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983288, 34.634964, 22.370604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637218, 34.835285, 22.381006>,  <39.429577, 34.955479, 22.387249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637218, 34.835285, 22.381006>,  <39.983288, 34.634964, 22.370604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637218, 34.835285, 22.381006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284035, 0.532116, -0.797607,
		-0.413282, -0.682680, -0.602616,
		-0.865172, 0.500800, 0.026009,
		39.377666, 34.985527, 22.388809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665901, 34.616482, 21.679224>,  <39.983288, 34.634964, 22.370604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665901, 34.616482, 21.679224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463009, 34.916801, 21.848469>,  <39.341274, 35.096992, 21.950016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463009, 34.916801, 21.848469>,  <39.665901, 34.616482, 21.679224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463009, 34.916801, 21.848469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226322, 0.589769, -0.775211,
		-0.831563, -0.297451, -0.469070,
		-0.507229, 0.750797, 0.423110,
		39.310841, 35.142040, 21.975401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321136, 34.866604, 21.113585>,  <39.665901, 34.616482, 21.679224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321136, 34.866604, 21.113585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326691, 35.141697, 21.403917>,  <39.330021, 35.306751, 21.578117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326691, 35.141697, 21.403917>,  <39.321136, 34.866604, 21.113585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326691, 35.141697, 21.403917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216912, 0.706547, -0.673603,
		-0.976093, 0.166792, -0.139369,
		0.013881, 0.687730, 0.725834,
		39.330856, 35.348015, 21.621668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857990, 35.402802, 20.989521>,  <39.321136, 34.866604, 21.113585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857990, 35.402802, 20.989521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121056, 35.584969, 21.229548>,  <39.278893, 35.694267, 21.373564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121056, 35.584969, 21.229548>,  <38.857990, 35.402802, 20.989521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121056, 35.584969, 21.229548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231308, 0.636008, -0.736200,
		-0.716925, 0.622969, 0.312935,
		0.657659, 0.455416, 0.600068,
		39.318352, 35.721592, 21.409569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865685, 36.053410, 20.774200>,  <38.857990, 35.402802, 20.989521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865685, 36.053410, 20.774200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214607, 35.999866, 20.962311>,  <39.423962, 35.967743, 21.075176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214607, 35.999866, 20.962311>,  <38.865685, 36.053410, 20.774200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214607, 35.999866, 20.962311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431462, 0.663213, -0.611546,
		-0.230034, 0.736363, 0.636281,
		0.872310, -0.133855, 0.470274,
		39.476299, 35.959709, 21.103394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402905, 36.599689, 20.854237>,  <38.865685, 36.053410, 20.774200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402905, 36.599689, 20.854237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542797, 36.961323, 20.952477>,  <39.626732, 37.178303, 21.011421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542797, 36.961323, 20.952477>,  <39.402905, 36.599689, 20.854237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542797, 36.961323, 20.952477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499698, 0.041737, -0.865194,
		-0.792459, 0.425311, -0.437172,
		0.349731, 0.904084, 0.245602,
		39.647717, 37.232548, 21.026157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478348, 36.764122, 20.242424>,  <39.402905, 36.599689, 20.854237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478348, 36.764122, 20.242424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710136, 37.043266, 20.410801>,  <39.849209, 37.210754, 20.511827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710136, 37.043266, 20.410801>,  <39.478348, 36.764122, 20.242424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710136, 37.043266, 20.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651937, -0.086975, -0.753268,
		-0.489068, 0.710929, -0.505364,
		0.579474, 0.697865, 0.420944,
		39.883980, 37.252625, 20.537085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779293, 37.175133, 19.657375>,  <39.478348, 36.764122, 20.242424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779293, 37.175133, 19.657375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020664, 37.220207, 19.973141>,  <40.165485, 37.247253, 20.162600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020664, 37.220207, 19.973141>,  <39.779293, 37.175133, 19.657375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020664, 37.220207, 19.973141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790126, 0.049081, -0.610977,
		-0.107593, 0.992418, -0.059419,
		0.603428, 0.112685, 0.789416,
		40.201691, 37.254013, 20.209965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316963, 36.693844, 19.428770>,  <39.779293, 37.175133, 19.657375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316963, 36.693844, 19.428770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687290, 36.816963, 19.516521>,  <40.909485, 36.890835, 19.569172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.687290, 36.816963, 19.516521>,  <40.316963, 36.693844, 19.428770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687290, 36.816963, 19.516521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366951, 0.592773, 0.716915,
		0.090625, -0.744231, 0.661745,
		0.925815, 0.307798, 0.219377,
		40.965034, 36.909302, 19.582335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442867, 36.526867, 20.101543>,  <40.316963, 36.693844, 19.428770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442867, 36.526867, 20.101543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598572, 36.853485, 19.931026>,  <40.691994, 37.049458, 19.828716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598572, 36.853485, 19.931026>,  <40.442867, 36.526867, 20.101543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598572, 36.853485, 19.931026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398748, 0.566562, 0.721116,
		0.830347, -0.110718, 0.546136,
		0.389260, 0.816547, -0.426295,
		40.715351, 37.098450, 19.803139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092415, 36.783482, 20.402252>,  <40.442867, 36.526867, 20.101543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092415, 36.783482, 20.402252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833405, 37.033962, 20.228550>,  <40.677998, 37.184250, 20.124329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833405, 37.033962, 20.228550>,  <41.092415, 36.783482, 20.402252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833405, 37.033962, 20.228550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143937, 0.459096, 0.876649,
		0.748325, 0.630160, -0.207143,
		-0.647528, 0.626203, -0.434256,
		40.639145, 37.221825, 20.098272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147778, 37.397388, 20.774599>,  <41.092415, 36.783482, 20.402252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147778, 37.397388, 20.774599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794106, 37.474823, 20.604542>,  <40.581902, 37.521282, 20.502506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794106, 37.474823, 20.604542>,  <41.147778, 37.397388, 20.774599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794106, 37.474823, 20.604542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336607, 0.367029, 0.867171,
		0.323913, 0.909843, -0.259357,
		-0.884181, 0.193586, -0.425145,
		40.528851, 37.532898, 20.476997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736904, 38.030739, 21.171839>,  <41.147778, 37.397388, 20.774599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736904, 38.030739, 21.171839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464962, 37.811073, 20.977434>,  <40.301796, 37.679272, 20.860792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464962, 37.811073, 20.977434>,  <40.736904, 38.030739, 21.171839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464962, 37.811073, 20.977434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696588, 0.276419, 0.662086,
		-0.229253, 0.788675, -0.570469,
		-0.679859, -0.549167, -0.486012,
		40.261005, 37.646324, 20.831631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056770, 38.428062, 21.042921>,  <40.736904, 38.030739, 21.171839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056770, 38.428062, 21.042921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933029, 38.047684, 21.042137>,  <39.858784, 37.819458, 21.041668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933029, 38.047684, 21.042137>,  <40.056770, 38.428062, 21.042921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933029, 38.047684, 21.042137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744245, 0.240830, 0.622977,
		-0.591944, 0.194180, -0.782238,
		-0.309356, -0.950944, -0.001959,
		39.840221, 37.762402, 21.041550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355350, 38.449707, 20.956812>,  <40.056770, 38.428062, 21.042921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355350, 38.449707, 20.956812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444225, 38.106525, 21.142088>,  <39.497551, 37.900616, 21.253254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444225, 38.106525, 21.142088>,  <39.355350, 38.449707, 20.956812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444225, 38.106525, 21.142088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718749, 0.176874, 0.672395,
		-0.658812, -0.482314, -0.577356,
		0.222186, -0.857956, 0.463190,
		39.510880, 37.849140, 21.281044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744160, 38.331928, 21.308577>,  <39.355350, 38.449707, 20.956812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744160, 38.331928, 21.308577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012222, 38.078964, 21.463987>,  <39.173061, 37.927185, 21.557234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012222, 38.078964, 21.463987>,  <38.744160, 38.331928, 21.308577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012222, 38.078964, 21.463987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592099, -0.139864, 0.793635,
		-0.447560, -0.761905, -0.468178,
		0.670155, -0.632407, 0.388526,
		39.213268, 37.889240, 21.580545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369530, 37.765350, 21.622322>,  <38.744160, 38.331928, 21.308577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369530, 37.765350, 21.622322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728451, 37.757984, 21.798735>,  <38.943802, 37.753563, 21.904583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728451, 37.757984, 21.798735>,  <38.369530, 37.765350, 21.622322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728451, 37.757984, 21.798735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423840, -0.315075, 0.849169,
		0.123319, -0.948888, -0.290523,
		0.897303, -0.018416, 0.441031,
		38.997643, 37.752460, 21.931044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428555, 37.173161, 22.040726>,  <38.369530, 37.765350, 21.622322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428555, 37.173161, 22.040726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702137, 37.405758, 22.216944>,  <38.866287, 37.545315, 22.322674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702137, 37.405758, 22.216944>,  <38.428555, 37.173161, 22.040726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702137, 37.405758, 22.216944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405095, -0.199498, 0.892244,
		0.606719, -0.788714, 0.099111,
		0.683953, 0.581490, 0.440543,
		38.907322, 37.580204, 22.349106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478378, 36.945663, 22.723772>,  <38.428555, 37.173161, 22.040726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478378, 36.945663, 22.723772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631123, 37.313221, 22.763399>,  <38.722771, 37.533756, 22.787176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631123, 37.313221, 22.763399>,  <38.478378, 36.945663, 22.723772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631123, 37.313221, 22.763399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297223, 0.020600, 0.954586,
		0.875123, -0.393965, 0.280983,
		0.381862, 0.918894, 0.099068,
		38.745682, 37.588890, 22.793119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630558, 37.005215, 23.435808>,  <38.478378, 36.945663, 22.723772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630558, 37.005215, 23.435808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653042, 37.388359, 23.323141>,  <38.666531, 37.618248, 23.255541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653042, 37.388359, 23.323141>,  <38.630558, 37.005215, 23.435808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653042, 37.388359, 23.323141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251987, 0.286593, 0.924320,
		0.966097, 0.019022, 0.257478,
		0.056209, 0.957864, -0.281670,
		38.669903, 37.675716, 23.238640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164654, 37.369728, 23.900160>,  <38.630558, 37.005215, 23.435808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164654, 37.369728, 23.900160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893120, 37.622383, 23.750378>,  <38.730202, 37.773975, 23.660509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893120, 37.622383, 23.750378>,  <39.164654, 37.369728, 23.900160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893120, 37.622383, 23.750378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159704, 0.370745, 0.914900,
		0.716717, 0.680865, -0.150798,
		-0.678831, 0.631642, -0.374456,
		38.689472, 37.811874, 23.638041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232502, 38.018448, 24.243444>,  <39.164654, 37.369728, 23.900160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232502, 38.018448, 24.243444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871239, 38.036041, 24.072624>,  <38.654480, 38.046597, 23.970133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871239, 38.036041, 24.072624>,  <39.232502, 38.018448, 24.243444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871239, 38.036041, 24.072624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400628, 0.271128, 0.875207,
		0.154281, 0.961538, -0.227249,
		-0.903158, 0.043985, -0.427048,
		38.600292, 38.049236, 23.944510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971569, 38.651875, 24.465687>,  <39.232502, 38.018448, 24.243444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971569, 38.651875, 24.465687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657520, 38.425766, 24.364454>,  <38.469090, 38.290100, 24.303715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657520, 38.425766, 24.364454>,  <38.971569, 38.651875, 24.465687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657520, 38.425766, 24.364454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471738, 0.281024, 0.835757,
		-0.401310, 0.775558, -0.487299,
		-0.785120, -0.565274, -0.253082,
		38.421986, 38.256184, 24.288530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435909, 39.100147, 24.676546>,  <38.971569, 38.651875, 24.465687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435909, 39.100147, 24.676546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250359, 38.747795, 24.638880>,  <38.139027, 38.536385, 24.616280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250359, 38.747795, 24.638880>,  <38.435909, 39.100147, 24.676546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250359, 38.747795, 24.638880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504387, 0.175230, 0.845511,
		-0.728291, 0.439713, -0.525590,
		-0.463881, -0.880879, -0.094167,
		38.111195, 38.483532, 24.610630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725609, 39.208611, 24.782730>,  <38.435909, 39.100147, 24.676546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725609, 39.208611, 24.782730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769714, 38.814476, 24.834827>,  <37.796177, 38.577995, 24.866085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769714, 38.814476, 24.834827>,  <37.725609, 39.208611, 24.782730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769714, 38.814476, 24.834827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567345, 0.045196, 0.822239,
		-0.816065, -0.164554, -0.554040,
		0.110262, -0.985332, 0.130241,
		37.802792, 38.518875, 24.873899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114513, 39.006744, 25.007008>,  <37.725609, 39.208611, 24.782730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114513, 39.006744, 25.007008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321560, 38.682297, 25.115932>,  <37.445786, 38.487629, 25.181288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321560, 38.682297, 25.115932>,  <37.114513, 39.006744, 25.007008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321560, 38.682297, 25.115932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498518, -0.027238, 0.866451,
		-0.695381, -0.584241, -0.418459,
		0.517615, -0.811123, 0.272314,
		37.476845, 38.438961, 25.197626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647255, 38.436604, 25.245024>,  <37.114513, 39.006744, 25.007008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647255, 38.436604, 25.245024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987648, 38.324741, 25.422842>,  <37.191883, 38.257622, 25.529533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987648, 38.324741, 25.422842>,  <36.647255, 38.436604, 25.245024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987648, 38.324741, 25.422842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477177, -0.058123, 0.876883,
		-0.219392, -0.958338, -0.182910,
		0.850981, -0.279662, 0.444545,
		37.242943, 38.240845, 25.556206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609348, 37.728851, 25.630379>,  <36.647255, 38.436604, 25.245024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609348, 37.728851, 25.630379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911221, 37.909554, 25.820694>,  <37.092342, 38.017975, 25.934883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911221, 37.909554, 25.820694>,  <36.609348, 37.728851, 25.630379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911221, 37.909554, 25.820694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422528, -0.220133, 0.879211,
		0.501926, -0.864556, 0.024750,
		0.754679, 0.451757, 0.475790,
		37.137623, 38.045082, 25.963430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644394, 37.196964, 26.138697>,  <36.609348, 37.728851, 25.630379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644394, 37.196964, 26.138697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851032, 37.520252, 26.251772>,  <36.975018, 37.714226, 26.319616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851032, 37.520252, 26.251772>,  <36.644394, 37.196964, 26.138697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851032, 37.520252, 26.251772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169544, -0.227059, 0.959009,
		0.839274, -0.543351, 0.019730,
		0.516598, 0.808217, 0.282686,
		37.006012, 37.762718, 26.336578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029903, 37.003071, 26.645666>,  <36.644394, 37.196964, 26.138697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029903, 37.003071, 26.645666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042408, 37.398457, 26.704933>,  <37.049911, 37.635689, 26.740494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042408, 37.398457, 26.704933>,  <37.029903, 37.003071, 26.645666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042408, 37.398457, 26.704933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186477, -0.139870, 0.972452,
		0.981962, -0.058026, 0.179954,
		0.031257, 0.988468, 0.148167,
		37.051785, 37.694996, 26.749384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404362, 37.129780, 27.344065>,  <37.029903, 37.003071, 26.645666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404362, 37.129780, 27.344065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204685, 37.466583, 27.262255>,  <37.084881, 37.668667, 27.213169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204685, 37.466583, 27.262255>,  <37.404362, 37.129780, 27.344065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204685, 37.466583, 27.262255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325910, 0.036255, 0.944706,
		0.802865, 0.538245, 0.256320,
		-0.499190, 0.842008, -0.204527,
		37.054928, 37.719185, 27.200897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591232, 37.769531, 27.766491>,  <37.404362, 37.129780, 27.344065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591232, 37.769531, 27.766491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206657, 37.824306, 27.671080>,  <36.975914, 37.857170, 27.613832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206657, 37.824306, 27.671080>,  <37.591232, 37.769531, 27.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206657, 37.824306, 27.671080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234995, 0.041653, 0.971104,
		0.142913, 0.989704, -0.007867,
		-0.961433, 0.136934, -0.238528,
		36.918228, 37.865387, 27.599522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285160, 38.254406, 28.303741>,  <37.591232, 37.769531, 27.766491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285160, 38.254406, 28.303741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990067, 38.047722, 28.129955>,  <36.813011, 37.923714, 28.025682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990067, 38.047722, 28.129955>,  <37.285160, 38.254406, 28.303741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990067, 38.047722, 28.129955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363773, -0.237879, 0.900601,
		-0.568699, 0.822451, -0.012473,
		-0.737733, -0.516709, -0.434467,
		36.768745, 37.892708, 27.999615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671997, 38.468895, 28.671946>,  <37.285160, 38.254406, 28.303741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671997, 38.468895, 28.671946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589123, 38.115990, 28.502859>,  <36.539398, 37.904247, 28.401407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589123, 38.115990, 28.502859>,  <36.671997, 38.468895, 28.671946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589123, 38.115990, 28.502859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436015, -0.303529, 0.847208,
		-0.875765, 0.359842, -0.321792,
		-0.207188, -0.882261, -0.422716,
		36.526966, 37.851311, 28.376043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021545, 38.378010, 28.890913>,  <36.671997, 38.468895, 28.671946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021545, 38.378010, 28.890913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131294, 38.014729, 28.764492>,  <36.197144, 37.796761, 28.688639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131294, 38.014729, 28.764492>,  <36.021545, 38.378010, 28.890913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131294, 38.014729, 28.764492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500031, -0.415481, 0.759832,
		-0.821396, -0.050438, -0.568124,
		0.274369, -0.908202, -0.316054,
		36.213604, 37.742268, 28.669676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460335, 37.914238, 28.945726>,  <36.021545, 38.378010, 28.890913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460335, 37.914238, 28.945726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762337, 37.653049, 28.921774>,  <35.943539, 37.496334, 28.907402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762337, 37.653049, 28.921774>,  <35.460335, 37.914238, 28.945726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762337, 37.653049, 28.921774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369553, -0.499172, 0.783747,
		-0.541661, -0.569604, -0.618187,
		0.755007, -0.652977, -0.059883,
		35.988838, 37.457157, 28.903811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271793, 37.240269, 28.690634>,  <35.460335, 37.914238, 28.945726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271793, 37.240269, 28.690634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603695, 37.123344, 28.880816>,  <35.802837, 37.053188, 28.994925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603695, 37.123344, 28.880816>,  <35.271793, 37.240269, 28.690634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603695, 37.123344, 28.880816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536868, -0.650881, 0.536775,
		0.152560, -0.700649, -0.697005,
		0.829758, -0.292309, 0.475454,
		35.852623, 37.035652, 29.023451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062653, 36.657162, 29.041739>,  <35.271793, 37.240269, 28.690634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062653, 36.657162, 29.041739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410603, 36.695732, 29.235239>,  <35.619373, 36.718876, 29.351339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410603, 36.695732, 29.235239>,  <35.062653, 36.657162, 29.041739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410603, 36.695732, 29.235239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349143, -0.572405, 0.741924,
		0.348446, -0.814281, -0.464253,
		0.869876, 0.096430, 0.483753,
		35.671566, 36.724663, 29.380365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278675, 36.025600, 29.182116>,  <35.062653, 36.657162, 29.041739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278675, 36.025600, 29.182116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452271, 36.256371, 29.458900>,  <35.556427, 36.394833, 29.624971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452271, 36.256371, 29.458900>,  <35.278675, 36.025600, 29.182116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452271, 36.256371, 29.458900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363166, -0.590864, 0.720410,
		0.824478, -0.563947, -0.046910,
		0.433990, 0.576926, 0.691960,
		35.582466, 36.429447, 29.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505615, 35.590385, 29.779793>,  <35.278675, 36.025600, 29.182116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505615, 35.590385, 29.779793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565651, 35.943172, 29.958506>,  <35.601673, 36.154842, 30.065733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565651, 35.943172, 29.958506>,  <35.505615, 35.590385, 29.779793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565651, 35.943172, 29.958506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473474, -0.332591, 0.815602,
		0.867927, -0.333948, 0.367670,
		0.150085, 0.881965, 0.446781,
		35.610676, 36.207764, 30.092541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841526, 35.414627, 30.443644>,  <35.505615, 35.590385, 29.779793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841526, 35.414627, 30.443644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649044, 35.765114, 30.454189>,  <35.533554, 35.975407, 30.460516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649044, 35.765114, 30.454189>,  <35.841526, 35.414627, 30.443644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649044, 35.765114, 30.454189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519713, -0.309380, 0.796356,
		0.705934, 0.369506, 0.604254,
		-0.481202, 0.876213, 0.026365,
		35.504684, 36.027977, 30.462099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954823, 35.687149, 31.097397>,  <35.841526, 35.414627, 30.443644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954823, 35.687149, 31.097397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623959, 35.872551, 30.970291>,  <35.425442, 35.983791, 30.894028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623959, 35.872551, 30.970291>,  <35.954823, 35.687149, 31.097397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623959, 35.872551, 30.970291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457193, -0.226224, 0.860115,
		0.326785, 0.856728, 0.399035,
		-0.827156, 0.463508, -0.317764,
		35.375813, 36.011604, 30.874962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796501, 36.119949, 31.690084>,  <35.954823, 35.687149, 31.097397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796501, 36.119949, 31.690084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475769, 36.061523, 31.458317>,  <35.283329, 36.026470, 31.319256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475769, 36.061523, 31.458317>,  <35.796501, 36.119949, 31.690084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475769, 36.061523, 31.458317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521967, -0.300820, 0.798159,
		-0.290882, 0.942429, 0.164968,
		-0.801834, -0.146062, -0.579421,
		35.235218, 36.017704, 31.284491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221272, 36.467186, 32.033352>,  <35.796501, 36.119949, 31.690084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221272, 36.467186, 32.033352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059086, 36.186272, 31.799292>,  <34.961777, 36.017723, 31.658855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059086, 36.186272, 31.799292>,  <35.221272, 36.467186, 32.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059086, 36.186272, 31.799292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418188, -0.426708, 0.801897,
		-0.812847, 0.569840, -0.120673,
		-0.405461, -0.702284, -0.585149,
		34.937447, 35.975586, 31.623747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636051, 36.507645, 32.339169>,  <35.221272, 36.467186, 32.033352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636051, 36.507645, 32.339169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626423, 36.168655, 32.127048>,  <34.620647, 35.965263, 31.999777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626423, 36.168655, 32.127048>,  <34.636051, 36.507645, 32.339169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626423, 36.168655, 32.127048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704632, -0.361904, 0.610344,
		-0.709165, 0.388354, -0.588444,
		-0.024069, -0.847471, -0.530296,
		34.619202, 35.914413, 31.967960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993481, 36.419167, 32.365108>,  <34.636051, 36.507645, 32.339169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993481, 36.419167, 32.365108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146927, 36.059406, 32.281284>,  <34.238995, 35.843548, 32.230988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146927, 36.059406, 32.281284>,  <33.993481, 36.419167, 32.365108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146927, 36.059406, 32.281284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677281, -0.428263, 0.598231,
		-0.627800, -0.087553, -0.773435,
		0.383611, -0.899403, -0.209566,
		34.262009, 35.789585, 32.218414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446716, 36.002216, 32.335087>,  <33.993481, 36.419167, 32.365108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446716, 36.002216, 32.335087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756519, 35.765278, 32.423862>,  <33.942402, 35.623116, 32.477127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756519, 35.765278, 32.423862>,  <33.446716, 36.002216, 32.335087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756519, 35.765278, 32.423862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526196, -0.408589, 0.745770,
		-0.351069, -0.694394, -0.628147,
		0.774511, -0.592345, 0.221944,
		33.988873, 35.587574, 32.490444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133797, 35.510658, 32.596836>,  <33.446716, 36.002216, 32.335087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133797, 35.510658, 32.596836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500031, 35.400349, 32.713905>,  <33.719772, 35.334164, 32.784145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500031, 35.400349, 32.713905>,  <33.133797, 35.510658, 32.596836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500031, 35.400349, 32.713905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392085, -0.450601, 0.802015,
		-0.089295, -0.849064, -0.520689,
		0.915585, -0.275770, 0.292669,
		33.774708, 35.317619, 32.801704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121437, 34.703846, 32.707584>,  <33.133797, 35.510658, 32.596836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121437, 34.703846, 32.707584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426846, 34.867905, 32.907112>,  <33.610088, 34.966339, 33.026829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426846, 34.867905, 32.907112>,  <33.121437, 34.703846, 32.707584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426846, 34.867905, 32.907112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239087, -0.538001, 0.808327,
		0.599899, -0.736433, -0.312712,
		0.763517, 0.410149, 0.498818,
		33.655899, 34.990948, 33.056759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472206, 34.174782, 33.091946>,  <33.121437, 34.703846, 32.707584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472206, 34.174782, 33.091946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561157, 34.522064, 33.269379>,  <33.614529, 34.730434, 33.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561157, 34.522064, 33.269379>,  <33.472206, 34.174782, 33.091946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561157, 34.522064, 33.269379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128007, -0.425034, 0.896080,
		0.966520, -0.256051, 0.016618,
		0.222379, 0.868207, 0.443581,
		33.627872, 34.782528, 33.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989769, 34.071793, 33.558735>,  <33.472206, 34.174782, 33.091946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989769, 34.071793, 33.558735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825268, 34.418701, 33.670959>,  <33.726566, 34.626846, 33.738293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825268, 34.418701, 33.670959>,  <33.989769, 34.071793, 33.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825268, 34.418701, 33.670959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086603, -0.343578, 0.935122,
		0.907399, 0.360271, 0.216405,
		-0.411250, 0.867271, 0.280562,
		33.701893, 34.678883, 33.755127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460186, 34.241505, 34.112289>,  <33.989769, 34.071793, 33.558735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460186, 34.241505, 34.112289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130249, 34.462975, 34.158016>,  <33.932285, 34.595856, 34.185452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130249, 34.462975, 34.158016>,  <34.460186, 34.241505, 34.112289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130249, 34.462975, 34.158016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057639, -0.118784, 0.991246,
		0.562411, 0.824215, 0.066065,
		-0.824847, 0.553679, 0.114312,
		33.882793, 34.629078, 34.192310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695747, 34.545139, 34.765003>,  <34.460186, 34.241505, 34.112289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695747, 34.545139, 34.765003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300953, 34.587582, 34.716667>,  <34.064075, 34.613049, 34.687664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300953, 34.587582, 34.716667>,  <34.695747, 34.545139, 34.765003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300953, 34.587582, 34.716667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136499, -0.155488, 0.978362,
		0.085025, 0.982122, 0.167948,
		-0.986985, 0.106110, -0.120839,
		34.004856, 34.619415, 34.680416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433796, 34.200291, 34.785217>,  <34.695747, 34.545139, 34.765003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433796, 34.200291, 34.785217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692364, 34.425751, 34.990910>,  <35.847504, 34.561028, 35.114326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692364, 34.425751, 34.990910>,  <35.433796, 34.200291, 34.785217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692364, 34.425751, 34.990910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182811, 0.539925, -0.821621,
		-0.740757, 0.625120, 0.245977,
		0.646421, 0.563654, 0.514231,
		35.886292, 34.594849, 35.145180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403610, 35.003246, 34.498924>,  <35.433796, 34.200291, 34.785217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403610, 35.003246, 34.498924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746487, 35.005455, 34.704910>,  <35.952213, 35.006779, 34.828503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746487, 35.005455, 34.704910>,  <35.403610, 35.003246, 34.498924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746487, 35.005455, 34.704910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359139, 0.710271, -0.605421,
		-0.369107, 0.703907, 0.606857,
		0.857193, 0.005519, 0.514966,
		36.003643, 35.007111, 34.859402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541565, 35.769108, 34.687046>,  <35.403610, 35.003246, 34.498924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541565, 35.769108, 34.687046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877651, 35.552834, 34.670574>,  <36.079304, 35.423069, 34.660690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877651, 35.552834, 34.670574>,  <35.541565, 35.769108, 34.687046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877651, 35.552834, 34.670574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431650, 0.712872, -0.552713,
		0.328200, 0.446622, 0.832354,
		0.840216, -0.540686, -0.041180,
		36.129715, 35.390629, 34.658218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029942, 36.269947, 34.672489>,  <35.541565, 35.769108, 34.687046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029942, 36.269947, 34.672489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211441, 35.929436, 34.567085>,  <36.320339, 35.725128, 34.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211441, 35.929436, 34.567085>,  <36.029942, 36.269947, 34.672489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211441, 35.929436, 34.567085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522538, 0.493702, -0.695135,
		0.721851, 0.177719, 0.668841,
		0.453746, -0.851278, -0.263514,
		36.347565, 35.674053, 34.488029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684650, 36.397709, 34.666302>,  <36.029942, 36.269947, 34.672489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684650, 36.397709, 34.666302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636307, 36.091480, 34.413544>,  <36.607300, 35.907742, 34.261890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636307, 36.091480, 34.413544>,  <36.684650, 36.397709, 34.666302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636307, 36.091480, 34.413544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550807, 0.477854, -0.684301,
		0.825836, -0.430755, 0.363931,
		-0.120860, -0.765576, -0.631891,
		36.600048, 35.861809, 34.223976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439930, 36.316494, 34.415546>,  <36.684650, 36.397709, 34.666302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439930, 36.316494, 34.415546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180725, 36.146324, 34.162849>,  <37.025204, 36.044224, 34.011230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180725, 36.146324, 34.162849>,  <37.439930, 36.316494, 34.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180725, 36.146324, 34.162849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523856, 0.353142, -0.775156,
		0.552864, -0.833250, -0.005978,
		-0.648010, -0.425424, -0.631742,
		36.986320, 36.018696, 33.973328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940182, 35.902843, 33.940983>,  <37.439930, 36.316494, 34.415546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940182, 35.902843, 33.940983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580803, 35.977306, 33.781914>,  <37.365177, 36.021984, 33.686474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580803, 35.977306, 33.781914>,  <37.940182, 35.902843, 33.940983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580803, 35.977306, 33.781914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438934, 0.356877, -0.824607,
		-0.011585, -0.915415, -0.402344,
		-0.898444, 0.186156, -0.397672,
		37.311268, 36.033154, 33.662613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034035, 35.819546, 33.318314>,  <37.940182, 35.902843, 33.940983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034035, 35.819546, 33.318314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689972, 36.023201, 33.306229>,  <37.483536, 36.145393, 33.298977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689972, 36.023201, 33.306229>,  <38.034035, 35.819546, 33.318314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689972, 36.023201, 33.306229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381616, 0.603151, -0.700413,
		-0.338382, -0.613994, -0.713098,
		-0.860155, 0.509137, -0.030215,
		37.431927, 36.175941, 33.297165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794262, 35.868382, 32.589806>,  <38.034035, 35.819546, 33.318314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794262, 35.868382, 32.589806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616688, 36.165104, 32.790863>,  <37.510143, 36.343136, 32.911499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616688, 36.165104, 32.790863>,  <37.794262, 35.868382, 32.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616688, 36.165104, 32.790863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208749, 0.631131, -0.747059,
		-0.871405, -0.226719, -0.435031,
		-0.443935, 0.741803, 0.502643,
		37.483509, 36.387646, 32.941654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207901, 36.114674, 32.138599>,  <37.794262, 35.868382, 32.589806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207901, 36.114674, 32.138599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353329, 36.369850, 32.410145>,  <37.440586, 36.522957, 32.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353329, 36.369850, 32.410145>,  <37.207901, 36.114674, 32.138599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353329, 36.369850, 32.410145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374530, 0.567142, -0.733538,
		-0.852963, 0.520945, -0.032733,
		0.363568, 0.637940, 0.678860,
		37.462399, 36.561234, 32.613804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100304, 36.710030, 31.778730>,  <37.207901, 36.114674, 32.138599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100304, 36.710030, 31.778730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342793, 36.837364, 32.070251>,  <37.488285, 36.913765, 32.245163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342793, 36.837364, 32.070251>,  <37.100304, 36.710030, 31.778730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342793, 36.837364, 32.070251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455212, 0.612540, -0.646202,
		-0.652128, 0.723505, 0.226429,
		0.606227, 0.318333, 0.728803,
		37.524662, 36.932865, 32.288891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061947, 37.438622, 31.714832>,  <37.100304, 36.710030, 31.778730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061947, 37.438622, 31.714832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404472, 37.335445, 31.893806>,  <37.609989, 37.273540, 32.001190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404472, 37.335445, 31.893806>,  <37.061947, 37.438622, 31.714832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404472, 37.335445, 31.893806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501660, 0.621315, -0.601917,
		-0.122742, 0.739889, 0.661436,
		0.856313, -0.257936, 0.447435,
		37.661366, 37.258064, 32.028038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441349, 38.025372, 31.858795>,  <37.061947, 37.438622, 31.714832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441349, 38.025372, 31.858795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724384, 37.742733, 31.861389>,  <37.894207, 37.573151, 31.862946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724384, 37.742733, 31.861389>,  <37.441349, 38.025372, 31.858795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724384, 37.742733, 31.861389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472468, 0.466266, -0.747911,
		0.525447, 0.532276, 0.663768,
		0.707587, -0.706596, 0.006486,
		37.936661, 37.530754, 31.863335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084145, 38.358242, 31.742237>,  <37.441349, 38.025372, 31.858795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084145, 38.358242, 31.742237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134136, 37.967594, 31.672283>,  <38.164131, 37.733204, 31.630310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134136, 37.967594, 31.672283>,  <38.084145, 38.358242, 31.742237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134136, 37.967594, 31.672283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581631, 0.214922, -0.784547,
		0.803794, -0.003666, 0.594896,
		0.124980, -0.976624, -0.174885,
		38.171631, 37.674606, 31.619818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797859, 38.382607, 31.552547>,  <38.084145, 38.358242, 31.742237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797859, 38.382607, 31.552547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617874, 38.047497, 31.428827>,  <38.509884, 37.846432, 31.354595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617874, 38.047497, 31.428827>,  <38.797859, 38.382607, 31.552547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617874, 38.047497, 31.428827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502995, 0.048432, -0.862931,
		0.737922, -0.543863, 0.399604,
		-0.449963, -0.837775, -0.309300,
		38.482883, 37.796165, 31.336037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274414, 38.125294, 31.064064>,  <38.797859, 38.382607, 31.552547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274414, 38.125294, 31.064064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970001, 37.885471, 30.964977>,  <38.787354, 37.741577, 30.905525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970001, 37.885471, 30.964977>,  <39.274414, 38.125294, 31.064064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970001, 37.885471, 30.964977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381907, -0.105400, -0.918171,
		0.524389, -0.793359, 0.309189,
		-0.761027, -0.599560, -0.247719,
		38.741692, 37.705605, 30.890661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471092, 37.442032, 30.655128>,  <39.274414, 38.125294, 31.064064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471092, 37.442032, 30.655128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094513, 37.530033, 30.552938>,  <38.868565, 37.582832, 30.491625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094513, 37.530033, 30.552938>,  <39.471092, 37.442032, 30.655128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094513, 37.530033, 30.552938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252529, -0.041914, -0.966681,
		-0.223379, -0.974598, -0.016096,
		-0.941451, 0.220001, -0.255477,
		38.812077, 37.596035, 30.476295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427307, 37.143166, 29.989012>,  <39.471092, 37.442032, 30.655128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427307, 37.143166, 29.989012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112926, 37.390446, 29.985043>,  <38.924297, 37.538815, 29.982662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112926, 37.390446, 29.985043>,  <39.427307, 37.143166, 29.989012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112926, 37.390446, 29.985043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152268, 0.177984, -0.972181,
		-0.599241, -0.765601, -0.234020,
		-0.785955, 0.618204, -0.009921,
		38.877140, 37.575909, 29.982067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068966, 37.038895, 29.279564>,  <39.427307, 37.143166, 29.989012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068966, 37.038895, 29.279564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939713, 37.386864, 29.428600>,  <38.862160, 37.595646, 29.518023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939713, 37.386864, 29.428600>,  <39.068966, 37.038895, 29.279564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939713, 37.386864, 29.428600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048544, 0.408432, -0.911497,
		-0.945107, -0.276449, -0.174207,
		-0.323134, 0.869919, 0.372592,
		38.842773, 37.647839, 29.540379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544048, 37.246174, 28.841822>,  <39.068966, 37.038895, 29.279564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544048, 37.246174, 28.841822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695351, 37.585018, 28.991127>,  <38.786133, 37.788322, 29.080711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695351, 37.585018, 28.991127>,  <38.544048, 37.246174, 28.841822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695351, 37.585018, 28.991127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038087, 0.417125, -0.908051,
		-0.924915, 0.329263, 0.190046,
		0.378260, 0.847108, 0.373265,
		38.808830, 37.839149, 29.103107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267780, 37.699093, 28.500931>,  <38.544048, 37.246174, 28.841822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267780, 37.699093, 28.500931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583317, 37.901817, 28.639997>,  <38.772640, 38.023453, 28.723438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583317, 37.901817, 28.639997>,  <38.267780, 37.699093, 28.500931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583317, 37.901817, 28.639997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207592, 0.312720, -0.926883,
		-0.578474, 0.803338, 0.141478,
		0.788843, 0.506808, 0.347667,
		38.819969, 38.053860, 28.744297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280243, 38.338203, 28.149191>,  <38.267780, 37.699093, 28.500931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280243, 38.338203, 28.149191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652378, 38.323952, 28.295177>,  <38.875660, 38.315399, 28.382769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652378, 38.323952, 28.295177>,  <38.280243, 38.338203, 28.149191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652378, 38.323952, 28.295177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331337, 0.508112, -0.795008,
		-0.157116, 0.860554, 0.484522,
		0.930339, -0.035631, 0.364966,
		38.931480, 38.313263, 28.404667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534637, 39.079639, 28.224070>,  <38.280243, 38.338203, 28.149191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534637, 39.079639, 28.224070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822571, 38.811794, 28.150894>,  <38.995331, 38.651089, 28.106989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822571, 38.811794, 28.150894>,  <38.534637, 39.079639, 28.224070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822571, 38.811794, 28.150894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324416, 0.557514, -0.764154,
		0.613677, 0.490713, 0.618548,
		0.719830, -0.669610, -0.182939,
		39.038521, 38.610912, 28.096012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090076, 39.499790, 27.926092>,  <38.534637, 39.079639, 28.224070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090076, 39.499790, 27.926092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213028, 39.127819, 27.845337>,  <39.286797, 38.904636, 27.796885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213028, 39.127819, 27.845337>,  <39.090076, 39.499790, 27.926092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213028, 39.127819, 27.845337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407659, 0.320386, -0.855083,
		0.859846, 0.180531, 0.477571,
		0.307376, -0.929925, -0.201888,
		39.305241, 38.848843, 27.784771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655071, 39.667439, 27.544941>,  <39.090076, 39.499790, 27.926092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655071, 39.667439, 27.544941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617439, 39.273869, 27.484219>,  <39.594860, 39.037727, 27.447784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617439, 39.273869, 27.484219>,  <39.655071, 39.667439, 27.544941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617439, 39.273869, 27.484219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512364, 0.082885, -0.854759,
		0.853599, -0.158198, 0.496329,
		-0.094083, -0.983922, -0.151806,
		39.589214, 38.978691, 27.438677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350323, 39.280964, 27.259220>,  <39.655071, 39.667439, 27.544941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350323, 39.280964, 27.259220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035912, 39.063675, 27.141193>,  <39.847263, 38.933300, 27.070377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035912, 39.063675, 27.141193>,  <40.350323, 39.280964, 27.259220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035912, 39.063675, 27.141193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304707, 0.074844, -0.949501,
		0.537876, -0.836245, 0.106695,
		-0.786030, -0.543224, -0.295066,
		39.800102, 38.900707, 27.052673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629478, 38.733231, 26.877663>,  <40.350323, 39.280964, 27.259220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629478, 38.733231, 26.877663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256870, 38.709435, 26.734146>,  <40.033306, 38.695156, 26.648035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256870, 38.709435, 26.734146>,  <40.629478, 38.733231, 26.877663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256870, 38.709435, 26.734146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362458, -0.233029, -0.902398,
		-0.029926, -0.970649, 0.238634,
		-0.931520, -0.059489, -0.358792,
		39.977413, 38.691589, 26.626509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585445, 38.125160, 26.469656>,  <40.629478, 38.733231, 26.877663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585445, 38.125160, 26.469656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281525, 38.350620, 26.340046>,  <40.099171, 38.485897, 26.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281525, 38.350620, 26.340046>,  <40.585445, 38.125160, 26.469656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281525, 38.350620, 26.340046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343972, -0.074416, -0.936026,
		-0.551709, -0.822651, -0.137340,
		-0.759803, 0.563655, -0.324025,
		40.053585, 38.519718, 26.242838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348896, 37.796516, 25.835873>,  <40.585445, 38.125160, 26.469656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348896, 37.796516, 25.835873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231041, 38.178082, 25.813131>,  <40.160328, 38.407021, 25.799486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231041, 38.178082, 25.813131>,  <40.348896, 37.796516, 25.835873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231041, 38.178082, 25.813131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281178, 0.029679, -0.959197,
		-0.913305, -0.298606, -0.276964,
		-0.294642, 0.953915, -0.056855,
		40.142647, 38.464256, 25.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110695, 37.834965, 25.169144>,  <40.348896, 37.796516, 25.835873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110695, 37.834965, 25.169144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199394, 38.203484, 25.296913>,  <40.252613, 38.424595, 25.373575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199394, 38.203484, 25.296913>,  <40.110695, 37.834965, 25.169144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199394, 38.203484, 25.296913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419332, 0.205643, -0.884235,
		-0.880334, 0.330022, -0.340731,
		0.221748, 0.921302, 0.319423,
		40.265919, 38.479874, 25.392740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902634, 38.288994, 24.641344>,  <40.110695, 37.834965, 25.169144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902634, 38.288994, 24.641344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131153, 38.534966, 24.858776>,  <40.268265, 38.682549, 24.989235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131153, 38.534966, 24.858776>,  <39.902634, 38.288994, 24.641344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131153, 38.534966, 24.858776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433302, 0.336506, -0.836070,
		-0.697045, 0.713177, -0.074208,
		0.571294, 0.614933, 0.543581,
		40.302540, 38.719444, 25.021851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008900, 38.776806, 24.204153>,  <39.902634, 38.288994, 24.641344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008900, 38.776806, 24.204153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298054, 38.846310, 24.471661>,  <40.471546, 38.888012, 24.632164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298054, 38.846310, 24.471661>,  <40.008900, 38.776806, 24.204153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298054, 38.846310, 24.471661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659592, 0.114836, -0.742800,
		-0.205864, 0.978070, -0.031595,
		0.722882, 0.173755, 0.668768,
		40.514919, 38.898438, 24.672291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440628, 39.340527, 23.937082>,  <40.008900, 38.776806, 24.204153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440628, 39.340527, 23.937082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679150, 39.160294, 24.202831>,  <40.822262, 39.052155, 24.362280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679150, 39.160294, 24.202831>,  <40.440628, 39.340527, 23.937082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679150, 39.160294, 24.202831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765265, 0.069104, -0.639996,
		0.242462, 0.890055, 0.386025,
		0.596307, -0.450585, 0.664372,
		40.858040, 39.025120, 24.402143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985413, 39.650948, 23.912745>,  <40.440628, 39.340527, 23.937082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985413, 39.650948, 23.912745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105358, 39.316242, 24.096008>,  <41.177326, 39.115417, 24.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105358, 39.316242, 24.096008>,  <40.985413, 39.650948, 23.912745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105358, 39.316242, 24.096008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805621, -0.035108, -0.591390,
		0.510940, 0.546435, 0.663588,
		0.299859, -0.836765, 0.458157,
		41.195316, 39.065212, 24.233456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699600, 39.686672, 24.054138>,  <40.985413, 39.650948, 23.912745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699600, 39.686672, 24.054138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657703, 39.290684, 24.016230>,  <41.632565, 39.053089, 23.993484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657703, 39.290684, 24.016230>,  <41.699600, 39.686672, 24.054138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657703, 39.290684, 24.016230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729578, -0.011729, -0.683797,
		0.675830, -0.140765, 0.723491,
		-0.104740, -0.989973, -0.094772,
		41.626282, 38.993690, 23.987799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384792, 39.493065, 23.931995>,  <41.699600, 39.686672, 24.054138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384792, 39.493065, 23.931995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186756, 39.159561, 23.834242>,  <42.067932, 38.959457, 23.775589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186756, 39.159561, 23.834242>,  <42.384792, 39.493065, 23.931995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186756, 39.159561, 23.834242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667961, -0.185383, -0.720737,
		0.555619, -0.520070, 0.648703,
		-0.495092, -0.833763, -0.244384,
		42.038227, 38.909431, 23.760927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823509, 38.932510, 23.852619>,  <42.384792, 39.493065, 23.931995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823509, 38.932510, 23.852619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516010, 38.795811, 23.636385>,  <42.331509, 38.713791, 23.506643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.516010, 38.795811, 23.636385>,  <42.823509, 38.932510, 23.852619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516010, 38.795811, 23.636385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580844, -0.019316, -0.813786,
		0.267665, -0.939594, 0.213350,
		-0.768749, -0.341745, -0.540587,
		42.285385, 38.693287, 23.474209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045990, 38.364029, 23.459202>,  <42.823509, 38.932510, 23.852619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045990, 38.364029, 23.459202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712673, 38.467384, 23.263706>,  <42.512684, 38.529400, 23.146410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712673, 38.467384, 23.263706>,  <43.045990, 38.364029, 23.459202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712673, 38.467384, 23.263706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535451, 0.157237, -0.829801,
		-0.137567, -0.953158, -0.269381,
		-0.833287, 0.258393, -0.488738,
		42.462688, 38.544903, 23.117085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462143, 37.856472, 23.589230>,  <43.045990, 38.364029, 23.459202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462143, 37.856472, 23.589230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741249, 37.570732, 23.567965>,  <42.908714, 37.399288, 23.555204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741249, 37.570732, 23.567965>,  <42.462143, 37.856472, 23.589230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741249, 37.570732, 23.567965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014953, -0.088727, 0.995944,
		-0.716171, -0.694139, -0.072592,
		0.697764, -0.714352, -0.053164,
		42.950577, 37.356426, 23.552015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239803, 37.256187, 23.943300>,  <42.462143, 37.856472, 23.589230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239803, 37.256187, 23.943300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638458, 37.242325, 23.972982>,  <42.877651, 37.234009, 23.990791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638458, 37.242325, 23.972982>,  <42.239803, 37.256187, 23.943300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638458, 37.242325, 23.972982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076771, -0.079717, 0.993857,
		-0.028521, -0.996215, -0.082109,
		0.996641, -0.034649, 0.074207,
		42.937450, 37.231930, 23.995245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327610, 36.705101, 24.424461>,  <42.239803, 37.256187, 23.943300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327610, 36.705101, 24.424461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673458, 36.905842, 24.434055>,  <42.880966, 37.026287, 24.439812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673458, 36.905842, 24.434055>,  <42.327610, 36.705101, 24.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673458, 36.905842, 24.434055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029079, 0.002325, 0.999574,
		0.501583, -0.864950, 0.016604,
		0.864620, 0.501853, 0.023986,
		42.932846, 37.056396, 24.441252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664772, 36.463020, 24.913759>,  <42.327610, 36.705101, 24.424461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664772, 36.463020, 24.913759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881279, 36.798706, 24.892807>,  <43.011185, 37.000118, 24.880236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881279, 36.798706, 24.892807>,  <42.664772, 36.463020, 24.913759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881279, 36.798706, 24.892807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060660, 0.101106, 0.993025,
		0.838658, -0.534316, 0.105632,
		0.541269, 0.839216, -0.052382,
		43.043659, 37.050472, 24.877092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072704, 36.367680, 25.402342>,  <42.664772, 36.463020, 24.913759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072704, 36.367680, 25.402342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027840, 36.760841, 25.343950>,  <43.000919, 36.996738, 25.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027840, 36.760841, 25.343950>,  <43.072704, 36.367680, 25.402342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027840, 36.760841, 25.343950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129207, 0.131234, 0.982895,
		0.985254, 0.129105, 0.112279,
		-0.112161, 0.982909, -0.145980,
		42.994190, 37.055714, 25.300156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440430, 36.599979, 25.877159>,  <43.072704, 36.367680, 25.402342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440430, 36.599979, 25.877159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215206, 36.914337, 25.774914>,  <43.080070, 37.102951, 25.713566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215206, 36.914337, 25.774914>,  <43.440430, 36.599979, 25.877159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215206, 36.914337, 25.774914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251692, 0.131536, 0.958827,
		0.787155, 0.604214, 0.123739,
		-0.563061, 0.785890, -0.255615,
		43.046288, 37.150105, 25.698229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632141, 37.069160, 26.411911>,  <43.440430, 36.599979, 25.877159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632141, 37.069160, 26.411911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292095, 37.190563, 26.239777>,  <43.088066, 37.263405, 26.136496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292095, 37.190563, 26.239777>,  <43.632141, 37.069160, 26.411911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292095, 37.190563, 26.239777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353668, 0.276405, 0.893599,
		0.390161, 0.911857, -0.127636,
		-0.850114, 0.303507, -0.430337,
		43.037060, 37.281616, 26.110676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443722, 37.791447, 26.643562>,  <43.632141, 37.069160, 26.411911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443722, 37.791447, 26.643562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093754, 37.642582, 26.519621>,  <42.883774, 37.553261, 26.445257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093754, 37.642582, 26.519621>,  <43.443722, 37.791447, 26.643562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093754, 37.642582, 26.519621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397804, 0.187455, 0.898116,
		-0.276164, 0.909040, -0.312057,
		-0.874920, -0.372164, -0.309852,
		42.831276, 37.530933, 26.426666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952618, 38.311554, 26.809389>,  <43.443722, 37.791447, 26.643562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952618, 38.311554, 26.809389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767349, 37.959557, 26.767275>,  <42.656189, 37.748360, 26.742006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767349, 37.959557, 26.767275>,  <42.952618, 38.311554, 26.809389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767349, 37.959557, 26.767275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443132, 0.127064, 0.887406,
		-0.767532, 0.457678, -0.448805,
		-0.463173, -0.879992, -0.105286,
		42.628399, 37.695560, 26.735689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262630, 38.428162, 27.061974>,  <42.952618, 38.311554, 26.809389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262630, 38.428162, 27.061974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279282, 38.028564, 27.068779>,  <42.289272, 37.788807, 27.072863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279282, 38.028564, 27.068779>,  <42.262630, 38.428162, 27.061974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279282, 38.028564, 27.068779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615197, -0.012212, 0.788278,
		-0.787273, -0.043283, -0.615083,
		0.041631, -0.998988, 0.017013,
		42.291771, 37.728867, 27.073883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621693, 38.175644, 27.320150>,  <42.262630, 38.428162, 27.061974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621693, 38.175644, 27.320150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836914, 37.839188, 27.342020>,  <41.966045, 37.637314, 27.355143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836914, 37.839188, 27.342020>,  <41.621693, 38.175644, 27.320150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836914, 37.839188, 27.342020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525742, -0.284185, 0.801769,
		-0.658860, -0.460138, -0.595127,
		0.538051, -0.841137, 0.054676,
		41.998329, 37.586845, 27.358423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145977, 37.629917, 27.344471>,  <41.621693, 38.175644, 27.320150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145977, 37.629917, 27.344471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484676, 37.499615, 27.512709>,  <41.687897, 37.421432, 27.613651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484676, 37.499615, 27.512709>,  <41.145977, 37.629917, 27.344471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484676, 37.499615, 27.512709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519537, -0.336276, 0.785493,
		-0.114440, -0.883631, -0.453982,
		0.846749, -0.325753, 0.420596,
		41.738701, 37.401890, 27.638887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001881, 36.962513, 27.536573>,  <41.145977, 37.629917, 27.344471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001881, 36.962513, 27.536573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302448, 37.083027, 27.771383>,  <41.482788, 37.155334, 27.912270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302448, 37.083027, 27.771383>,  <41.001881, 36.962513, 27.536573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302448, 37.083027, 27.771383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438553, -0.436674, 0.785485,
		0.492997, -0.847668, -0.195993,
		0.751415, 0.301288, 0.587026,
		41.527874, 37.173412, 27.947491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309765, 36.379356, 27.999763>,  <41.001881, 36.962513, 27.536573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309765, 36.379356, 27.999763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453773, 36.697147, 28.195389>,  <41.540180, 36.887821, 28.312765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453773, 36.697147, 28.195389>,  <41.309765, 36.379356, 27.999763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453773, 36.697147, 28.195389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309674, -0.392728, 0.865949,
		0.880048, -0.463214, 0.104637,
		0.360026, 0.794479, 0.489065,
		41.561783, 36.935490, 28.342108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614964, 36.075848, 28.642656>,  <41.309765, 36.379356, 27.999763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614964, 36.075848, 28.642656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590588, 36.464252, 28.735113>,  <41.575962, 36.697296, 28.790588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590588, 36.464252, 28.735113>,  <41.614964, 36.075848, 28.642656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590588, 36.464252, 28.735113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220662, -0.238949, 0.945628,
		0.973445, 0.006618, 0.228825,
		-0.060936, 0.971010, 0.231143,
		41.572308, 36.755554, 28.804457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203781, 36.243813, 29.135033>,  <41.614964, 36.075848, 28.642656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203781, 36.243813, 29.135033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905056, 36.507877, 29.167191>,  <41.725822, 36.666317, 29.186485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.905056, 36.507877, 29.167191>,  <42.203781, 36.243813, 29.135033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905056, 36.507877, 29.167191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144984, -0.279596, 0.949108,
		0.649039, 0.697149, 0.304517,
		-0.746812, 0.660158, 0.080393,
		41.681011, 36.705925, 29.191309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308529, 36.527416, 29.756046>,  <42.203781, 36.243813, 29.135033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308529, 36.527416, 29.756046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920414, 36.587967, 29.680536>,  <41.687546, 36.624298, 29.635231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920414, 36.587967, 29.680536>,  <42.308529, 36.527416, 29.756046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920414, 36.587967, 29.680536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219383, -0.221209, 0.950230,
		0.102083, 0.963406, 0.247845,
		-0.970284, 0.151375, -0.188773,
		41.629330, 36.633381, 29.623905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066158, 36.895931, 30.402306>,  <42.308529, 36.527416, 29.756046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066158, 36.895931, 30.402306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739311, 36.774555, 30.206249>,  <41.543201, 36.701729, 30.088615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739311, 36.774555, 30.206249>,  <42.066158, 36.895931, 30.402306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739311, 36.774555, 30.206249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486556, -0.092951, 0.868691,
		-0.309153, 0.948307, -0.071688,
		-0.817122, -0.303438, -0.490140,
		41.494175, 36.683525, 30.059208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515057, 37.123188, 30.822247>,  <42.066158, 36.895931, 30.402306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515057, 37.123188, 30.822247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366901, 36.840691, 30.580906>,  <41.278008, 36.671192, 30.436102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366901, 36.840691, 30.580906>,  <41.515057, 37.123188, 30.822247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366901, 36.840691, 30.580906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659524, -0.257446, 0.706223,
		-0.654096, 0.659500, -0.370430,
		-0.370388, -0.706244, -0.603350,
		41.255783, 36.628819, 30.399900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894611, 37.259651, 30.924622>,  <41.515057, 37.123188, 30.822247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894611, 37.259651, 30.924622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930450, 36.886703, 30.784534>,  <40.951954, 36.662933, 30.700481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930450, 36.886703, 30.784534>,  <40.894611, 37.259651, 30.924622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930450, 36.886703, 30.784534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682327, -0.313618, 0.660359,
		-0.725535, 0.179795, -0.664283,
		0.089602, -0.932372, -0.350220,
		40.957333, 36.606991, 30.679468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209042, 36.988754, 30.906136>,  <40.894611, 37.259651, 30.924622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209042, 36.988754, 30.906136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466614, 36.682735, 30.903214>,  <40.621159, 36.499123, 30.901461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466614, 36.682735, 30.903214>,  <40.209042, 36.988754, 30.906136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466614, 36.682735, 30.903214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508317, -0.434942, 0.743263,
		-0.571810, -0.474897, -0.668959,
		0.643932, -0.765048, -0.007306,
		40.659794, 36.453220, 30.901022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815903, 36.338028, 30.902006>,  <40.209042, 36.988754, 30.906136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815903, 36.338028, 30.902006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171082, 36.212700, 31.036692>,  <40.384190, 36.137505, 31.117502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171082, 36.212700, 31.036692>,  <39.815903, 36.338028, 30.902006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171082, 36.212700, 31.036692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454599, -0.486654, 0.745994,
		-0.069870, -0.815475, -0.574559,
		0.887951, -0.313316, 0.336712,
		40.437466, 36.118706, 31.137705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720894, 35.701786, 31.159786>,  <39.815903, 36.338028, 30.902006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720894, 35.701786, 31.159786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071865, 35.806767, 31.320404>,  <40.282448, 35.869755, 31.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071865, 35.806767, 31.320404>,  <39.720894, 35.701786, 31.159786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071865, 35.806767, 31.320404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356662, -0.202860, 0.911943,
		0.320795, -0.943382, -0.084390,
		0.877430, 0.262448, 0.401545,
		40.335094, 35.885502, 31.440868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947483, 35.123772, 31.683331>,  <39.720894, 35.701786, 31.159786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947483, 35.123772, 31.683331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123901, 35.472897, 31.766924>,  <40.229752, 35.682373, 31.817080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123901, 35.472897, 31.766924>,  <39.947483, 35.123772, 31.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123901, 35.472897, 31.766924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411570, -0.010228, 0.911321,
		0.797551, -0.487945, 0.354714,
		0.441046, 0.872815, 0.208981,
		40.256214, 35.734741, 31.829618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198166, 35.009197, 32.353592>,  <39.947483, 35.123772, 31.683331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198166, 35.009197, 32.353592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199501, 35.406605, 32.308144>,  <40.200302, 35.645050, 32.280876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199501, 35.406605, 32.308144>,  <40.198166, 35.009197, 32.353592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199501, 35.406605, 32.308144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099823, 0.113381, 0.988524,
		0.995000, 0.008042, 0.099554,
		0.003338, 0.993519, -0.113617,
		40.200504, 35.704662, 32.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710369, 35.203648, 32.769176>,  <40.198166, 35.009197, 32.353592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710369, 35.203648, 32.769176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448067, 35.500889, 32.715836>,  <40.290688, 35.679234, 32.683830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448067, 35.500889, 32.715836>,  <40.710369, 35.203648, 32.769176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448067, 35.500889, 32.715836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181570, 0.016221, 0.983244,
		0.732818, 0.668977, 0.124289,
		-0.655752, 0.743106, -0.133354,
		40.251343, 35.723820, 32.675831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873531, 35.754745, 33.199764>,  <40.710369, 35.203648, 32.769176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873531, 35.754745, 33.199764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500603, 35.860455, 33.101017>,  <40.276848, 35.923878, 33.041767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500603, 35.860455, 33.101017>,  <40.873531, 35.754745, 33.199764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500603, 35.860455, 33.101017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246313, 0.035797, 0.968529,
		0.264789, 0.963785, 0.031718,
		-0.932318, 0.264268, -0.246871,
		40.220909, 35.939735, 33.026955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684521, 36.330757, 33.604599>,  <40.873531, 35.754745, 33.199764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684521, 36.330757, 33.604599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342335, 36.164677, 33.480797>,  <40.137024, 36.065029, 33.406517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342335, 36.164677, 33.480797>,  <40.684521, 36.330757, 33.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342335, 36.164677, 33.480797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337489, -0.006329, 0.941308,
		-0.392794, 0.909706, -0.134713,
		-0.855461, -0.415205, -0.309502,
		40.085697, 36.040115, 33.387947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129986, 36.913349, 33.712006>,  <40.684521, 36.330757, 33.604599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129986, 36.913349, 33.712006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970119, 36.547165, 33.730774>,  <39.874199, 36.327454, 33.742035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970119, 36.547165, 33.730774>,  <40.129986, 36.913349, 33.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970119, 36.547165, 33.730774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332761, 0.192587, 0.923136,
		-0.854129, 0.353335, -0.381599,
		-0.399667, -0.915459, 0.046918,
		39.850220, 36.272526, 33.744850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594200, 37.032707, 34.125538>,  <40.129986, 36.913349, 33.712006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594200, 37.032707, 34.125538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583660, 36.633259, 34.107349>,  <39.577335, 36.393589, 34.096436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583660, 36.633259, 34.107349>,  <39.594200, 37.032707, 34.125538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583660, 36.633259, 34.107349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383924, -0.031888, 0.922814,
		-0.922988, 0.041773, -0.382553,
		-0.026350, -0.998618, -0.045470,
		39.575756, 36.333672, 34.093708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891941, 36.863110, 34.221992>,  <39.594200, 37.032707, 34.125538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891941, 36.863110, 34.221992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136135, 36.565266, 34.329960>,  <39.282650, 36.386559, 34.394741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136135, 36.565266, 34.329960>,  <38.891941, 36.863110, 34.221992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136135, 36.565266, 34.329960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403686, 0.000678, 0.914897,
		-0.681428, -0.667495, -0.300176,
		0.610486, -0.744614, 0.269921,
		39.319283, 36.341881, 34.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418568, 36.508881, 34.572971>,  <38.891941, 36.863110, 34.221992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418568, 36.508881, 34.572971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764908, 36.333374, 34.669132>,  <38.972710, 36.228069, 34.726830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764908, 36.333374, 34.669132>,  <38.418568, 36.508881, 34.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764908, 36.333374, 34.669132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403638, -0.328716, 0.853828,
		-0.295598, -0.836324, -0.461718,
		0.865851, -0.438757, 0.240404,
		39.024662, 36.201744, 34.741253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204472, 35.817509, 34.814034>,  <38.418568, 36.508881, 34.572971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204472, 35.817509, 34.814034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576920, 35.870918, 34.949791>,  <38.800388, 35.902962, 35.031246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576920, 35.870918, 34.949791>,  <38.204472, 35.817509, 34.814034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576920, 35.870918, 34.949791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187257, -0.623535, 0.759039,
		0.312972, -0.770310, -0.555582,
		0.931119, 0.133522, 0.339395,
		38.856255, 35.910976, 35.051609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573895, 35.116447, 34.999821>,  <38.204472, 35.817509, 34.814034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573895, 35.116447, 34.999821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727112, 35.407589, 35.227333>,  <38.819042, 35.582272, 35.363842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727112, 35.407589, 35.227333>,  <38.573895, 35.116447, 34.999821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727112, 35.407589, 35.227333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195248, -0.538036, 0.819997,
		0.902861, -0.425146, -0.063979,
		0.383042, 0.727851, 0.568781,
		38.842026, 35.625946, 35.397968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934017, 34.711346, 35.402000>,  <38.573895, 35.116447, 34.999821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934017, 34.711346, 35.402000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876476, 35.050999, 35.605282>,  <38.841953, 35.254791, 35.727253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876476, 35.050999, 35.605282>,  <38.934017, 34.711346, 35.402000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876476, 35.050999, 35.605282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292063, -0.527101, 0.798038,
		0.945519, -0.033628, 0.323826,
		-0.143852, 0.849137, 0.508205,
		38.833321, 35.305740, 35.757744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261787, 34.583237, 36.051903>,  <38.934017, 34.711346, 35.402000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261787, 34.583237, 36.051903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027775, 34.901375, 36.115353>,  <38.887367, 35.092258, 36.153423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027775, 34.901375, 36.115353>,  <39.261787, 34.583237, 36.051903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027775, 34.901375, 36.115353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302802, -0.395658, 0.867044,
		0.752366, 0.459211, 0.472304,
		-0.585027, 0.795349, 0.158629,
		38.852268, 35.139980, 36.162941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342754, 34.849171, 36.786953>,  <39.261787, 34.583237, 36.051903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342754, 34.849171, 36.786953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985886, 34.997398, 36.683647>,  <38.771763, 35.086334, 36.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985886, 34.997398, 36.683647>,  <39.342754, 34.849171, 36.786953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985886, 34.997398, 36.683647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371531, -0.276893, 0.886169,
		0.256879, 0.886570, 0.384716,
		-0.892176, 0.370572, -0.258260,
		38.718231, 35.108570, 36.606171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091312, 35.363766, 37.347618>,  <39.342754, 34.849171, 36.786953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091312, 35.363766, 37.347618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745197, 35.258305, 37.177082>,  <38.537529, 35.195026, 37.074760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745197, 35.258305, 37.177082>,  <39.091312, 35.363766, 37.347618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745197, 35.258305, 37.177082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427679, -0.055337, 0.902235,
		-0.261470, 0.963029, -0.064876,
		-0.865289, -0.263653, -0.426336,
		38.485611, 35.179207, 37.049183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514374, 35.777618, 37.744293>,  <39.091312, 35.363766, 37.347618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514374, 35.777618, 37.744293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336975, 35.480740, 37.543316>,  <38.230537, 35.302612, 37.422729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336975, 35.480740, 37.543316>,  <38.514374, 35.777618, 37.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336975, 35.480740, 37.543316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734708, -0.020028, 0.678088,
		-0.513340, 0.669878, -0.536419,
		-0.443492, -0.742201, -0.502446,
		38.203926, 35.258080, 37.392582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809093, 35.922672, 37.806492>,  <38.514374, 35.777618, 37.744293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809093, 35.922672, 37.806492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818439, 35.533710, 37.713634>,  <37.824047, 35.300335, 37.657921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818439, 35.533710, 37.713634>,  <37.809093, 35.922672, 37.806492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818439, 35.533710, 37.713634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615604, -0.196960, 0.763045,
		-0.787709, 0.125081, -0.603216,
		0.023367, -0.972400, -0.232148,
		37.825451, 35.241989, 37.643990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192135, 35.744892, 37.917767>,  <37.809093, 35.922672, 37.806492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192135, 35.744892, 37.917767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393696, 35.399410, 37.913788>,  <37.514633, 35.192120, 37.911400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393696, 35.399410, 37.913788>,  <37.192135, 35.744892, 37.917767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393696, 35.399410, 37.913788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602911, -0.359946, 0.711995,
		-0.618535, -0.352775, -0.702114,
		0.503897, -0.863706, -0.009948,
		37.544865, 35.140297, 37.910805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711849, 35.165363, 37.694176>,  <37.192135, 35.744892, 37.917767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711849, 35.165363, 37.694176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014301, 34.973877, 37.872654>,  <37.195774, 34.858986, 37.979740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014301, 34.973877, 37.872654>,  <36.711849, 35.165363, 37.694176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014301, 34.973877, 37.872654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649434, -0.464933, 0.601725,
		-0.080601, -0.744762, -0.662445,
		0.756134, -0.478714, 0.446199,
		37.241142, 34.830261, 38.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546177, 34.403141, 37.858643>,  <36.711849, 35.165363, 37.694176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546177, 34.403141, 37.858643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823299, 34.500950, 38.130001>,  <36.989574, 34.559635, 38.292816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823299, 34.500950, 38.130001>,  <36.546177, 34.403141, 37.858643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823299, 34.500950, 38.130001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632025, -0.247076, 0.734505,
		0.347216, -0.937638, -0.016635,
		0.692810, 0.244518, 0.678399,
		37.031143, 34.574306, 38.333519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428001, 33.903172, 38.449562>,  <36.546177, 34.403141, 37.858643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428001, 33.903172, 38.449562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674110, 34.182510, 38.595852>,  <36.821777, 34.350113, 38.683624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674110, 34.182510, 38.595852>,  <36.428001, 33.903172, 38.449562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674110, 34.182510, 38.595852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423722, -0.098248, 0.900448,
		0.664756, -0.708986, 0.235455,
		0.615272, 0.698346, 0.365724,
		36.858692, 34.392014, 38.705570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824135, 33.637585, 39.095173>,  <36.428001, 33.903172, 38.449562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824135, 33.637585, 39.095173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807217, 34.036221, 39.123508>,  <36.797066, 34.275402, 39.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807217, 34.036221, 39.123508>,  <36.824135, 33.637585, 39.095173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807217, 34.036221, 39.123508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354363, -0.081253, 0.931571,
		0.934151, 0.014297, 0.356592,
		-0.042293, 0.996591, 0.070836,
		36.794529, 34.335197, 39.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861298, 33.648388, 39.755264>,  <36.824135, 33.637585, 39.095173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861298, 33.648388, 39.755264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761734, 34.026375, 39.670326>,  <36.701996, 34.253166, 39.619362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761734, 34.026375, 39.670326>,  <36.861298, 33.648388, 39.755264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761734, 34.026375, 39.670326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292729, 0.135595, 0.946532,
		0.923231, 0.297758, 0.242867,
		-0.248906, 0.944963, -0.212348,
		36.687061, 34.309864, 39.606621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222878, 34.049435, 40.234051>,  <36.861298, 33.648388, 39.755264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222878, 34.049435, 40.234051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914642, 34.264610, 40.097340>,  <36.729702, 34.393715, 40.015312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914642, 34.264610, 40.097340>,  <37.222878, 34.049435, 40.234051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914642, 34.264610, 40.097340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359024, 0.076679, 0.930173,
		0.526587, 0.839487, 0.134046,
		-0.770590, 0.537943, -0.341774,
		36.683464, 34.425995, 39.994808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260822, 34.590858, 40.614979>,  <37.222878, 34.049435, 40.234051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260822, 34.590858, 40.614979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887936, 34.536064, 40.480991>,  <36.664204, 34.503185, 40.400600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887936, 34.536064, 40.480991>,  <37.260822, 34.590858, 40.614979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887936, 34.536064, 40.480991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340343, 0.017212, 0.940144,
		-0.123024, 0.990423, -0.062668,
		-0.932219, -0.136989, -0.334966,
		36.608269, 34.494968, 40.380501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809151, 35.076866, 40.899403>,  <37.260822, 34.590858, 40.614979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809151, 35.076866, 40.899403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593246, 34.753738, 40.804672>,  <36.463703, 34.559860, 40.747833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593246, 34.753738, 40.804672>,  <36.809151, 35.076866, 40.899403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593246, 34.753738, 40.804672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443040, 0.033384, 0.895880,
		-0.715806, 0.588479, -0.375917,
		-0.539756, -0.807823, -0.236824,
		36.431320, 34.511391, 40.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087837, 35.240494, 40.933075>,  <36.809151, 35.076866, 40.899403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087837, 35.240494, 40.933075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144501, 34.847790, 40.983810>,  <36.178497, 34.612167, 41.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144501, 34.847790, 40.983810>,  <36.087837, 35.240494, 40.933075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144501, 34.847790, 40.983810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469238, 0.046226, 0.881861,
		-0.871636, -0.184439, -0.454129,
		0.141657, -0.981756, 0.126838,
		36.186996, 34.553265, 41.021862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698086, 35.197071, 41.529709>,  <36.087837, 35.240494, 40.933075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698086, 35.197071, 41.529709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816803, 34.819214, 41.473759>,  <35.888031, 34.592499, 41.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816803, 34.819214, 41.473759>,  <35.698086, 35.197071, 41.529709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816803, 34.819214, 41.473759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402430, -0.256559, 0.878765,
		-0.866006, -0.204516, -0.456297,
		0.296788, -0.944643, -0.139879,
		35.905838, 34.535820, 41.431797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248749, 34.924706, 41.918407>,  <35.698086, 35.197071, 41.529709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248749, 34.924706, 41.918407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450279, 34.596024, 41.811852>,  <35.571198, 34.398815, 41.747917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450279, 34.596024, 41.811852>,  <35.248749, 34.924706, 41.918407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450279, 34.596024, 41.811852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349948, -0.476112, 0.806755,
		-0.789743, -0.313244, -0.527431,
		0.503828, -0.821703, -0.266388,
		35.601429, 34.349514, 41.731934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872799, 34.200390, 41.771763>,  <35.248749, 34.924706, 41.918407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872799, 34.200390, 41.771763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236755, 34.139713, 41.926208>,  <35.455132, 34.103306, 42.018875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236755, 34.139713, 41.926208>,  <34.872799, 34.200390, 41.771763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236755, 34.139713, 41.926208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405012, -0.526252, 0.747679,
		0.089773, -0.836689, -0.540271,
		0.909894, -0.151695, 0.386112,
		35.509724, 34.094204, 42.042042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920494, 33.513905, 41.842266>,  <34.872799, 34.200390, 41.771763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920494, 33.513905, 41.842266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216576, 33.641743, 42.078896>,  <35.394226, 33.718445, 42.220871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216576, 33.641743, 42.078896>,  <34.920494, 33.513905, 41.842266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216576, 33.641743, 42.078896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318478, -0.608212, 0.727083,
		0.592173, -0.726593, -0.348417,
		0.740205, 0.319596, 0.591570,
		35.438637, 33.737621, 42.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125542, 32.911510, 42.165695>,  <34.920494, 33.513905, 41.842266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125542, 32.911510, 42.165695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209000, 33.241554, 42.375710>,  <35.259075, 33.439579, 42.501717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209000, 33.241554, 42.375710>,  <35.125542, 32.911510, 42.165695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209000, 33.241554, 42.375710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409399, -0.413860, 0.813089,
		0.888178, -0.384595, 0.251449,
		0.208645, 0.825110, 0.525034,
		35.271595, 33.489086, 42.533218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658440, 32.861179, 42.732540>,  <35.125542, 32.911510, 42.165695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658440, 32.861179, 42.732540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354630, 33.112659, 42.799294>,  <35.172344, 33.263550, 42.839344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354630, 33.112659, 42.799294>,  <35.658440, 32.861179, 42.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354630, 33.112659, 42.799294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291529, -0.558355, 0.776692,
		0.581490, 0.541267, 0.607371,
		-0.759527, 0.628705, 0.166883,
		35.126770, 33.301270, 42.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661667, 32.712383, 43.309906>,  <35.658440, 32.861179, 42.732540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661667, 32.712383, 43.309906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329369, 32.931377, 43.269684>,  <35.129990, 33.062775, 43.245548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329369, 32.931377, 43.269684>,  <35.661667, 32.712383, 43.309906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329369, 32.931377, 43.269684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353452, -0.379257, 0.855123,
		0.430034, 0.745935, 0.508579,
		-0.830748, 0.547490, -0.100559,
		35.080143, 33.095623, 43.239517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574928, 33.157402, 43.961243>,  <35.661667, 32.712383, 43.309906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574928, 33.157402, 43.961243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235016, 33.057621, 43.775490>,  <35.031067, 32.997753, 43.664040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235016, 33.057621, 43.775490>,  <35.574928, 33.157402, 43.961243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235016, 33.057621, 43.775490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243124, -0.596186, 0.765149,
		-0.467723, 0.763110, 0.445980,
		-0.849780, -0.249449, -0.464381,
		34.980083, 32.982784, 43.636177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199223, 33.108372, 44.572353>,  <35.574928, 33.157402, 43.961243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199223, 33.108372, 44.572353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956463, 32.915615, 44.319542>,  <34.810806, 32.799961, 44.167854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956463, 32.915615, 44.319542>,  <35.199223, 33.108372, 44.572353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956463, 32.915615, 44.319542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255371, -0.634823, 0.729236,
		-0.752637, 0.603972, 0.262211,
		-0.606896, -0.481889, -0.632029,
		34.774395, 32.771049, 44.129932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529575, 32.985420, 44.959827>,  <35.199223, 33.108372, 44.572353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529575, 32.985420, 44.959827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595242, 32.723995, 44.664288>,  <34.634644, 32.567139, 44.486965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595242, 32.723995, 44.664288>,  <34.529575, 32.985420, 44.959827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595242, 32.723995, 44.664288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306548, -0.745728, 0.591538,
		-0.937591, 0.129382, -0.322774,
		0.164167, -0.653567, -0.738850,
		34.644493, 32.527924, 44.442631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857536, 32.540226, 44.855072>,  <34.529575, 32.985420, 44.959827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857536, 32.540226, 44.855072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198135, 32.375259, 44.725544>,  <34.402496, 32.276279, 44.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198135, 32.375259, 44.725544>,  <33.857536, 32.540226, 44.855072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198135, 32.375259, 44.725544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103158, -0.737250, 0.667698,
		-0.514105, -0.535141, -0.670313,
		0.851501, -0.412415, -0.323820,
		34.453587, 32.251534, 44.628399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758789, 32.126274, 45.520409>,  <33.857536, 32.540226, 44.855072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758789, 32.126274, 45.520409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024059, 31.829702, 45.479454>,  <34.183224, 31.651760, 45.454884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024059, 31.829702, 45.479454>,  <33.758789, 32.126274, 45.520409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024059, 31.829702, 45.479454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082560, 0.208420, -0.974549,
		0.743895, 0.637846, 0.199432,
		0.663177, -0.741427, -0.102382,
		34.223011, 31.607275, 45.448738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473694, 32.324829, 45.266209>,  <33.758789, 32.126274, 45.520409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473694, 32.324829, 45.266209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378067, 31.955206, 45.146900>,  <34.320690, 31.733433, 45.075314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378067, 31.955206, 45.146900>,  <34.473694, 32.324829, 45.266209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378067, 31.955206, 45.146900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057345, 0.293208, -0.954327,
		0.969308, -0.245255, -0.017107,
		-0.239069, -0.924056, -0.298273,
		34.306347, 31.677990, 45.057419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988586, 31.978165, 44.826984>,  <34.473694, 32.324829, 45.266209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988586, 31.978165, 44.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608940, 31.875875, 44.753464>,  <34.381153, 31.814501, 44.709351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608940, 31.875875, 44.753464>,  <34.988586, 31.978165, 44.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608940, 31.875875, 44.753464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077708, 0.375422, -0.923591,
		0.305184, -0.890879, -0.336448,
		-0.949118, -0.255721, -0.183802,
		34.324203, 31.799158, 44.698322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896011, 31.643330, 44.247139>,  <34.988586, 31.978165, 44.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896011, 31.643330, 44.247139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582153, 31.881870, 44.314896>,  <34.393837, 32.024994, 44.355549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582153, 31.881870, 44.314896>,  <34.896011, 31.643330, 44.247139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582153, 31.881870, 44.314896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240688, 0.544840, -0.803255,
		-0.571315, -0.589501, -0.571042,
		-0.784646, 0.596354, 0.169389,
		34.346760, 32.060776, 44.365711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599731, 31.626444, 43.530022>,  <34.896011, 31.643330, 44.247139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599731, 31.626444, 43.530022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512482, 31.937700, 43.765621>,  <34.460133, 32.124454, 43.906979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512482, 31.937700, 43.765621>,  <34.599731, 31.626444, 43.530022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512482, 31.937700, 43.765621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164400, 0.624201, -0.763771,
		-0.961974, -0.069768, -0.264081,
		-0.218126, 0.778142, 0.588995,
		34.447044, 32.171143, 43.942318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258236, 32.064144, 43.084003>,  <34.599731, 31.626444, 43.530022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258236, 32.064144, 43.084003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381367, 32.268402, 43.405125>,  <34.455246, 32.390957, 43.597797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381367, 32.268402, 43.405125>,  <34.258236, 32.064144, 43.084003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381367, 32.268402, 43.405125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370645, 0.712756, -0.595484,
		-0.876280, 0.480859, 0.030138,
		0.307826, 0.510640, 0.802801,
		34.473713, 32.421593, 43.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847198, 32.715496, 43.017876>,  <34.258236, 32.064144, 43.084003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847198, 32.715496, 43.017876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198376, 32.793144, 43.192936>,  <34.409081, 32.839733, 43.297970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198376, 32.793144, 43.192936>,  <33.847198, 32.715496, 43.017876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198376, 32.793144, 43.192936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171401, 0.726089, -0.665896,
		-0.447033, 0.659631, 0.604192,
		0.877942, 0.194119, 0.437647,
		34.461758, 32.851379, 43.324230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847950, 33.501976, 43.159092>,  <33.847198, 32.715496, 43.017876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847950, 33.501976, 43.159092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229733, 33.384968, 43.182560>,  <34.458801, 33.314762, 43.196640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229733, 33.384968, 43.182560>,  <33.847950, 33.501976, 43.159092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229733, 33.384968, 43.182560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273483, 0.779237, -0.563912,
		0.119235, 0.554276, 0.823748,
		0.954458, -0.292520, 0.058673,
		34.516071, 33.297211, 43.200161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297966, 34.085346, 43.409309>,  <33.847950, 33.501976, 43.159092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297966, 34.085346, 43.409309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460640, 33.813084, 43.165569>,  <34.558243, 33.649727, 43.019325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460640, 33.813084, 43.165569>,  <34.297966, 34.085346, 43.409309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460640, 33.813084, 43.165569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201237, 0.717364, -0.667003,
		0.891130, 0.148634, 0.428713,
		0.406683, -0.680659, -0.609354,
		34.582645, 33.608887, 42.982761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928585, 34.360451, 43.147724>,  <34.297966, 34.085346, 43.409309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928585, 34.360451, 43.147724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788967, 34.074982, 42.904797>,  <34.705196, 33.903698, 42.759041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788967, 34.074982, 42.904797>,  <34.928585, 34.360451, 43.147724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788967, 34.074982, 42.904797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093466, 0.618335, -0.780337,
		0.932434, -0.329135, -0.149122,
		-0.349044, -0.713675, -0.607319,
		34.684254, 33.860878, 42.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728542, 34.286526, 43.289494>,  <34.928585, 34.360451, 43.147724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728542, 34.286526, 43.289494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688107, 33.943943, 43.087006>,  <35.663845, 33.738392, 42.965511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688107, 33.943943, 43.087006>,  <35.728542, 34.286526, 43.289494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688107, 33.943943, 43.087006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230623, 0.474792, -0.849344,
		0.967778, -0.202607, 0.149522,
		-0.101091, -0.856460, -0.506219,
		35.657780, 33.687004, 42.935139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422958, 34.141457, 42.967243>,  <35.728542, 34.286526, 43.289494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422958, 34.141457, 42.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110455, 34.007385, 42.756611>,  <35.922951, 33.926941, 42.630230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110455, 34.007385, 42.756611>,  <36.422958, 34.141457, 42.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110455, 34.007385, 42.756611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404150, 0.371289, -0.835947,
		0.475706, -0.865909, -0.154610,
		-0.781259, -0.335180, -0.526582,
		35.876076, 33.906830, 42.598637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674652, 33.774010, 42.413746>,  <36.422958, 34.141457, 42.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674652, 33.774010, 42.413746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312954, 33.914154, 42.316109>,  <36.095936, 33.998241, 42.257526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312954, 33.914154, 42.316109>,  <36.674652, 33.774010, 42.413746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312954, 33.914154, 42.316109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339241, 0.242283, -0.908963,
		-0.259330, -0.904734, -0.337942,
		-0.904248, 0.350365, -0.244091,
		36.041679, 34.019264, 42.242882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509346, 33.387764, 41.812901>,  <36.674652, 33.774010, 42.413746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509346, 33.387764, 41.812901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299477, 33.727547, 41.790466>,  <36.173557, 33.931416, 41.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299477, 33.727547, 41.790466>,  <36.509346, 33.387764, 41.812901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299477, 33.727547, 41.790466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334101, 0.144868, -0.931337,
		-0.783005, -0.507384, -0.359812,
		-0.524671, 0.849455, -0.056085,
		36.142075, 33.982384, 41.773640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020569, 33.313446, 41.228481>,  <36.509346, 33.387764, 41.812901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020569, 33.313446, 41.228481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057621, 33.705067, 41.301003>,  <36.079853, 33.940041, 41.344517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057621, 33.705067, 41.301003>,  <36.020569, 33.313446, 41.228481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057621, 33.705067, 41.301003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143508, 0.193314, -0.970585,
		-0.985304, 0.063892, 0.158410,
		0.092635, 0.979054, 0.181304,
		36.085411, 33.998783, 41.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459515, 33.623466, 40.861031>,  <36.020569, 33.313446, 41.228481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459515, 33.623466, 40.861031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753899, 33.886105, 40.927052>,  <35.930531, 34.043686, 40.966663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753899, 33.886105, 40.927052>,  <35.459515, 33.623466, 40.861031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753899, 33.886105, 40.927052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087379, 0.149632, -0.984873,
		-0.671358, 0.739253, 0.052751,
		0.735964, 0.656593, 0.165052,
		35.974689, 34.083084, 40.976566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337887, 34.369957, 40.500992>,  <35.459515, 33.623466, 40.861031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337887, 34.369957, 40.500992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724705, 34.279739, 40.548252>,  <35.956795, 34.225609, 40.576607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724705, 34.279739, 40.548252>,  <35.337887, 34.369957, 40.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724705, 34.279739, 40.548252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153938, 0.148288, -0.976890,
		0.202815, 0.962881, 0.178121,
		0.967042, -0.225548, 0.118149,
		36.014816, 34.212074, 40.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415764, 34.436302, 39.853321>,  <35.337887, 34.369957, 40.500992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415764, 34.436302, 39.853321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779644, 34.450130, 40.018848>,  <35.997974, 34.458427, 40.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779644, 34.450130, 40.018848>,  <35.415764, 34.436302, 39.853321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779644, 34.450130, 40.018848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406435, 0.130187, -0.904357,
		-0.085141, 0.990886, 0.104379,
		0.909704, 0.034575, 0.413816,
		36.052555, 34.460503, 40.142994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647301, 35.075764, 39.549015>,  <35.415764, 34.436302, 39.853321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647301, 35.075764, 39.549015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968189, 34.871437, 39.672630>,  <36.160721, 34.748840, 39.746799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968189, 34.871437, 39.672630>,  <35.647301, 35.075764, 39.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968189, 34.871437, 39.672630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461813, 0.202875, -0.863464,
		0.378377, 0.835408, 0.398653,
		0.802221, -0.510818, 0.309039,
		36.208855, 34.718193, 39.765343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388939, 35.530281, 39.444813>,  <35.647301, 35.075764, 39.549015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388939, 35.530281, 39.444813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449024, 35.136913, 39.485439>,  <36.485077, 34.900890, 39.509815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449024, 35.136913, 39.485439>,  <36.388939, 35.530281, 39.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449024, 35.136913, 39.485439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593338, 0.007499, -0.804918,
		0.790813, 0.181173, 0.584629,
		0.150213, -0.983423, 0.101567,
		36.494087, 34.841885, 39.515911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023064, 35.577042, 39.316551>,  <36.388939, 35.530281, 39.444813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023064, 35.577042, 39.316551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943668, 35.188290, 39.265862>,  <36.896030, 34.955040, 39.235447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943668, 35.188290, 39.265862>,  <37.023064, 35.577042, 39.316551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943668, 35.188290, 39.265862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777130, -0.077275, -0.624577,
		0.597219, -0.222454, 0.770613,
		-0.198488, -0.971876, -0.126725,
		36.884121, 34.896729, 39.227844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586979, 35.235371, 39.364117>,  <37.023064, 35.577042, 39.316551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586979, 35.235371, 39.364117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361584, 34.985683, 39.147659>,  <37.226349, 34.835869, 39.017784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361584, 34.985683, 39.147659>,  <37.586979, 35.235371, 39.364117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361584, 34.985683, 39.147659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716000, -0.042256, -0.696820,
		0.412104, -0.780103, 0.470754,
		-0.563484, -0.624223, -0.541140,
		37.192539, 34.798416, 38.985317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002419, 34.716637, 39.166069>,  <37.586979, 35.235371, 39.364117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002419, 34.716637, 39.166069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705307, 34.695675, 38.899075>,  <37.527042, 34.683098, 38.738876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705307, 34.695675, 38.899075>,  <38.002419, 34.716637, 39.166069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705307, 34.695675, 38.899075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661205, -0.214240, -0.718964,
		-0.105326, -0.975374, 0.193783,
		-0.742775, -0.052405, -0.667487,
		37.482475, 34.679955, 38.698830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257332, 34.320343, 38.679157>,  <38.002419, 34.716637, 39.166069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257332, 34.320343, 38.679157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942017, 34.469887, 38.483673>,  <37.752827, 34.559612, 38.366383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942017, 34.469887, 38.483673>,  <38.257332, 34.320343, 38.679157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942017, 34.469887, 38.483673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561311, 0.111558, -0.820052,
		-0.252069, -0.920750, -0.297794,
		-0.788284, 0.373865, -0.488706,
		37.705532, 34.582047, 38.337063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325375, 34.091370, 38.040821>,  <38.257332, 34.320343, 38.679157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325375, 34.091370, 38.040821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080616, 34.406609, 38.014038>,  <37.933762, 34.595753, 37.997967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080616, 34.406609, 38.014038>,  <38.325375, 34.091370, 38.040821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080616, 34.406609, 38.014038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477037, 0.300201, -0.826023,
		-0.630887, -0.537382, -0.559644,
		-0.611896, 0.788099, -0.066959,
		37.897049, 34.643040, 37.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770226, 34.399506, 37.457840>,  <38.325375, 34.091370, 38.040821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770226, 34.399506, 37.457840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797226, 34.002392, 37.497463>,  <38.813427, 33.764122, 37.521236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797226, 34.002392, 37.497463>,  <38.770226, 34.399506, 37.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797226, 34.002392, 37.497463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979795, 0.047226, -0.194349,
		0.188269, 0.110178, 0.975918,
		0.067501, -0.992789, 0.099060,
		38.817478, 33.704556, 37.527180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286762, 34.216270, 37.928223>,  <38.770226, 34.399506, 37.457840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286762, 34.216270, 37.928223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253059, 33.922703, 37.658627>,  <39.232838, 33.746563, 37.496868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253059, 33.922703, 37.658627>,  <39.286762, 34.216270, 37.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253059, 33.922703, 37.658627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954488, 0.134761, -0.266067,
		0.286099, -0.665731, 0.689165,
		-0.084256, -0.733922, -0.673988,
		39.227783, 33.702526, 37.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951633, 34.087315, 37.802330>,  <39.286762, 34.216270, 37.928223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951633, 34.087315, 37.802330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797234, 33.874367, 37.500977>,  <39.704594, 33.746597, 37.320164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797234, 33.874367, 37.500977>,  <39.951633, 34.087315, 37.802330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797234, 33.874367, 37.500977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904804, -0.059289, -0.421679,
		0.179821, -0.844435, 0.504574,
		-0.385997, -0.532367, -0.753387,
		39.681435, 33.714657, 37.274960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167553, 33.383083, 37.794609>,  <39.951633, 34.087315, 37.802330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167553, 33.383083, 37.794609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074333, 33.517746, 37.429676>,  <40.018402, 33.598545, 37.210716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074333, 33.517746, 37.429676>,  <40.167553, 33.383083, 37.794609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074333, 33.517746, 37.429676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957635, -0.083769, -0.275531,
		-0.169186, -0.937893, -0.302876,
		-0.233046, 0.336661, -0.912332,
		40.004417, 33.618744, 37.155975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777157, 33.118256, 37.312759>,  <40.167553, 33.383083, 37.794609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777157, 33.118256, 37.312759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159420, 33.207558, 37.389568>,  <41.388779, 33.261139, 37.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159420, 33.207558, 37.389568>,  <40.777157, 33.118256, 37.312759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159420, 33.207558, 37.389568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032948, 0.729056, -0.683661,
		-0.292627, 0.647020, 0.704084,
		0.955659, 0.223256, 0.192023,
		41.446117, 33.274536, 37.447174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972206, 33.780617, 37.675106>,  <40.777157, 33.118256, 37.312759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972206, 33.780617, 37.675106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239445, 33.669041, 37.399181>,  <41.399788, 33.602097, 37.233627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239445, 33.669041, 37.399181>,  <40.972206, 33.780617, 37.675106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239445, 33.669041, 37.399181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122377, 0.873254, -0.471648,
		0.733939, 0.399525, 0.549285,
		0.668100, -0.278941, -0.689808,
		41.439873, 33.585358, 37.192238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616421, 34.175316, 37.661663>,  <40.972206, 33.780617, 37.675106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616421, 34.175316, 37.661663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448959, 34.091911, 37.308109>,  <41.348480, 34.041870, 37.095978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448959, 34.091911, 37.308109>,  <41.616421, 34.175316, 37.661663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448959, 34.091911, 37.308109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024009, 0.975486, -0.218748,
		0.907826, -0.070359, -0.413401,
		-0.418658, -0.208510, -0.883883,
		41.323360, 34.029358, 37.042946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039482, 34.473778, 37.094551>,  <41.616421, 34.175316, 37.661663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039482, 34.473778, 37.094551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654976, 34.426464, 36.994965>,  <41.424274, 34.398075, 36.935211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654976, 34.426464, 36.994965>,  <42.039482, 34.473778, 37.094551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654976, 34.426464, 36.994965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087945, 0.987649, -0.129676,
		0.261231, -0.102757, -0.959791,
		-0.961262, -0.118284, -0.248967,
		41.366596, 34.390980, 36.920273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703548, 34.256359, 37.439297>,  <42.039482, 34.473778, 37.094551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703548, 34.256359, 37.439297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089104, 34.160568, 37.392696>,  <43.320438, 34.103092, 37.364738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089104, 34.160568, 37.392696>,  <42.703548, 34.256359, 37.439297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089104, 34.160568, 37.392696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055618, 0.246778, -0.967475,
		0.260440, 0.939015, 0.224546,
		0.963887, -0.239480, -0.116496,
		43.378269, 34.088726, 37.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969379, 34.753208, 36.889618>,  <42.703548, 34.256359, 37.439297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969379, 34.753208, 36.889618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172672, 34.413521, 36.946926>,  <43.294647, 34.209709, 36.981312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.172672, 34.413521, 36.946926>,  <42.969379, 34.753208, 36.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172672, 34.413521, 36.946926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095270, -0.109897, -0.989367,
		0.855935, 0.516476, 0.025052,
		0.508231, -0.849220, 0.143269,
		43.325142, 34.158756, 36.989906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725075, 34.725189, 36.771168>,  <42.969379, 34.753208, 36.889618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725075, 34.725189, 36.771168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508751, 34.400524, 36.682865>,  <43.378956, 34.205727, 36.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508751, 34.400524, 36.682865>,  <43.725075, 34.725189, 36.771168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508751, 34.400524, 36.682865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169378, 0.151983, -0.973762,
		0.823915, -0.564010, 0.055283,
		-0.540810, -0.811661, -0.220752,
		43.346508, 34.157024, 36.616638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226208, 34.134823, 36.659496>,  <43.725075, 34.725189, 36.771168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226208, 34.134823, 36.659496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996723, 34.082710, 36.336044>,  <43.859032, 34.051441, 36.141975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996723, 34.082710, 36.336044>,  <44.226208, 34.134823, 36.659496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996723, 34.082710, 36.336044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813629, -0.204093, -0.544383,
		-0.094113, -0.970244, 0.223091,
		-0.573716, -0.130280, -0.808627,
		43.824608, 34.043625, 36.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417397, 33.510437, 36.231449>,  <44.226208, 34.134823, 36.659496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417397, 33.510437, 36.231449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265331, 33.800251, 36.001484>,  <44.174091, 33.974140, 35.863506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265331, 33.800251, 36.001484>,  <44.417397, 33.510437, 36.231449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265331, 33.800251, 36.001484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791436, -0.066842, -0.607585,
		-0.478645, -0.685990, -0.548012,
		-0.380167, 0.724534, -0.574911,
		44.151279, 34.017612, 35.829010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343029, 33.228790, 35.676674>,  <44.417397, 33.510437, 36.231449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343029, 33.228790, 35.676674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432571, 33.618320, 35.660877>,  <44.486298, 33.852039, 35.651398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.432571, 33.618320, 35.660877>,  <44.343029, 33.228790, 35.676674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432571, 33.618320, 35.660877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799350, -0.206633, -0.564218,
		-0.557608, 0.094736, -0.824681,
		0.223858, 0.973821, -0.039493,
		44.499729, 33.910465, 35.649029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556816, 33.563599, 34.977852>,  <44.343029, 33.228790, 35.676674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556816, 33.563599, 34.977852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749660, 33.801285, 35.235371>,  <44.865368, 33.943897, 35.389881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749660, 33.801285, 35.235371>,  <44.556816, 33.563599, 34.977852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749660, 33.801285, 35.235371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675318, 0.216089, -0.705160,
		-0.558133, 0.774737, -0.297103,
		0.482113, 0.594212, 0.643800,
		44.894295, 33.979549, 35.428513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760544, 34.078487, 34.685520>,  <44.556816, 33.563599, 34.977852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760544, 34.078487, 34.685520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017017, 34.036392, 34.989574>,  <45.170902, 34.011135, 35.172009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017017, 34.036392, 34.989574>,  <44.760544, 34.078487, 34.685520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017017, 34.036392, 34.989574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765583, 0.019784, -0.643033,
		0.052634, 0.994250, 0.093255,
		0.641180, -0.105240, 0.760140,
		45.209370, 34.004822, 35.217617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223881, 34.578766, 34.546886>,  <44.760544, 34.078487, 34.685520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223881, 34.578766, 34.546886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380535, 34.295033, 34.781307>,  <45.474529, 34.124790, 34.921959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380535, 34.295033, 34.781307>,  <45.223881, 34.578766, 34.546886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380535, 34.295033, 34.781307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811751, -0.033521, -0.583041,
		0.433218, 0.704071, 0.562678,
		0.391641, -0.709338, 0.586052,
		45.498028, 34.082230, 34.957123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963169, 34.757614, 34.811356>,  <45.223881, 34.578766, 34.546886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963169, 34.757614, 34.811356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892540, 34.367298, 34.759743>,  <45.850163, 34.133106, 34.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892540, 34.367298, 34.759743>,  <45.963169, 34.757614, 34.811356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892540, 34.367298, 34.759743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718441, -0.038165, -0.694540,
		0.672803, -0.215342, 0.707788,
		-0.176577, -0.975793, -0.129033,
		45.839565, 34.074562, 34.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455540, 35.201061, 34.527596>,  <45.963169, 34.757614, 34.811356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455540, 35.201061, 34.527596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451691, 35.180386, 34.927044>,  <46.449379, 35.167980, 35.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451691, 35.180386, 34.927044>,  <46.455540, 35.201061, 34.527596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451691, 35.180386, 34.927044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699516, 0.713282, 0.043663,
		-0.714553, 0.698968, 0.029292,
		-0.009626, -0.051690, 0.998617,
		46.448803, 35.164879, 35.226627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089409, 35.618397, 34.838562>,  <46.455540, 35.201061, 34.527596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089409, 35.618397, 34.838562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731689, 35.563515, 35.008926>,  <46.517059, 35.530586, 35.111145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731689, 35.563515, 35.008926>,  <47.089409, 35.618397, 34.838562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731689, 35.563515, 35.008926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447192, -0.307471, 0.839929,
		0.015714, 0.941613, 0.336329,
		-0.894300, -0.137205, 0.425914,
		46.463398, 35.522354, 35.136700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.723347, 35.042343, 34.831207>,  <47.089409, 35.618397, 34.838562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.723347, 35.042343, 34.831207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679771, 35.036270, 35.228779>,  <47.653625, 35.032627, 35.467323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679771, 35.036270, 35.228779>,  <47.723347, 35.042343, 34.831207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679771, 35.036270, 35.228779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415052, -0.909249, 0.031605,
		0.903252, 0.415977, 0.105353,
		-0.108939, -0.015180, 0.993932,
		47.647091, 35.031715, 35.526958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.415680, 32.203110, 28.630201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126080, 32.060169, 28.394194>,  <38.952320, 31.974405, 28.252588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126080, 32.060169, 28.394194>,  <39.415680, 32.203110, 28.630201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126080, 32.060169, 28.394194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636862, 0.017676, 0.770775,
		-0.265009, 0.933802, -0.240382,
		-0.724000, -0.357353, -0.590019,
		38.908878, 31.952963, 28.217188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880116, 32.636658, 28.721384>,  <39.415680, 32.203110, 28.630201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880116, 32.636658, 28.721384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735180, 32.282871, 28.603786>,  <38.648220, 32.070599, 28.533228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735180, 32.282871, 28.603786>,  <38.880116, 32.636658, 28.721384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735180, 32.282871, 28.603786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634165, 0.002791, 0.773192,
		-0.683041, 0.466599, -0.561908,
		-0.362339, -0.884465, -0.293994,
		38.626480, 32.017532, 28.515589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131767, 32.744949, 28.773092>,  <38.880116, 32.636658, 28.721384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131767, 32.744949, 28.773092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 32.355545, 28.764339>,  <38.277416, 32.121902, 28.759087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.222797, 32.355545, 28.764339>,  <38.131767, 32.744949, 28.773092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222797, 32.355545, 28.764339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546170, -0.146220, 0.824814,
		-0.806168, -0.175759, -0.564980,
		0.227580, -0.973513, -0.021884,
		38.291073, 32.063492, 28.757774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431019, 32.332603, 28.791945>,  <38.131767, 32.744949, 28.773092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431019, 32.332603, 28.791945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715191, 32.079628, 28.915434>,  <37.885693, 31.927843, 28.989529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715191, 32.079628, 28.915434>,  <37.431019, 32.332603, 28.791945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715191, 32.079628, 28.915434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515765, -0.169413, 0.839813,
		-0.478828, -0.755857, -0.446546,
		0.710430, -0.632439, 0.308725,
		37.928318, 31.889896, 29.008051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001247, 31.784044, 29.093433>,  <37.431019, 32.332603, 28.791945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001247, 31.784044, 29.093433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367817, 31.719198, 29.239798>,  <37.587757, 31.680290, 29.327616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.367817, 31.719198, 29.239798>,  <37.001247, 31.784044, 29.093433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367817, 31.719198, 29.239798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398636, -0.288602, 0.870516,
		-0.035521, -0.943625, -0.329106,
		0.916421, -0.162115, 0.365911,
		37.642742, 31.670563, 29.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946472, 31.126995, 29.472317>,  <37.001247, 31.784044, 29.093433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946472, 31.126995, 29.472317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277260, 31.304548, 29.610357>,  <37.475731, 31.411079, 29.693182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277260, 31.304548, 29.610357>,  <36.946472, 31.126995, 29.472317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277260, 31.304548, 29.610357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184071, -0.366221, 0.912140,
		0.531267, -0.817832, -0.221147,
		0.826966, 0.443883, 0.345100,
		37.525349, 31.437714, 29.713888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383892, 30.612329, 29.851145>,  <36.946472, 31.126995, 29.472317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383892, 30.612329, 29.851145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436150, 30.987932, 29.978392>,  <37.467503, 31.213293, 30.054739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436150, 30.987932, 29.978392>,  <37.383892, 30.612329, 29.851145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436150, 30.987932, 29.978392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347772, -0.257075, 0.901647,
		0.928433, -0.228424, 0.292976,
		0.130641, 0.939008, 0.318116,
		37.475342, 31.269634, 30.073826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555157, 30.506546, 30.451448>,  <37.383892, 30.612329, 29.851145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555157, 30.506546, 30.451448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455128, 30.893131, 30.474810>,  <37.395111, 31.125082, 30.488827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.455128, 30.893131, 30.474810>,  <37.555157, 30.506546, 30.451448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455128, 30.893131, 30.474810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412080, -0.160822, 0.896842,
		0.876157, 0.200213, 0.438478,
		-0.250076, 0.966463, 0.058402,
		37.380104, 31.183071, 30.492331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839832, 30.808817, 31.079258>,  <37.555157, 30.506546, 30.451448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839832, 30.808817, 31.079258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551933, 31.071102, 30.988037>,  <37.379196, 31.228474, 30.933304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.551933, 31.071102, 30.988037>,  <37.839832, 30.808817, 31.079258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551933, 31.071102, 30.988037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305090, -0.003674, 0.952316,
		0.623608, 0.755002, 0.202696,
		-0.719746, 0.655712, -0.228052,
		37.336010, 31.267817, 30.919621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873791, 31.470921, 31.455406>,  <37.839832, 30.808817, 31.079258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873791, 31.470921, 31.455406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486881, 31.450233, 31.356037>,  <37.254738, 31.437822, 31.296415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486881, 31.450233, 31.356037>,  <37.873791, 31.470921, 31.455406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486881, 31.450233, 31.356037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252681, 0.106600, 0.961659,
		-0.023251, 0.992956, -0.116179,
		-0.967270, -0.051716, -0.248423,
		37.196701, 31.434719, 31.281509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661942, 32.069923, 31.696577>,  <37.873791, 31.470921, 31.455406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661942, 32.069923, 31.696577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317867, 31.870573, 31.653318>,  <37.111423, 31.750963, 31.627363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317867, 31.870573, 31.653318>,  <37.661942, 32.069923, 31.696577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317867, 31.870573, 31.653318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298876, 0.320825, 0.898746,
		-0.413219, 0.805413, -0.424923,
		-0.860188, -0.498378, -0.108148,
		37.059811, 31.721060, 31.620874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145203, 32.481892, 31.985210>,  <37.661942, 32.069923, 31.696577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145203, 32.481892, 31.985210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.971169, 32.123272, 31.951998>,  <36.866749, 31.908100, 31.932070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.971169, 32.123272, 31.951998>,  <37.145203, 32.481892, 31.985210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971169, 32.123272, 31.951998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390863, 0.104993, 0.914441,
		-0.811126, 0.430317, -0.396109,
		-0.435088, -0.896551, -0.083032,
		36.840641, 31.854307, 31.927088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469662, 32.647293, 32.059792>,  <37.145203, 32.481892, 31.985210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469662, 32.647293, 32.059792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550297, 32.270683, 32.167789>,  <36.598679, 32.044716, 32.232590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.550297, 32.270683, 32.167789>,  <36.469662, 32.647293, 32.059792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550297, 32.270683, 32.167789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373110, 0.181056, 0.909949,
		-0.905622, -0.284170, -0.314794,
		0.201585, -0.941523, 0.269995,
		36.610771, 31.988226, 32.248787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950954, 32.538555, 32.555916>,  <36.469662, 32.647293, 32.059792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950954, 32.538555, 32.555916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193970, 32.229572, 32.629902>,  <36.339779, 32.044182, 32.674294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193970, 32.229572, 32.629902>,  <35.950954, 32.538555, 32.555916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193970, 32.229572, 32.629902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240140, 0.043348, 0.969770,
		-0.757121, -0.633589, -0.159161,
		0.607536, -0.772454, 0.184970,
		36.376232, 31.997835, 32.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545921, 32.197159, 32.929794>,  <35.950954, 32.538555, 32.555916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545921, 32.197159, 32.929794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910789, 32.051224, 33.004452>,  <36.129711, 31.963663, 33.049248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910789, 32.051224, 33.004452>,  <35.545921, 32.197159, 32.929794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910789, 32.051224, 33.004452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190661, 0.025348, 0.981329,
		-0.362758, -0.930726, -0.046439,
		0.912171, -0.364839, 0.186648,
		36.184441, 31.941772, 33.060448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339264, 31.479954, 33.182705>,  <35.545921, 32.197159, 32.929794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339264, 31.479954, 33.182705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710384, 31.572500, 33.299770>,  <35.933056, 31.628027, 33.370010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710384, 31.572500, 33.299770>,  <35.339264, 31.479954, 33.182705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710384, 31.572500, 33.299770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197451, -0.361049, 0.911403,
		0.316532, -0.903390, -0.289300,
		0.927804, 0.231365, 0.292659,
		35.988724, 31.641911, 33.387569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633118, 30.923738, 33.552803>,  <35.339264, 31.479954, 33.182705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633118, 30.923738, 33.552803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836040, 31.238464, 33.693413>,  <35.957794, 31.427299, 33.777779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836040, 31.238464, 33.693413>,  <35.633118, 30.923738, 33.552803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836040, 31.238464, 33.693413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300848, -0.220547, 0.927820,
		0.807548, -0.576441, 0.124827,
		0.507303, 0.786813, 0.351523,
		35.988232, 31.474508, 33.798870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036327, 30.586672, 34.067333>,  <35.633118, 30.923738, 33.552803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036327, 30.586672, 34.067333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055210, 30.979279, 34.141518>,  <36.066540, 31.214844, 34.186028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055210, 30.979279, 34.141518>,  <36.036327, 30.586672, 34.067333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055210, 30.979279, 34.141518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226820, -0.170281, 0.958935,
		0.972792, -0.087332, 0.214590,
		0.047206, 0.981518, 0.185456,
		36.069370, 31.273733, 34.197155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490341, 30.799707, 34.689857>,  <36.036327, 30.586672, 34.067333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490341, 30.799707, 34.689857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258282, 31.120449, 34.632652>,  <36.119045, 31.312895, 34.598331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258282, 31.120449, 34.632652>,  <36.490341, 30.799707, 34.689857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258282, 31.120449, 34.632652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390415, -0.119666, 0.912829,
		0.714844, 0.585411, 0.382481,
		-0.580150, 0.801856, -0.143011,
		36.084236, 31.361006, 34.589748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624741, 31.156656, 35.249630>,  <36.490341, 30.799707, 34.689857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624741, 31.156656, 35.249630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281528, 31.295477, 35.098186>,  <36.075603, 31.378769, 35.007320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281528, 31.295477, 35.098186>,  <36.624741, 31.156656, 35.249630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281528, 31.295477, 35.098186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427149, -0.072869, 0.901240,
		0.285190, 0.935010, 0.210767,
		-0.858027, 0.347053, -0.378607,
		36.024120, 31.399593, 34.984604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479523, 31.672060, 35.633633>,  <36.624741, 31.156656, 35.249630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479523, 31.672060, 35.633633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137287, 31.546221, 35.469193>,  <35.931946, 31.470716, 35.370529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.137287, 31.546221, 35.469193>,  <36.479523, 31.672060, 35.633633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137287, 31.546221, 35.469193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428839, -0.014065, 0.903271,
		-0.289950, 0.949120, -0.122878,
		-0.855585, -0.314599, -0.411098,
		35.880611, 31.451841, 35.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599529, 31.974922, 36.401447>,  <36.479523, 31.672060, 35.633633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599529, 31.974922, 36.401447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856720, 32.175617, 36.632908>,  <37.011036, 32.296036, 36.771782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856720, 32.175617, 36.632908>,  <36.599529, 31.974922, 36.401447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856720, 32.175617, 36.632908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418048, 0.403133, -0.814076,
		-0.641726, 0.765338, 0.049456,
		0.642981, 0.501738, 0.578649,
		37.049614, 32.326138, 36.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476391, 32.651066, 36.201923>,  <36.599529, 31.974922, 36.401447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476391, 32.651066, 36.201923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842087, 32.600521, 36.355907>,  <37.061504, 32.570194, 36.448299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.842087, 32.600521, 36.355907>,  <36.476391, 32.651066, 36.201923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842087, 32.600521, 36.355907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402382, 0.394396, -0.826160,
		-0.047431, 0.910211, 0.411420,
		0.914242, -0.126362, 0.384959,
		37.116360, 32.562611, 36.471394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783630, 33.272892, 35.965431>,  <36.476391, 32.651066, 36.201923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783630, 33.272892, 35.965431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086536, 33.032124, 36.066814>,  <37.268280, 32.887661, 36.127644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086536, 33.032124, 36.066814>,  <36.783630, 33.272892, 35.965431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086536, 33.032124, 36.066814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440415, 0.184065, -0.878723,
		0.482271, 0.777052, 0.404481,
		0.757265, -0.601922, 0.253456,
		37.313717, 32.851547, 36.142853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317497, 33.791042, 35.801342>,  <36.783630, 33.272892, 35.965431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317497, 33.791042, 35.801342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452850, 33.415096, 35.819931>,  <37.534061, 33.189529, 35.831085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452850, 33.415096, 35.819931>,  <37.317497, 33.791042, 35.801342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452850, 33.415096, 35.819931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568647, 0.164881, -0.805887,
		0.749760, 0.299122, 0.590242,
		0.338379, -0.939862, 0.046474,
		37.554363, 33.133137, 35.833874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017895, 33.889824, 35.694786>,  <37.317497, 33.791042, 35.801342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017895, 33.889824, 35.694786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979774, 33.501251, 35.607849>,  <37.956902, 33.268108, 35.555687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.979774, 33.501251, 35.607849>,  <38.017895, 33.889824, 35.694786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979774, 33.501251, 35.607849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651777, 0.104138, -0.751227,
		0.752400, -0.213251, 0.623232,
		-0.095297, -0.971432, -0.217345,
		37.951187, 33.209824, 35.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710575, 33.592503, 35.634773>,  <38.017895, 33.889824, 35.694786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710575, 33.592503, 35.634773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477978, 33.344460, 35.424126>,  <38.338417, 33.195633, 35.297737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.477978, 33.344460, 35.424126>,  <38.710575, 33.592503, 35.634773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477978, 33.344460, 35.424126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688237, -0.029795, -0.724873,
		0.433811, -0.783948, 0.444109,
		-0.581495, -0.620111, -0.526617,
		38.303528, 33.158424, 35.266140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230274, 33.261703, 35.289490>,  <38.710575, 33.592503, 35.634773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230274, 33.261703, 35.289490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895699, 33.215096, 35.075279>,  <38.694954, 33.187130, 34.946751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895699, 33.215096, 35.075279>,  <39.230274, 33.261703, 35.289490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895699, 33.215096, 35.075279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541453, -0.024435, -0.840376,
		0.084840, -0.992887, 0.083531,
		-0.836440, -0.116526, -0.535529,
		38.644768, 33.180138, 34.914619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242092, 32.666740, 34.816841>,  <39.230274, 33.261703, 35.289490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242092, 32.666740, 34.816841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981781, 32.910072, 34.635109>,  <38.825592, 33.056072, 34.526070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.981781, 32.910072, 34.635109>,  <39.242092, 32.666740, 34.816841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981781, 32.910072, 34.635109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388308, -0.247539, -0.887661,
		-0.652457, -0.754092, -0.075127,
		-0.650781, 0.608333, -0.454329,
		38.786545, 33.092571, 34.498810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982250, 32.242123, 34.306339>,  <39.242092, 32.666740, 34.816841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982250, 32.242123, 34.306339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902584, 32.611351, 34.174717>,  <38.854782, 32.832886, 34.095745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.902584, 32.611351, 34.174717>,  <38.982250, 32.242123, 34.306339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902584, 32.611351, 34.174717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405244, -0.228147, -0.885283,
		-0.892249, -0.309669, -0.328628,
		-0.199169, 0.923068, -0.329055,
		38.842834, 32.888271, 34.076000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737724, 32.063076, 33.632919>,  <38.982250, 32.242123, 34.306339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737724, 32.063076, 33.632919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855465, 32.443115, 33.674232>,  <38.926109, 32.671139, 33.699020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855465, 32.443115, 33.674232>,  <38.737724, 32.063076, 33.632919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855465, 32.443115, 33.674232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662522, -0.124971, -0.738544,
		-0.688783, 0.285819, -0.666247,
		0.294352, 0.950100, 0.103284,
		38.943771, 32.728146, 33.705219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690086, 32.345943, 32.937614>,  <38.737724, 32.063076, 33.632919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690086, 32.345943, 32.937614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929813, 32.576817, 33.159489>,  <39.073650, 32.715340, 33.292614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929813, 32.576817, 33.159489>,  <38.690086, 32.345943, 32.937614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929813, 32.576817, 33.159489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648713, 0.055810, -0.758984,
		-0.469032, 0.814703, -0.340980,
		0.599317, 0.577186, 0.554685,
		39.109608, 32.749973, 33.325893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725311, 32.869270, 32.500633>,  <38.690086, 32.345943, 32.937614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725311, 32.869270, 32.500633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020954, 32.934727, 32.761997>,  <39.198338, 32.974003, 32.918816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.020954, 32.934727, 32.761997>,  <38.725311, 32.869270, 32.500633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020954, 32.934727, 32.761997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647089, 0.096921, -0.756229,
		-0.187083, 0.981747, -0.034258,
		0.739105, 0.163646, 0.653409,
		39.242687, 32.983822, 32.958019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992397, 33.601994, 32.508396>,  <38.725311, 32.869270, 32.500633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992397, 33.601994, 32.508396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290356, 33.352402, 32.602867>,  <39.469131, 33.202648, 32.659550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.290356, 33.352402, 32.602867>,  <38.992397, 33.601994, 32.508396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290356, 33.352402, 32.602867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521815, 0.324283, -0.789018,
		0.415742, 0.710978, 0.567159,
		0.744895, -0.623979, 0.236181,
		39.513824, 33.165207, 32.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462982, 33.793785, 32.094269>,  <38.992397, 33.601994, 32.508396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462982, 33.793785, 32.094269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687286, 33.502831, 32.252487>,  <39.821869, 33.328259, 32.347420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.687286, 33.502831, 32.252487>,  <39.462982, 33.793785, 32.094269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687286, 33.502831, 32.252487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696661, 0.156339, -0.700158,
		0.447444, 0.668186, 0.594409,
		0.560765, -0.727383, 0.395546,
		39.855515, 33.284615, 32.371151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078133, 34.122780, 32.127953>,  <39.462982, 33.793785, 32.094269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078133, 34.122780, 32.127953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160889, 33.731552, 32.137592>,  <40.210541, 33.496815, 32.143375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160889, 33.731552, 32.137592>,  <40.078133, 34.122780, 32.127953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160889, 33.731552, 32.137592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605767, 0.108714, -0.788180,
		0.768273, 0.177667, 0.614972,
		0.206890, -0.978067, 0.024103,
		40.222954, 33.438133, 32.144825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764984, 34.084404, 31.923702>,  <40.078133, 34.122780, 32.127953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764984, 34.084404, 31.923702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 33.705235, 31.875015>,  <40.576618, 33.477734, 31.845802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.647255, 33.705235, 31.875015>,  <40.764984, 34.084404, 31.923702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647255, 33.705235, 31.875015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607104, -0.087083, -0.789837,
		0.738105, -0.306364, 0.601118,
		-0.294325, -0.947923, -0.121718,
		40.558956, 33.420856, 31.838499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403549, 33.604877, 31.777212>,  <40.764984, 34.084404, 31.923702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403549, 33.604877, 31.777212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.075939, 33.438442, 31.619192>,  <40.879372, 33.338581, 31.524380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.075939, 33.438442, 31.619192>,  <41.403549, 33.604877, 31.777212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075939, 33.438442, 31.619192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489818, -0.148515, -0.859082,
		0.298782, -0.897115, 0.325444,
		-0.819028, -0.416086, -0.395050,
		40.830231, 33.313618, 31.500677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571224, 32.856506, 31.472317>,  <41.403549, 33.604877, 31.777212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571224, 32.856506, 31.472317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.247932, 32.986168, 31.275667>,  <41.053959, 33.063965, 31.157679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.247932, 32.986168, 31.275667>,  <41.571224, 32.856506, 31.472317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247932, 32.986168, 31.275667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355659, -0.396678, -0.846258,
		-0.469337, -0.858818, 0.205316,
		-0.808226, 0.324158, -0.491622,
		41.005466, 33.083416, 31.128181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447872, 32.321228, 30.892937>,  <41.571224, 32.856506, 31.472317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447872, 32.321228, 30.892937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232208, 32.629650, 30.757421>,  <41.102810, 32.814705, 30.676111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232208, 32.629650, 30.757421>,  <41.447872, 32.321228, 30.892937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232208, 32.629650, 30.757421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243430, -0.242422, -0.939135,
		-0.806255, -0.588816, -0.056994,
		-0.539161, 0.771056, -0.338789,
		41.070461, 32.860966, 30.655785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.034466, 32.144119, 30.178307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002243, 32.542419, 30.160440>,  <40.982910, 32.781399, 30.149721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.002243, 32.542419, 30.160440>,  <41.034466, 32.144119, 30.178307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002243, 32.542419, 30.160440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077383, -0.050923, -0.995700,
		-0.993742, -0.076754, 0.081156,
		-0.080556, 0.995749, -0.044665,
		40.978077, 32.841145, 30.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537731, 32.253353, 29.729969>,  <41.034466, 32.144119, 30.178307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537731, 32.253353, 29.729969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726414, 32.605976, 29.722515>,  <40.839622, 32.817551, 29.718042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726414, 32.605976, 29.722515>,  <40.537731, 32.253353, 29.729969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726414, 32.605976, 29.722515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095138, 0.029874, -0.995016,
		-0.876609, 0.471126, 0.097962,
		0.471705, 0.881560, -0.018634,
		40.867924, 32.870445, 29.716925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296646, 32.582638, 29.196928>,  <40.537731, 32.253353, 29.729969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296646, 32.582638, 29.196928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630672, 32.797890, 29.242685>,  <40.831089, 32.927040, 29.270140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.630672, 32.797890, 29.242685>,  <40.296646, 32.582638, 29.196928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630672, 32.797890, 29.242685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074588, 0.095269, -0.992653,
		-0.545073, 0.837462, 0.039418,
		0.835064, 0.538128, 0.114393,
		40.881191, 32.959328, 29.277002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162071, 33.203602, 28.806807>,  <40.296646, 32.582638, 29.196928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162071, 33.203602, 28.806807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559772, 33.230186, 28.840399>,  <40.798393, 33.246140, 28.860554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.559772, 33.230186, 28.840399>,  <40.162071, 33.203602, 28.806807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559772, 33.230186, 28.840399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059993, 0.303932, -0.950803,
		-0.088718, 0.950373, 0.298196,
		0.994249, 0.066463, 0.083980,
		40.858047, 33.250126, 28.865593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359306, 33.842957, 28.568548>,  <40.162071, 33.203602, 28.806807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359306, 33.842957, 28.568548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685646, 33.612553, 28.548132>,  <40.881451, 33.474312, 28.535883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.685646, 33.612553, 28.548132>,  <40.359306, 33.842957, 28.568548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685646, 33.612553, 28.548132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114196, 0.247009, -0.962261,
		0.566877, 0.779231, 0.267300,
		0.815849, -0.576008, -0.051039,
		40.930401, 33.439751, 28.532820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901470, 34.214016, 28.279961>,  <40.359306, 33.842957, 28.568548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901470, 34.214016, 28.279961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040657, 33.843529, 28.221952>,  <41.124168, 33.621235, 28.187147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.040657, 33.843529, 28.221952>,  <40.901470, 34.214016, 28.279961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040657, 33.843529, 28.221952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104821, 0.192157, -0.975750,
		0.931629, 0.324327, 0.163951,
		0.347967, -0.926222, -0.145022,
		41.145046, 33.565662, 28.178446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408024, 34.309597, 27.752287>,  <40.901470, 34.214016, 28.279961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408024, 34.309597, 27.752287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343243, 33.914928, 27.745853>,  <41.304375, 33.678127, 27.741993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343243, 33.914928, 27.745853>,  <41.408024, 34.309597, 27.752287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343243, 33.914928, 27.745853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120338, -0.003572, -0.992727,
		0.979433, -0.162713, 0.119312,
		-0.161956, -0.986667, -0.016082,
		41.294655, 33.618927, 27.741028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893341, 34.098675, 27.398018>,  <41.408024, 34.309597, 27.752287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893341, 34.098675, 27.398018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643578, 33.787022, 27.375877>,  <41.493721, 33.600029, 27.362593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643578, 33.787022, 27.375877>,  <41.893341, 34.098675, 27.398018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643578, 33.787022, 27.375877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153901, -0.053245, -0.986651,
		0.765788, -0.624590, 0.153157,
		-0.624407, -0.779136, -0.055351,
		41.456257, 33.553280, 27.359272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328556, 33.551586, 27.252758>,  <41.893341, 34.098675, 27.398018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328556, 33.551586, 27.252758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953457, 33.486732, 27.129902>,  <41.728397, 33.447823, 27.056189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953457, 33.486732, 27.129902>,  <42.328556, 33.551586, 27.252758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953457, 33.486732, 27.129902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335103, -0.190008, -0.922823,
		0.091260, -0.968303, 0.232511,
		-0.937751, -0.162132, -0.307141,
		41.672131, 33.438091, 27.037760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339664, 33.192936, 26.679834>,  <42.328556, 33.551586, 27.252758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339664, 33.192936, 26.679834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958996, 33.308792, 26.638983>,  <41.730595, 33.378307, 26.614471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958996, 33.308792, 26.638983>,  <42.339664, 33.192936, 26.679834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958996, 33.308792, 26.638983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083339, -0.076517, -0.993579,
		-0.295595, -0.954072, 0.048680,
		-0.951671, 0.289640, -0.102130,
		41.673496, 33.395683, 26.608343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115810, 32.719715, 26.241232>,  <42.339664, 33.192936, 26.679834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115810, 32.719715, 26.241232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856564, 33.023235, 26.215431>,  <41.701015, 33.205349, 26.199951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.856564, 33.023235, 26.215431>,  <42.115810, 32.719715, 26.241232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856564, 33.023235, 26.215431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147325, 0.041831, -0.988203,
		-0.747153, -0.649976, -0.138902,
		-0.648118, 0.758803, -0.064503,
		41.662128, 33.250877, 26.196081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894176, 32.669731, 25.599463>,  <42.115810, 32.719715, 26.241232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894176, 32.669731, 25.599463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789238, 33.041553, 25.703079>,  <41.726273, 33.264645, 25.765249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789238, 33.041553, 25.703079>,  <41.894176, 32.669731, 25.599463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789238, 33.041553, 25.703079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076953, 0.287742, -0.954611,
		-0.961899, -0.230509, -0.147022,
		-0.262351, 0.929554, 0.259041,
		41.710533, 33.320419, 25.780792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478695, 32.939621, 25.131804>,  <41.894176, 32.669731, 25.599463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478695, 32.939621, 25.131804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641533, 33.271957, 25.283579>,  <41.739235, 33.471359, 25.374643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.641533, 33.271957, 25.283579>,  <41.478695, 32.939621, 25.131804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641533, 33.271957, 25.283579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342424, 0.246296, -0.906688,
		-0.846771, 0.499035, -0.184236,
		0.407093, 0.830844, 0.379438,
		41.763660, 33.521210, 25.397409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403454, 33.442307, 24.577036>,  <41.478695, 32.939621, 25.131804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403454, 33.442307, 24.577036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668781, 33.604214, 24.828806>,  <41.827976, 33.701359, 24.979868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668781, 33.604214, 24.828806>,  <41.403454, 33.442307, 24.577036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668781, 33.604214, 24.828806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554530, 0.298929, -0.776620,
		-0.502504, 0.864179, -0.026171,
		0.663315, 0.404768, 0.629426,
		41.867775, 33.725643, 25.017633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410755, 34.165314, 24.483988>,  <41.403454, 33.442307, 24.577036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410755, 34.165314, 24.483988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768539, 34.076969, 24.639507>,  <41.983208, 34.023960, 24.732819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.768539, 34.076969, 24.639507>,  <41.410755, 34.165314, 24.483988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768539, 34.076969, 24.639507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446606, 0.398372, -0.801151,
		0.022060, 0.890235, 0.454966,
		0.894459, -0.220864, 0.388796,
		42.036877, 34.010712, 24.756145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845562, 34.730015, 24.312405>,  <41.410755, 34.165314, 24.483988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845562, 34.730015, 24.312405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.114891, 34.455860, 24.423311>,  <42.276489, 34.291367, 24.489855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.114891, 34.455860, 24.423311>,  <41.845562, 34.730015, 24.312405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114891, 34.455860, 24.423311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566009, 0.236566, -0.789728,
		0.475680, 0.688677, 0.547222,
		0.673322, -0.685391, 0.277267,
		42.316887, 34.250244, 24.506491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540440, 35.064873, 24.409849>,  <41.845562, 34.730015, 24.312405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540440, 35.064873, 24.409849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590698, 34.677509, 24.323696>,  <42.620853, 34.445091, 24.272003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.590698, 34.677509, 24.323696>,  <42.540440, 35.064873, 24.409849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590698, 34.677509, 24.323696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629253, 0.245639, -0.737362,
		0.766977, -0.042883, 0.640240,
		0.125647, -0.968412, -0.215384,
		42.628391, 34.386986, 24.259081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223694, 35.006500, 24.245657>,  <42.540440, 35.064873, 24.409849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223694, 35.006500, 24.245657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059013, 34.678722, 24.086147>,  <42.960205, 34.482056, 23.990442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059013, 34.678722, 24.086147>,  <43.223694, 35.006500, 24.245657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059013, 34.678722, 24.086147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486910, 0.172094, -0.856331,
		0.770340, -0.546716, 0.328143,
		-0.411698, -0.819442, -0.398772,
		42.935505, 34.432888, 23.966516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818192, 34.698418, 23.901190>,  <43.223694, 35.006500, 24.245657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818192, 34.698418, 23.901190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.491779, 34.527748, 23.745220>,  <43.295933, 34.425346, 23.651638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.491779, 34.527748, 23.745220>,  <43.818192, 34.698418, 23.901190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491779, 34.527748, 23.745220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311921, 0.242862, -0.918544,
		0.486619, -0.871186, -0.065093,
		-0.816032, -0.426677, -0.389923,
		43.246971, 34.399746, 23.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082577, 34.188465, 23.511013>,  <43.818192, 34.698418, 23.901190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082577, 34.188465, 23.511013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.715809, 34.257500, 23.367083>,  <43.495747, 34.298920, 23.280725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.715809, 34.257500, 23.367083>,  <44.082577, 34.188465, 23.511013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715809, 34.257500, 23.367083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378991, 0.094165, -0.920597,
		-0.124999, -0.980483, -0.151750,
		-0.916919, 0.172586, -0.359824,
		43.440735, 34.309277, 23.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002285, 33.703564, 22.997034>,  <44.082577, 34.188465, 23.511013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002285, 33.703564, 22.997034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.733192, 33.989796, 22.921803>,  <43.571735, 34.161533, 22.876663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.733192, 33.989796, 22.921803>,  <44.002285, 33.703564, 22.997034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733192, 33.989796, 22.921803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325145, 0.057588, -0.943909,
		-0.664612, -0.696153, -0.271409,
		-0.672735, 0.715580, -0.188077,
		43.531372, 34.204472, 22.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633434, 33.514061, 22.433907>,  <44.002285, 33.703564, 22.997034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633434, 33.514061, 22.433907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.558777, 33.906918, 22.424505>,  <43.513981, 34.142632, 22.418865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.558777, 33.906918, 22.424505>,  <43.633434, 33.514061, 22.433907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558777, 33.906918, 22.424505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044353, -0.015476, -0.998896,
		-0.981425, -0.187483, -0.040673,
		-0.186646, 0.982146, -0.023504,
		43.502785, 34.201561, 22.417454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690144, 33.657116, 21.741077>,  <43.633434, 33.514061, 22.433907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690144, 33.657116, 21.741077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.506691, 34.011497, 21.768635>,  <43.396618, 34.224125, 21.785170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.506691, 34.011497, 21.768635>,  <43.690144, 33.657116, 21.741077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506691, 34.011497, 21.768635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201017, -0.027918, -0.979190,
		-0.865591, -0.462937, 0.190896,
		-0.458632, 0.885952, 0.068892,
		43.369102, 34.277283, 21.789303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908466, 33.667938, 21.611179>,  <43.690144, 33.657116, 21.741077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908466, 33.667938, 21.611179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005253, 34.042522, 21.509594>,  <43.063324, 34.267273, 21.448643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.005253, 34.042522, 21.509594>,  <42.908466, 33.667938, 21.611179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005253, 34.042522, 21.509594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487117, -0.109124, -0.866492,
		-0.839149, 0.333369, 0.429761,
		0.241964, 0.936460, -0.253961,
		43.077843, 34.323460, 21.433405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.453915, 34.176979, 21.333702>,  <42.908466, 33.667938, 21.611179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.453915, 34.176979, 21.333702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354088, 33.822800, 21.176886>,  <42.294193, 33.610291, 21.082796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354088, 33.822800, 21.176886>,  <42.453915, 34.176979, 21.333702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354088, 33.822800, 21.176886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811553, -0.029623, 0.583527,
		-0.528297, 0.463789, -0.711197,
		-0.249565, -0.885451, -0.392039,
		42.279217, 33.557163, 21.059275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833214, 34.068604, 21.413937>,  <42.453915, 34.176979, 21.333702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833214, 34.068604, 21.413937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880806, 33.684277, 21.313791>,  <41.909363, 33.453682, 21.253704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.880806, 33.684277, 21.313791>,  <41.833214, 34.068604, 21.413937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880806, 33.684277, 21.313791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737778, -0.254303, 0.625311,
		-0.664475, 0.110314, -0.739123,
		0.118980, -0.960812, -0.250365,
		41.916500, 33.396034, 21.238682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101192, 33.733429, 21.240911>,  <41.833214, 34.068604, 21.413937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101192, 33.733429, 21.240911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353062, 33.449200, 21.366514>,  <41.504185, 33.278664, 21.441875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353062, 33.449200, 21.366514>,  <41.101192, 33.733429, 21.240911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353062, 33.449200, 21.366514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696419, -0.337206, 0.633477,
		-0.344273, -0.617533, -0.707198,
		0.629665, -0.710595, 0.313970,
		41.541965, 33.236031, 21.460716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677788, 33.270847, 21.601707>,  <41.101192, 33.733429, 21.240911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677788, 33.270847, 21.601707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036530, 33.134281, 21.714197>,  <41.251774, 33.052341, 21.781691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.036530, 33.134281, 21.714197>,  <40.677788, 33.270847, 21.601707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036530, 33.134281, 21.714197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399226, -0.351062, 0.846979,
		-0.190443, -0.871890, -0.451153,
		0.896855, -0.341413, 0.281224,
		41.305588, 33.031857, 21.798565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534336, 32.643642, 21.828711>,  <40.677788, 33.270847, 21.601707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534336, 32.643642, 21.828711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889832, 32.682167, 22.007986>,  <41.103127, 32.705284, 22.115551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889832, 32.682167, 22.007986>,  <40.534336, 32.643642, 21.828711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889832, 32.682167, 22.007986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333992, -0.533640, 0.776967,
		0.314006, -0.840209, -0.442095,
		0.888735, 0.096316, 0.448190,
		41.156452, 32.711063, 22.142443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606686, 31.931738, 22.165747>,  <40.534336, 32.643642, 21.828711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606686, 31.931738, 22.165747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865791, 32.182533, 22.338856>,  <41.021255, 32.333012, 22.442720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865791, 32.182533, 22.338856>,  <40.606686, 31.931738, 22.165747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865791, 32.182533, 22.338856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268188, -0.344033, 0.899843,
		0.713079, -0.698947, -0.054700,
		0.647760, 0.626989, 0.432772,
		41.060120, 32.370628, 22.468687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018623, 31.560238, 22.572723>,  <40.606686, 31.931738, 22.165747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018623, 31.560238, 22.572723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013424, 31.932943, 22.717857>,  <41.010303, 32.156567, 22.804937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013424, 31.932943, 22.717857>,  <41.018623, 31.560238, 22.572723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013424, 31.932943, 22.717857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259333, -0.353592, 0.898732,
		0.965701, -0.082417, 0.246231,
		-0.012995, 0.931762, 0.362837,
		41.009525, 32.212471, 22.826708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023979, 31.545113, 23.280916>,  <41.018623, 31.560238, 22.572723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023979, 31.545113, 23.280916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.894360, 31.923309, 23.268011>,  <40.816589, 32.150227, 23.260267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.894360, 31.923309, 23.268011>,  <41.023979, 31.545113, 23.280916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894360, 31.923309, 23.268011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498447, -0.141646, 0.855270,
		0.804080, 0.293230, 0.517177,
		-0.324047, 0.945491, -0.032265,
		40.797146, 32.206955, 23.258331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190228, 31.810827, 23.937492>,  <41.023979, 31.545113, 23.280916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190228, 31.810827, 23.937492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.890408, 32.016819, 23.771133>,  <40.710514, 32.140415, 23.671318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.890408, 32.016819, 23.771133>,  <41.190228, 31.810827, 23.937492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890408, 32.016819, 23.771133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437120, 0.086748, 0.895210,
		0.497091, 0.852803, 0.160085,
		-0.749550, 0.514978, -0.415899,
		40.665543, 32.171310, 23.646364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165363, 32.414356, 24.251453>,  <41.190228, 31.810827, 23.937492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165363, 32.414356, 24.251453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791050, 32.360092, 24.121281>,  <40.566463, 32.327534, 24.043177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.791050, 32.360092, 24.121281>,  <41.165363, 32.414356, 24.251453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791050, 32.360092, 24.121281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334772, 0.052294, 0.940847,
		-0.110617, 0.989374, -0.094351,
		-0.935784, -0.135659, -0.325430,
		40.510315, 32.319393, 24.023651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792072, 32.793938, 24.675291>,  <41.165363, 32.414356, 24.251453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792072, 32.793938, 24.675291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503586, 32.560673, 24.525749>,  <40.330494, 32.420715, 24.436024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.503586, 32.560673, 24.525749>,  <40.792072, 32.793938, 24.675291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503586, 32.560673, 24.525749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429167, -0.047477, 0.901977,
		-0.543748, 0.810967, -0.216033,
		-0.721217, -0.583162, -0.373855,
		40.287220, 32.385723, 24.413593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212467, 33.003231, 25.062183>,  <40.792072, 32.793938, 24.675291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212467, 33.003231, 25.062183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.093491, 32.657963, 24.898983>,  <40.022106, 32.450802, 24.801064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.093491, 32.657963, 24.898983>,  <40.212467, 33.003231, 25.062183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093491, 32.657963, 24.898983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599869, -0.163497, 0.783215,
		-0.742756, 0.477706, -0.469160,
		-0.297440, -0.863172, -0.407999,
		40.004257, 32.399010, 24.776583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444839, 33.074127, 25.158781>,  <40.212467, 33.003231, 25.062183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444839, 33.074127, 25.158781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573334, 32.696358, 25.130873>,  <39.650429, 32.469696, 25.114128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573334, 32.696358, 25.130873>,  <39.444839, 33.074127, 25.158781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573334, 32.696358, 25.130873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438395, -0.213612, 0.873029,
		-0.839415, -0.249858, -0.482651,
		0.321234, -0.944426, -0.069772,
		39.669704, 32.413029, 25.109941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841087, 32.634071, 25.505455>,  <39.444839, 33.074127, 25.158781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841087, 32.634071, 25.505455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167072, 32.403263, 25.526915>,  <39.362663, 32.264778, 25.539791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.167072, 32.403263, 25.526915>,  <38.841087, 32.634071, 25.505455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167072, 32.403263, 25.526915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282398, -0.314592, 0.906246,
		-0.506045, -0.753711, -0.419331,
		0.814966, -0.577020, 0.053649,
		39.411564, 32.230156, 25.543009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671642, 31.995745, 25.847107>,  <38.841087, 32.634071, 25.505455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671642, 31.995745, 25.847107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068485, 31.983480, 25.895750>,  <39.306591, 31.976122, 25.924936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.068485, 31.983480, 25.895750>,  <38.671642, 31.995745, 25.847107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068485, 31.983480, 25.895750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121683, -0.470059, 0.874207,
		0.030359, -0.882103, -0.470078,
		0.992105, -0.030660, 0.121607,
		39.366116, 31.974283, 25.932232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836994, 31.332108, 26.080132>,  <38.671642, 31.995745, 25.847107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836994, 31.332108, 26.080132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147095, 31.559172, 26.190948>,  <39.333157, 31.695410, 26.257439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147095, 31.559172, 26.190948>,  <38.836994, 31.332108, 26.080132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147095, 31.559172, 26.190948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108299, -0.312648, 0.943675,
		0.622301, -0.761587, -0.180904,
		0.775250, 0.567658, 0.277040,
		39.379669, 31.729469, 26.274061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185032, 30.899578, 26.524628>,  <38.836994, 31.332108, 26.080132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185032, 30.899578, 26.524628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300659, 31.268032, 26.628895>,  <39.370037, 31.489105, 26.691454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300659, 31.268032, 26.628895>,  <39.185032, 30.899578, 26.524628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300659, 31.268032, 26.628895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351856, -0.150998, 0.923795,
		0.890300, -0.358761, 0.280458,
		0.289073, 0.921135, 0.260666,
		39.387383, 31.544373, 26.707094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383041, 30.853104, 27.196585>,  <39.185032, 30.899578, 26.524628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383041, 30.853104, 27.196585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339626, 31.248140, 27.151186>,  <39.313580, 31.485163, 27.123947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.339626, 31.248140, 27.151186>,  <39.383041, 30.853104, 27.196585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339626, 31.248140, 27.151186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286308, 0.078279, 0.954934,
		0.951971, 0.136138, 0.274259,
		-0.108534, 0.987592, -0.113497,
		39.307068, 31.544418, 27.117136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791759, 31.077730, 27.678905>,  <39.383041, 30.853104, 27.196585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791759, 31.077730, 27.678905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524525, 31.356194, 27.573814>,  <39.364185, 31.523272, 27.510759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524525, 31.356194, 27.573814>,  <39.791759, 31.077730, 27.678905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524525, 31.356194, 27.573814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350822, 0.016680, 0.936294,
		0.656190, 0.717695, 0.233084,
		-0.668085, 0.696158, -0.262728,
		39.324100, 31.565041, 27.494995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741749, 31.552732, 28.245014>,  <39.791759, 31.077730, 27.678905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741749, 31.552732, 28.245014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404034, 31.618538, 28.041008>,  <39.201405, 31.658022, 27.918604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404034, 31.618538, 28.041008>,  <39.741749, 31.552732, 28.245014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404034, 31.618538, 28.041008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505912, 0.069168, 0.859807,
		0.176727, 0.983947, 0.024832,
		-0.844287, 0.164514, -0.510015,
		39.150749, 31.667892, 27.888004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.543114, 32.569763, 33.283863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237225, 32.742153, 33.092251>,  <40.053692, 32.845585, 32.977283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237225, 32.742153, 33.092251>,  <40.543114, 32.569763, 33.283863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237225, 32.742153, 33.092251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517451, 0.032288, 0.855103,
		0.383991, 0.901788, 0.198314,
		-0.764719, 0.430970, -0.479030,
		40.007809, 32.871445, 32.948544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291245, 32.986031, 33.773155>,  <40.543114, 32.569763, 33.283863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291245, 32.986031, 33.773155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983952, 32.999557, 33.517441>,  <39.799576, 33.007675, 33.364014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983952, 32.999557, 33.517441>,  <40.291245, 32.986031, 33.773155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983952, 32.999557, 33.517441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619599, 0.211872, 0.755782,
		0.161004, 0.976712, -0.141814,
		-0.768228, 0.033816, -0.639283,
		39.753483, 33.009701, 33.325657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939922, 33.626865, 33.763683>,  <40.291245, 32.986031, 33.773155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939922, 33.626865, 33.763683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671913, 33.355148, 33.643929>,  <39.511108, 33.192120, 33.572075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.671913, 33.355148, 33.643929>,  <39.939922, 33.626865, 33.763683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671913, 33.355148, 33.643929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688630, 0.418135, 0.592412,
		-0.277237, 0.603095, -0.747941,
		-0.670021, -0.679293, -0.299387,
		39.470905, 33.151360, 33.554111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320198, 34.008179, 33.666759>,  <39.939922, 33.626865, 33.763683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320198, 34.008179, 33.666759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197918, 33.628185, 33.692299>,  <39.124550, 33.400188, 33.707623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197918, 33.628185, 33.692299>,  <39.320198, 34.008179, 33.666759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197918, 33.628185, 33.692299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723129, 0.275277, 0.633488,
		-0.619379, 0.147491, -0.771114,
		-0.305703, -0.949984, 0.063846,
		39.106209, 33.343189, 33.711452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536221, 34.136837, 33.759342>,  <39.320198, 34.008179, 33.666759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536221, 34.136837, 33.759342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653946, 33.767227, 33.856964>,  <38.724583, 33.545464, 33.915535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653946, 33.767227, 33.856964>,  <38.536221, 34.136837, 33.759342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653946, 33.767227, 33.856964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686374, -0.026670, 0.726760,
		-0.665033, -0.381409, -0.642073,
		0.294317, -0.924021, 0.244053,
		38.742241, 33.490021, 33.930180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866890, 33.775776, 33.945560>,  <38.536221, 34.136837, 33.759342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866890, 33.775776, 33.945560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.152046, 33.553799, 34.117062>,  <38.323139, 33.420612, 34.219963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.152046, 33.553799, 34.117062>,  <37.866890, 33.775776, 33.945560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152046, 33.553799, 34.117062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595467, -0.156070, 0.788074,
		-0.370421, -0.817117, -0.441711,
		0.712886, -0.554944, 0.428755,
		38.365913, 33.387314, 34.245689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571072, 33.105888, 34.173588>,  <37.866890, 33.775776, 33.945560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571072, 33.105888, 34.173588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895077, 33.107231, 34.408150>,  <38.089478, 33.108036, 34.548889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895077, 33.107231, 34.408150>,  <37.571072, 33.105888, 34.173588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895077, 33.107231, 34.408150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557460, -0.305938, 0.771777,
		0.181996, -0.952046, -0.245941,
		0.810009, 0.003358, 0.586407,
		38.138081, 33.108238, 34.584072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617828, 32.401577, 34.499996>,  <37.571072, 33.105888, 34.173588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617828, 32.401577, 34.499996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810383, 32.651363, 34.746025>,  <37.925915, 32.801235, 34.893642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810383, 32.651363, 34.746025>,  <37.617828, 32.401577, 34.499996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810383, 32.651363, 34.746025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559807, -0.320921, 0.763954,
		0.674451, -0.712078, 0.195092,
		0.481386, 0.624463, 0.615072,
		37.954800, 32.838703, 34.930546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744312, 32.016949, 35.169571>,  <37.617828, 32.401577, 34.499996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744312, 32.016949, 35.169571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796680, 32.389366, 35.305813>,  <37.828102, 32.612816, 35.387558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.796680, 32.389366, 35.305813>,  <37.744312, 32.016949, 35.169571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796680, 32.389366, 35.305813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437578, -0.254015, 0.862555,
		0.889598, -0.261965, 0.374151,
		0.130919, 0.931048, 0.340601,
		37.835957, 32.668682, 35.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936989, 31.891897, 35.793789>,  <37.744312, 32.016949, 35.169571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936989, 31.891897, 35.793789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836494, 32.279007, 35.800636>,  <37.776199, 32.511272, 35.804745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836494, 32.279007, 35.800636>,  <37.936989, 31.891897, 35.793789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836494, 32.279007, 35.800636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375413, -0.113730, 0.919854,
		0.892159, 0.224670, 0.391888,
		-0.251233, 0.967775, 0.017121,
		37.761124, 32.569340, 35.805771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317745, 32.123173, 36.366661>,  <37.936989, 31.891897, 35.793789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317745, 32.123173, 36.366661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989876, 32.340057, 36.292747>,  <37.793156, 32.470188, 36.248402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989876, 32.340057, 36.292747>,  <38.317745, 32.123173, 36.366661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989876, 32.340057, 36.292747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266730, -0.075792, 0.960786,
		0.506949, 0.836814, 0.206750,
		-0.819669, 0.542216, -0.184781,
		37.743977, 32.502724, 36.237312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294228, 32.443466, 36.980862>,  <38.317745, 32.123173, 36.366661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294228, 32.443466, 36.980862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928059, 32.488365, 36.826248>,  <37.708359, 32.515305, 36.733479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928059, 32.488365, 36.826248>,  <38.294228, 32.443466, 36.980862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928059, 32.488365, 36.826248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395684, -0.074909, 0.915327,
		0.073788, 0.990853, 0.112988,
		-0.915418, 0.112247, -0.386537,
		37.653435, 32.522038, 36.710285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969330, 33.055870, 37.315571>,  <38.294228, 32.443466, 36.980862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969330, 33.055870, 37.315571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682632, 32.812931, 37.178509>,  <37.510612, 32.667168, 37.096272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.682632, 32.812931, 37.178509>,  <37.969330, 33.055870, 37.315571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682632, 32.812931, 37.178509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464223, 0.048894, 0.884368,
		-0.520361, 0.792933, -0.316987,
		-0.716743, -0.607343, -0.342655,
		37.467609, 32.630730, 37.075710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340656, 33.325504, 37.545448>,  <37.969330, 33.055870, 37.315571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340656, 33.325504, 37.545448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288559, 32.931671, 37.498726>,  <37.257301, 32.695374, 37.470692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288559, 32.931671, 37.498726>,  <37.340656, 33.325504, 37.545448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288559, 32.931671, 37.498726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422652, -0.051435, 0.904831,
		-0.896885, 0.167213, -0.409435,
		-0.130241, -0.984578, -0.116804,
		37.249485, 32.636299, 37.463684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777752, 33.953392, 37.354214>,  <37.340656, 33.325504, 37.545448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777752, 33.953392, 37.354214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761421, 34.342827, 37.444065>,  <37.751621, 34.576488, 37.497974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761421, 34.342827, 37.444065>,  <37.777752, 33.953392, 37.354214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761421, 34.342827, 37.444065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463191, 0.217639, -0.859120,
		-0.885318, 0.068971, -0.459843,
		-0.040826, 0.973589, 0.224626,
		37.749172, 34.634903, 37.511452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694706, 34.309456, 36.731911>,  <37.777752, 33.953392, 37.354214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694706, 34.309456, 36.731911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844437, 34.612362, 36.945988>,  <37.934277, 34.794106, 37.074436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844437, 34.612362, 36.945988>,  <37.694706, 34.309456, 36.731911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844437, 34.612362, 36.945988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401261, 0.388043, -0.829706,
		-0.835982, 0.525337, -0.158602,
		0.374331, 0.757260, 0.535194,
		37.956738, 34.839539, 37.106544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447762, 34.913483, 36.372425>,  <37.694706, 34.309456, 36.731911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447762, 34.913483, 36.372425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767273, 35.012428, 36.591797>,  <37.958981, 35.071796, 36.723419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.767273, 35.012428, 36.591797>,  <37.447762, 34.913483, 36.372425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767273, 35.012428, 36.591797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403498, 0.455892, -0.793317,
		-0.446260, 0.854970, 0.264345,
		0.798775, 0.247363, 0.548425,
		38.006905, 35.086636, 36.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598629, 35.631439, 36.251907>,  <37.447762, 34.913483, 36.372425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598629, 35.631439, 36.251907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951061, 35.481491, 36.367264>,  <38.162521, 35.391521, 36.436478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951061, 35.481491, 36.367264>,  <37.598629, 35.631439, 36.251907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951061, 35.481491, 36.367264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447554, 0.463626, -0.764687,
		0.152950, 0.802823, 0.576266,
		0.881080, -0.374869, 0.288395,
		38.215385, 35.369030, 36.453781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034653, 36.155525, 36.288902>,  <37.598629, 35.631439, 36.251907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034653, 36.155525, 36.288902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285587, 35.846031, 36.253620>,  <38.436150, 35.660336, 36.232452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.285587, 35.846031, 36.253620>,  <38.034653, 36.155525, 36.288902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285587, 35.846031, 36.253620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568381, 0.532347, -0.627335,
		0.532347, 0.343417, 0.773738,
		0.627335, -0.773738, -0.088202,
		38.473789, 35.613911, 36.227158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789589, 36.439438, 36.347519>,  <38.034653, 36.155525, 36.288902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789589, 36.439438, 36.347519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789886, 36.091297, 36.150543>,  <38.790066, 35.882412, 36.032360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.789886, 36.091297, 36.150543>,  <38.789589, 36.439438, 36.347519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789886, 36.091297, 36.150543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649773, 0.374736, -0.661338,
		0.760128, -0.319480, 0.565808,
		0.000745, -0.870348, -0.492437,
		38.790112, 35.830193, 36.002811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431782, 36.520912, 36.065212>,  <38.789589, 36.439438, 36.347519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431782, 36.520912, 36.065212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239128, 36.239685, 35.855938>,  <39.123535, 36.070950, 35.730373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239128, 36.239685, 35.855938>,  <39.431782, 36.520912, 36.065212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239128, 36.239685, 35.855938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477499, 0.290060, -0.829373,
		0.734860, -0.649277, 0.196011,
		-0.481638, -0.703068, -0.523183,
		39.094635, 36.028763, 35.698982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942722, 36.242023, 35.661972>,  <39.431782, 36.520912, 36.065212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942722, 36.242023, 35.661972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614643, 36.116695, 35.470509>,  <39.417797, 36.041500, 35.355633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614643, 36.116695, 35.470509>,  <39.942722, 36.242023, 35.661972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614643, 36.116695, 35.470509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448926, 0.166120, -0.877991,
		0.354606, -0.935005, 0.004406,
		-0.820195, -0.313319, -0.478656,
		39.368584, 36.022701, 35.326912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163513, 35.842018, 35.098080>,  <39.942722, 36.242023, 35.661972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163513, 35.842018, 35.098080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782505, 35.897987, 34.989914>,  <39.553898, 35.931568, 34.925014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.782505, 35.897987, 34.989914>,  <40.163513, 35.842018, 35.098080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782505, 35.897987, 34.989914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275425, 0.017433, -0.961164,
		-0.129772, -0.990009, -0.055143,
		-0.952523, 0.139920, -0.270411,
		39.496750, 35.939964, 34.908791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028053, 35.260525, 34.692619>,  <40.163513, 35.842018, 35.098080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028053, 35.260525, 34.692619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818195, 35.586647, 34.594624>,  <39.692280, 35.782322, 34.535828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.818195, 35.586647, 34.594624>,  <40.028053, 35.260525, 34.692619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818195, 35.586647, 34.594624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288310, -0.100610, -0.952237,
		-0.801017, -0.570216, -0.182278,
		-0.524642, 0.815311, -0.244990,
		39.660801, 35.831242, 34.521126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545628, 35.024323, 34.130169>,  <40.028053, 35.260525, 34.692619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545628, 35.024323, 34.130169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579704, 35.422260, 34.108150>,  <39.600151, 35.661022, 34.094940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.579704, 35.422260, 34.108150>,  <39.545628, 35.024323, 34.130169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579704, 35.422260, 34.108150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025619, -0.053042, -0.998264,
		-0.996035, 0.086452, 0.020968,
		0.085190, 0.994843, -0.055047,
		39.605263, 35.720715, 34.091637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059601, 35.288010, 33.608879>,  <39.545628, 35.024323, 34.130169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059601, 35.288010, 33.608879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.335812, 35.575047, 33.645153>,  <39.501537, 35.747269, 33.666916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.335812, 35.575047, 33.645153>,  <39.059601, 35.288010, 33.608879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335812, 35.575047, 33.645153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015791, 0.140300, -0.989983,
		-0.723131, 0.682181, 0.108213,
		0.690530, 0.717596, 0.090683,
		39.542973, 35.790325, 33.672359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865707, 35.723537, 33.129265>,  <39.059601, 35.288010, 33.608879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865707, 35.723537, 33.129265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250320, 35.813202, 33.192776>,  <39.481087, 35.867001, 33.230881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250320, 35.813202, 33.192776>,  <38.865707, 35.723537, 33.129265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250320, 35.813202, 33.192776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121713, 0.170513, -0.977809,
		-0.246256, 0.959520, 0.136671,
		0.961532, 0.224157, 0.158776,
		39.538780, 35.880447, 33.240410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994400, 36.289909, 32.632244>,  <38.865707, 35.723537, 33.129265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994400, 36.289909, 32.632244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364632, 36.195686, 32.750782>,  <39.586769, 36.139153, 32.821903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364632, 36.195686, 32.750782>,  <38.994400, 36.289909, 32.632244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364632, 36.195686, 32.750782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346805, 0.213807, -0.913243,
		0.151760, 0.948051, 0.279587,
		0.925578, -0.235556, 0.296342,
		39.642303, 36.125019, 32.839684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745499, 36.971527, 32.728813>,  <38.994400, 36.289909, 32.632244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745499, 36.971527, 32.728813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405392, 37.070522, 32.542999>,  <38.201328, 37.129921, 32.431511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405392, 37.070522, 32.542999>,  <38.745499, 36.971527, 32.728813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405392, 37.070522, 32.542999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524942, -0.463307, 0.713990,
		-0.038518, 0.850938, 0.523853,
		-0.850266, 0.247491, -0.464539,
		38.150311, 37.144772, 32.403637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353310, 37.344414, 33.219452>,  <38.745499, 36.971527, 32.728813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353310, 37.344414, 33.219452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103027, 37.206055, 32.939781>,  <37.952858, 37.123039, 32.771980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103027, 37.206055, 32.939781>,  <38.353310, 37.344414, 33.219452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103027, 37.206055, 32.939781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588601, -0.378835, 0.714166,
		-0.511901, 0.858393, 0.033443,
		-0.625705, -0.345898, -0.699177,
		37.915318, 37.102283, 32.730026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669956, 37.632179, 33.368622>,  <38.353310, 37.344414, 33.219452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669956, 37.632179, 33.368622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634834, 37.294331, 33.157379>,  <37.613762, 37.091621, 33.030632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634834, 37.294331, 33.157379>,  <37.669956, 37.632179, 33.368622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634834, 37.294331, 33.157379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526466, -0.410716, 0.744410,
		-0.845650, 0.343396, -0.408602,
		-0.087808, -0.844625, -0.528108,
		37.608494, 37.040943, 32.998947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954754, 37.377861, 33.531754>,  <37.669956, 37.632179, 33.368622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954754, 37.377861, 33.531754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116703, 37.061371, 33.348438>,  <37.213875, 36.871475, 33.238449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.116703, 37.061371, 33.348438>,  <36.954754, 37.377861, 33.531754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116703, 37.061371, 33.348438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601829, -0.607935, 0.517897,
		-0.688387, 0.066130, -0.722323,
		0.404876, -0.791229, -0.458294,
		37.238167, 36.824001, 33.210949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319256, 36.810001, 33.360497>,  <36.954754, 37.377861, 33.531754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319256, 36.810001, 33.360497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678310, 36.634357, 33.345375>,  <36.893745, 36.528973, 33.336304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678310, 36.634357, 33.345375>,  <36.319256, 36.810001, 33.360497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678310, 36.634357, 33.345375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402669, -0.851965, 0.334683,
		-0.179168, -0.285203, -0.941572,
		0.897639, -0.439106, -0.037803,
		36.947601, 36.502625, 33.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184166, 36.205109, 32.990540>,  <36.319256, 36.810001, 33.360497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184166, 36.205109, 32.990540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520557, 36.146130, 33.198776>,  <36.722393, 36.110741, 33.323719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.520557, 36.146130, 33.198776>,  <36.184166, 36.205109, 32.990540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520557, 36.146130, 33.198776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369390, -0.859504, 0.353277,
		0.395364, -0.489400, -0.777287,
		0.840975, -0.147448, 0.520596,
		36.772850, 36.101894, 33.354954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235661, 35.493450, 33.079021>,  <36.184166, 36.205109, 32.990540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235661, 35.493450, 33.079021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.484261, 35.635342, 33.358425>,  <36.633419, 35.720474, 33.526066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.484261, 35.635342, 33.358425>,  <36.235661, 35.493450, 33.079021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484261, 35.635342, 33.358425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238126, -0.763894, 0.599802,
		0.746351, -0.539107, -0.390288,
		0.621495, 0.354725, 0.698508,
		36.670708, 35.741760, 33.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614193, 34.916401, 33.322590>,  <36.235661, 35.493450, 33.079021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614193, 34.916401, 33.322590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621162, 35.198750, 33.605839>,  <36.625343, 35.368160, 33.775787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.621162, 35.198750, 33.605839>,  <36.614193, 34.916401, 33.322590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621162, 35.198750, 33.605839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245094, -0.683607, 0.687467,
		0.969343, -0.185537, 0.161093,
		0.017426, 0.705874, 0.708124,
		36.626389, 35.410511, 33.818275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905182, 34.610329, 33.981182>,  <36.614193, 34.916401, 33.322590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905182, 34.610329, 33.981182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.743286, 34.950665, 34.115196>,  <36.646149, 35.154865, 34.195606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.743286, 34.950665, 34.115196>,  <36.905182, 34.610329, 33.981182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743286, 34.950665, 34.115196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194788, -0.438201, 0.877518,
		0.893445, 0.289904, 0.343091,
		-0.404739, 0.850844, 0.335039,
		36.621864, 35.205917, 34.215710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351345, 34.941833, 34.625561>,  <36.905182, 34.610329, 33.981182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351345, 34.941833, 34.625561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.967716, 35.053951, 34.609486>,  <36.737537, 35.121223, 34.599842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.967716, 35.053951, 34.609486>,  <37.351345, 34.941833, 34.625561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967716, 35.053951, 34.609486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126476, -0.297069, 0.946442,
		0.253349, 0.912788, 0.320362,
		-0.959071, 0.280298, -0.040184,
		36.679996, 35.138042, 34.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220715, 34.896950, 35.336056>,  <37.351345, 34.941833, 34.625561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220715, 34.896950, 35.336056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850624, 34.966431, 35.201126>,  <36.628571, 35.008118, 35.120167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850624, 34.966431, 35.201126>,  <37.220715, 34.896950, 35.336056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850624, 34.966431, 35.201126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373880, -0.265975, 0.888522,
		0.064617, 0.948201, 0.311030,
		-0.925223, 0.173701, -0.337327,
		36.573055, 35.018539, 35.099930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831848, 35.272682, 35.793785>,  <37.220715, 34.896950, 35.336056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831848, 35.272682, 35.793785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548367, 35.060932, 35.607235>,  <36.378277, 34.933884, 35.495304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548367, 35.060932, 35.607235>,  <36.831848, 35.272682, 35.793785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548367, 35.060932, 35.607235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326250, -0.340218, 0.881937,
		-0.625542, 0.777186, 0.068405,
		-0.708701, -0.529372, -0.466377,
		36.335754, 34.902122, 35.467323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.785583, 38.697124, 29.321316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500050, 38.493919, 29.128500>,  <39.328728, 38.371994, 29.012812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500050, 38.493919, 29.128500>,  <39.785583, 38.697124, 29.321316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500050, 38.493919, 29.128500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452149, -0.191304, 0.871186,
		-0.534792, 0.839835, -0.093140,
		-0.713834, -0.508016, -0.482038,
		39.285900, 38.341515, 28.983889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300056, 38.849827, 29.727957>,  <39.785583, 38.697124, 29.321316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300056, 38.849827, 29.727957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121338, 38.562046, 29.515255>,  <39.014107, 38.389378, 29.387634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121338, 38.562046, 29.515255>,  <39.300056, 38.849827, 29.727957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121338, 38.562046, 29.515255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467399, -0.319095, 0.824449,
		-0.762834, 0.616899, -0.193703,
		-0.446792, -0.719454, -0.531754,
		38.987301, 38.346210, 29.355728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580761, 38.890854, 29.875881>,  <39.300056, 38.849827, 29.727957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580761, 38.890854, 29.875881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654129, 38.508728, 29.783163>,  <38.698151, 38.279453, 29.727533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654129, 38.508728, 29.783163>,  <38.580761, 38.890854, 29.875881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654129, 38.508728, 29.783163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416836, -0.289129, 0.861773,
		-0.890283, -0.061446, -0.451242,
		0.183420, -0.955316, -0.231794,
		38.709156, 38.222134, 29.713625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989021, 38.493999, 30.083378>,  <38.580761, 38.890854, 29.875881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989021, 38.493999, 30.083378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265148, 38.207085, 30.045509>,  <38.430824, 38.034935, 30.022789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265148, 38.207085, 30.045509>,  <37.989021, 38.493999, 30.083378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265148, 38.207085, 30.045509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192414, -0.308147, 0.931677,
		-0.697449, -0.624939, -0.350736,
		0.690319, -0.717284, -0.094670,
		38.472244, 37.991901, 30.017109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619167, 37.890919, 30.132078>,  <37.989021, 38.493999, 30.083378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619167, 37.890919, 30.132078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992371, 37.799889, 30.243582>,  <38.216293, 37.745270, 30.310484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992371, 37.799889, 30.243582>,  <37.619167, 37.890919, 30.132078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992371, 37.799889, 30.243582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337814, -0.286950, 0.896405,
		-0.124008, -0.930521, -0.344604,
		0.933008, -0.227574, 0.278759,
		38.272274, 37.731617, 30.327209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627136, 37.194244, 30.443274>,  <37.619167, 37.890919, 30.132078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627136, 37.194244, 30.443274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958385, 37.363186, 30.590693>,  <38.157135, 37.464550, 30.679144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958385, 37.363186, 30.590693>,  <37.627136, 37.194244, 30.443274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958385, 37.363186, 30.590693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212208, -0.372330, 0.903515,
		0.518825, -0.826430, -0.218708,
		0.828123, 0.422355, 0.368549,
		38.206821, 37.489891, 30.701258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963516, 36.677139, 30.887701>,  <37.627136, 37.194244, 30.443274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963516, 36.677139, 30.887701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117897, 37.024261, 31.012890>,  <38.210526, 37.232536, 31.088003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117897, 37.024261, 31.012890>,  <37.963516, 36.677139, 30.887701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117897, 37.024261, 31.012890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188107, -0.258101, 0.947628,
		0.903138, -0.424610, 0.063626,
		0.385951, 0.867808, 0.312973,
		38.233681, 37.284603, 31.106781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520172, 36.466095, 31.421272>,  <37.963516, 36.677139, 30.887701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520172, 36.466095, 31.421272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422272, 36.849010, 31.482857>,  <38.363533, 37.078758, 31.519808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422272, 36.849010, 31.482857>,  <38.520172, 36.466095, 31.421272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422272, 36.849010, 31.482857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056527, -0.172609, 0.983367,
		0.967937, 0.231976, 0.096359,
		-0.244750, 0.957284, 0.153962,
		38.348846, 37.136196, 31.529045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960976, 36.679035, 31.920763>,  <38.520172, 36.466095, 31.421272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960976, 36.679035, 31.920763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656254, 36.938099, 31.926287>,  <38.473423, 37.093536, 31.929600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656254, 36.938099, 31.926287>,  <38.960976, 36.679035, 31.920763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656254, 36.938099, 31.926287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124077, -0.166798, 0.978153,
		0.635816, 0.743446, 0.207427,
		-0.761802, 0.647663, 0.013808,
		38.427711, 37.132397, 31.930429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522015, 36.858990, 32.420692>,  <38.960976, 36.679035, 31.920763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522015, 36.858990, 32.420692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753536, 36.538197, 32.479755>,  <39.892448, 36.345718, 32.515194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753536, 36.538197, 32.479755>,  <39.522015, 36.858990, 32.420692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753536, 36.538197, 32.479755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388556, 0.112036, -0.914589,
		0.716944, 0.586743, 0.376463,
		0.578805, -0.801986, 0.147659,
		39.927177, 36.297600, 32.524052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165859, 37.021072, 32.235672>,  <39.522015, 36.858990, 32.420692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165859, 37.021072, 32.235672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188046, 36.621727, 32.241375>,  <40.201355, 36.382122, 32.244797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188046, 36.621727, 32.241375>,  <40.165859, 37.021072, 32.235672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188046, 36.621727, 32.241375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587121, 0.021057, -0.809225,
		0.807597, 0.053253, 0.587326,
		0.055461, -0.998359, 0.014261,
		40.204685, 36.322220, 32.245655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947746, 36.811192, 32.122406>,  <40.165859, 37.021072, 32.235672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947746, 36.811192, 32.122406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709770, 36.501202, 32.037113>,  <40.566986, 36.315208, 31.985937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709770, 36.501202, 32.037113>,  <40.947746, 36.811192, 32.122406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709770, 36.501202, 32.037113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446153, -0.097730, -0.889605,
		0.668580, -0.624392, 0.403899,
		-0.594936, -0.774973, -0.213234,
		40.531288, 36.268711, 31.973143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387749, 36.309643, 32.011616>,  <40.947746, 36.811192, 32.122406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387749, 36.309643, 32.011616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052074, 36.172291, 31.842924>,  <40.850670, 36.089878, 31.741709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052074, 36.172291, 31.842924>,  <41.387749, 36.309643, 32.011616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052074, 36.172291, 31.842924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519109, -0.274544, -0.809414,
		0.162157, -0.898172, 0.408647,
		-0.839185, -0.343384, -0.421730,
		40.800320, 36.069275, 31.716406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653152, 35.836079, 31.502607>,  <41.387749, 36.309643, 32.011616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653152, 35.836079, 31.502607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279621, 35.909775, 31.379961>,  <41.055500, 35.953991, 31.306374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279621, 35.909775, 31.379961>,  <41.653152, 35.836079, 31.502607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279621, 35.909775, 31.379961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291122, -0.106645, -0.950724,
		-0.207864, -0.977078, 0.045951,
		-0.933831, 0.184244, -0.306616,
		40.999470, 35.965046, 31.287975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551712, 35.430679, 30.909534>,  <41.653152, 35.836079, 31.502607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551712, 35.430679, 30.909534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275520, 35.719959, 30.903654>,  <41.109806, 35.893528, 30.900126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275520, 35.719959, 30.903654>,  <41.551712, 35.430679, 30.909534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275520, 35.719959, 30.903654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147580, 0.120948, -0.981627,
		-0.708136, -0.679964, -0.190242,
		-0.690480, 0.723202, -0.014701,
		41.068375, 35.936920, 30.899244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192726, 35.353901, 30.247150>,  <41.551712, 35.430679, 30.909534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192726, 35.353901, 30.247150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105667, 35.720600, 30.381136>,  <41.053432, 35.940620, 30.461527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105667, 35.720600, 30.381136>,  <41.192726, 35.353901, 30.247150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105667, 35.720600, 30.381136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127762, 0.366998, -0.921406,
		-0.967630, -0.157744, -0.197001,
		-0.217645, 0.916749, 0.334964,
		41.040375, 35.995625, 30.481625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603264, 35.705166, 29.743114>,  <41.192726, 35.353901, 30.247150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603264, 35.705166, 29.743114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813213, 35.991604, 29.927162>,  <40.939182, 36.163467, 30.037590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813213, 35.991604, 29.927162>,  <40.603264, 35.705166, 29.743114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813213, 35.991604, 29.927162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284804, 0.361657, -0.887745,
		-0.802117, 0.597000, -0.014122,
		0.524876, 0.716097, 0.460119,
		40.970676, 36.206432, 30.065199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.534149, 36.241692, 29.276955>,  <40.603264, 35.705166, 29.743114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.534149, 36.241692, 29.276955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822094, 36.363819, 29.526300>,  <40.994862, 36.437096, 29.675907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822094, 36.363819, 29.526300>,  <40.534149, 36.241692, 29.276955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822094, 36.363819, 29.526300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432673, 0.504865, -0.746931,
		-0.542767, 0.807398, 0.231328,
		0.719859, 0.305320, 0.623363,
		41.038052, 36.455414, 29.713310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427212, 37.027599, 29.353392>,  <40.534149, 36.241692, 29.276955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427212, 37.027599, 29.353392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802124, 36.920616, 29.442802>,  <41.027073, 36.856426, 29.496449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802124, 36.920616, 29.442802>,  <40.427212, 37.027599, 29.353392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802124, 36.920616, 29.442802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344438, 0.612259, -0.711689,
		0.053489, 0.744047, 0.665983,
		0.937284, -0.267457, 0.223529,
		41.083309, 36.840378, 29.509861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795696, 37.636177, 29.385824>,  <40.427212, 37.027599, 29.353392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795696, 37.636177, 29.385824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065514, 37.352039, 29.305412>,  <41.227402, 37.181557, 29.257166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065514, 37.352039, 29.305412>,  <40.795696, 37.636177, 29.385824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065514, 37.352039, 29.305412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291644, 0.506568, -0.811377,
		0.678188, 0.488679, 0.548867,
		0.674541, -0.710339, -0.201028,
		41.267876, 37.138939, 29.245104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294754, 37.994610, 29.043266>,  <40.795696, 37.636177, 29.385824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294754, 37.994610, 29.043266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397354, 37.615849, 28.965729>,  <41.458916, 37.388592, 28.919207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397354, 37.615849, 28.965729>,  <41.294754, 37.994610, 29.043266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397354, 37.615849, 28.965729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585672, 0.311809, -0.748173,
		0.768892, 0.078380, 0.634557,
		0.256502, -0.946906, -0.193843,
		41.474304, 37.331776, 28.907576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012627, 38.032841, 28.892609>,  <41.294754, 37.994610, 29.043266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012627, 38.032841, 28.892609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861309, 37.699833, 28.730715>,  <41.770519, 37.500027, 28.633579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861309, 37.699833, 28.730715>,  <42.012627, 38.032841, 28.892609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861309, 37.699833, 28.730715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499882, 0.184271, -0.846264,
		0.779111, -0.522453, 0.346453,
		-0.378292, -0.832518, -0.404733,
		41.747822, 37.450077, 28.609295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532169, 37.601078, 28.663588>,  <42.012627, 38.032841, 28.892609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532169, 37.601078, 28.663588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220852, 37.442730, 28.468634>,  <42.034061, 37.347721, 28.351662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220852, 37.442730, 28.468634>,  <42.532169, 37.601078, 28.663588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220852, 37.442730, 28.468634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571521, -0.125164, -0.810986,
		0.260043, -0.909736, 0.323664,
		-0.778294, -0.395872, -0.487385,
		41.987362, 37.323967, 28.322418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.187565, 32.532310, 25.241938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474907, 32.690601, 25.470802>,  <36.647312, 32.785576, 25.608122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474907, 32.690601, 25.470802>,  <36.187565, 32.532310, 25.241938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474907, 32.690601, 25.470802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461732, -0.343970, 0.817611,
		0.520361, -0.851517, -0.064370,
		0.718351, 0.395731, 0.572161,
		36.690411, 32.809322, 25.642450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316769, 31.954874, 25.680361>,  <36.187565, 32.532310, 25.241938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316769, 31.954874, 25.680361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465572, 32.284977, 25.850330>,  <36.554855, 32.483040, 25.952312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.465572, 32.284977, 25.850330>,  <36.316769, 31.954874, 25.680361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465572, 32.284977, 25.850330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411640, -0.263628, 0.872383,
		0.831963, -0.499449, 0.241637,
		0.372009, 0.825258, 0.424923,
		36.577175, 32.532555, 25.977808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687099, 31.712027, 26.354288>,  <36.316769, 31.954874, 25.680361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687099, 31.712027, 26.354288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618221, 32.101299, 26.415300>,  <36.576897, 32.334862, 26.451908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618221, 32.101299, 26.415300>,  <36.687099, 31.712027, 26.354288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618221, 32.101299, 26.415300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437632, -0.214299, 0.873244,
		0.882512, 0.083616, 0.462796,
		-0.172194, 0.973183, 0.152528,
		36.566563, 32.393253, 26.461060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963642, 31.899197, 27.067976>,  <36.687099, 31.712027, 26.354288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963642, 31.899197, 27.067976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677681, 32.154350, 26.953419>,  <36.506104, 32.307442, 26.884684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677681, 32.154350, 26.953419>,  <36.963642, 31.899197, 27.067976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677681, 32.154350, 26.953419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348697, 0.029788, 0.936762,
		0.606078, 0.769555, 0.201133,
		-0.714898, 0.637886, -0.286395,
		36.463211, 32.345715, 26.867500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953384, 32.300930, 27.597662>,  <36.963642, 31.899197, 27.067976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953384, 32.300930, 27.597662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593365, 32.375336, 27.440023>,  <36.377354, 32.419979, 27.345440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593365, 32.375336, 27.440023>,  <36.953384, 32.300930, 27.597662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593365, 32.375336, 27.440023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369611, 0.153248, 0.916462,
		0.230869, 0.970522, -0.069177,
		-0.900048, 0.186014, -0.394096,
		36.323349, 32.431141, 27.321795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667355, 32.967876, 27.873421>,  <36.953384, 32.300930, 27.597662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667355, 32.967876, 27.873421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350380, 32.756340, 27.751846>,  <36.160194, 32.629417, 27.678902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.350380, 32.756340, 27.751846>,  <36.667355, 32.967876, 27.873421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350380, 32.756340, 27.751846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406966, 0.087236, 0.909268,
		-0.454341, 0.844228, -0.284347,
		-0.792435, -0.528838, -0.303937,
		36.112648, 32.597691, 27.660666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091438, 33.239807, 28.185419>,  <36.667355, 32.967876, 27.873421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091438, 33.239807, 28.185419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963421, 32.876789, 28.076651>,  <35.886612, 32.658978, 28.011389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963421, 32.876789, 28.076651>,  <36.091438, 33.239807, 28.185419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963421, 32.876789, 28.076651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426894, -0.118089, 0.896558,
		-0.845775, 0.403018, -0.349630,
		-0.320042, -0.907541, -0.271922,
		35.867409, 32.604527, 27.995073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355114, 33.277561, 28.309830>,  <36.091438, 33.239807, 28.185419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355114, 33.277561, 28.309830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445049, 32.887875, 28.317280>,  <35.499012, 32.654064, 28.321751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.445049, 32.887875, 28.317280>,  <35.355114, 33.277561, 28.309830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445049, 32.887875, 28.317280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424502, -0.080730, 0.901820,
		-0.877065, -0.210674, -0.431709,
		0.224842, -0.974217, 0.018626,
		35.512501, 32.595608, 28.322868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684826, 32.887337, 28.480249>,  <35.355114, 33.277561, 28.309830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684826, 32.887337, 28.480249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990410, 32.639519, 28.552404>,  <35.173759, 32.490829, 28.595697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990410, 32.639519, 28.552404>,  <34.684826, 32.887337, 28.480249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990410, 32.639519, 28.552404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525999, -0.435992, 0.730230,
		-0.373755, -0.652751, -0.658956,
		0.763958, -0.619537, 0.180392,
		35.219597, 32.453655, 28.606522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328590, 32.299431, 28.663361>,  <34.684826, 32.887337, 28.480249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328590, 32.299431, 28.663361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697300, 32.213093, 28.792198>,  <34.918526, 32.161289, 28.869501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.697300, 32.213093, 28.792198>,  <34.328590, 32.299431, 28.663361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697300, 32.213093, 28.792198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383256, -0.381385, 0.841226,
		-0.058733, -0.898864, -0.434275,
		0.921773, -0.215846, 0.322095,
		34.973831, 32.148338, 28.888826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300186, 31.616053, 28.958797>,  <34.328590, 32.299431, 28.663361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300186, 31.616053, 28.958797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612583, 31.816883, 29.107370>,  <34.800022, 31.937382, 29.196514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612583, 31.816883, 29.107370>,  <34.300186, 31.616053, 28.958797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612583, 31.816883, 29.107370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265960, -0.270739, 0.925184,
		0.565077, -0.821351, -0.077913,
		0.780995, 0.502079, 0.371435,
		34.846882, 31.967506, 29.218801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556141, 31.186359, 29.470276>,  <34.300186, 31.616053, 28.958797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556141, 31.186359, 29.470276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712803, 31.539606, 29.573591>,  <34.806801, 31.751554, 29.635580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.712803, 31.539606, 29.573591>,  <34.556141, 31.186359, 29.470276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712803, 31.539606, 29.573591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266602, -0.159755, 0.950475,
		0.880641, -0.441120, 0.172871,
		0.391657, 0.883115, 0.258290,
		34.830299, 31.804541, 29.651079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951275, 30.998270, 30.112448>,  <34.556141, 31.186359, 29.470276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951275, 30.998270, 30.112448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939701, 31.398081, 30.116650>,  <34.932755, 31.637966, 30.119171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.939701, 31.398081, 30.116650>,  <34.951275, 30.998270, 30.112448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939701, 31.398081, 30.116650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203011, -0.016168, 0.979043,
		0.978749, 0.026198, 0.203383,
		-0.028937, 0.999526, 0.010506,
		34.931019, 31.697939, 30.119801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397736, 31.142271, 30.578581>,  <34.951275, 30.998270, 30.112448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397736, 31.142271, 30.578581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155739, 31.459702, 30.552593>,  <35.010540, 31.650160, 30.537001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155739, 31.459702, 30.552593>,  <35.397736, 31.142271, 30.578581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155739, 31.459702, 30.552593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149209, -0.032841, 0.988260,
		0.782125, 0.607585, 0.138278,
		-0.604993, 0.793575, -0.064971,
		34.974239, 31.697775, 30.533102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031643, 31.446167, 30.703030>,  <35.397736, 31.142271, 30.578581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031643, 31.446167, 30.703030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375580, 31.462328, 30.906614>,  <36.581944, 31.472025, 31.028765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.375580, 31.462328, 30.906614>,  <36.031643, 31.446167, 30.703030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375580, 31.462328, 30.906614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504925, 0.080408, -0.859410,
		-0.075648, 0.995943, 0.048737,
		0.859842, 0.040404, 0.508959,
		36.633533, 31.474449, 31.059301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457382, 32.145584, 30.672075>,  <36.031643, 31.446167, 30.703030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457382, 32.145584, 30.672075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741268, 31.875298, 30.751793>,  <36.911598, 31.713127, 30.799623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741268, 31.875298, 30.751793>,  <36.457382, 32.145584, 30.672075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741268, 31.875298, 30.751793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487888, 0.267360, -0.830954,
		0.508204, 0.686971, 0.519421,
		0.709714, -0.675714, 0.199292,
		36.954182, 31.672583, 30.811581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032776, 32.449619, 30.497860>,  <36.457382, 32.145584, 30.672075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032776, 32.449619, 30.497860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135307, 32.063152, 30.486446>,  <37.196827, 31.831272, 30.479599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.135307, 32.063152, 30.486446>,  <37.032776, 32.449619, 30.497860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135307, 32.063152, 30.486446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659531, 0.196404, -0.725565,
		0.706622, 0.167164, 0.687562,
		0.256328, -0.966168, -0.028534,
		37.212204, 31.773302, 30.477886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724777, 32.451126, 30.521679>,  <37.032776, 32.449619, 30.497860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724777, 32.451126, 30.521679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631371, 32.087242, 30.384336>,  <37.575325, 31.868912, 30.301931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631371, 32.087242, 30.384336>,  <37.724777, 32.451126, 30.521679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631371, 32.087242, 30.384336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690755, 0.093321, -0.717042,
		0.684343, -0.404619, 0.606596,
		-0.233520, -0.909711, -0.343356,
		37.561314, 31.814329, 30.281330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459236, 32.108467, 30.306517>,  <37.724777, 32.451126, 30.521679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459236, 32.108467, 30.306517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185749, 31.891613, 30.111120>,  <38.021656, 31.761499, 29.993883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185749, 31.891613, 30.111120>,  <38.459236, 32.108467, 30.306517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185749, 31.891613, 30.111120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595354, -0.027291, -0.803000,
		0.422005, -0.839847, 0.341423,
		-0.683715, -0.542137, -0.488489,
		37.980633, 31.728971, 29.964573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822357, 31.680719, 29.843781>,  <38.459236, 32.108467, 30.306517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822357, 31.680719, 29.843781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458603, 31.659458, 29.678766>,  <38.240349, 31.646702, 29.579758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458603, 31.659458, 29.678766>,  <38.822357, 31.680719, 29.843781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458603, 31.659458, 29.678766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414778, -0.190119, -0.889839,
		-0.031131, -0.980321, 0.194940,
		-0.909390, -0.053155, -0.412534,
		38.185787, 31.643513, 29.555006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794670, 31.026119, 29.417130>,  <38.822357, 31.680719, 29.843781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794670, 31.026119, 29.417130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540321, 31.309795, 29.295330>,  <38.387714, 31.480001, 29.222250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.540321, 31.309795, 29.295330>,  <38.794670, 31.026119, 29.417130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540321, 31.309795, 29.295330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308563, -0.128030, -0.942548,
		-0.707431, -0.693294, -0.137419,
		-0.635870, 0.709190, -0.304498,
		38.349560, 31.522552, 29.203981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519459, 30.829771, 28.737331>,  <38.794670, 31.026119, 29.417130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519459, 30.829771, 28.737331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407726, 31.213816, 28.742411>,  <38.340687, 31.444242, 28.745459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407726, 31.213816, 28.742411>,  <38.519459, 30.829771, 28.737331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407726, 31.213816, 28.742411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210378, 0.074099, -0.974808,
		-0.936865, -0.269621, -0.222684,
		-0.279329, 0.960112, 0.012699,
		38.323929, 31.501848, 28.746220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139141, 30.900833, 28.170092>,  <38.519459, 30.829771, 28.737331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139141, 30.900833, 28.170092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264584, 31.270416, 28.257683>,  <38.339851, 31.492167, 28.310238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264584, 31.270416, 28.257683>,  <38.139141, 30.900833, 28.170092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264584, 31.270416, 28.257683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209388, 0.157646, -0.965041,
		-0.926178, 0.348497, -0.144027,
		0.313608, 0.923958, 0.218979,
		38.358665, 31.547604, 28.323376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911472, 31.355619, 27.634714>,  <38.139141, 30.900833, 28.170092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911472, 31.355619, 27.634714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222343, 31.542833, 27.802965>,  <38.408867, 31.655163, 27.903915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.222343, 31.542833, 27.802965>,  <37.911472, 31.355619, 27.634714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222343, 31.542833, 27.802965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440047, 0.073599, -0.894953,
		-0.449829, 0.880639, -0.148758,
		0.777182, 0.468037, 0.420630,
		38.455498, 31.683245, 27.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067272, 32.030293, 27.199579>,  <37.911472, 31.355619, 27.634714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067272, 32.030293, 27.199579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381630, 31.903080, 27.411701>,  <38.570244, 31.826752, 27.538975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381630, 31.903080, 27.411701>,  <38.067272, 32.030293, 27.199579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381630, 31.903080, 27.411701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599029, 0.178808, -0.780507,
		0.153403, 0.931066, 0.331034,
		0.785895, -0.318031, 0.530306,
		38.617397, 31.807671, 27.570793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551170, 32.508163, 27.099232>,  <38.067272, 32.030293, 27.199579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551170, 32.508163, 27.099232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754436, 32.182636, 27.211990>,  <38.876396, 31.987320, 27.279646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.754436, 32.182636, 27.211990>,  <38.551170, 32.508163, 27.099232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754436, 32.182636, 27.211990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654862, 0.152516, -0.740199,
		0.559394, 0.560748, 0.610442,
		0.508167, -0.813818, 0.281896,
		38.906887, 31.938490, 27.296558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191307, 32.772057, 27.277414>,  <38.551170, 32.508163, 27.099232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191307, 32.772057, 27.277414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209583, 32.386417, 27.172783>,  <39.220551, 32.155033, 27.110004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.209583, 32.386417, 27.172783>,  <39.191307, 32.772057, 27.277414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209583, 32.386417, 27.172783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660484, 0.225606, -0.716145,
		0.749449, -0.140047, 0.647081,
		0.045691, -0.964100, -0.261579,
		39.223289, 32.097187, 27.094309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935719, 32.683384, 27.122583>,  <39.191307, 32.772057, 27.277414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935719, 32.683384, 27.122583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737904, 32.366535, 26.979485>,  <39.619217, 32.176426, 26.893625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737904, 32.366535, 26.979485>,  <39.935719, 32.683384, 27.122583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737904, 32.366535, 26.979485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601400, -0.014695, -0.798813,
		0.627499, -0.610189, 0.483648,
		-0.494534, -0.792120, -0.357747,
		39.589542, 32.128899, 26.872160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623520, 32.615944, 27.275843>,  <39.935719, 32.683384, 27.122583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623520, 32.615944, 27.275843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898235, 32.906250, 27.291803>,  <41.063065, 33.080433, 27.301380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898235, 32.906250, 27.291803>,  <40.623520, 32.615944, 27.275843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898235, 32.906250, 27.291803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155832, -0.200637, 0.967192,
		0.709960, -0.658035, -0.250892,
		0.686785, 0.725765, 0.039902,
		41.104271, 33.123978, 27.303774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182522, 32.338032, 27.683020>,  <40.623520, 32.615944, 27.275843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182522, 32.338032, 27.683020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190655, 32.737431, 27.703409>,  <41.195534, 32.977070, 27.715643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190655, 32.737431, 27.703409>,  <41.182522, 32.338032, 27.683020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190655, 32.737431, 27.703409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143935, -0.053375, 0.988147,
		0.989378, -0.012754, -0.144803,
		0.020331, 0.998493, 0.050973,
		41.196754, 33.036980, 27.718700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687328, 32.417732, 28.054314>,  <41.182522, 32.338032, 27.683020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687328, 32.417732, 28.054314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.498489, 32.768970, 28.085480>,  <41.385185, 32.979713, 28.104179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.498489, 32.768970, 28.085480>,  <41.687328, 32.417732, 28.054314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498489, 32.768970, 28.085480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267763, 0.058626, 0.961700,
		0.839897, 0.474879, -0.262799,
		-0.472098, 0.878096, 0.077916,
		41.356861, 33.032398, 28.108854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045654, 32.664349, 28.551636>,  <41.687328, 32.417732, 28.054314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045654, 32.664349, 28.551636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714802, 32.889133, 28.548723>,  <41.516289, 33.024006, 28.546976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714802, 32.889133, 28.548723>,  <42.045654, 32.664349, 28.551636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714802, 32.889133, 28.548723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111526, 0.176821, 0.977904,
		0.550833, 0.808042, -0.208927,
		-0.827131, 0.561962, -0.007281,
		41.466663, 33.057724, 28.546539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152382, 33.304153, 28.968094>,  <42.045654, 32.664349, 28.551636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152382, 33.304153, 28.968094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.755127, 33.259861, 28.953020>,  <41.516773, 33.233284, 28.943975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.755127, 33.259861, 28.953020>,  <42.152382, 33.304153, 28.968094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755127, 33.259861, 28.953020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041392, 0.031375, 0.998650,
		-0.109403, 0.993355, -0.035743,
		-0.993135, -0.110735, -0.037684,
		41.457188, 33.226639, 28.941715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909290, 33.706467, 29.422148>,  <42.152382, 33.304153, 28.968094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909290, 33.706467, 29.422148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.584621, 33.475281, 29.388351>,  <41.389820, 33.336567, 29.368074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.584621, 33.475281, 29.388351>,  <41.909290, 33.706467, 29.422148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584621, 33.475281, 29.388351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229235, 0.182148, 0.956176,
		-0.537250, 0.795471, -0.280336,
		-0.811674, -0.577968, -0.084491,
		41.341118, 33.301891, 29.363005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374851, 34.065582, 29.712740>,  <41.909290, 33.706467, 29.422148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374851, 34.065582, 29.712740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256275, 33.683586, 29.717009>,  <41.185131, 33.454388, 29.719570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256275, 33.683586, 29.717009>,  <41.374851, 34.065582, 29.712740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256275, 33.683586, 29.717009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143776, 0.055671, 0.988043,
		-0.944168, 0.291359, -0.153808,
		-0.296438, -0.954992, 0.010672,
		41.167343, 33.397087, 29.720211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911572, 34.086952, 30.223700>,  <41.374851, 34.065582, 29.712740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911572, 34.086952, 30.223700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944744, 33.689156, 30.198032>,  <40.964649, 33.450478, 30.182632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944744, 33.689156, 30.198032>,  <40.911572, 34.086952, 30.223700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944744, 33.689156, 30.198032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330837, -0.088214, 0.939556,
		-0.940036, -0.056693, -0.336329,
		0.082935, -0.994487, -0.064169,
		40.969624, 33.390808, 30.178782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216602, 33.838150, 30.446562>,  <40.911572, 34.086952, 30.223700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216602, 33.838150, 30.446562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487988, 33.548264, 30.494699>,  <40.650818, 33.374332, 30.523582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487988, 33.548264, 30.494699>,  <40.216602, 33.838150, 30.446562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487988, 33.548264, 30.494699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367365, -0.192831, 0.909868,
		-0.636186, -0.661520, -0.397063,
		0.678462, -0.724712, 0.120342,
		40.691525, 33.330849, 30.530802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865410, 33.235268, 30.594107>,  <40.216602, 33.838150, 30.446562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865410, 33.235268, 30.594107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.228020, 33.192291, 30.757402>,  <40.445587, 33.166504, 30.855381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.228020, 33.192291, 30.757402>,  <39.865410, 33.235268, 30.594107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228020, 33.192291, 30.757402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420991, -0.158707, 0.893073,
		-0.031159, -0.981463, -0.189103,
		0.906529, -0.107438, 0.408242,
		40.499977, 33.160061, 30.879875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903683, 32.564350, 31.040142>,  <39.865410, 33.235268, 30.594107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903683, 32.564350, 31.040142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.185005, 32.818657, 31.167364>,  <40.353798, 32.971241, 31.243698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.185005, 32.818657, 31.167364>,  <39.903683, 32.564350, 31.040142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185005, 32.818657, 31.167364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260230, -0.186105, 0.947441,
		0.661548, -0.749106, 0.034559,
		0.703303, 0.635771, 0.318057,
		40.395996, 33.009388, 31.262781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278069, 32.147358, 31.506697>,  <39.903683, 32.564350, 31.040142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278069, 32.147358, 31.506697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330833, 32.537315, 31.578453>,  <40.362492, 32.771290, 31.621508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.330833, 32.537315, 31.578453>,  <40.278069, 32.147358, 31.506697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330833, 32.537315, 31.578453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328818, -0.127691, 0.935721,
		0.935136, -0.182419, 0.303718,
		0.131911, 0.974894, 0.179391,
		40.370407, 32.829784, 31.632271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543007, 32.152584, 32.053638>,  <40.278069, 32.147358, 31.506697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543007, 32.152584, 32.053638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400703, 32.526409, 32.055466>,  <40.315323, 32.750706, 32.056561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400703, 32.526409, 32.055466>,  <40.543007, 32.152584, 32.053638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400703, 32.526409, 32.055466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402962, -0.157799, 0.901510,
		0.843242, 0.318879, 0.432734,
		-0.355758, 0.934567, 0.004567,
		40.293976, 32.806778, 32.056835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585720, 32.235764, 32.663868>,  <40.543007, 32.152584, 32.053638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585720, 32.235764, 32.663868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.390106, 32.577297, 32.592518>,  <40.272736, 32.782215, 32.549709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.390106, 32.577297, 32.592518>,  <40.585720, 32.235764, 32.663868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390106, 32.577297, 32.592518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424453, -0.054293, 0.903821,
		0.762025, 0.517712, 0.388963,
		-0.489037, 0.853831, -0.178372,
		40.243397, 32.833447, 32.539005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.825329, 36.994755, 28.209644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.498318, 37.140205, 28.031012>,  <42.302113, 37.227474, 27.923832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.498318, 37.140205, 28.031012>,  <42.825329, 36.994755, 28.209644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498318, 37.140205, 28.031012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438007, -0.110874, -0.892108,
		-0.373906, -0.924924, -0.068627,
		-0.817523, 0.363624, -0.446580,
		42.253059, 37.249290, 27.897038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815525, 36.651993, 27.562428>,  <42.825329, 36.994755, 28.209644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815525, 36.651993, 27.562428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.531883, 36.926884, 27.499319>,  <42.361698, 37.091816, 27.461454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.531883, 36.926884, 27.499319>,  <42.815525, 36.651993, 27.562428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531883, 36.926884, 27.499319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158037, -0.063161, -0.985411,
		-0.687165, -0.723693, -0.063820,
		-0.709105, 0.687226, -0.157772,
		42.319153, 37.133053, 27.451988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387642, 36.430107, 26.960159>,  <42.815525, 36.651993, 27.562428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387642, 36.430107, 26.960159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345684, 36.827141, 26.984732>,  <42.320511, 37.065361, 26.999475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.345684, 36.827141, 26.984732>,  <42.387642, 36.430107, 26.960159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345684, 36.827141, 26.984732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061135, 0.068091, -0.995804,
		-0.992602, -0.100700, -0.067824,
		-0.104895, 0.992584, 0.061431,
		42.314217, 37.124916, 27.003160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843811, 36.531826, 26.566715>,  <42.387642, 36.430107, 26.960159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843811, 36.531826, 26.566715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062363, 36.862839, 26.618347>,  <42.193493, 37.061447, 26.649326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062363, 36.862839, 26.618347>,  <41.843811, 36.531826, 26.566715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062363, 36.862839, 26.618347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191423, 0.026652, -0.981146,
		-0.815368, 0.560789, -0.143846,
		0.546382, 0.827530, 0.129079,
		42.226276, 37.111099, 26.657070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692104, 36.982552, 26.050814>,  <41.843811, 36.531826, 26.566715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692104, 36.982552, 26.050814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044575, 37.134689, 26.163141>,  <42.256058, 37.225971, 26.230537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044575, 37.134689, 26.163141>,  <41.692104, 36.982552, 26.050814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044575, 37.134689, 26.163141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255310, 0.117103, -0.959742,
		-0.397919, 0.917401, 0.006083,
		0.881180, 0.380346, 0.280818,
		42.308929, 37.248795, 26.247387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828049, 37.622051, 25.582623>,  <41.692104, 36.982552, 26.050814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828049, 37.622051, 25.582623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181545, 37.508686, 25.731577>,  <42.393642, 37.440666, 25.820950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.181545, 37.508686, 25.731577>,  <41.828049, 37.622051, 25.582623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181545, 37.508686, 25.731577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406980, 0.072670, -0.910542,
		0.231000, 0.956240, 0.179567,
		0.883745, -0.283416, 0.372384,
		42.446671, 37.423660, 25.843292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337208, 38.190617, 25.384027>,  <41.828049, 37.622051, 25.582623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337208, 38.190617, 25.384027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535629, 37.855770, 25.476255>,  <42.654682, 37.654861, 25.531591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.535629, 37.855770, 25.476255>,  <42.337208, 38.190617, 25.384027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535629, 37.855770, 25.476255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405232, -0.011653, -0.914140,
		0.767930, 0.546898, 0.333447,
		0.496055, -0.837118, 0.230570,
		42.684444, 37.604633, 25.545425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013363, 38.327847, 25.193029>,  <42.337208, 38.190617, 25.384027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013363, 38.327847, 25.193029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.966255, 37.931404, 25.217833>,  <42.937992, 37.693539, 25.232714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.966255, 37.931404, 25.217833>,  <43.013363, 38.327847, 25.193029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966255, 37.931404, 25.217833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410053, -0.105402, -0.905951,
		0.904426, -0.081265, 0.418818,
		-0.117767, -0.991104, 0.062006,
		42.930923, 37.634071, 25.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673111, 38.158649, 24.923510>,  <43.013363, 38.327847, 25.193029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673111, 38.158649, 24.923510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.459976, 37.821175, 24.897371>,  <43.332096, 37.618690, 24.881687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.459976, 37.821175, 24.897371>,  <43.673111, 38.158649, 24.923510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459976, 37.821175, 24.897371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292241, -0.110996, -0.949881,
		0.794151, -0.525233, 0.305704,
		-0.532840, -0.843688, -0.065347,
		43.300125, 37.568069, 24.877768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077343, 37.711216, 24.356243>,  <43.673111, 38.158649, 24.923510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077343, 37.711216, 24.356243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747082, 37.489475, 24.398195>,  <43.548927, 37.356430, 24.423367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.747082, 37.489475, 24.398195>,  <44.077343, 37.711216, 24.356243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.747082, 37.489475, 24.398195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045566, -0.119772, -0.991755,
		0.562342, -0.823620, 0.073630,
		-0.825648, -0.554350, 0.104882,
		43.499386, 37.323170, 24.429659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196918, 37.048359, 24.140385>,  <44.077343, 37.711216, 24.356243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196918, 37.048359, 24.140385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812744, 37.138382, 24.074757>,  <43.582241, 37.192398, 24.035379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.812744, 37.138382, 24.074757>,  <44.196918, 37.048359, 24.140385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812744, 37.138382, 24.074757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109848, -0.235240, -0.965710,
		-0.255944, -0.945520, 0.201208,
		-0.960430, 0.225066, -0.164071,
		43.524616, 37.205902, 24.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050488, 36.633259, 23.547421>,  <44.196918, 37.048359, 24.140385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050488, 36.633259, 23.547421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726528, 36.867790, 23.554211>,  <43.532154, 37.008507, 23.558285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.726528, 36.867790, 23.554211>,  <44.050488, 36.633259, 23.547421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726528, 36.867790, 23.554211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045085, -0.033369, -0.998426,
		-0.584836, -0.809388, 0.053460,
		-0.809898, 0.586325, 0.016976,
		43.483559, 37.043686, 23.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299721, 36.320454, 23.308418>,  <44.050488, 36.633259, 23.547421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299721, 36.320454, 23.308418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356815, 36.712872, 23.255999>,  <43.391071, 36.948322, 23.224546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.356815, 36.712872, 23.255999>,  <43.299721, 36.320454, 23.308418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356815, 36.712872, 23.255999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201363, -0.100851, -0.974311,
		-0.969061, 0.165455, 0.183152,
		0.142734, 0.981047, -0.131048,
		43.399635, 37.007187, 23.216684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292870, 36.176208, 22.528696>,  <43.299721, 36.320454, 23.308418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292870, 36.176208, 22.528696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.390690, 36.526501, 22.695208>,  <43.449383, 36.736675, 22.795115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.390690, 36.526501, 22.695208>,  <43.292870, 36.176208, 22.528696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390690, 36.526501, 22.695208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144251, 0.391678, -0.908724,
		-0.958847, 0.282274, -0.030542,
		0.244546, 0.875733, 0.416278,
		43.464054, 36.789223, 22.820091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111069, 35.417812, 22.431545>,  <43.292870, 36.176208, 22.528696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111069, 35.417812, 22.431545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225117, 35.035007, 22.410213>,  <43.293545, 34.805325, 22.397415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225117, 35.035007, 22.410213>,  <43.111069, 35.417812, 22.431545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225117, 35.035007, 22.410213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297353, -0.141207, 0.944268,
		-0.911201, -0.253372, -0.324830,
		0.285119, -0.957007, -0.053328,
		43.310654, 34.747906, 22.394215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539352, 35.100082, 22.670135>,  <43.111069, 35.417812, 22.431545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539352, 35.100082, 22.670135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.827682, 34.825245, 22.706587>,  <43.000683, 34.660343, 22.728456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.827682, 34.825245, 22.706587>,  <42.539352, 35.100082, 22.670135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827682, 34.825245, 22.706587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497591, -0.421470, 0.758133,
		-0.482507, -0.591824, -0.645702,
		0.720825, -0.687100, 0.091124,
		43.043930, 34.619114, 22.733925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212574, 34.424191, 22.812984>,  <42.539352, 35.100082, 22.670135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212574, 34.424191, 22.812984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.592499, 34.403938, 22.936464>,  <42.820454, 34.391788, 23.010551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.592499, 34.403938, 22.936464>,  <42.212574, 34.424191, 22.812984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592499, 34.403938, 22.936464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306647, -0.345787, 0.886791,
		0.061847, -0.936946, -0.343957,
		0.949811, -0.050628, 0.308698,
		42.877441, 34.388748, 23.029074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355133, 33.726467, 22.975124>,  <42.212574, 34.424191, 22.812984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355133, 33.726467, 22.975124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608681, 33.946484, 23.192627>,  <42.760807, 34.078491, 23.323128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.608681, 33.946484, 23.192627>,  <42.355133, 33.726467, 22.975124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608681, 33.946484, 23.192627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154758, -0.598621, 0.785941,
		0.757802, -0.582332, -0.294323,
		0.633866, 0.550039, 0.543756,
		42.798840, 34.111496, 23.355753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455490, 33.306297, 23.525181>,  <42.355133, 33.726467, 22.975124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455490, 33.306297, 23.525181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621666, 33.645969, 23.655594>,  <42.721371, 33.849773, 23.733843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.621666, 33.645969, 23.655594>,  <42.455490, 33.306297, 23.525181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621666, 33.645969, 23.655594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010351, -0.353993, 0.935191,
		0.909560, -0.391894, -0.138274,
		0.415444, 0.849181, 0.326035,
		42.746300, 33.900723, 23.753405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830429, 33.126938, 24.113932>,  <42.455490, 33.306297, 23.525181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830429, 33.126938, 24.113932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.749943, 33.517319, 24.147486>,  <42.701653, 33.751545, 24.167618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.749943, 33.517319, 24.147486>,  <42.830429, 33.126938, 24.113932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749943, 33.517319, 24.147486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019504, -0.089612, 0.995786,
		0.979353, 0.198731, 0.037066,
		-0.201215, 0.975949, 0.083886,
		42.689579, 33.810104, 24.172651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126080, 33.272598, 24.735432>,  <42.830429, 33.126938, 24.113932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126080, 33.272598, 24.735432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867180, 33.566601, 24.654598>,  <42.711838, 33.743000, 24.606098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867180, 33.566601, 24.654598>,  <43.126080, 33.272598, 24.735432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867180, 33.566601, 24.654598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313985, -0.015495, 0.949301,
		0.694607, 0.677888, 0.240809,
		-0.647251, 0.735002, -0.202083,
		42.673004, 33.787102, 24.593973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204998, 33.702682, 25.265627>,  <43.126080, 33.272598, 24.735432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204998, 33.702682, 25.265627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845295, 33.777512, 25.107471>,  <42.629471, 33.822411, 25.012579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.845295, 33.777512, 25.107471>,  <43.204998, 33.702682, 25.265627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845295, 33.777512, 25.107471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419218, -0.110610, 0.901122,
		0.124844, 0.976098, 0.177893,
		-0.899261, 0.187076, -0.395389,
		42.575516, 33.833633, 24.988855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911293, 34.269802, 25.585402>,  <43.204998, 33.702682, 25.265627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911293, 34.269802, 25.585402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591797, 34.083466, 25.433084>,  <42.400097, 33.971664, 25.341694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591797, 34.083466, 25.433084>,  <42.911293, 34.269802, 25.585402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591797, 34.083466, 25.433084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406739, -0.048307, 0.912266,
		-0.443365, 0.883549, -0.150890,
		-0.798743, -0.465840, -0.380792,
		42.352173, 33.943714, 25.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198452, 34.494267, 26.033871>,  <42.911293, 34.269802, 25.585402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198452, 34.494267, 26.033871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.046379, 34.202595, 25.806273>,  <41.955135, 34.027592, 25.669714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.046379, 34.202595, 25.806273>,  <42.198452, 34.494267, 26.033871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046379, 34.202595, 25.806273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665832, -0.211226, 0.715578,
		-0.641972, 0.650906, -0.405208,
		-0.380183, -0.729182, -0.568995,
		41.932323, 33.983841, 25.635574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442657, 34.512554, 26.152948>,  <42.198452, 34.494267, 26.033871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442657, 34.512554, 26.152948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536877, 34.142391, 26.034201>,  <41.593407, 33.920292, 25.962952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.536877, 34.142391, 26.034201>,  <41.442657, 34.512554, 26.152948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536877, 34.142391, 26.034201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533595, -0.378448, 0.756342,
		-0.812277, -0.019744, -0.582937,
		0.235545, -0.925412, -0.296869,
		41.607540, 33.864769, 25.945139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865715, 34.253441, 26.285992>,  <41.442657, 34.512554, 26.152948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865715, 34.253441, 26.285992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106331, 33.936371, 26.246359>,  <41.250702, 33.746128, 26.222578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106331, 33.936371, 26.246359>,  <40.865715, 34.253441, 26.285992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106331, 33.936371, 26.246359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288785, -0.331427, 0.898198,
		-0.744816, -0.511690, -0.428279,
		0.601542, -0.792672, -0.099084,
		41.286793, 33.698570, 26.216635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416107, 33.756409, 26.558577>,  <40.865715, 34.253441, 26.285992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416107, 33.756409, 26.558577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792866, 33.622818, 26.572918>,  <41.018921, 33.542664, 26.581522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.792866, 33.622818, 26.572918>,  <40.416107, 33.756409, 26.558577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792866, 33.622818, 26.572918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126023, -0.252431, 0.959373,
		-0.311360, -0.908150, -0.279853,
		0.941899, -0.333978, 0.035851,
		41.075436, 33.522625, 26.583673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444477, 32.988571, 26.688023>,  <40.416107, 33.756409, 26.558577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444477, 32.988571, 26.688023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794025, 33.146210, 26.801891>,  <41.003754, 33.240795, 26.870213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.794025, 33.146210, 26.801891>,  <40.444477, 32.988571, 26.688023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794025, 33.146210, 26.801891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135847, -0.364278, 0.921329,
		0.466795, -0.843793, -0.264793,
		0.873869, 0.394101, 0.284670,
		41.056187, 33.264439, 26.887293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506084, 32.238903, 26.617401>,  <40.444477, 32.988571, 26.688023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506084, 32.238903, 26.617401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144852, 32.097279, 26.520170>,  <39.928112, 32.012306, 26.461832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.144852, 32.097279, 26.520170>,  <40.506084, 32.238903, 26.617401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144852, 32.097279, 26.520170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191523, 0.174575, -0.965838,
		0.384397, -0.918785, -0.089845,
		-0.903082, -0.354058, -0.243075,
		39.873928, 31.991062, 26.447248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640976, 31.885241, 25.956146>,  <40.506084, 32.238903, 26.617401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640976, 31.885241, 25.956146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.241631, 31.905052, 25.944670>,  <40.002026, 31.916939, 25.937784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.241631, 31.905052, 25.944670>,  <40.640976, 31.885241, 25.956146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241631, 31.905052, 25.944670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029517, 0.015984, -0.999436,
		-0.049043, -0.998645, -0.017419,
		-0.998360, 0.049529, -0.028693,
		39.942123, 31.919910, 25.936062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340061, 31.368078, 25.404659>,  <40.640976, 31.885241, 25.956146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340061, 31.368078, 25.404659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064438, 31.652834, 25.458939>,  <39.899063, 31.823687, 25.491507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.064438, 31.652834, 25.458939>,  <40.340061, 31.368078, 25.404659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064438, 31.652834, 25.458939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101832, 0.090279, -0.990697,
		-0.717516, -0.696466, 0.010286,
		-0.689058, 0.711888, 0.135700,
		39.857719, 31.866400, 25.499649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888954, 31.151999, 24.995277>,  <40.340061, 31.368078, 25.404659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888954, 31.151999, 24.995277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814697, 31.542637, 25.038713>,  <39.770142, 31.777020, 25.064775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.814697, 31.542637, 25.038713>,  <39.888954, 31.151999, 24.995277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814697, 31.542637, 25.038713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018697, 0.114001, -0.993305,
		-0.982439, -0.182373, -0.039423,
		-0.185646, 0.976598, 0.108590,
		39.759003, 31.835617, 25.071291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380157, 31.315075, 24.467232>,  <39.888954, 31.151999, 24.995277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380157, 31.315075, 24.467232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570160, 31.656961, 24.550970>,  <39.684162, 31.862093, 24.601213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.570160, 31.656961, 24.550970>,  <39.380157, 31.315075, 24.467232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570160, 31.656961, 24.550970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214514, 0.118254, -0.969536,
		-0.853436, 0.505443, -0.127178,
		0.475006, 0.854719, 0.209346,
		39.712662, 31.913378, 24.613773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346291, 31.676060, 23.933569>,  <39.380157, 31.315075, 24.467232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346291, 31.676060, 23.933569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.643116, 31.896090, 24.086805>,  <39.821213, 32.028107, 24.178747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.643116, 31.896090, 24.086805>,  <39.346291, 31.676060, 23.933569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643116, 31.896090, 24.086805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292358, 0.248693, -0.923406,
		-0.603213, 0.797227, 0.023728,
		0.742065, 0.550073, 0.383090,
		39.865734, 32.061111, 24.201733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278980, 32.379993, 23.605957>,  <39.346291, 31.676060, 23.933569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278980, 32.379993, 23.605957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655968, 32.345860, 23.735241>,  <39.882160, 32.325378, 23.812811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655968, 32.345860, 23.735241>,  <39.278980, 32.379993, 23.605957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655968, 32.345860, 23.735241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334268, 0.230991, -0.913733,
		0.003311, 0.969207, 0.246227,
		0.942472, -0.085332, 0.323210,
		39.938709, 32.320259, 23.832205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135033, 33.113327, 23.826162>,  <39.278980, 32.379993, 23.605957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135033, 33.113327, 23.826162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846077, 33.384590, 23.772110>,  <38.672703, 33.547348, 23.739679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846077, 33.384590, 23.772110>,  <39.135033, 33.113327, 23.826162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846077, 33.384590, 23.772110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507794, -0.387616, 0.769349,
		0.469358, 0.624389, 0.624373,
		-0.722390, 0.678153, -0.135131,
		38.629360, 33.588036, 23.731571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052166, 33.399540, 24.439770>,  <39.135033, 33.113327, 23.826162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052166, 33.399540, 24.439770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710087, 33.489338, 24.252907>,  <38.504841, 33.543217, 24.140789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710087, 33.489338, 24.252907>,  <39.052166, 33.399540, 24.439770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710087, 33.489338, 24.252907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512730, -0.234634, 0.825866,
		0.075794, 0.945805, 0.315766,
		-0.855198, 0.224499, -0.467159,
		38.453529, 33.556686, 24.112759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699535, 33.801544, 24.918701>,  <39.052166, 33.399540, 24.439770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699535, 33.801544, 24.918701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.435596, 33.665215, 24.650837>,  <38.277233, 33.583416, 24.490118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.435596, 33.665215, 24.650837>,  <38.699535, 33.801544, 24.918701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435596, 33.665215, 24.650837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721886, 0.040198, 0.690844,
		-0.208536, 0.939268, -0.272559,
		-0.659844, -0.340822, -0.669661,
		38.237644, 33.562969, 24.449938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108376, 34.272659, 24.979065>,  <38.699535, 33.801544, 24.918701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108376, 34.272659, 24.979065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997658, 33.931751, 24.801514>,  <37.931229, 33.727207, 24.694983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.997658, 33.931751, 24.801514>,  <38.108376, 34.272659, 24.979065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997658, 33.931751, 24.801514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723750, -0.118966, 0.679730,
		-0.632118, 0.509399, -0.583899,
		-0.276790, -0.852267, -0.443879,
		37.914619, 33.676071, 24.668350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377934, 34.265984, 24.937466>,  <38.108376, 34.272659, 24.979065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377934, 34.265984, 24.937466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468491, 33.877495, 24.907883>,  <37.522823, 33.644402, 24.890133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.468491, 33.877495, 24.907883>,  <37.377934, 34.265984, 24.937466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468491, 33.877495, 24.907883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773644, -0.225429, 0.592162,
		-0.591795, -0.076841, -0.802418,
		0.226391, -0.971224, -0.073960,
		37.536407, 33.586128, 24.885695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786179, 33.942802, 24.768217>,  <37.377934, 34.265984, 24.937466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786179, 33.942802, 24.768217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.026291, 33.656204, 24.910378>,  <37.170357, 33.484245, 24.995674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.026291, 33.656204, 24.910378>,  <36.786179, 33.942802, 24.768217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026291, 33.656204, 24.910378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717641, -0.286351, 0.634819,
		-0.353072, -0.636117, -0.686072,
		0.600276, -0.716490, 0.355401,
		37.206375, 33.441257, 25.016998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351757, 33.406487, 24.969858>,  <36.786179, 33.942802, 24.768217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351757, 33.406487, 24.969858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.675461, 33.296150, 25.177326>,  <36.869682, 33.229950, 25.301807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.675461, 33.296150, 25.177326>,  <36.351757, 33.406487, 24.969858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675461, 33.296150, 25.177326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586883, -0.340621, 0.734538,
		-0.025944, -0.898827, -0.437534,
		0.809256, -0.275838, 0.518669,
		36.918236, 33.213398, 25.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.406502, 39.095173, 22.595411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715824, 38.885040, 22.737408>,  <41.901417, 38.758961, 22.822605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.715824, 38.885040, 22.737408>,  <41.406502, 39.095173, 22.595411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715824, 38.885040, 22.737408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524609, -0.215725, 0.823558,
		-0.356060, -0.823097, -0.442416,
		0.773309, -0.525332, 0.354993,
		41.947815, 38.727440, 22.843906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226345, 38.428562, 22.816769>,  <41.406502, 39.095173, 22.595411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226345, 38.428562, 22.816769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561275, 38.511654, 23.019051>,  <41.762234, 38.561508, 23.140421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561275, 38.511654, 23.019051>,  <41.226345, 38.428562, 22.816769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561275, 38.511654, 23.019051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469578, -0.200439, 0.859838,
		0.279981, -0.957429, -0.070285,
		0.837321, 0.207734, 0.505707,
		41.812473, 38.573975, 23.170763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530365, 37.774525, 23.305822>,  <41.226345, 38.428562, 22.816769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530365, 37.774525, 23.305822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656582, 38.120464, 23.462009>,  <41.732311, 38.328030, 23.555721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.656582, 38.120464, 23.462009>,  <41.530365, 37.774525, 23.305822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656582, 38.120464, 23.462009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490746, -0.203455, 0.847215,
		0.812157, -0.458956, 0.360223,
		0.315546, 0.864850, 0.390468,
		41.751247, 38.379921, 23.579149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505909, 37.714088, 24.031645>,  <41.530365, 37.774525, 23.305822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505909, 37.714088, 24.031645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531574, 38.112225, 24.002848>,  <41.546974, 38.351105, 23.985569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.531574, 38.112225, 24.002848>,  <41.505909, 37.714088, 24.031645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531574, 38.112225, 24.002848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523865, 0.094997, 0.846488,
		0.849381, -0.016600, 0.527518,
		0.064165, 0.995339, -0.071993,
		41.550823, 38.410828, 23.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533833, 37.949280, 24.739752>,  <41.505909, 37.714088, 24.031645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533833, 37.949280, 24.739752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.429413, 38.294205, 24.566193>,  <41.366760, 38.501160, 24.462057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.429413, 38.294205, 24.566193>,  <41.533833, 37.949280, 24.739752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429413, 38.294205, 24.566193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511112, 0.257839, 0.819929,
		0.818911, 0.435815, 0.373429,
		-0.261052, 0.862313, -0.433898,
		41.351097, 38.552898, 24.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629826, 38.487816, 25.238611>,  <41.533833, 37.949280, 24.739752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629826, 38.487816, 25.238611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392307, 38.656837, 24.964718>,  <41.249798, 38.758251, 24.800383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392307, 38.656837, 24.964718>,  <41.629826, 38.487816, 25.238611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392307, 38.656837, 24.964718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592423, 0.346258, 0.727420,
		0.544467, 0.837589, 0.044723,
		-0.593793, 0.422551, -0.684733,
		41.214169, 38.783604, 24.759298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581436, 39.138264, 25.436962>,  <41.629826, 38.487816, 25.238611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581436, 39.138264, 25.436962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.252602, 39.039604, 25.231695>,  <41.055302, 38.980408, 25.108536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.252602, 39.039604, 25.231695>,  <41.581436, 39.138264, 25.436962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252602, 39.039604, 25.231695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568058, 0.294358, 0.768546,
		-0.038505, 0.923319, -0.382097,
		-0.822087, -0.246646, -0.513165,
		41.005974, 38.965611, 25.077745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031269, 39.609852, 25.615591>,  <41.581436, 39.138264, 25.436962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031269, 39.609852, 25.615591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.797768, 39.333900, 25.444340>,  <40.657665, 39.168327, 25.341589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.797768, 39.333900, 25.444340>,  <41.031269, 39.609852, 25.615591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797768, 39.333900, 25.444340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669691, 0.110978, 0.734301,
		-0.459067, 0.715366, -0.526791,
		-0.583756, -0.689880, -0.428128,
		40.622643, 39.126938, 25.315901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289986, 39.785946, 25.806467>,  <41.031269, 39.609852, 25.615591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289986, 39.785946, 25.806467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269573, 39.411472, 25.667355>,  <40.257328, 39.186787, 25.583887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269573, 39.411472, 25.667355>,  <40.289986, 39.785946, 25.806467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269573, 39.411472, 25.667355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711564, -0.210268, 0.670421,
		-0.700766, 0.281680, -0.655426,
		-0.051029, -0.936186, -0.347782,
		40.254265, 39.130615, 25.563021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637650, 39.655411, 25.864439>,  <40.289986, 39.785946, 25.806467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637650, 39.655411, 25.864439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788811, 39.288227, 25.816217>,  <39.879509, 39.067917, 25.787285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.788811, 39.288227, 25.816217>,  <39.637650, 39.655411, 25.864439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788811, 39.288227, 25.816217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563335, -0.331315, 0.756891,
		-0.734739, -0.218120, -0.642326,
		0.377906, -0.917962, -0.120555,
		39.902184, 39.012840, 25.780050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042923, 39.214725, 25.854973>,  <39.637650, 39.655411, 25.864439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042923, 39.214725, 25.854973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365498, 39.008183, 25.970240>,  <39.559040, 38.884258, 26.039400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.365498, 39.008183, 25.970240>,  <39.042923, 39.214725, 25.854973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365498, 39.008183, 25.970240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489457, -0.309435, 0.815280,
		-0.331812, -0.798512, -0.502275,
		0.806432, -0.516362, 0.288163,
		39.607430, 38.853275, 26.056690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764351, 38.597343, 26.231384>,  <39.042923, 39.214725, 25.854973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764351, 38.597343, 26.231384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139862, 38.652225, 26.357796>,  <39.365170, 38.685154, 26.433641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.139862, 38.652225, 26.357796>,  <38.764351, 38.597343, 26.231384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139862, 38.652225, 26.357796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275825, -0.250336, 0.928037,
		0.206442, -0.958388, -0.197165,
		0.938777, 0.137203, 0.316028,
		39.421494, 38.693386, 26.452604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370541, 37.977058, 26.155085>,  <38.764351, 38.597343, 26.231384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370541, 37.977058, 26.155085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032261, 38.061390, 25.958984>,  <37.829292, 38.111988, 25.841324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032261, 38.061390, 25.958984>,  <38.370541, 37.977058, 26.155085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032261, 38.061390, 25.958984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479933, -0.101247, -0.871444,
		-0.233362, -0.972266, -0.015560,
		-0.845699, 0.210829, -0.490249,
		37.778553, 38.124638, 25.811909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277836, 37.487980, 25.673025>,  <38.370541, 37.977058, 26.155085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277836, 37.487980, 25.673025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041759, 37.781780, 25.539047>,  <37.900112, 37.958061, 25.458660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041759, 37.781780, 25.539047>,  <38.277836, 37.487980, 25.673025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041759, 37.781780, 25.539047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436343, -0.058823, -0.897855,
		-0.679176, -0.676056, -0.285777,
		-0.590190, 0.734498, -0.334943,
		37.864704, 38.002129, 25.438564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921642, 37.262844, 25.116158>,  <38.277836, 37.487980, 25.673025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921642, 37.262844, 25.116158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893700, 37.655602, 25.045721>,  <37.876934, 37.891254, 25.003460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.893700, 37.655602, 25.045721>,  <37.921642, 37.262844, 25.116158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893700, 37.655602, 25.045721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340690, -0.142424, -0.929326,
		-0.937577, -0.124910, -0.324571,
		-0.069855, 0.981893, -0.176089,
		37.872742, 37.950169, 24.992895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584122, 37.339794, 24.449333>,  <37.921642, 37.262844, 25.116158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584122, 37.339794, 24.449333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765778, 37.692432, 24.500782>,  <37.874771, 37.904015, 24.531651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765778, 37.692432, 24.500782>,  <37.584122, 37.339794, 24.449333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765778, 37.692432, 24.500782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280443, -0.004425, -0.959860,
		-0.845641, 0.471982, -0.249248,
		0.454139, 0.881597, 0.128622,
		37.902020, 37.956913, 24.539370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367340, 37.652843, 23.875769>,  <37.584122, 37.339794, 24.449333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367340, 37.652843, 23.875769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 37.844646, 23.991974>,  <37.897297, 37.959728, 24.061697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 37.844646, 23.991974>,  <37.367340, 37.652843, 23.875769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698563, 37.844646, 23.991974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320132, 0.020997, -0.947140,
		-0.460259, 0.877288, -0.136118,
		0.828056, 0.479505, 0.290512,
		37.946980, 37.988499, 24.079128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435135, 38.235008, 23.403967>,  <37.367340, 37.652843, 23.875769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435135, 38.235008, 23.403967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789776, 38.151745, 23.569183>,  <38.002560, 38.101788, 23.668314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.789776, 38.151745, 23.569183>,  <37.435135, 38.235008, 23.403967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789776, 38.151745, 23.569183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439768, 0.102673, -0.892223,
		0.143318, 0.972691, 0.182573,
		0.886603, -0.208162, 0.413043,
		38.055756, 38.089298, 23.693096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872749, 38.668232, 23.104996>,  <37.435135, 38.235008, 23.403967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872749, 38.668232, 23.104996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140823, 38.433262, 23.286449>,  <38.301670, 38.292282, 23.395321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.140823, 38.433262, 23.286449>,  <37.872749, 38.668232, 23.104996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140823, 38.433262, 23.286449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612614, 0.092783, -0.784917,
		0.418989, 0.803944, 0.422046,
		0.670188, -0.587423, 0.453632,
		38.341881, 38.257034, 23.422539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551422, 38.962875, 22.948462>,  <37.872749, 38.668232, 23.104996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551422, 38.962875, 22.948462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.590603, 38.573387, 23.030710>,  <38.614113, 38.339695, 23.080059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.590603, 38.573387, 23.030710>,  <38.551422, 38.962875, 22.948462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590603, 38.573387, 23.030710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669484, -0.088401, -0.737548,
		0.736339, 0.209909, 0.643228,
		0.097956, -0.973716, 0.205624,
		38.619991, 38.281273, 23.092398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295307, 38.734261, 23.017580>,  <38.551422, 38.962875, 22.948462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295307, 38.734261, 23.017580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138546, 38.372543, 22.949850>,  <39.044491, 38.155514, 22.909212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.138546, 38.372543, 22.949850>,  <39.295307, 38.734261, 23.017580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138546, 38.372543, 22.949850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749101, -0.206802, -0.629350,
		0.534099, -0.373484, 0.758451,
		-0.391901, -0.904291, -0.169324,
		39.020977, 38.101257, 22.899054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806721, 38.244476, 23.044653>,  <39.295307, 38.734261, 23.017580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806721, 38.244476, 23.044653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530613, 38.054733, 22.826109>,  <39.364948, 37.940887, 22.694983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530613, 38.054733, 22.826109>,  <39.806721, 38.244476, 23.044653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530613, 38.054733, 22.826109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686202, -0.189717, -0.702235,
		0.229459, -0.859646, 0.456463,
		-0.690272, -0.474359, -0.546358,
		39.323532, 37.912426, 22.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099762, 37.744148, 22.602058>,  <39.806721, 38.244476, 23.044653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099762, 37.744148, 22.602058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764992, 37.740021, 22.383173>,  <39.564129, 37.737545, 22.251842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764992, 37.740021, 22.383173>,  <40.099762, 37.744148, 22.602058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764992, 37.740021, 22.383173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546940, -0.052548, -0.835521,
		-0.020135, -0.998565, 0.049621,
		-0.836930, -0.010316, -0.547214,
		39.513912, 37.736927, 22.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200405, 37.132439, 22.127914>,  <40.099762, 37.744148, 22.602058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200405, 37.132439, 22.127914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903534, 37.355701, 21.979517>,  <39.725410, 37.489658, 21.890478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.903534, 37.355701, 21.979517>,  <40.200405, 37.132439, 22.127914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903534, 37.355701, 21.979517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225862, -0.312870, -0.922550,
		-0.631003, -0.768486, 0.106137,
		-0.742174, 0.558160, -0.370994,
		39.680882, 37.523148, 21.868219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749828, 36.680584, 21.722397>,  <40.200405, 37.132439, 22.127914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749828, 36.680584, 21.722397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709213, 37.060356, 21.603550>,  <39.684845, 37.288219, 21.532242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.709213, 37.060356, 21.603550>,  <39.749828, 36.680584, 21.722397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709213, 37.060356, 21.603550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450385, -0.222429, -0.864684,
		-0.887042, -0.221615, -0.405023,
		-0.101538, 0.949427, -0.297116,
		39.678753, 37.345184, 21.514416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196457, 36.283100, 22.139645>,  <39.749828, 36.680584, 21.722397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196457, 36.283100, 22.139645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912964, 36.092861, 21.931221>,  <39.742867, 35.978718, 21.806166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.912964, 36.092861, 21.931221>,  <40.196457, 36.283100, 22.139645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912964, 36.092861, 21.931221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150183, -0.619951, 0.770134,
		-0.689306, 0.624074, 0.367952,
		-0.708733, -0.475598, -0.521061,
		39.700344, 35.950180, 21.774902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645329, 36.139236, 22.680067>,  <40.196457, 36.283100, 22.139645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645329, 36.139236, 22.680067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545311, 35.932076, 22.352835>,  <39.485302, 35.807777, 22.156494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.545311, 35.932076, 22.352835>,  <39.645329, 36.139236, 22.680067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545311, 35.932076, 22.352835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494305, -0.658238, 0.567790,
		-0.832552, 0.546352, -0.091416,
		-0.250040, -0.517902, -0.818082,
		39.470299, 35.776707, 22.107410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867046, 36.097668, 22.766039>,  <39.645329, 36.139236, 22.680067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867046, 36.097668, 22.766039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994514, 35.819889, 22.507988>,  <39.070995, 35.653221, 22.353157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994514, 35.819889, 22.507988>,  <38.867046, 36.097668, 22.766039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994514, 35.819889, 22.507988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439453, -0.711286, 0.548592,
		-0.839839, 0.108681, -0.531846,
		0.318673, -0.694450, -0.645126,
		39.090115, 35.611553, 22.314451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314152, 35.708210, 22.530643>,  <38.867046, 36.097668, 22.766039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314152, 35.708210, 22.530643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641712, 35.480190, 22.503981>,  <38.838249, 35.343380, 22.487984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.641712, 35.480190, 22.503981>,  <38.314152, 35.708210, 22.530643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641712, 35.480190, 22.503981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460067, -0.721428, 0.517571,
		-0.343128, -0.393174, -0.853040,
		0.818903, -0.570049, -0.066656,
		38.887383, 35.309177, 22.483984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106556, 34.972897, 22.404198>,  <38.314152, 35.708210, 22.530643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106556, 34.972897, 22.404198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481197, 34.939659, 22.540356>,  <38.705982, 34.919716, 22.622051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.481197, 34.939659, 22.540356>,  <38.106556, 34.972897, 22.404198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481197, 34.939659, 22.540356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275818, -0.773985, 0.569975,
		0.216098, -0.627728, -0.747836,
		0.936604, -0.083096, 0.340395,
		38.762180, 34.914730, 22.642475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194988, 34.259880, 22.290905>,  <38.106556, 34.972897, 22.404198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194988, 34.259880, 22.290905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.448238, 34.421333, 22.555098>,  <38.600189, 34.518208, 22.713614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.448238, 34.421333, 22.555098>,  <38.194988, 34.259880, 22.290905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448238, 34.421333, 22.555098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151148, -0.772382, 0.616911,
		0.759152, -0.490410, -0.428002,
		0.633121, 0.403638, 0.660480,
		38.638176, 34.542423, 22.753242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565742, 33.639160, 22.559767>,  <38.194988, 34.259880, 22.290905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565742, 33.639160, 22.559767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629158, 33.927765, 22.829369>,  <38.667210, 34.100929, 22.991129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629158, 33.927765, 22.829369>,  <38.565742, 33.639160, 22.559767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629158, 33.927765, 22.829369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171978, -0.652024, 0.738436,
		0.972259, -0.232987, 0.020712,
		0.158542, 0.721513, 0.674005,
		38.676720, 34.144218, 23.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079105, 33.310501, 22.924213>,  <38.565742, 33.639160, 22.559767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079105, 33.310501, 22.924213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869568, 33.596066, 23.110079>,  <38.743843, 33.767406, 23.221598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.869568, 33.596066, 23.110079>,  <39.079105, 33.310501, 22.924213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869568, 33.596066, 23.110079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228474, -0.643270, 0.730755,
		0.820600, 0.276640, 0.500086,
		-0.523846, 0.713914, 0.464663,
		38.712414, 33.810242, 23.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720455, 32.973465, 23.143827>,  <39.079105, 33.310501, 22.924213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720455, 32.973465, 23.143827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991451, 32.733280, 23.313744>,  <40.154049, 32.589169, 23.415693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991451, 32.733280, 23.313744>,  <39.720455, 32.973465, 23.143827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991451, 32.733280, 23.313744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575843, 0.073691, -0.814232,
		0.457616, 0.796247, 0.395700,
		0.677489, -0.600467, 0.424791,
		40.194698, 32.553139, 23.441181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328793, 33.389439, 22.973171>,  <39.720455, 32.973465, 23.143827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328793, 33.389439, 22.973171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467209, 33.028339, 23.075382>,  <40.550259, 32.811680, 23.136709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.467209, 33.028339, 23.075382>,  <40.328793, 33.389439, 22.973171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467209, 33.028339, 23.075382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689592, 0.060051, -0.721704,
		0.636175, 0.425948, 0.643311,
		0.346040, -0.902753, 0.255528,
		40.571022, 32.757515, 23.152040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968441, 33.380699, 23.340075>,  <40.328793, 33.389439, 22.973171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968441, 33.380699, 23.340075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954380, 33.019573, 23.168640>,  <40.945946, 32.802898, 23.065781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.954380, 33.019573, 23.168640>,  <40.968441, 33.380699, 23.340075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954380, 33.019573, 23.168640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600493, 0.323722, -0.731172,
		0.798857, -0.283064, 0.530757,
		-0.035151, -0.902817, -0.428585,
		40.943836, 32.748730, 23.040064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686699, 33.259003, 23.160089>,  <40.968441, 33.380699, 23.340075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686699, 33.259003, 23.160089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.498623, 33.007587, 22.912266>,  <41.385777, 32.856739, 22.763571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.498623, 33.007587, 22.912266>,  <41.686699, 33.259003, 23.160089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498623, 33.007587, 22.912266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572892, 0.316634, -0.756001,
		0.671351, -0.710408, 0.211206,
		-0.470194, -0.628540, -0.619560,
		41.357563, 32.819027, 22.726398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238281, 33.014015, 22.706247>,  <41.686699, 33.259003, 23.160089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238281, 33.014015, 22.706247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.882236, 32.933437, 22.542728>,  <41.668610, 32.885090, 22.444616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.882236, 32.933437, 22.542728>,  <42.238281, 33.014015, 22.706247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882236, 32.933437, 22.542728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358167, 0.245440, -0.900819,
		0.281802, -0.948250, -0.146318,
		-0.890115, -0.201446, -0.408798,
		41.615200, 32.873005, 22.420090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437820, 32.558567, 22.138744>,  <42.238281, 33.014015, 22.706247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437820, 32.558567, 22.138744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076855, 32.697826, 22.037199>,  <41.860275, 32.781380, 21.976273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.076855, 32.697826, 22.037199>,  <42.437820, 32.558567, 22.138744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076855, 32.697826, 22.037199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282160, 0.032208, -0.958827,
		-0.325635, -0.936887, -0.127298,
		-0.902412, 0.348146, -0.253864,
		41.806129, 32.802269, 21.961040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167507, 32.126259, 21.606249>,  <42.437820, 32.558567, 22.138744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167507, 32.126259, 21.606249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.982616, 32.478630, 21.565626>,  <41.871681, 32.690052, 21.541252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.982616, 32.478630, 21.565626>,  <42.167507, 32.126259, 21.606249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982616, 32.478630, 21.565626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303092, 0.049322, -0.951684,
		-0.833355, -0.470676, -0.289800,
		-0.462228, 0.880927, -0.101555,
		41.843948, 32.742908, 21.535160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999580, 32.143421, 20.954815>,  <42.167507, 32.126259, 21.606249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999580, 32.143421, 20.954815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979191, 32.533085, 21.042831>,  <41.966957, 32.766884, 21.095642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979191, 32.533085, 21.042831>,  <41.999580, 32.143421, 20.954815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979191, 32.533085, 21.042831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486765, 0.216619, -0.846248,
		-0.872045, 0.063975, -0.485227,
		-0.050971, 0.974158, 0.220042,
		41.963898, 32.825333, 21.108845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750843, 32.510853, 20.358267>,  <41.999580, 32.143421, 20.954815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750843, 32.510853, 20.358267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963871, 32.759548, 20.587980>,  <42.091690, 32.908768, 20.725809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963871, 32.759548, 20.587980>,  <41.750843, 32.510853, 20.358267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963871, 32.759548, 20.587980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743867, -0.020148, -0.668024,
		-0.403767, 0.782964, -0.473223,
		0.532573, 0.621741, 0.574286,
		42.123642, 32.946072, 20.760265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.825306, 30.668087, 35.324905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056843, 30.980261, 35.419449>,  <35.195766, 31.167564, 35.476173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056843, 30.980261, 35.419449>,  <34.825306, 30.668087, 35.324905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056843, 30.980261, 35.419449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180671, 0.159906, -0.970458,
		-0.795173, 0.604444, -0.048441,
		0.578841, 0.780434, 0.236359,
		35.230495, 31.214392, 35.490356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777580, 31.140202, 34.752129>,  <34.825306, 30.668087, 35.324905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777580, 31.140202, 34.752129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107964, 31.245092, 34.951744>,  <35.306194, 31.308027, 35.071514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107964, 31.245092, 34.951744>,  <34.777580, 31.140202, 34.752129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107964, 31.245092, 34.951744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385796, 0.382534, -0.839541,
		-0.411049, 0.885948, 0.214789,
		0.825954, 0.262228, 0.499035,
		35.355751, 31.323761, 35.101456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915928, 31.888805, 34.622231>,  <34.777580, 31.140202, 34.752129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915928, 31.888805, 34.622231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267967, 31.737909, 34.737549>,  <35.479191, 31.647371, 34.806740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.267967, 31.737909, 34.737549>,  <34.915928, 31.888805, 34.622231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267967, 31.737909, 34.737549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460174, 0.528271, -0.713562,
		0.116885, 0.760672, 0.638527,
		0.880101, -0.377238, 0.288294,
		35.531998, 31.624739, 34.824036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338829, 32.436340, 34.514862>,  <34.915928, 31.888805, 34.622231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338829, 32.436340, 34.514862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547039, 32.094803, 34.514114>,  <35.671967, 31.889881, 34.513668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547039, 32.094803, 34.514114>,  <35.338829, 32.436340, 34.514862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547039, 32.094803, 34.514114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554547, 0.339726, -0.759647,
		0.649253, 0.394382, 0.650333,
		0.520526, -0.853844, -0.001865,
		35.703197, 31.838650, 34.513554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005520, 32.526592, 34.418411>,  <35.338829, 32.436340, 34.514862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005520, 32.526592, 34.418411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003006, 32.143623, 34.302967>,  <36.001499, 31.913841, 34.233700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003006, 32.143623, 34.302967>,  <36.005520, 32.526592, 34.418411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003006, 32.143623, 34.302967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514440, 0.244398, -0.821962,
		0.857503, -0.153636, 0.491003,
		-0.006282, -0.957426, -0.288609,
		36.001122, 31.856396, 34.216385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704258, 32.473064, 34.206001>,  <36.005520, 32.526592, 34.418411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704258, 32.473064, 34.206001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479790, 32.172283, 34.067638>,  <36.345108, 31.991814, 33.984619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479790, 32.172283, 34.067638>,  <36.704258, 32.473064, 34.206001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479790, 32.172283, 34.067638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530743, -0.006219, -0.847510,
		0.635137, -0.659186, 0.402584,
		-0.561171, -0.751954, -0.345908,
		36.311440, 31.946697, 33.963867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115913, 32.061001, 33.819496>,  <36.704258, 32.473064, 34.206001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115913, 32.061001, 33.819496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768860, 31.924280, 33.675064>,  <36.560627, 31.842247, 33.588406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768860, 31.924280, 33.675064>,  <37.115913, 32.061001, 33.819496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768860, 31.924280, 33.675064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391775, -0.022834, -0.919778,
		0.306139, -0.939494, 0.153722,
		-0.867636, -0.341804, -0.361080,
		36.508568, 31.821739, 33.566742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304535, 31.472130, 33.395298>,  <37.115913, 32.061001, 33.819496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304535, 31.472130, 33.395298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950157, 31.614845, 33.276768>,  <36.737530, 31.700474, 33.205650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950157, 31.614845, 33.276768>,  <37.304535, 31.472130, 33.395298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950157, 31.614845, 33.276768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249273, -0.172479, -0.952950,
		-0.391110, -0.918125, 0.063869,
		-0.885943, 0.356787, -0.296322,
		36.684376, 31.721882, 33.187870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138577, 30.962486, 32.947571>,  <37.304535, 31.472130, 33.395298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138577, 30.962486, 32.947571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879322, 31.253252, 32.856789>,  <36.723770, 31.427711, 32.802319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879322, 31.253252, 32.856789>,  <37.138577, 30.962486, 32.947571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879322, 31.253252, 32.856789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051871, -0.255194, -0.965497,
		-0.759753, -0.637549, 0.127695,
		-0.648139, 0.726916, -0.226955,
		36.684879, 31.471327, 32.788704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635345, 30.712416, 32.521988>,  <37.138577, 30.962486, 32.947571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635345, 30.712416, 32.521988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666645, 31.104807, 32.450928>,  <36.685425, 31.340242, 32.408291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666645, 31.104807, 32.450928>,  <36.635345, 30.712416, 32.521988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666645, 31.104807, 32.450928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134050, -0.186930, -0.973184,
		-0.987880, 0.052337, -0.146127,
		0.078249, 0.980978, -0.177648,
		36.690121, 31.399101, 32.397633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239777, 30.717129, 31.959181>,  <36.635345, 30.712416, 32.521988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239777, 30.717129, 31.959181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426853, 31.070562, 31.949818>,  <36.539101, 31.282621, 31.944201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426853, 31.070562, 31.949818>,  <36.239777, 30.717129, 31.959181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426853, 31.070562, 31.949818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069302, -0.063057, -0.995601,
		-0.881171, 0.464011, -0.090725,
		0.467691, 0.883582, -0.023407,
		36.567162, 31.335636, 31.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015259, 31.022406, 31.451984>,  <36.239777, 30.717129, 31.959181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015259, 31.022406, 31.451984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359482, 31.223692, 31.483500>,  <36.566017, 31.344463, 31.502409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.359482, 31.223692, 31.483500>,  <36.015259, 31.022406, 31.451984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359482, 31.223692, 31.483500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097125, -0.010278, -0.995219,
		-0.500002, 0.864099, -0.057720,
		0.860561, 0.503217, 0.078786,
		36.617649, 31.374657, 31.507135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390751, 31.366163, 31.276369>,  <36.015259, 31.022406, 31.451984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390751, 31.366163, 31.276369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.091755, 31.583414, 31.123384>,  <34.912357, 31.713764, 31.031593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.091755, 31.583414, 31.123384>,  <35.390751, 31.366163, 31.276369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091755, 31.583414, 31.123384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403460, 0.086191, 0.910929,
		0.527715, 0.835215, 0.154703,
		-0.747488, 0.543127, -0.382460,
		34.867508, 31.746351, 31.008646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355675, 32.078373, 31.563604>,  <35.390751, 31.366163, 31.276369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355675, 32.078373, 31.563604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992035, 31.970453, 31.436642>,  <34.773849, 31.905701, 31.360464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992035, 31.970453, 31.436642>,  <35.355675, 32.078373, 31.563604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992035, 31.970453, 31.436642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309115, -0.073878, 0.948151,
		-0.279260, 0.960078, -0.016237,
		-0.909099, -0.269800, -0.317406,
		34.719307, 31.889513, 31.341419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957870, 32.515339, 32.019279>,  <35.355675, 32.078373, 31.563604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957870, 32.515339, 32.019279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690296, 32.251427, 31.882332>,  <34.529751, 32.093079, 31.800163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690296, 32.251427, 31.882332>,  <34.957870, 32.515339, 32.019279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690296, 32.251427, 31.882332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426948, -0.035999, 0.903559,
		-0.608477, 0.750594, -0.257612,
		-0.668932, -0.659782, -0.342370,
		34.489616, 32.053493, 31.779621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293884, 32.813728, 32.180550>,  <34.957870, 32.515339, 32.019279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293884, 32.813728, 32.180550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237324, 32.423771, 32.111752>,  <34.203388, 32.189796, 32.070473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237324, 32.423771, 32.111752>,  <34.293884, 32.813728, 32.180550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237324, 32.423771, 32.111752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750505, -0.007729, 0.660819,
		-0.645559, 0.222525, -0.730572,
		-0.141402, -0.974896, -0.171995,
		34.194904, 32.131302, 32.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626659, 32.816750, 32.282650>,  <34.293884, 32.813728, 32.180550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626659, 32.816750, 32.282650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724636, 32.430649, 32.319077>,  <33.783421, 32.198990, 32.340935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724636, 32.430649, 32.319077>,  <33.626659, 32.816750, 32.282650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724636, 32.430649, 32.319077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689204, -0.107280, 0.716581,
		-0.681911, -0.238283, -0.691533,
		0.244937, -0.965252, 0.091071,
		33.798119, 32.141071, 32.346397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946522, 32.431385, 32.376057>,  <33.626659, 32.816750, 32.282650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946522, 32.431385, 32.376057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232235, 32.199165, 32.532394>,  <33.403664, 32.059834, 32.626198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.232235, 32.199165, 32.532394>,  <32.946522, 32.431385, 32.376057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232235, 32.199165, 32.532394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512029, -0.052787, 0.857345,
		-0.477103, -0.812509, -0.334964,
		0.714282, -0.580553, 0.390843,
		33.446522, 32.025002, 32.649647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602268, 31.916065, 32.753796>,  <32.946522, 32.431385, 32.376057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602268, 31.916065, 32.753796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982193, 31.881948, 32.874184>,  <33.210148, 31.861479, 32.946415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982193, 31.881948, 32.874184>,  <32.602268, 31.916065, 32.753796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982193, 31.881948, 32.874184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312593, -0.221948, 0.923593,
		-0.011975, -0.971321, -0.237470,
		0.949811, -0.085291, 0.300971,
		33.267136, 31.856361, 32.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538570, 31.431009, 33.358418>,  <32.602268, 31.916065, 32.753796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538570, 31.431009, 33.358418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895901, 31.606520, 33.397282>,  <33.110298, 31.711826, 33.420601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895901, 31.606520, 33.397282>,  <32.538570, 31.431009, 33.358418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895901, 31.606520, 33.397282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141098, 0.068587, 0.987617,
		0.426680, -0.895974, 0.123182,
		0.893328, 0.438777, 0.097156,
		33.163898, 31.738153, 33.426430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850445, 31.042112, 33.844994>,  <32.538570, 31.431009, 33.358418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850445, 31.042112, 33.844994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004105, 31.410398, 33.872448>,  <33.096302, 31.631371, 33.888920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004105, 31.410398, 33.872448>,  <32.850445, 31.042112, 33.844994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004105, 31.410398, 33.872448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413279, 0.105007, 0.904529,
		0.825608, -0.375840, 0.420851,
		0.384150, 0.920716, 0.068632,
		33.119350, 31.686613, 33.893036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141548, 31.154665, 34.510281>,  <32.850445, 31.042112, 33.844994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141548, 31.154665, 34.510281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045410, 31.516340, 34.369041>,  <32.987728, 31.733345, 34.284298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045410, 31.516340, 34.369041>,  <33.141548, 31.154665, 34.510281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045410, 31.516340, 34.369041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256821, 0.291562, 0.921431,
		0.936096, 0.312148, 0.162138,
		-0.240349, 0.904188, -0.353096,
		32.973305, 31.787596, 34.263111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382957, 31.610922, 35.004868>,  <33.141548, 31.154665, 34.510281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382957, 31.610922, 35.004868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126076, 31.823563, 34.783970>,  <32.971947, 31.951147, 34.651432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126076, 31.823563, 34.783970>,  <33.382957, 31.610922, 35.004868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126076, 31.823563, 34.783970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342155, 0.445894, 0.827109,
		0.685935, 0.720125, -0.104465,
		-0.642202, 0.531600, -0.552248,
		32.933414, 31.983042, 34.618294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434711, 32.277721, 35.205067>,  <33.382957, 31.610922, 35.004868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434711, 32.277721, 35.205067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061207, 32.262527, 35.062721>,  <32.837105, 32.253410, 34.977314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061207, 32.262527, 35.062721>,  <33.434711, 32.277721, 35.205067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061207, 32.262527, 35.062721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300685, 0.622532, 0.722525,
		0.194091, 0.781672, -0.592720,
		-0.933765, -0.037986, -0.355865,
		32.781078, 32.251133, 34.955963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166580, 33.003464, 35.255157>,  <33.434711, 32.277721, 35.205067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166580, 33.003464, 35.255157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837708, 32.784771, 35.191780>,  <32.640385, 32.653557, 35.153755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837708, 32.784771, 35.191780>,  <33.166580, 33.003464, 35.255157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837708, 32.784771, 35.191780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500247, 0.561180, 0.659417,
		-0.271611, 0.621418, -0.734892,
		-0.822180, -0.546732, -0.158440,
		32.591053, 32.620750, 35.144249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678173, 33.451553, 35.050575>,  <33.166580, 33.003464, 35.255157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678173, 33.451553, 35.050575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479340, 33.145123, 35.213566>,  <32.360039, 32.961262, 35.311359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479340, 33.145123, 35.213566>,  <32.678173, 33.451553, 35.050575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479340, 33.145123, 35.213566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535313, 0.640330, 0.550833,
		-0.682899, 0.055682, -0.728388,
		-0.497080, -0.766079, 0.407473,
		32.330215, 32.915298, 35.335808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962002, 33.562115, 34.953064>,  <32.678173, 33.451553, 35.050575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962002, 33.562115, 34.953064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026291, 33.387131, 35.306969>,  <32.064865, 33.282143, 35.519310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026291, 33.387131, 35.306969>,  <31.962002, 33.562115, 34.953064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026291, 33.387131, 35.306969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401666, 0.789838, 0.463488,
		-0.901572, -0.429871, -0.048766,
		0.160723, -0.437456, 0.884760,
		32.074509, 33.255894, 35.572395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174500, 34.255035, 35.054272>,  <31.962002, 33.562115, 34.953064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174500, 34.255035, 35.054272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331467, 34.003536, 34.785740>,  <32.425648, 33.852638, 34.624619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331467, 34.003536, 34.785740>,  <32.174500, 34.255035, 35.054272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331467, 34.003536, 34.785740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871997, 0.486516, 0.054067,
		0.292620, -0.606617, 0.739182,
		0.392422, -0.628743, -0.671332,
		32.449192, 33.814915, 34.584339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645714, 34.634315, 34.475353>,  <32.174500, 34.255035, 35.054272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645714, 34.634315, 34.475353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035919, 34.663532, 34.558342>,  <33.270042, 34.681065, 34.608135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035919, 34.663532, 34.558342>,  <32.645714, 34.634315, 34.475353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035919, 34.663532, 34.558342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167926, 0.361881, -0.916975,
		-0.142060, 0.929358, 0.340753,
		0.975510, 0.073044, 0.207473,
		33.328571, 34.685444, 34.620583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888176, 35.368519, 34.478313>,  <32.645714, 34.634315, 34.475353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888176, 35.368519, 34.478313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191982, 35.129482, 34.375534>,  <33.374268, 34.986061, 34.313866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191982, 35.129482, 34.375534>,  <32.888176, 35.368519, 34.478313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191982, 35.129482, 34.375534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134574, 0.530817, -0.836734,
		0.636414, 0.600935, 0.483584,
		0.759517, -0.597587, -0.256950,
		33.419838, 34.950207, 34.298450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381203, 35.875622, 34.242992>,  <32.888176, 35.368519, 34.478313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381203, 35.875622, 34.242992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480518, 35.518177, 34.093430>,  <33.540108, 35.303711, 34.003693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.480518, 35.518177, 34.093430>,  <33.381203, 35.875622, 34.242992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480518, 35.518177, 34.093430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418654, 0.447076, -0.790476,
		0.873546, 0.039723, 0.485117,
		0.248284, -0.893614, -0.373911,
		33.555004, 35.250092, 33.981255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045197, 36.011482, 33.840485>,  <33.381203, 35.875622, 34.242992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045197, 36.011482, 33.840485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906197, 35.649952, 33.740612>,  <33.822796, 35.433033, 33.680687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.906197, 35.649952, 33.740612>,  <34.045197, 36.011482, 33.840485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906197, 35.649952, 33.740612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500461, 0.046409, -0.864514,
		0.792959, -0.425373, 0.436203,
		-0.347497, -0.903827, -0.249684,
		33.801949, 35.378803, 33.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598457, 35.655441, 33.524776>,  <34.045197, 36.011482, 33.840485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598457, 35.655441, 33.524776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273277, 35.464375, 33.391541>,  <34.078171, 35.349735, 33.311600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273277, 35.464375, 33.391541>,  <34.598457, 35.655441, 33.524776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273277, 35.464375, 33.391541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404065, -0.050804, -0.913318,
		0.419336, -0.877073, 0.234308,
		-0.812951, -0.477663, -0.333090,
		34.029392, 35.321075, 33.291615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961433, 35.285950, 33.175655>,  <34.598457, 35.655441, 33.524776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961433, 35.285950, 33.175655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585445, 35.233063, 33.049812>,  <34.359852, 35.201332, 32.974304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585445, 35.233063, 33.049812>,  <34.961433, 35.285950, 33.175655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585445, 35.233063, 33.049812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305440, 0.085246, -0.948388,
		0.152214, -0.987548, -0.039744,
		-0.939967, -0.132218, -0.314612,
		34.303455, 35.193398, 32.955429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962204, 34.755791, 32.686970>,  <34.961433, 35.285950, 33.175655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962204, 34.755791, 32.686970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660667, 35.010147, 32.620804>,  <34.479744, 35.162762, 32.581104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.660667, 35.010147, 32.620804>,  <34.962204, 34.755791, 32.686970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660667, 35.010147, 32.620804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343434, 0.166705, -0.924263,
		-0.560154, -0.753561, -0.344055,
		-0.753844, 0.635890, -0.165418,
		34.434513, 35.200912, 32.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714535, 34.604252, 31.978937>,  <34.962204, 34.755791, 32.686970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714535, 34.604252, 31.978937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582642, 34.973732, 32.056957>,  <34.503506, 35.195419, 32.103771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.582642, 34.973732, 32.056957>,  <34.714535, 34.604252, 31.978937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582642, 34.973732, 32.056957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235705, 0.280610, -0.930431,
		-0.914176, -0.260821, -0.310248,
		-0.329735, 0.923704, 0.195050,
		34.483723, 35.250843, 32.115471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529297, 34.811172, 31.342587>,  <34.714535, 34.604252, 31.978937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529297, 34.811172, 31.342587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536240, 35.164696, 31.529596>,  <34.540405, 35.376812, 31.641802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536240, 35.164696, 31.529596>,  <34.529297, 34.811172, 31.342587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536240, 35.164696, 31.529596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314211, 0.439083, -0.841712,
		-0.949195, 0.161509, -0.270083,
		0.017355, 0.883811, 0.467523,
		34.541447, 35.429840, 31.669853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231949, 35.187134, 30.867352>,  <34.529297, 34.811172, 31.342587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231949, 35.187134, 30.867352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446255, 35.429688, 31.102383>,  <34.574841, 35.575218, 31.243402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446255, 35.429688, 31.102383>,  <34.231949, 35.187134, 30.867352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446255, 35.429688, 31.102383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372052, 0.455149, -0.808960,
		-0.757977, 0.652026, 0.018248,
		0.535768, 0.606384, 0.587580,
		34.606987, 35.611603, 31.278656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186195, 35.849724, 30.553665>,  <34.231949, 35.187134, 30.867352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186195, 35.849724, 30.553665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516384, 35.887901, 30.776190>,  <34.714497, 35.910809, 30.909704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516384, 35.887901, 30.776190>,  <34.186195, 35.849724, 30.553665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516384, 35.887901, 30.776190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492198, 0.360717, -0.792227,
		-0.276285, 0.927779, 0.250785,
		0.825474, 0.095444, 0.556312,
		34.764027, 35.916534, 30.943083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311218, 36.644691, 30.507687>,  <34.186195, 35.849724, 30.553665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311218, 36.644691, 30.507687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636692, 36.431217, 30.599857>,  <34.831978, 36.303131, 30.655159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636692, 36.431217, 30.599857>,  <34.311218, 36.644691, 30.507687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636692, 36.431217, 30.599857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519935, 0.490890, -0.699067,
		0.259969, 0.688626, 0.676912,
		0.813686, -0.533686, 0.230425,
		34.880798, 36.271111, 30.668985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942486, 37.163395, 30.728731>,  <34.311218, 36.644691, 30.507687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942486, 37.163395, 30.728731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083618, 36.805294, 30.619896>,  <35.168297, 36.590435, 30.554594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083618, 36.805294, 30.619896>,  <34.942486, 37.163395, 30.728731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083618, 36.805294, 30.619896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648488, 0.443590, -0.618621,
		0.674518, 0.041822, 0.737073,
		0.352830, -0.895254, -0.272088,
		35.189468, 36.536716, 30.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655338, 37.265297, 30.746267>,  <34.942486, 37.163395, 30.728731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655338, 37.265297, 30.746267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598293, 36.951149, 30.505316>,  <35.564068, 36.762661, 30.360744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598293, 36.951149, 30.505316>,  <35.655338, 37.265297, 30.746267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598293, 36.951149, 30.505316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737119, 0.321886, -0.594176,
		0.660544, -0.528759, 0.533006,
		-0.142609, -0.785368, -0.602378,
		35.555511, 36.715538, 30.324602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252888, 37.223225, 30.497196>,  <35.655338, 37.265297, 30.746267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252888, 37.223225, 30.497196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052094, 36.976311, 30.254883>,  <35.931618, 36.828163, 30.109495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.052094, 36.976311, 30.254883>,  <36.252888, 37.223225, 30.497196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052094, 36.976311, 30.254883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546553, 0.316427, -0.775341,
		0.670292, -0.720300, 0.178538,
		-0.501984, -0.617285, -0.605781,
		35.901497, 36.791126, 30.073149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736778, 36.918133, 30.085754>,  <36.252888, 37.223225, 30.497196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736778, 36.918133, 30.085754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414398, 36.857380, 29.856886>,  <36.220970, 36.820927, 29.719564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414398, 36.857380, 29.856886>,  <36.736778, 36.918133, 30.085754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414398, 36.857380, 29.856886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493572, 0.361253, -0.791127,
		0.326856, -0.920016, -0.216187,
		-0.805947, -0.151881, -0.572172,
		36.172615, 36.811813, 29.685234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940392, 36.541821, 29.483072>,  <36.736778, 36.918133, 30.085754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940392, 36.541821, 29.483072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605358, 36.729309, 29.370815>,  <36.404339, 36.841801, 29.303461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605358, 36.729309, 29.370815>,  <36.940392, 36.541821, 29.483072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605358, 36.729309, 29.370815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428375, 0.244678, -0.869844,
		-0.339045, -0.848785, -0.405725,
		-0.837582, 0.468718, -0.280641,
		36.354084, 36.869923, 29.286623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052422, 36.727383, 28.783800>,  <36.940392, 36.541821, 29.483072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052422, 36.727383, 28.783800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698750, 36.911572, 28.815262>,  <36.486546, 37.022083, 28.834139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698750, 36.911572, 28.815262>,  <37.052422, 36.727383, 28.783800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698750, 36.911572, 28.815262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111095, 0.370815, -0.922038,
		-0.453739, -0.806512, -0.379024,
		-0.884183, 0.460472, 0.078654,
		36.433495, 37.049713, 28.838858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649349, 36.571316, 28.125883>,  <37.052422, 36.727383, 28.783800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649349, 36.571316, 28.125883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507240, 36.902626, 28.299202>,  <36.421974, 37.101410, 28.403193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507240, 36.902626, 28.299202>,  <36.649349, 36.571316, 28.125883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507240, 36.902626, 28.299202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021118, 0.456306, -0.889572,
		-0.934524, -0.325191, -0.144622,
		-0.355273, 0.828273, 0.433296,
		36.400658, 37.151108, 28.429192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053356, 36.787266, 27.753145>,  <36.649349, 36.571316, 28.125883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053356, 36.787266, 27.753145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201538, 37.104343, 27.946804>,  <36.290447, 37.294590, 28.063000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201538, 37.104343, 27.946804>,  <36.053356, 36.787266, 27.753145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201538, 37.104343, 27.946804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038144, 0.507812, -0.860623,
		-0.928067, 0.337289, 0.157885,
		0.370454, 0.792694, 0.484149,
		36.312675, 37.342152, 28.092049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772125, 37.248989, 27.433489>,  <36.053356, 36.787266, 27.753145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772125, 37.248989, 27.433489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061268, 37.454540, 27.618275>,  <36.234753, 37.577869, 27.729147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061268, 37.454540, 27.618275>,  <35.772125, 37.248989, 27.433489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061268, 37.454540, 27.618275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196707, 0.487859, -0.850470,
		-0.662410, 0.705639, 0.251568,
		0.722855, 0.513875, 0.461967,
		36.278126, 37.608704, 27.756865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716904, 37.976448, 27.203737>,  <35.772125, 37.248989, 27.433489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716904, 37.976448, 27.203737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093117, 37.908371, 27.321331>,  <36.318844, 37.867523, 27.391888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.093117, 37.908371, 27.321331>,  <35.716904, 37.976448, 27.203737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093117, 37.908371, 27.321331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339203, 0.423953, -0.839765,
		0.018284, 0.889550, 0.456472,
		0.940535, -0.170191, 0.293986,
		36.375278, 37.857315, 27.409527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133633, 38.614494, 27.046602>,  <35.716904, 37.976448, 27.203737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133633, 38.614494, 27.046602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414047, 38.331348, 27.081167>,  <36.582298, 38.161461, 27.101906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414047, 38.331348, 27.081167>,  <36.133633, 38.614494, 27.046602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414047, 38.331348, 27.081167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441002, 0.335110, -0.832597,
		0.560411, 0.621792, 0.547097,
		0.701040, -0.707867, 0.086412,
		36.624359, 38.118988, 27.107090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807880, 38.935146, 26.949646>,  <36.133633, 38.614494, 27.046602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807880, 38.935146, 26.949646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861866, 38.547394, 26.867584>,  <36.894257, 38.314743, 26.818348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861866, 38.547394, 26.867584>,  <36.807880, 38.935146, 26.949646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861866, 38.547394, 26.867584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579810, 0.245165, -0.776991,
		0.803495, -0.014080, 0.595145,
		0.134969, -0.969379, -0.205153,
		36.902355, 38.256580, 26.806038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513161, 38.900517, 26.745562>,  <36.807880, 38.935146, 26.949646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513161, 38.900517, 26.745562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380234, 38.541462, 26.629761>,  <37.300476, 38.326031, 26.560280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380234, 38.541462, 26.629761>,  <37.513161, 38.900517, 26.745562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380234, 38.541462, 26.629761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588555, 0.042485, -0.807340,
		0.736998, -0.438683, 0.514190,
		-0.332321, -0.897637, -0.289501,
		37.280537, 38.272171, 26.542912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114262, 38.605995, 26.517637>,  <37.513161, 38.900517, 26.745562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114262, 38.605995, 26.517637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801491, 38.429028, 26.341978>,  <37.613827, 38.322845, 26.236584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801491, 38.429028, 26.341978>,  <38.114262, 38.605995, 26.517637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801491, 38.429028, 26.341978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412523, 0.160901, -0.896625,
		0.467344, -0.882256, 0.056695,
		-0.781930, -0.442420, -0.439147,
		37.566910, 38.296303, 26.210234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743946, 38.150616, 26.875767>,  <38.114262, 38.605995, 26.517637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743946, 38.150616, 26.875767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065498, 38.385624, 26.912842>,  <39.258430, 38.526630, 26.935087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065498, 38.385624, 26.912842>,  <38.743946, 38.150616, 26.875767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065498, 38.385624, 26.912842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026980, -0.119650, 0.992449,
		0.594175, -0.800314, -0.080333,
		0.803883, 0.587521, 0.092686,
		39.306664, 38.561882, 26.940647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250912, 37.773918, 27.146599>,  <38.743946, 38.150616, 26.875767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250912, 37.773918, 27.146599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408772, 38.127373, 27.247341>,  <39.503487, 38.339447, 27.307787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408772, 38.127373, 27.247341>,  <39.250912, 37.773918, 27.146599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408772, 38.127373, 27.247341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108788, -0.227242, 0.967743,
		0.912367, -0.409322, 0.006447,
		0.394653, 0.883638, 0.251858,
		39.527168, 38.392464, 27.322899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779236, 37.674889, 27.597998>,  <39.250912, 37.773918, 27.146599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779236, 37.674889, 27.597998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.647156, 38.047188, 27.660833>,  <39.567909, 38.270569, 27.698536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.647156, 38.047188, 27.660833>,  <39.779236, 37.674889, 27.597998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647156, 38.047188, 27.660833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102156, -0.200686, 0.974315,
		0.938367, 0.305671, 0.161348,
		-0.330200, 0.930747, 0.157091,
		39.548096, 38.326412, 27.707960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142727, 37.964115, 28.113434>,  <39.779236, 37.674889, 27.597998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142727, 37.964115, 28.113434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799171, 38.168961, 28.116205>,  <39.593037, 38.291870, 28.117868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.799171, 38.168961, 28.116205>,  <40.142727, 37.964115, 28.113434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799171, 38.168961, 28.116205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081110, -0.149361, 0.985450,
		0.505700, 0.845830, 0.169823,
		-0.858888, 0.512117, 0.006926,
		39.541504, 38.322598, 28.118282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127464, 38.360828, 28.789639>,  <40.142727, 37.964115, 28.113434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127464, 38.360828, 28.789639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.749893, 38.332699, 28.660606>,  <39.523350, 38.315823, 28.583187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.749893, 38.332699, 28.660606>,  <40.127464, 38.360828, 28.789639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749893, 38.332699, 28.660606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311359, -0.135381, 0.940600,
		-0.109815, 0.988295, 0.105895,
		-0.943926, -0.070320, -0.322581,
		39.466717, 38.311604, 28.563831>
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
