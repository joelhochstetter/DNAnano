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
	<24.608032, 35.200024, 34.722034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464386, 34.933720, 34.983658>,  <24.378199, 34.773937, 35.140633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.464386, 34.933720, 34.983658>,  <24.608032, 35.200024, 34.722034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.464386, 34.933720, 34.983658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825234, 0.553845, 0.110657,
		-0.435920, -0.500013, -0.748305,
		-0.359115, -0.665764, 0.654059,
		24.356651, 34.733990, 35.179874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358746, 35.573051, 35.293076>,  <24.608032, 35.200024, 34.722034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358746, 35.573051, 35.293076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383900, 35.970474, 35.255348>,  <24.398993, 36.208927, 35.232712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383900, 35.970474, 35.255348>,  <24.358746, 35.573051, 35.293076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383900, 35.970474, 35.255348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711482, 0.021648, 0.702370,
		0.699885, -0.111275, -0.705535,
		0.062883, 0.993554, -0.094322,
		24.402765, 36.268539, 35.227051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971155, 35.759804, 35.281490>,  <24.358746, 35.573051, 35.293076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971155, 35.759804, 35.281490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814888, 36.107040, 35.403996>,  <24.721128, 36.315384, 35.477497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.814888, 36.107040, 35.403996>,  <24.971155, 35.759804, 35.281490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814888, 36.107040, 35.403996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627051, 0.007378, 0.778944,
		0.673934, 0.496350, -0.547220,
		-0.390666, 0.868091, 0.306264,
		24.697689, 36.367466, 35.495876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438139, 36.271996, 35.269367>,  <24.971155, 35.759804, 35.281490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438139, 36.271996, 35.269367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178675, 36.359341, 35.560997>,  <25.022995, 36.411747, 35.735977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178675, 36.359341, 35.560997>,  <25.438139, 36.271996, 35.269367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178675, 36.359341, 35.560997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760859, 0.208969, 0.614350,
		-0.018202, 0.953231, -0.301695,
		-0.648662, 0.218365, 0.729078,
		24.984076, 36.424850, 35.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612320, 36.926300, 35.683338>,  <25.438139, 36.271996, 35.269367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612320, 36.926300, 35.683338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388103, 36.700977, 35.926147>,  <25.253574, 36.565784, 36.071835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388103, 36.700977, 35.926147>,  <25.612320, 36.926300, 35.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388103, 36.700977, 35.926147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708431, 0.053426, 0.703756,
		-0.428861, 0.824519, 0.369116,
		-0.560539, -0.563306, 0.607027,
		25.219942, 36.531986, 36.108257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274500, 36.906773, 35.572468>,  <25.612320, 36.926300, 35.683338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274500, 36.906773, 35.572468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372108, 37.262814, 35.418495>,  <26.430674, 37.476437, 35.326111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372108, 37.262814, 35.418495>,  <26.274500, 36.906773, 35.572468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372108, 37.262814, 35.418495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114094, -0.420522, -0.900080,
		-0.963035, 0.175719, -0.204171,
		0.244020, 0.890103, -0.384929,
		26.445314, 37.529846, 35.303017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031126, 36.966785, 34.939182>,  <26.274500, 36.906773, 35.572468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031126, 36.966785, 34.939182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323397, 37.239231, 34.920433>,  <26.498758, 37.402699, 34.909184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323397, 37.239231, 34.920433>,  <26.031126, 36.966785, 34.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323397, 37.239231, 34.920433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411905, -0.494545, -0.765349,
		-0.544472, 0.539914, -0.641906,
		0.730674, 0.681115, -0.046873,
		26.542599, 37.443565, 34.906372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069750, 37.167648, 34.258377>,  <26.031126, 36.966785, 34.939182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069750, 37.167648, 34.258377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411251, 37.157696, 34.466412>,  <26.616152, 37.151726, 34.591232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411251, 37.157696, 34.466412>,  <26.069750, 37.167648, 34.258377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411251, 37.157696, 34.466412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446654, -0.478345, -0.756099,
		0.267589, 0.877819, -0.397278,
		0.853754, -0.024878, 0.520082,
		26.667377, 37.150234, 34.622437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537594, 37.416058, 33.865421>,  <26.069750, 37.167648, 34.258377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537594, 37.416058, 33.865421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763380, 37.208473, 34.122189>,  <26.898851, 37.083923, 34.276249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763380, 37.208473, 34.122189>,  <26.537594, 37.416058, 33.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763380, 37.208473, 34.122189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227949, -0.649415, -0.725465,
		0.793359, 0.555824, -0.248276,
		0.564465, -0.518960, 0.641919,
		26.932720, 37.052784, 34.314766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248114, 37.199421, 33.488388>,  <26.537594, 37.416058, 33.865421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248114, 37.199421, 33.488388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222078, 36.958130, 33.806351>,  <27.206457, 36.813354, 33.997128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.222078, 36.958130, 33.806351>,  <27.248114, 37.199421, 33.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222078, 36.958130, 33.806351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301538, -0.771248, -0.560582,
		0.951230, 0.203209, 0.232094,
		-0.065086, -0.603228, 0.794909,
		27.202553, 36.777161, 34.044823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919138, 36.876030, 33.385933>,  <27.248114, 37.199421, 33.488388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919138, 36.876030, 33.385933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635675, 36.681732, 33.590622>,  <27.465599, 36.565155, 33.713436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635675, 36.681732, 33.590622>,  <27.919138, 36.876030, 33.385933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635675, 36.681732, 33.590622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125315, -0.800402, -0.586219,
		0.694337, -0.351300, 0.628080,
		-0.708655, -0.485741, 0.511726,
		27.423079, 36.536011, 33.744141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094658, 36.150024, 33.588520>,  <27.919138, 36.876030, 33.385933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094658, 36.150024, 33.588520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694883, 36.154644, 33.575897>,  <27.455019, 36.157413, 33.568321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694883, 36.154644, 33.575897>,  <28.094658, 36.150024, 33.588520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694883, 36.154644, 33.575897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009016, -0.812582, -0.582778,
		-0.032376, -0.582733, 0.812018,
		-0.999435, 0.011547, -0.031562,
		27.395052, 36.158108, 33.566429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690165, 36.026546, 33.001606>,  <28.094658, 36.150024, 33.588520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690165, 36.026546, 33.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581816, 35.816963, 32.678596>,  <27.516806, 35.691212, 32.484791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581816, 35.816963, 32.678596>,  <27.690165, 36.026546, 33.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581816, 35.816963, 32.678596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705629, 0.678680, -0.203668,
		0.654764, 0.514644, -0.553557,
		-0.270872, -0.523960, -0.807523,
		27.500553, 35.659775, 32.436340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.395113, 35.306633, 33.246902>,  <27.690165, 36.026546, 33.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.395113, 35.306633, 33.246902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067644, 35.227482, 33.462540>,  <26.871162, 35.179993, 33.591923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067644, 35.227482, 33.462540>,  <27.395113, 35.306633, 33.246902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067644, 35.227482, 33.462540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050540, 0.959943, 0.275599,
		-0.572034, 0.198379, -0.795878,
		-0.818671, -0.197876, 0.539094,
		26.822042, 35.168118, 33.624268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756588, 35.789227, 33.147625>,  <27.395113, 35.306633, 33.246902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756588, 35.789227, 33.147625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802195, 35.647625, 33.518932>,  <26.829559, 35.562664, 33.741714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802195, 35.647625, 33.518932>,  <26.756588, 35.789227, 33.147625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802195, 35.647625, 33.518932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148637, 0.929922, 0.336382,
		-0.982297, 0.099621, 0.158646,
		0.114018, -0.354008, 0.928266,
		26.836399, 35.541424, 33.797413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222816, 36.007359, 33.737343>,  <26.756588, 35.789227, 33.147625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222816, 36.007359, 33.737343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599220, 35.935719, 33.852184>,  <26.825062, 35.892735, 33.921089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599220, 35.935719, 33.852184>,  <26.222816, 36.007359, 33.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599220, 35.935719, 33.852184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099356, 0.957291, 0.271518,
		-0.323467, -0.226975, 0.918614,
		0.941009, -0.179097, 0.287101,
		26.881523, 35.881989, 33.938316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457701, 35.937313, 34.479233>,  <26.222816, 36.007359, 33.737343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457701, 35.937313, 34.479233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792946, 36.064548, 34.301971>,  <26.994093, 36.140892, 34.195614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792946, 36.064548, 34.301971>,  <26.457701, 35.937313, 34.479233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792946, 36.064548, 34.301971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018504, 0.795340, 0.605882,
		0.545185, -0.515997, 0.660697,
		0.838112, 0.318092, -0.443155,
		27.044380, 36.159977, 34.169025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091942, 36.020306, 35.033253>,  <26.457701, 35.937313, 34.479233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091942, 36.020306, 35.033253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116005, 36.271217, 34.722664>,  <27.130444, 36.421764, 34.536312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116005, 36.271217, 34.722664>,  <27.091942, 36.020306, 35.033253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116005, 36.271217, 34.722664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047761, 0.775179, 0.629934,
		0.997046, -0.074980, 0.016673,
		0.060157, 0.627276, -0.776470,
		27.134052, 36.459400, 34.489723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659161, 36.417461, 35.154484>,  <27.091942, 36.020306, 35.033253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659161, 36.417461, 35.154484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425610, 36.614178, 34.896111>,  <27.285479, 36.732208, 34.741085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425610, 36.614178, 34.896111>,  <27.659161, 36.417461, 35.154484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425610, 36.614178, 34.896111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095951, 0.748259, 0.656431,
		0.806152, 0.445254, -0.389703,
		-0.583878, 0.491791, -0.645933,
		27.250446, 36.761715, 34.702332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810534, 37.089260, 35.288483>,  <27.659161, 36.417461, 35.154484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810534, 37.089260, 35.288483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458073, 37.100250, 35.099670>,  <27.246595, 37.106842, 34.986382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458073, 37.100250, 35.099670>,  <27.810534, 37.089260, 35.288483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458073, 37.100250, 35.099670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307214, 0.725613, 0.615716,
		0.359428, 0.687555, -0.630936,
		-0.881153, 0.027473, -0.472032,
		27.193727, 37.108494, 34.958061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580395, 37.822235, 35.320965>,  <27.810534, 37.089260, 35.288483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580395, 37.822235, 35.320965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252708, 37.605133, 35.246883>,  <27.056097, 37.474873, 35.202435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252708, 37.605133, 35.246883>,  <27.580395, 37.822235, 35.320965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252708, 37.605133, 35.246883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516551, 0.558075, 0.649405,
		-0.249112, 0.627669, -0.737546,
		-0.819218, -0.542755, -0.185200,
		27.006943, 37.442307, 35.191322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921492, 38.374435, 35.505962>,  <27.580395, 37.822235, 35.320965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921492, 38.374435, 35.505962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018335, 38.572586, 35.839664>,  <28.076441, 38.691479, 36.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018335, 38.572586, 35.839664>,  <27.921492, 38.374435, 35.505962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018335, 38.572586, 35.839664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508440, -0.797100, 0.325763,
		0.826361, 0.345298, -0.444856,
		0.242110, 0.495380, 0.834255,
		28.090969, 38.721199, 36.089943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605011, 38.097889, 35.732273>,  <27.921492, 38.374435, 35.505962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605011, 38.097889, 35.732273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463156, 38.291626, 36.052185>,  <28.378042, 38.407867, 36.244133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463156, 38.291626, 36.052185>,  <28.605011, 38.097889, 35.732273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463156, 38.291626, 36.052185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338634, -0.730769, 0.592708,
		0.871527, 0.481029, 0.095144,
		-0.354638, 0.484342, 0.799778,
		28.356764, 38.436928, 36.292118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113455, 38.329296, 36.125637>,  <28.605011, 38.097889, 35.732273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113455, 38.329296, 36.125637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777615, 38.236065, 36.321903>,  <28.576111, 38.180126, 36.439663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777615, 38.236065, 36.321903>,  <29.113455, 38.329296, 36.125637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777615, 38.236065, 36.321903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500694, -0.682353, 0.532635,
		0.210662, 0.692871, 0.689602,
		-0.839599, -0.233074, 0.490662,
		28.525734, 38.166142, 36.469101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094471, 38.515114, 36.842823>,  <29.113455, 38.329296, 36.125637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094471, 38.515114, 36.842823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875814, 38.188869, 36.766975>,  <28.744621, 37.993122, 36.721466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875814, 38.188869, 36.766975>,  <29.094471, 38.515114, 36.842823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875814, 38.188869, 36.766975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617365, -0.545541, 0.566786,
		-0.565723, 0.192765, 0.801747,
		-0.546642, -0.815615, -0.189618,
		28.711823, 37.944183, 36.710091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924305, 38.156918, 37.549088>,  <29.094471, 38.515114, 36.842823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924305, 38.156918, 37.549088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920286, 37.894794, 37.246967>,  <28.917875, 37.737522, 37.065697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920286, 37.894794, 37.246967>,  <28.924305, 38.156918, 37.549088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920286, 37.894794, 37.246967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494076, -0.659944, 0.566006,
		-0.869361, -0.367487, 0.330402,
		-0.010047, -0.655307, -0.755296,
		28.917273, 37.698204, 37.020378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612528, 37.471542, 37.756039>,  <28.924305, 38.156918, 37.549088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612528, 37.471542, 37.756039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917345, 37.459049, 37.497330>,  <29.100235, 37.451553, 37.342106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917345, 37.459049, 37.497330>,  <28.612528, 37.471542, 37.756039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917345, 37.459049, 37.497330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487860, -0.629076, 0.605190,
		-0.425770, -0.776716, -0.464147,
		0.762045, -0.031232, -0.646771,
		29.145958, 37.449680, 37.303299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736467, 36.782455, 37.448563>,  <28.612528, 37.471542, 37.756039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736467, 36.782455, 37.448563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074488, 36.990005, 37.500183>,  <29.277300, 37.114536, 37.531155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074488, 36.990005, 37.500183>,  <28.736467, 36.782455, 37.448563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074488, 36.990005, 37.500183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324013, -0.688945, 0.648360,
		0.425325, -0.506086, -0.750317,
		0.845053, 0.518876, 0.129047,
		29.328003, 37.145668, 37.538898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248980, 36.422596, 37.140846>,  <28.736467, 36.782455, 37.448563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248980, 36.422596, 37.140846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399401, 36.642387, 37.439285>,  <29.489653, 36.774261, 37.618347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399401, 36.642387, 37.439285>,  <29.248980, 36.422596, 37.140846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399401, 36.642387, 37.439285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270756, -0.835218, 0.478646,
		0.886158, 0.022014, -0.462860,
		0.376052, 0.549478, 0.746096,
		29.512217, 36.807232, 37.663113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416340, 35.952236, 37.469707>,  <29.248980, 36.422596, 37.140846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416340, 35.952236, 37.469707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521469, 36.224926, 37.742817>,  <29.584547, 36.388538, 37.906681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521469, 36.224926, 37.742817>,  <29.416340, 35.952236, 37.469707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521469, 36.224926, 37.742817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200596, -0.730796, 0.652456,
		0.943762, -0.034517, -0.328819,
		0.262821, 0.681723, 0.682773,
		29.600315, 36.429443, 37.947647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884809, 35.362808, 37.631008>,  <29.416340, 35.952236, 37.469707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884809, 35.362808, 37.631008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028591, 35.137028, 37.928246>,  <29.114861, 35.001560, 38.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.028591, 35.137028, 37.928246>,  <28.884809, 35.362808, 37.631008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028591, 35.137028, 37.928246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309843, 0.678944, 0.665607,
		-0.880221, -0.469498, 0.069158,
		0.359456, -0.564453, 0.743091,
		29.136429, 34.967693, 38.151173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378479, 35.182064, 38.157116>,  <28.884809, 35.362808, 37.631008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378479, 35.182064, 38.157116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724237, 35.171261, 38.357952>,  <28.931692, 35.164780, 38.478455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724237, 35.171261, 38.357952>,  <28.378479, 35.182064, 38.157116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724237, 35.171261, 38.357952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338991, 0.706182, 0.621604,
		-0.371356, -0.707514, 0.601264,
		0.864395, -0.027013, 0.502086,
		28.983557, 35.163158, 38.508579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219145, 35.190628, 38.869736>,  <28.378479, 35.182064, 38.157116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219145, 35.190628, 38.869736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599611, 35.314072, 38.867004>,  <28.827890, 35.388138, 38.865364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599611, 35.314072, 38.867004>,  <28.219145, 35.190628, 38.869736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599611, 35.314072, 38.867004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220968, 0.696169, 0.683024,
		0.215539, -0.648160, 0.730364,
		0.951166, 0.308605, -0.006829,
		28.884960, 35.406654, 38.864956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349155, 35.381298, 39.568680>,  <28.219145, 35.190628, 38.869736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349155, 35.381298, 39.568680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648512, 35.568886, 39.381069>,  <28.828125, 35.681438, 39.268501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648512, 35.568886, 39.381069>,  <28.349155, 35.381298, 39.568680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648512, 35.568886, 39.381069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066282, 0.756493, 0.650635,
		0.659937, -0.455842, 0.597236,
		0.748391, 0.468964, -0.469024,
		28.873028, 35.709576, 39.240360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763668, 35.610249, 40.128387>,  <28.349155, 35.381298, 39.568680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763668, 35.610249, 40.128387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791927, 35.851780, 39.810799>,  <28.808884, 35.996700, 39.620243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791927, 35.851780, 39.810799>,  <28.763668, 35.610249, 40.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791927, 35.851780, 39.810799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110732, 0.795793, 0.595358,
		0.991336, 0.045857, 0.123086,
		0.070650, 0.603829, -0.793976,
		28.813122, 36.032928, 39.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269066, 36.200039, 40.149956>,  <28.763668, 35.610249, 40.128387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269066, 36.200039, 40.149956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026499, 36.356522, 39.873055>,  <28.880959, 36.450413, 39.706913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026499, 36.356522, 39.873055>,  <29.269066, 36.200039, 40.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026499, 36.356522, 39.873055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072335, 0.839847, 0.537982,
		0.791848, 0.376316, -0.481002,
		-0.606420, 0.391207, -0.692252,
		28.844572, 36.473885, 39.665379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610853, 36.888557, 39.846016>,  <29.269066, 36.200039, 40.149956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610853, 36.888557, 39.846016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213675, 36.903446, 39.800995>,  <28.975367, 36.912380, 39.773983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213675, 36.903446, 39.800995>,  <29.610853, 36.888557, 39.846016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213675, 36.903446, 39.800995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006271, 0.931616, 0.363391,
		0.118381, 0.361534, -0.924813,
		-0.992948, 0.037219, -0.112553,
		28.915791, 36.914612, 39.767227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294756, 37.557247, 39.351494>,  <29.610853, 36.888557, 39.846016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294756, 37.557247, 39.351494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105450, 37.390415, 39.661865>,  <28.991867, 37.290318, 39.848087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105450, 37.390415, 39.661865>,  <29.294756, 37.557247, 39.351494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105450, 37.390415, 39.661865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025451, 0.873977, 0.485300,
		-0.880553, 0.249423, -0.403006,
		-0.473264, -0.417075, 0.775932,
		28.963470, 37.265293, 39.894646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464705, 36.871788, 38.756424>,  <29.294756, 37.557247, 39.351494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464705, 36.871788, 38.756424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347242, 36.587765, 39.012421>,  <29.276766, 36.417351, 39.166019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347242, 36.587765, 39.012421>,  <29.464705, 36.871788, 38.756424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347242, 36.587765, 39.012421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065814, -0.682940, -0.727503,
		0.953644, -0.171513, 0.247279,
		-0.293653, -0.710054, 0.639994,
		29.259146, 36.374748, 39.204418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780130, 36.320312, 38.525681>,  <29.464705, 36.871788, 38.756424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780130, 36.320312, 38.525681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504889, 36.154190, 38.763683>,  <29.339745, 36.054516, 38.906487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504889, 36.154190, 38.763683>,  <29.780130, 36.320312, 38.525681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504889, 36.154190, 38.763683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123451, -0.875056, -0.468014,
		0.715034, -0.248588, 0.653399,
		-0.688103, -0.415309, 0.595006,
		29.298458, 36.029598, 38.942184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097301, 35.762741, 38.857430>,  <29.780130, 36.320312, 38.525681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097301, 35.762741, 38.857430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706814, 35.676838, 38.845608>,  <29.472521, 35.625298, 38.838512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706814, 35.676838, 38.845608>,  <30.097301, 35.762741, 38.857430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706814, 35.676838, 38.845608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202157, -0.852639, -0.481809,
		0.078270, -0.476326, 0.875778,
		-0.976220, -0.214755, -0.029557,
		29.413948, 35.612411, 38.836742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109055, 35.123695, 39.133934>,  <30.097301, 35.762741, 38.857430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109055, 35.123695, 39.133934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772362, 35.160755, 38.921177>,  <29.570347, 35.182991, 38.793522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772362, 35.160755, 38.921177>,  <30.109055, 35.123695, 39.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772362, 35.160755, 38.921177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235753, -0.823208, -0.516477,
		-0.485705, -0.560129, 0.671078,
		-0.841731, 0.092647, -0.531889,
		29.519842, 35.188549, 38.761612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701193, 34.487679, 39.203484>,  <30.109055, 35.123695, 39.133934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701193, 34.487679, 39.203484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567101, 34.641682, 38.859531>,  <29.486645, 34.734081, 38.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567101, 34.641682, 38.859531>,  <29.701193, 34.487679, 39.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567101, 34.641682, 38.859531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041910, -0.905693, -0.421857,
		-0.941203, -0.177457, 0.287480,
		-0.335231, 0.385005, -0.859878,
		29.466532, 34.757183, 38.601566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923054, 34.343426, 39.075363>,  <29.701193, 34.487679, 39.203484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923054, 34.343426, 39.075363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106026, 34.380196, 38.721569>,  <29.215809, 34.402256, 38.509293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106026, 34.380196, 38.721569>,  <28.923054, 34.343426, 39.075363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106026, 34.380196, 38.721569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380728, -0.878622, -0.288218,
		-0.803618, 0.468587, -0.366911,
		0.457432, 0.091924, -0.884481,
		29.243256, 34.407772, 38.456226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416656, 34.108440, 38.637566>,  <28.923054, 34.343426, 39.075363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416656, 34.108440, 38.637566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781080, 34.072609, 38.476593>,  <28.999735, 34.051109, 38.380009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781080, 34.072609, 38.476593>,  <28.416656, 34.108440, 38.637566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781080, 34.072609, 38.476593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193733, -0.954648, -0.226086,
		-0.363923, 0.283941, -0.887095,
		0.911058, -0.089582, -0.402427,
		29.054398, 34.045734, 38.355865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387634, 34.008846, 37.980965>,  <28.416656, 34.108440, 38.637566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387634, 34.008846, 37.980965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683111, 33.803238, 38.155373>,  <28.860397, 33.679874, 38.260017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683111, 33.803238, 38.155373>,  <28.387634, 34.008846, 37.980965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683111, 33.803238, 38.155373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489872, -0.853734, -0.176533,
		0.462990, -0.083192, -0.882451,
		0.738692, -0.514021, 0.436024,
		28.904718, 33.649033, 38.286179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785803, 33.530006, 37.554581>,  <28.387634, 34.008846, 37.980965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785803, 33.530006, 37.554581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706234, 33.441086, 37.936367>,  <28.658493, 33.387733, 38.165440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706234, 33.441086, 37.936367>,  <28.785803, 33.530006, 37.554581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706234, 33.441086, 37.936367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718904, -0.628806, -0.296278,
		0.666039, -0.745108, -0.034730,
		-0.198920, -0.222300, 0.954470,
		28.646559, 33.374397, 38.222710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784895, 32.875595, 37.594868>,  <28.785803, 33.530006, 37.554581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784895, 32.875595, 37.594868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549238, 32.998497, 37.893799>,  <28.407845, 33.072239, 38.073158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549238, 32.998497, 37.893799>,  <28.784895, 32.875595, 37.594868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549238, 32.998497, 37.893799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700087, -0.655916, -0.282226,
		0.403470, -0.689468, 0.601536,
		-0.589143, 0.307258, 0.747330,
		28.372496, 33.090675, 38.117996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335257, 32.302555, 37.638557>,  <28.784895, 32.875595, 37.594868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335257, 32.302555, 37.638557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173553, 32.578911, 37.878307>,  <28.076532, 32.744724, 38.022160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173553, 32.578911, 37.878307>,  <28.335257, 32.302555, 37.638557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173553, 32.578911, 37.878307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859398, -0.511216, 0.009633,
		0.313067, -0.511211, 0.800407,
		-0.404256, 0.690885, 0.599379,
		28.052277, 32.786175, 38.058121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217010, 31.551180, 37.749004>,  <28.335257, 32.302555, 37.638557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217010, 31.551180, 37.749004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508043, 31.292091, 37.839409>,  <28.682663, 31.136639, 37.893650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508043, 31.292091, 37.839409>,  <28.217010, 31.551180, 37.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508043, 31.292091, 37.839409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496472, 0.724516, 0.478112,
		-0.473431, -0.235659, 0.848721,
		0.727584, -0.647720, 0.226010,
		28.726318, 31.097775, 37.907211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416655, 31.931313, 38.350941>,  <28.217010, 31.551180, 37.749004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416655, 31.931313, 38.350941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685064, 31.640810, 38.291241>,  <28.846109, 31.466509, 38.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685064, 31.640810, 38.291241>,  <28.416655, 31.931313, 38.350941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685064, 31.640810, 38.291241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509706, 0.305668, 0.804218,
		-0.538448, -0.615725, 0.575289,
		0.671024, -0.726258, -0.149253,
		28.886372, 31.422934, 38.246464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712763, 31.821072, 39.004345>,  <28.416655, 31.931313, 38.350941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712763, 31.821072, 39.004345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928799, 31.565033, 38.785774>,  <29.058420, 31.411409, 38.654633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928799, 31.565033, 38.785774>,  <28.712763, 31.821072, 39.004345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928799, 31.565033, 38.785774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681229, -0.048757, 0.730444,
		-0.494197, -0.766746, 0.409719,
		0.540089, -0.640096, -0.546426,
		29.090826, 31.373005, 38.621845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984030, 31.158257, 39.402466>,  <28.712763, 31.821072, 39.004345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984030, 31.158257, 39.402466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231577, 31.185017, 39.089409>,  <29.380104, 31.201073, 38.901573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231577, 31.185017, 39.089409>,  <28.984030, 31.158257, 39.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231577, 31.185017, 39.089409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779597, -0.174193, 0.601569,
		-0.096086, -0.982436, -0.159956,
		0.618866, 0.066899, -0.782642,
		29.417236, 31.205086, 38.854618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299898, 30.470970, 39.302395>,  <28.984030, 31.158257, 39.402466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299898, 30.470970, 39.302395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502586, 30.791418, 39.174995>,  <29.624199, 30.983686, 39.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502586, 30.791418, 39.174995>,  <29.299898, 30.470970, 39.302395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502586, 30.791418, 39.174995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742815, -0.218205, 0.632939,
		0.437560, -0.557312, -0.705652,
		0.506721, 0.801118, -0.318502,
		29.654602, 31.031754, 39.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014973, 30.288460, 38.953732>,  <29.299898, 30.470970, 39.302395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014973, 30.288460, 38.953732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001505, 30.645716, 39.133137>,  <29.993425, 30.860069, 39.240780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001505, 30.645716, 39.133137>,  <30.014973, 30.288460, 38.953732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001505, 30.645716, 39.133137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743472, -0.277530, 0.608462,
		0.667919, 0.353943, -0.654682,
		-0.033667, 0.893141, 0.448514,
		29.991405, 30.913658, 39.267693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666870, 30.560467, 38.982433>,  <30.014973, 30.288460, 38.953732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666870, 30.560467, 38.982433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449512, 30.685390, 39.294121>,  <30.319098, 30.760345, 39.481133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449512, 30.685390, 39.294121>,  <30.666870, 30.560467, 38.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449512, 30.685390, 39.294121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741370, -0.256917, 0.619972,
		0.393819, 0.914579, -0.091931,
		-0.543395, 0.312312, 0.779220,
		30.286493, 30.779083, 39.527885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991207, 31.140560, 39.380222>,  <30.666870, 30.560467, 38.982433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991207, 31.140560, 39.380222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770058, 30.884460, 39.593544>,  <30.637367, 30.730801, 39.721535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770058, 30.884460, 39.593544>,  <30.991207, 31.140560, 39.380222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770058, 30.884460, 39.593544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824406, -0.327218, 0.461826,
		-0.121178, 0.694989, 0.708736,
		-0.552875, -0.640249, 0.533302,
		30.604195, 30.692387, 39.753536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397303, 31.883316, 39.482182>,  <30.991207, 31.140560, 39.380222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397303, 31.883316, 39.482182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440567, 32.209843, 39.709137>,  <31.466526, 32.405758, 39.845310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440567, 32.209843, 39.709137>,  <31.397303, 31.883316, 39.482182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440567, 32.209843, 39.709137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256055, 0.528607, -0.809327,
		-0.960592, 0.232822, -0.151846,
		0.108162, 0.816314, 0.567391,
		31.473015, 32.454739, 39.879353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025351, 32.464577, 39.149330>,  <31.397303, 31.883316, 39.482182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025351, 32.464577, 39.149330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334478, 32.576904, 39.376976>,  <31.519955, 32.644302, 39.513565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334478, 32.576904, 39.376976>,  <31.025351, 32.464577, 39.149330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334478, 32.576904, 39.376976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355298, 0.551606, -0.754648,
		-0.525847, 0.785412, 0.326517,
		0.772818, 0.280819, 0.569115,
		31.566324, 32.661148, 39.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220764, 33.301540, 39.014423>,  <31.025351, 32.464577, 39.149330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220764, 33.301540, 39.014423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565411, 33.139889, 39.137253>,  <31.772200, 33.042896, 39.210949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565411, 33.139889, 39.137253>,  <31.220764, 33.301540, 39.014423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565411, 33.139889, 39.137253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481064, 0.457320, -0.747954,
		0.161839, 0.792173, 0.588447,
		0.861618, -0.404129, 0.307074,
		31.823896, 33.018650, 39.229374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822432, 33.841988, 39.081932>,  <31.220764, 33.301540, 39.014423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822432, 33.841988, 39.081932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943771, 33.473061, 38.986168>,  <32.016575, 33.251705, 38.928711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943771, 33.473061, 38.986168>,  <31.822432, 33.841988, 39.081932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943771, 33.473061, 38.986168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557702, 0.375569, -0.740214,
		0.772624, 0.091024, 0.628305,
		0.303349, -0.922314, -0.239409,
		32.034775, 33.196365, 38.914345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522713, 33.986980, 38.838112>,  <31.822432, 33.841988, 39.081932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522713, 33.986980, 38.838112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413517, 33.621525, 38.717621>,  <32.348000, 33.402252, 38.645329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413517, 33.621525, 38.717621>,  <32.522713, 33.986980, 38.838112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413517, 33.621525, 38.717621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446364, 0.157079, -0.880957,
		0.852195, -0.374948, 0.364935,
		-0.272989, -0.913641, -0.301225,
		32.331619, 33.347431, 38.627254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075928, 33.580528, 38.618839>,  <32.522713, 33.986980, 38.838112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075928, 33.580528, 38.618839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747948, 33.485447, 38.410542>,  <32.551159, 33.428398, 38.285564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747948, 33.485447, 38.410542>,  <33.075928, 33.580528, 38.618839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747948, 33.485447, 38.410542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481582, 0.205319, -0.852011,
		0.309441, -0.949391, -0.053881,
		-0.819954, -0.237700, -0.520743,
		32.501961, 33.414139, 38.254318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710476, 33.355671, 38.530838>,  <33.075928, 33.580528, 38.618839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710476, 33.355671, 38.530838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975109, 33.244236, 38.809319>,  <34.133888, 33.177376, 38.976406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975109, 33.244236, 38.809319>,  <33.710476, 33.355671, 38.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975109, 33.244236, 38.809319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539998, -0.467195, -0.700093,
		0.520298, 0.839118, -0.158653,
		0.661583, -0.278584, 0.696203,
		34.173584, 33.160660, 39.018181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429314, 33.660427, 38.499393>,  <33.710476, 33.355671, 38.530838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429314, 33.660427, 38.499393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372047, 33.280003, 38.608932>,  <34.337688, 33.051750, 38.674656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372047, 33.280003, 38.608932>,  <34.429314, 33.660427, 38.499393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372047, 33.280003, 38.608932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410194, -0.308836, -0.858115,
		0.900691, -0.010521, 0.434333,
		-0.143167, -0.951057, 0.273850,
		34.329098, 32.994686, 38.691086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999290, 33.199097, 38.434132>,  <34.429314, 33.660427, 38.499393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999290, 33.199097, 38.434132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701397, 32.932770, 38.415993>,  <34.522659, 32.772976, 38.405109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701397, 32.932770, 38.415993>,  <34.999290, 33.199097, 38.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701397, 32.932770, 38.415993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423275, -0.418726, -0.803434,
		0.515949, -0.617543, 0.593664,
		-0.744738, -0.665814, -0.045349,
		34.477974, 32.733025, 38.402390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322639, 32.592777, 38.145336>,  <34.999290, 33.199097, 38.434132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322639, 32.592777, 38.145336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930016, 32.636620, 38.082687>,  <34.694443, 32.662926, 38.045097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930016, 32.636620, 38.082687>,  <35.322639, 32.592777, 38.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930016, 32.636620, 38.082687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104665, -0.377464, -0.920090,
		-0.159968, -0.919515, 0.359030,
		-0.981558, 0.109607, -0.156623,
		34.635548, 32.669502, 38.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878967, 31.930676, 38.038868>,  <35.322639, 32.592777, 38.145336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878967, 31.930676, 38.038868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730007, 32.233772, 37.824524>,  <34.640633, 32.415630, 37.695919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730007, 32.233772, 37.824524>,  <34.878967, 31.930676, 38.038868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730007, 32.233772, 37.824524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018838, -0.571101, -0.820664,
		-0.927881, -0.315710, 0.198403,
		-0.372400, 0.757741, -0.535861,
		34.618286, 32.461094, 37.663765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369141, 31.564936, 37.607246>,  <34.878967, 31.930676, 38.038868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369141, 31.564936, 37.607246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444248, 31.918802, 37.436550>,  <34.489315, 32.131123, 37.334133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444248, 31.918802, 37.436550>,  <34.369141, 31.564936, 37.607246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444248, 31.918802, 37.436550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216429, -0.461052, -0.860575,
		-0.958071, 0.069234, -0.278041,
		0.187772, 0.884668, -0.426736,
		34.500580, 32.184204, 37.308529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213589, 31.385139, 36.954121>,  <34.369141, 31.564936, 37.607246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213589, 31.385139, 36.954121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421364, 31.724850, 36.916351>,  <34.546028, 31.928677, 36.893688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421364, 31.724850, 36.916351>,  <34.213589, 31.385139, 36.954121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421364, 31.724850, 36.916351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437547, -0.359262, -0.824308,
		-0.733990, 0.386858, -0.558211,
		0.519434, 0.849277, -0.094427,
		34.577194, 31.979633, 36.888023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049850, 31.613779, 36.279076>,  <34.213589, 31.385139, 36.954121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049850, 31.613779, 36.279076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379612, 31.818769, 36.375179>,  <34.577469, 31.941763, 36.432842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379612, 31.818769, 36.375179>,  <34.049850, 31.613779, 36.279076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379612, 31.818769, 36.375179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297316, -0.030902, -0.954279,
		-0.481619, 0.858147, -0.177842,
		0.824407, 0.512474, 0.240258,
		34.626934, 31.972511, 36.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145306, 32.167973, 35.790707>,  <34.049850, 31.613779, 36.279076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145306, 32.167973, 35.790707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525921, 32.148647, 35.912189>,  <34.754292, 32.137051, 35.985081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525921, 32.148647, 35.912189>,  <34.145306, 32.167973, 35.790707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525921, 32.148647, 35.912189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303555, -0.010673, -0.952754,
		0.049275, 0.998775, 0.004511,
		0.951539, -0.048316, 0.303709,
		34.811382, 32.134151, 36.003304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528553, 32.623039, 35.350197>,  <34.145306, 32.167973, 35.790707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528553, 32.623039, 35.350197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835247, 32.416264, 35.502457>,  <35.019264, 32.292198, 35.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835247, 32.416264, 35.502457>,  <34.528553, 32.623039, 35.350197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835247, 32.416264, 35.502457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405234, -0.070149, -0.911518,
		0.497904, 0.853141, 0.155697,
		0.766731, -0.516942, 0.380649,
		35.065266, 32.261181, 35.616650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099705, 32.942783, 35.078915>,  <34.528553, 32.623039, 35.350197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099705, 32.942783, 35.078915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210293, 32.569881, 35.172264>,  <35.276646, 32.346138, 35.228271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210293, 32.569881, 35.172264>,  <35.099705, 32.942783, 35.078915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210293, 32.569881, 35.172264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339119, -0.132578, -0.931354,
		0.899202, 0.336631, 0.279493,
		0.276468, -0.932257, 0.233372,
		35.293232, 32.290203, 35.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932896, 32.944431, 34.881256>,  <35.099705, 32.942783, 35.078915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932896, 32.944431, 34.881256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822037, 32.563419, 34.931648>,  <35.755520, 32.334812, 34.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822037, 32.563419, 34.931648>,  <35.932896, 32.944431, 34.881256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822037, 32.563419, 34.931648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628460, -0.278891, -0.726125,
		0.726792, -0.122072, 0.675922,
		-0.277149, -0.952532, 0.125979,
		35.738892, 32.277660, 34.969440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572334, 32.540157, 34.862053>,  <35.932896, 32.944431, 34.881256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572334, 32.540157, 34.862053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270763, 32.287796, 34.788784>,  <36.089821, 32.136379, 34.744823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270763, 32.287796, 34.788784>,  <36.572334, 32.540157, 34.862053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270763, 32.287796, 34.788784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445406, -0.285931, -0.848444,
		0.482908, -0.721255, 0.496579,
		-0.753932, -0.630900, -0.183173,
		36.044582, 32.098526, 34.733833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851418, 31.916908, 34.628067>,  <36.572334, 32.540157, 34.862053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851418, 31.916908, 34.628067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478725, 31.914110, 34.482838>,  <36.255108, 31.912432, 34.395699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478725, 31.914110, 34.482838>,  <36.851418, 31.916908, 34.628067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478725, 31.914110, 34.482838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347705, -0.305579, -0.886410,
		-0.104747, -0.952141, 0.287150,
		-0.931734, -0.006995, -0.363073,
		36.199203, 31.912012, 34.373917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888584, 31.448122, 34.097996>,  <36.851418, 31.916908, 34.628067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888584, 31.448122, 34.097996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532688, 31.601324, 33.998657>,  <36.319153, 31.693245, 33.939053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532688, 31.601324, 33.998657>,  <36.888584, 31.448122, 34.097996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532688, 31.601324, 33.998657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202336, -0.156775, -0.966686,
		-0.409178, -0.910346, 0.061993,
		-0.889738, 0.383003, -0.248345,
		36.265766, 31.716225, 33.924152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581802, 30.919022, 33.689098>,  <36.888584, 31.448122, 34.097996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581802, 30.919022, 33.689098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412895, 31.274019, 33.615295>,  <36.311550, 31.487019, 33.571014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412895, 31.274019, 33.615295>,  <36.581802, 30.919022, 33.689098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412895, 31.274019, 33.615295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196002, -0.109331, -0.974489,
		-0.885027, -0.447659, -0.127784,
		-0.422268, 0.887495, -0.184503,
		36.286213, 31.540268, 33.559944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117245, 30.824570, 33.098427>,  <36.581802, 30.919022, 33.689098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117245, 30.824570, 33.098427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221657, 31.210413, 33.113365>,  <36.284306, 31.441919, 33.122330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221657, 31.210413, 33.113365>,  <36.117245, 30.824570, 33.098427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221657, 31.210413, 33.113365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151742, -0.002792, -0.988416,
		-0.953329, 0.263678, -0.147100,
		0.261034, 0.964607, 0.037349,
		36.299969, 31.499796, 33.124569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799335, 31.094650, 32.449150>,  <36.117245, 30.824570, 33.098427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799335, 31.094650, 32.449150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087151, 31.347418, 32.564354>,  <36.259838, 31.499079, 32.633476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087151, 31.347418, 32.564354>,  <35.799335, 31.094650, 32.449150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087151, 31.347418, 32.564354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125236, 0.289853, -0.948842,
		-0.683072, 0.718793, 0.129420,
		0.719534, 0.631919, 0.288009,
		36.303009, 31.536993, 32.650757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739254, 31.775480, 32.052250>,  <35.799335, 31.094650, 32.449150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739254, 31.775480, 32.052250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116863, 31.794205, 32.182861>,  <36.343430, 31.805439, 32.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116863, 31.794205, 32.182861>,  <35.739254, 31.775480, 32.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116863, 31.794205, 32.182861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292532, 0.338629, -0.894290,
		-0.152434, 0.939755, 0.305981,
		0.944028, 0.046811, 0.326527,
		36.400070, 31.808249, 32.280819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079426, 32.343208, 31.770330>,  <35.739254, 31.775480, 32.052250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079426, 32.343208, 31.770330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412636, 32.145123, 31.868982>,  <36.612564, 32.026272, 31.928173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412636, 32.145123, 31.868982>,  <36.079426, 32.343208, 31.770330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412636, 32.145123, 31.868982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341383, 0.109331, -0.933544,
		0.435340, 0.861864, 0.260134,
		0.833029, -0.495214, 0.246630,
		36.662544, 31.996559, 31.942970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528198, 32.590813, 31.303795>,  <36.079426, 32.343208, 31.770330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528198, 32.590813, 31.303795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731503, 32.285809, 31.463921>,  <36.853485, 32.102806, 31.559996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731503, 32.285809, 31.463921>,  <36.528198, 32.590813, 31.303795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731503, 32.285809, 31.463921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579861, -0.040677, -0.813700,
		0.636736, 0.645699, 0.421474,
		0.508260, -0.762508, 0.400316,
		36.883980, 32.057056, 31.584015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246952, 32.646889, 31.178493>,  <36.528198, 32.590813, 31.303795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246952, 32.646889, 31.178493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210762, 32.249905, 31.211567>,  <37.189049, 32.011715, 31.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210762, 32.249905, 31.211567>,  <37.246952, 32.646889, 31.178493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210762, 32.249905, 31.211567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524654, -0.118070, -0.843088,
		0.846494, -0.032901, 0.531381,
		-0.090478, -0.992460, 0.082684,
		37.183617, 31.952168, 31.236372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903027, 32.490898, 31.042095>,  <37.246952, 32.646889, 31.178493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903027, 32.490898, 31.042095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682125, 32.160641, 30.995922>,  <37.549583, 31.962486, 30.968218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682125, 32.160641, 30.995922>,  <37.903027, 32.490898, 31.042095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682125, 32.160641, 30.995922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483602, -0.204482, -0.851068,
		0.679077, -0.525828, 0.512210,
		-0.552253, -0.825647, -0.115433,
		37.516449, 31.912947, 30.961292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277740, 31.896442, 30.725552>,  <37.903027, 32.490898, 31.042095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277740, 31.896442, 30.725552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897564, 31.799818, 30.647266>,  <37.669456, 31.741844, 30.600296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897564, 31.799818, 30.647266>,  <38.277740, 31.896442, 30.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897564, 31.799818, 30.647266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217403, -0.066401, -0.973821,
		0.222240, -0.968112, 0.115627,
		-0.950445, -0.241559, -0.195713,
		37.612431, 31.727350, 30.588552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348347, 31.252899, 30.439873>,  <38.277740, 31.896442, 30.725552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348347, 31.252899, 30.439873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989285, 31.398455, 30.340437>,  <37.773846, 31.485788, 30.280775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989285, 31.398455, 30.340437>,  <38.348347, 31.252899, 30.439873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989285, 31.398455, 30.340437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143733, -0.291496, -0.945712,
		-0.416596, -0.884656, 0.209361,
		-0.897657, 0.363888, -0.248590,
		37.719986, 31.507620, 30.265860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118126, 30.747364, 29.933935>,  <38.348347, 31.252899, 30.439873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118126, 30.747364, 29.933935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893055, 31.072010, 29.871096>,  <37.758015, 31.266798, 29.833391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893055, 31.072010, 29.871096>,  <38.118126, 30.747364, 29.933935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893055, 31.072010, 29.871096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087893, -0.130228, -0.987581,
		-0.821993, -0.569495, 0.001942,
		-0.562675, 0.811613, -0.157101,
		37.724251, 31.315495, 29.823965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461052, 30.540762, 29.541758>,  <38.118126, 30.747364, 29.933935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461052, 30.540762, 29.541758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536667, 30.925333, 29.461832>,  <37.582035, 31.156076, 29.413877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536667, 30.925333, 29.461832>,  <37.461052, 30.540762, 29.541758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536667, 30.925333, 29.461832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087242, -0.186233, -0.978625,
		-0.978088, 0.202424, 0.048673,
		0.189033, 0.961427, -0.199812,
		37.593376, 31.213760, 29.401888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966621, 30.796408, 29.007957>,  <37.461052, 30.540762, 29.541758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966621, 30.796408, 29.007957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242401, 31.086142, 29.008646>,  <37.407867, 31.259981, 29.009060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242401, 31.086142, 29.008646>,  <36.966621, 30.796408, 29.007957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242401, 31.086142, 29.008646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046747, 0.046866, -0.997807,
		-0.722826, 0.687855, 0.066172,
		0.689447, 0.724334, 0.001721,
		37.449234, 31.303442, 29.009163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675575, 31.312738, 28.668917>,  <36.966621, 30.796408, 29.007957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675575, 31.312738, 28.668917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066261, 31.396162, 28.648823>,  <37.300674, 31.446217, 28.636766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066261, 31.396162, 28.648823>,  <36.675575, 31.312738, 28.668917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066261, 31.396162, 28.648823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063220, 0.056064, -0.996423,
		-0.204997, 0.976401, 0.067944,
		0.976719, 0.208559, -0.050235,
		37.359276, 31.458729, 28.633753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761131, 31.998470, 28.275204>,  <36.675575, 31.312738, 28.668917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761131, 31.998470, 28.275204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115898, 31.814661, 28.256361>,  <37.328758, 31.704374, 28.245054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115898, 31.814661, 28.256361>,  <36.761131, 31.998470, 28.275204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115898, 31.814661, 28.256361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048139, 0.193371, -0.979944,
		0.459417, 0.866859, 0.193625,
		0.886915, -0.459524, -0.047108,
		37.381973, 31.676804, 28.242229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156330, 32.405354, 27.774614>,  <36.761131, 31.998470, 28.275204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156330, 32.405354, 27.774614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364571, 32.067329, 27.823338>,  <37.489517, 31.864513, 27.852571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364571, 32.067329, 27.823338>,  <37.156330, 32.405354, 27.774614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364571, 32.067329, 27.823338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343460, 0.076671, -0.936033,
		0.781668, 0.529140, 0.330161,
		0.520606, -0.845063, 0.121807,
		37.520752, 31.813810, 27.859880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858692, 32.640125, 27.614336>,  <37.156330, 32.405354, 27.774614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858692, 32.640125, 27.614336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798161, 32.247246, 27.569818>,  <37.761841, 32.011517, 27.543108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798161, 32.247246, 27.569818>,  <37.858692, 32.640125, 27.614336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798161, 32.247246, 27.569818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201915, 0.079502, -0.976171,
		0.967641, -0.170198, 0.186289,
		-0.151332, -0.982198, -0.111295,
		37.752762, 31.952587, 27.536430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305622, 32.448475, 27.158230>,  <37.858692, 32.640125, 27.614336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305622, 32.448475, 27.158230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052521, 32.140644, 27.123861>,  <37.900661, 31.955946, 27.103241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052521, 32.140644, 27.123861>,  <38.305622, 32.448475, 27.158230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052521, 32.140644, 27.123861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231148, -0.081814, -0.969473,
		0.739052, -0.633294, 0.229654,
		-0.632750, -0.769575, -0.085920,
		37.862698, 31.909771, 27.098085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697353, 31.823132, 26.845018>,  <38.305622, 32.448475, 27.158230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697353, 31.823132, 26.845018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307106, 31.761620, 26.782391>,  <38.072956, 31.724712, 26.744814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307106, 31.761620, 26.782391>,  <38.697353, 31.823132, 26.845018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307106, 31.761620, 26.782391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154353, 0.026332, -0.987665,
		0.156008, -0.987754, -0.001954,
		-0.975621, -0.153782, -0.156571,
		38.014420, 31.715485, 26.735418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580807, 31.376383, 26.161083>,  <38.697353, 31.823132, 26.845018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580807, 31.376383, 26.161083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232998, 31.565155, 26.219357>,  <38.024315, 31.678417, 26.254320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232998, 31.565155, 26.219357>,  <38.580807, 31.376383, 26.161083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232998, 31.565155, 26.219357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066658, 0.180130, -0.981382,
		-0.489384, -0.863039, -0.125169,
		-0.869517, 0.471929, 0.145681,
		37.972141, 31.706734, 26.263062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301003, 31.308186, 25.596783>,  <38.580807, 31.376383, 26.161083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301003, 31.308186, 25.596783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053940, 31.578859, 25.757084>,  <37.905704, 31.741262, 25.853264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053940, 31.578859, 25.757084>,  <38.301003, 31.308186, 25.596783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053940, 31.578859, 25.757084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304858, 0.263721, -0.915157,
		-0.724958, -0.687424, 0.043404,
		-0.617655, 0.676682, 0.400753,
		37.868645, 31.781864, 25.877310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732922, 31.311594, 25.094482>,  <38.301003, 31.308186, 25.596783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732922, 31.311594, 25.094482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738354, 31.642967, 25.318453>,  <37.741611, 31.841791, 25.452835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738354, 31.642967, 25.318453>,  <37.732922, 31.311594, 25.094482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738354, 31.642967, 25.318453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164425, 0.554205, -0.815978,
		-0.986296, -0.080987, 0.143740,
		0.013578, 0.828431, 0.559927,
		37.742428, 31.891497, 25.486431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291348, 31.737686, 24.786724>,  <37.732922, 31.311594, 25.094482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291348, 31.737686, 24.786724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496292, 31.980112, 25.030090>,  <37.619259, 32.125568, 25.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496292, 31.980112, 25.030090>,  <37.291348, 31.737686, 24.786724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496292, 31.980112, 25.030090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141912, 0.758487, -0.636050,
		-0.846963, 0.239547, 0.474628,
		0.512363, 0.606066, 0.608416,
		37.650002, 32.161930, 25.212614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954285, 32.455395, 24.894581>,  <37.291348, 31.737686, 24.786724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954285, 32.455395, 24.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332085, 32.529877, 25.002844>,  <37.558765, 32.574566, 25.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332085, 32.529877, 25.002844>,  <36.954285, 32.455395, 24.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332085, 32.529877, 25.002844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014660, 0.799158, -0.600942,
		-0.328195, 0.571555, 0.752072,
		0.944496, 0.186201, 0.270658,
		37.615433, 32.585735, 25.084042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918922, 33.202496, 24.956181>,  <36.954285, 32.455395, 24.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918922, 33.202496, 24.956181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292557, 33.067001, 24.911026>,  <37.516739, 32.985706, 24.883932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292557, 33.067001, 24.911026>,  <36.918922, 33.202496, 24.956181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292557, 33.067001, 24.911026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215253, 0.786498, -0.578867,
		0.284867, 0.516412, 0.807570,
		0.934086, -0.338732, -0.112888,
		37.572784, 32.965382, 24.877159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453072, 33.833706, 25.100245>,  <36.918922, 33.202496, 24.956181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453072, 33.833706, 25.100245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632515, 33.565323, 24.864086>,  <37.740181, 33.404293, 24.722391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632515, 33.565323, 24.864086>,  <37.453072, 33.833706, 25.100245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632515, 33.565323, 24.864086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017357, 0.653935, -0.756352,
		0.893558, 0.349556, 0.281717,
		0.448611, -0.670955, -0.590396,
		37.767097, 33.364037, 24.686968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996540, 34.185680, 24.758892>,  <37.453072, 33.833706, 25.100245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996540, 34.185680, 24.758892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933266, 33.865631, 24.527451>,  <37.895302, 33.673603, 24.388586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933266, 33.865631, 24.527451>,  <37.996540, 34.185680, 24.758892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933266, 33.865631, 24.527451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216278, 0.543675, -0.810951,
		0.963431, -0.253424, 0.087045,
		-0.158190, -0.800121, -0.578603,
		37.885807, 33.625595, 24.353870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553761, 34.211765, 24.311415>,  <37.996540, 34.185680, 24.758892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553761, 34.211765, 24.311415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283134, 33.968388, 24.145498>,  <38.120758, 33.822361, 24.045948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283134, 33.968388, 24.145498>,  <38.553761, 34.211765, 24.311415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283134, 33.968388, 24.145498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169108, 0.419853, -0.891698,
		0.716702, -0.673437, -0.181165,
		-0.676565, -0.608445, -0.414793,
		38.080166, 33.785854, 24.021061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828011, 33.941235, 23.790552>,  <38.553761, 34.211765, 24.311415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828011, 33.941235, 23.790552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437714, 33.922760, 23.704948>,  <38.203537, 33.911674, 23.653587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437714, 33.922760, 23.704948>,  <38.828011, 33.941235, 23.790552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437714, 33.922760, 23.704948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171291, 0.447742, -0.877603,
		0.136351, -0.892969, -0.428968,
		-0.975740, -0.046184, -0.214008,
		38.144993, 33.908905, 23.640745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713924, 33.620255, 23.029816>,  <38.828011, 33.941235, 23.790552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713924, 33.620255, 23.029816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373825, 33.812561, 23.115551>,  <38.169765, 33.927944, 23.166992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373825, 33.812561, 23.115551>,  <38.713924, 33.620255, 23.029816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373825, 33.812561, 23.115551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028179, 0.448179, -0.893500,
		-0.525630, -0.753655, -0.394610,
		-0.850246, 0.480770, 0.214339,
		38.118752, 33.956791, 23.179853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394939, 33.649582, 22.463444>,  <38.713924, 33.620255, 23.029816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394939, 33.649582, 22.463444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203983, 33.935959, 22.667217>,  <38.089409, 34.107784, 22.789482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203983, 33.935959, 22.667217>,  <38.394939, 33.649582, 22.463444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203983, 33.935959, 22.667217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126443, 0.629704, -0.766476,
		-0.869545, -0.301495, -0.391141,
		-0.477392, 0.715943, 0.509434,
		38.060764, 34.150742, 22.820047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025402, 33.912830, 21.888262>,  <38.394939, 33.649582, 22.463444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025402, 33.912830, 21.888262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072609, 34.177475, 22.184462>,  <38.100933, 34.336262, 22.362183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072609, 34.177475, 22.184462>,  <38.025402, 33.912830, 21.888262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072609, 34.177475, 22.184462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378484, 0.659452, -0.649517,
		-0.918054, 0.356920, -0.172585,
		0.118015, 0.661612, 0.740501,
		38.108013, 34.375957, 22.406612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733082, 34.492996, 21.700605>,  <38.025402, 33.912830, 21.888262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733082, 34.492996, 21.700605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016766, 34.579891, 21.968884>,  <38.186977, 34.632027, 22.129850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016766, 34.579891, 21.968884>,  <37.733082, 34.492996, 21.700605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016766, 34.579891, 21.968884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332908, 0.735401, -0.590219,
		-0.621445, 0.641868, 0.449234,
		0.709210, 0.217235, 0.670694,
		38.229530, 34.645061, 22.170092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770290, 35.211689, 21.817497>,  <37.733082, 34.492996, 21.700605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770290, 35.211689, 21.817497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135014, 35.060925, 21.882662>,  <38.353848, 34.970467, 21.921761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135014, 35.060925, 21.882662>,  <37.770290, 35.211689, 21.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135014, 35.060925, 21.882662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399999, 0.725699, -0.559787,
		0.092770, 0.575582, 0.812465,
		0.911809, -0.376916, 0.162909,
		38.408558, 34.947849, 21.931534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109947, 35.049034, 22.018686>,  <37.770290, 35.211689, 21.817497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109947, 35.049034, 22.018686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036831, 35.440872, 21.985254>,  <36.992962, 35.675976, 21.965195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036831, 35.440872, 21.985254>,  <37.109947, 35.049034, 22.018686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036831, 35.440872, 21.985254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258249, -0.034187, -0.965473,
		-0.948628, -0.198063, -0.246730,
		-0.182790, 0.979593, -0.083580,
		36.981995, 35.734749, 21.960180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740150, 35.157375, 21.303324>,  <37.109947, 35.049034, 22.018686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740150, 35.157375, 21.303324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919174, 35.495667, 21.419558>,  <37.026588, 35.698639, 21.489298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919174, 35.495667, 21.419558>,  <36.740150, 35.157375, 21.303324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919174, 35.495667, 21.419558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284959, 0.173129, -0.942775,
		-0.847637, 0.504753, -0.163511,
		0.447560, 0.845725, 0.290584,
		37.053444, 35.749386, 21.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644035, 35.719051, 20.837006>,  <36.740150, 35.157375, 21.303324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644035, 35.719051, 20.837006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999916, 35.769806, 21.012424>,  <37.213448, 35.800259, 21.117676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999916, 35.769806, 21.012424>,  <36.644035, 35.719051, 20.837006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999916, 35.769806, 21.012424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418810, 0.155511, -0.894659,
		-0.181716, 0.979652, 0.085220,
		0.889707, 0.126883, 0.438546,
		37.266827, 35.807869, 21.143988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095963, 36.339634, 20.693623>,  <36.644035, 35.719051, 20.837006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095963, 36.339634, 20.693623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346149, 36.030567, 20.737020>,  <37.496262, 35.845127, 20.763060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346149, 36.030567, 20.737020>,  <37.095963, 36.339634, 20.693623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346149, 36.030567, 20.737020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558609, 0.346363, -0.753650,
		0.544743, 0.531992, 0.648259,
		0.625469, -0.772669, 0.108496,
		37.533791, 35.798767, 20.769569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759190, 36.617512, 20.903492>,  <37.095963, 36.339634, 20.693623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759190, 36.617512, 20.903492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772820, 36.267490, 20.710360>,  <37.780998, 36.057480, 20.594481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772820, 36.267490, 20.710360>,  <37.759190, 36.617512, 20.903492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772820, 36.267490, 20.710360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509230, 0.430899, -0.744990,
		0.859955, -0.220488, 0.460285,
		0.034075, -0.875049, -0.482833,
		37.783043, 36.004974, 20.565510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150494, 36.322155, 21.476202>,  <37.759190, 36.617512, 20.903492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150494, 36.322155, 21.476202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778046, 36.250996, 21.348845>,  <37.554577, 36.208302, 21.272430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778046, 36.250996, 21.348845>,  <38.150494, 36.322155, 21.476202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778046, 36.250996, 21.348845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342521, 0.126607, 0.930941,
		-0.125300, 0.975871, -0.178819,
		-0.931117, -0.177896, -0.318392,
		37.498711, 36.197628, 21.253326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741207, 36.801632, 21.814882>,  <38.150494, 36.322155, 21.476202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741207, 36.801632, 21.814882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497898, 36.504025, 21.704296>,  <37.351913, 36.325459, 21.637945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497898, 36.504025, 21.704296>,  <37.741207, 36.801632, 21.814882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497898, 36.504025, 21.704296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439965, 0.026149, 0.897634,
		-0.660630, 0.667643, -0.343249,
		-0.608275, -0.744022, -0.276465,
		37.315414, 36.280819, 21.621357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029106, 37.011856, 21.865946>,  <37.741207, 36.801632, 21.814882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029106, 37.011856, 21.865946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008724, 36.614429, 21.906399>,  <36.996494, 36.375973, 21.930670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008724, 36.614429, 21.906399>,  <37.029106, 37.011856, 21.865946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008724, 36.614429, 21.906399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618973, 0.110885, 0.777545,
		-0.783758, -0.022982, -0.620642,
		-0.050950, -0.993567, 0.101133,
		36.993439, 36.316360, 21.936739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357616, 36.927975, 21.978275>,  <37.029106, 37.011856, 21.865946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357616, 36.927975, 21.978275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570602, 36.624191, 22.127783>,  <36.698395, 36.441921, 22.217487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570602, 36.624191, 22.127783>,  <36.357616, 36.927975, 21.978275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570602, 36.624191, 22.127783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537871, 0.037381, 0.842198,
		-0.653585, -0.649483, -0.388585,
		0.532468, -0.759457, 0.373770,
		36.730343, 36.396355, 22.239914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970985, 36.279816, 22.325277>,  <36.357616, 36.927975, 21.978275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970985, 36.279816, 22.325277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323891, 36.247540, 22.510796>,  <36.535633, 36.228172, 22.622107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323891, 36.247540, 22.510796>,  <35.970985, 36.279816, 22.325277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323891, 36.247540, 22.510796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465072, -0.302136, 0.832119,
		0.072984, -0.949844, -0.304090,
		0.882259, -0.080692, 0.463797,
		36.588570, 36.223331, 22.649935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849972, 35.820869, 22.835526>,  <35.970985, 36.279816, 22.325277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849972, 35.820869, 22.835526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200253, 35.970463, 22.957691>,  <36.410423, 36.060219, 23.030991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200253, 35.970463, 22.957691>,  <35.849972, 35.820869, 22.835526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200253, 35.970463, 22.957691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283190, -0.114509, 0.952203,
		0.391079, -0.920340, 0.005632,
		0.875706, 0.373982, 0.305413,
		36.462963, 36.082657, 23.049314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038464, 35.420235, 23.416094>,  <35.849972, 35.820869, 22.835526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038464, 35.420235, 23.416094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262299, 35.750252, 23.447491>,  <36.396599, 35.948261, 23.466330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262299, 35.750252, 23.447491>,  <36.038464, 35.420235, 23.416094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262299, 35.750252, 23.447491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127950, -0.007570, 0.991752,
		0.818835, -0.565015, 0.101328,
		0.559587, 0.825046, 0.078492,
		36.430176, 35.997765, 23.471039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622406, 35.192993, 23.908115>,  <36.038464, 35.420235, 23.416094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622406, 35.192993, 23.908115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549889, 35.586128, 23.894514>,  <36.506378, 35.822010, 23.886353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549889, 35.586128, 23.894514>,  <36.622406, 35.192993, 23.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549889, 35.586128, 23.894514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093656, 0.017165, 0.995456,
		0.978960, 0.183652, 0.088937,
		-0.181291, 0.982841, -0.034004,
		36.495502, 35.880981, 23.884314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101028, 35.529633, 24.281578>,  <36.622406, 35.192993, 23.908115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101028, 35.529633, 24.281578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801617, 35.794350, 24.298201>,  <36.621967, 35.953178, 24.308174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801617, 35.794350, 24.298201>,  <37.101028, 35.529633, 24.281578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801617, 35.794350, 24.298201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077932, 0.025564, 0.996631,
		0.658502, 0.749250, -0.070710,
		-0.748533, 0.661794, 0.041557,
		36.577057, 35.992889, 24.310667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350086, 35.824615, 24.837469>,  <37.101028, 35.529633, 24.281578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350086, 35.824615, 24.837469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990414, 35.991322, 24.784128>,  <36.774612, 36.091347, 24.752123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990414, 35.991322, 24.784128>,  <37.350086, 35.824615, 24.837469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990414, 35.991322, 24.784128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071922, 0.159845, 0.984519,
		0.431632, 0.894848, -0.113754,
		-0.899178, 0.416768, -0.133353,
		36.720661, 36.116352, 24.744122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330578, 36.493797, 25.183613>,  <37.350086, 35.824615, 24.837469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330578, 36.493797, 25.183613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970947, 36.320946, 25.155554>,  <36.755169, 36.217236, 25.138718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970947, 36.320946, 25.155554>,  <37.330578, 36.493797, 25.183613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970947, 36.320946, 25.155554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055905, -0.045592, 0.997395,
		-0.434201, 0.900659, 0.016832,
		-0.899080, -0.432129, -0.070147,
		36.701221, 36.191307, 25.134510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081657, 36.728531, 25.756998>,  <37.330578, 36.493797, 25.183613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081657, 36.728531, 25.756998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823788, 36.444443, 25.643875>,  <36.669067, 36.273991, 25.576000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823788, 36.444443, 25.643875>,  <37.081657, 36.728531, 25.756998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823788, 36.444443, 25.643875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263829, -0.140513, 0.954280,
		-0.717488, 0.689813, -0.096791,
		-0.644674, -0.710221, -0.282809,
		36.630386, 36.231377, 25.559032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441715, 36.885239, 26.096418>,  <37.081657, 36.728531, 25.756998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441715, 36.885239, 26.096418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416107, 36.495438, 26.010406>,  <36.400742, 36.261555, 25.958799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416107, 36.495438, 26.010406>,  <36.441715, 36.885239, 26.096418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416107, 36.495438, 26.010406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299071, -0.186835, 0.935761,
		-0.952081, 0.124216, -0.279486,
		-0.064019, -0.974507, -0.215032,
		36.396900, 36.203087, 25.945896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844727, 36.626728, 26.382559>,  <36.441715, 36.885239, 26.096418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844727, 36.626728, 26.382559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058830, 36.294529, 26.320892>,  <36.187294, 36.095207, 26.283894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058830, 36.294529, 26.320892>,  <35.844727, 36.626728, 26.382559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058830, 36.294529, 26.320892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163424, -0.280881, 0.945726,
		-0.828728, -0.481014, -0.286068,
		0.535259, -0.830501, -0.154165,
		36.219410, 36.045380, 26.274643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419407, 36.067627, 26.718143>,  <35.844727, 36.626728, 26.382559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419407, 36.067627, 26.718143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785007, 35.912766, 26.669617>,  <36.004368, 35.819847, 26.640501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785007, 35.912766, 26.669617>,  <35.419407, 36.067627, 26.718143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785007, 35.912766, 26.669617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025429, -0.353100, 0.935240,
		-0.404925, -0.851721, -0.332577,
		0.913996, -0.387159, -0.121321,
		36.059208, 35.796619, 26.633221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391045, 35.419434, 26.983244>,  <35.419407, 36.067627, 26.718143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391045, 35.419434, 26.983244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787205, 35.472630, 26.968212>,  <36.024902, 35.504547, 26.959192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787205, 35.472630, 26.968212>,  <35.391045, 35.419434, 26.983244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787205, 35.472630, 26.968212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090062, -0.414849, 0.905422,
		0.104821, -0.900119, -0.422846,
		0.990405, 0.132990, -0.037581,
		36.084328, 35.512527, 26.956938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684555, 34.776398, 27.073971>,  <35.391045, 35.419434, 26.983244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684555, 34.776398, 27.073971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943317, 35.056602, 27.194496>,  <36.098576, 35.224724, 27.266811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943317, 35.056602, 27.194496>,  <35.684555, 34.776398, 27.073971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943317, 35.056602, 27.194496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056842, -0.349734, 0.935123,
		0.760445, -0.622068, -0.186428,
		0.646910, 0.700513, 0.301313,
		36.137390, 35.266758, 27.284889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097275, 34.368969, 27.505657>,  <35.684555, 34.776398, 27.073971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097275, 34.368969, 27.505657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184429, 34.749714, 27.591892>,  <36.236721, 34.978161, 27.643633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184429, 34.749714, 27.591892>,  <36.097275, 34.368969, 27.505657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184429, 34.749714, 27.591892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162470, -0.253188, 0.953677,
		0.962355, -0.172768, -0.209817,
		0.217888, 0.951865, 0.215587,
		36.249794, 35.035275, 27.656569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688618, 34.375935, 27.918137>,  <36.097275, 34.368969, 27.505657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688618, 34.375935, 27.918137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515671, 34.729790, 27.987967>,  <36.411903, 34.942101, 28.029865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515671, 34.729790, 27.987967>,  <36.688618, 34.375935, 27.918137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515671, 34.729790, 27.987967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133867, -0.128486, 0.982635,
		0.891703, 0.448233, -0.062870,
		-0.432371, 0.884635, 0.174575,
		36.385960, 34.995182, 28.040339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983791, 34.529228, 28.526953>,  <36.688618, 34.375935, 27.918137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983791, 34.529228, 28.526953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 34.804482, 28.525856>,  <36.519424, 34.969635, 28.525198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693562, 34.804482, 28.525856>,  <36.983791, 34.529228, 28.526953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693562, 34.804482, 28.525856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058874, -0.058106, 0.996573,
		0.685616, 0.723253, 0.082674,
		-0.725579, 0.688134, -0.002742,
		36.475887, 35.010921, 28.525034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195656, 35.000523, 29.013794>,  <36.983791, 34.529228, 28.526953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195656, 35.000523, 29.013794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801834, 35.045616, 28.960211>,  <36.565540, 35.072670, 28.928061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801834, 35.045616, 28.960211>,  <37.195656, 35.000523, 29.013794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801834, 35.045616, 28.960211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133543, 0.011254, 0.990979,
		0.113223, 0.993562, 0.003975,
		-0.984554, 0.112732, -0.133957,
		36.506470, 35.079437, 28.920023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034664, 35.520321, 29.537611>,  <37.195656, 35.000523, 29.013794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034664, 35.520321, 29.537611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724815, 35.287529, 29.438612>,  <36.538906, 35.147854, 29.379213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724815, 35.287529, 29.438612>,  <37.034664, 35.520321, 29.537611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724815, 35.287529, 29.438612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188973, -0.160467, 0.968782,
		-0.603529, 0.797212, 0.014323,
		-0.774624, -0.581982, -0.247498,
		36.492428, 35.112934, 29.364363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622101, 35.709347, 30.038904>,  <37.034664, 35.520321, 29.537611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622101, 35.709347, 30.038904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454147, 35.369026, 29.912512>,  <36.353374, 35.164833, 29.836676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454147, 35.369026, 29.912512>,  <36.622101, 35.709347, 30.038904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454147, 35.369026, 29.912512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245606, -0.228650, 0.942017,
		-0.873715, 0.473143, -0.112955,
		-0.419881, -0.850797, -0.315981,
		36.328182, 35.113789, 29.817717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975758, 35.692284, 30.298513>,  <36.622101, 35.709347, 30.038904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975758, 35.692284, 30.298513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064770, 35.309547, 30.223747>,  <36.118176, 35.079906, 30.178888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064770, 35.309547, 30.223747>,  <35.975758, 35.692284, 30.298513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064770, 35.309547, 30.223747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272579, -0.245138, 0.930381,
		-0.936045, -0.156090, -0.315365,
		0.222532, -0.956841, -0.186913,
		36.131531, 35.022495, 30.167673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434006, 35.409416, 30.595320>,  <35.975758, 35.692284, 30.298513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434006, 35.409416, 30.595320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732510, 35.144222, 30.571472>,  <35.911613, 34.985107, 30.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732510, 35.144222, 30.571472>,  <35.434006, 35.409416, 30.595320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732510, 35.144222, 30.571472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236935, -0.348255, 0.906962,
		-0.622061, -0.662703, -0.416972,
		0.746259, -0.662981, -0.059618,
		35.956387, 34.945328, 30.553587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182034, 34.783318, 30.944561>,  <35.434006, 35.409416, 30.595320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182034, 34.783318, 30.944561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576454, 34.722389, 30.917711>,  <35.813107, 34.685833, 30.901602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576454, 34.722389, 30.917711>,  <35.182034, 34.783318, 30.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576454, 34.722389, 30.917711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013063, -0.472829, 0.881057,
		-0.165936, -0.867890, -0.468222,
		0.986050, -0.152316, -0.067122,
		35.872269, 34.676693, 30.897575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288464, 34.123043, 31.089535>,  <35.182034, 34.783318, 30.944561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288464, 34.123043, 31.089535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634583, 34.303089, 31.177765>,  <35.842255, 34.411118, 31.230703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634583, 34.303089, 31.177765>,  <35.288464, 34.123043, 31.089535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634583, 34.303089, 31.177765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008665, -0.426550, 0.904423,
		0.501181, -0.784507, -0.365193,
		0.865299, 0.450116, 0.220576,
		35.894173, 34.438126, 31.243938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665051, 33.639214, 31.432909>,  <35.288464, 34.123043, 31.089535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665051, 33.639214, 31.432909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827381, 33.989288, 31.538250>,  <35.924782, 34.199333, 31.601456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827381, 33.989288, 31.538250>,  <35.665051, 33.639214, 31.432909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827381, 33.989288, 31.538250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004958, -0.286037, 0.958206,
		0.913935, -0.390174, -0.111743,
		0.405830, 0.875184, 0.263354,
		35.949131, 34.251842, 31.617256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046543, 33.436859, 31.950115>,  <35.665051, 33.639214, 31.432909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046543, 33.436859, 31.950115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044350, 33.834099, 31.996962>,  <36.043034, 34.072445, 32.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044350, 33.834099, 31.996962>,  <36.046543, 33.436859, 31.950115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044350, 33.834099, 31.996962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097956, -0.116022, 0.988405,
		0.995176, 0.016892, -0.096644,
		-0.005484, 0.993103, 0.117117,
		36.042706, 34.132030, 32.032097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570969, 33.601437, 32.416527>,  <36.046543, 33.436859, 31.950115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570969, 33.601437, 32.416527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324017, 33.912041, 32.466915>,  <36.175846, 34.098404, 32.497150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324017, 33.912041, 32.466915>,  <36.570969, 33.601437, 32.416527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324017, 33.912041, 32.466915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044354, -0.125521, 0.991099,
		0.785412, 0.617474, 0.043053,
		-0.617382, 0.776512, 0.125974,
		36.138802, 34.144993, 32.504707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759312, 33.891766, 33.071075>,  <36.570969, 33.601437, 32.416527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759312, 33.891766, 33.071075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414940, 34.088524, 33.019184>,  <36.208317, 34.206581, 32.988049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414940, 34.088524, 33.019184>,  <36.759312, 33.891766, 33.071075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414940, 34.088524, 33.019184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053360, 0.166293, 0.984632,
		0.505913, 0.854624, -0.116919,
		-0.860933, 0.491899, -0.129733,
		36.156662, 34.236095, 32.980263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772144, 34.638599, 33.497547>,  <36.759312, 33.891766, 33.071075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772144, 34.638599, 33.497547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403145, 34.499691, 33.430141>,  <36.181744, 34.416348, 33.389698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403145, 34.499691, 33.430141>,  <36.772144, 34.638599, 33.497547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403145, 34.499691, 33.430141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190042, 0.028636, 0.981358,
		-0.335971, 0.937328, -0.092413,
		-0.922501, -0.347271, -0.168510,
		36.126396, 34.395512, 33.379589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258549, 35.215855, 33.837925>,  <36.772144, 34.638599, 33.497547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258549, 35.215855, 33.837925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049744, 34.880402, 33.775711>,  <35.924461, 34.679131, 33.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049744, 34.880402, 33.775711>,  <36.258549, 35.215855, 33.837925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049744, 34.880402, 33.775711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298664, 0.008915, 0.954317,
		-0.798937, 0.544621, -0.255123,
		-0.522015, -0.838635, -0.155536,
		35.893139, 34.628811, 33.729050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612625, 35.429165, 33.951447>,  <36.258549, 35.215855, 33.837925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612625, 35.429165, 33.951447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634014, 35.032681, 33.999855>,  <35.646847, 34.794792, 34.028900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634014, 35.032681, 33.999855>,  <35.612625, 35.429165, 33.951447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634014, 35.032681, 33.999855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411620, 0.088539, 0.907044,
		-0.909786, -0.098311, -0.403268,
		0.053468, -0.991209, 0.121019,
		35.650055, 34.735317, 34.036160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964645, 35.234985, 34.145744>,  <35.612625, 35.429165, 33.951447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964645, 35.234985, 34.145744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185638, 34.929180, 34.278584>,  <35.318233, 34.745697, 34.358288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185638, 34.929180, 34.278584>,  <34.964645, 35.234985, 34.145744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185638, 34.929180, 34.278584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566862, -0.052513, 0.822137,
		-0.611094, -0.642468, -0.462384,
		0.552478, -0.764511, 0.332100,
		35.351383, 34.699825, 34.378212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484821, 34.844254, 34.553776>,  <34.964645, 35.234985, 34.145744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484821, 34.844254, 34.553776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840092, 34.692451, 34.657406>,  <35.053253, 34.601372, 34.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840092, 34.692451, 34.657406>,  <34.484821, 34.844254, 34.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840092, 34.692451, 34.657406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328214, -0.129372, 0.935702,
		-0.321589, -0.916099, -0.239465,
		0.888176, -0.379508, 0.259072,
		35.106544, 34.578598, 34.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353973, 34.252144, 34.933422>,  <34.484821, 34.844254, 34.553776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353973, 34.252144, 34.933422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716675, 34.365612, 35.058208>,  <34.934296, 34.433693, 35.133080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716675, 34.365612, 35.058208>,  <34.353973, 34.252144, 34.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716675, 34.365612, 35.058208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342278, 0.063115, 0.937476,
		0.246244, -0.956843, 0.154324,
		0.906757, 0.283670, 0.311965,
		34.988701, 34.450714, 35.151798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322704, 33.891708, 35.529827>,  <34.353973, 34.252144, 34.933422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322704, 33.891708, 35.529827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599400, 34.180569, 35.528961>,  <34.765415, 34.353886, 35.528442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599400, 34.180569, 35.528961>,  <34.322704, 33.891708, 35.529827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599400, 34.180569, 35.528961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185608, 0.180687, 0.965868,
		0.697891, -0.667724, 0.259024,
		0.691736, 0.722147, -0.002165,
		34.806919, 34.397213, 35.528313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630802, 33.777962, 36.117054>,  <34.322704, 33.891708, 35.529827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630802, 33.777962, 36.117054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693668, 34.163597, 36.031414>,  <34.731388, 34.394978, 35.980030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693668, 34.163597, 36.031414>,  <34.630802, 33.777962, 36.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693668, 34.163597, 36.031414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051150, 0.224450, 0.973142,
		0.986247, -0.141989, 0.084588,
		0.157161, 0.964086, -0.214100,
		34.740818, 34.452824, 35.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033836, 34.007626, 36.664932>,  <34.630802, 33.777962, 36.117054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033836, 34.007626, 36.664932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905304, 34.348877, 36.500534>,  <34.828186, 34.553627, 36.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905304, 34.348877, 36.500534>,  <35.033836, 34.007626, 36.664932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905304, 34.348877, 36.500534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096974, 0.461374, 0.881890,
		0.941989, 0.243521, -0.230985,
		-0.321330, 0.853130, -0.410994,
		34.808907, 34.604816, 36.377235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559441, 34.499424, 36.843388>,  <35.033836, 34.007626, 36.664932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559441, 34.499424, 36.843388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212811, 34.691685, 36.789688>,  <35.004833, 34.807041, 36.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212811, 34.691685, 36.789688>,  <35.559441, 34.499424, 36.843388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212811, 34.691685, 36.789688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109846, 0.446130, 0.888201,
		0.486807, 0.754946, -0.439403,
		-0.866575, 0.480650, -0.134251,
		34.952839, 34.835880, 36.749413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693165, 35.099987, 37.013485>,  <35.559441, 34.499424, 36.843388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693165, 35.099987, 37.013485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296200, 35.068310, 37.051121>,  <35.058022, 35.049301, 37.073700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296200, 35.068310, 37.051121>,  <35.693165, 35.099987, 37.013485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296200, 35.068310, 37.051121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055190, 0.396879, 0.916210,
		-0.109901, 0.914448, -0.389496,
		-0.992409, -0.079197, 0.094086,
		34.998478, 35.044552, 37.079346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349094, 35.073921, 36.624718>,  <35.693165, 35.099987, 37.013485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349094, 35.073921, 36.624718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674309, 35.210091, 36.813648>,  <36.869438, 35.291794, 36.927006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674309, 35.210091, 36.813648>,  <36.349094, 35.073921, 36.624718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674309, 35.210091, 36.813648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237440, 0.546849, -0.802857,
		-0.531600, 0.764898, 0.363776,
		0.813033, 0.340424, 0.472322,
		36.918221, 35.312218, 36.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267357, 35.870308, 36.628273>,  <36.349094, 35.073921, 36.624718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267357, 35.870308, 36.628273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655899, 35.794575, 36.685722>,  <36.889023, 35.749134, 36.720192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655899, 35.794575, 36.685722>,  <36.267357, 35.870308, 36.628273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655899, 35.794575, 36.685722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233246, 0.643871, -0.728716,
		0.045498, 0.741339, 0.669587,
		0.971353, -0.189333, 0.143619,
		36.947304, 35.737774, 36.728809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621338, 36.527916, 36.751099>,  <36.267357, 35.870308, 36.628273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621338, 36.527916, 36.751099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883926, 36.267235, 36.599136>,  <37.041477, 36.110825, 36.507957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883926, 36.267235, 36.599136>,  <36.621338, 36.527916, 36.751099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883926, 36.267235, 36.599136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191231, 0.630940, -0.751895,
		0.729712, 0.420946, 0.538818,
		0.656469, -0.651705, -0.379907,
		37.080868, 36.071724, 36.485165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126450, 36.862537, 36.560944>,  <36.621338, 36.527916, 36.751099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126450, 36.862537, 36.560944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220116, 36.545612, 36.335587>,  <37.276314, 36.355457, 36.200371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220116, 36.545612, 36.335587>,  <37.126450, 36.862537, 36.560944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220116, 36.545612, 36.335587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115787, 0.598109, -0.793006,
		0.965278, 0.120458, 0.231793,
		0.234162, -0.792310, -0.563394,
		37.290363, 36.307919, 36.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753632, 37.094212, 36.155304>,  <37.126450, 36.862537, 36.560944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753632, 37.094212, 36.155304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596493, 36.780045, 35.963978>,  <37.502209, 36.591545, 35.849182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596493, 36.780045, 35.963978>,  <37.753632, 37.094212, 36.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596493, 36.780045, 35.963978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245392, 0.411741, -0.877640,
		0.886257, -0.462156, 0.030983,
		-0.392850, -0.785418, -0.478318,
		37.478638, 36.544418, 35.820484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326397, 36.798084, 35.816490>,  <37.753632, 37.094212, 36.155304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326397, 36.798084, 35.816490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996895, 36.706238, 35.609142>,  <37.799194, 36.651131, 35.484734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996895, 36.706238, 35.609142>,  <38.326397, 36.798084, 35.816490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996895, 36.706238, 35.609142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451522, 0.287237, -0.844762,
		0.342871, -0.929929, -0.132933,
		-0.823752, -0.229622, -0.518369,
		37.749767, 36.637352, 35.453632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520973, 36.450699, 35.225777>,  <38.326397, 36.798084, 35.816490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520973, 36.450699, 35.225777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153568, 36.566643, 35.118217>,  <37.933125, 36.636208, 35.053680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153568, 36.566643, 35.118217>,  <38.520973, 36.450699, 35.225777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153568, 36.566643, 35.118217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354524, 0.302699, -0.884696,
		-0.175042, -0.907940, -0.380797,
		-0.918517, 0.289860, -0.268901,
		37.878014, 36.653603, 35.037548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475143, 36.178944, 34.601570>,  <38.520973, 36.450699, 35.225777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475143, 36.178944, 34.601570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175472, 36.443867, 34.598072>,  <37.995670, 36.602821, 34.595974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175472, 36.443867, 34.598072>,  <38.475143, 36.178944, 34.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175472, 36.443867, 34.598072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203016, 0.217041, -0.954818,
		-0.630487, -0.717106, -0.297061,
		-0.749180, 0.662309, -0.008742,
		37.950718, 36.642559, 34.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072712, 36.087097, 34.062519>,  <38.475143, 36.178944, 34.601570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072712, 36.087097, 34.062519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928886, 36.455311, 34.123611>,  <37.842590, 36.676239, 34.160267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928886, 36.455311, 34.123611>,  <38.072712, 36.087097, 34.062519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928886, 36.455311, 34.123611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120294, 0.116585, -0.985869,
		-0.925334, -0.372856, 0.068815,
		-0.359564, 0.920536, 0.152732,
		37.821018, 36.731472, 34.169430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548016, 36.327061, 33.538738>,  <38.072712, 36.087097, 34.062519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548016, 36.327061, 33.538738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667896, 36.684738, 33.671764>,  <37.739822, 36.899345, 33.751579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667896, 36.684738, 33.671764>,  <37.548016, 36.327061, 33.538738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667896, 36.684738, 33.671764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039414, 0.359894, -0.932160,
		-0.953219, 0.266260, 0.143103,
		0.299699, 0.894193, 0.332564,
		37.757805, 36.952995, 33.771534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039074, 36.849392, 33.327682>,  <37.548016, 36.327061, 33.538738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039074, 36.849392, 33.327682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398361, 37.012554, 33.393188>,  <37.613934, 37.110451, 33.432491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398361, 37.012554, 33.393188>,  <37.039074, 36.849392, 33.327682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398361, 37.012554, 33.393188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043119, 0.452536, -0.890703,
		-0.437431, 0.792984, 0.424064,
		0.898218, 0.407906, 0.163761,
		37.667828, 37.134926, 33.442318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915798, 37.508141, 33.154858>,  <37.039074, 36.849392, 33.327682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915798, 37.508141, 33.154858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314934, 37.532459, 33.164787>,  <37.554417, 37.547050, 33.170746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314934, 37.532459, 33.164787>,  <36.915798, 37.508141, 33.154858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314934, 37.532459, 33.164787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007087, 0.276046, -0.961118,
		-0.065288, 0.959219, 0.275019,
		0.997841, 0.060801, 0.024821,
		37.614285, 37.550701, 33.172234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140518, 38.134327, 32.884850>,  <36.915798, 37.508141, 33.154858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140518, 38.134327, 32.884850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456226, 37.898872, 32.814926>,  <37.645649, 37.757599, 32.772972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456226, 37.898872, 32.814926>,  <37.140518, 38.134327, 32.884850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456226, 37.898872, 32.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062061, 0.206756, -0.976422,
		0.610904, 0.781508, 0.126654,
		0.789269, -0.588640, -0.174809,
		37.693008, 37.722279, 32.762482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660992, 38.572937, 32.460247>,  <37.140518, 38.134327, 32.884850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660992, 38.572937, 32.460247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718327, 38.180382, 32.409122>,  <37.752728, 37.944851, 32.378448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718327, 38.180382, 32.409122>,  <37.660992, 38.572937, 32.460247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718327, 38.180382, 32.409122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094936, 0.142182, -0.985277,
		0.985110, 0.129093, 0.113549,
		0.143337, -0.981387, -0.127809,
		37.761326, 37.885967, 32.370781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240074, 38.524338, 32.026173>,  <37.660992, 38.572937, 32.460247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240074, 38.524338, 32.026173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093079, 38.153622, 31.995163>,  <38.004879, 37.931190, 31.976557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093079, 38.153622, 31.995163>,  <38.240074, 38.524338, 32.026173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093079, 38.153622, 31.995163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361170, -0.065399, -0.930204,
		0.857034, -0.369841, 0.358763,
		-0.367491, -0.926790, -0.077526,
		37.982830, 37.875584, 31.971905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767662, 38.116062, 31.659307>,  <38.240074, 38.524338, 32.026173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767662, 38.116062, 31.659307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432961, 37.897297, 31.648546>,  <38.232140, 37.766037, 31.642090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432961, 37.897297, 31.648546>,  <38.767662, 38.116062, 31.659307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432961, 37.897297, 31.648546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188177, -0.241070, -0.952089,
		0.514224, -0.801731, 0.304634,
		-0.836757, -0.546912, -0.026903,
		38.181934, 37.733223, 31.640474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937859, 37.390957, 31.409832>,  <38.767662, 38.116062, 31.659307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937859, 37.390957, 31.409832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548286, 37.438305, 31.332432>,  <38.314541, 37.466713, 31.285992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548286, 37.438305, 31.332432>,  <38.937859, 37.390957, 31.409832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548286, 37.438305, 31.332432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128818, -0.413509, -0.901341,
		-0.186706, -0.902773, 0.387482,
		-0.973934, 0.118371, -0.193498,
		38.256107, 37.473816, 31.274382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789467, 36.778225, 30.991684>,  <38.937859, 37.390957, 31.409832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789467, 36.778225, 30.991684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496922, 37.047096, 30.945578>,  <38.321396, 37.208420, 30.917913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496922, 37.047096, 30.945578>,  <38.789467, 36.778225, 30.991684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496922, 37.047096, 30.945578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000650, -0.168329, -0.985731,
		-0.681990, -0.721000, 0.122673,
		-0.731362, 0.672178, -0.115267,
		38.277512, 37.248749, 30.910997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275177, 36.402073, 30.717861>,  <38.789467, 36.778225, 30.991684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275177, 36.402073, 30.717861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234165, 36.780186, 30.593971>,  <38.209557, 37.007053, 30.519638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234165, 36.780186, 30.593971>,  <38.275177, 36.402073, 30.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234165, 36.780186, 30.593971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114461, -0.320508, -0.940305,
		-0.988123, -0.060959, 0.141060,
		-0.102531, 0.945283, -0.309723,
		38.203407, 37.063770, 30.501055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797836, 36.404259, 30.252699>,  <38.275177, 36.402073, 30.717861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797836, 36.404259, 30.252699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 36.753517, 30.143171>,  <38.055943, 36.963070, 30.077456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959152, 36.753517, 30.143171>,  <37.797836, 36.404259, 30.252699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959152, 36.753517, 30.143171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242054, -0.186781, -0.952115,
		-0.882476, 0.450261, 0.136020,
		0.403294, 0.873143, -0.273818,
		38.080139, 37.015461, 30.061026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523746, 36.618614, 29.698399>,  <37.797836, 36.404259, 30.252699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523746, 36.618614, 29.698399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814888, 36.889347, 29.654358>,  <37.989574, 37.051788, 29.627934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814888, 36.889347, 29.654358>,  <37.523746, 36.618614, 29.698399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814888, 36.889347, 29.654358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040144, -0.118230, -0.992174,
		-0.684555, 0.726579, -0.058884,
		0.727855, 0.676834, -0.110103,
		38.033245, 37.092396, 29.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375763, 37.065136, 29.150595>,  <37.523746, 36.618614, 29.698399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375763, 37.065136, 29.150595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774582, 37.080769, 29.177029>,  <38.013874, 37.090149, 29.192888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774582, 37.080769, 29.177029>,  <37.375763, 37.065136, 29.150595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774582, 37.080769, 29.177029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075424, -0.337683, -0.938233,
		-0.014353, 0.940448, -0.339634,
		0.997048, 0.039083, 0.066086,
		38.073696, 37.092495, 29.196854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433205, 37.402748, 28.564041>,  <37.375763, 37.065136, 29.150595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433205, 37.402748, 28.564041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801537, 37.286457, 28.667999>,  <38.022537, 37.216682, 28.730373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801537, 37.286457, 28.667999>,  <37.433205, 37.402748, 28.564041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801537, 37.286457, 28.667999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199639, -0.221048, -0.954611,
		0.334982, 0.930921, -0.145508,
		0.920832, -0.290729, 0.259895,
		38.077785, 37.199238, 28.745968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942242, 37.756481, 28.093699>,  <37.433205, 37.402748, 28.564041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942242, 37.756481, 28.093699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100212, 37.423187, 28.248491>,  <38.194992, 37.223209, 28.341366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100212, 37.423187, 28.248491>,  <37.942242, 37.756481, 28.093699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100212, 37.423187, 28.248491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378896, -0.236008, -0.894840,
		0.836944, 0.500017, 0.222506,
		0.394922, -0.833237, 0.386980,
		38.218689, 37.173218, 28.364586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632664, 37.720448, 27.671284>,  <37.942242, 37.756481, 28.093699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632664, 37.720448, 27.671284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535965, 37.367107, 27.831911>,  <38.477947, 37.155106, 27.928288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535965, 37.367107, 27.831911>,  <38.632664, 37.720448, 27.671284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535965, 37.367107, 27.831911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399472, -0.467747, -0.788438,
		0.884297, -0.030185, 0.465948,
		-0.241745, -0.883347, 0.401569,
		38.463440, 37.102104, 27.952381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235222, 37.345631, 27.536869>,  <38.632664, 37.720448, 27.671284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235222, 37.345631, 27.536869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969826, 37.058144, 27.620037>,  <38.810589, 36.885651, 27.669939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969826, 37.058144, 27.620037>,  <39.235222, 37.345631, 27.536869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969826, 37.058144, 27.620037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292879, -0.505215, -0.811776,
		0.688483, -0.477706, 0.545700,
		-0.663486, -0.718718, 0.207922,
		38.770779, 36.842529, 27.682413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644554, 36.659718, 27.567112>,  <39.235222, 37.345631, 27.536869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644554, 36.659718, 27.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264843, 36.577808, 27.471666>,  <39.037018, 36.528664, 27.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264843, 36.577808, 27.471666>,  <39.644554, 36.659718, 27.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264843, 36.577808, 27.471666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312927, -0.541005, -0.780634,
		0.030764, -0.815708, 0.577645,
		-0.949279, -0.204776, -0.238614,
		38.980061, 36.516376, 27.400082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490627, 35.919659, 27.435221>,  <39.644554, 36.659718, 27.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490627, 35.919659, 27.435221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240353, 36.157738, 27.233522>,  <39.090187, 36.300583, 27.112503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240353, 36.157738, 27.233522>,  <39.490627, 35.919659, 27.435221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240353, 36.157738, 27.233522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270441, -0.440808, -0.855891,
		-0.731697, -0.671886, 0.114842,
		-0.625685, 0.595195, -0.504243,
		39.052647, 36.336296, 27.082249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601337, 35.670986, 26.849344>,  <39.490627, 35.919659, 27.435221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601337, 35.670986, 26.849344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340202, 35.960770, 26.760830>,  <39.183521, 36.134640, 26.707722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340202, 35.960770, 26.760830>,  <39.601337, 35.670986, 26.849344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340202, 35.960770, 26.760830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075751, -0.228227, -0.970657,
		-0.753703, -0.650442, 0.094116,
		-0.652835, 0.724457, -0.221287,
		39.144352, 36.178108, 26.694445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939480, 35.442955, 26.501791>,  <39.601337, 35.670986, 26.849344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939480, 35.442955, 26.501791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024967, 35.814514, 26.380810>,  <39.076260, 36.037449, 26.308220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024967, 35.814514, 26.380810>,  <38.939480, 35.442955, 26.501791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024967, 35.814514, 26.380810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384666, -0.364613, -0.847991,
		-0.897974, 0.064885, -0.435239,
		0.213716, 0.928896, -0.302454,
		39.089081, 36.093182, 26.290073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608700, 35.527481, 25.902708>,  <38.939480, 35.442955, 26.501791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608700, 35.527481, 25.902708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873478, 35.825592, 25.870731>,  <39.032345, 36.004459, 25.851545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873478, 35.825592, 25.870731>,  <38.608700, 35.527481, 25.902708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873478, 35.825592, 25.870731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327101, -0.383184, -0.863814,
		-0.674415, 0.545647, -0.497427,
		0.661944, 0.745278, -0.079944,
		39.072060, 36.049175, 25.846748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517338, 35.746395, 25.298473>,  <38.608700, 35.527481, 25.902708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517338, 35.746395, 25.298473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875919, 35.910938, 25.364391>,  <39.091068, 36.009666, 25.403942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875919, 35.910938, 25.364391>,  <38.517338, 35.746395, 25.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875919, 35.910938, 25.364391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224014, -0.099798, -0.969463,
		-0.382352, 0.905993, -0.181615,
		0.896451, 0.411361, 0.164797,
		39.144855, 36.034348, 25.413830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594105, 36.331753, 24.828648>,  <38.517338, 35.746395, 25.298473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594105, 36.331753, 24.828648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964096, 36.228573, 24.940273>,  <39.186092, 36.166664, 25.007248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964096, 36.228573, 24.940273>,  <38.594105, 36.331753, 24.828648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964096, 36.228573, 24.940273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288724, -0.000450, -0.957412,
		0.247094, 0.966157, 0.074062,
		0.924977, -0.257954, 0.279064,
		39.241589, 36.151188, 25.023993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024460, 36.683823, 24.430655>,  <38.594105, 36.331753, 24.828648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024460, 36.683823, 24.430655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260696, 36.401302, 24.586779>,  <39.402439, 36.231789, 24.680452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260696, 36.401302, 24.586779>,  <39.024460, 36.683823, 24.430655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260696, 36.401302, 24.586779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399163, -0.164670, -0.901972,
		0.701334, 0.688495, 0.184676,
		0.590592, -0.706299, 0.390310,
		39.437874, 36.189411, 24.703873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660210, 36.906853, 24.298904>,  <39.024460, 36.683823, 24.430655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660210, 36.906853, 24.298904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683372, 36.510841, 24.350281>,  <39.697269, 36.273235, 24.381105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683372, 36.510841, 24.350281>,  <39.660210, 36.906853, 24.298904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683372, 36.510841, 24.350281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396411, -0.095276, -0.913116,
		0.916245, 0.103788, 0.386941,
		0.057905, -0.990025, 0.128439,
		39.700745, 36.213833, 24.388813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342148, 36.663422, 23.923552>,  <39.660210, 36.906853, 24.298904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342148, 36.663422, 23.923552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116531, 36.335133, 23.959930>,  <39.981159, 36.138161, 23.981758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116531, 36.335133, 23.959930>,  <40.342148, 36.663422, 23.923552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116531, 36.335133, 23.959930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219878, -0.255444, -0.941489,
		0.795932, -0.511045, 0.324540,
		-0.564045, -0.820720, 0.090949,
		39.947319, 36.088917, 23.987215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710583, 36.095798, 23.706127>,  <40.342148, 36.663422, 23.923552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710583, 36.095798, 23.706127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333210, 35.979424, 23.642523>,  <40.106785, 35.909599, 23.604361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333210, 35.979424, 23.642523>,  <40.710583, 36.095798, 23.706127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333210, 35.979424, 23.642523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207979, -0.145807, -0.967205,
		0.258212, -0.945566, 0.198069,
		-0.943436, -0.290939, -0.159009,
		40.050179, 35.892143, 23.594820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101864, 36.309662, 23.069777>,  <40.710583, 36.095798, 23.706127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101864, 36.309662, 23.069777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499039, 36.298939, 23.023550>,  <41.737343, 36.292507, 22.995813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499039, 36.298939, 23.023550>,  <41.101864, 36.309662, 23.069777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499039, 36.298939, 23.023550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117569, 0.352608, 0.928356,
		0.015865, -0.935387, 0.353269,
		0.992938, -0.026806, -0.115567,
		41.796921, 36.290897, 22.988880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396584, 35.875675, 23.675795>,  <41.101864, 36.309662, 23.069777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396584, 35.875675, 23.675795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705486, 36.093475, 23.544865>,  <41.890827, 36.224155, 23.466307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705486, 36.093475, 23.544865>,  <41.396584, 35.875675, 23.675795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705486, 36.093475, 23.544865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274616, 0.178508, 0.944839,
		0.572899, -0.819543, -0.011676,
		0.772252, 0.544503, -0.327327,
		41.937160, 36.256824, 23.446667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006210, 35.622765, 23.959173>,  <41.396584, 35.875675, 23.675795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006210, 35.622765, 23.959173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097530, 35.997227, 23.852224>,  <42.152321, 36.221905, 23.788055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097530, 35.997227, 23.852224>,  <42.006210, 35.622765, 23.959173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097530, 35.997227, 23.852224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217142, 0.218748, 0.951314,
		0.949067, -0.275242, -0.153339,
		0.228299, 0.936157, -0.267373,
		42.166019, 36.278072, 23.772013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666912, 35.609814, 24.147873>,  <42.006210, 35.622765, 23.959173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666912, 35.609814, 24.147873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525394, 35.983643, 24.132858>,  <42.440483, 36.207939, 24.123850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525394, 35.983643, 24.132858>,  <42.666912, 35.609814, 24.147873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525394, 35.983643, 24.132858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287650, 0.146906, 0.946401,
		0.889992, 0.324036, -0.320804,
		-0.353796, 0.934569, -0.037537,
		42.419254, 36.264015, 24.121597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134727, 35.971714, 24.598724>,  <42.666912, 35.609814, 24.147873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134727, 35.971714, 24.598724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815063, 36.210526, 24.570698>,  <42.623264, 36.353813, 24.553883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815063, 36.210526, 24.570698>,  <43.134727, 35.971714, 24.598724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815063, 36.210526, 24.570698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033338, 0.160396, 0.986489,
		0.600197, 0.786024, -0.148085,
		-0.799157, 0.597025, -0.070065,
		42.575317, 36.389633, 24.549679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280170, 36.489361, 25.076374>,  <43.134727, 35.971714, 24.598724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280170, 36.489361, 25.076374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890644, 36.550671, 25.009216>,  <42.656929, 36.587456, 24.968922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890644, 36.550671, 25.009216>,  <43.280170, 36.489361, 25.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890644, 36.550671, 25.009216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126198, 0.249827, 0.960032,
		0.189090, 0.956083, -0.223943,
		-0.973817, 0.153272, -0.167895,
		42.598499, 36.596653, 24.958847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153748, 37.122448, 25.363289>,  <43.280170, 36.489361, 25.076374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153748, 37.122448, 25.363289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798542, 36.938805, 25.353056>,  <42.585419, 36.828617, 25.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798542, 36.938805, 25.353056>,  <43.153748, 37.122448, 25.363289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798542, 36.938805, 25.353056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170818, 0.277715, 0.945355,
		-0.426917, 0.843855, -0.325038,
		-0.888010, -0.459111, -0.025584,
		42.532139, 36.801071, 25.345381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668701, 37.625881, 25.724667>,  <43.153748, 37.122448, 25.363289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668701, 37.625881, 25.724667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481312, 37.273026, 25.705214>,  <42.368877, 37.061314, 25.693541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481312, 37.273026, 25.705214>,  <42.668701, 37.625881, 25.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481312, 37.273026, 25.705214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493123, 0.215409, 0.842869,
		-0.733052, 0.418842, -0.535916,
		-0.468470, -0.882140, -0.048634,
		42.340771, 37.008385, 25.690624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926327, 37.813984, 25.802444>,  <42.668701, 37.625881, 25.724667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926327, 37.813984, 25.802444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993904, 37.434185, 25.908203>,  <42.034451, 37.206306, 25.971659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993904, 37.434185, 25.908203>,  <41.926327, 37.813984, 25.802444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993904, 37.434185, 25.908203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507921, 0.146016, 0.848938,
		-0.844673, -0.277717, -0.457603,
		0.168947, -0.949501, 0.264394,
		42.044590, 37.149334, 25.987522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327507, 37.557243, 26.174006>,  <41.926327, 37.813984, 25.802444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327507, 37.557243, 26.174006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606953, 37.292286, 26.282213>,  <41.774620, 37.133312, 26.347137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606953, 37.292286, 26.282213>,  <41.327507, 37.557243, 26.174006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606953, 37.292286, 26.282213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361499, -0.000489, 0.932372,
		-0.617462, -0.749159, -0.239794,
		0.698612, -0.662390, 0.270518,
		41.816536, 37.093571, 26.363369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992832, 36.911655, 26.438951>,  <41.327507, 37.557243, 26.174006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992832, 36.911655, 26.438951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349171, 36.928368, 26.619902>,  <41.562973, 36.938396, 26.728472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349171, 36.928368, 26.619902>,  <40.992832, 36.911655, 26.438951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349171, 36.928368, 26.619902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450969, -0.039079, 0.891684,
		0.054937, -0.998362, -0.015970,
		0.890847, 0.041784, 0.452377,
		41.616425, 36.940903, 26.755615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833820, 36.608963, 27.064636>,  <40.992832, 36.911655, 26.438951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833820, 36.608963, 27.064636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200237, 36.748459, 27.143875>,  <41.420090, 36.832157, 27.191418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.200237, 36.748459, 27.143875>,  <40.833820, 36.608963, 27.064636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200237, 36.748459, 27.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255995, 0.128168, 0.958144,
		0.308753, -0.928415, 0.206683,
		0.916045, 0.348739, 0.198097,
		41.475052, 36.853081, 27.203304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890102, 36.530567, 27.783600>,  <40.833820, 36.608963, 27.064636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890102, 36.530567, 27.783600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170036, 36.799049, 27.685846>,  <41.337997, 36.960136, 27.627193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170036, 36.799049, 27.685846>,  <40.890102, 36.530567, 27.783600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170036, 36.799049, 27.685846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112481, 0.441408, 0.890229,
		0.705397, -0.595521, 0.384408,
		0.699831, 0.671203, -0.244383,
		41.379986, 37.000412, 27.612532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471024, 36.667225, 28.304634>,  <40.890102, 36.530567, 27.783600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471024, 36.667225, 28.304634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433399, 37.007446, 28.097673>,  <41.410824, 37.211578, 27.973497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433399, 37.007446, 28.097673>,  <41.471024, 36.667225, 28.304634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433399, 37.007446, 28.097673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136370, 0.503801, 0.852988,
		0.986183, 0.150787, 0.068605,
		-0.094057, 0.850557, -0.517403,
		41.405182, 37.262615, 27.942453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968086, 37.199913, 28.656971>,  <41.471024, 36.667225, 28.304634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968086, 37.199913, 28.656971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687073, 37.388119, 28.443405>,  <41.518463, 37.501041, 28.315266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687073, 37.388119, 28.443405>,  <41.968086, 37.199913, 28.656971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687073, 37.388119, 28.443405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393938, 0.367698, 0.842384,
		0.592670, 0.802133, -0.072969,
		-0.702535, 0.470510, -0.533915,
		41.476311, 37.529270, 28.283230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043827, 37.781071, 28.891047>,  <41.968086, 37.199913, 28.656971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043827, 37.781071, 28.891047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681763, 37.791897, 28.721361>,  <41.464523, 37.798393, 28.619551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681763, 37.791897, 28.721361>,  <42.043827, 37.781071, 28.891047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681763, 37.791897, 28.721361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368427, 0.447803, 0.814698,
		0.212014, 0.893722, -0.395361,
		-0.905158, 0.027066, -0.424212,
		41.410213, 37.800018, 28.594097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882393, 38.485744, 28.892101>,  <42.043827, 37.781071, 28.891047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882393, 38.485744, 28.892101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547966, 38.271019, 28.846825>,  <41.347309, 38.142181, 28.819658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547966, 38.271019, 28.846825>,  <41.882393, 38.485744, 28.892101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547966, 38.271019, 28.846825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332423, 0.331562, 0.882928,
		-0.436440, 0.775819, -0.455660,
		-0.836071, -0.536817, -0.113192,
		41.297146, 38.109974, 28.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428650, 38.834301, 29.147806>,  <41.882393, 38.485744, 28.892101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428650, 38.834301, 29.147806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217213, 38.494781, 29.152220>,  <41.090351, 38.291069, 29.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217213, 38.494781, 29.152220>,  <41.428650, 38.834301, 29.147806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217213, 38.494781, 29.152220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388915, 0.253712, 0.885650,
		-0.754541, 0.463858, -0.464223,
		-0.528595, -0.848803, 0.011035,
		41.058636, 38.240139, 29.155531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743042, 39.114391, 29.541386>,  <41.428650, 38.834301, 29.147806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743042, 39.114391, 29.541386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740223, 38.714455, 29.534967>,  <40.738533, 38.474491, 29.531116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740223, 38.714455, 29.534967>,  <40.743042, 39.114391, 29.541386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740223, 38.714455, 29.534967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294631, -0.013259, 0.955519,
		-0.955585, 0.011464, -0.294492,
		-0.007049, -0.999846, -0.016048,
		40.738110, 38.414501, 29.530153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220207, 38.895973, 29.945002>,  <40.743042, 39.114391, 29.541386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220207, 38.895973, 29.945002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428585, 38.554691, 29.934723>,  <40.553612, 38.349922, 29.928556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428585, 38.554691, 29.934723>,  <40.220207, 38.895973, 29.945002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428585, 38.554691, 29.934723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175348, -0.136427, 0.975008,
		-0.835386, -0.503419, -0.220679,
		0.520944, -0.853204, -0.025695,
		40.584869, 38.298729, 29.927013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812557, 38.389530, 30.362411>,  <40.220207, 38.895973, 29.945002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812557, 38.389530, 30.362411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192249, 38.265282, 30.342545>,  <40.420067, 38.190731, 30.330626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192249, 38.265282, 30.342545>,  <39.812557, 38.389530, 30.362411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192249, 38.265282, 30.342545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086263, -0.408872, 0.908506,
		-0.302509, -0.858101, -0.414911,
		0.949234, -0.310623, -0.049665,
		40.477020, 38.172092, 30.327644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746204, 37.774349, 30.631775>,  <39.812557, 38.389530, 30.362411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746204, 37.774349, 30.631775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136574, 37.845184, 30.682707>,  <40.370796, 37.887684, 30.713266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136574, 37.845184, 30.682707>,  <39.746204, 37.774349, 30.631775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136574, 37.845184, 30.682707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057381, -0.354772, 0.933190,
		0.210430, -0.918029, -0.336068,
		0.975923, 0.177088, 0.127332,
		40.429352, 37.898312, 30.720907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020824, 37.153687, 30.898928>,  <39.746204, 37.774349, 30.631775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020824, 37.153687, 30.898928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274689, 37.450443, 30.985456>,  <40.427010, 37.628498, 31.037374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274689, 37.450443, 30.985456>,  <40.020824, 37.153687, 30.898928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274689, 37.450443, 30.985456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255956, -0.062319, 0.964678,
		0.729169, -0.667615, 0.150341,
		0.634665, 0.741894, 0.216321,
		40.465088, 37.673012, 31.050352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577869, 36.932793, 31.258429>,  <40.020824, 37.153687, 30.898928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577869, 36.932793, 31.258429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549007, 37.316288, 31.368414>,  <40.531689, 37.546387, 31.434404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549007, 37.316288, 31.368414>,  <40.577869, 36.932793, 31.258429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549007, 37.316288, 31.368414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064091, -0.279570, 0.957984,
		0.995332, 0.051505, 0.081620,
		-0.072160, 0.958743, 0.274964,
		40.527359, 37.603912, 31.450903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983074, 36.994801, 31.855171>,  <40.577869, 36.932793, 31.258429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983074, 36.994801, 31.855171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734577, 37.307911, 31.869722>,  <40.585480, 37.495777, 31.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734577, 37.307911, 31.869722>,  <40.983074, 36.994801, 31.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734577, 37.307911, 31.869722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003069, -0.048851, 0.998801,
		0.783611, 0.620387, 0.032750,
		-0.621244, 0.782773, 0.036376,
		40.548203, 37.542744, 31.880634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105732, 37.369278, 32.525349>,  <40.983074, 36.994801, 31.855171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105732, 37.369278, 32.525349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768776, 37.559765, 32.424480>,  <40.566601, 37.674057, 32.363960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768776, 37.559765, 32.424480>,  <41.105732, 37.369278, 32.525349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768776, 37.559765, 32.424480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253132, 0.063405, 0.965352,
		0.475705, 0.877039, 0.067134,
		-0.842395, 0.476217, -0.252169,
		40.516056, 37.702629, 32.348831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103329, 38.052940, 32.917030>,  <41.105732, 37.369278, 32.525349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103329, 38.052940, 32.917030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717056, 37.984921, 32.838493>,  <40.485294, 37.944111, 32.791370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717056, 37.984921, 32.838493>,  <41.103329, 38.052940, 32.917030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717056, 37.984921, 32.838493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195865, -0.019756, 0.980432,
		-0.170597, 0.985238, -0.014228,
		-0.965678, -0.170046, -0.196344,
		40.427353, 37.933907, 32.779591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784771, 38.422653, 33.335613>,  <41.103329, 38.052940, 32.917030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784771, 38.422653, 33.335613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513851, 38.144569, 33.239326>,  <40.351299, 37.977718, 33.181557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513851, 38.144569, 33.239326>,  <40.784771, 38.422653, 33.335613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513851, 38.144569, 33.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179947, -0.160707, 0.970460,
		-0.713359, 0.700610, -0.016254,
		-0.677302, -0.695211, -0.240715,
		40.310661, 37.936005, 33.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244289, 38.532906, 33.800301>,  <40.784771, 38.422653, 33.335613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244289, 38.532906, 33.800301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168827, 38.160252, 33.676060>,  <40.123550, 37.936661, 33.601517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168827, 38.160252, 33.676060>,  <40.244289, 38.532906, 33.800301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168827, 38.160252, 33.676060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244680, -0.261715, 0.933615,
		-0.951074, 0.252128, -0.178578,
		-0.188654, -0.931631, -0.310601,
		40.112232, 37.880764, 33.582878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709885, 38.195675, 34.307411>,  <40.244289, 38.532906, 33.800301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709885, 38.195675, 34.307411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898312, 37.895267, 34.122337>,  <40.011368, 37.715023, 34.011292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898312, 37.895267, 34.122337>,  <39.709885, 38.195675, 34.307411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898312, 37.895267, 34.122337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052517, -0.547472, 0.835174,
		-0.880535, -0.369121, -0.297335,
		0.471063, -0.751015, -0.462683,
		40.039631, 37.669964, 33.983532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386414, 37.554237, 34.545063>,  <39.709885, 38.195675, 34.307411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386414, 37.554237, 34.545063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748821, 37.457985, 34.405792>,  <39.966267, 37.400234, 34.322227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.748821, 37.457985, 34.405792>,  <39.386414, 37.554237, 34.545063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748821, 37.457985, 34.405792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135820, -0.613836, 0.777662,
		-0.400857, -0.751864, -0.523463,
		0.906017, -0.240634, -0.348179,
		40.020626, 37.385796, 34.301338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392361, 36.846703, 34.496628>,  <39.386414, 37.554237, 34.545063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392361, 36.846703, 34.496628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775887, 36.960220, 34.491932>,  <40.006001, 37.028332, 34.489117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775887, 36.960220, 34.491932>,  <39.392361, 36.846703, 34.496628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775887, 36.960220, 34.491932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165498, -0.524606, 0.835104,
		0.230840, -0.802652, -0.549966,
		0.958813, 0.283794, -0.011738,
		40.063530, 37.045357, 34.488411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870335, 36.265320, 34.500813>,  <39.392361, 36.846703, 34.496628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870335, 36.265320, 34.500813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075218, 36.573170, 34.653301>,  <40.198147, 36.757877, 34.744793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075218, 36.573170, 34.653301>,  <39.870335, 36.265320, 34.500813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075218, 36.573170, 34.653301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209387, -0.542369, 0.813630,
		0.832948, -0.336925, -0.438953,
		0.512206, 0.769622, 0.381217,
		40.228882, 36.804058, 34.767666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443844, 35.944012, 34.852631>,  <39.870335, 36.265320, 34.500813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443844, 35.944012, 34.852631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415794, 36.306747, 35.018871>,  <40.398964, 36.524387, 35.118618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415794, 36.306747, 35.018871>,  <40.443844, 35.944012, 34.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415794, 36.306747, 35.018871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121012, -0.405822, 0.905905,
		0.990171, 0.113816, -0.081282,
		-0.070121, 0.906838, 0.415606,
		40.394756, 36.578800, 35.143555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958241, 35.881096, 35.364937>,  <40.443844, 35.944012, 34.852631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958241, 35.881096, 35.364937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744038, 36.199429, 35.477993>,  <40.615517, 36.390427, 35.545826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744038, 36.199429, 35.477993>,  <40.958241, 35.881096, 35.364937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744038, 36.199429, 35.477993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237829, -0.179024, 0.954666,
		0.810351, 0.578452, -0.093403,
		-0.535508, 0.795829, 0.282645,
		40.583385, 36.438179, 35.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326340, 36.290119, 36.029388>,  <40.958241, 35.881096, 35.364937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326340, 36.290119, 36.029388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957233, 36.442745, 36.050964>,  <40.735771, 36.534321, 36.063911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957233, 36.442745, 36.050964>,  <41.326340, 36.290119, 36.029388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957233, 36.442745, 36.050964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103077, 0.109525, 0.988625,
		0.371321, 0.917829, -0.140397,
		-0.922765, 0.381569, 0.053939,
		40.680405, 36.557217, 36.067146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314957, 36.797253, 36.547474>,  <41.326340, 36.290119, 36.029388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314957, 36.797253, 36.547474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918716, 36.747616, 36.524429>,  <40.680973, 36.717834, 36.510605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918716, 36.747616, 36.524429>,  <41.314957, 36.797253, 36.547474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918716, 36.747616, 36.524429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073778, 0.129917, 0.988776,
		-0.115215, 0.983729, -0.137851,
		-0.990597, -0.124092, -0.057609,
		40.621536, 36.710388, 36.507145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959427, 37.365936, 37.009212>,  <41.314957, 36.797253, 36.547474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959427, 37.365936, 37.009212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700123, 37.061821, 36.992626>,  <40.544540, 36.879353, 36.982674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700123, 37.061821, 36.992626>,  <40.959427, 37.365936, 37.009212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700123, 37.061821, 36.992626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154519, 0.078036, 0.984903,
		-0.745573, 0.644884, -0.168066,
		-0.648263, -0.760286, -0.041466,
		40.505646, 36.833736, 36.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396229, 37.555988, 37.399109>,  <40.959427, 37.365936, 37.009212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396229, 37.555988, 37.399109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357952, 37.157913, 37.390678>,  <40.334988, 36.919067, 37.385620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357952, 37.157913, 37.390678>,  <40.396229, 37.555988, 37.399109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357952, 37.157913, 37.390678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137971, -0.007713, 0.990406,
		-0.985803, 0.097684, -0.136569,
		-0.095693, -0.995188, -0.021081,
		40.329243, 36.859356, 37.384354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972950, 37.438595, 38.011375>,  <40.396229, 37.555988, 37.399109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972950, 37.438595, 38.011375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118233, 37.072666, 37.940735>,  <40.205402, 36.853111, 37.898350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118233, 37.072666, 37.940735>,  <39.972950, 37.438595, 38.011375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118233, 37.072666, 37.940735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202499, -0.262525, 0.943438,
		-0.909438, -0.306898, -0.280600,
		0.363204, -0.914819, -0.176604,
		40.227196, 36.798222, 37.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490494, 36.900581, 38.357933>,  <39.972950, 37.438595, 38.011375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490494, 36.900581, 38.357933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840752, 36.711494, 38.318352>,  <40.050907, 36.598042, 38.294601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840752, 36.711494, 38.318352>,  <39.490494, 36.900581, 38.357933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840752, 36.711494, 38.318352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051446, -0.112429, 0.992327,
		-0.480212, -0.874015, -0.074128,
		0.875643, -0.472714, -0.098955,
		40.103443, 36.569679, 38.288666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440170, 36.291691, 38.696495>,  <39.490494, 36.900581, 38.357933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440170, 36.291691, 38.696495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827324, 36.391178, 38.681816>,  <40.059616, 36.450871, 38.673008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827324, 36.391178, 38.681816>,  <39.440170, 36.291691, 38.696495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827324, 36.391178, 38.681816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122982, -0.341078, 0.931956,
		0.219281, -0.906534, -0.360710,
		0.967880, 0.248721, -0.036696,
		40.117687, 36.465794, 38.670807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795025, 35.707062, 39.032257>,  <39.440170, 36.291691, 38.696495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795025, 35.707062, 39.032257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039906, 36.023315, 39.036495>,  <40.186832, 36.213066, 39.039040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039906, 36.023315, 39.036495>,  <39.795025, 35.707062, 39.032257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039906, 36.023315, 39.036495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098450, -0.089515, 0.991108,
		0.784552, -0.605710, -0.132639,
		0.612197, 0.790634, 0.010597,
		40.223564, 36.260506, 39.039673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328880, 35.488926, 39.472923>,  <39.795025, 35.707062, 39.032257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328880, 35.488926, 39.472923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323212, 35.888863, 39.468712>,  <40.319813, 36.128826, 39.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323212, 35.888863, 39.468712>,  <40.328880, 35.488926, 39.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323212, 35.888863, 39.468712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155111, 0.012601, 0.987817,
		0.987796, 0.012364, -0.155265,
		-0.014170, 0.999844, -0.010529,
		40.318962, 36.188816, 39.465553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766300, 35.720501, 40.024429>,  <40.328880, 35.488926, 39.472923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766300, 35.720501, 40.024429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545780, 36.043404, 39.940136>,  <40.413467, 36.237144, 39.889561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545780, 36.043404, 39.940136>,  <40.766300, 35.720501, 40.024429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545780, 36.043404, 39.940136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032310, 0.273054, 0.961456,
		0.833683, 0.523239, -0.176617,
		-0.551298, 0.807256, -0.210734,
		40.380390, 36.285580, 39.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155643, 36.410065, 40.187500>,  <40.766300, 35.720501, 40.024429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155643, 36.410065, 40.187500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764969, 36.488926, 40.221481>,  <40.530563, 36.536243, 40.241871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764969, 36.488926, 40.221481>,  <41.155643, 36.410065, 40.187500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764969, 36.488926, 40.221481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131149, 0.234667, 0.963188,
		0.169963, 0.951872, -0.255053,
		-0.976685, 0.197157, 0.084952,
		40.471962, 36.548073, 40.246967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107208, 36.922523, 40.652691>,  <41.155643, 36.410065, 40.187500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107208, 36.922523, 40.652691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717010, 36.852371, 40.599548>,  <40.482891, 36.810280, 40.567661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717010, 36.852371, 40.599548>,  <41.107208, 36.922523, 40.652691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717010, 36.852371, 40.599548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200981, 0.464582, 0.862422,
		-0.089525, 0.867990, -0.488445,
		-0.975496, -0.175377, -0.132858,
		40.424362, 36.799759, 40.559692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802597, 37.568703, 40.679325>,  <41.107208, 36.922523, 40.652691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802597, 37.568703, 40.679325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535530, 37.290890, 40.786541>,  <40.375290, 37.124203, 40.850872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535530, 37.290890, 40.786541>,  <40.802597, 37.568703, 40.679325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535530, 37.290890, 40.786541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017452, 0.345346, 0.938313,
		-0.744254, 0.631160, -0.218455,
		-0.667668, -0.694531, 0.268040,
		40.335228, 37.082531, 40.866955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395588, 37.948685, 41.234322>,  <40.802597, 37.568703, 40.679325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395588, 37.948685, 41.234322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331665, 37.558807, 41.296844>,  <40.293312, 37.324883, 41.334358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331665, 37.558807, 41.296844>,  <40.395588, 37.948685, 41.234322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331665, 37.558807, 41.296844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045902, 0.150835, 0.987493,
		-0.986081, 0.164983, 0.020636,
		-0.159807, -0.974695, 0.156309,
		40.283722, 37.266399, 41.343739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148598, 37.939213, 41.939270>,  <40.395588, 37.948685, 41.234322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148598, 37.939213, 41.939270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276272, 37.569588, 41.855152>,  <40.352875, 37.347813, 41.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276272, 37.569588, 41.855152>,  <40.148598, 37.939213, 41.939270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276272, 37.569588, 41.855152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134491, -0.263826, 0.955148,
		-0.938102, -0.276582, -0.208486,
		0.319181, -0.924066, -0.210298,
		40.372025, 37.292366, 41.792065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545689, 37.522640, 42.158272>,  <40.148598, 37.939213, 41.939270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545689, 37.522640, 42.158272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884987, 37.311462, 42.174988>,  <40.088566, 37.184753, 42.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884987, 37.311462, 42.174988>,  <39.545689, 37.522640, 42.158272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884987, 37.311462, 42.174988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248114, -0.326452, 0.912068,
		-0.467884, -0.784028, -0.407903,
		0.848248, -0.527949, 0.041786,
		40.139462, 37.153076, 42.187523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504250, 36.854755, 42.396942>,  <39.545689, 37.522640, 42.158272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504250, 36.854755, 42.396942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889744, 36.939312, 42.462093>,  <40.121040, 36.990044, 42.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889744, 36.939312, 42.462093>,  <39.504250, 36.854755, 42.396942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889744, 36.939312, 42.462093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104066, -0.264323, 0.958803,
		0.245732, -0.940983, -0.232739,
		0.963736, 0.211388, 0.162877,
		40.178864, 37.002728, 42.510956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576206, 36.444473, 42.930412>,  <39.504250, 36.854755, 42.396942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576206, 36.444473, 42.930412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909397, 36.664711, 42.908546>,  <40.109310, 36.796856, 42.895428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909397, 36.664711, 42.908546>,  <39.576206, 36.444473, 42.930412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909397, 36.664711, 42.908546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122622, -0.087368, 0.988600,
		0.539547, -0.830185, -0.140291,
		0.832979, 0.550599, -0.054660,
		40.159290, 36.829891, 42.892147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096840, 36.057945, 43.255329>,  <39.576206, 36.444473, 42.930412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096840, 36.057945, 43.255329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241028, 36.431049, 43.257412>,  <40.327541, 36.654911, 43.258659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241028, 36.431049, 43.257412>,  <40.096840, 36.057945, 43.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241028, 36.431049, 43.257412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144377, -0.061306, 0.987622,
		0.921531, -0.355252, -0.156767,
		0.360465, 0.932758, 0.005205,
		40.349167, 36.710876, 43.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738968, 36.117596, 43.556797>,  <40.096840, 36.057945, 43.255329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738968, 36.117596, 43.556797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572746, 36.477028, 43.613186>,  <40.473015, 36.692688, 43.647018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572746, 36.477028, 43.613186>,  <40.738968, 36.117596, 43.556797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572746, 36.477028, 43.613186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068638, -0.185529, 0.980239,
		0.906975, 0.397665, 0.138774,
		-0.415554, 0.898577, 0.140975,
		40.448082, 36.746601, 43.655479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080070, 36.428982, 44.070560>,  <40.738968, 36.117596, 43.556797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080070, 36.428982, 44.070560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733521, 36.627583, 44.049129>,  <40.525589, 36.746742, 44.036270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.733521, 36.627583, 44.049129>,  <41.080070, 36.428982, 44.070560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733521, 36.627583, 44.049129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105928, -0.077860, 0.991321,
		0.488022, 0.864536, 0.120050,
		-0.866380, 0.496503, -0.053581,
		40.473606, 36.776535, 44.033054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141388, 36.866749, 44.596527>,  <41.080070, 36.428982, 44.070560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141388, 36.866749, 44.596527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750622, 36.839901, 44.515411>,  <40.516163, 36.823792, 44.466740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750622, 36.839901, 44.515411>,  <41.141388, 36.866749, 44.596527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750622, 36.839901, 44.515411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185022, -0.208582, 0.960344,
		-0.106758, 0.975699, 0.191348,
		-0.976918, -0.067121, -0.202794,
		40.457546, 36.819763, 44.454575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784584, 37.198029, 45.194736>,  <41.141388, 36.866749, 44.596527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784584, 37.198029, 45.194736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485050, 37.003231, 45.014919>,  <40.305328, 36.886353, 44.907028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485050, 37.003231, 45.014919>,  <40.784584, 37.198029, 45.194736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485050, 37.003231, 45.014919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352449, -0.281816, 0.892390,
		-0.561274, 0.826692, 0.039394,
		-0.748833, -0.486991, -0.449543,
		40.260399, 36.857132, 44.880058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109852, 37.460209, 45.414101>,  <40.784584, 37.198029, 45.194736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109852, 37.460209, 45.414101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030811, 37.092316, 45.278423>,  <39.983387, 36.871582, 45.197018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030811, 37.092316, 45.278423>,  <40.109852, 37.460209, 45.414101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030811, 37.092316, 45.278423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463281, -0.217317, 0.859153,
		-0.863901, 0.326911, -0.383151,
		-0.197601, -0.919730, -0.339192,
		39.971531, 36.816399, 45.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426434, 37.433453, 45.481766>,  <40.109852, 37.460209, 45.414101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426434, 37.433453, 45.481766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534462, 37.048431, 45.472313>,  <39.599277, 36.817421, 45.466640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534462, 37.048431, 45.472313>,  <39.426434, 37.433453, 45.481766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534462, 37.048431, 45.472313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563845, -0.178000, 0.806471,
		-0.780475, -0.204480, -0.590802,
		0.270070, -0.962551, -0.023630,
		39.615482, 36.759666, 45.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816975, 37.226341, 45.646637>,  <39.426434, 37.433453, 45.481766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816975, 37.226341, 45.646637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070145, 36.922230, 45.705132>,  <39.222046, 36.739761, 45.740227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070145, 36.922230, 45.705132>,  <38.816975, 37.226341, 45.646637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070145, 36.922230, 45.705132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405937, -0.165046, 0.898874,
		-0.659260, -0.628280, -0.413086,
		0.632923, -0.760279, 0.146234,
		39.260021, 36.694145, 45.749001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435108, 36.788307, 45.992039>,  <38.816975, 37.226341, 45.646637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435108, 36.788307, 45.992039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831161, 36.762730, 46.041927>,  <39.068794, 36.747383, 46.071861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831161, 36.762730, 46.041927>,  <38.435108, 36.788307, 45.992039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831161, 36.762730, 46.041927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133380, -0.156525, 0.978626,
		-0.043050, -0.985602, -0.163509,
		0.990130, -0.063939, 0.124721,
		39.128201, 36.743546, 46.079342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592308, 36.141254, 46.356537>,  <38.435108, 36.788307, 45.992039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592308, 36.141254, 46.356537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930099, 36.346077, 46.419346>,  <39.132774, 36.468971, 46.457031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930099, 36.346077, 46.419346>,  <38.592308, 36.141254, 46.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930099, 36.346077, 46.419346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105744, -0.446804, 0.888361,
		0.525048, -0.733597, -0.431463,
		0.844478, 0.512057, 0.157020,
		39.183441, 36.499695, 46.466454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143169, 35.672585, 46.481106>,  <38.592308, 36.141254, 46.356537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143169, 35.672585, 46.481106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230976, 36.025517, 46.647625>,  <39.283661, 36.237278, 46.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230976, 36.025517, 46.647625>,  <39.143169, 35.672585, 46.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230976, 36.025517, 46.647625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428321, -0.470542, 0.771448,
		0.876557, 0.008960, -0.481214,
		0.219519, 0.882332, 0.416295,
		39.296833, 36.290215, 46.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561974, 35.585068, 47.085983>,  <39.143169, 35.672585, 46.481106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561974, 35.585068, 47.085983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499722, 35.974094, 47.155132>,  <39.462372, 36.207512, 47.196621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499722, 35.974094, 47.155132>,  <39.561974, 35.585068, 47.085983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499722, 35.974094, 47.155132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352644, -0.108776, 0.929414,
		0.922725, 0.205607, -0.326042,
		-0.155628, 0.972571, 0.172877,
		39.453033, 36.265865, 47.206997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800247, 35.999294, 46.615543>,  <39.561974, 35.585068, 47.085983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800247, 35.999294, 46.615543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501431, 36.044300, 46.353466>,  <39.322140, 36.071304, 46.196220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501431, 36.044300, 46.353466>,  <39.800247, 35.999294, 46.615543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501431, 36.044300, 46.353466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664522, 0.153828, -0.731264,
		0.018509, -0.981671, -0.189684,
		-0.747040, 0.112515, -0.655189,
		39.277317, 36.078053, 46.156910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076061, 35.768127, 46.039337>,  <39.800247, 35.999294, 46.615543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076061, 35.768127, 46.039337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778042, 35.985306, 45.884361>,  <39.599232, 36.115612, 45.791374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778042, 35.985306, 45.884361>,  <40.076061, 35.768127, 46.039337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778042, 35.985306, 45.884361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437479, -0.040706, -0.898307,
		-0.503506, -0.838778, -0.207202,
		-0.745046, 0.542950, -0.387444,
		39.554527, 36.148190, 45.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861576, 35.475658, 45.402466>,  <40.076061, 35.768127, 46.039337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861576, 35.475658, 45.402466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800571, 35.870773, 45.415241>,  <39.763969, 36.107841, 45.422905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800571, 35.870773, 45.415241>,  <39.861576, 35.475658, 45.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800571, 35.870773, 45.415241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326003, 0.080786, -0.941911,
		-0.932986, -0.133242, -0.334341,
		-0.152512, 0.987786, 0.031935,
		39.754818, 36.167110, 45.424820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612240, 35.675373, 44.726864>,  <39.861576, 35.475658, 45.402466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612240, 35.675373, 44.726864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709301, 36.037693, 44.865799>,  <39.767536, 36.255085, 44.949158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709301, 36.037693, 44.865799>,  <39.612240, 35.675373, 44.726864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709301, 36.037693, 44.865799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319344, 0.263501, -0.910268,
		-0.916046, 0.331797, -0.225324,
		0.242651, 0.905802, 0.347336,
		39.782097, 36.309433, 44.970001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403107, 36.123833, 44.235451>,  <39.612240, 35.675373, 44.726864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403107, 36.123833, 44.235451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675678, 36.340889, 44.431896>,  <39.839222, 36.471123, 44.549763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675678, 36.340889, 44.431896>,  <39.403107, 36.123833, 44.235451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675678, 36.340889, 44.431896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295635, 0.409771, -0.862953,
		-0.669518, 0.733233, 0.118807,
		0.681429, 0.542639, 0.491118,
		39.880108, 36.503681, 44.579231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252834, 36.898899, 44.257545>,  <39.403107, 36.123833, 44.235451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252834, 36.898899, 44.257545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643414, 36.815311, 44.279007>,  <39.877762, 36.765160, 44.291885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643414, 36.815311, 44.279007>,  <39.252834, 36.898899, 44.257545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643414, 36.815311, 44.279007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174709, 0.619940, -0.764951,
		0.126588, 0.756310, 0.641849,
		0.976449, -0.208970, 0.053658,
		39.936348, 36.752621, 44.295105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374668, 37.464546, 43.992405>,  <39.252834, 36.898899, 44.257545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374668, 37.464546, 43.992405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730026, 37.280983, 43.997505>,  <39.943241, 37.170845, 44.000565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730026, 37.280983, 43.997505>,  <39.374668, 37.464546, 43.992405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730026, 37.280983, 43.997505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291184, 0.541795, -0.788460,
		0.354924, 0.704174, 0.614954,
		0.888392, -0.458908, 0.012748,
		39.996544, 37.143311, 44.001331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793789, 37.947811, 43.672783>,  <39.374668, 37.464546, 43.992405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793789, 37.947811, 43.672783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000866, 37.605751, 43.662140>,  <40.125111, 37.400513, 43.655754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000866, 37.605751, 43.662140>,  <39.793789, 37.947811, 43.672783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000866, 37.605751, 43.662140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390407, 0.263792, -0.882041,
		0.761299, 0.446239, 0.470420,
		0.517694, -0.855152, -0.026610,
		40.156174, 37.349205, 43.654156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521919, 38.087742, 43.489799>,  <39.793789, 37.947811, 43.672783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521919, 38.087742, 43.489799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466568, 37.699905, 43.409061>,  <40.433357, 37.467201, 43.360619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466568, 37.699905, 43.409061>,  <40.521919, 38.087742, 43.489799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466568, 37.699905, 43.409061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493954, 0.109082, -0.862618,
		0.858407, -0.219066, 0.463840,
		-0.138374, -0.969593, -0.201845,
		40.425056, 37.409027, 43.348507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233635, 38.105434, 43.193886>,  <40.521919, 38.087742, 43.489799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233635, 38.105434, 43.193886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139076, 37.730949, 43.297909>,  <41.082340, 37.506260, 43.360321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139076, 37.730949, 43.297909>,  <41.233635, 38.105434, 43.193886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139076, 37.730949, 43.297909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238267, -0.203619, -0.949615,
		0.941990, -0.286450, -0.174933,
		-0.236398, -0.936208, 0.260058,
		41.068157, 37.450089, 43.375927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518517, 37.472385, 42.774773>,  <41.233635, 38.105434, 43.193886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518517, 37.472385, 42.774773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164627, 37.327427, 42.892029>,  <40.952293, 37.240452, 42.962383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164627, 37.327427, 42.892029>,  <41.518517, 37.472385, 42.774773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164627, 37.327427, 42.892029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129336, -0.413336, -0.901347,
		0.447806, -0.835359, 0.318819,
		-0.884727, -0.362394, 0.293136,
		40.899208, 37.218708, 42.979969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443436, 36.744797, 42.675358>,  <41.518517, 37.472385, 42.774773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443436, 36.744797, 42.675358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062687, 36.866325, 42.659164>,  <40.834240, 36.939243, 42.649448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062687, 36.866325, 42.659164>,  <41.443436, 36.744797, 42.675358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062687, 36.866325, 42.659164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075113, -0.359275, -0.930204,
		-0.297157, -0.882392, 0.364804,
		-0.951870, 0.303818, -0.040481,
		40.777126, 36.957474, 42.647018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215897, 36.435780, 42.154312>,  <41.443436, 36.744797, 42.675358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215897, 36.435780, 42.154312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883244, 36.649513, 42.214806>,  <40.683651, 36.777752, 42.251102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883244, 36.649513, 42.214806>,  <41.215897, 36.435780, 42.154312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883244, 36.649513, 42.214806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389955, -0.368024, -0.844093,
		-0.395378, -0.760946, 0.514429,
		-0.831632, 0.534340, 0.151226,
		40.633751, 36.809811, 42.260174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656982, 36.066357, 41.940449>,  <41.215897, 36.435780, 42.154312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656982, 36.066357, 41.940449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532803, 36.445068, 41.906425>,  <40.458294, 36.672295, 41.886009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532803, 36.445068, 41.906425>,  <40.656982, 36.066357, 41.940449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532803, 36.445068, 41.906425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268215, -0.173089, -0.947682,
		-0.911966, -0.271392, 0.307675,
		-0.310448, 0.946777, -0.085060,
		40.439667, 36.729103, 41.880909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037148, 36.009495, 41.532829>,  <40.656982, 36.066357, 41.940449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037148, 36.009495, 41.532829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109959, 36.398537, 41.474987>,  <40.153645, 36.631962, 41.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109959, 36.398537, 41.474987>,  <40.037148, 36.009495, 41.532829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109959, 36.398537, 41.474987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258930, -0.094463, -0.961266,
		-0.948589, 0.212418, 0.234641,
		0.182026, 0.972602, -0.144608,
		40.164566, 36.690319, 41.431606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424725, 36.264042, 41.219509>,  <40.037148, 36.009495, 41.532829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424725, 36.264042, 41.219509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737587, 36.497787, 41.133022>,  <39.925304, 36.638035, 41.081131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737587, 36.497787, 41.133022>,  <39.424725, 36.264042, 41.219509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737587, 36.497787, 41.133022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134495, -0.180493, -0.974338,
		-0.608393, 0.791165, -0.062579,
		0.782157, 0.584364, -0.216218,
		39.972233, 36.673096, 41.068157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194351, 36.529350, 40.666180>,  <39.424725, 36.264042, 41.219509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194351, 36.529350, 40.666180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590214, 36.586590, 40.662159>,  <39.827732, 36.620934, 40.659748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590214, 36.586590, 40.662159>,  <39.194351, 36.529350, 40.666180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590214, 36.586590, 40.662159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020555, 0.072112, -0.997185,
		-0.141971, 0.987078, 0.074307,
		0.989657, 0.143099, -0.010052,
		39.887112, 36.629520, 40.659145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287926, 36.958488, 40.103741>,  <39.194351, 36.529350, 40.666180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287926, 36.958488, 40.103741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658283, 36.818447, 40.160511>,  <39.880497, 36.734421, 40.194572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658283, 36.818447, 40.160511>,  <39.287926, 36.958488, 40.103741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658283, 36.818447, 40.160511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164360, 0.035060, -0.985777,
		0.340151, 0.936054, 0.090006,
		0.925896, -0.350106, 0.141924,
		39.936050, 36.713417, 40.203087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545769, 37.264023, 39.617706>,  <39.287926, 36.958488, 40.103741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545769, 37.264023, 39.617706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821918, 36.986282, 39.698956>,  <39.987610, 36.819637, 39.747704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821918, 36.986282, 39.698956>,  <39.545769, 37.264023, 39.617706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821918, 36.986282, 39.698956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182965, -0.104060, -0.977597,
		0.699932, 0.712073, 0.055201,
		0.690376, -0.694351, 0.203119,
		40.029030, 36.777977, 39.759892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257401, 37.448536, 39.260380>,  <39.545769, 37.264023, 39.617706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257401, 37.448536, 39.260380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281155, 37.058418, 39.345490>,  <40.295406, 36.824348, 39.396557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281155, 37.058418, 39.345490>,  <40.257401, 37.448536, 39.260380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281155, 37.058418, 39.345490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344377, -0.180052, -0.921404,
		0.936952, 0.127989, 0.325178,
		0.059381, -0.975295, 0.212776,
		40.298969, 36.765831, 39.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951916, 37.319859, 39.062107>,  <40.257401, 37.448536, 39.260380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951916, 37.319859, 39.062107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748325, 36.975597, 39.056084>,  <40.626171, 36.769043, 39.052471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748325, 36.975597, 39.056084>,  <40.951916, 37.319859, 39.062107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748325, 36.975597, 39.056084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245097, -0.128132, -0.960994,
		0.825151, -0.492810, 0.276159,
		-0.508972, -0.860651, -0.015058,
		40.595634, 36.717403, 39.051567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367863, 36.722313, 38.657757>,  <40.951916, 37.319859, 39.062107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367863, 36.722313, 38.657757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971981, 36.665184, 38.661549>,  <40.734451, 36.630905, 38.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971981, 36.665184, 38.661549>,  <41.367863, 36.722313, 38.657757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971981, 36.665184, 38.661549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006014, -0.107664, -0.994169,
		0.143014, -0.983875, 0.107414,
		-0.989702, -0.142827, 0.009480,
		40.675072, 36.622337, 38.664394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071724, 36.854950, 38.506256>,  <41.367863, 36.722313, 38.657757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071724, 36.854950, 38.506256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461494, 36.778385, 38.459190>,  <42.695358, 36.732445, 38.430950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461494, 36.778385, 38.459190>,  <42.071724, 36.854950, 38.506256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461494, 36.778385, 38.459190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224542, -0.810587, -0.540861,
		0.008150, 0.553452, -0.832841,
		0.974430, -0.191416, -0.117667,
		42.753822, 36.720959, 38.423889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163486, 36.833687, 37.885082>,  <42.071724, 36.854950, 38.506256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163486, 36.833687, 37.885082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423714, 36.588123, 38.063911>,  <42.579849, 36.440784, 38.171207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423714, 36.588123, 38.063911>,  <42.163486, 36.833687, 37.885082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423714, 36.588123, 38.063911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289107, -0.744558, -0.601706,
		0.702266, 0.262199, -0.661872,
		0.650569, -0.613909, 0.447074,
		42.618885, 36.403950, 38.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655167, 37.040630, 37.374153>,  <42.163486, 36.833687, 37.885082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655167, 37.040630, 37.374153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935562, 37.321991, 37.421223>,  <43.103798, 37.490807, 37.449463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935562, 37.321991, 37.421223>,  <42.655167, 37.040630, 37.374153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935562, 37.321991, 37.421223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423745, -0.543513, 0.724592,
		0.573634, -0.458066, -0.679058,
		0.700988, 0.703398, 0.117674,
		43.145859, 37.533009, 37.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100288, 36.823776, 36.784676>,  <42.655167, 37.040630, 37.374153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100288, 36.823776, 36.784676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453926, 36.999702, 36.847836>,  <43.666111, 37.105259, 36.885731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453926, 36.999702, 36.847836>,  <43.100288, 36.823776, 36.784676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453926, 36.999702, 36.847836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279087, -0.767975, 0.576476,
		0.374810, -0.465592, -0.801712,
		0.884097, 0.439817, 0.157904,
		43.719154, 37.131649, 36.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603123, 36.337261, 36.914841>,  <43.100288, 36.823776, 36.784676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603123, 36.337261, 36.914841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786625, 36.643612, 37.095047>,  <43.896729, 36.827423, 37.203171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786625, 36.643612, 37.095047>,  <43.603123, 36.337261, 36.914841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786625, 36.643612, 37.095047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372641, -0.626109, 0.684928,
		0.806648, -0.146334, -0.572631,
		0.458757, 0.765881, 0.450519,
		43.924252, 36.873375, 37.230202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417591, 36.278252, 37.035187>,  <43.603123, 36.337261, 36.914841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417591, 36.278252, 37.035187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233688, 36.497711, 37.314503>,  <44.123344, 36.629387, 37.482090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233688, 36.497711, 37.314503>,  <44.417591, 36.278252, 37.035187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233688, 36.497711, 37.314503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398536, -0.575214, 0.714351,
		0.793593, 0.606722, 0.045803,
		-0.459760, 0.548650, 0.698287,
		44.095760, 36.662308, 37.523991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009632, 36.657261, 37.425343>,  <44.417591, 36.278252, 37.035187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009632, 36.657261, 37.425343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653225, 36.559101, 37.578114>,  <44.439381, 36.500206, 37.669777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653225, 36.559101, 37.578114>,  <45.009632, 36.657261, 37.425343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653225, 36.559101, 37.578114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452056, -0.556764, 0.696893,
		0.041629, 0.793596, 0.607019,
		-0.891018, -0.245396, 0.381927,
		44.385921, 36.485481, 37.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883934, 36.866116, 38.125259>,  <45.009632, 36.657261, 37.425343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883934, 36.866116, 38.125259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674995, 36.527096, 38.087711>,  <44.549633, 36.323685, 38.065182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674995, 36.527096, 38.087711>,  <44.883934, 36.866116, 38.125259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674995, 36.527096, 38.087711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621967, -0.453979, 0.638012,
		-0.583364, 0.274878, 0.764283,
		-0.522344, -0.847552, -0.093871,
		44.518291, 36.272831, 38.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785351, 37.581612, 37.981396>,  <44.883934, 36.866116, 38.125259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785351, 37.581612, 37.981396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989101, 37.443665, 37.666031>,  <45.111351, 37.360897, 37.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989101, 37.443665, 37.666031>,  <44.785351, 37.581612, 37.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989101, 37.443665, 37.666031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095769, 0.887773, -0.450209,
		0.855196, 0.304833, 0.419186,
		0.509380, -0.344872, -0.788413,
		45.141914, 37.340202, 37.429508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339973, 38.011074, 37.766899>,  <44.785351, 37.581612, 37.981396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339973, 38.011074, 37.766899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262276, 37.800289, 37.435940>,  <45.215656, 37.673820, 37.237366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262276, 37.800289, 37.435940>,  <45.339973, 38.011074, 37.766899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262276, 37.800289, 37.435940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073639, 0.833247, -0.547975,
		0.978185, -0.167371, -0.123050,
		-0.194246, -0.526960, -0.827395,
		45.204002, 37.642200, 37.187721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908596, 38.086773, 37.237560>,  <45.339973, 38.011074, 37.766899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908596, 38.086773, 37.237560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550484, 38.064644, 37.060738>,  <45.335617, 38.051369, 36.954643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.550484, 38.064644, 37.060738>,  <45.908596, 38.086773, 37.237560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.550484, 38.064644, 37.060738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297868, 0.663529, -0.686297,
		0.331281, -0.746102, -0.577567,
		-0.895281, -0.055319, -0.442055,
		45.281898, 38.048050, 36.928120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986538, 38.137356, 36.548012>,  <45.908596, 38.086773, 37.237560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986538, 38.137356, 36.548012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607563, 38.246609, 36.614662>,  <45.380180, 38.312160, 36.654652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607563, 38.246609, 36.614662>,  <45.986538, 38.137356, 36.548012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607563, 38.246609, 36.614662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109940, 0.767003, -0.632155,
		-0.300465, -0.580607, -0.756714,
		-0.947435, 0.273134, 0.166625,
		45.323334, 38.328548, 36.664650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652344, 38.167316, 35.921539>,  <45.986538, 38.137356, 36.548012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652344, 38.167316, 35.921539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453896, 38.430649, 36.147976>,  <45.334827, 38.588650, 36.283840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453896, 38.430649, 36.147976>,  <45.652344, 38.167316, 35.921539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453896, 38.430649, 36.147976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070517, 0.680390, -0.729450,
		-0.865385, -0.321976, -0.383979,
		-0.496121, 0.658332, 0.566094,
		45.305058, 38.628147, 36.317802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027473, 38.273094, 35.606812>,  <45.652344, 38.167316, 35.921539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027473, 38.273094, 35.606812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175102, 38.591267, 35.799095>,  <45.263680, 38.782169, 35.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175102, 38.591267, 35.799095>,  <45.027473, 38.273094, 35.606812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175102, 38.591267, 35.799095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028555, 0.526689, -0.849578,
		-0.928964, 0.299826, 0.217097,
		0.369068, 0.795426, 0.480714,
		45.285824, 38.829895, 35.943310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677151, 38.388573, 35.160603>,  <45.027473, 38.273094, 35.606812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677151, 38.388573, 35.160603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653526, 38.449703, 34.766006>,  <45.639351, 38.486382, 34.529251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653526, 38.449703, 34.766006>,  <45.677151, 38.388573, 35.160603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653526, 38.449703, 34.766006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982278, 0.184992, -0.030151,
		0.177884, -0.970785, -0.161040,
		-0.059062, 0.152822, -0.986487,
		45.635807, 38.495548, 34.470058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279663, 37.935940, 35.157898>,  <45.677151, 38.388573, 35.160603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279663, 37.935940, 35.157898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576633, 37.902798, 34.891983>,  <46.754818, 37.882912, 34.732433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.576633, 37.902798, 34.891983>,  <46.279663, 37.935940, 35.157898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576633, 37.902798, 34.891983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351214, 0.893158, 0.280923,
		0.570482, -0.442047, 0.692204,
		0.742428, -0.082851, -0.664783,
		46.799362, 37.877941, 34.692547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.862209, 37.417084, 35.246922>,  <46.279663, 37.935940, 35.157898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.862209, 37.417084, 35.246922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134251, 37.223419, 35.467121>,  <47.297474, 37.107220, 35.599239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134251, 37.223419, 35.467121>,  <46.862209, 37.417084, 35.246922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134251, 37.223419, 35.467121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274025, -0.864356, -0.421663,
		0.679977, 0.135925, -0.720524,
		0.680104, -0.484163, 0.550496,
		47.338284, 37.078171, 35.632271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088936, 36.857067, 34.815353>,  <46.862209, 37.417084, 35.246922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088936, 36.857067, 34.815353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215374, 36.761372, 35.182579>,  <47.291237, 36.703953, 35.402916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215374, 36.761372, 35.182579>,  <47.088936, 36.857067, 34.815353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215374, 36.761372, 35.182579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071266, -0.970936, -0.228482,
		0.946048, 0.006794, -0.323955,
		0.316092, -0.239242, 0.918068,
		47.310200, 36.689598, 35.458000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.057281, 36.101616, 34.887592>,  <47.088936, 36.857067, 34.815353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.057281, 36.101616, 34.887592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251282, 36.180672, 35.228348>,  <47.367680, 36.228104, 35.432800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.251282, 36.180672, 35.228348>,  <47.057281, 36.101616, 34.887592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251282, 36.180672, 35.228348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078661, -0.980038, 0.182585,
		0.870971, -0.021542, -0.490863,
		0.484998, 0.197638, 0.851890,
		47.396782, 36.239964, 35.483913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558887, 35.635212, 34.806549>,  <47.057281, 36.101616, 34.887592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558887, 35.635212, 34.806549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542198, 35.733330, 35.193970>,  <47.532185, 35.792198, 35.426422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.542198, 35.733330, 35.193970>,  <47.558887, 35.635212, 34.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.542198, 35.733330, 35.193970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239024, -0.938796, 0.248053,
		0.970117, 0.241857, -0.019461,
		-0.041724, 0.245292, 0.968551,
		47.529682, 35.806919, 35.484535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422394, 34.998821, 35.138439>,  <47.558887, 35.635212, 34.806549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422394, 34.998821, 35.138439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813812, 34.943859, 35.199856>,  <48.048664, 34.910881, 35.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.813812, 34.943859, 35.199856>,  <47.422394, 34.998821, 35.138439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.813812, 34.943859, 35.199856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199710, 0.449161, -0.870844,
		0.050695, 0.882822, 0.466965,
		0.978543, -0.137405, 0.153538,
		48.107376, 34.902637, 35.245918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.958881, 32.600056, 29.666285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.614971, 32.397923, 29.695749>,  <40.408627, 32.276642, 29.713428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.614971, 32.397923, 29.695749>,  <40.958881, 32.600056, 29.666285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614971, 32.397923, 29.695749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021265, 0.108695, 0.993848,
		-0.510233, 0.856050, -0.082707,
		-0.859773, -0.505336, 0.073664,
		40.357040, 32.246323, 29.717848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598846, 33.046402, 30.172052>,  <40.958881, 32.600056, 29.666285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598846, 33.046402, 30.172052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375576, 32.715199, 30.150759>,  <40.241611, 32.516476, 30.137981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375576, 32.715199, 30.150759>,  <40.598846, 33.046402, 30.172052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375576, 32.715199, 30.150759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374351, 0.194059, 0.906754,
		-0.740472, 0.526059, -0.418286,
		-0.558178, -0.828012, -0.053236,
		40.208122, 32.466797, 30.134789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028671, 33.164066, 30.531721>,  <40.598846, 33.046402, 30.172052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028671, 33.164066, 30.531721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973064, 32.770241, 30.574272>,  <39.939701, 32.533947, 30.599802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973064, 32.770241, 30.574272>,  <40.028671, 33.164066, 30.531721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973064, 32.770241, 30.574272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590419, 0.168644, 0.789281,
		-0.795035, 0.046916, -0.604747,
		-0.139017, -0.984560, 0.106378,
		39.931358, 32.474873, 30.606186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305721, 33.115341, 30.843235>,  <40.028671, 33.164066, 30.531721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305721, 33.115341, 30.843235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480007, 32.763008, 30.917297>,  <39.584579, 32.551609, 30.961735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480007, 32.763008, 30.917297>,  <39.305721, 33.115341, 30.843235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480007, 32.763008, 30.917297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491230, -0.060335, 0.868938,
		-0.754220, -0.469563, -0.458981,
		0.435713, -0.880835, 0.185158,
		39.610722, 32.498756, 30.972845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769611, 32.683483, 31.019043>,  <39.305721, 33.115341, 30.843235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769611, 32.683483, 31.019043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106380, 32.531494, 31.172295>,  <39.308441, 32.440300, 31.264246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106380, 32.531494, 31.172295>,  <38.769611, 32.683483, 31.019043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106380, 32.531494, 31.172295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407592, 0.017456, 0.912997,
		-0.353602, -0.924833, -0.140177,
		0.841923, -0.379972, 0.383127,
		39.358959, 32.417503, 31.287233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511902, 32.177834, 31.393631>,  <38.769611, 32.683483, 31.019043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511902, 32.177834, 31.393631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887100, 32.212788, 31.527817>,  <39.112217, 32.233761, 31.608328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887100, 32.212788, 31.527817>,  <38.511902, 32.177834, 31.393631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887100, 32.212788, 31.527817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326882, -0.099218, 0.939843,
		0.115412, -0.991221, -0.064501,
		0.937992, 0.087385, 0.335463,
		39.168499, 32.239002, 31.628456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607258, 31.554239, 31.873953>,  <38.511902, 32.177834, 31.393631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607258, 31.554239, 31.873953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899075, 31.816965, 31.950232>,  <39.074165, 31.974600, 31.995998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899075, 31.816965, 31.950232>,  <38.607258, 31.554239, 31.873953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899075, 31.816965, 31.950232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291297, 0.046129, 0.955520,
		0.618803, -0.752640, 0.224981,
		0.729540, 0.656814, 0.190697,
		39.117935, 32.014008, 32.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909355, 31.291161, 32.432564>,  <38.607258, 31.554239, 31.873953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909355, 31.291161, 32.432564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041588, 31.667259, 32.465202>,  <39.120926, 31.892918, 32.484787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041588, 31.667259, 32.465202>,  <38.909355, 31.291161, 32.432564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041588, 31.667259, 32.465202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272481, 0.012305, 0.962083,
		0.903589, -0.340277, 0.260267,
		0.330577, 0.940244, 0.081600,
		39.140762, 31.949333, 32.489681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399231, 31.231760, 32.923016>,  <38.909355, 31.291161, 32.432564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399231, 31.231760, 32.923016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260307, 31.606756, 32.914188>,  <39.176952, 31.831755, 32.908894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260307, 31.606756, 32.914188>,  <39.399231, 31.231760, 32.923016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260307, 31.606756, 32.914188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140891, -0.028901, 0.989603,
		0.927107, 0.346805, 0.142122,
		-0.347307, 0.937492, -0.022068,
		39.156116, 31.888004, 32.907570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695721, 31.556307, 33.456894>,  <39.399231, 31.231760, 32.923016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695721, 31.556307, 33.456894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370049, 31.776131, 33.381958>,  <39.174644, 31.908026, 33.336998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370049, 31.776131, 33.381958>,  <39.695721, 31.556307, 33.456894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370049, 31.776131, 33.381958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211174, 0.020269, 0.977238,
		0.540848, 0.835209, 0.099550,
		-0.814180, 0.549560, -0.187336,
		39.125793, 31.940998, 33.325756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742348, 32.102001, 33.851570>,  <39.695721, 31.556307, 33.456894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742348, 32.102001, 33.851570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356846, 32.028660, 33.774044>,  <39.125546, 31.984655, 33.727528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356846, 32.028660, 33.774044>,  <39.742348, 32.102001, 33.851570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356846, 32.028660, 33.774044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214871, 0.102766, 0.971221,
		-0.158156, 0.977662, -0.138438,
		-0.963752, -0.183350, -0.193818,
		39.067719, 31.973656, 33.715900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397541, 32.758709, 34.238503>,  <39.742348, 32.102001, 33.851570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397541, 32.758709, 34.238503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084084, 32.517456, 34.179001>,  <38.896008, 32.372704, 34.143299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.084084, 32.517456, 34.179001>,  <39.397541, 32.758709, 34.238503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084084, 32.517456, 34.179001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309223, 0.171047, 0.935481,
		-0.538773, 0.779087, -0.320543,
		-0.783648, -0.603131, -0.148757,
		38.848988, 32.336517, 34.134373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758568, 33.111176, 34.580879>,  <39.397541, 32.758709, 34.238503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758568, 33.111176, 34.580879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630272, 32.734192, 34.543152>,  <38.553295, 32.508003, 34.520515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630272, 32.734192, 34.543152>,  <38.758568, 33.111176, 34.580879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630272, 32.734192, 34.543152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433412, 0.057495, 0.899360,
		-0.842186, 0.329344, -0.426914,
		-0.320744, -0.942458, -0.094320,
		38.534050, 32.451454, 34.514854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043739, 33.052284, 34.850880>,  <38.758568, 33.111176, 34.580879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043739, 33.052284, 34.850880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198990, 32.683838, 34.862915>,  <38.292141, 32.462772, 34.870136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198990, 32.683838, 34.862915>,  <38.043739, 33.052284, 34.850880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198990, 32.683838, 34.862915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352163, -0.118060, 0.928463,
		-0.851667, -0.370961, -0.370204,
		0.388130, -0.921113, 0.030091,
		38.315430, 32.407505, 34.871941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534691, 32.707218, 35.126114>,  <38.043739, 33.052284, 34.850880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534691, 32.707218, 35.126114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848652, 32.465893, 35.182610>,  <38.037029, 32.321098, 35.216507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848652, 32.465893, 35.182610>,  <37.534691, 32.707218, 35.126114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848652, 32.465893, 35.182610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365830, -0.267233, 0.891490,
		-0.500103, -0.751399, -0.430461,
		0.784898, -0.603313, 0.141240,
		38.084122, 32.284901, 35.224983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313309, 32.204990, 35.600796>,  <37.534691, 32.707218, 35.126114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313309, 32.204990, 35.600796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705261, 32.125378, 35.594784>,  <37.940434, 32.077610, 35.591179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.705261, 32.125378, 35.594784>,  <37.313309, 32.204990, 35.600796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705261, 32.125378, 35.594784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047944, -0.307781, 0.950249,
		-0.193750, -0.930408, -0.311130,
		0.979879, -0.199028, -0.015026,
		37.999226, 32.065670, 35.590275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323269, 31.618652, 35.883949>,  <37.313309, 32.204990, 35.600796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323269, 31.618652, 35.883949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686337, 31.781904, 35.923058>,  <37.904179, 31.879856, 35.946522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686337, 31.781904, 35.923058>,  <37.323269, 31.618652, 35.883949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686337, 31.781904, 35.923058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010081, -0.254105, 0.967124,
		0.419559, -0.876846, -0.234758,
		0.907672, 0.408132, 0.097772,
		37.958637, 31.904345, 35.952389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759796, 31.154409, 36.205845>,  <37.323269, 31.618652, 35.883949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759796, 31.154409, 36.205845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928135, 31.512186, 36.266331>,  <38.029137, 31.726852, 36.302624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.928135, 31.512186, 36.266331>,  <37.759796, 31.154409, 36.205845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928135, 31.512186, 36.266331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138847, -0.228248, 0.963652,
		0.896444, -0.384550, -0.220247,
		0.420843, 0.894441, 0.151219,
		38.054386, 31.780518, 36.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246029, 30.973476, 36.654556>,  <37.759796, 31.154409, 36.205845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246029, 30.973476, 36.654556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216148, 31.371340, 36.683044>,  <38.198219, 31.610058, 36.700138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216148, 31.371340, 36.683044>,  <38.246029, 30.973476, 36.654556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216148, 31.371340, 36.683044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204445, -0.054632, 0.977352,
		0.976024, 0.087567, -0.199272,
		-0.074698, 0.994659, 0.071225,
		38.193741, 31.669737, 36.704411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915188, 31.178625, 36.992271>,  <38.246029, 30.973476, 36.654556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915188, 31.178625, 36.992271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622021, 31.444227, 37.051510>,  <38.446121, 31.603588, 37.087051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.622021, 31.444227, 37.051510>,  <38.915188, 31.178625, 36.992271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622021, 31.444227, 37.051510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229117, 0.035942, 0.972735,
		0.640579, 0.746863, -0.178478,
		-0.732914, 0.664006, 0.148095,
		38.402145, 31.643429, 37.095940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114872, 31.528275, 37.497337>,  <38.915188, 31.178625, 36.992271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114872, 31.528275, 37.497337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740685, 31.669107, 37.509571>,  <38.516171, 31.753607, 37.516911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.740685, 31.669107, 37.509571>,  <39.114872, 31.528275, 37.497337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740685, 31.669107, 37.509571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136217, 0.279361, 0.950475,
		0.326103, 0.893305, -0.309293,
		-0.935469, 0.352084, 0.030583,
		38.460045, 31.774733, 37.518745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140255, 32.220215, 37.655952>,  <39.114872, 31.528275, 37.497337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140255, 32.220215, 37.655952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783672, 32.082222, 37.773453>,  <38.569721, 31.999426, 37.843952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783672, 32.082222, 37.773453>,  <39.140255, 32.220215, 37.655952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783672, 32.082222, 37.773453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210736, 0.258252, 0.942813,
		-0.401116, 0.902382, -0.157521,
		-0.891458, -0.344982, 0.293753,
		38.516235, 31.978727, 37.861580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639526, 32.667080, 37.613461>,  <39.140255, 32.220215, 37.655952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639526, 32.667080, 37.613461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898731, 32.926666, 37.772923>,  <40.054253, 33.082417, 37.868599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898731, 32.926666, 37.772923>,  <39.639526, 32.667080, 37.613461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898731, 32.926666, 37.772923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231492, 0.330843, -0.914852,
		-0.725598, 0.685121, 0.064160,
		0.648011, 0.648962, 0.398659,
		40.093136, 33.121353, 37.892521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466606, 33.263802, 37.447929>,  <39.639526, 32.667080, 37.613461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466606, 33.263802, 37.447929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854023, 33.323494, 37.527592>,  <40.086472, 33.359310, 37.575390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854023, 33.323494, 37.527592>,  <39.466606, 33.263802, 37.447929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854023, 33.323494, 37.527592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147722, 0.299278, -0.942662,
		-0.200279, 0.942424, 0.267817,
		0.968538, 0.149233, 0.199156,
		40.144585, 33.368263, 37.587337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637089, 33.867134, 37.074013>,  <39.466606, 33.263802, 37.447929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637089, 33.867134, 37.074013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000248, 33.738548, 37.181622>,  <40.218143, 33.661396, 37.246189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.000248, 33.738548, 37.181622>,  <39.637089, 33.867134, 37.074013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000248, 33.738548, 37.181622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380951, 0.364970, -0.849514,
		0.174904, 0.873760, 0.453819,
		0.907901, -0.321466, 0.269026,
		40.272617, 33.642109, 37.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098888, 34.443848, 37.125359>,  <39.637089, 33.867134, 37.074013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098888, 34.443848, 37.125359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315018, 34.120804, 37.030857>,  <40.444695, 33.926979, 36.974155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.315018, 34.120804, 37.030857>,  <40.098888, 34.443848, 37.125359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315018, 34.120804, 37.030857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217341, 0.405190, -0.888023,
		0.812906, 0.428469, 0.394460,
		0.540321, -0.807611, -0.236258,
		40.477116, 33.878521, 36.959980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718369, 34.779747, 36.857021>,  <40.098888, 34.443848, 37.125359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718369, 34.779747, 36.857021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.690025, 34.393074, 36.758633>,  <40.673019, 34.161072, 36.699600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.690025, 34.393074, 36.758633>,  <40.718369, 34.779747, 36.857021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690025, 34.393074, 36.758633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367360, 0.203971, -0.907437,
		0.927376, -0.154658, 0.340668,
		-0.070856, -0.966683, -0.245973,
		40.668770, 34.103069, 36.684841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259048, 34.606956, 36.457615>,  <40.718369, 34.779747, 36.857021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259048, 34.606956, 36.457615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.018559, 34.307438, 36.346024>,  <40.874264, 34.127728, 36.279068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.018559, 34.307438, 36.346024>,  <41.259048, 34.606956, 36.457615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018559, 34.307438, 36.346024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242686, 0.161522, -0.956564,
		0.761335, -0.642814, 0.084611,
		-0.601227, -0.748799, -0.278975,
		40.838192, 34.082798, 36.262333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672199, 34.197803, 35.922707>,  <41.259048, 34.606956, 36.457615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672199, 34.197803, 35.922707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.274281, 34.168884, 35.894012>,  <41.035530, 34.151535, 35.876797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.274281, 34.168884, 35.894012>,  <41.672199, 34.197803, 35.922707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274281, 34.168884, 35.894012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060664, 0.145112, -0.987554,
		0.081800, -0.986771, -0.139972,
		-0.994801, -0.072291, -0.071731,
		40.975842, 34.147198, 35.872494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547787, 33.634151, 35.436207>,  <41.672199, 34.197803, 35.922707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547787, 33.634151, 35.436207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213367, 33.852615, 35.457092>,  <41.012714, 33.983696, 35.469624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.213367, 33.852615, 35.457092>,  <41.547787, 33.634151, 35.436207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213367, 33.852615, 35.457092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057469, 0.007465, -0.998319,
		-0.545634, -0.837646, 0.025146,
		-0.836051, 0.546162, 0.052212,
		40.962551, 34.016464, 35.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056553, 33.221584, 35.016129>,  <41.547787, 33.634151, 35.436207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056553, 33.221584, 35.016129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.902348, 33.588200, 35.058701>,  <40.809822, 33.808170, 35.084244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.902348, 33.588200, 35.058701>,  <41.056553, 33.221584, 35.016129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902348, 33.588200, 35.058701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148573, 0.052180, -0.987524,
		-0.910661, -0.396520, 0.116057,
		-0.385517, 0.916542, 0.106431,
		40.786694, 33.863163, 35.090630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390793, 33.338791, 34.649399>,  <41.056553, 33.221584, 35.016129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390793, 33.338791, 34.649399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516380, 33.718254, 34.664776>,  <40.591732, 33.945930, 34.674004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.516380, 33.718254, 34.664776>,  <40.390793, 33.338791, 34.649399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516380, 33.718254, 34.664776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128360, 0.082531, -0.988288,
		-0.940715, 0.305362, 0.147682,
		0.313973, 0.948653, 0.038442,
		40.610573, 34.002850, 34.676308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987328, 33.611340, 34.160789>,  <40.390793, 33.338791, 34.649399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987328, 33.611340, 34.160789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.301411, 33.855072, 34.204918>,  <40.489861, 34.001312, 34.231396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.301411, 33.855072, 34.204918>,  <39.987328, 33.611340, 34.160789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301411, 33.855072, 34.204918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059319, 0.103323, -0.992877,
		-0.616387, 0.786157, 0.044985,
		0.785206, 0.609328, 0.110321,
		40.536972, 34.037872, 34.238014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951893, 34.077473, 33.609303>,  <39.987328, 33.611340, 34.160789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951893, 34.077473, 33.609303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312778, 34.205883, 33.724503>,  <40.529312, 34.282928, 33.793625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312778, 34.205883, 33.724503>,  <39.951893, 34.077473, 33.609303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312778, 34.205883, 33.724503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240855, 0.178903, -0.953930,
		-0.357764, 0.930018, 0.084087,
		0.902216, 0.321029, 0.288005,
		40.583443, 34.302193, 33.810905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072937, 34.738750, 33.384487>,  <39.951893, 34.077473, 33.609303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072937, 34.738750, 33.384487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430954, 34.564621, 33.423244>,  <40.645763, 34.460144, 33.446499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.430954, 34.564621, 33.423244>,  <40.072937, 34.738750, 33.384487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430954, 34.564621, 33.423244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181302, 0.156682, -0.970866,
		0.407462, 0.886534, 0.219162,
		0.895044, -0.435325, 0.096889,
		40.699467, 34.434025, 33.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466423, 35.176441, 33.002491>,  <40.072937, 34.738750, 33.384487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466423, 35.176441, 33.002491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705208, 34.856579, 33.028374>,  <40.848480, 34.664661, 33.043903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.705208, 34.856579, 33.028374>,  <40.466423, 35.176441, 33.002491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705208, 34.856579, 33.028374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279357, 0.131585, -0.951128,
		0.752058, 0.585868, 0.301940,
		0.596967, -0.799652, 0.064707,
		40.884296, 34.616684, 33.047787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055260, 35.359955, 32.622936>,  <40.466423, 35.176441, 33.002491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055260, 35.359955, 32.622936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.105484, 34.965939, 32.670135>,  <41.135616, 34.729527, 32.698456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.105484, 34.965939, 32.670135>,  <41.055260, 35.359955, 32.622936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105484, 34.965939, 32.670135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326383, -0.071304, -0.942544,
		0.936861, 0.156855, 0.312549,
		0.125557, -0.985044, 0.117997,
		41.143150, 34.670425, 32.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737103, 35.257275, 32.521725>,  <41.055260, 35.359955, 32.622936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737103, 35.257275, 32.521725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.566494, 34.907402, 32.429623>,  <41.464130, 34.697479, 32.374359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.566494, 34.907402, 32.429623>,  <41.737103, 35.257275, 32.521725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566494, 34.907402, 32.429623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390540, 0.051523, -0.919143,
		0.815818, -0.481957, 0.319621,
		-0.426520, -0.874678, -0.230257,
		41.438538, 34.644997, 32.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333179, 34.931114, 32.126663>,  <41.737103, 35.257275, 32.521725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333179, 34.931114, 32.126663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.984623, 34.753113, 32.044067>,  <41.775490, 34.646313, 31.994511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.984623, 34.753113, 32.044067>,  <42.333179, 34.931114, 32.126663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984623, 34.753113, 32.044067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231855, -0.002642, -0.972747,
		0.432335, -0.895522, 0.105479,
		-0.871395, -0.445009, -0.206489,
		41.723206, 34.619610, 31.982121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454460, 34.303722, 31.580673>,  <42.333179, 34.931114, 32.126663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454460, 34.303722, 31.580673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.066711, 34.398930, 31.556471>,  <41.834061, 34.456055, 31.541950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.066711, 34.398930, 31.556471>,  <42.454460, 34.303722, 31.580673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066711, 34.398930, 31.556471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021018, -0.165062, -0.986059,
		-0.244682, -0.957133, 0.155005,
		-0.969375, 0.238013, -0.060504,
		41.775898, 34.470333, 31.538319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.304569, 33.850792, 30.996349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016418, 34.122879, 31.050545>,  <41.843529, 34.286133, 31.083061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.016418, 34.122879, 31.050545>,  <42.304569, 33.850792, 30.996349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016418, 34.122879, 31.050545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256433, -0.079709, -0.963270,
		-0.644433, -0.728663, 0.231851,
		-0.720380, 0.680217, 0.135486,
		41.800304, 34.326942, 31.091190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684364, 33.581985, 30.731508>,  <42.304569, 33.850792, 30.996349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684364, 33.581985, 30.731508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625217, 33.977539, 30.725187>,  <41.589729, 34.214870, 30.721394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.625217, 33.977539, 30.725187>,  <41.684364, 33.581985, 30.731508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625217, 33.977539, 30.725187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083566, -0.028415, -0.996097,
		-0.985470, -0.145974, 0.086838,
		-0.147872, 0.988881, -0.015804,
		41.580856, 34.274204, 30.720446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016502, 33.728626, 30.386280>,  <41.684364, 33.581985, 30.731508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016502, 33.728626, 30.386280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247902, 34.054382, 30.367933>,  <41.386742, 34.249836, 30.356924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247902, 34.054382, 30.367933>,  <41.016502, 33.728626, 30.386280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247902, 34.054382, 30.367933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128203, 0.035245, -0.991121,
		-0.805546, 0.579242, 0.124797,
		0.578498, 0.814393, -0.045869,
		41.421452, 34.298698, 30.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656269, 34.207542, 29.918423>,  <41.016502, 33.728626, 30.386280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656269, 34.207542, 29.918423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042435, 34.310764, 29.933254>,  <41.274136, 34.372700, 29.942152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.042435, 34.310764, 29.933254>,  <40.656269, 34.207542, 29.918423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042435, 34.310764, 29.933254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007184, 0.115828, -0.993243,
		-0.260610, 0.959161, 0.109969,
		0.965417, 0.258059, 0.037077,
		41.332062, 34.388184, 29.944378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692524, 34.517147, 29.321081>,  <40.656269, 34.207542, 29.918423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692524, 34.517147, 29.321081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078819, 34.484077, 29.419487>,  <41.310596, 34.464237, 29.478531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.078819, 34.484077, 29.419487>,  <40.692524, 34.517147, 29.321081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078819, 34.484077, 29.419487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246691, -0.002065, -0.969092,
		0.080627, 0.996575, 0.018401,
		0.965734, -0.082675, 0.246013,
		41.368538, 34.459274, 29.493290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062271, 35.165184, 28.879482>,  <40.692524, 34.517147, 29.321081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062271, 35.165184, 28.879482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300827, 34.859375, 28.977324>,  <41.443962, 34.675892, 29.036028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.300827, 34.859375, 28.977324>,  <41.062271, 35.165184, 28.879482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300827, 34.859375, 28.977324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286744, -0.081708, -0.954517,
		0.749732, 0.639402, 0.170491,
		0.596389, -0.764519, 0.244604,
		41.479744, 34.630020, 29.050705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725288, 35.313419, 28.535002>,  <41.062271, 35.165184, 28.879482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725288, 35.313419, 28.535002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737114, 34.920597, 28.609514>,  <41.744209, 34.684906, 28.654221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.737114, 34.920597, 28.609514>,  <41.725288, 35.313419, 28.535002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737114, 34.920597, 28.609514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329835, -0.166337, -0.929269,
		0.943576, 0.088917, 0.318997,
		0.029567, -0.982052, 0.186279,
		41.745983, 34.625980, 28.665398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347988, 35.057945, 28.293514>,  <41.725288, 35.313419, 28.535002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347988, 35.057945, 28.293514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139702, 34.716454, 28.293581>,  <42.014729, 34.511559, 28.293621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139702, 34.716454, 28.293581>,  <42.347988, 35.057945, 28.293514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139702, 34.716454, 28.293581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435829, -0.265998, -0.859825,
		0.734101, -0.447655, 0.510590,
		-0.520720, -0.853727, 0.000168,
		41.983486, 34.460335, 28.293631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897884, 34.504986, 28.170259>,  <42.347988, 35.057945, 28.293514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897884, 34.504986, 28.170259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.534100, 34.364357, 28.081469>,  <42.315830, 34.279980, 28.028194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.534100, 34.364357, 28.081469>,  <42.897884, 34.504986, 28.170259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534100, 34.364357, 28.081469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354448, -0.376471, -0.855942,
		0.217359, -0.857126, 0.467001,
		-0.909462, -0.351575, -0.221977,
		42.261261, 34.258884, 28.014875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002014, 33.800385, 27.905424>,  <42.897884, 34.504986, 28.170259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002014, 33.800385, 27.905424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.653164, 33.937683, 27.765957>,  <42.443851, 34.020061, 27.682276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.653164, 33.937683, 27.765957>,  <43.002014, 33.800385, 27.905424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653164, 33.937683, 27.765957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243215, -0.314199, -0.917674,
		-0.424546, -0.885131, 0.190538,
		-0.872128, 0.343253, -0.348669,
		42.391525, 34.040657, 27.661356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930073, 33.359207, 27.356117>,  <43.002014, 33.800385, 27.905424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930073, 33.359207, 27.356117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.611874, 33.590103, 27.282393>,  <42.420956, 33.728642, 27.238157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.611874, 33.590103, 27.282393>,  <42.930073, 33.359207, 27.356117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611874, 33.590103, 27.282393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047275, -0.244123, -0.968591,
		-0.604108, -0.779227, 0.166911,
		-0.795499, 0.577243, -0.184314,
		42.373222, 33.763275, 27.227098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406219, 32.955990, 26.969215>,  <42.930073, 33.359207, 27.356117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406219, 32.955990, 26.969215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361881, 33.346195, 26.893240>,  <42.335278, 33.580318, 26.847654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.361881, 33.346195, 26.893240>,  <42.406219, 32.955990, 26.969215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361881, 33.346195, 26.893240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052016, -0.196551, -0.979113,
		-0.992475, -0.098652, 0.072529,
		-0.110847, 0.975518, -0.189940,
		42.328629, 33.638851, 26.836258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941505, 32.989594, 26.546640>,  <42.406219, 32.955990, 26.969215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941505, 32.989594, 26.546640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.132885, 33.336224, 26.489895>,  <42.247715, 33.544201, 26.455847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.132885, 33.336224, 26.489895>,  <41.941505, 32.989594, 26.546640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132885, 33.336224, 26.489895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011320, -0.167628, -0.985785,
		-0.878041, 0.470044, -0.090012,
		0.478451, 0.866579, -0.141864,
		42.276421, 33.596199, 26.447336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481331, 33.380699, 26.131636>,  <41.941505, 32.989594, 26.546640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481331, 33.380699, 26.131636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846874, 33.538567, 26.093472>,  <42.066200, 33.633286, 26.070574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.846874, 33.538567, 26.093472>,  <41.481331, 33.380699, 26.131636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846874, 33.538567, 26.093472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085246, -0.043250, -0.995421,
		-0.396985, 0.917806, -0.005881,
		0.913858, 0.394666, -0.095409,
		42.121033, 33.656967, 26.064848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484261, 33.856335, 25.611462>,  <41.481331, 33.380699, 26.131636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484261, 33.856335, 25.611462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.875393, 33.774952, 25.631287>,  <42.110073, 33.726120, 25.643183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.875393, 33.774952, 25.631287>,  <41.484261, 33.856335, 25.611462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875393, 33.774952, 25.631287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066621, 0.077855, -0.994736,
		0.198532, 0.975983, 0.089684,
		0.977828, -0.203462, 0.049564,
		42.168739, 33.713913, 25.646156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760086, 34.185566, 25.093042>,  <41.484261, 33.856335, 25.611462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760086, 34.185566, 25.093042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073357, 33.940750, 25.136944>,  <42.261318, 33.793861, 25.163284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.073357, 33.940750, 25.136944>,  <41.760086, 34.185566, 25.093042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073357, 33.940750, 25.136944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, 0.152083, -0.955503,
		0.568114, 0.776065, 0.273805,
		0.783173, -0.612040, 0.109754,
		42.308308, 33.757137, 25.169870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289425, 34.612698, 24.876606>,  <41.760086, 34.185566, 25.093042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289425, 34.612698, 24.876606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.423847, 34.238274, 24.834921>,  <42.504501, 34.013618, 24.809910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.423847, 34.238274, 24.834921>,  <42.289425, 34.612698, 24.876606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423847, 34.238274, 24.834921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380495, 0.236147, -0.894124,
		0.861563, 0.260822, 0.435524,
		0.336055, -0.936059, -0.104214,
		42.524662, 33.957455, 24.803658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876862, 34.769363, 24.559332>,  <42.289425, 34.612698, 24.876606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876862, 34.769363, 24.559332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813385, 34.378181, 24.505054>,  <42.775299, 34.143471, 24.472488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.813385, 34.378181, 24.505054>,  <42.876862, 34.769363, 24.559332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813385, 34.378181, 24.505054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477612, 0.044250, -0.877456,
		0.864121, -0.204052, 0.460063,
		-0.158689, -0.977960, -0.135695,
		42.765778, 34.084793, 24.464346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556412, 34.476326, 24.301783>,  <42.876862, 34.769363, 24.559332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556412, 34.476326, 24.301783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.271065, 34.214043, 24.202869>,  <43.099857, 34.056671, 24.143520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.271065, 34.214043, 24.202869>,  <43.556412, 34.476326, 24.301783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271065, 34.214043, 24.202869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422361, -0.120711, -0.898354,
		0.559208, -0.745302, 0.363058,
		-0.713370, -0.655708, -0.247284,
		43.057053, 34.017330, 24.128685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839401, 33.859062, 24.060846>,  <43.556412, 34.476326, 24.301783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839401, 33.859062, 24.060846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.474911, 33.877102, 23.897076>,  <43.256218, 33.887924, 23.798813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.474911, 33.877102, 23.897076>,  <43.839401, 33.859062, 24.060846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474911, 33.877102, 23.897076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389751, -0.227181, -0.892459,
		-0.133262, -0.972808, 0.189436,
		-0.911227, 0.045097, -0.409428,
		43.201542, 33.890633, 23.774248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722034, 33.224148, 23.668859>,  <43.839401, 33.859062, 24.060846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722034, 33.224148, 23.668859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473431, 33.489616, 23.502361>,  <43.324268, 33.648899, 23.402462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473431, 33.489616, 23.502361>,  <43.722034, 33.224148, 23.668859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473431, 33.489616, 23.502361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359783, -0.230173, -0.904199,
		-0.695902, -0.711728, -0.095723,
		-0.621511, 0.663674, -0.416245,
		43.286976, 33.688717, 23.377487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546074, 32.882317, 23.054022>,  <43.722034, 33.224148, 23.668859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546074, 32.882317, 23.054022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448582, 33.268230, 23.014471>,  <43.390087, 33.499779, 22.990740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.448582, 33.268230, 23.014471>,  <43.546074, 32.882317, 23.054022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448582, 33.268230, 23.014471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230349, -0.041446, -0.972225,
		-0.942090, -0.259741, -0.212136,
		-0.243735, 0.964788, -0.098877,
		43.375462, 33.557667, 22.984808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017765, 33.096428, 22.547092>,  <43.546074, 32.882317, 23.054022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017765, 33.096428, 22.547092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.281326, 33.394222, 22.590157>,  <43.439461, 33.572899, 22.615995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.281326, 33.394222, 22.590157>,  <43.017765, 33.096428, 22.547092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281326, 33.394222, 22.590157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172456, -0.010197, -0.984964,
		-0.732196, 0.667558, -0.135111,
		0.658899, 0.744488, 0.107658,
		43.478996, 33.617569, 22.622454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501781, 32.678734, 22.199293>,  <43.017765, 33.096428, 22.547092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501781, 32.678734, 22.199293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138897, 32.673363, 22.031107>,  <41.921165, 32.670139, 21.930195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138897, 32.673363, 22.031107>,  <42.501781, 32.678734, 22.199293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138897, 32.673363, 22.031107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419499, 0.103693, 0.901814,
		0.031489, 0.994519, -0.099704,
		-0.907209, -0.013428, -0.420465,
		41.866734, 32.669334, 21.904968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169708, 33.293209, 22.414583>,  <42.501781, 32.678734, 22.199293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169708, 33.293209, 22.414583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910408, 33.000755, 22.329531>,  <41.754829, 32.825283, 22.278500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910408, 33.000755, 22.329531>,  <42.169708, 33.293209, 22.414583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910408, 33.000755, 22.329531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368886, 0.057267, 0.927709,
		-0.666104, 0.679825, -0.306829,
		-0.648251, -0.731135, -0.212632,
		41.715935, 32.781414, 22.265741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552120, 33.497612, 22.535170>,  <42.169708, 33.293209, 22.414583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552120, 33.497612, 22.535170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483986, 33.103462, 22.537052>,  <41.443104, 32.866974, 22.538181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483986, 33.103462, 22.537052>,  <41.552120, 33.497612, 22.535170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483986, 33.103462, 22.537052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502530, 0.090976, 0.859760,
		-0.847613, 0.144087, -0.510677,
		-0.170339, -0.985374, 0.004704,
		41.432884, 32.807850, 22.538464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853504, 33.392921, 22.688625>,  <41.552120, 33.497612, 22.535170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853504, 33.392921, 22.688625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006790, 33.037235, 22.788578>,  <41.098763, 32.823822, 22.848549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006790, 33.037235, 22.788578>,  <40.853504, 33.392921, 22.688625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006790, 33.037235, 22.788578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548940, -0.001683, 0.835860,
		-0.742839, -0.457485, -0.488771,
		0.383216, -0.889216, 0.249881,
		41.121754, 32.770470, 22.863543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299202, 33.041866, 22.953268>,  <40.853504, 33.392921, 22.688625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299202, 33.041866, 22.953268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606579, 32.827000, 23.092382>,  <40.791004, 32.698078, 23.175850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.606579, 32.827000, 23.092382>,  <40.299202, 33.041866, 22.953268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606579, 32.827000, 23.092382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531484, -0.233044, 0.814381,
		-0.356413, -0.810641, -0.464577,
		0.768437, -0.537170, 0.347783,
		40.837109, 32.665848, 23.196718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034473, 32.513401, 23.167290>,  <40.299202, 33.041866, 22.953268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034473, 32.513401, 23.167290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388947, 32.473156, 23.348198>,  <40.601631, 32.449009, 23.456743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.388947, 32.473156, 23.348198>,  <40.034473, 32.513401, 23.167290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388947, 32.473156, 23.348198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463135, -0.164190, 0.870946,
		-0.013365, -0.981285, -0.192098,
		0.886187, -0.100607, 0.452273,
		40.654804, 32.442974, 23.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957829, 31.940210, 23.406576>,  <40.034473, 32.513401, 23.167290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957829, 31.940210, 23.406576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228512, 32.129078, 23.632540>,  <40.390923, 32.242397, 23.768118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228512, 32.129078, 23.632540>,  <39.957829, 31.940210, 23.406576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228512, 32.129078, 23.632540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526547, -0.225913, 0.819580,
		0.514600, -0.852068, 0.095741,
		0.676709, 0.472168, 0.564909,
		40.431526, 32.270729, 23.802013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016674, 31.554050, 24.040716>,  <39.957829, 31.940210, 23.406576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016674, 31.554050, 24.040716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218842, 31.887592, 24.129475>,  <40.340141, 32.087719, 24.182730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.218842, 31.887592, 24.129475>,  <40.016674, 31.554050, 24.040716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218842, 31.887592, 24.129475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215609, -0.126961, 0.968191,
		0.835503, -0.537184, 0.115618,
		0.505418, 0.833855, 0.221898,
		40.370468, 32.137749, 24.196043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535378, 31.425901, 24.627071>,  <40.016674, 31.554050, 24.040716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535378, 31.425901, 24.627071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431721, 31.812229, 24.629549>,  <40.369526, 32.044025, 24.631037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.431721, 31.812229, 24.629549>,  <40.535378, 31.425901, 24.627071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431721, 31.812229, 24.629549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212311, -0.063221, 0.975155,
		0.942216, 0.251384, 0.221437,
		-0.259138, 0.965820, 0.006196,
		40.353981, 32.101974, 24.631409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890671, 31.679384, 25.273685>,  <40.535378, 31.425901, 24.627071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890671, 31.679384, 25.273685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621971, 31.952896, 25.159704>,  <40.460751, 32.117004, 25.091316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.621971, 31.952896, 25.159704>,  <40.890671, 31.679384, 25.273685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621971, 31.952896, 25.159704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103861, 0.293933, 0.950167,
		0.733460, 0.667871, -0.126432,
		-0.671751, 0.683778, -0.284954,
		40.420444, 32.158028, 25.074219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093746, 32.382744, 25.619164>,  <40.890671, 31.679384, 25.273685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093746, 32.382744, 25.619164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701519, 32.357914, 25.544722>,  <40.466183, 32.343018, 25.500057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.701519, 32.357914, 25.544722>,  <41.093746, 32.382744, 25.619164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701519, 32.357914, 25.544722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195267, 0.400330, 0.895325,
		0.018928, 0.914266, -0.404671,
		-0.980567, -0.062072, -0.186104,
		40.407349, 32.339291, 25.488890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811821, 32.947857, 25.744501>,  <41.093746, 32.382744, 25.619164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811821, 32.947857, 25.744501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483887, 32.719669, 25.764242>,  <40.287128, 32.582756, 25.776087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483887, 32.719669, 25.764242>,  <40.811821, 32.947857, 25.744501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483887, 32.719669, 25.764242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204148, 0.371734, 0.905614,
		-0.534974, 0.732376, -0.421221,
		-0.819833, -0.570472, 0.049355,
		40.237938, 32.548527, 25.779049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286690, 33.401543, 25.987947>,  <40.811821, 32.947857, 25.744501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286690, 33.401543, 25.987947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130737, 33.040356, 26.060209>,  <40.037167, 32.823643, 26.103567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130737, 33.040356, 26.060209>,  <40.286690, 33.401543, 25.987947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130737, 33.040356, 26.060209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186832, 0.269667, 0.944655,
		-0.901711, 0.334554, -0.273842,
		-0.389885, -0.902969, 0.180656,
		40.013771, 32.769466, 26.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782623, 33.545200, 26.499994>,  <40.286690, 33.401543, 25.987947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782623, 33.545200, 26.499994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840282, 33.151066, 26.536524>,  <39.874878, 32.914585, 26.558441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.840282, 33.151066, 26.536524>,  <39.782623, 33.545200, 26.499994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840282, 33.151066, 26.536524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087612, 0.079216, 0.993000,
		-0.985671, -0.151137, -0.074908,
		0.144145, -0.985334, 0.091322,
		39.883526, 32.855465, 26.563921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382534, 33.327278, 26.900425>,  <39.782623, 33.545200, 26.499994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382534, 33.327278, 26.900425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645306, 33.026897, 26.927317>,  <39.802967, 32.846668, 26.943453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645306, 33.026897, 26.927317>,  <39.382534, 33.327278, 26.900425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645306, 33.026897, 26.927317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034412, 0.059215, 0.997652,
		-0.753168, -0.657698, 0.013058,
		0.656927, -0.750950, 0.067232,
		39.842384, 32.801613, 26.947487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032383, 32.879452, 27.298748>,  <39.382534, 33.327278, 26.900425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032383, 32.879452, 27.298748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412617, 32.760944, 27.335886>,  <39.640755, 32.689838, 27.358170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412617, 32.760944, 27.335886>,  <39.032383, 32.879452, 27.298748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412617, 32.760944, 27.335886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107951, -0.034999, 0.993540,
		-0.291107, -0.954463, -0.065252,
		0.950580, -0.296270, 0.092846,
		39.697792, 32.672062, 27.363739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 32.311897, 27.802864>,  <39.032383, 32.879452, 27.298748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980843, 32.311897, 27.802864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365582, 32.417652, 27.774714>,  <39.596424, 32.481106, 27.757822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365582, 32.417652, 27.774714>,  <38.980843, 32.311897, 27.802864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365582, 32.417652, 27.774714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170471, -0.377941, 0.910000,
		0.213995, -0.887277, -0.408591,
		0.961845, 0.264389, -0.070378,
		39.654137, 32.496967, 27.753601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396534, 31.766159, 27.911133>,  <38.980843, 32.311897, 27.802864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396534, 31.766159, 27.911133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623184, 32.077290, 28.019882>,  <39.759174, 32.263969, 28.085133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623184, 32.077290, 28.019882>,  <39.396534, 31.766159, 27.911133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623184, 32.077290, 28.019882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060216, -0.368164, 0.927809,
		0.821771, -0.509351, -0.255450,
		0.566628, 0.777828, 0.271875,
		39.793171, 32.310638, 28.101444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025635, 31.492580, 28.188684>,  <39.396534, 31.766159, 27.911133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025635, 31.492580, 28.188684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001060, 31.856730, 28.352365>,  <39.986317, 32.075218, 28.450575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.001060, 31.856730, 28.352365>,  <40.025635, 31.492580, 28.188684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001060, 31.856730, 28.352365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403322, -0.352374, 0.844490,
		0.912993, 0.216921, -0.345526,
		-0.061434, 0.910372, 0.409204,
		39.982632, 32.129841, 28.475126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580692, 31.564173, 28.647793>,  <40.025635, 31.492580, 28.188684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580692, 31.564173, 28.647793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351280, 31.867029, 28.772882>,  <40.213631, 32.048744, 28.847937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.351280, 31.867029, 28.772882>,  <40.580692, 31.564173, 28.647793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351280, 31.867029, 28.772882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260489, -0.193374, 0.945913,
		0.776663, 0.623974, -0.086321,
		-0.573533, 0.757142, 0.312725,
		40.179222, 32.094173, 28.866699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980072, 31.832544, 29.223646>,  <40.580692, 31.564173, 28.647793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980072, 31.832544, 29.223646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.611328, 31.978579, 29.275612>,  <40.390079, 32.066200, 29.306791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.611328, 31.978579, 29.275612>,  <40.980072, 31.832544, 29.223646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611328, 31.978579, 29.275612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065172, -0.184405, 0.980687,
		0.381994, 0.912527, 0.146203,
		-0.921864, 0.365088, 0.129913,
		40.334770, 32.088104, 29.314587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.831341, 34.468800, 34.188362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451218, 34.420517, 34.073582>,  <41.223145, 34.391548, 34.004715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.451218, 34.420517, 34.073582>,  <41.831341, 34.468800, 34.188362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451218, 34.420517, 34.073582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301572, 0.128274, 0.944775,
		-0.077230, 0.984366, -0.158301,
		-0.950310, -0.120704, -0.286951,
		41.166126, 34.384304, 33.987495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426723, 35.035706, 34.506504>,  <41.831341, 34.468800, 34.188362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426723, 35.035706, 34.506504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172413, 34.740459, 34.416195>,  <41.019825, 34.563313, 34.362007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.172413, 34.740459, 34.416195>,  <41.426723, 35.035706, 34.506504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172413, 34.740459, 34.416195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281479, -0.050653, 0.958230,
		-0.718718, 0.672773, -0.175559,
		-0.635779, -0.738113, -0.225777,
		40.981678, 34.519024, 34.348461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800911, 35.287792, 34.812035>,  <41.426723, 35.035706, 34.506504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800911, 35.287792, 34.812035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745987, 34.892529, 34.784641>,  <40.713032, 34.655369, 34.768208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745987, 34.892529, 34.784641>,  <40.800911, 35.287792, 34.812035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745987, 34.892529, 34.784641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336415, -0.018502, 0.941532,
		-0.931650, 0.152316, -0.329891,
		-0.137307, -0.988159, -0.068479,
		40.704796, 34.596081, 34.764099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176914, 35.059799, 35.201809>,  <40.800911, 35.287792, 34.812035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176914, 35.059799, 35.201809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382175, 34.717766, 35.172142>,  <40.505333, 34.512547, 35.154343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382175, 34.717766, 35.172142>,  <40.176914, 35.059799, 35.201809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382175, 34.717766, 35.172142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126794, -0.160992, 0.978777,
		-0.848881, -0.492856, -0.191033,
		0.513151, -0.855088, -0.074171,
		40.536121, 34.461239, 35.149891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789478, 34.561771, 35.626965>,  <40.176914, 35.059799, 35.201809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789478, 34.561771, 35.626965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144932, 34.389362, 35.564289>,  <40.358204, 34.285919, 35.526684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144932, 34.389362, 35.564289>,  <39.789478, 34.561771, 35.626965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144932, 34.389362, 35.564289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020384, -0.378435, 0.925403,
		-0.458163, -0.819152, -0.345076,
		0.888634, -0.431020, -0.156687,
		40.411522, 34.260056, 35.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716270, 33.825878, 35.925247>,  <39.789478, 34.561771, 35.626965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716270, 33.825878, 35.925247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108841, 33.892483, 35.887123>,  <40.344383, 33.932446, 35.864250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108841, 33.892483, 35.887123>,  <39.716270, 33.825878, 35.925247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108841, 33.892483, 35.887123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146938, -0.332915, 0.931438,
		0.123367, -0.928139, -0.351198,
		0.981423, 0.166513, -0.095309,
		40.403267, 33.942436, 35.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977760, 33.181881, 35.997814>,  <39.716270, 33.825878, 35.925247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977760, 33.181881, 35.997814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276062, 33.430080, 36.094833>,  <40.455044, 33.578999, 36.153046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.276062, 33.430080, 36.094833>,  <39.977760, 33.181881, 35.997814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276062, 33.430080, 36.094833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036510, -0.325463, 0.944850,
		0.665216, -0.713485, -0.220063,
		0.745758, 0.620494, 0.242552,
		40.499790, 33.616230, 36.167599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468662, 32.829166, 36.344738>,  <39.977760, 33.181881, 35.997814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468662, 32.829166, 36.344738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532310, 33.206745, 36.460430>,  <40.570499, 33.433292, 36.529846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532310, 33.206745, 36.460430>,  <40.468662, 32.829166, 36.344738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532310, 33.206745, 36.460430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093773, -0.306087, 0.947374,
		0.982796, -0.123625, -0.137221,
		0.159121, 0.943943, 0.289228,
		40.580048, 33.489929, 36.547199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166000, 32.872433, 36.666580>,  <40.468662, 32.829166, 36.344738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166000, 32.872433, 36.666580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987148, 33.209999, 36.785164>,  <40.879837, 33.412537, 36.856312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.987148, 33.209999, 36.785164>,  <41.166000, 32.872433, 36.666580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987148, 33.209999, 36.785164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025794, -0.319129, 0.947360,
		0.894096, 0.431242, 0.120925,
		-0.447132, 0.843912, 0.296455,
		40.853008, 33.463173, 36.874100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446354, 33.078697, 37.405258>,  <41.166000, 32.872433, 36.666580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446354, 33.078697, 37.405258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091740, 33.258133, 37.359970>,  <40.878971, 33.365795, 37.332798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091740, 33.258133, 37.359970>,  <41.446354, 33.078697, 37.405258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091740, 33.258133, 37.359970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152687, -0.052680, 0.986870,
		0.436736, 0.892184, 0.115197,
		-0.886537, 0.448591, -0.113218,
		40.825779, 33.392712, 37.326004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407127, 33.583775, 37.920334>,  <41.446354, 33.078697, 37.405258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407127, 33.583775, 37.920334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033566, 33.488369, 37.813808>,  <40.809429, 33.431126, 37.749893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033566, 33.488369, 37.813808>,  <41.407127, 33.583775, 37.920334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033566, 33.488369, 37.813808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284174, 0.043254, 0.957797,
		-0.216932, 0.970175, -0.108176,
		-0.933909, -0.238518, -0.266315,
		40.753391, 33.416813, 37.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027775, 33.930424, 38.351467>,  <41.407127, 33.583775, 37.920334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027775, 33.930424, 38.351467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729370, 33.698254, 38.220886>,  <40.550327, 33.558952, 38.142536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729370, 33.698254, 38.220886>,  <41.027775, 33.930424, 38.351467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729370, 33.698254, 38.220886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443338, 0.067092, 0.893840,
		-0.496904, 0.811546, -0.307375,
		-0.746015, -0.580424, -0.326451,
		40.505566, 33.524128, 38.122952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207798, 34.643387, 38.075542>,  <41.027775, 33.930424, 38.351467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207798, 34.643387, 38.075542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553230, 34.660416, 38.276508>,  <41.760490, 34.670635, 38.397087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.553230, 34.660416, 38.276508>,  <41.207798, 34.643387, 38.075542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553230, 34.660416, 38.276508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269832, 0.802712, -0.531831,
		-0.425934, 0.594845, 0.681718,
		0.863580, 0.042576, 0.502411,
		41.812305, 34.673187, 38.427231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387306, 35.347145, 38.317924>,  <41.207798, 34.643387, 38.075542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387306, 35.347145, 38.317924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726646, 35.145233, 38.254055>,  <41.930252, 35.024086, 38.215733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726646, 35.145233, 38.254055>,  <41.387306, 35.347145, 38.317924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726646, 35.145233, 38.254055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320468, 0.729672, -0.604053,
		0.421419, 0.461281, 0.780785,
		0.848355, -0.504776, -0.159672,
		41.981152, 34.993801, 38.206154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247936, 36.064774, 38.081928>,  <41.387306, 35.347145, 38.317924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247936, 36.064774, 38.081928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885132, 36.209438, 38.168201>,  <40.667450, 36.296238, 38.219967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885132, 36.209438, 38.168201>,  <41.247936, 36.064774, 38.081928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885132, 36.209438, 38.168201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221176, 0.026697, -0.974868,
		-0.358335, -0.931925, 0.055777,
		-0.907015, 0.361666, 0.215686,
		40.613026, 36.317940, 38.232906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802444, 35.600559, 37.663158>,  <41.247936, 36.064774, 38.081928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802444, 35.600559, 37.663158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621353, 35.953003, 37.717831>,  <40.512699, 36.164471, 37.750633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621353, 35.953003, 37.717831>,  <40.802444, 35.600559, 37.663158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621353, 35.953003, 37.717831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113240, 0.095230, -0.988993,
		-0.884430, -0.463221, 0.056664,
		-0.452726, 0.881112, 0.136680,
		40.485535, 36.217335, 37.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259941, 35.545147, 37.263672>,  <40.802444, 35.600559, 37.663158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259941, 35.545147, 37.263672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.270523, 35.939472, 37.329964>,  <40.276871, 36.176067, 37.369740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.270523, 35.939472, 37.329964>,  <40.259941, 35.545147, 37.263672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270523, 35.939472, 37.329964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142044, 0.167808, -0.975533,
		-0.989507, 0.002267, 0.144469,
		0.026455, 0.985817, 0.165725,
		40.278461, 36.235218, 37.379681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587452, 35.896790, 37.081028>,  <40.259941, 35.545147, 37.263672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587452, 35.896790, 37.081028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886189, 36.161343, 37.053284>,  <40.065430, 36.320072, 37.036636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.886189, 36.161343, 37.053284>,  <39.587452, 35.896790, 37.081028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886189, 36.161343, 37.053284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206081, 0.131017, -0.969724,
		-0.632268, 0.738520, 0.234146,
		0.746838, 0.661379, -0.069358,
		40.110241, 36.359756, 37.032478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397797, 36.355240, 36.488342>,  <39.587452, 35.896790, 37.081028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397797, 36.355240, 36.488342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 36.464836, 36.511177>,  <40.012218, 36.530594, 36.524879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781811, 36.464836, 36.511177>,  <39.397797, 36.355240, 36.488342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781811, 36.464836, 36.511177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021197, 0.132220, -0.990994,
		-0.279069, 0.952601, 0.121128,
		0.960037, 0.273988, 0.057091,
		40.069820, 36.547031, 36.528305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468315, 36.965996, 36.065258>,  <39.397797, 36.355240, 36.488342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468315, 36.965996, 36.065258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846767, 36.838551, 36.088310>,  <40.073837, 36.762085, 36.102142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846767, 36.838551, 36.088310>,  <39.468315, 36.965996, 36.065258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846767, 36.838551, 36.088310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134681, 0.225404, -0.964911,
		0.294441, 0.920696, 0.256172,
		0.946132, -0.318611, 0.057632,
		40.130608, 36.742966, 36.105598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820644, 37.498646, 35.860744>,  <39.468315, 36.965996, 36.065258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820644, 37.498646, 35.860744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046314, 37.182892, 35.763927>,  <40.181717, 36.993439, 35.705837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046314, 37.182892, 35.763927>,  <39.820644, 37.498646, 35.860744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046314, 37.182892, 35.763927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084592, 0.346870, -0.934091,
		0.821313, 0.506512, 0.262470,
		0.564171, -0.789384, -0.242042,
		40.215565, 36.946075, 35.691315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315887, 37.808517, 35.613060>,  <39.820644, 37.498646, 35.860744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315887, 37.808517, 35.613060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333134, 37.439392, 35.459930>,  <40.343483, 37.217915, 35.368053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333134, 37.439392, 35.459930>,  <40.315887, 37.808517, 35.613060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333134, 37.439392, 35.459930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052157, 0.384735, -0.921552,
		0.997707, 0.019769, 0.064721,
		0.043119, -0.922815, -0.382822,
		40.346069, 37.162548, 35.345085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917755, 37.848034, 35.150703>,  <40.315887, 37.808517, 35.613060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917755, 37.848034, 35.150703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719746, 37.519363, 35.037708>,  <40.600941, 37.322159, 34.969913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.719746, 37.519363, 35.037708>,  <40.917755, 37.848034, 35.150703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719746, 37.519363, 35.037708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017745, 0.315485, -0.948765,
		0.868700, -0.474671, -0.141591,
		-0.495021, -0.821679, -0.282485,
		40.571239, 37.272861, 34.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315174, 37.454571, 34.539307>,  <40.917755, 37.848034, 35.150703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315174, 37.454571, 34.539307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.934475, 37.332844, 34.523510>,  <40.706055, 37.259808, 34.514030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.934475, 37.332844, 34.523510>,  <41.315174, 37.454571, 34.539307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934475, 37.332844, 34.523510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039261, 0.248388, -0.967865,
		0.304347, -0.919616, -0.248352,
		-0.951751, -0.304317, -0.039491,
		40.648949, 37.241550, 34.511662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163013, 37.145279, 33.808907>,  <41.315174, 37.454571, 34.539307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163013, 37.145279, 33.808907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802624, 37.207241, 33.971020>,  <40.586391, 37.244419, 34.068287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.802624, 37.207241, 33.971020>,  <41.163013, 37.145279, 33.808907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802624, 37.207241, 33.971020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297589, 0.459121, -0.837048,
		-0.315737, -0.874764, -0.367557,
		-0.900972, 0.154906, 0.405281,
		40.532333, 37.253712, 34.092606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712719, 36.767166, 33.341408>,  <41.163013, 37.145279, 33.808907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712719, 36.767166, 33.341408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499474, 37.049835, 33.527485>,  <40.371529, 37.219437, 33.639130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499474, 37.049835, 33.527485>,  <40.712719, 36.767166, 33.341408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499474, 37.049835, 33.527485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266779, 0.381381, -0.885086,
		-0.802883, -0.595953, -0.014793,
		-0.533111, 0.706674, 0.465192,
		40.339539, 37.261837, 33.667042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025230, 36.666901, 33.120148>,  <40.712719, 36.767166, 33.341408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025230, 36.666901, 33.120148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047455, 37.041454, 33.258766>,  <40.060791, 37.266186, 33.341938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.047455, 37.041454, 33.258766>,  <40.025230, 36.666901, 33.120148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047455, 37.041454, 33.258766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222964, 0.349954, -0.909846,
		-0.973242, -0.026711, 0.228226,
		0.055565, 0.936386, 0.346545,
		40.064125, 37.322369, 33.362728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495712, 37.022190, 32.727039>,  <40.025230, 36.666901, 33.120148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495712, 37.022190, 32.727039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756420, 37.291721, 32.866272>,  <39.912846, 37.453438, 32.949810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.756420, 37.291721, 32.866272>,  <39.495712, 37.022190, 32.727039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756420, 37.291721, 32.866272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092450, 0.526121, -0.845369,
		-0.752765, 0.518802, 0.405202,
		0.651765, 0.673825, 0.348083,
		39.951950, 37.493870, 32.970695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982883, 37.476067, 33.077156>,  <39.495712, 37.022190, 32.727039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982883, 37.476067, 33.077156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.584595, 37.500111, 33.105251>,  <38.345623, 37.514538, 33.122108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.584595, 37.500111, 33.105251>,  <38.982883, 37.476067, 33.077156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584595, 37.500111, 33.105251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056847, -0.201038, 0.977933,
		0.072904, 0.977737, 0.196760,
		-0.995718, 0.060110, 0.070238,
		38.285881, 37.518143, 33.126324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827858, 37.813858, 33.627323>,  <38.982883, 37.476067, 33.077156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827858, 37.813858, 33.627323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473614, 37.635372, 33.575813>,  <38.261066, 37.528282, 33.544907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473614, 37.635372, 33.575813>,  <38.827858, 37.813858, 33.627323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473614, 37.635372, 33.575813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076537, -0.133271, 0.988120,
		-0.458072, 0.884949, 0.083875,
		-0.885614, -0.446210, -0.128779,
		38.207928, 37.501511, 33.537178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284912, 38.049244, 34.141151>,  <38.827858, 37.813858, 33.627323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284912, 38.049244, 34.141151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 37.706913, 34.030453>,  <38.005238, 37.501514, 33.964035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 37.706913, 34.030453>,  <38.284912, 38.049244, 34.141151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110115, 37.706913, 34.030453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248500, -0.180830, 0.951603,
		-0.864456, 0.484617, -0.133653,
		-0.436994, -0.855831, -0.276747,
		37.979015, 37.450165, 33.947430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581940, 37.949272, 34.378082>,  <38.284912, 38.049244, 34.141151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581940, 37.949272, 34.378082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683987, 37.567589, 34.315598>,  <37.745213, 37.338577, 34.278107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683987, 37.567589, 34.315598>,  <37.581940, 37.949272, 34.378082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683987, 37.567589, 34.315598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364949, -0.244630, 0.898314,
		-0.895393, -0.172165, -0.410646,
		0.255114, -0.954209, -0.156208,
		37.760521, 37.281326, 34.268734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020203, 37.563000, 34.545082>,  <37.581940, 37.949272, 34.378082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020203, 37.563000, 34.545082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307339, 37.284771, 34.556980>,  <37.479618, 37.117832, 34.564121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307339, 37.284771, 34.556980>,  <37.020203, 37.563000, 34.545082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307339, 37.284771, 34.556980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442257, -0.422575, 0.791100,
		-0.537701, -0.581035, -0.610963,
		0.717835, -0.695577, 0.029748,
		37.522690, 37.076099, 34.565903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661694, 36.955700, 34.746346>,  <37.020203, 37.563000, 34.545082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661694, 36.955700, 34.746346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042233, 36.870464, 34.835369>,  <37.270557, 36.819324, 34.888783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042233, 36.870464, 34.835369>,  <36.661694, 36.955700, 34.746346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042233, 36.870464, 34.835369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301343, -0.492737, 0.816335,
		-0.064288, -0.843684, -0.532977,
		0.951346, -0.213089, 0.222561,
		37.327637, 36.806538, 34.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671455, 36.237209, 34.775913>,  <36.661694, 36.955700, 34.746346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671455, 36.237209, 34.775913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985943, 36.361187, 34.989750>,  <37.174637, 36.435574, 35.118053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.985943, 36.361187, 34.989750>,  <36.671455, 36.237209, 34.775913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985943, 36.361187, 34.989750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224123, -0.663181, 0.714114,
		0.575866, -0.681268, -0.451943,
		0.786223, 0.309943, 0.534591,
		37.221809, 36.454170, 35.150127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016548, 35.642899, 35.004208>,  <36.671455, 36.237209, 34.775913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016548, 35.642899, 35.004208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133892, 35.916336, 35.271534>,  <37.204296, 36.080399, 35.431931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133892, 35.916336, 35.271534>,  <37.016548, 35.642899, 35.004208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133892, 35.916336, 35.271534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053559, -0.709724, 0.702441,
		0.954501, -0.170273, -0.244815,
		0.293358, 0.683593, 0.668313,
		37.221901, 36.121414, 35.472027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672550, 35.355011, 35.391182>,  <37.016548, 35.642899, 35.004208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672550, 35.355011, 35.391182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521667, 35.639862, 35.628025>,  <37.431137, 35.810772, 35.770130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.521667, 35.639862, 35.628025>,  <37.672550, 35.355011, 35.391182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521667, 35.639862, 35.628025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218966, -0.552629, 0.804148,
		0.899871, 0.432981, 0.052523,
		-0.377207, 0.712129, 0.592104,
		37.408504, 35.853500, 35.805656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054169, 35.367935, 36.062931>,  <37.672550, 35.355011, 35.391182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054169, 35.367935, 36.062931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722374, 35.559589, 36.177742>,  <37.523296, 35.674583, 36.246628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.722374, 35.559589, 36.177742>,  <38.054169, 35.367935, 36.062931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722374, 35.559589, 36.177742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094330, -0.386332, 0.917523,
		0.550506, 0.788146, 0.275260,
		-0.829484, 0.479137, 0.287024,
		37.473530, 35.703331, 36.263847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242634, 35.468269, 36.734013>,  <38.054169, 35.367935, 36.062931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242634, 35.468269, 36.734013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846786, 35.519070, 36.707077>,  <37.609280, 35.549549, 36.690918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846786, 35.519070, 36.707077>,  <38.242634, 35.468269, 36.734013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846786, 35.519070, 36.707077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118093, -0.451184, 0.884583,
		0.081963, 0.883348, 0.461497,
		-0.989614, 0.127003, -0.067337,
		37.549904, 35.557171, 36.686874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082321, 35.726067, 37.425442>,  <38.242634, 35.468269, 36.734013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082321, 35.726067, 37.425442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733833, 35.591034, 37.282883>,  <37.524742, 35.510014, 37.197346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733833, 35.591034, 37.282883>,  <38.082321, 35.726067, 37.425442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733833, 35.591034, 37.282883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121052, -0.555858, 0.822416,
		-0.475737, 0.759646, 0.443409,
		-0.871218, -0.337578, -0.356399,
		37.472469, 35.489761, 37.175964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.059917, 37.841766, 29.479591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738483, 37.609974, 29.533913>,  <38.545624, 37.470898, 29.566505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738483, 37.609974, 29.533913>,  <39.059917, 37.841766, 29.479591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738483, 37.609974, 29.533913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104928, 0.362529, 0.926047,
		-0.585862, 0.729912, -0.352129,
		-0.803589, -0.579484, 0.135803,
		38.497406, 37.436131, 29.574654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516026, 38.230690, 29.880814>,  <39.059917, 37.841766, 29.479591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516026, 38.230690, 29.880814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389439, 37.855518, 29.937582>,  <38.313484, 37.630417, 29.971643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389439, 37.855518, 29.937582>,  <38.516026, 38.230690, 29.880814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389439, 37.855518, 29.937582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243992, 0.225062, 0.943300,
		-0.916686, 0.263900, -0.300072,
		-0.316472, -0.937925, 0.141922,
		38.294498, 37.574142, 29.980158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794289, 38.244831, 30.157232>,  <38.516026, 38.230690, 29.880814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794289, 38.244831, 30.157232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929920, 37.884365, 30.265251>,  <38.011299, 37.668083, 30.330063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929920, 37.884365, 30.265251>,  <37.794289, 38.244831, 30.157232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929920, 37.884365, 30.265251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216557, 0.204576, 0.954595,
		-0.915495, -0.382160, -0.125788,
		0.339075, -0.901167, 0.270048,
		38.031643, 37.614014, 30.346266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343468, 38.096909, 30.689184>,  <37.794289, 38.244831, 30.157232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343468, 38.096909, 30.689184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614895, 37.814999, 30.771975>,  <37.777752, 37.645855, 30.821650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614895, 37.814999, 30.771975>,  <37.343468, 38.096909, 30.689184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614895, 37.814999, 30.771975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323019, -0.033246, 0.945808,
		-0.659699, -0.708654, -0.250215,
		0.678569, -0.704773, 0.206976,
		37.818466, 37.603565, 30.834068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980984, 37.670143, 31.207085>,  <37.343468, 38.096909, 30.689184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980984, 37.670143, 31.207085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373379, 37.592518, 31.206070>,  <37.608814, 37.545944, 31.205462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373379, 37.592518, 31.206070>,  <36.980984, 37.670143, 31.207085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373379, 37.592518, 31.206070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013619, -0.081884, 0.996549,
		-0.193599, -0.977566, -0.082970,
		0.980986, -0.194061, -0.002539,
		37.667675, 37.534298, 31.205309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137814, 37.045605, 31.583502>,  <36.980984, 37.670143, 31.207085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137814, 37.045605, 31.583502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471367, 37.266129, 31.594097>,  <37.671497, 37.398445, 31.600454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471367, 37.266129, 31.594097>,  <37.137814, 37.045605, 31.583502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471367, 37.266129, 31.594097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006526, -0.038135, 0.999251,
		0.551909, -0.833427, -0.028202,
		0.833879, 0.551312, 0.026486,
		37.721531, 37.431522, 31.602043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533230, 36.588711, 31.957708>,  <37.137814, 37.045605, 31.583502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533230, 36.588711, 31.957708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661880, 36.967209, 31.971441>,  <37.739071, 37.194305, 31.979681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661880, 36.967209, 31.971441>,  <37.533230, 36.588711, 31.957708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661880, 36.967209, 31.971441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036804, -0.048727, 0.998134,
		0.946150, -0.319767, -0.050497,
		0.321630, 0.946243, 0.034334,
		37.758369, 37.251083, 31.981741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108273, 36.579330, 32.373466>,  <37.533230, 36.588711, 31.957708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108273, 36.579330, 32.373466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038868, 36.971886, 32.340534>,  <37.997227, 37.207417, 32.320774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038868, 36.971886, 32.340534>,  <38.108273, 36.579330, 32.373466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038868, 36.971886, 32.340534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330936, 0.136838, 0.933679,
		0.927565, 0.134754, -0.348518,
		-0.173508, 0.981385, -0.082332,
		37.986816, 37.266300, 32.315834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704887, 36.987659, 32.526443>,  <38.108273, 36.579330, 32.373466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704887, 36.987659, 32.526443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386810, 37.217197, 32.604801>,  <38.195965, 37.354919, 32.651817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386810, 37.217197, 32.604801>,  <38.704887, 36.987659, 32.526443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386810, 37.217197, 32.604801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281281, 0.062886, 0.957563,
		0.537172, 0.816547, -0.211418,
		-0.795190, 0.573844, 0.195898,
		38.148254, 37.389351, 32.663570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214344, 37.596794, 32.379295>,  <38.704887, 36.987659, 32.526443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214344, 37.596794, 32.379295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592628, 37.668011, 32.488064>,  <39.819599, 37.710739, 32.553326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592628, 37.668011, 32.488064>,  <39.214344, 37.596794, 32.379295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592628, 37.668011, 32.488064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204689, 0.323617, -0.923783,
		-0.252465, 0.929287, 0.269604,
		0.945708, 0.178037, 0.271917,
		39.876343, 37.721420, 32.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369072, 38.226818, 32.113354>,  <39.214344, 37.596794, 32.379295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369072, 38.226818, 32.113354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716545, 38.038361, 32.174561>,  <39.925030, 37.925285, 32.211285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716545, 38.038361, 32.174561>,  <39.369072, 38.226818, 32.113354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716545, 38.038361, 32.174561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320423, 0.298840, -0.898901,
		0.377783, 0.829891, 0.410562,
		0.868683, -0.471143, 0.153020,
		39.977150, 37.897018, 32.220467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892609, 38.668137, 31.927896>,  <39.369072, 38.226818, 32.113354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892609, 38.668137, 31.927896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111126, 38.333649, 31.908670>,  <40.242237, 38.132957, 31.897135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111126, 38.333649, 31.908670>,  <39.892609, 38.668137, 31.927896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111126, 38.333649, 31.908670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349648, 0.279816, -0.894119,
		0.761125, 0.471643, 0.445242,
		0.546291, -0.836215, -0.048066,
		40.275013, 38.082783, 31.894251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519550, 38.874016, 31.700258>,  <39.892609, 38.668137, 31.927896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519550, 38.874016, 31.700258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509552, 38.484425, 31.610153>,  <40.503551, 38.250671, 31.556089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509552, 38.484425, 31.610153>,  <40.519550, 38.874016, 31.700258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509552, 38.484425, 31.610153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385770, 0.198484, -0.900992,
		0.922257, -0.109422, 0.370769,
		-0.024997, -0.973977, -0.225264,
		40.502052, 38.192230, 31.542574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149986, 38.701847, 31.376551>,  <40.519550, 38.874016, 31.700258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149986, 38.701847, 31.376551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954674, 38.365376, 31.283592>,  <40.837486, 38.163494, 31.227818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954674, 38.365376, 31.283592>,  <41.149986, 38.701847, 31.376551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954674, 38.365376, 31.283592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447586, -0.012781, -0.894150,
		0.749166, -0.540612, 0.382739,
		-0.488280, -0.841175, -0.232395,
		40.808189, 38.113022, 31.213873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623260, 38.345127, 30.917330>,  <41.149986, 38.701847, 31.376551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623260, 38.345127, 30.917330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261295, 38.192322, 30.842281>,  <41.044117, 38.100639, 30.797253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261295, 38.192322, 30.842281>,  <41.623260, 38.345127, 30.917330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261295, 38.192322, 30.842281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168081, 0.084229, -0.982168,
		0.391000, -0.920312, -0.012012,
		-0.904913, -0.382009, -0.187621,
		40.989822, 38.077721, 30.785995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703789, 37.834354, 30.333855>,  <41.623260, 38.345127, 30.917330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703789, 37.834354, 30.333855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311047, 37.909512, 30.323612>,  <41.075401, 37.954605, 30.317467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311047, 37.909512, 30.323612>,  <41.703789, 37.834354, 30.333855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311047, 37.909512, 30.323612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028972, 0.015195, -0.999465,
		-0.187403, -0.982072, -0.020363,
		-0.981856, 0.187893, -0.025605,
		41.016491, 37.965878, 30.315931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453335, 37.308365, 29.881767>,  <41.703789, 37.834354, 30.333855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453335, 37.308365, 29.881767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170765, 37.590969, 29.898741>,  <41.001221, 37.760532, 29.908924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170765, 37.590969, 29.898741>,  <41.453335, 37.308365, 29.881767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170765, 37.590969, 29.898741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136952, -0.077625, -0.987531,
		-0.694408, -0.703432, 0.151595,
		-0.706429, 0.706511, 0.042433,
		40.958836, 37.802921, 29.911470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866749, 37.032959, 29.481464>,  <41.453335, 37.308365, 29.881767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866749, 37.032959, 29.481464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807484, 37.427383, 29.511734>,  <40.771927, 37.664040, 29.529896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807484, 37.427383, 29.511734>,  <40.866749, 37.032959, 29.481464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807484, 37.427383, 29.511734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015626, 0.074177, -0.997123,
		-0.988840, -0.148916, 0.004418,
		-0.148159, 0.986064, 0.075676,
		40.763035, 37.723202, 29.534437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358845, 37.149860, 29.129494>,  <40.866749, 37.032959, 29.481464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358845, 37.149860, 29.129494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594456, 37.472752, 29.144632>,  <40.735821, 37.666485, 29.153715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594456, 37.472752, 29.144632>,  <40.358845, 37.149860, 29.129494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594456, 37.472752, 29.144632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055424, 0.087076, -0.994659,
		-0.806213, 0.583781, 0.096030,
		0.589024, 0.807229, 0.037846,
		40.771164, 37.714920, 29.155987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092697, 37.579933, 28.534466>,  <40.358845, 37.149860, 29.129494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092697, 37.579933, 28.534466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453716, 37.726936, 28.624220>,  <40.670326, 37.815140, 28.678072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453716, 37.726936, 28.624220>,  <40.092697, 37.579933, 28.534466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453716, 37.726936, 28.624220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216100, 0.064137, -0.974262,
		-0.372441, 0.927806, -0.021532,
		0.902546, 0.367508, 0.224387,
		40.724480, 37.837189, 28.691536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233459, 38.084881, 28.037224>,  <40.092697, 37.579933, 28.534466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233459, 38.084881, 28.037224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592522, 37.994823, 28.188766>,  <40.807957, 37.940788, 28.279692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592522, 37.994823, 28.188766>,  <40.233459, 38.084881, 28.037224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592522, 37.994823, 28.188766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352550, -0.148977, -0.923858,
		0.264444, 0.962868, -0.054355,
		0.897651, -0.225146, 0.378855,
		40.861816, 37.927280, 28.302423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739368, 38.357864, 27.629259>,  <40.233459, 38.084881, 28.037224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739368, 38.357864, 27.629259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962692, 38.086540, 27.820333>,  <41.096687, 37.923744, 27.934978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962692, 38.086540, 27.820333>,  <40.739368, 38.357864, 27.629259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962692, 38.086540, 27.820333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529928, -0.151442, -0.834411,
		0.638333, 0.718998, 0.274906,
		0.558308, -0.678312, 0.477688,
		41.130184, 37.883045, 27.963640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492344, 38.349327, 27.308775>,  <40.739368, 38.357864, 27.629259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492344, 38.349327, 27.308775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485500, 37.998783, 27.501318>,  <41.481392, 37.788456, 27.616844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485500, 37.998783, 27.501318>,  <41.492344, 38.349327, 27.308775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485500, 37.998783, 27.501318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663071, -0.370283, -0.650559,
		0.748361, 0.308042, 0.587423,
		-0.017113, -0.876357, 0.481359,
		41.480366, 37.735878, 27.645725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.615570, 30.608768, 27.453991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645813, 31.007450, 27.465725>,  <37.663960, 31.246660, 27.472765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645813, 31.007450, 27.465725>,  <37.615570, 30.608768, 27.453991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645813, 31.007450, 27.465725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226735, -0.045832, 0.972878,
		0.971017, -0.066908, -0.229454,
		0.075609, 0.996706, 0.029334,
		37.668495, 31.306461, 27.474525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140381, 30.702642, 27.994976>,  <37.615570, 30.608768, 27.453991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140381, 30.702642, 27.994976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980011, 31.067049, 27.956392>,  <37.883789, 31.285694, 27.933243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980011, 31.067049, 27.956392>,  <38.140381, 30.702642, 27.994976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980011, 31.067049, 27.956392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098324, 0.147475, 0.984166,
		0.910819, 0.385093, -0.148702,
		-0.400925, 0.911018, -0.096459,
		37.859734, 31.340355, 27.927454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580009, 31.182934, 28.315374>,  <38.140381, 30.702642, 27.994976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580009, 31.182934, 28.315374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211205, 31.337399, 28.304314>,  <37.989922, 31.430077, 28.297678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.211205, 31.337399, 28.304314>,  <38.580009, 31.182934, 28.315374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211205, 31.337399, 28.304314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009527, 0.094033, 0.995524,
		0.387032, 0.917626, -0.090379,
		-0.922017, 0.386161, -0.027651,
		37.934601, 31.453247, 28.296019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596588, 31.802898, 28.646240>,  <38.580009, 31.182934, 28.315374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596588, 31.802898, 28.646240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208836, 31.704700, 28.648554>,  <37.976185, 31.645781, 28.649942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.208836, 31.704700, 28.648554>,  <38.596588, 31.802898, 28.646240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208836, 31.704700, 28.648554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030702, 0.144534, 0.989024,
		-0.243637, 0.958562, -0.147645,
		-0.969380, -0.245496, 0.005784,
		37.918022, 31.631052, 28.650290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292686, 32.325508, 28.974367>,  <38.596588, 31.802898, 28.646240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292686, 32.325508, 28.974367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053116, 32.006817, 29.006638>,  <37.909374, 31.815601, 29.025999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053116, 32.006817, 29.006638>,  <38.292686, 32.325508, 28.974367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053116, 32.006817, 29.006638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363748, 0.360416, 0.858946,
		-0.713424, 0.485100, -0.505672,
		-0.598927, -0.796730, 0.080676,
		37.873436, 31.767797, 29.030840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536354, 32.514458, 29.201950>,  <38.292686, 32.325508, 28.974367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536354, 32.514458, 29.201950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555195, 32.124134, 29.287340>,  <37.566502, 31.889938, 29.338573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.555195, 32.124134, 29.287340>,  <37.536354, 32.514458, 29.201950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555195, 32.124134, 29.287340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477289, 0.165749, 0.862973,
		-0.877483, -0.142539, -0.457937,
		0.047105, -0.975812, 0.213474,
		37.569324, 31.831390, 29.351383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992325, 32.407673, 29.577677>,  <37.536354, 32.514458, 29.201950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992325, 32.407673, 29.577677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204754, 32.077782, 29.655432>,  <37.332211, 31.879847, 29.702085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204754, 32.077782, 29.655432>,  <36.992325, 32.407673, 29.577677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204754, 32.077782, 29.655432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362907, -0.014085, 0.931719,
		-0.765674, -0.565357, -0.306779,
		0.531075, -0.824726, 0.194388,
		37.364075, 31.830364, 29.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551949, 31.944920, 29.899555>,  <36.992325, 32.407673, 29.577677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551949, 31.944920, 29.899555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928528, 31.848660, 29.994017>,  <37.154476, 31.790903, 30.050694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928528, 31.848660, 29.994017>,  <36.551949, 31.944920, 29.899555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928528, 31.848660, 29.994017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247683, -0.018395, 0.968666,
		-0.228767, -0.970437, -0.076923,
		0.941445, -0.240652, 0.236153,
		37.210960, 31.776464, 30.064863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456013, 31.374567, 30.355873>,  <36.551949, 31.944920, 29.899555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456013, 31.374567, 30.355873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828049, 31.505095, 30.423342>,  <37.051270, 31.583410, 30.463823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828049, 31.505095, 30.423342>,  <36.456013, 31.374567, 30.355873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828049, 31.505095, 30.423342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153593, -0.071633, 0.985534,
		0.333680, -0.942542, -0.016505,
		0.930090, 0.326318, 0.168670,
		37.107075, 31.602989, 30.473944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763348, 30.808617, 30.766600>,  <36.456013, 31.374567, 30.355873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763348, 30.808617, 30.766600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976070, 31.142910, 30.821341>,  <37.103703, 31.343487, 30.854185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.976070, 31.142910, 30.821341>,  <36.763348, 30.808617, 30.766600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976070, 31.142910, 30.821341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204618, -0.030008, 0.978382,
		0.821775, -0.548312, 0.155047,
		0.531806, 0.835735, 0.136854,
		37.135612, 31.393631, 30.862396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013271, 30.710249, 31.434359>,  <36.763348, 30.808617, 30.766600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013271, 30.710249, 31.434359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066780, 31.102060, 31.374193>,  <37.098885, 31.337147, 31.338093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.066780, 31.102060, 31.374193>,  <37.013271, 30.710249, 31.434359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066780, 31.102060, 31.374193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103404, 0.164748, 0.980901,
		0.985603, -0.115663, 0.123326,
		0.133771, 0.979531, -0.150416,
		37.106911, 31.395920, 31.329069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595222, 30.956892, 31.808456>,  <37.013271, 30.710249, 31.434359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595222, 30.956892, 31.808456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333534, 31.255638, 31.760815>,  <37.176521, 31.434887, 31.732229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333534, 31.255638, 31.760815>,  <37.595222, 30.956892, 31.808456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333534, 31.255638, 31.760815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085876, 0.229820, 0.969437,
		0.751413, 0.623997, -0.214491,
		-0.654220, 0.746867, -0.119104,
		37.137268, 31.479698, 31.725084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753826, 31.522547, 32.324070>,  <37.595222, 30.956892, 31.808456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753826, 31.522547, 32.324070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387573, 31.625660, 32.200680>,  <37.167820, 31.687529, 32.126644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387573, 31.625660, 32.200680>,  <37.753826, 31.522547, 32.324070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387573, 31.625660, 32.200680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240554, 0.263461, 0.934196,
		0.322092, 0.929589, -0.179223,
		-0.915636, 0.257785, -0.308475,
		37.112881, 31.702995, 32.108139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600285, 32.116909, 32.624653>,  <37.753826, 31.522547, 32.324070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600285, 32.116909, 32.624653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238789, 31.962725, 32.550167>,  <37.021893, 31.870214, 32.505474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238789, 31.962725, 32.550167>,  <37.600285, 32.116909, 32.624653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238789, 31.962725, 32.550167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308869, 0.285946, 0.907102,
		-0.296401, 0.877302, -0.377476,
		-0.903740, -0.385457, -0.186217,
		36.967667, 31.847088, 32.494301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033173, 32.561913, 32.993397>,  <37.600285, 32.116909, 32.624653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033173, 32.561913, 32.993397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360954, 32.372814, 33.123016>,  <38.557625, 32.259357, 33.200787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360954, 32.372814, 33.123016>,  <38.033173, 32.561913, 32.993397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360954, 32.372814, 33.123016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499027, 0.310421, -0.809080,
		0.281895, 0.824714, 0.490287,
		0.819455, -0.472742, 0.324049,
		38.606792, 32.230991, 33.220230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589828, 33.038631, 32.878925>,  <38.033173, 32.561913, 32.993397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589828, 33.038631, 32.878925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785191, 32.690296, 32.901222>,  <38.902409, 32.481297, 32.914600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785191, 32.690296, 32.901222>,  <38.589828, 33.038631, 32.878925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785191, 32.690296, 32.901222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592328, 0.283944, -0.754004,
		0.640785, 0.401278, 0.654500,
		0.488407, -0.870834, 0.055741,
		38.931713, 32.429047, 32.917946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285740, 33.180866, 32.714626>,  <38.589828, 33.038631, 32.878925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285740, 33.180866, 32.714626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232716, 32.798088, 32.611336>,  <39.200901, 32.568420, 32.549362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.232716, 32.798088, 32.611336>,  <39.285740, 33.180866, 32.714626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232716, 32.798088, 32.611336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576662, 0.137431, -0.805341,
		0.806156, -0.255667, 0.533617,
		-0.132564, -0.956947, -0.258224,
		39.192947, 32.511005, 32.533867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956623, 32.930725, 32.389523>,  <39.285740, 33.180866, 32.714626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956623, 32.930725, 32.389523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687508, 32.659439, 32.271286>,  <39.526039, 32.496666, 32.200344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687508, 32.659439, 32.271286>,  <39.956623, 32.930725, 32.389523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687508, 32.659439, 32.271286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543288, -0.181707, -0.819647,
		0.502187, -0.712042, 0.490718,
		-0.672790, -0.678217, -0.295593,
		39.485672, 32.455975, 32.182610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336010, 32.336769, 32.163715>,  <39.956623, 32.930725, 32.389523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336010, 32.336769, 32.163715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970345, 32.318130, 32.002651>,  <39.750946, 32.306946, 31.906013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970345, 32.318130, 32.002651>,  <40.336010, 32.336769, 32.163715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970345, 32.318130, 32.002651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405242, -0.127666, -0.905252,
		-0.009223, -0.990722, 0.135591,
		-0.914163, -0.046598, -0.402660,
		39.696095, 32.304150, 31.881853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346252, 31.699196, 31.800505>,  <40.336010, 32.336769, 32.163715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346252, 31.699196, 31.800505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061150, 31.933249, 31.645790>,  <39.890087, 32.073681, 31.552961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061150, 31.933249, 31.645790>,  <40.346252, 31.699196, 31.800505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061150, 31.933249, 31.645790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436907, -0.061024, -0.897434,
		-0.548719, -0.808640, -0.212152,
		-0.712755, 0.585130, -0.386785,
		39.847324, 32.108788, 31.529755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242603, 31.424208, 31.167154>,  <40.346252, 31.699196, 31.800505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242603, 31.424208, 31.167154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023849, 31.756351, 31.124407>,  <39.892597, 31.955639, 31.098759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023849, 31.756351, 31.124407>,  <40.242603, 31.424208, 31.167154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023849, 31.756351, 31.124407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053623, -0.162127, -0.985312,
		-0.835490, -0.533119, 0.133191,
		-0.546883, 0.830361, -0.106869,
		39.859783, 32.005459, 31.092346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802597, 31.206812, 30.614828>,  <40.242603, 31.424208, 31.167154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802597, 31.206812, 30.614828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849873, 31.604008, 30.614189>,  <39.878239, 31.842325, 30.613806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849873, 31.604008, 30.614189>,  <39.802597, 31.206812, 30.614828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849873, 31.604008, 30.614189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060422, -0.008797, -0.998134,
		-0.991151, 0.117873, -0.061038,
		0.118190, 0.992990, -0.001597,
		39.885330, 31.901905, 30.613710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317188, 31.508104, 30.167025>,  <39.802597, 31.206812, 30.614828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317188, 31.508104, 30.167025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605743, 31.785099, 30.163816>,  <39.778877, 31.951296, 30.161892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.605743, 31.785099, 30.163816>,  <39.317188, 31.508104, 30.167025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605743, 31.785099, 30.163816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064773, 0.055940, -0.996331,
		-0.689497, 0.719259, 0.085209,
		0.721387, 0.692486, -0.008018,
		39.822159, 31.992846, 30.161411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140953, 31.995777, 29.616949>,  <39.317188, 31.508104, 30.167025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140953, 31.995777, 29.616949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514423, 32.117931, 29.691771>,  <39.738506, 32.191223, 29.736664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514423, 32.117931, 29.691771>,  <39.140953, 31.995777, 29.616949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514423, 32.117931, 29.691771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079821, 0.331724, -0.939993,
		-0.349109, 0.892580, 0.285347,
		0.933676, 0.305384, 0.187055,
		39.794525, 32.209545, 29.747887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148193, 32.681438, 29.451698>,  <39.140953, 31.995777, 29.616949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148193, 32.681438, 29.451698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510418, 32.516811, 29.410564>,  <39.727753, 32.418034, 29.385883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510418, 32.516811, 29.410564>,  <39.148193, 32.681438, 29.451698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510418, 32.516811, 29.410564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070557, 0.385156, -0.920150,
		0.418315, 0.825994, 0.377820,
		0.905558, -0.411570, -0.102837,
		39.782085, 32.393341, 29.379713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546963, 33.175987, 29.266777>,  <39.148193, 32.681438, 29.451698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546963, 33.175987, 29.266777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751488, 32.851807, 29.152426>,  <39.874203, 32.657299, 29.083815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.751488, 32.851807, 29.152426>,  <39.546963, 33.175987, 29.266777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751488, 32.851807, 29.152426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011257, 0.338939, -0.940741,
		0.859321, 0.477795, 0.182427,
		0.511313, -0.810452, -0.285878,
		39.904881, 32.608669, 29.066662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065624, 33.370998, 28.806067>,  <39.546963, 33.175987, 29.266777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065624, 33.370998, 28.806067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037907, 32.981483, 28.719412>,  <40.021275, 32.747772, 28.667419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.037907, 32.981483, 28.719412>,  <40.065624, 33.370998, 28.806067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037907, 32.981483, 28.719412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092015, 0.209992, -0.973364,
		0.993344, -0.087381, 0.075053,
		-0.069293, -0.973791, -0.216635,
		40.017120, 32.689346, 28.654421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565609, 33.275581, 28.363804>,  <40.065624, 33.370998, 28.806067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565609, 33.275581, 28.363804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333893, 32.958981, 28.285889>,  <40.194862, 32.769020, 28.239140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.333893, 32.958981, 28.285889>,  <40.565609, 33.275581, 28.363804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333893, 32.958981, 28.285889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248730, 0.055925, -0.966957,
		0.776245, -0.608598, 0.164475,
		-0.579289, -0.791506, -0.194789,
		40.160107, 32.721527, 28.227451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327995, 33.384937, 28.290077>,  <40.565609, 33.275581, 28.363804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327995, 33.384937, 28.290077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.550438, 33.716991, 28.306181>,  <41.683903, 33.916225, 28.315844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.550438, 33.716991, 28.306181>,  <41.327995, 33.384937, 28.290077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550438, 33.716991, 28.306181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165333, 0.063025, 0.984222,
		0.814503, -0.553984, 0.172298,
		0.556102, 0.830138, 0.040258,
		41.717270, 33.966034, 28.318258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807358, 33.347557, 28.885080>,  <41.327995, 33.384937, 28.290077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807358, 33.347557, 28.885080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.803329, 33.742306, 28.820602>,  <41.800915, 33.979156, 28.781916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.803329, 33.742306, 28.820602>,  <41.807358, 33.347557, 28.885080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803329, 33.742306, 28.820602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067183, 0.160170, 0.984801,
		0.997690, 0.020745, 0.064688,
		-0.010069, 0.986871, -0.161193,
		41.800308, 34.038368, 28.772243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365959, 33.642136, 29.349594>,  <41.807358, 33.347557, 28.885080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365959, 33.642136, 29.349594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.101486, 33.931797, 29.271173>,  <41.942802, 34.105595, 29.224121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.101486, 33.931797, 29.271173>,  <42.365959, 33.642136, 29.349594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101486, 33.931797, 29.271173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113954, 0.355229, 0.927807,
		0.741522, 0.591107, -0.317391,
		-0.661180, 0.724158, -0.196051,
		41.903133, 34.149044, 29.212358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650749, 34.236351, 29.662359>,  <42.365959, 33.642136, 29.349594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650749, 34.236351, 29.662359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262989, 34.325104, 29.620337>,  <42.030334, 34.378353, 29.595123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262989, 34.325104, 29.620337>,  <42.650749, 34.236351, 29.662359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262989, 34.325104, 29.620337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076559, 0.133365, 0.988106,
		0.233252, 0.965911, -0.112296,
		-0.969398, 0.221880, -0.105057,
		41.972168, 34.391666, 29.588820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549301, 34.818996, 29.942036>,  <42.650749, 34.236351, 29.662359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549301, 34.818996, 29.942036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.170357, 34.691349, 29.952354>,  <41.942989, 34.614761, 29.958546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.170357, 34.691349, 29.952354>,  <42.549301, 34.818996, 29.942036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170357, 34.691349, 29.952354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076468, 0.303773, 0.949671,
		-0.310894, 0.897711, -0.312186,
		-0.947363, -0.319119, 0.025795,
		41.886147, 34.595612, 29.960093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145279, 35.381386, 30.313456>,  <42.549301, 34.818996, 29.942036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145279, 35.381386, 30.313456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.933701, 35.042141, 30.325649>,  <41.806755, 34.838596, 30.332966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.933701, 35.042141, 30.325649>,  <42.145279, 35.381386, 30.313456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933701, 35.042141, 30.325649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161727, 0.135996, 0.977420,
		-0.833104, 0.512071, -0.209096,
		-0.528945, -0.848108, 0.030484,
		41.775017, 34.787708, 30.334795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579853, 35.531582, 30.789318>,  <42.145279, 35.381386, 30.313456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579853, 35.531582, 30.789318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.544495, 35.133541, 30.771616>,  <41.523281, 34.894718, 30.760994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.544495, 35.133541, 30.771616>,  <41.579853, 35.531582, 30.789318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544495, 35.133541, 30.771616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225901, -0.023244, 0.973873,
		-0.970131, 0.096085, -0.222740,
		-0.088397, -0.995102, -0.044255,
		41.517975, 34.835011, 30.758339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904320, 35.362240, 31.200512>,  <41.579853, 35.531582, 30.789318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904320, 35.362240, 31.200512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.152821, 35.050854, 31.164642>,  <41.301922, 34.864021, 31.143122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.152821, 35.050854, 31.164642>,  <40.904320, 35.362240, 31.200512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152821, 35.050854, 31.164642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182718, -0.255188, 0.949470,
		-0.762014, -0.573472, -0.300774,
		0.621248, -0.778466, -0.089673,
		41.339195, 34.817314, 31.137741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523945, 34.786083, 31.450367>,  <40.904320, 35.362240, 31.200512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523945, 34.786083, 31.450367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.911175, 34.693302, 31.488369>,  <41.143513, 34.637634, 31.511171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.911175, 34.693302, 31.488369>,  <40.523945, 34.786083, 31.450367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911175, 34.693302, 31.488369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163924, -0.299126, 0.940028,
		-0.189619, -0.925593, -0.327599,
		0.968077, -0.231949, 0.095007,
		41.201599, 34.623718, 31.516870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595200, 34.077961, 31.761248>,  <40.523945, 34.786083, 31.450367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595200, 34.077961, 31.761248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.948685, 34.247814, 31.839979>,  <41.160774, 34.349724, 31.887218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.948685, 34.247814, 31.839979>,  <40.595200, 34.077961, 31.761248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948685, 34.247814, 31.839979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018372, -0.451694, 0.891984,
		0.467668, -0.784642, -0.406969,
		0.883713, 0.424630, 0.196827,
		41.213799, 34.375202, 31.899027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019058, 33.540108, 31.949593>,  <40.595200, 34.077961, 31.761248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019058, 33.540108, 31.949593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125839, 33.888660, 32.114239>,  <41.189907, 34.097794, 32.213028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.125839, 33.888660, 32.114239>,  <41.019058, 33.540108, 31.949593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125839, 33.888660, 32.114239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047097, -0.438404, 0.897543,
		0.962557, -0.220218, -0.158074,
		0.266956, 0.871382, 0.411617,
		41.205925, 34.150074, 32.237724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125927, 33.372349, 32.718575>,  <41.019058, 33.540108, 31.949593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125927, 33.372349, 32.718575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123417, 33.772259, 32.710495>,  <41.121910, 34.012203, 32.705647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.123417, 33.772259, 32.710495>,  <41.125927, 33.372349, 32.718575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123417, 33.772259, 32.710495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125793, 0.020830, 0.991838,
		0.992037, 0.003681, -0.125896,
		-0.006273, 0.999776, -0.020201,
		41.121536, 34.072193, 32.704433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432915, 33.461884, 33.223602>,  <41.125927, 33.372349, 32.718575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432915, 33.461884, 33.223602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295017, 33.833107, 33.167233>,  <41.212280, 34.055840, 33.133411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.295017, 33.833107, 33.167233>,  <41.432915, 33.461884, 33.223602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295017, 33.833107, 33.167233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100163, 0.112905, 0.988544,
		0.933339, 0.354906, 0.054035,
		-0.344739, 0.928060, -0.140928,
		41.191597, 34.111526, 33.124954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907234, 33.985619, 33.673538>,  <41.432915, 33.461884, 33.223602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907234, 33.985619, 33.673538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546021, 34.139736, 33.597565>,  <41.329292, 34.232208, 33.551979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546021, 34.139736, 33.597565>,  <41.907234, 33.985619, 33.673538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546021, 34.139736, 33.597565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137253, 0.160175, 0.977500,
		0.407049, 0.908786, -0.091761,
		-0.903035, 0.385296, -0.189933,
		41.275108, 34.255325, 33.540585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.143631, 38.024837, 27.280012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919819, 37.706249, 27.371719>,  <41.785534, 37.515095, 27.426743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.919819, 37.706249, 27.371719>,  <42.143631, 38.024837, 27.280012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919819, 37.706249, 27.371719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430681, -0.515747, -0.740620,
		0.708126, -0.315657, 0.631600,
		-0.559528, -0.796470, 0.229266,
		41.751961, 37.467308, 27.440498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663872, 37.469177, 27.257591>,  <42.143631, 38.024837, 27.280012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663872, 37.469177, 27.257591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306328, 37.291065, 27.236656>,  <42.091801, 37.184196, 27.224096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.306328, 37.291065, 27.236656>,  <42.663872, 37.469177, 27.257591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306328, 37.291065, 27.236656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311590, -0.533024, -0.786637,
		0.322380, -0.719449, 0.615194,
		-0.893858, -0.445285, -0.052337,
		42.038170, 37.157478, 27.220955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779076, 36.710358, 27.219481>,  <42.663872, 37.469177, 27.257591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779076, 36.710358, 27.219481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420406, 36.813049, 27.075218>,  <42.205204, 36.874664, 26.988661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.420406, 36.813049, 27.075218>,  <42.779076, 36.710358, 27.219481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420406, 36.813049, 27.075218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270312, -0.327671, -0.905297,
		-0.350595, -0.909242, 0.224415,
		-0.896668, 0.256730, -0.360659,
		42.151405, 36.890068, 26.967020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606049, 36.189877, 26.833345>,  <42.779076, 36.710358, 27.219481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606049, 36.189877, 26.833345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.352081, 36.463745, 26.690178>,  <42.199703, 36.628067, 26.604277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.352081, 36.463745, 26.690178>,  <42.606049, 36.189877, 26.833345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352081, 36.463745, 26.690178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276541, -0.231176, -0.932782,
		-0.721392, -0.691218, -0.042563,
		-0.634916, 0.684672, -0.357919,
		42.161606, 36.669147, 26.582802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158134, 35.921539, 26.356676>,  <42.606049, 36.189877, 26.833345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158134, 35.921539, 26.356676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.152866, 36.304592, 26.241600>,  <42.149704, 36.534424, 26.172554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.152866, 36.304592, 26.241600>,  <42.158134, 35.921539, 26.356676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152866, 36.304592, 26.241600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099532, -0.285032, -0.953337,
		-0.994947, -0.041194, -0.091560,
		-0.013175, 0.957633, -0.287692,
		42.148914, 36.591881, 26.155293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742676, 35.868031, 25.816980>,  <42.158134, 35.921539, 26.356676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742676, 35.868031, 25.816980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938332, 36.214569, 25.776598>,  <42.055725, 36.422493, 25.752369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.938332, 36.214569, 25.776598>,  <41.742676, 35.868031, 25.816980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938332, 36.214569, 25.776598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024119, -0.129137, -0.991333,
		-0.871872, 0.482466, -0.084061,
		0.489140, 0.866343, -0.100954,
		42.085075, 36.474472, 25.746311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341820, 36.305645, 25.299322>,  <41.742676, 35.868031, 25.816980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341820, 36.305645, 25.299322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.717045, 36.444229, 25.298006>,  <41.942181, 36.527378, 25.297216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.717045, 36.444229, 25.298006>,  <41.341820, 36.305645, 25.299322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717045, 36.444229, 25.298006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039862, 0.098481, -0.994340,
		-0.344176, 0.932881, 0.106192,
		0.938059, 0.346461, -0.003292,
		41.998463, 36.548168, 25.297018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345173, 36.883801, 24.836098>,  <41.341820, 36.305645, 25.299322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345173, 36.883801, 24.836098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725098, 36.765545, 24.877001>,  <41.953053, 36.694592, 24.901543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725098, 36.765545, 24.877001>,  <41.345173, 36.883801, 24.836098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725098, 36.765545, 24.877001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104892, -0.006974, -0.994459,
		0.294716, 0.955274, 0.024386,
		0.949811, -0.295641, 0.102256,
		42.010040, 36.676853, 24.907677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565231, 37.158943, 24.326376>,  <41.345173, 36.883801, 24.836098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565231, 37.158943, 24.326376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894890, 36.948849, 24.411144>,  <42.092686, 36.822792, 24.462006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.894890, 36.948849, 24.411144>,  <41.565231, 37.158943, 24.326376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894890, 36.948849, 24.411144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158444, -0.145426, -0.976600,
		0.543762, 0.838439, -0.036632,
		0.824147, -0.525234, 0.211922,
		42.142136, 36.791279, 24.474722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071728, 37.532475, 24.050947>,  <41.565231, 37.158943, 24.326376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071728, 37.532475, 24.050947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.187767, 37.150429, 24.074934>,  <42.257389, 36.921200, 24.089325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.187767, 37.150429, 24.074934>,  <42.071728, 37.532475, 24.050947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187767, 37.150429, 24.074934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128955, -0.101101, -0.986483,
		0.948270, 0.278440, -0.152497,
		0.290094, -0.955118, 0.059965,
		42.274796, 36.863892, 24.092924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650764, 37.425446, 23.536646>,  <42.071728, 37.532475, 24.050947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650764, 37.425446, 23.536646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479385, 37.070843, 23.606546>,  <42.376556, 36.858082, 23.648487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479385, 37.070843, 23.606546>,  <42.650764, 37.425446, 23.536646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479385, 37.070843, 23.606546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038686, -0.175228, -0.983767,
		0.902738, -0.428254, 0.040781,
		-0.428448, -0.886506, 0.174752,
		42.350849, 36.804890, 23.658972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835396, 36.990742, 22.933277>,  <42.650764, 37.425446, 23.536646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835396, 36.990742, 22.933277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572666, 36.737507, 23.097118>,  <42.415028, 36.585564, 23.195423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572666, 36.737507, 23.097118>,  <42.835396, 36.990742, 22.933277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572666, 36.737507, 23.097118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139854, -0.431502, -0.891205,
		0.740957, -0.642653, 0.194882,
		-0.656828, -0.633090, 0.409602,
		42.375618, 36.547581, 23.219999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049168, 36.334835, 22.860371>,  <42.835396, 36.990742, 22.933277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049168, 36.334835, 22.860371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651371, 36.317707, 22.898634>,  <42.412693, 36.307430, 22.921593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651371, 36.317707, 22.898634>,  <43.049168, 36.334835, 22.860371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651371, 36.317707, 22.898634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071632, -0.388595, -0.918620,
		0.076505, -0.920413, 0.383388,
		-0.994493, -0.042816, 0.095660,
		42.353024, 36.304863, 22.927332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790253, 35.641830, 22.772539>,  <43.049168, 36.334835, 22.860371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790253, 35.641830, 22.772539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509121, 35.905281, 22.665022>,  <42.340443, 36.063351, 22.600512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509121, 35.905281, 22.665022>,  <42.790253, 35.641830, 22.772539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509121, 35.905281, 22.665022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177067, -0.527937, -0.830620,
		-0.688972, -0.536188, 0.487669,
		-0.702826, 0.658624, -0.268793,
		42.298271, 36.102867, 22.584385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045399, 34.830040, 22.875511>,  <42.790253, 35.641830, 22.772539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045399, 34.830040, 22.875511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146236, 34.446083, 22.924604>,  <43.206738, 34.215710, 22.954062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146236, 34.446083, 22.924604>,  <43.045399, 34.830040, 22.875511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146236, 34.446083, 22.924604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477560, -0.013092, 0.878502,
		-0.841657, -0.280077, -0.461704,
		0.252093, -0.959888, 0.122735,
		43.221863, 34.158115, 22.961426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369209, 34.412697, 22.816664>,  <43.045399, 34.830040, 22.875511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369209, 34.412697, 22.816664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643597, 34.193710, 23.008385>,  <42.808228, 34.062317, 23.123417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.643597, 34.193710, 23.008385>,  <42.369209, 34.412697, 22.816664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643597, 34.193710, 23.008385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632901, -0.123925, 0.764250,
		-0.359005, -0.827600, -0.431501,
		0.685967, -0.547468, 0.479299,
		42.849388, 34.029472, 23.152174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044834, 33.827820, 23.266026>,  <42.369209, 34.412697, 22.816664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044834, 33.827820, 23.266026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401165, 33.891705, 23.436165>,  <42.614964, 33.930035, 23.538248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401165, 33.891705, 23.436165>,  <42.044834, 33.827820, 23.266026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401165, 33.891705, 23.436165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384157, -0.235103, 0.892833,
		0.242600, -0.958759, -0.148080,
		0.890825, 0.159715, 0.425350,
		42.668411, 33.939617, 23.563770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069611, 33.217937, 23.780785>,  <42.044834, 33.827820, 23.266026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069611, 33.217937, 23.780785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353367, 33.482395, 23.878485>,  <42.523621, 33.641071, 23.937105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353367, 33.482395, 23.878485>,  <42.069611, 33.217937, 23.780785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353367, 33.482395, 23.878485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312033, -0.016138, 0.949934,
		0.631986, -0.750084, 0.194851,
		0.709387, 0.661145, 0.244250,
		42.566181, 33.680740, 23.951759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649250, 32.885101, 24.145721>,  <42.069611, 33.217937, 23.780785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649250, 32.885101, 24.145721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.657372, 33.274521, 24.236748>,  <42.662247, 33.508175, 24.291363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.657372, 33.274521, 24.236748>,  <42.649250, 32.885101, 24.145721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657372, 33.274521, 24.236748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171704, -0.220835, 0.960078,
		0.984939, -0.058571, 0.162678,
		0.020308, 0.973551, 0.227566,
		42.663464, 33.566586, 24.305017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004128, 32.701866, 24.705925>,  <42.649250, 32.885101, 24.145721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004128, 32.701866, 24.705925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858414, 33.073246, 24.734980>,  <42.770985, 33.296074, 24.752413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858414, 33.073246, 24.734980>,  <43.004128, 32.701866, 24.705925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858414, 33.073246, 24.734980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093942, -0.114231, 0.989003,
		0.926536, 0.353459, 0.128833,
		-0.364289, 0.928449, 0.072634,
		42.749126, 33.351780, 24.756769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327412, 33.022110, 25.289894>,  <43.004128, 32.701866, 24.705925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327412, 33.022110, 25.289894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.003700, 33.253784, 25.250677>,  <42.809475, 33.392788, 25.227146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.003700, 33.253784, 25.250677>,  <43.327412, 33.022110, 25.289894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003700, 33.253784, 25.250677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149418, -0.041545, 0.987901,
		0.568106, 0.814136, 0.120162,
		-0.809278, 0.579186, -0.098045,
		42.760918, 33.427540, 25.221264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433567, 33.620388, 25.755018>,  <43.327412, 33.022110, 25.289894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433567, 33.620388, 25.755018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.037189, 33.653046, 25.712374>,  <42.799362, 33.672642, 25.686787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.037189, 33.653046, 25.712374>,  <43.433567, 33.620388, 25.755018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037189, 33.653046, 25.712374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087007, 0.214324, 0.972880,
		0.102282, 0.973344, -0.205279,
		-0.990943, 0.081647, -0.106609,
		42.739906, 33.677540, 25.680391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309910, 34.273781, 26.018547>,  <43.433567, 33.620388, 25.755018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309910, 34.273781, 26.018547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.956402, 34.086613, 26.019274>,  <42.744297, 33.974312, 26.019711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.956402, 34.086613, 26.019274>,  <43.309910, 34.273781, 26.018547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956402, 34.086613, 26.019274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212615, 0.405023, 0.889242,
		-0.416828, 0.785499, -0.457434,
		-0.883770, -0.467918, 0.001816,
		42.691273, 33.946236, 26.019819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893143, 34.774815, 26.389011>,  <43.309910, 34.273781, 26.018547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893143, 34.774815, 26.389011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.442421, 26.386679>,  <42.537132, 34.242985, 26.385279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.442421, 26.386679>,  <42.893143, 34.774815, 26.389011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670635, 34.442421, 26.386679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349602, 0.227647, 0.908821,
		-0.753888, 0.507584, -0.417146,
		-0.556265, -0.830985, -0.005832,
		42.503757, 34.193127, 26.384930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266212, 34.959629, 26.750772>,  <42.893143, 34.774815, 26.389011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266212, 34.959629, 26.750772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.261280, 34.560070, 26.768854>,  <42.258320, 34.320335, 26.779703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.261280, 34.560070, 26.768854>,  <42.266212, 34.959629, 26.750772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261280, 34.560070, 26.768854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452690, 0.045887, 0.890486,
		-0.891582, -0.009483, -0.452759,
		-0.012331, -0.998901, 0.045205,
		42.257580, 34.260399, 26.782415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601818, 34.703197, 26.851282>,  <42.266212, 34.959629, 26.750772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601818, 34.703197, 26.851282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832283, 34.409512, 26.994928>,  <41.970562, 34.233299, 27.081116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832283, 34.409512, 26.994928>,  <41.601818, 34.703197, 26.851282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832283, 34.409512, 26.994928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405143, 0.125042, 0.905662,
		-0.709854, -0.667304, -0.225417,
		0.576165, -0.734214, 0.359115,
		42.005135, 34.189247, 27.102663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186714, 34.364532, 27.280897>,  <41.601818, 34.703197, 26.851282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186714, 34.364532, 27.280897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547604, 34.242794, 27.403118>,  <41.764137, 34.169750, 27.476450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547604, 34.242794, 27.403118>,  <41.186714, 34.364532, 27.280897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547604, 34.242794, 27.403118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316528, 0.013902, 0.948481,
		-0.292912, -0.952461, -0.083790,
		0.902227, -0.304343, 0.305553,
		41.818272, 34.151489, 27.494783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052959, 33.841755, 27.786421>,  <41.186714, 34.364532, 27.280897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052959, 33.841755, 27.786421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.423870, 33.975914, 27.852955>,  <41.646416, 34.056412, 27.892876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.423870, 33.975914, 27.852955>,  <41.052959, 33.841755, 27.786421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423870, 33.975914, 27.852955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170027, -0.018549, 0.985265,
		0.333544, -0.941893, 0.039827,
		0.927275, 0.335401, 0.166334,
		41.702053, 34.076534, 27.902855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910782, 33.010948, 27.795744>,  <41.052959, 33.841755, 27.786421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910782, 33.010948, 27.795744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538815, 32.864243, 27.784880>,  <40.315636, 32.776218, 27.778360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538815, 32.864243, 27.784880>,  <40.910782, 33.010948, 27.795744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538815, 32.864243, 27.784880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112209, -0.212618, -0.970671,
		0.350228, -0.905694, 0.238871,
		-0.929919, -0.366760, -0.027163,
		40.259838, 32.754215, 27.776731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958595, 32.403053, 27.386631>,  <40.910782, 33.010948, 27.795744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958595, 32.403053, 27.386631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.564510, 32.471249, 27.393543>,  <40.328060, 32.512165, 27.397690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.564510, 32.471249, 27.393543>,  <40.958595, 32.403053, 27.386631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564510, 32.471249, 27.393543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043317, -0.150201, -0.987706,
		-0.165791, -0.973846, 0.155364,
		-0.985209, 0.170483, 0.017282,
		40.268948, 32.522396, 27.398727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663887, 31.827641, 27.048244>,  <40.958595, 32.403053, 27.386631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663887, 31.827641, 27.048244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386353, 32.115528, 27.038412>,  <40.219833, 32.288261, 27.032513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.386353, 32.115528, 27.038412>,  <40.663887, 31.827641, 27.048244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386353, 32.115528, 27.038412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191061, -0.216884, -0.957318,
		-0.694329, -0.659521, 0.287991,
		-0.693832, 0.719718, -0.024580,
		40.178204, 32.331444, 27.031038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085670, 31.581177, 26.713905>,  <40.663887, 31.827641, 27.048244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085670, 31.581177, 26.713905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024422, 31.974495, 26.674541>,  <39.987671, 32.210487, 26.650923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.024422, 31.974495, 26.674541>,  <40.085670, 31.581177, 26.713905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024422, 31.974495, 26.674541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227568, -0.131992, -0.964775,
		-0.961648, -0.125336, 0.243977,
		-0.153124, 0.983295, -0.098408,
		39.978485, 32.269482, 26.645020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462372, 31.661495, 26.449240>,  <40.085670, 31.581177, 26.713905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462372, 31.661495, 26.449240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649021, 31.998617, 26.341948>,  <39.761009, 32.200890, 26.277573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.649021, 31.998617, 26.341948>,  <39.462372, 31.661495, 26.449240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649021, 31.998617, 26.341948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156146, -0.220010, -0.962920,
		-0.870565, 0.491201, 0.028939,
		0.466620, 0.842803, -0.268232,
		39.789005, 32.251457, 26.261478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272079, 31.701607, 25.755798>,  <39.462372, 31.661495, 26.449240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272079, 31.701607, 25.755798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.558186, 31.981045, 25.763382>,  <39.729851, 32.148708, 25.767931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.558186, 31.981045, 25.763382>,  <39.272079, 31.701607, 25.755798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558186, 31.981045, 25.763382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111807, -0.087614, -0.989860,
		-0.689852, 0.710132, -0.140776,
		0.715265, 0.698596, 0.018957,
		39.772766, 32.190624, 25.769070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078354, 32.179165, 25.241444>,  <39.272079, 31.701607, 25.755798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078354, 32.179165, 25.241444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.471966, 32.204147, 25.308121>,  <39.708134, 32.219135, 25.348127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.471966, 32.204147, 25.308121>,  <39.078354, 32.179165, 25.241444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471966, 32.204147, 25.308121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177964, -0.323814, -0.929232,
		-0.004058, 0.944057, -0.329757,
		0.984029, 0.062455, 0.166694,
		39.767174, 32.222885, 25.358130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863983, 32.822548, 25.258377>,  <39.078354, 32.179165, 25.241444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863983, 32.822548, 25.258377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471317, 32.758659, 25.216768>,  <38.235718, 32.720325, 25.191803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471317, 32.758659, 25.216768>,  <38.863983, 32.822548, 25.258377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471317, 32.758659, 25.216768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027543, -0.421147, 0.906574,
		-0.188612, 0.892817, 0.409026,
		-0.981665, -0.159725, -0.104024,
		38.176819, 32.710743, 25.185560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535309, 32.952698, 25.895510>,  <38.863983, 32.822548, 25.258377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535309, 32.952698, 25.895510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260670, 32.740063, 25.697115>,  <38.095886, 32.612480, 25.578077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.260670, 32.740063, 25.697115>,  <38.535309, 32.952698, 25.895510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260670, 32.740063, 25.697115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265651, -0.451601, 0.851755,
		-0.676771, 0.716569, 0.168850,
		-0.686594, -0.531588, -0.495987,
		38.054691, 32.580585, 25.548319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927105, 32.987610, 26.256348>,  <38.535309, 32.952698, 25.895510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927105, 32.987610, 26.256348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839497, 32.677376, 26.019537>,  <37.786934, 32.491234, 25.877451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839497, 32.677376, 26.019537>,  <37.927105, 32.987610, 26.256348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839497, 32.677376, 26.019537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349341, -0.504203, 0.789772,
		-0.911039, 0.379794, -0.160515,
		-0.219018, -0.775587, -0.592026,
		37.773792, 32.444698, 25.841928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167912, 32.700447, 26.436810>,  <37.927105, 32.987610, 26.256348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167912, 32.700447, 26.436810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375908, 32.409863, 26.257095>,  <37.500706, 32.235512, 26.149267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.375908, 32.409863, 26.257095>,  <37.167912, 32.700447, 26.436810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375908, 32.409863, 26.257095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403185, -0.672455, 0.620682,
		-0.753030, -0.141601, -0.642569,
		0.519988, -0.726466, -0.449287,
		37.531906, 32.191921, 26.122309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781780, 32.127090, 26.322670>,  <37.167912, 32.700447, 26.436810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781780, 32.127090, 26.322670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161434, 32.002014, 26.337429>,  <37.389229, 31.926968, 26.346285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161434, 32.002014, 26.337429>,  <36.781780, 32.127090, 26.322670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161434, 32.002014, 26.337429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217766, -0.567276, 0.794214,
		-0.227416, -0.761853, -0.606517,
		0.949136, -0.312695, 0.036898,
		37.446175, 31.908205, 26.348499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741196, 31.419590, 26.500521>,  <36.781780, 32.127090, 26.322670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741196, 31.419590, 26.500521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114002, 31.532864, 26.590994>,  <37.337685, 31.600828, 26.645279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.114002, 31.532864, 26.590994>,  <36.741196, 31.419590, 26.500521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114002, 31.532864, 26.590994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097203, -0.405908, 0.908730,
		0.349146, -0.868934, -0.350785,
		0.932013, 0.283182, 0.226185,
		37.393608, 31.617819, 26.658850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072598, 30.856707, 26.984123>,  <36.741196, 31.419590, 26.500521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072598, 30.856707, 26.984123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302067, 31.182043, 27.022848>,  <37.439751, 31.377245, 27.046083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302067, 31.182043, 27.022848>,  <37.072598, 30.856707, 26.984123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302067, 31.182043, 27.022848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213458, -0.262570, 0.941006,
		0.790779, -0.519167, -0.324245,
		0.573676, 0.813340, 0.096814,
		37.474171, 31.426044, 27.051893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.057892, 36.259460, 23.064436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297001, 35.938976, 23.075296>,  <39.440464, 35.746685, 23.081812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297001, 35.938976, 23.075296>,  <39.057892, 36.259460, 23.064436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297001, 35.938976, 23.075296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091035, -0.034195, 0.995260,
		-0.796484, -0.597406, -0.093379,
		0.597768, -0.801209, 0.027150,
		39.476330, 35.698612, 23.083441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823360, 35.587193, 23.629751>,  <39.057892, 36.259460, 23.064436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823360, 35.587193, 23.629751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.213940, 35.665516, 23.593496>,  <39.448288, 35.712509, 23.571743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.213940, 35.665516, 23.593496>,  <38.823360, 35.587193, 23.629751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213940, 35.665516, 23.593496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111137, -0.096353, 0.989123,
		0.184943, -0.975898, -0.115844,
		0.976445, 0.195806, -0.090638,
		39.506874, 35.724258, 23.566305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158909, 35.119743, 24.082689>,  <38.823360, 35.587193, 23.629751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158909, 35.119743, 24.082689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403854, 35.432194, 24.033941>,  <39.550823, 35.619663, 24.004692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403854, 35.432194, 24.033941>,  <39.158909, 35.119743, 24.082689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403854, 35.432194, 24.033941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162196, 0.026745, 0.986396,
		0.773759, -0.623801, -0.110318,
		0.612364, 0.781126, -0.121872,
		39.587563, 35.666531, 23.997379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779507, 34.926476, 24.437193>,  <39.158909, 35.119743, 24.082689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779507, 34.926476, 24.437193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735718, 35.323387, 24.413893>,  <39.709446, 35.561535, 24.399912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735718, 35.323387, 24.413893>,  <39.779507, 34.926476, 24.437193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735718, 35.323387, 24.413893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061826, 0.065289, 0.995949,
		0.992065, 0.105426, -0.068496,
		-0.109471, 0.992282, -0.058252,
		39.702877, 35.621071, 24.396418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223309, 35.160378, 24.978020>,  <39.779507, 34.926476, 24.437193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223309, 35.160378, 24.978020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996643, 35.481819, 24.905228>,  <39.860645, 35.674683, 24.861551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.996643, 35.481819, 24.905228>,  <40.223309, 35.160378, 24.978020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996643, 35.481819, 24.905228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099890, 0.152235, 0.983284,
		0.817874, 0.575366, -0.005994,
		-0.566660, 0.803603, -0.181982,
		39.826645, 35.722900, 24.850634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463303, 35.824974, 25.373035>,  <40.223309, 35.160378, 24.978020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463303, 35.824974, 25.373035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085472, 35.901985, 25.266666>,  <39.858776, 35.948193, 25.202845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085472, 35.901985, 25.266666>,  <40.463303, 35.824974, 25.373035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085472, 35.901985, 25.266666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207652, 0.277027, 0.938156,
		0.254288, 0.941376, -0.221694,
		-0.944573, 0.192527, -0.265924,
		39.802101, 35.959743, 25.186890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341072, 36.492828, 25.652378>,  <40.463303, 35.824974, 25.373035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341072, 36.492828, 25.652378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976982, 36.338783, 25.591484>,  <39.758526, 36.246357, 25.554947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976982, 36.338783, 25.591484>,  <40.341072, 36.492828, 25.652378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976982, 36.338783, 25.591484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336919, 0.474964, 0.812954,
		-0.240769, 0.791265, -0.562077,
		-0.910228, -0.385108, -0.152236,
		39.703915, 36.223251, 25.545813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888420, 37.157360, 25.780163>,  <40.341072, 36.492828, 25.652378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888420, 37.157360, 25.780163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644272, 36.841476, 25.804829>,  <39.497784, 36.651947, 25.819628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644272, 36.841476, 25.804829>,  <39.888420, 37.157360, 25.780163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644272, 36.841476, 25.804829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547055, 0.476563, 0.688199,
		-0.572865, 0.386324, -0.722896,
		-0.610374, -0.789709, 0.061666,
		39.461159, 36.604565, 25.823328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238361, 37.354504, 25.946207>,  <39.888420, 37.157360, 25.780163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238361, 37.354504, 25.946207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217491, 36.968266, 26.048119>,  <39.204971, 36.736523, 26.109266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217491, 36.968266, 26.048119>,  <39.238361, 37.354504, 25.946207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217491, 36.968266, 26.048119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500666, 0.246038, 0.829939,
		-0.864067, -0.084258, -0.496276,
		-0.052174, -0.965591, 0.254778,
		39.201839, 36.678589, 26.124552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591324, 37.250256, 26.226673>,  <39.238361, 37.354504, 25.946207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591324, 37.250256, 26.226673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774212, 36.926773, 26.374691>,  <38.883945, 36.732681, 26.463503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774212, 36.926773, 26.374691>,  <38.591324, 37.250256, 26.226673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774212, 36.926773, 26.374691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586911, 0.038239, 0.808748,
		-0.668193, -0.586962, -0.457158,
		0.457223, -0.808711, 0.370046,
		38.911377, 36.684158, 26.485704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040211, 36.896915, 26.575541>,  <38.591324, 37.250256, 26.226673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040211, 36.896915, 26.575541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359516, 36.715534, 26.734112>,  <38.551098, 36.606705, 26.829254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359516, 36.715534, 26.734112>,  <38.040211, 36.896915, 26.575541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359516, 36.715534, 26.734112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471211, -0.060224, 0.879962,
		-0.375151, -0.889241, -0.261748,
		0.798262, -0.453457, 0.396427,
		38.598995, 36.579498, 26.853041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716099, 36.357613, 27.119120>,  <38.040211, 36.896915, 26.575541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716099, 36.357613, 27.119120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.100719, 36.430813, 27.201027>,  <38.331493, 36.474735, 27.250172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.100719, 36.430813, 27.201027>,  <37.716099, 36.357613, 27.119120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100719, 36.430813, 27.201027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228411, 0.118945, 0.966271,
		0.152473, -0.975890, 0.156171,
		0.961551, 0.183002, 0.204769,
		38.389183, 36.485714, 27.262457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331623, 35.719101, 27.118307>,  <37.716099, 36.357613, 27.119120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331623, 35.719101, 27.118307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.940228, 35.660851, 27.059851>,  <36.705391, 35.625900, 27.024776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.940228, 35.660851, 27.059851>,  <37.331623, 35.719101, 27.118307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940228, 35.660851, 27.059851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103656, 0.265435, -0.958540,
		0.178381, -0.953067, -0.244629,
		-0.978486, -0.145628, -0.146140,
		36.646683, 35.617161, 27.016008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309830, 35.391068, 26.468904>,  <37.331623, 35.719101, 27.118307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309830, 35.391068, 26.468904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930634, 35.508717, 26.517576>,  <36.703117, 35.579308, 26.546780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930634, 35.508717, 26.517576>,  <37.309830, 35.391068, 26.468904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930634, 35.508717, 26.517576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084847, 0.134932, -0.987215,
		-0.306786, -0.946193, -0.102958,
		-0.947989, 0.294128, 0.121677,
		36.646236, 35.596954, 26.554079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061966, 35.096500, 25.932112>,  <37.309830, 35.391068, 26.468904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061966, 35.096500, 25.932112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785854, 35.366295, 26.036860>,  <36.620186, 35.528172, 26.099709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785854, 35.366295, 26.036860>,  <37.061966, 35.096500, 25.932112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785854, 35.366295, 26.036860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221682, 0.147369, -0.963919,
		-0.688745, -0.723426, 0.047797,
		-0.690280, 0.674490, 0.261870,
		36.578770, 35.568642, 26.115421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454933, 34.946640, 25.598167>,  <37.061966, 35.096500, 25.932112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454933, 34.946640, 25.598167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406483, 35.333389, 25.688042>,  <36.377411, 35.565437, 25.741966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.406483, 35.333389, 25.688042>,  <36.454933, 34.946640, 25.598167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406483, 35.333389, 25.688042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215034, 0.195418, -0.956855,
		-0.969066, -0.164214, 0.184240,
		-0.121125, 0.966874, 0.224685,
		36.370144, 35.623451, 25.755447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784481, 35.237049, 25.327173>,  <36.454933, 34.946640, 25.598167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784481, 35.237049, 25.327173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.022575, 35.551205, 25.395123>,  <36.165432, 35.739697, 25.435892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.022575, 35.551205, 25.395123>,  <35.784481, 35.237049, 25.327173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022575, 35.551205, 25.395123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069621, 0.261014, -0.962821,
		-0.800526, 0.561283, 0.210045,
		0.595240, 0.785387, 0.169872,
		36.201149, 35.786819, 25.446085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470081, 35.767059, 24.921280>,  <35.784481, 35.237049, 25.327173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470081, 35.767059, 24.921280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836906, 35.913750, 24.983912>,  <36.056999, 36.001762, 25.021490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836906, 35.913750, 24.983912>,  <35.470081, 35.767059, 24.921280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836906, 35.913750, 24.983912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018846, 0.352368, -0.935672,
		-0.398306, 0.861017, 0.316231,
		0.917059, 0.366724, 0.156577,
		36.112022, 36.023766, 25.030884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504509, 36.464794, 24.702202>,  <35.470081, 35.767059, 24.921280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504509, 36.464794, 24.702202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.886654, 36.347904, 24.684824>,  <36.115940, 36.277771, 24.674398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.886654, 36.347904, 24.684824>,  <35.504509, 36.464794, 24.702202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886654, 36.347904, 24.684824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043003, 0.283029, -0.958147,
		0.292288, 0.913510, 0.282961,
		0.955363, -0.292223, -0.043442,
		36.173264, 36.260239, 24.671791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796177, 37.031738, 24.383711>,  <35.504509, 36.464794, 24.702202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796177, 37.031738, 24.383711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015568, 36.698105, 24.360142>,  <36.147202, 36.497925, 24.346001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015568, 36.698105, 24.360142>,  <35.796177, 37.031738, 24.383711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015568, 36.698105, 24.360142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176646, 0.184459, -0.966836,
		0.817293, 0.519879, 0.248510,
		0.548478, -0.834087, -0.058922,
		36.180111, 36.447880, 24.342464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233715, 37.175625, 23.828606>,  <35.796177, 37.031738, 24.383711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233715, 37.175625, 23.828606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.320915, 36.785801, 23.849451>,  <36.373234, 36.551907, 23.861959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.320915, 36.785801, 23.849451>,  <36.233715, 37.175625, 23.828606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320915, 36.785801, 23.849451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184326, -0.011325, -0.982800,
		0.958385, 0.223853, 0.177168,
		0.217997, -0.974557, 0.052115,
		36.386314, 36.493435, 23.865086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787235, 37.155579, 23.466694>,  <36.233715, 37.175625, 23.828606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787235, 37.155579, 23.466694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723679, 36.761253, 23.488325>,  <36.685543, 36.524658, 23.501305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723679, 36.761253, 23.488325>,  <36.787235, 37.155579, 23.466694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723679, 36.761253, 23.488325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369073, -0.110111, -0.922855,
		0.915717, -0.126678, 0.381333,
		-0.158894, -0.985813, 0.054077,
		36.676010, 36.465508, 23.504549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483177, 36.742031, 23.440033>,  <36.787235, 37.155579, 23.466694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483177, 36.742031, 23.440033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.173439, 36.512722, 23.332893>,  <36.987595, 36.375137, 23.268610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.173439, 36.512722, 23.332893>,  <37.483177, 36.742031, 23.440033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173439, 36.512722, 23.332893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488577, -0.272702, -0.828810,
		0.402093, -0.772652, 0.491254,
		-0.774348, -0.573274, -0.267848,
		36.941135, 36.340740, 23.252539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754650, 36.066448, 23.192043>,  <37.483177, 36.742031, 23.440033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754650, 36.066448, 23.192043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.391235, 36.107002, 23.029921>,  <37.173187, 36.131336, 22.932646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.391235, 36.107002, 23.029921>,  <37.754650, 36.066448, 23.192043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391235, 36.107002, 23.029921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334432, -0.404982, -0.850967,
		-0.250417, -0.908686, 0.334037,
		-0.908541, 0.101384, -0.405308,
		37.118671, 36.137417, 22.908327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576466, 35.371574, 22.784065>,  <37.754650, 36.066448, 23.192043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576466, 35.371574, 22.784065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 35.662193, 22.630699>,  <37.211540, 35.836563, 22.538679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.348389, 35.662193, 22.630699>,  <37.576466, 35.371574, 22.784065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348389, 35.662193, 22.630699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072399, -0.420463, -0.904417,
		-0.818314, -0.543452, 0.187144,
		-0.570194, 0.726548, -0.383416,
		37.177330, 35.880157, 22.515675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021633, 35.416267, 23.265896>,  <37.576466, 35.371574, 22.784065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021633, 35.416267, 23.265896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041058, 35.093704, 23.030149>,  <38.052711, 34.900166, 22.888700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.041058, 35.093704, 23.030149>,  <38.021633, 35.416267, 23.265896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041058, 35.093704, 23.030149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430288, -0.549393, 0.716253,
		-0.901384, 0.218815, -0.373666,
		0.048562, -0.806404, -0.589368,
		38.055626, 34.851784, 22.853338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390896, 35.061996, 23.471470>,  <38.021633, 35.416267, 23.265896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390896, 35.061996, 23.471470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.577641, 34.779175, 23.259014>,  <37.689690, 34.609482, 23.131540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.577641, 34.779175, 23.259014>,  <37.390896, 35.061996, 23.471470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577641, 34.779175, 23.259014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213899, -0.673068, 0.707974,
		-0.858070, -0.216917, -0.465470,
		0.466864, -0.707055, -0.531141,
		37.717701, 34.567059, 23.099672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987633, 34.494347, 23.466547>,  <37.390896, 35.061996, 23.471470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987633, 34.494347, 23.466547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.352684, 34.350060, 23.389618>,  <37.571716, 34.263489, 23.343460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.352684, 34.350060, 23.389618>,  <36.987633, 34.494347, 23.466547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352684, 34.350060, 23.389618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185680, -0.784939, 0.591095,
		-0.364178, -0.503742, -0.783338,
		0.912632, -0.360714, -0.192322,
		37.626472, 34.241844, 23.331921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842743, 33.777584, 23.360298>,  <36.987633, 34.494347, 23.466547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842743, 33.777584, 23.360298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234921, 33.808586, 23.432653>,  <37.470226, 33.827187, 23.476067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234921, 33.808586, 23.432653>,  <36.842743, 33.777584, 23.360298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234921, 33.808586, 23.432653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033687, -0.839506, 0.542305,
		0.193887, -0.537794, -0.820479,
		0.980446, 0.077506, 0.180886,
		37.529053, 33.831837, 23.486919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123775, 33.053368, 23.424786>,  <36.842743, 33.777584, 23.360298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123775, 33.053368, 23.424786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393330, 33.296982, 23.592094>,  <37.555061, 33.443150, 23.692480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393330, 33.296982, 23.592094>,  <37.123775, 33.053368, 23.424786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393330, 33.296982, 23.592094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126199, -0.652687, 0.747044,
		0.727978, -0.450636, -0.516696,
		0.673885, 0.609038, 0.418272,
		37.595497, 33.479694, 23.717575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720364, 32.642570, 23.524750>,  <37.123775, 33.053368, 23.424786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720364, 32.642570, 23.524750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753250, 32.936462, 23.794092>,  <37.772984, 33.112797, 23.955698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.753250, 32.936462, 23.794092>,  <37.720364, 32.642570, 23.524750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753250, 32.936462, 23.794092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097792, -0.678332, 0.728219,
		0.991805, 0.005976, -0.127622,
		0.082218, 0.734732, 0.673357,
		37.777916, 33.156883, 23.996099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356548, 32.585381, 23.885977>,  <37.720364, 32.642570, 23.524750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356548, 32.585381, 23.885977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163258, 32.817619, 24.148092>,  <38.047283, 32.956963, 24.305361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.163258, 32.817619, 24.148092>,  <38.356548, 32.585381, 23.885977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163258, 32.817619, 24.148092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326619, -0.574885, 0.750218,
		0.812290, 0.576552, 0.088163,
		-0.483223, 0.580599, 0.655286,
		38.018291, 32.991798, 24.344679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763397, 32.671303, 24.522728>,  <38.356548, 32.585381, 23.885977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763397, 32.671303, 24.522728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388794, 32.750950, 24.638176>,  <38.164032, 32.798737, 24.707445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388794, 32.750950, 24.638176>,  <38.763397, 32.671303, 24.522728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388794, 32.750950, 24.638176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135612, -0.553383, 0.821813,
		0.323355, 0.808776, 0.491246,
		-0.936510, 0.199118, 0.288619,
		38.107841, 32.810684, 24.724762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423332, 32.995731, 24.847128>,  <38.763397, 32.671303, 24.522728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423332, 32.995731, 24.847128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.723122, 32.742100, 24.923275>,  <39.902996, 32.589920, 24.968964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.723122, 32.742100, 24.923275>,  <39.423332, 32.995731, 24.847128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723122, 32.742100, 24.923275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331236, 0.110177, -0.937093,
		0.573216, 0.765379, 0.292605,
		0.749470, -0.634078, 0.190366,
		39.947964, 32.551876, 24.980385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045902, 33.374756, 24.637266>,  <39.423332, 32.995731, 24.847128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045902, 33.374756, 24.637266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152054, 32.989101, 24.638895>,  <40.215744, 32.757710, 24.639872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152054, 32.989101, 24.638895>,  <40.045902, 33.374756, 24.637266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152054, 32.989101, 24.638895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525926, 0.141221, -0.838725,
		0.808069, 0.224722, 0.544541,
		0.265381, -0.964135, 0.004071,
		40.231667, 32.699860, 24.640116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664894, 33.366421, 24.313942>,  <40.045902, 33.374756, 24.637266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664894, 33.366421, 24.313942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578697, 32.976181, 24.297142>,  <40.526981, 32.742035, 24.287062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.578697, 32.976181, 24.297142>,  <40.664894, 33.366421, 24.313942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578697, 32.976181, 24.297142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568002, -0.090243, -0.818065,
		0.794316, -0.200139, 0.573590,
		-0.215490, -0.975603, -0.041998,
		40.514050, 32.683498, 24.284542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334217, 32.985794, 24.387367>,  <40.664894, 33.366421, 24.313942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334217, 32.985794, 24.387367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.057457, 32.759731, 24.207645>,  <40.891403, 32.624092, 24.099812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.057457, 32.759731, 24.207645>,  <41.334217, 32.985794, 24.387367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057457, 32.759731, 24.207645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655915, -0.231940, -0.718317,
		0.301749, -0.791709, 0.531173,
		-0.691898, -0.565156, -0.449307,
		40.849888, 32.590183, 24.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597359, 32.360336, 24.270039>,  <41.334217, 32.985794, 24.387367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597359, 32.360336, 24.270039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.308083, 32.421814, 24.000706>,  <41.134518, 32.458702, 23.839106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.308083, 32.421814, 24.000706>,  <41.597359, 32.360336, 24.270039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308083, 32.421814, 24.000706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585911, -0.379638, -0.715950,
		-0.365646, -0.912282, 0.184511,
		-0.723196, 0.153677, -0.673329,
		41.091125, 32.467922, 23.798706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810028, 31.934376, 23.750582>,  <41.597359, 32.360336, 24.270039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810028, 31.934376, 23.750582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523594, 32.150768, 23.574148>,  <41.351734, 32.280605, 23.468288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.523594, 32.150768, 23.574148>,  <41.810028, 31.934376, 23.750582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523594, 32.150768, 23.574148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434837, -0.148571, -0.888169,
		-0.546015, -0.827808, -0.128849,
		-0.716090, 0.540981, -0.441083,
		41.308765, 32.313061, 23.441824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592438, 31.601377, 23.166117>,  <41.810028, 31.934376, 23.750582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592438, 31.601377, 23.166117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.455902, 31.970713, 23.095762>,  <41.373981, 32.192314, 23.053551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.455902, 31.970713, 23.095762>,  <41.592438, 31.601377, 23.166117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455902, 31.970713, 23.095762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310088, -0.066028, -0.948412,
		-0.887317, -0.378273, -0.263777,
		-0.341342, 0.923336, -0.175885,
		41.353500, 32.247715, 23.042997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193501, 31.525703, 22.555799>,  <41.592438, 31.601377, 23.166117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193501, 31.525703, 22.555799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271614, 31.918003, 22.555685>,  <41.318481, 32.153381, 22.555616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.271614, 31.918003, 22.555685>,  <41.193501, 31.525703, 22.555799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271614, 31.918003, 22.555685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155724, -0.031298, -0.987305,
		-0.968305, 0.192760, -0.158838,
		0.195284, 0.980747, -0.000288,
		41.330200, 32.212227, 22.555599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931099, 31.763329, 21.957256>,  <41.193501, 31.525703, 22.555799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931099, 31.763329, 21.957256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192085, 32.049282, 22.057842>,  <41.348675, 32.220856, 22.118195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192085, 32.049282, 22.057842>,  <40.931099, 31.763329, 21.957256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192085, 32.049282, 22.057842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286585, 0.074423, -0.955160,
		-0.701542, 0.695272, -0.156317,
		0.652462, 0.714883, 0.251465,
		41.387825, 32.263748, 22.133282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.272026, 31.619284, 38.119244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644611, 31.745611, 38.046978>,  <37.868160, 31.821407, 38.003616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.644611, 31.745611, 38.046978>,  <37.272026, 31.619284, 38.119244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644611, 31.745611, 38.046978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168215, -0.066493, -0.983505,
		-0.322622, 0.946487, -0.008810,
		0.931460, 0.315819, -0.180666,
		37.924049, 31.840357, 37.992779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190079, 32.112976, 37.711403>,  <37.272026, 31.619284, 38.119244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190079, 32.112976, 37.711403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572548, 32.012394, 37.651394>,  <37.802029, 31.952044, 37.615387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.572548, 32.012394, 37.651394>,  <37.190079, 32.112976, 37.711403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572548, 32.012394, 37.651394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097396, 0.210049, -0.972827,
		0.276137, 0.944800, 0.176352,
		0.956171, -0.251458, -0.150022,
		37.859398, 31.936956, 37.606388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523014, 32.621391, 37.249027>,  <37.190079, 32.112976, 37.711403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523014, 32.621391, 37.249027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786121, 32.323978, 37.200848>,  <37.943985, 32.145531, 37.171940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786121, 32.323978, 37.200848>,  <37.523014, 32.621391, 37.249027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786121, 32.323978, 37.200848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076831, 0.092840, -0.992712,
		0.749295, 0.662224, 0.003940,
		0.657764, -0.743532, -0.120444,
		37.983452, 32.100918, 37.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911137, 32.989254, 36.765793>,  <37.523014, 32.621391, 37.249027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911137, 32.989254, 36.765793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973911, 32.594456, 36.751919>,  <38.011578, 32.357574, 36.743595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973911, 32.594456, 36.751919>,  <37.911137, 32.989254, 36.765793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973911, 32.594456, 36.751919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027825, 0.039524, -0.998831,
		0.987217, 0.155787, 0.033666,
		0.156936, -0.987000, -0.034684,
		38.020992, 32.298355, 36.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491730, 32.987461, 36.337437>,  <37.911137, 32.989254, 36.765793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491730, 32.987461, 36.337437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371361, 32.606041, 36.331974>,  <38.299141, 32.377190, 36.328697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.371361, 32.606041, 36.331974>,  <38.491730, 32.987461, 36.337437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371361, 32.606041, 36.331974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122237, -0.024367, -0.992202,
		0.945782, -0.300246, 0.123892,
		-0.300923, -0.953550, -0.013656,
		38.281082, 32.319977, 36.327877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028252, 32.590096, 36.045391>,  <38.491730, 32.987461, 36.337437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028252, 32.590096, 36.045391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692154, 32.377171, 36.004131>,  <38.490494, 32.249416, 35.979378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692154, 32.377171, 36.004131>,  <39.028252, 32.590096, 36.045391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692154, 32.377171, 36.004131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112491, 0.014951, -0.993540,
		0.530412, -0.846418, 0.047317,
		-0.840243, -0.532309, -0.103145,
		38.440083, 32.217480, 35.973186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274284, 31.979185, 35.782928>,  <39.028252, 32.590096, 36.045391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274284, 31.979185, 35.782928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879814, 31.992304, 35.717957>,  <38.643131, 32.000175, 35.678974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879814, 31.992304, 35.717957>,  <39.274284, 31.979185, 35.782928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879814, 31.992304, 35.717957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153760, -0.184377, -0.970754,
		-0.061784, -0.982308, 0.176785,
		-0.986175, 0.032795, -0.162431,
		38.583961, 32.002144, 35.669228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075806, 31.396217, 35.357071>,  <39.274284, 31.979185, 35.782928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075806, 31.396217, 35.357071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.787182, 31.671516, 35.326977>,  <38.614006, 31.836697, 35.308918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.787182, 31.671516, 35.326977>,  <39.075806, 31.396217, 35.357071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787182, 31.671516, 35.326977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113357, 0.010234, -0.993502,
		-0.683007, -0.725402, -0.085402,
		-0.721562, 0.688249, -0.075240,
		38.570713, 31.877991, 35.304405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763103, 31.237015, 34.783115>,  <39.075806, 31.396217, 35.357071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763103, 31.237015, 34.783115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611786, 31.603436, 34.836399>,  <38.520996, 31.823288, 34.868370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611786, 31.603436, 34.836399>,  <38.763103, 31.237015, 34.783115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611786, 31.603436, 34.836399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141756, 0.084877, -0.986256,
		-0.914767, -0.391978, 0.097748,
		-0.378294, 0.916051, 0.133208,
		38.498299, 31.878250, 34.876362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159161, 31.146757, 34.484303>,  <38.763103, 31.237015, 34.783115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159161, 31.146757, 34.484303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279259, 31.528261, 34.478767>,  <38.351318, 31.757164, 34.475445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.279259, 31.528261, 34.478767>,  <38.159161, 31.146757, 34.484303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279259, 31.528261, 34.478767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014475, -0.019063, -0.999714,
		-0.953752, 0.299960, -0.019529,
		0.300247, 0.953761, -0.013839,
		38.369331, 31.814390, 34.474617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960476, 31.429499, 33.854641>,  <38.159161, 31.146757, 34.484303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960476, 31.429499, 33.854641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223476, 31.717188, 33.944450>,  <38.381275, 31.889801, 33.998337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223476, 31.717188, 33.944450>,  <37.960476, 31.429499, 33.854641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223476, 31.717188, 33.944450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196109, 0.124364, -0.972664,
		-0.727483, 0.683560, -0.059276,
		0.657502, 0.719221, 0.224525,
		38.420727, 31.932955, 34.011806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829411, 32.026112, 33.418041>,  <37.960476, 31.429499, 33.854641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829411, 32.026112, 33.418041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214199, 32.011185, 33.526272>,  <38.445072, 32.002228, 33.591209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214199, 32.011185, 33.526272>,  <37.829411, 32.026112, 33.418041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214199, 32.011185, 33.526272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272874, 0.174828, -0.946031,
		-0.012002, 0.983891, 0.178363,
		0.961975, -0.037316, 0.270577,
		38.502792, 31.999990, 33.607445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170033, 32.449512, 33.228550>,  <37.829411, 32.026112, 33.418041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170033, 32.449512, 33.228550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942051, 32.181736, 33.037968>,  <36.805264, 32.021069, 32.923618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942051, 32.181736, 33.037968>,  <37.170033, 32.449512, 33.228550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942051, 32.181736, 33.037968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674274, 0.049666, 0.736809,
		-0.469586, 0.741204, -0.479694,
		-0.569950, -0.669441, -0.476452,
		36.771065, 31.980904, 32.895031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561867, 32.748882, 33.016239>,  <37.170033, 32.449512, 33.228550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561867, 32.748882, 33.016239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443970, 32.368828, 33.056984>,  <36.373234, 32.140797, 33.081429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443970, 32.368828, 33.056984>,  <36.561867, 32.748882, 33.016239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443970, 32.368828, 33.056984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399814, 0.219433, 0.889943,
		-0.867915, 0.221578, -0.444552,
		-0.294741, -0.950133, 0.101859,
		36.355549, 32.083786, 33.087543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851860, 32.747807, 33.257507>,  <36.561867, 32.748882, 33.016239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851860, 32.747807, 33.257507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985893, 32.388542, 33.371368>,  <36.066315, 32.172985, 33.439686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985893, 32.388542, 33.371368>,  <35.851860, 32.747807, 33.257507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985893, 32.388542, 33.371368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235401, 0.212732, 0.948331,
		-0.912307, -0.384781, -0.140144,
		0.335086, -0.898159, 0.284654,
		36.086418, 32.119095, 33.456764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225830, 32.393806, 33.544071>,  <35.851860, 32.747807, 33.257507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225830, 32.393806, 33.544071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537159, 32.184616, 33.683041>,  <35.723957, 32.059101, 33.766422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537159, 32.184616, 33.683041>,  <35.225830, 32.393806, 33.544071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537159, 32.184616, 33.683041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367339, 0.069452, 0.927490,
		-0.509186, -0.849512, -0.138054,
		0.778326, -0.522978, 0.347423,
		35.770657, 32.027721, 33.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007740, 31.942421, 33.972496>,  <35.225830, 32.393806, 33.544071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007740, 31.942421, 33.972496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389576, 31.940508, 34.091648>,  <35.618679, 31.939360, 34.163139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.389576, 31.940508, 34.091648>,  <35.007740, 31.942421, 33.972496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389576, 31.940508, 34.091648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297883, -0.029905, 0.954134,
		0.004352, -0.999541, -0.029970,
		0.954593, -0.004775, 0.297876,
		35.675953, 31.939074, 34.181011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024490, 31.346066, 34.409256>,  <35.007740, 31.942421, 33.972496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024490, 31.346066, 34.409256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333771, 31.580582, 34.505939>,  <35.519341, 31.721291, 34.563950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333771, 31.580582, 34.505939>,  <35.024490, 31.346066, 34.409256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333771, 31.580582, 34.505939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218113, -0.112038, 0.969471,
		0.595471, -0.802317, 0.041249,
		0.773202, 0.586289, 0.241711,
		35.565731, 31.756468, 34.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299923, 31.050291, 34.983635>,  <35.024490, 31.346066, 34.409256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299923, 31.050291, 34.983635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432442, 31.427612, 34.991817>,  <35.511955, 31.654005, 34.996727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.432442, 31.427612, 34.991817>,  <35.299923, 31.050291, 34.983635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432442, 31.427612, 34.991817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294235, 0.082695, 0.952149,
		0.896474, -0.321466, 0.304950,
		0.331302, 0.943303, 0.020453,
		35.531834, 31.710604, 34.997952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643860, 31.086004, 35.610840>,  <35.299923, 31.050291, 34.983635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643860, 31.086004, 35.610840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553177, 31.459520, 35.500107>,  <35.498768, 31.683630, 35.433666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553177, 31.459520, 35.500107>,  <35.643860, 31.086004, 35.610840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553177, 31.459520, 35.500107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173673, 0.240918, 0.954880,
		0.958353, 0.264558, 0.107556,
		-0.226709, 0.933792, -0.276831,
		35.485165, 31.739658, 35.417057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954994, 31.411993, 36.045692>,  <35.643860, 31.086004, 35.610840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954994, 31.411993, 36.045692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687199, 31.677946, 35.913197>,  <35.526524, 31.837517, 35.833698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687199, 31.677946, 35.913197>,  <35.954994, 31.411993, 36.045692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687199, 31.677946, 35.913197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221199, 0.247251, 0.943365,
		0.709126, 0.704840, -0.018460,
		-0.669486, 0.664881, -0.331242,
		35.486351, 31.877411, 35.813824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978321, 31.960884, 36.537949>,  <35.954994, 31.411993, 36.045692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978321, 31.960884, 36.537949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624454, 32.013203, 36.358948>,  <35.412136, 32.044594, 36.251549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624454, 32.013203, 36.358948>,  <35.978321, 31.960884, 36.537949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624454, 32.013203, 36.358948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306230, 0.560743, 0.769279,
		0.351554, 0.817593, -0.456016,
		-0.884665, 0.130798, -0.447504,
		35.359055, 32.052441, 36.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813591, 32.689720, 36.535439>,  <35.978321, 31.960884, 36.537949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813591, 32.689720, 36.535439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477917, 32.472702, 36.520393>,  <35.276512, 32.342491, 36.511368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477917, 32.472702, 36.520393>,  <35.813591, 32.689720, 36.535439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477917, 32.472702, 36.520393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325248, 0.445249, 0.834246,
		-0.435869, 0.712319, -0.550108,
		-0.839185, -0.542544, -0.037610,
		35.226162, 32.309940, 36.509109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329647, 33.058716, 36.797699>,  <35.813591, 32.689720, 36.535439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329647, 33.058716, 36.797699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107918, 32.725864, 36.804451>,  <34.974880, 32.526154, 36.808502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.107918, 32.725864, 36.804451>,  <35.329647, 33.058716, 36.797699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107918, 32.725864, 36.804451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484947, 0.339393, 0.806002,
		-0.676430, 0.438596, -0.591672,
		-0.554319, -0.832133, 0.016880,
		34.941624, 32.476223, 36.809513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639210, 33.305790, 36.677071>,  <35.329647, 33.058716, 36.797699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639210, 33.305790, 36.677071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628319, 32.960339, 36.878426>,  <34.621784, 32.753067, 36.999241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628319, 32.960339, 36.878426>,  <34.639210, 33.305790, 36.677071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628319, 32.960339, 36.878426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328792, 0.483295, 0.811370,
		-0.944010, -0.143420, -0.297113,
		-0.027226, -0.863630, 0.503390,
		34.620152, 32.701248, 37.029442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178257, 33.498566, 37.026619>,  <34.639210, 33.305790, 36.677071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178257, 33.498566, 37.026619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347870, 33.189850, 37.216160>,  <34.449638, 33.004620, 37.329884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347870, 33.189850, 37.216160>,  <34.178257, 33.498566, 37.026619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347870, 33.189850, 37.216160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357677, 0.337973, 0.870541,
		-0.832026, -0.538620, -0.132742,
		0.424028, -0.771791, 0.473855,
		34.475079, 32.958313, 37.358315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088699, 34.185875, 37.278114>,  <34.178257, 33.498566, 37.026619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088699, 34.185875, 37.278114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044022, 34.203911, 37.675201>,  <34.017216, 34.214733, 37.913456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.044022, 34.203911, 37.675201>,  <34.088699, 34.185875, 37.278114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044022, 34.203911, 37.675201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061842, 0.997349, -0.038338,
		-0.991817, 0.057110, -0.114182,
		-0.111690, 0.045086, 0.992720,
		34.010513, 34.217438, 37.973019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411701, 34.485516, 37.430206>,  <34.088699, 34.185875, 37.278114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411701, 34.485516, 37.430206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734734, 34.542625, 37.659092>,  <33.928555, 34.576889, 37.796425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734734, 34.542625, 37.659092>,  <33.411701, 34.485516, 37.430206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734734, 34.542625, 37.659092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044728, 0.952633, -0.300816,
		-0.588058, 0.268528, 0.762942,
		0.807581, 0.142772, 0.572214,
		33.977009, 34.585457, 37.830757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659828, 35.099255, 37.072338>,  <33.411701, 34.485516, 37.430206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659828, 35.099255, 37.072338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058468, 35.072952, 37.092190>,  <34.297653, 35.057171, 37.104099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058468, 35.072952, 37.092190>,  <33.659828, 35.099255, 37.072338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058468, 35.072952, 37.092190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039252, -0.150651, -0.987807,
		0.072433, 0.986398, -0.147557,
		0.996601, -0.065758, 0.049631,
		34.357449, 35.053226, 37.107079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840267, 35.418915, 36.547501>,  <33.659828, 35.099255, 37.072338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840267, 35.418915, 36.547501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187737, 35.240082, 36.632858>,  <34.396217, 35.132782, 36.684071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187737, 35.240082, 36.632858>,  <33.840267, 35.418915, 36.547501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187737, 35.240082, 36.632858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129735, -0.210414, -0.968966,
		0.478104, 0.869395, -0.124779,
		0.868669, -0.447078, 0.213391,
		34.448338, 35.105957, 36.696877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332233, 35.719658, 35.925156>,  <33.840267, 35.418915, 36.547501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332233, 35.719658, 35.925156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496700, 35.386375, 36.073051>,  <34.595379, 35.186405, 36.161789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496700, 35.386375, 36.073051>,  <34.332233, 35.719658, 35.925156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496700, 35.386375, 36.073051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335457, -0.238839, -0.911276,
		0.847592, 0.498715, 0.181304,
		0.411165, -0.833210, 0.369736,
		34.620049, 35.136414, 36.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053261, 35.697392, 35.809025>,  <34.332233, 35.719658, 35.925156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053261, 35.697392, 35.809025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940842, 35.315807, 35.850929>,  <34.873390, 35.086857, 35.876072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940842, 35.315807, 35.850929>,  <35.053261, 35.697392, 35.809025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940842, 35.315807, 35.850929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308278, -0.193120, -0.931488,
		0.908832, -0.229498, 0.348360,
		-0.281050, -0.953958, 0.104764,
		34.856525, 35.029621, 35.882359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649818, 35.378414, 35.440048>,  <35.053261, 35.697392, 35.809025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649818, 35.378414, 35.440048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417862, 35.055649, 35.484970>,  <35.278687, 34.861988, 35.511921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.417862, 35.055649, 35.484970>,  <35.649818, 35.378414, 35.440048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417862, 35.055649, 35.484970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465239, -0.441152, -0.767422,
		0.668786, -0.392777, 0.631230,
		-0.579895, -0.806914, 0.112301,
		35.243893, 34.813576, 35.518661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145210, 34.838131, 35.450203>,  <35.649818, 35.378414, 35.440048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145210, 34.838131, 35.450203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785782, 34.698898, 35.343311>,  <35.570126, 34.615360, 35.279179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.785782, 34.698898, 35.343311>,  <36.145210, 34.838131, 35.450203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785782, 34.698898, 35.343311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382138, -0.321307, -0.866448,
		0.215734, -0.880682, 0.421732,
		-0.898570, -0.348083, -0.267225,
		35.516212, 34.594475, 35.263145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302307, 34.274014, 35.103790>,  <36.145210, 34.838131, 35.450203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302307, 34.274014, 35.103790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927769, 34.363949, 34.995937>,  <35.703045, 34.417912, 34.931225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927769, 34.363949, 34.995937>,  <36.302307, 34.274014, 35.103790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927769, 34.363949, 34.995937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240916, -0.147154, -0.959325,
		-0.255373, -0.963220, 0.083619,
		-0.936346, 0.224841, -0.269635,
		35.646866, 34.431400, 34.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042160, 33.629379, 34.677685>,  <36.302307, 34.274014, 35.103790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042160, 33.629379, 34.677685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840424, 33.961739, 34.583668>,  <35.719383, 34.161156, 34.527260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.840424, 33.961739, 34.583668>,  <36.042160, 33.629379, 34.677685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840424, 33.961739, 34.583668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262538, -0.111759, -0.958428,
		-0.822628, -0.545079, -0.161779,
		-0.504339, 0.830902, -0.235040,
		35.689121, 34.211010, 34.513157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353691, 33.503197, 34.239044>,  <36.042160, 33.629379, 34.677685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353691, 33.503197, 34.239044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492847, 33.872105, 34.171638>,  <35.576340, 34.093449, 34.131195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492847, 33.872105, 34.171638>,  <35.353691, 33.503197, 34.239044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492847, 33.872105, 34.171638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011390, -0.175575, -0.984400,
		-0.937467, 0.344380, -0.050576,
		0.347888, 0.922266, -0.168519,
		35.597214, 34.148785, 34.121082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135269, 33.561943, 33.639832>,  <35.353691, 33.503197, 34.239044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135269, 33.561943, 33.639832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367241, 33.887711, 33.647888>,  <35.506424, 34.083172, 33.652721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367241, 33.887711, 33.647888>,  <35.135269, 33.561943, 33.639832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367241, 33.887711, 33.647888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160959, -0.090305, -0.982821,
		-0.798607, 0.573210, -0.183458,
		0.579930, 0.814417, 0.020145,
		35.541222, 34.132034, 33.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966648, 33.906601, 33.110638>,  <35.135269, 33.561943, 33.639832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966648, 33.906601, 33.110638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322994, 34.063625, 33.202076>,  <35.536800, 34.157841, 33.256939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322994, 34.063625, 33.202076>,  <34.966648, 33.906601, 33.110638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322994, 34.063625, 33.202076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161941, 0.195724, -0.967196,
		-0.424421, 0.898661, 0.110793,
		0.890866, 0.392556, 0.228599,
		35.590256, 34.181393, 33.270657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943867, 34.483921, 32.714767>,  <34.966648, 33.906601, 33.110638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943867, 34.483921, 32.714767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330341, 34.416286, 32.792625>,  <35.562225, 34.375706, 32.839340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330341, 34.416286, 32.792625>,  <34.943867, 34.483921, 32.714767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330341, 34.416286, 32.792625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235980, 0.275779, -0.931804,
		0.103881, 0.946232, 0.306357,
		0.966190, -0.169090, 0.194643,
		35.620197, 34.365559, 32.851017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336189, 35.126171, 32.547127>,  <34.943867, 34.483921, 32.714767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336189, 35.126171, 32.547127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560226, 34.795029, 32.534798>,  <35.694649, 34.596344, 32.527401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560226, 34.795029, 32.534798>,  <35.336189, 35.126171, 32.547127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560226, 34.795029, 32.534798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388090, 0.295075, -0.873107,
		0.731901, 0.477062, 0.486552,
		0.560096, -0.827854, -0.030823,
		35.728256, 34.546673, 32.525551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882141, 35.405209, 32.091427>,  <35.336189, 35.126171, 32.547127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882141, 35.405209, 32.091427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962971, 35.013721, 32.077122>,  <36.011467, 34.778828, 32.068539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962971, 35.013721, 32.077122>,  <35.882141, 35.405209, 32.091427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962971, 35.013721, 32.077122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341173, 0.104577, -0.934165,
		0.918024, 0.176568, 0.355044,
		0.202073, -0.978717, -0.035764,
		36.023594, 34.720108, 32.066391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564804, 35.321114, 31.957094>,  <35.882141, 35.405209, 32.091427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564804, 35.321114, 31.957094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378681, 34.988209, 31.836540>,  <36.267006, 34.788467, 31.764208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378681, 34.988209, 31.836540>,  <36.564804, 35.321114, 31.957094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378681, 34.988209, 31.836540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432210, 0.083513, -0.897898,
		0.772453, -0.548060, 0.320852,
		-0.465307, -0.832259, -0.301387,
		36.239090, 34.738529, 31.746124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031422, 35.052803, 31.483675>,  <36.564804, 35.321114, 31.957094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031422, 35.052803, 31.483675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686504, 34.872570, 31.391218>,  <36.479553, 34.764431, 31.335745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686504, 34.872570, 31.391218>,  <37.031422, 35.052803, 31.483675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686504, 34.872570, 31.391218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322875, -0.137539, -0.936394,
		0.390131, -0.882077, 0.264080,
		-0.862293, -0.450581, -0.231142,
		36.427814, 34.737396, 31.321875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198505, 34.556850, 30.842903>,  <37.031422, 35.052803, 31.483675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198505, 34.556850, 30.842903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799858, 34.587502, 30.854815>,  <36.560669, 34.605892, 30.861961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799858, 34.587502, 30.854815>,  <37.198505, 34.556850, 30.842903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799858, 34.587502, 30.854815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020200, 0.122840, -0.992221,
		-0.079693, -0.989464, -0.120877,
		-0.996615, 0.076632, 0.029777,
		36.500874, 34.610493, 30.863747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928284, 34.112228, 30.292835>,  <37.198505, 34.556850, 30.842903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928284, 34.112228, 30.292835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615955, 34.343922, 30.386488>,  <36.428558, 34.482937, 30.442680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.615955, 34.343922, 30.386488>,  <36.928284, 34.112228, 30.292835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615955, 34.343922, 30.386488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234342, 0.075862, -0.969190,
		-0.579145, -0.811627, 0.076503,
		-0.780817, 0.579229, 0.234133,
		36.381710, 34.517689, 30.456728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324627, 33.764790, 29.925943>,  <36.928284, 34.112228, 30.292835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324627, 33.764790, 29.925943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243149, 34.149097, 30.001228>,  <36.194263, 34.379684, 30.046400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243149, 34.149097, 30.001228>,  <36.324627, 33.764790, 29.925943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243149, 34.149097, 30.001228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220212, 0.142354, -0.965009,
		-0.953947, -0.238015, 0.182577,
		-0.203696, 0.960773, 0.188212,
		36.182041, 34.437328, 30.057692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679592, 34.012928, 29.555393>,  <36.324627, 33.764790, 29.925943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679592, 34.012928, 29.555393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876419, 34.353687, 29.627110>,  <35.994514, 34.558144, 29.670139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.876419, 34.353687, 29.627110>,  <35.679592, 34.012928, 29.555393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876419, 34.353687, 29.627110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239533, 0.330486, -0.912909,
		-0.836957, 0.406264, 0.366678,
		0.492064, 0.851897, 0.179288,
		36.024040, 34.609257, 29.680897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346184, 34.502453, 29.197166>,  <35.679592, 34.012928, 29.555393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346184, 34.502453, 29.197166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702660, 34.680962, 29.229708>,  <35.916546, 34.788067, 29.249231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702660, 34.680962, 29.229708>,  <35.346184, 34.502453, 29.197166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702660, 34.680962, 29.229708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143189, 0.446914, -0.883043,
		-0.430436, 0.775311, 0.462188,
		0.891191, 0.446273, 0.081351,
		35.970016, 34.814842, 29.254112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221188, 35.135502, 28.867563>,  <35.346184, 34.502453, 29.197166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221188, 35.135502, 28.867563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619591, 35.100422, 28.860968>,  <35.858635, 35.079376, 28.857010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619591, 35.100422, 28.860968>,  <35.221188, 35.135502, 28.867563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619591, 35.100422, 28.860968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014285, 0.339088, -0.940646,
		0.088083, 0.936658, 0.338988,
		0.996011, -0.087697, -0.016487,
		35.918392, 35.074112, 28.856022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439377, 35.788689, 28.658197>,  <35.221188, 35.135502, 28.867563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439377, 35.788689, 28.658197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760235, 35.556847, 28.600756>,  <35.952751, 35.417740, 28.566292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760235, 35.556847, 28.600756>,  <35.439377, 35.788689, 28.658197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760235, 35.556847, 28.600756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155619, 0.435093, -0.886835,
		0.576495, 0.689023, 0.439205,
		0.802145, -0.579605, -0.143603,
		36.000877, 35.382965, 28.557674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790165, 36.148273, 28.179956>,  <35.439377, 35.788689, 28.658197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790165, 36.148273, 28.179956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989117, 35.801731, 28.161896>,  <36.108486, 35.593807, 28.151060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989117, 35.801731, 28.161896>,  <35.790165, 36.148273, 28.179956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989117, 35.801731, 28.161896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357054, 0.251863, -0.899487,
		0.790648, 0.431267, 0.434608,
		0.497381, -0.866357, -0.045150,
		36.138332, 35.541824, 28.148352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382801, 36.334457, 27.954840>,  <35.790165, 36.148273, 28.179956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382801, 36.334457, 27.954840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364223, 35.945946, 27.861496>,  <36.353077, 35.712837, 27.805490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.364223, 35.945946, 27.861496>,  <36.382801, 36.334457, 27.954840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364223, 35.945946, 27.861496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270345, 0.212671, -0.938981,
		0.961642, -0.106701, 0.252703,
		-0.046447, -0.971281, -0.233359,
		36.350288, 35.654560, 27.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019524, 36.166489, 27.705128>,  <36.382801, 36.334457, 27.954840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019524, 36.166489, 27.705128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759907, 35.892303, 27.573133>,  <36.604137, 35.727791, 27.493937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759907, 35.892303, 27.573133>,  <37.019524, 36.166489, 27.705128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759907, 35.892303, 27.573133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238518, 0.228539, -0.943864,
		0.722398, -0.691311, 0.015165,
		-0.649038, -0.685463, -0.329986,
		36.565197, 35.686665, 27.474138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829338, 36.003193, 27.720406>,  <37.019524, 36.166489, 27.705128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829338, 36.003193, 27.720406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129021, 36.268120, 27.718470>,  <38.308830, 36.427078, 27.717308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129021, 36.268120, 27.718470>,  <37.829338, 36.003193, 27.720406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129021, 36.268120, 27.718470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261374, 0.302358, 0.916659,
		0.608586, -0.685499, 0.399641,
		0.749204, 0.662322, -0.004839,
		38.353783, 36.466816, 27.717018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099461, 35.878483, 28.317715>,  <37.829338, 36.003193, 27.720406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099461, 35.878483, 28.317715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200676, 36.249947, 28.209227>,  <38.261406, 36.472824, 28.144133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200676, 36.249947, 28.209227>,  <38.099461, 35.878483, 28.317715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200676, 36.249947, 28.209227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070513, 0.297303, 0.952176,
		0.964884, -0.221811, 0.140711,
		0.253036, 0.928661, -0.271223,
		38.276588, 36.528545, 28.127859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713734, 36.062176, 28.726904>,  <38.099461, 35.878483, 28.317715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713734, 36.062176, 28.726904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541462, 36.402969, 28.607813>,  <38.438099, 36.607445, 28.536358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541462, 36.402969, 28.607813>,  <38.713734, 36.062176, 28.726904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541462, 36.402969, 28.607813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056382, 0.303847, 0.951051,
		0.900744, 0.426381, -0.082823,
		-0.430675, 0.851984, -0.297728,
		38.412258, 36.658566, 28.518494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119835, 36.488094, 28.986141>,  <38.713734, 36.062176, 28.726904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119835, 36.488094, 28.986141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777760, 36.690056, 28.939272>,  <38.572514, 36.811234, 28.911150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777760, 36.690056, 28.939272>,  <39.119835, 36.488094, 28.986141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777760, 36.690056, 28.939272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127475, 0.424003, 0.896645,
		0.502398, 0.751863, -0.426964,
		-0.855188, 0.504900, -0.117174,
		38.521202, 36.841526, 28.904119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327332, 37.167896, 29.229429>,  <39.119835, 36.488094, 28.986141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327332, 37.167896, 29.229429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931519, 37.110729, 29.237398>,  <38.694031, 37.076431, 29.242180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.931519, 37.110729, 29.237398>,  <39.327332, 37.167896, 29.229429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931519, 37.110729, 29.237398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047489, 0.452926, 0.890282,
		-0.136257, 0.880019, -0.454973,
		-0.989535, -0.142913, 0.019923,
		38.634659, 37.067856, 29.243376>
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
