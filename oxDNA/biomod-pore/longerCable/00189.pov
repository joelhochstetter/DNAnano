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
	<24.303877, 34.734272, 34.788284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131628, 35.021431, 35.007080>,  <24.028278, 35.193726, 35.138355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.131628, 35.021431, 35.007080>,  <24.303877, 34.734272, 34.788284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.131628, 35.021431, 35.007080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542261, 0.278674, -0.792650,
		-0.721470, -0.637941, 0.269283,
		-0.430621, 0.717894, 0.546986,
		24.002441, 35.236801, 35.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976398, 34.574337, 34.629185>,  <24.303877, 34.734272, 34.788284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976398, 34.574337, 34.629185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997652, 34.533859, 34.231808>,  <25.010405, 34.509571, 33.993382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997652, 34.533859, 34.231808>,  <24.976398, 34.574337, 34.629185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997652, 34.533859, 34.231808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490906, 0.863690, -0.114238,
		0.869591, 0.493759, -0.003786,
		0.053136, -0.101199, -0.993446,
		25.013592, 34.503498, 33.933773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497663, 35.067062, 35.020084>,  <24.976398, 34.574337, 34.629185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497663, 35.067062, 35.020084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636406, 34.693123, 34.989735>,  <25.719652, 34.468761, 34.971523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636406, 34.693123, 34.989735>,  <25.497663, 35.067062, 35.020084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636406, 34.693123, 34.989735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321750, 0.194587, -0.926613,
		0.881004, 0.296988, 0.368280,
		0.346855, -0.934844, -0.075876,
		25.740463, 34.412670, 34.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191853, 35.148991, 34.774311>,  <25.497663, 35.067062, 35.020084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191853, 35.148991, 34.774311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062962, 34.785381, 34.668594>,  <25.985626, 34.567215, 34.605164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062962, 34.785381, 34.668594>,  <26.191853, 35.148991, 34.774311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062962, 34.785381, 34.668594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286948, 0.172264, -0.942330,
		0.902125, -0.379485, 0.205333,
		-0.322229, -0.909019, -0.264296,
		25.966293, 34.512676, 34.589306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761578, 34.637348, 34.459854>,  <26.191853, 35.148991, 34.774311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761578, 34.637348, 34.459854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386738, 34.580917, 34.332138>,  <26.161835, 34.547058, 34.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386738, 34.580917, 34.332138>,  <26.761578, 34.637348, 34.459854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386738, 34.580917, 34.332138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320616, 0.013828, -0.947108,
		0.138035, -0.989901, 0.032275,
		-0.937098, -0.141082, -0.319287,
		26.105608, 34.538593, 34.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593767, 34.600670, 33.866455>,  <26.761578, 34.637348, 34.459854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593767, 34.600670, 33.866455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816462, 34.821983, 33.618607>,  <26.950077, 34.954773, 33.469898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816462, 34.821983, 33.618607>,  <26.593767, 34.600670, 33.866455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816462, 34.821983, 33.618607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016186, 0.738539, 0.674016,
		0.830532, -0.385278, 0.402215,
		0.556735, 0.553282, -0.619616,
		26.983482, 34.987968, 33.432720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331448, 34.334972, 33.873653>,  <26.593767, 34.600670, 33.866455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331448, 34.334972, 33.873653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598927, 34.251049, 33.588326>,  <27.759415, 34.200695, 33.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598927, 34.251049, 33.588326>,  <27.331448, 34.334972, 33.873653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598927, 34.251049, 33.588326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384821, 0.723222, -0.573466,
		0.636204, 0.657976, 0.402880,
		0.668699, -0.209805, -0.713319,
		27.799536, 34.188107, 33.374329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821676, 34.933010, 33.613167>,  <27.331448, 34.334972, 33.873653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821676, 34.933010, 33.613167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727354, 34.667164, 33.329567>,  <27.670761, 34.507656, 33.159405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727354, 34.667164, 33.329567>,  <27.821676, 34.933010, 33.613167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727354, 34.667164, 33.329567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441080, 0.723292, -0.531315,
		0.865936, 0.187440, -0.463704,
		-0.235804, -0.664616, -0.709001,
		27.656612, 34.467781, 33.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890110, 35.301521, 33.032608>,  <27.821676, 34.933010, 33.613167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890110, 35.301521, 33.032608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697647, 34.982201, 32.887718>,  <27.582169, 34.790607, 32.800785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697647, 34.982201, 32.887718>,  <27.890110, 35.301521, 33.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697647, 34.982201, 32.887718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597416, 0.600991, -0.530946,
		0.641547, -0.039070, -0.766088,
		-0.481156, -0.798301, -0.362223,
		27.553299, 34.742710, 32.779053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925911, 35.370411, 32.322334>,  <27.890110, 35.301521, 33.032608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925911, 35.370411, 32.322334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622070, 35.116806, 32.380348>,  <27.439766, 34.964642, 32.415157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622070, 35.116806, 32.380348>,  <27.925911, 35.370411, 32.322334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622070, 35.116806, 32.380348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619606, 0.637632, -0.457726,
		0.197728, -0.437551, -0.877184,
		-0.759599, -0.634014, 0.145032,
		27.394190, 34.926601, 32.423859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540956, 35.496044, 31.793165>,  <27.925911, 35.370411, 32.322334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540956, 35.496044, 31.793165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276936, 35.306633, 32.026440>,  <27.118523, 35.192986, 32.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276936, 35.306633, 32.026440>,  <27.540956, 35.496044, 31.793165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276936, 35.306633, 32.026440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682809, 0.701849, -0.202925,
		-0.313217, -0.532145, -0.786585,
		-0.660050, -0.473528, 0.583185,
		27.078920, 35.164574, 32.201397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801325, 35.447796, 31.474623>,  <27.540956, 35.496044, 31.793165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801325, 35.447796, 31.474623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742210, 35.398079, 31.867094>,  <26.706741, 35.368248, 32.102577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742210, 35.398079, 31.867094>,  <26.801325, 35.447796, 31.474623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742210, 35.398079, 31.867094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874926, 0.479008, -0.071106,
		-0.461155, -0.868967, -0.179534,
		-0.147786, -0.124288, 0.981178,
		26.697874, 35.360794, 32.161449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051546, 35.362709, 31.581856>,  <26.801325, 35.447796, 31.474623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051546, 35.362709, 31.581856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201893, 35.469875, 31.936695>,  <26.292101, 35.534176, 32.149597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201893, 35.469875, 31.936695>,  <26.051546, 35.362709, 31.581856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201893, 35.469875, 31.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771160, 0.621257, 0.139113,
		-0.513845, -0.736383, 0.440118,
		0.375867, 0.267919, 0.887098,
		26.314653, 35.550251, 32.202824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476284, 35.455212, 31.985802>,  <26.051546, 35.362709, 31.581856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476284, 35.455212, 31.985802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794474, 35.667633, 32.102558>,  <25.985388, 35.795086, 32.172611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794474, 35.667633, 32.102558>,  <25.476284, 35.455212, 31.985802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794474, 35.667633, 32.102558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566604, 0.822621, 0.047482,
		-0.214902, -0.203158, 0.955272,
		0.795473, 0.531057, 0.291893,
		26.033115, 35.826950, 32.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420326, 35.744572, 32.712868>,  <25.476284, 35.455212, 31.985802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420326, 35.744572, 32.712868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629850, 35.943684, 32.436363>,  <25.755564, 36.063148, 32.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629850, 35.943684, 32.436363>,  <25.420326, 35.744572, 32.712868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629850, 35.943684, 32.436363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605869, 0.788140, 0.108436,
		0.598788, 0.362013, 0.714423,
		0.523810, 0.497777, -0.691261,
		25.786993, 36.093018, 32.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029455, 35.395603, 33.085835>,  <25.420326, 35.744572, 32.712868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029455, 35.395603, 33.085835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223797, 35.262207, 32.762669>,  <26.340401, 35.182171, 32.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.223797, 35.262207, 32.762669>,  <26.029455, 35.395603, 33.085835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223797, 35.262207, 32.762669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657131, -0.470102, 0.589222,
		-0.576304, -0.817183, -0.009253,
		0.485852, -0.333491, -0.807918,
		26.369553, 35.162159, 32.520294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300804, 34.654358, 33.063709>,  <26.029455, 35.395603, 33.085835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300804, 34.654358, 33.063709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534266, 34.809189, 32.778187>,  <26.674341, 34.902088, 32.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534266, 34.809189, 32.778187>,  <26.300804, 34.654358, 33.063709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534266, 34.809189, 32.778187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616160, -0.783665, 0.078847,
		-0.528864, -0.485838, -0.695891,
		0.583652, 0.387081, -0.713806,
		26.709362, 34.925312, 32.564045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460430, 34.115894, 32.739887>,  <26.300804, 34.654358, 33.063709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460430, 34.115894, 32.739887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742598, 34.376461, 32.628147>,  <26.911898, 34.532803, 32.561104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.742598, 34.376461, 32.628147>,  <26.460430, 34.115894, 32.739887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742598, 34.376461, 32.628147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708781, -0.646404, 0.282475,
		0.003436, -0.397262, -0.917699,
		0.705420, 0.651418, -0.279351,
		26.954224, 34.571888, 32.544342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976168, 33.684620, 32.347073>,  <26.460430, 34.115894, 32.739887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976168, 33.684620, 32.347073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145176, 34.022068, 32.479610>,  <27.246580, 34.224537, 32.559132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145176, 34.022068, 32.479610>,  <26.976168, 33.684620, 32.347073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145176, 34.022068, 32.479610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839511, -0.502059, 0.207747,
		0.341612, 0.190388, -0.920355,
		0.422520, 0.843617, 0.331342,
		27.271933, 34.275154, 32.579014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639469, 33.661301, 32.094406>,  <26.976168, 33.684620, 32.347073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639469, 33.661301, 32.094406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642668, 33.890865, 32.421959>,  <27.644587, 34.028603, 32.618488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642668, 33.890865, 32.421959>,  <27.639469, 33.661301, 32.094406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642668, 33.890865, 32.421959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833053, -0.456802, 0.312018,
		0.553136, 0.679674, -0.481751,
		0.007995, 0.573913, 0.818878,
		27.645065, 34.063038, 32.667622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182829, 34.248203, 32.201820>,  <27.639469, 33.661301, 32.094406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182829, 34.248203, 32.201820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043978, 34.094971, 32.544224>,  <27.960667, 34.003029, 32.749664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043978, 34.094971, 32.544224>,  <28.182829, 34.248203, 32.201820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043978, 34.094971, 32.544224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896026, -0.404921, 0.182143,
		0.276839, 0.830233, 0.483812,
		-0.347126, -0.383084, 0.856008,
		27.939840, 33.980045, 32.801025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815884, 34.225338, 32.493431>,  <28.182829, 34.248203, 32.201820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815884, 34.225338, 32.493431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564850, 34.041286, 32.744640>,  <28.414230, 33.930855, 32.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564850, 34.041286, 32.744640>,  <28.815884, 34.225338, 32.493431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564850, 34.041286, 32.744640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768856, -0.493190, 0.406969,
		0.122478, 0.738270, 0.663293,
		-0.627583, -0.460132, 0.628028,
		28.376575, 33.903248, 32.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854839, 34.374905, 33.278374>,  <28.815884, 34.225338, 32.493431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854839, 34.374905, 33.278374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711336, 34.007637, 33.211124>,  <28.625235, 33.787277, 33.170776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711336, 34.007637, 33.211124>,  <28.854839, 34.374905, 33.278374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711336, 34.007637, 33.211124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746488, -0.390349, 0.538872,
		-0.560401, 0.067821, 0.825440,
		-0.358756, -0.918166, -0.168124,
		28.603710, 33.732189, 33.160686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692190, 34.035839, 33.891048>,  <28.854839, 34.374905, 33.278374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692190, 34.035839, 33.891048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792660, 33.765800, 33.613586>,  <28.852942, 33.603779, 33.447109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792660, 33.765800, 33.613586>,  <28.692190, 34.035839, 33.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792660, 33.765800, 33.613586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650923, -0.412583, 0.637239,
		-0.716387, -0.611576, 0.335804,
		0.251173, -0.675092, -0.693658,
		28.868011, 33.563274, 33.405487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557955, 33.399971, 34.112427>,  <28.692190, 34.035839, 33.891048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557955, 33.399971, 34.112427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868374, 33.351044, 33.864948>,  <29.054625, 33.321686, 33.716461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868374, 33.351044, 33.864948>,  <28.557955, 33.399971, 34.112427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868374, 33.351044, 33.864948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549986, -0.348854, 0.758826,
		-0.308652, -0.929161, -0.203456,
		0.776048, -0.122315, -0.618700,
		29.101189, 33.314350, 33.679337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952812, 32.736420, 34.231083>,  <28.557955, 33.399971, 34.112427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952812, 32.736420, 34.231083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218836, 32.940014, 34.012493>,  <29.378450, 33.062168, 33.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218836, 32.940014, 34.012493>,  <28.952812, 32.736420, 34.231083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218836, 32.940014, 34.012493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736713, -0.327348, 0.591690,
		0.122273, -0.796103, -0.592679,
		0.665059, 0.508982, -0.546474,
		29.418354, 33.092709, 33.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414900, 32.299820, 33.806099>,  <28.952812, 32.736420, 34.231083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414900, 32.299820, 33.806099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566799, 32.633587, 33.965870>,  <29.657940, 32.833847, 34.061733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566799, 32.633587, 33.965870>,  <29.414900, 32.299820, 33.806099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566799, 32.633587, 33.965870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616697, -0.550177, 0.563019,
		0.689547, 0.032519, -0.723510,
		0.379749, 0.834415, 0.399428,
		29.680723, 32.883911, 34.085697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190924, 32.262955, 33.673729>,  <29.414900, 32.299820, 33.806099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190924, 32.262955, 33.673729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128702, 32.452072, 34.020660>,  <30.091370, 32.565544, 34.228821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128702, 32.452072, 34.020660>,  <30.190924, 32.262955, 33.673729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128702, 32.452072, 34.020660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610404, -0.644326, 0.460706,
		0.776666, 0.601087, -0.188372,
		-0.155552, 0.472798, 0.867333,
		30.082037, 32.593910, 34.280861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624075, 32.525749, 34.360065>,  <30.190924, 32.262955, 33.673729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624075, 32.525749, 34.360065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872801, 32.255409, 34.201790>,  <31.022036, 32.093204, 34.106823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872801, 32.255409, 34.201790>,  <30.624075, 32.525749, 34.360065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872801, 32.255409, 34.201790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541276, 0.005719, 0.840825,
		-0.566009, -0.737016, 0.369378,
		0.621815, -0.675851, -0.395692,
		31.059345, 32.052654, 34.083080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790581, 32.050644, 34.847015>,  <30.624075, 32.525749, 34.360065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790581, 32.050644, 34.847015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102102, 32.001656, 34.600937>,  <31.289015, 31.972263, 34.453289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102102, 32.001656, 34.600937>,  <30.790581, 32.050644, 34.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102102, 32.001656, 34.600937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617584, -0.021955, 0.786198,
		-0.109793, -0.992230, 0.058538,
		0.778804, -0.122471, -0.615196,
		31.335743, 31.964916, 34.416378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242226, 31.565914, 35.212349>,  <30.790581, 32.050644, 34.847015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242226, 31.565914, 35.212349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470438, 31.746384, 34.937847>,  <31.607365, 31.854666, 34.773148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470438, 31.746384, 34.937847>,  <31.242226, 31.565914, 35.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470438, 31.746384, 34.937847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708075, 0.153111, 0.689337,
		0.416083, -0.879204, -0.232110,
		0.570530, 0.451173, -0.686250,
		31.641598, 31.881735, 34.731972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876156, 31.183834, 35.030613>,  <31.242226, 31.565914, 35.212349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876156, 31.183834, 35.030613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893431, 31.583181, 35.015652>,  <31.903795, 31.822790, 35.006676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893431, 31.583181, 35.015652>,  <31.876156, 31.183834, 35.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893431, 31.583181, 35.015652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649090, 0.000423, 0.760712,
		0.759485, -0.057133, -0.648011,
		0.043187, 0.998367, -0.037406,
		31.906387, 31.882690, 35.004429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476933, 31.345709, 35.221451>,  <31.876156, 31.183834, 35.030613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476933, 31.345709, 35.221451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262283, 31.675095, 35.295143>,  <32.133495, 31.872726, 35.339359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262283, 31.675095, 35.295143>,  <32.476933, 31.345709, 35.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262283, 31.675095, 35.295143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400195, 0.056143, 0.914709,
		0.742887, 0.564583, -0.359674,
		-0.536622, 0.823465, 0.184235,
		32.101295, 31.922134, 35.350414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280090, 30.873037, 35.806843>,  <32.476933, 31.345709, 35.221451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280090, 30.873037, 35.806843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531715, 30.788128, 36.105968>,  <32.682690, 30.737183, 36.285442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531715, 30.788128, 36.105968>,  <32.280090, 30.873037, 35.806843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531715, 30.788128, 36.105968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142970, 0.977177, 0.157112,
		-0.764094, 0.008081, 0.645054,
		0.629062, -0.212272, 0.747811,
		32.720432, 30.724447, 36.330311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107162, 31.501175, 36.132645>,  <32.280090, 30.873037, 35.806843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107162, 31.501175, 36.132645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987417, 31.818417, 36.344822>,  <31.915569, 32.008762, 36.472126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987417, 31.818417, 36.344822>,  <32.107162, 31.501175, 36.132645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987417, 31.818417, 36.344822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015867, 0.551722, -0.833877,
		-0.954006, -0.258051, -0.152583,
		-0.299366, 0.793103, 0.530440,
		31.897608, 32.056347, 36.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410295, 31.708412, 35.904022>,  <32.107162, 31.501175, 36.132645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410295, 31.708412, 35.904022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675869, 31.973213, 36.043129>,  <31.835213, 32.132095, 36.126595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675869, 31.973213, 36.043129>,  <31.410295, 31.708412, 35.904022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675869, 31.973213, 36.043129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080704, 0.398911, -0.913432,
		-0.743425, 0.634523, 0.211424,
		0.663933, 0.662005, 0.347768,
		31.875050, 32.171814, 36.147461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158411, 32.394451, 35.888668>,  <31.410295, 31.708412, 35.904022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158411, 32.394451, 35.888668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550674, 32.345860, 35.827278>,  <31.786032, 32.316704, 35.790443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550674, 32.345860, 35.827278>,  <31.158411, 32.394451, 35.888668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550674, 32.345860, 35.827278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139343, 0.117385, -0.983262,
		0.137464, 0.985628, 0.098187,
		0.980657, -0.121481, -0.153476,
		31.844872, 32.309414, 35.781235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371700, 32.972153, 35.428818>,  <31.158411, 32.394451, 35.888668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371700, 32.972153, 35.428818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626905, 32.665829, 35.396652>,  <31.780029, 32.482033, 35.377354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626905, 32.665829, 35.396652>,  <31.371700, 32.972153, 35.428818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626905, 32.665829, 35.396652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089002, 0.030384, -0.995568,
		0.764864, 0.642343, -0.048774,
		0.638014, -0.765815, -0.080409,
		31.818310, 32.436085, 35.372528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769756, 33.147064, 34.903118>,  <31.371700, 32.972153, 35.428818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769756, 33.147064, 34.903118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820465, 32.751999, 34.939877>,  <31.850891, 32.514957, 34.961933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820465, 32.751999, 34.939877>,  <31.769756, 33.147064, 34.903118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820465, 32.751999, 34.939877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095876, -0.104410, -0.989902,
		0.987287, 0.116682, -0.107930,
		0.126773, -0.987666, 0.091896,
		31.858498, 32.455700, 34.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422386, 32.879349, 34.549622>,  <31.769756, 33.147064, 34.903118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422386, 32.879349, 34.549622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301281, 32.501152, 34.597595>,  <32.228619, 32.274235, 34.626381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301281, 32.501152, 34.597595>,  <32.422386, 32.879349, 34.549622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301281, 32.501152, 34.597595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713134, 0.141257, -0.686649,
		0.632277, -0.293422, -0.717028,
		-0.302763, -0.945489, 0.119936,
		32.210453, 32.217506, 34.633575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341114, 32.537212, 33.894081>,  <32.422386, 32.879349, 34.549622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341114, 32.537212, 33.894081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128803, 32.318043, 34.152710>,  <32.001419, 32.186539, 34.307888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128803, 32.318043, 34.152710>,  <32.341114, 32.537212, 33.894081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128803, 32.318043, 34.152710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723165, -0.105016, -0.682645,
		0.441941, -0.829907, -0.340503,
		-0.530774, -0.547928, 0.646571,
		31.969570, 32.153664, 34.346680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212772, 31.891146, 33.493568>,  <32.341114, 32.537212, 33.894081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212772, 31.891146, 33.493568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951839, 31.930273, 33.794209>,  <31.795280, 31.953749, 33.974590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951839, 31.930273, 33.794209>,  <32.212772, 31.891146, 33.493568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951839, 31.930273, 33.794209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757533, -0.051785, -0.650740,
		-0.024729, -0.993857, 0.107876,
		-0.652329, 0.097812, 0.751598,
		31.756142, 31.959618, 34.019688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741037, 31.301081, 33.530449>,  <32.212772, 31.891146, 33.493568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741037, 31.301081, 33.530449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574192, 31.642420, 33.655552>,  <31.474085, 31.847223, 33.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574192, 31.642420, 33.655552>,  <31.741037, 31.301081, 33.530449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574192, 31.642420, 33.655552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684232, -0.068349, -0.726055,
		-0.598201, -0.516842, 0.612397,
		-0.417112, 0.853348, 0.312753,
		31.449059, 31.898424, 33.749378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919968, 30.640654, 33.044735>,  <31.741037, 31.301081, 33.530449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919968, 30.640654, 33.044735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009850, 30.779667, 32.680595>,  <32.063778, 30.863075, 32.462112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009850, 30.779667, 32.680595>,  <31.919968, 30.640654, 33.044735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009850, 30.779667, 32.680595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637909, -0.758684, -0.132178,
		-0.736600, -0.551016, -0.392176,
		0.224705, 0.347535, -0.910345,
		32.077263, 30.883926, 32.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976326, 29.992735, 32.724487>,  <31.919968, 30.640654, 33.044735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976326, 29.992735, 32.724487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181473, 30.245966, 32.492565>,  <32.304562, 30.397905, 32.353413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181473, 30.245966, 32.492565>,  <31.976326, 29.992735, 32.724487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181473, 30.245966, 32.492565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667255, -0.718918, -0.194750,
		-0.540128, -0.287000, -0.791134,
		0.512867, 0.633078, -0.579810,
		32.335335, 30.435890, 32.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039238, 29.696581, 32.100700>,  <31.976326, 29.992735, 32.724487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039238, 29.696581, 32.100700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338043, 29.949162, 32.183872>,  <32.517326, 30.100710, 32.233776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338043, 29.949162, 32.183872>,  <32.039238, 29.696581, 32.100700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338043, 29.949162, 32.183872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663844, -0.725334, -0.182211,
		0.035763, 0.274149, -0.961022,
		0.747015, 0.631452, 0.207932,
		32.562149, 30.138597, 32.246250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627102, 29.897793, 31.584097>,  <32.039238, 29.696581, 32.100700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627102, 29.897793, 31.584097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762196, 29.884979, 31.960375>,  <32.843250, 29.877291, 32.186142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762196, 29.884979, 31.960375>,  <32.627102, 29.897793, 31.584097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762196, 29.884979, 31.960375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735477, -0.614701, -0.284986,
		0.587375, 0.788110, -0.184046,
		0.337734, -0.032032, 0.940697,
		32.863514, 29.875370, 32.242584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401352, 29.994232, 31.495615>,  <32.627102, 29.897793, 31.584097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401352, 29.994232, 31.495615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281723, 29.813318, 31.831709>,  <33.209946, 29.704771, 32.033367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281723, 29.813318, 31.831709>,  <33.401352, 29.994232, 31.495615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281723, 29.813318, 31.831709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559434, -0.796444, -0.229586,
		0.773039, 0.401394, 0.491217,
		-0.299073, -0.452283, 0.840236,
		33.192001, 29.677633, 32.083778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955666, 29.763113, 31.993793>,  <33.401352, 29.994232, 31.495615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955666, 29.763113, 31.993793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635151, 29.528740, 32.042160>,  <33.442841, 29.388115, 32.071178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635151, 29.528740, 32.042160>,  <33.955666, 29.763113, 31.993793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635151, 29.528740, 32.042160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573313, -0.809779, -0.124779,
		0.171028, -0.030661, 0.984789,
		-0.801287, -0.585933, 0.120916,
		33.394764, 29.352961, 32.078434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153709, 29.224760, 32.473564>,  <33.955666, 29.763113, 31.993793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153709, 29.224760, 32.473564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864578, 29.060694, 32.251114>,  <33.691097, 28.962254, 32.117641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864578, 29.060694, 32.251114>,  <34.153709, 29.224760, 32.473564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864578, 29.060694, 32.251114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487293, -0.873174, 0.010635,
		-0.489958, -0.263309, 0.831029,
		-0.722833, -0.410165, -0.556127,
		33.647728, 28.937645, 32.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999149, 28.581287, 32.805809>,  <34.153709, 29.224760, 32.473564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999149, 28.581287, 32.805809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884220, 28.542240, 32.424671>,  <33.815262, 28.518812, 32.195988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884220, 28.542240, 32.424671>,  <33.999149, 28.581287, 32.805809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884220, 28.542240, 32.424671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398133, -0.916956, -0.026112,
		-0.871169, -0.386862, 0.302328,
		-0.287323, -0.097619, -0.952846,
		33.798023, 28.512955, 32.138817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184681, 27.984234, 33.285690>,  <33.999149, 28.581287, 32.805809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184681, 27.984234, 33.285690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188282, 27.952826, 33.684441>,  <34.190441, 27.933981, 33.923691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188282, 27.952826, 33.684441>,  <34.184681, 27.984234, 33.285690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188282, 27.952826, 33.684441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993132, -0.117003, -0.000248,
		0.116657, -0.990023, -0.079034,
		0.009001, -0.078520, 0.996872,
		34.190983, 27.929270, 33.983501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788460, 27.328985, 33.457859>,  <34.184681, 27.984234, 33.285690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788460, 27.328985, 33.457859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786491, 27.572433, 33.775238>,  <33.785309, 27.718502, 33.965664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786491, 27.572433, 33.775238>,  <33.788460, 27.328985, 33.457859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786491, 27.572433, 33.775238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954822, -0.238629, 0.177119,
		0.297138, -0.756728, 0.582298,
		-0.004922, 0.608620, 0.793447,
		33.785015, 27.755020, 34.013271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079891, 26.851198, 33.937321>,  <33.788460, 27.328985, 33.457859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079891, 26.851198, 33.937321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386520, 26.971754, 34.164135>,  <34.570496, 27.044086, 34.300224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386520, 26.971754, 34.164135>,  <34.079891, 26.851198, 33.937321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386520, 26.971754, 34.164135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639929, 0.284992, 0.713632,
		0.053479, -0.909915, 0.411333,
		0.766571, 0.301388, 0.567040,
		34.616493, 27.062170, 34.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151817, 26.440823, 34.607647>,  <34.079891, 26.851198, 33.937321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151817, 26.440823, 34.607647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274437, 26.821560, 34.605591>,  <34.348007, 27.050001, 34.604359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274437, 26.821560, 34.605591>,  <34.151817, 26.440823, 34.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274437, 26.821560, 34.605591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734832, 0.240082, 0.634337,
		0.605022, -0.190678, 0.773040,
		0.306547, 0.951842, -0.005139,
		34.366402, 27.107113, 34.604050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212009, 26.681959, 35.289371>,  <34.151817, 26.440823, 34.607647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212009, 26.681959, 35.289371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207005, 27.025837, 35.085110>,  <34.204002, 27.232162, 34.962551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207005, 27.025837, 35.085110>,  <34.212009, 26.681959, 35.289371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207005, 27.025837, 35.085110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543441, 0.422843, 0.725173,
		0.839354, 0.286587, 0.461901,
		-0.012514, 0.859693, -0.510658,
		34.203251, 27.283745, 34.931911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546406, 27.177528, 35.742741>,  <34.212009, 26.681959, 35.289371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546406, 27.177528, 35.742741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264542, 27.302685, 35.488007>,  <34.095425, 27.377779, 35.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264542, 27.302685, 35.488007>,  <34.546406, 27.177528, 35.742741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264542, 27.302685, 35.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511298, 0.398386, 0.761487,
		0.491967, 0.862200, -0.120747,
		-0.704658, 0.312889, -0.636834,
		34.053143, 27.396551, 35.296955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523205, 27.901106, 35.786129>,  <34.546406, 27.177528, 35.742741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523205, 27.901106, 35.786129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165756, 27.763838, 35.670425>,  <33.951286, 27.681477, 35.601006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165756, 27.763838, 35.670425>,  <34.523205, 27.901106, 35.786129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165756, 27.763838, 35.670425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425833, 0.444708, 0.787972,
		-0.141775, 0.827326, -0.543536,
		-0.893625, -0.343171, -0.289255,
		33.897667, 27.660887, 35.583649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887184, 28.429159, 35.852161>,  <34.523205, 27.901106, 35.786129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887184, 28.429159, 35.852161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799221, 28.046141, 35.926723>,  <33.746445, 27.816330, 35.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799221, 28.046141, 35.926723>,  <33.887184, 28.429159, 35.852161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799221, 28.046141, 35.926723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425280, 0.266073, 0.865068,
		-0.877940, 0.110958, -0.465736,
		-0.219906, -0.957545, 0.186408,
		33.733250, 27.758877, 35.982647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134392, 28.206573, 36.039536>,  <33.887184, 28.429159, 35.852161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134392, 28.206573, 36.039536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381763, 27.961504, 36.236382>,  <33.530186, 27.814463, 36.354488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381763, 27.961504, 36.236382>,  <33.134392, 28.206573, 36.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381763, 27.961504, 36.236382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376575, 0.318591, 0.869880,
		-0.689733, -0.723279, -0.033690,
		0.618433, -0.612672, 0.492112,
		33.567295, 27.777702, 36.384014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051579, 27.506258, 35.861626>,  <33.134392, 28.206573, 36.039536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051579, 27.506258, 35.861626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910858, 27.834442, 35.681370>,  <32.826427, 28.031353, 35.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910858, 27.834442, 35.681370>,  <33.051579, 27.506258, 35.861626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910858, 27.834442, 35.681370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512986, -0.233709, -0.825969,
		-0.782995, -0.521751, -0.338666,
		-0.351801, 0.820461, -0.450644,
		32.805317, 28.080580, 35.546177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859814, 27.254402, 35.305012>,  <33.051579, 27.506258, 35.861626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859814, 27.254402, 35.305012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002972, 27.625534, 35.262981>,  <33.088867, 27.848213, 35.237762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002972, 27.625534, 35.262981>,  <32.859814, 27.254402, 35.305012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002972, 27.625534, 35.262981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804401, -0.363498, -0.469902,
		-0.474183, 0.083655, -0.876443,
		0.357895, 0.927831, -0.105072,
		33.110340, 27.903883, 35.231461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050007, 27.352396, 34.624432>,  <32.859814, 27.254402, 35.305012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050007, 27.352396, 34.624432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265812, 27.570593, 34.880981>,  <33.395294, 27.701511, 35.034912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265812, 27.570593, 34.880981>,  <33.050007, 27.352396, 34.624432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265812, 27.570593, 34.880981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839228, -0.286863, -0.461959,
		-0.068007, 0.787495, -0.612557,
		0.539511, 0.545492, 0.641379,
		33.427666, 27.734240, 35.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266872, 27.965752, 34.320137>,  <33.050007, 27.352396, 34.624432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266872, 27.965752, 34.320137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507580, 27.837755, 34.612843>,  <33.652004, 27.760958, 34.788464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507580, 27.837755, 34.612843>,  <33.266872, 27.965752, 34.320137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507580, 27.837755, 34.612843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755209, -0.070131, -0.651722,
		0.259864, 0.944821, 0.199457,
		0.601773, -0.319991, 0.731762,
		33.688110, 27.741758, 34.832371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881069, 28.319296, 34.218628>,  <33.266872, 27.965752, 34.320137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881069, 28.319296, 34.218628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991203, 28.008915, 34.445641>,  <34.057281, 27.822687, 34.581848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991203, 28.008915, 34.445641>,  <33.881069, 28.319296, 34.218628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991203, 28.008915, 34.445641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752438, -0.193502, -0.629598,
		0.598356, 0.600381, 0.530578,
		0.275331, -0.775950, 0.567533,
		34.073803, 27.776131, 34.615902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599072, 28.382549, 34.521107>,  <33.881069, 28.319296, 34.218628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599072, 28.382549, 34.521107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529221, 27.989979, 34.552883>,  <34.487309, 27.754436, 34.571949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529221, 27.989979, 34.552883>,  <34.599072, 28.382549, 34.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529221, 27.989979, 34.552883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859076, -0.191285, -0.474762,
		0.481139, -0.014661, 0.876522,
		-0.174626, -0.981425, 0.079439,
		34.476833, 27.695551, 34.576714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180527, 28.059269, 34.820587>,  <34.599072, 28.382549, 34.521107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180527, 28.059269, 34.820587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958275, 27.836243, 34.573879>,  <34.824924, 27.702427, 34.425854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958275, 27.836243, 34.573879>,  <35.180527, 28.059269, 34.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958275, 27.836243, 34.573879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785592, -0.109155, -0.609041,
		0.272257, -0.822926, 0.498668,
		-0.555628, -0.557565, -0.616765,
		34.791588, 27.668974, 34.388851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565018, 27.403641, 34.425457>,  <35.180527, 28.059269, 34.820587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565018, 27.403641, 34.425457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266739, 27.577148, 34.223156>,  <35.087772, 27.681253, 34.101776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266739, 27.577148, 34.223156>,  <35.565018, 27.403641, 34.425457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266739, 27.577148, 34.223156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552557, -0.021550, -0.833197,
		-0.372314, -0.900766, -0.223612,
		-0.745697, 0.433770, -0.505748,
		35.043030, 27.707279, 34.071430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473633, 26.991709, 33.820900>,  <35.565018, 27.403641, 34.425457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473633, 26.991709, 33.820900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352104, 27.366409, 33.751396>,  <35.279186, 27.591230, 33.709694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352104, 27.366409, 33.751396>,  <35.473633, 26.991709, 33.820900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352104, 27.366409, 33.751396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342865, -0.062658, -0.937293,
		-0.888897, -0.344343, -0.302142,
		-0.303818, 0.936751, -0.173760,
		35.260960, 27.647434, 33.699268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089657, 27.059641, 33.104275>,  <35.473633, 26.991709, 33.820900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089657, 27.059641, 33.104275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219879, 27.425362, 33.200665>,  <35.298012, 27.644794, 33.258499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219879, 27.425362, 33.200665>,  <35.089657, 27.059641, 33.104275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219879, 27.425362, 33.200665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438434, 0.079831, -0.895211,
		-0.837728, 0.397093, -0.374871,
		0.325556, 0.914300, 0.240975,
		35.317547, 27.699652, 33.272957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733860, 27.507343, 32.731445>,  <35.089657, 27.059641, 33.104275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733860, 27.507343, 32.731445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080746, 27.692125, 32.805782>,  <35.288876, 27.802994, 32.850384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080746, 27.692125, 32.805782>,  <34.733860, 27.507343, 32.731445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080746, 27.692125, 32.805782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139638, 0.132620, -0.981282,
		-0.477955, 0.876932, 0.050504,
		0.867215, 0.461956, 0.185839,
		35.340912, 27.830711, 32.861534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773605, 28.040985, 32.172935>,  <34.733860, 27.507343, 32.731445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773605, 28.040985, 32.172935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146751, 28.027287, 32.316372>,  <35.370640, 28.019068, 32.402435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146751, 28.027287, 32.316372>,  <34.773605, 28.040985, 32.172935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146751, 28.027287, 32.316372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360029, 0.055693, -0.931277,
		0.011921, 0.997860, 0.064283,
		0.932865, -0.034245, 0.358595,
		35.426609, 28.017014, 32.423950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216614, 28.616653, 31.887817>,  <34.773605, 28.040985, 32.172935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216614, 28.616653, 31.887817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463650, 28.316841, 31.983133>,  <35.611874, 28.136953, 32.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463650, 28.316841, 31.983133>,  <35.216614, 28.616653, 31.887817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463650, 28.316841, 31.983133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393035, 0.031689, -0.918977,
		0.681251, 0.661210, 0.314163,
		0.617593, -0.749531, 0.238291,
		35.648926, 28.091982, 32.054619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793247, 28.779093, 31.532164>,  <35.216614, 28.616653, 31.887817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793247, 28.779093, 31.532164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883503, 28.403481, 31.635941>,  <35.937656, 28.178114, 31.698206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883503, 28.403481, 31.635941>,  <35.793247, 28.779093, 31.532164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883503, 28.403481, 31.635941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362912, -0.166120, -0.916896,
		0.904090, 0.301046, 0.303301,
		0.225644, -0.939029, 0.259441,
		35.951195, 28.121773, 31.713772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588615, 28.744377, 31.501200>,  <35.793247, 28.779093, 31.532164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588615, 28.744377, 31.501200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405079, 28.395472, 31.433529>,  <36.294956, 28.186129, 31.392925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.405079, 28.395472, 31.433529>,  <36.588615, 28.744377, 31.501200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405079, 28.395472, 31.433529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363586, -0.010592, -0.931500,
		0.810720, -0.488924, 0.322002,
		-0.458844, -0.872262, -0.169178,
		36.267426, 28.133793, 31.382776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941078, 28.533346, 31.062954>,  <36.588615, 28.744377, 31.501200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941078, 28.533346, 31.062954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644165, 28.266848, 31.034294>,  <36.466019, 28.106949, 31.017099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644165, 28.266848, 31.034294>,  <36.941078, 28.533346, 31.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644165, 28.266848, 31.034294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208105, -0.127568, -0.969752,
		0.636956, -0.734738, 0.233341,
		-0.742280, -0.666248, -0.071648,
		36.421482, 28.066973, 31.012800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160858, 28.134430, 30.556143>,  <36.941078, 28.533346, 31.062954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160858, 28.134430, 30.556143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764736, 28.078869, 30.556349>,  <36.527061, 28.045532, 30.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764736, 28.078869, 30.556349>,  <37.160858, 28.134430, 30.556143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764736, 28.078869, 30.556349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002001, -0.017960, -0.999837,
		0.138891, -0.990143, 0.018064,
		-0.990306, -0.138905, 0.000513,
		36.467644, 28.037197, 30.556503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997116, 27.548351, 30.177265>,  <37.160858, 28.134430, 30.556143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997116, 27.548351, 30.177265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663258, 27.768648, 30.174423>,  <36.462944, 27.900826, 30.172718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663258, 27.768648, 30.174423>,  <36.997116, 27.548351, 30.177265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663258, 27.768648, 30.174423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102409, 0.142503, -0.984482,
		-0.541184, -0.822421, -0.175341,
		-0.834645, 0.550743, -0.007103,
		36.412865, 27.933870, 30.172293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674000, 27.447346, 29.567940>,  <36.997116, 27.548351, 30.177265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674000, 27.447346, 29.567940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475502, 27.782618, 29.658449>,  <36.356403, 27.983780, 29.712755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475502, 27.782618, 29.658449>,  <36.674000, 27.447346, 29.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475502, 27.782618, 29.658449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075750, 0.301434, -0.950473,
		-0.864873, -0.454524, -0.213077,
		-0.496242, 0.838180, 0.226272,
		36.326630, 28.034071, 29.726330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141949, 27.531828, 29.002195>,  <36.674000, 27.447346, 29.567940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141949, 27.531828, 29.002195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183613, 27.886860, 29.181683>,  <36.208611, 28.099880, 29.289375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183613, 27.886860, 29.181683>,  <36.141949, 27.531828, 29.002195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183613, 27.886860, 29.181683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047654, 0.446202, -0.893663,
		-0.993418, 0.114469, 0.004181,
		0.104162, 0.887581, 0.448720,
		36.214863, 28.153133, 29.316299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751881, 27.882219, 28.507889>,  <36.141949, 27.531828, 29.002195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751881, 27.882219, 28.507889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923809, 28.163517, 28.734411>,  <36.026966, 28.332296, 28.870325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923809, 28.163517, 28.734411>,  <35.751881, 27.882219, 28.507889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923809, 28.163517, 28.734411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007156, 0.624527, -0.780971,
		-0.902887, 0.339727, 0.263400,
		0.429817, 0.703244, 0.566308,
		36.052753, 28.374491, 28.904305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245281, 28.469393, 28.589796>,  <35.751881, 27.882219, 28.507889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245281, 28.469393, 28.589796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630478, 28.563740, 28.641977>,  <35.861595, 28.620348, 28.673286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630478, 28.563740, 28.641977>,  <35.245281, 28.469393, 28.589796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630478, 28.563740, 28.641977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088802, 0.734595, -0.672670,
		-0.254489, 0.636190, 0.728353,
		0.962990, 0.235866, 0.130451,
		35.919376, 28.634501, 28.681112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251595, 29.126554, 28.636705>,  <35.245281, 28.469393, 28.589796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251595, 29.126554, 28.636705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630627, 29.051102, 28.533545>,  <35.858044, 29.005829, 28.471647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630627, 29.051102, 28.533545>,  <35.251595, 29.126554, 28.636705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630627, 29.051102, 28.533545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089946, 0.617034, -0.781779,
		0.306605, 0.763994, 0.567720,
		0.947578, -0.188633, -0.257904,
		35.914902, 28.994513, 28.456173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513851, 29.782436, 28.579786>,  <35.251595, 29.126554, 28.636705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513851, 29.782436, 28.579786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737434, 29.536831, 28.356876>,  <35.871582, 29.389467, 28.223129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737434, 29.536831, 28.356876>,  <35.513851, 29.782436, 28.579786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737434, 29.536831, 28.356876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006528, 0.668788, -0.743425,
		0.829172, 0.419179, 0.369815,
		0.558956, -0.614013, -0.557276,
		35.905121, 29.352627, 28.189693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977020, 30.232883, 28.232986>,  <35.513851, 29.782436, 28.579786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977020, 30.232883, 28.232986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967728, 29.894106, 28.020515>,  <35.962151, 29.690840, 27.893034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967728, 29.894106, 28.020515>,  <35.977020, 30.232883, 28.232986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967728, 29.894106, 28.020515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192716, 0.525149, -0.828903,
		0.980980, 0.083108, -0.175420,
		-0.023233, -0.846943, -0.531176,
		35.960758, 29.640022, 27.861162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404709, 30.461555, 27.721855>,  <35.977020, 30.232883, 28.232986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404709, 30.461555, 27.721855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246513, 30.118332, 27.590816>,  <36.151596, 29.912397, 27.512194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246513, 30.118332, 27.590816>,  <36.404709, 30.461555, 27.721855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246513, 30.118332, 27.590816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043329, 0.338847, -0.939843,
		0.917447, -0.385895, -0.096833,
		-0.395492, -0.858060, -0.327595,
		36.127865, 29.860914, 27.492538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773499, 30.243429, 27.189814>,  <36.404709, 30.461555, 27.721855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773499, 30.243429, 27.189814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416435, 30.071083, 27.136877>,  <36.202198, 29.967676, 27.105116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416435, 30.071083, 27.136877>,  <36.773499, 30.243429, 27.189814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416435, 30.071083, 27.136877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033173, 0.355623, -0.934041,
		0.449509, -0.829390, -0.331743,
		-0.892659, -0.430864, -0.132342,
		36.148636, 29.941824, 27.097174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848652, 29.844007, 26.620623>,  <36.773499, 30.243429, 27.189814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848652, 29.844007, 26.620623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459068, 29.925890, 26.659611>,  <36.225319, 29.975019, 26.683002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459068, 29.925890, 26.659611>,  <36.848652, 29.844007, 26.620623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459068, 29.925890, 26.659611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007446, 0.458541, -0.888642,
		-0.226605, -0.864774, -0.448124,
		-0.973958, 0.204707, 0.097468,
		36.166882, 29.987303, 26.688850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536846, 29.575333, 25.980463>,  <36.848652, 29.844007, 26.620623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536846, 29.575333, 25.980463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307728, 29.860197, 26.142815>,  <36.170258, 30.031115, 26.240225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307728, 29.860197, 26.142815>,  <36.536846, 29.575333, 25.980463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307728, 29.860197, 26.142815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095375, 0.433890, -0.895904,
		-0.814134, -0.551877, -0.180606,
		-0.572792, 0.712160, 0.405880,
		36.135891, 30.073845, 26.264578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003700, 29.557156, 25.508783>,  <36.536846, 29.575333, 25.980463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003700, 29.557156, 25.508783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907253, 29.894526, 25.700823>,  <35.849384, 30.096949, 25.816048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907253, 29.894526, 25.700823>,  <36.003700, 29.557156, 25.508783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907253, 29.894526, 25.700823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409487, 0.360089, -0.838246,
		-0.879877, -0.398708, 0.258549,
		-0.241115, 0.843426, 0.480100,
		35.834919, 30.147552, 25.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398487, 29.709141, 25.298389>,  <36.003700, 29.557156, 25.508783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398487, 29.709141, 25.298389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550774, 30.057499, 25.422712>,  <35.642143, 30.266514, 25.497305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550774, 30.057499, 25.422712>,  <35.398487, 29.709141, 25.298389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550774, 30.057499, 25.422712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242866, 0.418493, -0.875146,
		-0.892229, 0.257695, 0.370837,
		0.380714, 0.870894, 0.310806,
		35.664989, 30.318768, 25.515955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909168, 30.216011, 25.148079>,  <35.398487, 29.709141, 25.298389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909168, 30.216011, 25.148079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255367, 30.415253, 25.169279>,  <35.463085, 30.534798, 25.181999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255367, 30.415253, 25.169279>,  <34.909168, 30.216011, 25.148079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255367, 30.415253, 25.169279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188516, 0.421923, -0.886816,
		-0.464090, 0.757544, 0.459073,
		0.865495, 0.498105, 0.053001,
		35.515015, 30.564684, 25.185179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748260, 30.936781, 24.984646>,  <34.909168, 30.216011, 25.148079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748260, 30.936781, 24.984646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138634, 30.873352, 24.924780>,  <35.372860, 30.835295, 24.888861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138634, 30.873352, 24.924780>,  <34.748260, 30.936781, 24.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138634, 30.873352, 24.924780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056590, 0.478668, -0.876170,
		0.210578, 0.863557, 0.458177,
		0.975938, -0.158574, -0.149666,
		35.431416, 30.825779, 24.879881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985073, 31.612946, 24.912638>,  <34.748260, 30.936781, 24.984646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985073, 31.612946, 24.912638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266121, 31.356321, 24.789528>,  <35.434750, 31.202347, 24.715662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266121, 31.356321, 24.789528>,  <34.985073, 31.612946, 24.912638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266121, 31.356321, 24.789528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090037, 0.509215, -0.855917,
		0.705847, 0.573672, 0.415548,
		0.702619, -0.641561, -0.307777,
		35.476906, 31.163853, 24.697195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592552, 32.003475, 24.648895>,  <34.985073, 31.612946, 24.912638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592552, 32.003475, 24.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624157, 31.654812, 24.455414>,  <35.643120, 31.445614, 24.339325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624157, 31.654812, 24.455414>,  <35.592552, 32.003475, 24.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624157, 31.654812, 24.455414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194537, 0.489371, -0.850100,
		0.977708, -0.026930, 0.208236,
		0.079011, -0.871659, -0.483701,
		35.647861, 31.393314, 24.310303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244999, 32.068237, 24.222687>,  <35.592552, 32.003475, 24.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244999, 32.068237, 24.222687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058727, 31.758888, 24.050623>,  <35.946964, 31.573278, 23.947384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058727, 31.758888, 24.050623>,  <36.244999, 32.068237, 24.222687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058727, 31.758888, 24.050623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406067, 0.245152, -0.880347,
		0.786290, -0.584634, 0.199878,
		-0.465681, -0.773371, -0.430161,
		35.919022, 31.526876, 23.921574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720390, 31.848461, 23.750307>,  <36.244999, 32.068237, 24.222687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720390, 31.848461, 23.750307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359322, 31.717314, 23.638813>,  <36.142681, 31.638626, 23.571917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359322, 31.717314, 23.638813>,  <36.720390, 31.848461, 23.750307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359322, 31.717314, 23.638813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110748, 0.448908, -0.886689,
		0.415839, -0.831256, -0.368905,
		-0.902670, -0.327864, -0.278733,
		36.088520, 31.618954, 23.555193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835842, 31.607683, 23.114386>,  <36.720390, 31.848461, 23.750307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835842, 31.607683, 23.114386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447567, 31.698442, 23.146099>,  <36.214603, 31.752897, 23.165127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447567, 31.698442, 23.146099>,  <36.835842, 31.607683, 23.114386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447567, 31.698442, 23.146099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019437, 0.254687, -0.966828,
		-0.239564, -0.940027, -0.242811,
		-0.970686, 0.226898, 0.079285,
		36.156361, 31.766512, 23.169884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616890, 31.379103, 22.447430>,  <36.835842, 31.607683, 23.114386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616890, 31.379103, 22.447430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350067, 31.629423, 22.609121>,  <36.189972, 31.779615, 22.706137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350067, 31.629423, 22.609121>,  <36.616890, 31.379103, 22.447430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350067, 31.629423, 22.609121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156966, 0.412352, -0.897400,
		-0.728281, -0.662070, -0.176833,
		-0.667059, 0.625803, 0.404231,
		36.149948, 31.817163, 22.730391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923428, 31.358276, 22.020279>,  <36.616890, 31.379103, 22.447430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923428, 31.358276, 22.020279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916565, 31.694485, 22.236881>,  <35.912449, 31.896210, 22.366842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916565, 31.694485, 22.236881>,  <35.923428, 31.358276, 22.020279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916565, 31.694485, 22.236881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377205, 0.496126, -0.782033,
		-0.925971, -0.217676, 0.308537,
		-0.017156, 0.840521, 0.541507,
		35.911419, 31.946642, 22.399334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284107, 31.672670, 21.797749>,  <35.923428, 31.358276, 22.020279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284107, 31.672670, 21.797749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505409, 31.963799, 21.959829>,  <35.638191, 32.138474, 22.057077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505409, 31.963799, 21.959829>,  <35.284107, 31.672670, 21.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505409, 31.963799, 21.959829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426312, 0.665287, -0.612904,
		-0.715659, 0.166349, 0.678351,
		0.553254, 0.727820, 0.405202,
		35.671387, 32.182144, 22.081390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972397, 32.212013, 21.491026>,  <35.284107, 31.672670, 21.797749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972397, 32.212013, 21.491026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265720, 32.406010, 21.681622>,  <35.441715, 32.522408, 21.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265720, 32.406010, 21.681622>,  <34.972397, 32.212013, 21.491026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265720, 32.406010, 21.681622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271654, 0.851454, -0.448587,
		-0.623271, 0.199511, 0.756127,
		0.733305, 0.484996, 0.476489,
		35.485714, 32.551510, 21.824568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749619, 32.919773, 21.864689>,  <34.972397, 32.212013, 21.491026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749619, 32.919773, 21.864689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134586, 32.934238, 21.757030>,  <35.365566, 32.942917, 21.692436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134586, 32.934238, 21.757030>,  <34.749619, 32.919773, 21.864689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134586, 32.934238, 21.757030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157361, 0.881999, -0.444202,
		0.221322, 0.469862, 0.854544,
		0.962421, 0.036160, -0.269144,
		35.423313, 32.945087, 21.676287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889648, 33.539612, 22.043781>,  <34.749619, 32.919773, 21.864689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889648, 33.539612, 22.043781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153732, 33.428459, 21.764669>,  <35.312183, 33.361767, 21.597202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153732, 33.428459, 21.764669>,  <34.889648, 33.539612, 22.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153732, 33.428459, 21.764669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109666, 0.883418, -0.455572,
		0.743028, 0.377299, 0.552771,
		0.660214, -0.277883, -0.697781,
		35.351795, 33.345093, 21.555336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369637, 34.169476, 21.981161>,  <34.889648, 33.539612, 22.043781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369637, 34.169476, 21.981161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347767, 33.919273, 21.669840>,  <35.334644, 33.769154, 21.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347767, 33.919273, 21.669840>,  <35.369637, 34.169476, 21.981161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347767, 33.919273, 21.669840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162903, 0.774612, -0.611097,
		0.985126, 0.093377, -0.144247,
		-0.054673, -0.625506, -0.778302,
		35.331364, 33.731621, 21.436350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606350, 34.565174, 21.353678>,  <35.369637, 34.169476, 21.981161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606350, 34.565174, 21.353678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461838, 34.242874, 21.165956>,  <35.375130, 34.049496, 21.053324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461838, 34.242874, 21.165956>,  <35.606350, 34.565174, 21.353678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461838, 34.242874, 21.165956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243304, 0.567321, -0.786734,
		0.900155, -0.170049, -0.401004,
		-0.361281, -0.805748, -0.469303,
		35.353455, 34.001148, 21.025166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854931, 34.532196, 20.599731>,  <35.606350, 34.565174, 21.353678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854931, 34.532196, 20.599731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507267, 34.336483, 20.628473>,  <35.298668, 34.219055, 20.645718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507267, 34.336483, 20.628473>,  <35.854931, 34.532196, 20.599731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507267, 34.336483, 20.628473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336455, 0.478579, -0.811024,
		0.362427, -0.729088, -0.580583,
		-0.869163, -0.489278, 0.071856,
		35.246517, 34.189697, 20.650030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648727, 34.303593, 19.931545>,  <35.854931, 34.532196, 20.599731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648727, 34.303593, 19.931545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298405, 34.294434, 20.124395>,  <35.088211, 34.288940, 20.240107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298405, 34.294434, 20.124395>,  <35.648727, 34.303593, 19.931545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298405, 34.294434, 20.124395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454549, 0.375089, -0.807894,
		-0.162346, -0.926706, -0.338910,
		-0.875802, -0.022893, 0.482127,
		35.035664, 34.287567, 20.269033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163410, 34.054573, 19.419779>,  <35.648727, 34.303593, 19.931545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163410, 34.054573, 19.419779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926899, 34.217228, 19.698359>,  <34.784992, 34.314819, 19.865505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926899, 34.217228, 19.698359>,  <35.163410, 34.054573, 19.419779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926899, 34.217228, 19.698359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599563, 0.355916, -0.716832,
		-0.539367, -0.841410, 0.033360,
		-0.591276, 0.406637, 0.696448,
		34.749516, 34.339218, 19.907293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551983, 34.228146, 19.116320>,  <35.163410, 34.054573, 19.419779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551983, 34.228146, 19.116320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530487, 34.448307, 19.449587>,  <34.517590, 34.580406, 19.649548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530487, 34.448307, 19.449587>,  <34.551983, 34.228146, 19.116320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530487, 34.448307, 19.449587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613108, 0.640391, -0.462599,
		-0.788170, -0.535680, 0.303045,
		-0.053738, 0.550406, 0.833166,
		34.514366, 34.613430, 19.699537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809010, 34.451260, 19.238663>,  <34.551983, 34.228146, 19.116320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809010, 34.451260, 19.238663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075695, 34.713009, 19.381371>,  <34.235706, 34.870060, 19.466995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075695, 34.713009, 19.381371>,  <33.809010, 34.451260, 19.238663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075695, 34.713009, 19.381371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590804, 0.755832, -0.282257,
		-0.454360, -0.022597, 0.890532,
		0.666714, 0.654376, 0.356770,
		34.275711, 34.909321, 19.488401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405804, 34.923233, 19.672003>,  <33.809010, 34.451260, 19.238663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405804, 34.923233, 19.672003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746361, 35.112949, 19.582399>,  <33.950695, 35.226780, 19.528637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746361, 35.112949, 19.582399>,  <33.405804, 34.923233, 19.672003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746361, 35.112949, 19.582399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506506, 0.854379, -0.116137,
		0.136307, 0.212340, 0.967643,
		0.851394, 0.474286, -0.224010,
		34.001778, 35.255234, 19.515196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610218, 35.466698, 20.121660>,  <33.405804, 34.923233, 19.672003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610218, 35.466698, 20.121660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730648, 35.531647, 19.745790>,  <33.802906, 35.570618, 19.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730648, 35.531647, 19.745790>,  <33.610218, 35.466698, 20.121660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730648, 35.531647, 19.745790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641811, 0.763309, -0.073739,
		0.705290, 0.625296, 0.334023,
		0.301071, 0.162373, -0.939676,
		33.820969, 35.580357, 19.463888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821606, 36.092869, 20.365021>,  <33.610218, 35.466698, 20.121660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821606, 36.092869, 20.365021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555328, 36.062778, 20.068050>,  <33.395561, 36.044724, 19.889868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555328, 36.062778, 20.068050>,  <33.821606, 36.092869, 20.365021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555328, 36.062778, 20.068050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420712, 0.859547, 0.290138,
		0.616326, 0.505490, -0.603839,
		-0.665690, -0.075223, -0.742427,
		33.355621, 36.040211, 19.845322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850937, 36.620590, 19.789160>,  <33.821606, 36.092869, 20.365021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850937, 36.620590, 19.789160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503273, 36.488125, 19.936069>,  <33.294674, 36.408646, 20.024216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503273, 36.488125, 19.936069>,  <33.850937, 36.620590, 19.789160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503273, 36.488125, 19.936069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203555, 0.916418, 0.344593,
		-0.450694, 0.224746, -0.863924,
		-0.869161, -0.331161, 0.367276,
		33.242523, 36.388775, 20.046251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812283, 37.403355, 20.007420>,  <33.850937, 36.620590, 19.789160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812283, 37.403355, 20.007420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873398, 37.631653, 20.330135>,  <33.910065, 37.768631, 20.523766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873398, 37.631653, 20.330135>,  <33.812283, 37.403355, 20.007420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873398, 37.631653, 20.330135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146218, -0.820444, 0.552714,
		0.977383, 0.033520, -0.208805,
		0.152786, 0.570744, 0.806789,
		33.919235, 37.802876, 20.572172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228065, 36.988865, 20.354279>,  <33.812283, 37.403355, 20.007420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228065, 36.988865, 20.354279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075359, 37.260796, 20.604746>,  <33.983734, 37.423954, 20.755026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075359, 37.260796, 20.604746>,  <34.228065, 36.988865, 20.354279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075359, 37.260796, 20.604746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045853, -0.690578, 0.721803,
		0.923119, 0.246851, 0.294814,
		-0.381770, 0.679829, 0.626167,
		33.960827, 37.464745, 20.792597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460373, 36.889053, 20.956894>,  <34.228065, 36.988865, 20.354279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460373, 36.889053, 20.956894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150410, 37.117970, 21.064230>,  <33.964432, 37.255318, 21.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150410, 37.117970, 21.064230>,  <34.460373, 36.889053, 20.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150410, 37.117970, 21.064230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242208, -0.660983, 0.710237,
		0.583830, 0.485371, 0.650812,
		-0.774905, 0.572290, 0.268341,
		33.917938, 37.289658, 21.144732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480064, 37.171185, 21.602877>,  <34.460373, 36.889053, 20.956894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480064, 37.171185, 21.602877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097393, 37.065479, 21.554003>,  <33.867790, 37.002056, 21.524679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097393, 37.065479, 21.554003>,  <34.480064, 37.171185, 21.602877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097393, 37.065479, 21.554003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149519, -0.806060, 0.572636,
		-0.249812, 0.529561, 0.810654,
		-0.956681, -0.264260, -0.122184,
		33.810390, 36.986202, 21.517347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092545, 37.311104, 22.124321>,  <34.480064, 37.171185, 21.602877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092545, 37.311104, 22.124321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961842, 36.975189, 21.950893>,  <33.883419, 36.773640, 21.846838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961842, 36.975189, 21.950893>,  <34.092545, 37.311104, 22.124321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961842, 36.975189, 21.950893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306129, -0.528064, 0.792107,
		-0.894155, 0.126102, 0.429635,
		-0.326761, -0.839790, -0.433568,
		33.863815, 36.723251, 21.820824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703381, 36.987366, 22.599686>,  <34.092545, 37.311104, 22.124321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703381, 36.987366, 22.599686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882839, 36.754490, 22.328461>,  <33.990517, 36.614765, 22.165726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882839, 36.754490, 22.328461>,  <33.703381, 36.987366, 22.599686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882839, 36.754490, 22.328461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261347, -0.640072, 0.722499,
		-0.854641, -0.501359, -0.135014,
		0.448650, -0.582192, -0.678061,
		34.017433, 36.579834, 22.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445152, 36.347660, 22.794052>,  <33.703381, 36.987366, 22.599686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445152, 36.347660, 22.794052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770988, 36.282017, 22.571520>,  <33.966492, 36.242630, 22.438000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770988, 36.282017, 22.571520>,  <33.445152, 36.347660, 22.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770988, 36.282017, 22.571520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253439, -0.762033, 0.595881,
		-0.521731, -0.626398, -0.579157,
		0.814595, -0.164109, -0.556330,
		34.015366, 36.232784, 22.404621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494995, 35.635727, 22.717665>,  <33.445152, 36.347660, 22.794052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494995, 35.635727, 22.717665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866501, 35.775459, 22.668081>,  <34.089405, 35.859299, 22.638330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866501, 35.775459, 22.668081>,  <33.494995, 35.635727, 22.717665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866501, 35.775459, 22.668081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338369, -0.662481, 0.668301,
		0.151334, -0.662639, -0.733490,
		0.928765, 0.349327, -0.123960,
		34.145130, 35.880257, 22.630894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981194, 35.053638, 22.670425>,  <33.494995, 35.635727, 22.717665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981194, 35.053638, 22.670425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237892, 35.347801, 22.757448>,  <34.391911, 35.524300, 22.809662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237892, 35.347801, 22.757448>,  <33.981194, 35.053638, 22.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237892, 35.347801, 22.757448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469453, -0.601017, 0.646833,
		0.606443, -0.312971, -0.730942,
		0.641748, 0.735410, 0.217557,
		34.430416, 35.568424, 22.822716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602032, 34.737988, 22.488791>,  <33.981194, 35.053638, 22.670425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602032, 34.737988, 22.488791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662327, 35.035213, 22.749601>,  <34.698502, 35.213547, 22.906088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662327, 35.035213, 22.749601>,  <34.602032, 34.737988, 22.488791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662327, 35.035213, 22.749601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293143, -0.663496, 0.688361,
		0.944112, 0.087378, -0.317834,
		0.150735, 0.743060, 0.652028,
		34.707546, 35.258133, 22.945210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144962, 34.552414, 22.916481>,  <34.602032, 34.737988, 22.488791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144962, 34.552414, 22.916481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028103, 34.859829, 23.144167>,  <34.957989, 35.044277, 23.280779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028103, 34.859829, 23.144167>,  <35.144962, 34.552414, 22.916481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028103, 34.859829, 23.144167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360463, -0.462802, 0.809865,
		0.885842, 0.441780, -0.141822,
		-0.292147, 0.768534, 0.569215,
		34.940460, 35.090389, 23.314932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696247, 34.692162, 23.264423>,  <35.144962, 34.552414, 22.916481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696247, 34.692162, 23.264423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392815, 34.844139, 23.476154>,  <35.210754, 34.935326, 23.603193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392815, 34.844139, 23.476154>,  <35.696247, 34.692162, 23.264423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392815, 34.844139, 23.476154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231745, -0.601936, 0.764178,
		0.608969, 0.702363, 0.368569,
		-0.758585, 0.379947, 0.529329,
		35.165237, 34.958122, 23.634953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000160, 34.960232, 23.922489>,  <35.696247, 34.692162, 23.264423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000160, 34.960232, 23.922489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611950, 34.900913, 23.998468>,  <35.379025, 34.865322, 24.044056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611950, 34.900913, 23.998468>,  <36.000160, 34.960232, 23.922489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611950, 34.900913, 23.998468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236169, -0.428556, 0.872103,
		-0.047931, 0.891261, 0.450950,
		-0.970529, -0.148301, 0.189947,
		35.320789, 34.856422, 24.055452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930172, 35.172558, 24.553427>,  <36.000160, 34.960232, 23.922489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930172, 35.172558, 24.553427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600243, 34.954857, 24.492157>,  <35.402287, 34.824238, 24.455395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600243, 34.954857, 24.492157>,  <35.930172, 35.172558, 24.553427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600243, 34.954857, 24.492157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038440, -0.324272, 0.945183,
		-0.564087, 0.773718, 0.288387,
		-0.824820, -0.544251, -0.153176,
		35.352798, 34.791580, 24.446205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430630, 35.160606, 25.090981>,  <35.930172, 35.172558, 24.553427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430630, 35.160606, 25.090981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330215, 34.818943, 24.908819>,  <35.269966, 34.613945, 24.799522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330215, 34.818943, 24.908819>,  <35.430630, 35.160606, 25.090981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330215, 34.818943, 24.908819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096215, -0.446120, 0.889786,
		-0.963185, 0.267181, 0.029807,
		-0.251032, -0.854161, -0.455403,
		35.254906, 34.562695, 24.772198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943192, 34.916927, 25.466574>,  <35.430630, 35.160606, 25.090981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943192, 34.916927, 25.466574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060272, 34.595177, 25.259768>,  <35.130520, 34.402126, 25.135683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060272, 34.595177, 25.259768>,  <34.943192, 34.916927, 25.466574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060272, 34.595177, 25.259768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013982, -0.537041, 0.843441,
		-0.956100, -0.254109, -0.145948,
		0.292706, -0.804373, -0.517018,
		35.148083, 34.353867, 25.104662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444485, 34.415619, 25.568443>,  <34.943192, 34.916927, 25.466574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444485, 34.415619, 25.568443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773224, 34.214432, 25.461412>,  <34.970467, 34.093719, 25.397194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773224, 34.214432, 25.461412>,  <34.444485, 34.415619, 25.568443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773224, 34.214432, 25.461412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171951, -0.666755, 0.725169,
		-0.543144, -0.549966, -0.634454,
		0.821844, -0.502966, -0.267577,
		35.019775, 34.063541, 25.381140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323986, 33.730640, 25.505848>,  <34.444485, 34.415619, 25.568443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323986, 33.730640, 25.505848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721180, 33.726173, 25.552929>,  <34.959496, 33.723492, 25.581179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721180, 33.726173, 25.552929>,  <34.323986, 33.730640, 25.505848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721180, 33.726173, 25.552929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087348, -0.740250, 0.666633,
		0.079683, -0.672239, -0.736034,
		0.992986, -0.011172, 0.117705,
		35.019077, 33.722820, 25.588240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497593, 32.973232, 25.698828>,  <34.323986, 33.730640, 25.505848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497593, 32.973232, 25.698828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792431, 33.211647, 25.826221>,  <34.969334, 33.354694, 25.902658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792431, 33.211647, 25.826221>,  <34.497593, 32.973232, 25.698828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792431, 33.211647, 25.826221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163929, -0.614900, 0.771379,
		0.655609, -0.516368, -0.550946,
		0.737092, 0.596038, 0.318486,
		35.013557, 33.390457, 25.921768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172607, 32.521538, 25.775166>,  <34.497593, 32.973232, 25.698828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172607, 32.521538, 25.775166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171360, 32.843746, 26.012190>,  <35.170612, 33.037071, 26.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171360, 32.843746, 26.012190>,  <35.172607, 32.521538, 25.775166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171360, 32.843746, 26.012190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321093, -0.560376, 0.763465,
		0.947043, 0.192651, -0.256897,
		-0.003123, 0.805521, 0.592558,
		35.170422, 33.085403, 26.189957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746323, 32.405155, 26.123199>,  <35.172607, 32.521538, 25.775166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746323, 32.405155, 26.123199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523510, 32.656929, 26.339912>,  <35.389824, 32.807995, 26.469940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523510, 32.656929, 26.339912>,  <35.746323, 32.405155, 26.123199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523510, 32.656929, 26.339912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229630, -0.510199, 0.828834,
		0.798113, 0.586097, 0.139661,
		-0.557032, 0.629433, 0.541783,
		35.356400, 32.845760, 26.502447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255611, 32.585941, 26.645678>,  <35.746323, 32.405155, 26.123199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255611, 32.585941, 26.645678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904350, 32.690632, 26.805849>,  <35.693592, 32.753445, 26.901953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904350, 32.690632, 26.805849>,  <36.255611, 32.585941, 26.645678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904350, 32.690632, 26.805849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283770, -0.388878, 0.876498,
		0.385121, 0.883330, 0.267225,
		-0.878155, 0.261728, 0.400428,
		35.640903, 32.769150, 26.925978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439068, 32.887608, 27.316505>,  <36.255611, 32.585941, 26.645678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439068, 32.887608, 27.316505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047913, 32.806530, 27.337116>,  <35.813221, 32.757885, 27.349483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047913, 32.806530, 27.337116>,  <36.439068, 32.887608, 27.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047913, 32.806530, 27.337116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140448, -0.453906, 0.879911,
		-0.154962, 0.867690, 0.472336,
		-0.977886, -0.202691, 0.051527,
		35.754547, 32.745724, 27.352575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251499, 33.175140, 27.967810>,  <36.439068, 32.887608, 27.316505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251499, 33.175140, 27.967810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963337, 32.904408, 27.907272>,  <35.790440, 32.741966, 27.870949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963337, 32.904408, 27.907272>,  <36.251499, 33.175140, 27.967810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963337, 32.904408, 27.907272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159304, -0.373870, 0.913698,
		-0.675005, 0.634127, 0.377162,
		-0.720410, -0.676834, -0.151345,
		35.747215, 32.701359, 27.861868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681713, 33.137337, 28.537737>,  <36.251499, 33.175140, 27.967810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681713, 33.137337, 28.537737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700645, 32.784943, 28.349432>,  <35.712006, 32.573505, 28.236448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700645, 32.784943, 28.349432>,  <35.681713, 33.137337, 28.537737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700645, 32.784943, 28.349432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102043, -0.464562, 0.879642,
		-0.993653, -0.089672, 0.067911,
		0.047331, -0.880989, -0.470764,
		35.714844, 32.520645, 28.208202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190628, 32.643230, 28.881416>,  <35.681713, 33.137337, 28.537737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190628, 32.643230, 28.881416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431221, 32.406479, 28.666792>,  <35.575577, 32.264427, 28.538017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431221, 32.406479, 28.666792>,  <35.190628, 32.643230, 28.881416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431221, 32.406479, 28.666792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302110, -0.453240, 0.838632,
		-0.739564, -0.666519, -0.093800,
		0.601478, -0.591884, -0.536561,
		35.611664, 32.228912, 28.505823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972889, 31.922752, 28.985209>,  <35.190628, 32.643230, 28.881416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972889, 31.922752, 28.985209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351990, 31.912682, 28.858009>,  <35.579453, 31.906639, 28.781689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351990, 31.912682, 28.858009>,  <34.972889, 31.922752, 28.985209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351990, 31.912682, 28.858009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238010, -0.607917, 0.757488,
		-0.212389, -0.793601, -0.570165,
		0.947756, -0.025177, -0.318000,
		35.636318, 31.905128, 28.762609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183807, 31.202148, 28.935316>,  <34.972889, 31.922752, 28.985209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183807, 31.202148, 28.935316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527893, 31.404938, 28.957294>,  <35.734344, 31.526611, 28.970482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527893, 31.404938, 28.957294>,  <35.183807, 31.202148, 28.935316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527893, 31.404938, 28.957294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302765, -0.594457, 0.744953,
		0.410332, -0.624181, -0.664851,
		0.860210, 0.506971, 0.054944,
		35.785957, 31.557030, 28.973778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718994, 30.696552, 29.040480>,  <35.183807, 31.202148, 28.935316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718994, 30.696552, 29.040480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 31.027229, 29.168102>,  <36.015598, 31.225636, 29.244675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 31.027229, 29.168102>,  <35.718994, 30.696552, 29.040480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904373, 31.027229, 29.168102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250179, -0.467477, 0.847866,
		0.850077, -0.313117, -0.423471,
		0.463443, 0.826694, 0.319056,
		36.043407, 31.275238, 29.263819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351849, 30.523026, 29.409695>,  <35.718994, 30.696552, 29.040480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351849, 30.523026, 29.409695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273621, 30.887455, 29.554855>,  <36.226685, 31.106113, 29.641951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273621, 30.887455, 29.554855>,  <36.351849, 30.523026, 29.409695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273621, 30.887455, 29.554855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422599, -0.255632, 0.869518,
		0.884964, 0.323415, -0.335024,
		-0.195572, 0.911074, 0.362900,
		36.214951, 31.160778, 29.663725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805019, 30.521107, 30.043863>,  <36.351849, 30.523026, 29.409695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805019, 30.521107, 30.043863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588913, 30.847807, 30.124889>,  <36.459248, 31.043827, 30.173506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588913, 30.847807, 30.124889>,  <36.805019, 30.521107, 30.043863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588913, 30.847807, 30.124889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256590, -0.069363, 0.964028,
		0.801420, 0.572808, -0.172095,
		-0.540266, 0.816749, 0.202566,
		36.426834, 31.092833, 30.185659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157116, 30.927183, 30.488371>,  <36.805019, 30.521107, 30.043863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157116, 30.927183, 30.488371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785816, 31.068563, 30.534721>,  <36.563038, 31.153391, 30.562531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785816, 31.068563, 30.534721>,  <37.157116, 30.927183, 30.488371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785816, 31.068563, 30.534721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116555, -0.019440, 0.992994,
		0.353226, 0.935251, -0.023151,
		-0.928249, 0.353450, 0.115875,
		36.507343, 31.174599, 30.569483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197384, 31.487022, 30.936382>,  <37.157116, 30.927183, 30.488371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197384, 31.487022, 30.936382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 31.394030, 30.961502>,  <36.576218, 31.338234, 30.976574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809155, 31.394030, 30.961502>,  <37.197384, 31.487022, 30.936382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809155, 31.394030, 30.961502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031681, 0.135249, 0.990305,
		-0.238722, 0.963151, -0.123904,
		-0.970571, -0.232482, 0.062800,
		36.517982, 31.324286, 30.980343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774364, 32.025730, 31.313154>,  <37.197384, 31.487022, 30.936382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774364, 32.025730, 31.313154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582825, 31.675758, 31.341972>,  <36.467899, 31.465775, 31.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582825, 31.675758, 31.341972>,  <36.774364, 32.025730, 31.313154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582825, 31.675758, 31.341972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015547, 0.090506, 0.995774,
		-0.877757, 0.475710, -0.056942,
		-0.478853, -0.874934, 0.072046,
		36.439167, 31.413279, 31.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371647, 32.157913, 31.832640>,  <36.774364, 32.025730, 31.313154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371647, 32.157913, 31.832640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381828, 31.759037, 31.804447>,  <36.387936, 31.519712, 31.787533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381828, 31.759037, 31.804447>,  <36.371647, 32.157913, 31.832640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381828, 31.759037, 31.804447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023172, -0.069894, 0.997285,
		-0.999408, -0.027018, 0.021328,
		0.025454, -0.997189, -0.070479,
		36.389465, 31.459881, 31.783304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155079, 31.897488, 32.466816>,  <36.371647, 32.157913, 31.832640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155079, 31.897488, 32.466816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307598, 31.549713, 32.341160>,  <36.399109, 31.341047, 32.265766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307598, 31.549713, 32.341160>,  <36.155079, 31.897488, 32.466816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307598, 31.549713, 32.341160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158203, -0.273433, 0.948792,
		-0.910813, -0.411474, 0.033288,
		0.381302, -0.869439, -0.314143,
		36.421989, 31.288881, 32.246918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827999, 31.324400, 32.883217>,  <36.155079, 31.897488, 32.466816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827999, 31.324400, 32.883217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164429, 31.173708, 32.727951>,  <36.366287, 31.083292, 32.634792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164429, 31.173708, 32.727951>,  <35.827999, 31.324400, 32.883217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164429, 31.173708, 32.727951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307381, -0.257601, 0.916056,
		-0.445097, -0.889784, -0.100861,
		0.841074, -0.376731, -0.388160,
		36.416752, 31.060690, 32.611504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867390, 30.701445, 33.175419>,  <35.827999, 31.324400, 32.883217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867390, 30.701445, 33.175419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241184, 30.789213, 33.063282>,  <36.465462, 30.841875, 32.995998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241184, 30.789213, 33.063282>,  <35.867390, 30.701445, 33.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241184, 30.789213, 33.063282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334219, -0.269493, 0.903145,
		0.122621, -0.937671, -0.325173,
		0.934485, 0.219424, -0.280342,
		36.521530, 30.855040, 32.979179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255634, 30.088814, 33.379375>,  <35.867390, 30.701445, 33.175419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255634, 30.088814, 33.379375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498592, 30.402555, 33.329002>,  <36.644367, 30.590801, 33.298779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498592, 30.402555, 33.329002>,  <36.255634, 30.088814, 33.379375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498592, 30.402555, 33.329002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520412, -0.273103, 0.809065,
		0.600203, -0.556957, -0.574069,
		0.607394, 0.784356, -0.125929,
		36.680809, 30.637863, 33.291225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950127, 29.790625, 33.475914>,  <36.255634, 30.088814, 33.379375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950127, 29.790625, 33.475914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968597, 30.186071, 33.533184>,  <36.979679, 30.423340, 33.567547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968597, 30.186071, 33.533184>,  <36.950127, 29.790625, 33.475914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968597, 30.186071, 33.533184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546806, -0.144967, 0.824613,
		0.835985, 0.040210, -0.547278,
		0.046179, 0.988619, 0.143177,
		36.982452, 30.482656, 33.576138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558548, 29.835247, 33.734585>,  <36.950127, 29.790625, 33.475914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558548, 29.835247, 33.734585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389366, 30.186901, 33.822433>,  <37.287857, 30.397894, 33.875145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389366, 30.186901, 33.822433>,  <37.558548, 29.835247, 33.734585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389366, 30.186901, 33.822433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453948, -0.004197, 0.891018,
		0.784247, 0.476556, -0.397306,
		-0.422952, 0.879134, 0.219623,
		37.262482, 30.450642, 33.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047657, 30.423534, 33.872658>,  <37.558548, 29.835247, 33.734585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047657, 30.423534, 33.872658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705090, 30.541004, 34.042503>,  <37.499550, 30.611486, 34.144413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705090, 30.541004, 34.042503>,  <38.047657, 30.423534, 33.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705090, 30.541004, 34.042503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492108, 0.215632, 0.843405,
		0.156126, 0.931266, -0.329192,
		-0.856419, 0.293676, 0.424618,
		37.448162, 30.629107, 34.169888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237251, 30.968594, 34.247601>,  <38.047657, 30.423534, 33.872658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237251, 30.968594, 34.247601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887989, 30.857271, 34.407669>,  <37.678429, 30.790478, 34.503712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887989, 30.857271, 34.407669>,  <38.237251, 30.968594, 34.247601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887989, 30.857271, 34.407669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397514, 0.068548, 0.915032,
		-0.282089, 0.958044, 0.050776,
		-0.873160, -0.278305, 0.400172,
		37.626041, 30.773779, 34.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148235, 31.394928, 34.767120>,  <38.237251, 30.968594, 34.247601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148235, 31.394928, 34.767120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961723, 31.042498, 34.798828>,  <37.849815, 30.831039, 34.817852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961723, 31.042498, 34.798828>,  <38.148235, 31.394928, 34.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961723, 31.042498, 34.798828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434318, -0.149935, 0.888193,
		-0.770682, 0.448577, 0.452580,
		-0.466280, -0.881078, 0.079273,
		37.821838, 30.778173, 34.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775131, 31.357182, 35.468491>,  <38.148235, 31.394928, 34.767120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775131, 31.357182, 35.468491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160629, 31.438852, 35.537205>,  <38.391926, 31.487856, 35.578434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160629, 31.438852, 35.537205>,  <37.775131, 31.357182, 35.468491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160629, 31.438852, 35.537205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035990, 0.737386, -0.674512,
		-0.264394, 0.643873, 0.717999,
		0.963743, 0.204178, 0.171788,
		38.449753, 31.500105, 35.588741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852074, 32.119896, 35.501381>,  <37.775131, 31.357182, 35.468491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852074, 32.119896, 35.501381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221931, 31.988922, 35.423595>,  <38.443848, 31.910339, 35.376926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221931, 31.988922, 35.423595>,  <37.852074, 32.119896, 35.501381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221931, 31.988922, 35.423595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099059, 0.699852, -0.707385,
		0.367713, 0.634820, 0.679552,
		0.924648, -0.327430, -0.194460,
		38.499325, 31.890694, 35.365257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270920, 32.703609, 35.478897>,  <37.852074, 32.119896, 35.501381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270920, 32.703609, 35.478897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460289, 32.414268, 35.277843>,  <38.573910, 32.240665, 35.157211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460289, 32.414268, 35.277843>,  <38.270920, 32.703609, 35.478897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460289, 32.414268, 35.277843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194613, 0.642424, -0.741227,
		0.859069, 0.253093, 0.444909,
		0.473419, -0.723350, -0.502632,
		38.602314, 32.197262, 35.127052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931641, 33.049580, 35.238892>,  <38.270920, 32.703609, 35.478897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931641, 33.049580, 35.238892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891304, 32.724384, 35.009499>,  <38.867104, 32.529266, 34.871864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891304, 32.724384, 35.009499>,  <38.931641, 33.049580, 35.238892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891304, 32.724384, 35.009499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208087, 0.546437, -0.811237,
		0.972898, -0.201137, 0.114071,
		-0.100838, -0.812988, -0.573482,
		38.861053, 32.480488, 34.837456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360806, 33.204330, 34.725098>,  <38.931641, 33.049580, 35.238892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360806, 33.204330, 34.725098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103691, 32.923374, 34.602810>,  <38.949421, 32.754799, 34.529438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103691, 32.923374, 34.602810>,  <39.360806, 33.204330, 34.725098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103691, 32.923374, 34.602810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073126, 0.453533, -0.888234,
		0.762547, -0.548590, -0.342888,
		-0.642787, -0.702394, -0.305724,
		38.910854, 32.712658, 34.511093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707905, 33.055130, 34.133263>,  <39.360806, 33.204330, 34.725098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707905, 33.055130, 34.133263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340031, 32.903530, 34.092216>,  <39.119305, 32.812569, 34.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340031, 32.903530, 34.092216>,  <39.707905, 33.055130, 34.133263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340031, 32.903530, 34.092216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036235, 0.342138, -0.938951,
		0.390976, -0.859823, -0.328394,
		-0.919687, -0.379006, -0.102613,
		39.064125, 32.789829, 34.061432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702404, 32.765457, 33.435333>,  <39.707905, 33.055130, 34.133263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702404, 32.765457, 33.435333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314724, 32.826977, 33.512264>,  <39.082115, 32.863888, 33.558422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314724, 32.826977, 33.512264>,  <39.702404, 32.765457, 33.435333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314724, 32.826977, 33.512264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128953, 0.348405, -0.928431,
		-0.209803, -0.924640, -0.317842,
		-0.969202, 0.153801, 0.192332,
		39.023964, 32.873116, 33.569965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440838, 32.486580, 32.874989>,  <39.702404, 32.765457, 33.435333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440838, 32.486580, 32.874989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144806, 32.700802, 33.037693>,  <38.967186, 32.829334, 33.135315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144806, 32.700802, 33.037693>,  <39.440838, 32.486580, 32.874989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144806, 32.700802, 33.037693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337613, 0.227225, -0.913447,
		-0.581631, -0.813354, 0.012647,
		-0.740082, 0.535559, 0.406760,
		38.922783, 32.861469, 33.159721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898151, 32.225807, 32.540066>,  <39.440838, 32.486580, 32.874989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898151, 32.225807, 32.540066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839779, 32.602570, 32.661072>,  <38.804756, 32.828629, 32.733673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839779, 32.602570, 32.661072>,  <38.898151, 32.225807, 32.540066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839779, 32.602570, 32.661072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134506, 0.284054, -0.949327,
		-0.980108, -0.179230, 0.085239,
		-0.145935, 0.941908, 0.302511,
		38.795998, 32.885143, 32.751823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271801, 32.487896, 32.170551>,  <38.898151, 32.225807, 32.540066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271801, 32.487896, 32.170551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458755, 32.811409, 32.313335>,  <38.570927, 33.005516, 32.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458755, 32.811409, 32.313335>,  <38.271801, 32.487896, 32.170551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458755, 32.811409, 32.313335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168722, 0.477961, -0.862025,
		-0.867806, 0.342668, 0.359850,
		0.467383, 0.808784, 0.356962,
		38.598969, 33.054043, 32.420425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797810, 33.061405, 32.032188>,  <38.271801, 32.487896, 32.170551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797810, 33.061405, 32.032188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168240, 33.203445, 32.083233>,  <38.390499, 33.288670, 32.113857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168240, 33.203445, 32.083233>,  <37.797810, 33.061405, 32.032188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168240, 33.203445, 32.083233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060812, 0.474216, -0.878306,
		-0.372404, 0.805618, 0.460755,
		0.926076, 0.355104, 0.127609,
		38.446064, 33.309978, 32.121517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704170, 33.722988, 31.886499>,  <37.797810, 33.061405, 32.032188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704170, 33.722988, 31.886499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100388, 33.681919, 31.850117>,  <38.338120, 33.657276, 31.828287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100388, 33.681919, 31.850117>,  <37.704170, 33.722988, 31.886499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100388, 33.681919, 31.850117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010047, 0.607023, -0.794620,
		0.136800, 0.788023, 0.600254,
		0.990548, -0.102674, -0.090958,
		38.397552, 33.651115, 31.822830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011307, 34.382690, 31.706169>,  <37.704170, 33.722988, 31.886499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011307, 34.382690, 31.706169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281307, 34.119816, 31.572018>,  <38.443306, 33.962090, 31.491528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281307, 34.119816, 31.572018>,  <38.011307, 34.382690, 31.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281307, 34.119816, 31.572018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005267, 0.450250, -0.892887,
		0.737799, 0.604465, 0.300457,
		0.675000, -0.657189, -0.335378,
		38.483807, 33.922661, 31.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461117, 34.742241, 31.348598>,  <38.011307, 34.382690, 31.706169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461117, 34.742241, 31.348598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512543, 34.371109, 31.208544>,  <38.543396, 34.148430, 31.124512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512543, 34.371109, 31.208544>,  <38.461117, 34.742241, 31.348598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512543, 34.371109, 31.208544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042495, 0.347587, -0.936684,
		0.990791, 0.135302, 0.005259,
		0.128563, -0.927834, -0.350136,
		38.551113, 34.092758, 31.103502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845028, 34.882156, 30.770678>,  <38.461117, 34.742241, 31.348598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845028, 34.882156, 30.770678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729084, 34.503975, 30.711226>,  <38.659515, 34.277065, 30.675554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729084, 34.503975, 30.711226>,  <38.845028, 34.882156, 30.770678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729084, 34.503975, 30.711226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087814, 0.180915, -0.979571,
		0.953032, -0.270888, -0.135464,
		-0.289861, -0.945457, -0.148630,
		38.642124, 34.220337, 30.666637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023792, 34.651089, 30.142235>,  <38.845028, 34.882156, 30.770678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023792, 34.651089, 30.142235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756107, 34.364567, 30.221294>,  <38.595497, 34.192654, 30.268730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756107, 34.364567, 30.221294>,  <39.023792, 34.651089, 30.142235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756107, 34.364567, 30.221294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294771, 0.011743, -0.955496,
		0.682106, -0.697687, -0.219005,
		-0.669209, -0.716306, 0.197649,
		38.555344, 34.149673, 30.280588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120533, 34.096725, 29.615988>,  <39.023792, 34.651089, 30.142235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120533, 34.096725, 29.615988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748516, 34.063660, 29.759201>,  <38.525307, 34.043819, 29.845129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748516, 34.063660, 29.759201>,  <39.120533, 34.096725, 29.615988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748516, 34.063660, 29.759201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361754, 0.035066, -0.931614,
		0.064461, -0.995960, -0.062519,
		-0.930042, -0.082669, 0.358032,
		38.469501, 34.038860, 29.866611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727852, 33.530167, 29.312162>,  <39.120533, 34.096725, 29.615988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727852, 33.530167, 29.312162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448860, 33.800259, 29.408148>,  <38.281464, 33.962315, 29.465738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448860, 33.800259, 29.408148>,  <38.727852, 33.530167, 29.312162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448860, 33.800259, 29.408148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316114, 0.010603, -0.948662,
		-0.643109, -0.737532, 0.206054,
		-0.697483, 0.675230, 0.239963,
		38.239616, 34.002827, 29.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137501, 33.300198, 28.935118>,  <38.727852, 33.530167, 29.312162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137501, 33.300198, 28.935118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074581, 33.679493, 29.045471>,  <38.036831, 33.907070, 29.111683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074581, 33.679493, 29.045471>,  <38.137501, 33.300198, 28.935118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074581, 33.679493, 29.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470501, 0.173660, -0.865142,
		-0.868267, -0.265885, 0.418830,
		-0.157295, 0.948234, 0.275882,
		38.027393, 33.963963, 29.128235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431816, 33.395512, 28.746389>,  <38.137501, 33.300198, 28.935118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431816, 33.395512, 28.746389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556419, 33.772438, 28.795380>,  <37.631184, 33.998592, 28.824774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556419, 33.772438, 28.795380>,  <37.431816, 33.395512, 28.746389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556419, 33.772438, 28.795380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328836, 0.227826, -0.916495,
		-0.891531, 0.245225, 0.380838,
		0.311513, 0.942316, 0.122475,
		37.649872, 34.055134, 28.832123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942108, 33.771358, 28.427423>,  <37.431816, 33.395512, 28.746389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942108, 33.771358, 28.427423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272343, 33.997070, 28.428017>,  <37.470482, 34.132496, 28.428371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272343, 33.997070, 28.428017>,  <36.942108, 33.771358, 28.427423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272343, 33.997070, 28.428017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203378, 0.300002, -0.932007,
		-0.526358, 0.769146, 0.362438,
		0.825582, 0.564281, 0.001481,
		37.520016, 34.166355, 28.428461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782677, 34.535942, 28.297878>,  <36.942108, 33.771358, 28.427423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782677, 34.535942, 28.297878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136623, 34.408524, 28.161917>,  <37.348991, 34.332073, 28.080339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136623, 34.408524, 28.161917>,  <36.782677, 34.535942, 28.297878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136623, 34.408524, 28.161917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228114, 0.339890, -0.912381,
		0.406166, 0.884874, 0.228093,
		0.884869, -0.318547, -0.339904,
		37.402084, 34.312958, 28.059946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962959, 35.033112, 27.691936>,  <36.782677, 34.535942, 28.297878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962959, 35.033112, 27.691936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239819, 34.746853, 27.654461>,  <37.405933, 34.575096, 27.631975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239819, 34.746853, 27.654461>,  <36.962959, 35.033112, 27.691936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239819, 34.746853, 27.654461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087305, 0.211871, -0.973390,
		0.716457, 0.665549, 0.209125,
		0.692146, -0.715650, -0.093691,
		37.447464, 34.532158, 27.626354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406345, 35.342628, 27.248444>,  <36.962959, 35.033112, 27.691936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406345, 35.342628, 27.248444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515324, 34.958874, 27.219172>,  <37.580711, 34.728622, 27.201609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515324, 34.958874, 27.219172>,  <37.406345, 35.342628, 27.248444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515324, 34.958874, 27.219172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105561, 0.045792, -0.993358,
		0.956364, 0.278358, -0.088797,
		0.272443, -0.959385, -0.073178,
		37.597057, 34.671059, 27.197218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006058, 35.333591, 26.780844>,  <37.406345, 35.342628, 27.248444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006058, 35.333591, 26.780844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797318, 34.992531, 26.791067>,  <37.672073, 34.787895, 26.797201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797318, 34.992531, 26.791067>,  <38.006058, 35.333591, 26.780844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797318, 34.992531, 26.791067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037292, -0.052738, -0.997912,
		0.852224, -0.519804, 0.059318,
		-0.521847, -0.852656, 0.025560,
		37.640762, 34.736732, 26.798735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324501, 34.989685, 26.360878>,  <38.006058, 35.333591, 26.780844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324501, 34.989685, 26.360878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980133, 34.787556, 26.384443>,  <37.773514, 34.666279, 26.398582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980133, 34.787556, 26.384443>,  <38.324501, 34.989685, 26.360878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980133, 34.787556, 26.384443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025892, -0.159167, -0.986912,
		0.508087, -0.848123, 0.150114,
		-0.860916, -0.505324, 0.058911,
		37.721859, 34.635960, 26.402117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500809, 34.426342, 26.026619>,  <38.324501, 34.989685, 26.360878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500809, 34.426342, 26.026619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102097, 34.458290, 26.029165>,  <37.862869, 34.477459, 26.030693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102097, 34.458290, 26.029165>,  <38.500809, 34.426342, 26.026619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102097, 34.458290, 26.029165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033181, -0.339158, -0.940144,
		-0.072927, -0.937333, 0.340718,
		-0.996785, 0.079868, 0.006368,
		37.803062, 34.482250, 26.031076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222973, 33.810493, 25.760302>,  <38.500809, 34.426342, 26.026619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222973, 33.810493, 25.760302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976616, 34.117943, 25.691149>,  <37.828800, 34.302414, 25.649656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976616, 34.117943, 25.691149>,  <38.222973, 33.810493, 25.760302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976616, 34.117943, 25.691149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106069, -0.136544, -0.984939,
		-0.780655, -0.624957, 0.002570,
		-0.615896, 0.768625, -0.172883,
		37.791847, 34.348530, 25.639284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188148, 33.772484, 25.042200>,  <38.222973, 33.810493, 25.760302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188148, 33.772484, 25.042200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987339, 34.110310, 25.116701>,  <37.866856, 34.313004, 25.161402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987339, 34.110310, 25.116701>,  <38.188148, 33.772484, 25.042200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987339, 34.110310, 25.116701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178738, 0.312024, -0.933110,
		-0.846185, -0.435149, -0.307597,
		-0.502020, 0.844563, 0.186252,
		37.836735, 34.363678, 25.172577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815807, 33.849945, 24.370277>,  <38.188148, 33.772484, 25.042200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815807, 33.849945, 24.370277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809166, 34.201790, 24.560438>,  <37.805183, 34.412895, 24.674536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809166, 34.201790, 24.560438>,  <37.815807, 33.849945, 24.370277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809166, 34.201790, 24.560438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179846, 0.470342, -0.863964,
		-0.983554, 0.071156, -0.166003,
		-0.016602, 0.879611, 0.475404,
		37.804184, 34.465672, 24.703060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338314, 34.273804, 24.070312>,  <37.815807, 33.849945, 24.370277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338314, 34.273804, 24.070312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591095, 34.523102, 24.254576>,  <37.742764, 34.672680, 24.365133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591095, 34.523102, 24.254576>,  <37.338314, 34.273804, 24.070312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591095, 34.523102, 24.254576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022843, 0.579154, -0.814898,
		-0.774673, 0.525497, 0.351759,
		0.631949, 0.623244, 0.460659,
		37.780678, 34.710075, 24.392773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213196, 34.918495, 23.814842>,  <37.338314, 34.273804, 24.070312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213196, 34.918495, 23.814842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564606, 34.988720, 23.992544>,  <37.775452, 35.030857, 24.099165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564606, 34.988720, 23.992544>,  <37.213196, 34.918495, 23.814842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564606, 34.988720, 23.992544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190113, 0.724681, -0.662340,
		-0.438229, 0.666344, 0.603275,
		0.878529, 0.175566, 0.444257,
		37.828163, 35.041389, 24.125822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188534, 35.587746, 23.940947>,  <37.213196, 34.918495, 23.814842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188534, 35.587746, 23.940947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565628, 35.459419, 23.904453>,  <37.791885, 35.382423, 23.882557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565628, 35.459419, 23.904453>,  <37.188534, 35.587746, 23.940947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565628, 35.459419, 23.904453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180859, 0.721528, -0.668347,
		0.280247, 0.613574, 0.738234,
		0.942736, -0.320819, -0.091235,
		37.848450, 35.363174, 23.877083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542999, 36.197811, 24.083632>,  <37.188534, 35.587746, 23.940947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542999, 36.197811, 24.083632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786110, 35.942173, 23.895098>,  <37.931976, 35.788788, 23.781977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786110, 35.942173, 23.895098>,  <37.542999, 36.197811, 24.083632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786110, 35.942173, 23.895098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269633, 0.724363, -0.634504,
		0.746929, 0.258552, 0.612575,
		0.607780, -0.639100, -0.471334,
		37.968445, 35.750443, 23.753698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029495, 36.637920, 23.690765>,  <37.542999, 36.197811, 24.083632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029495, 36.637920, 23.690765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080051, 36.283382, 23.512585>,  <38.110386, 36.070660, 23.405676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080051, 36.283382, 23.512585>,  <38.029495, 36.637920, 23.690765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080051, 36.283382, 23.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328183, 0.461125, -0.824414,
		0.936121, -0.041995, 0.349162,
		0.126386, -0.886341, -0.445451,
		38.117966, 36.017479, 23.378950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672310, 36.741486, 23.315382>,  <38.029495, 36.637920, 23.690765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672310, 36.741486, 23.315382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466412, 36.442436, 23.147526>,  <38.342873, 36.263008, 23.046812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466412, 36.442436, 23.147526>,  <38.672310, 36.741486, 23.315382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466412, 36.442436, 23.147526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224599, 0.354780, -0.907571,
		0.827403, -0.561416, -0.014704,
		-0.514742, -0.747625, -0.419640,
		38.311989, 36.218147, 23.021633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115818, 36.575760, 22.812628>,  <38.672310, 36.741486, 23.315382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115818, 36.575760, 22.812628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748264, 36.459164, 22.706285>,  <38.527733, 36.389206, 22.642481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748264, 36.459164, 22.706285>,  <39.115818, 36.575760, 22.812628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748264, 36.459164, 22.706285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101800, 0.475868, -0.873605,
		0.381156, -0.829810, -0.407596,
		-0.918889, -0.291486, -0.265855,
		38.472599, 36.371716, 22.626530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201698, 36.248150, 22.190880>,  <39.115818, 36.575760, 22.812628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201698, 36.248150, 22.190880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815948, 36.353626, 22.199347>,  <38.584499, 36.416912, 22.204426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815948, 36.353626, 22.199347>,  <39.201698, 36.248150, 22.190880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815948, 36.353626, 22.199347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037862, 0.216775, -0.975487,
		-0.261813, -0.939935, -0.219036,
		-0.964376, 0.263689, 0.021166,
		38.526634, 36.432732, 22.205696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694160, 36.200920, 21.568691>,  <39.201698, 36.248150, 22.190880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694160, 36.200920, 21.568691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092453, 36.214298, 21.603083>,  <40.331429, 36.222324, 21.623718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092453, 36.214298, 21.603083>,  <39.694160, 36.200920, 21.568691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092453, 36.214298, 21.603083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029285, -0.769173, 0.638369,
		0.087484, -0.638165, -0.764914,
		0.995736, 0.033446, 0.085979,
		40.391174, 36.224331, 21.628876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878674, 35.531597, 21.493469>,  <39.694160, 36.200920, 21.568691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878674, 35.531597, 21.493469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173298, 35.736565, 21.670063>,  <40.350071, 35.859543, 21.776020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173298, 35.736565, 21.670063>,  <39.878674, 35.531597, 21.493469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173298, 35.736565, 21.670063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050565, -0.692616, 0.719532,
		0.674479, -0.507655, -0.536064,
		0.736560, 0.512416, 0.441485,
		40.394264, 35.890289, 21.802509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113495, 35.033180, 21.941622>,  <39.878674, 35.531597, 21.493469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113495, 35.033180, 21.941622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288433, 35.366985, 22.075682>,  <40.393394, 35.567268, 22.156118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288433, 35.366985, 22.075682>,  <40.113495, 35.033180, 21.941622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288433, 35.366985, 22.075682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166912, -0.441531, 0.881584,
		0.883670, -0.329612, -0.332390,
		0.437341, 0.834509, 0.335151,
		40.419636, 35.617340, 22.176228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778706, 34.814209, 22.307976>,  <40.113495, 35.033180, 21.941622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778706, 34.814209, 22.307976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670628, 35.172031, 22.450390>,  <40.605782, 35.386726, 22.535839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670628, 35.172031, 22.450390>,  <40.778706, 34.814209, 22.307976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670628, 35.172031, 22.450390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239770, -0.295621, 0.924726,
		0.932473, 0.335222, -0.134613,
		-0.270194, 0.894558, 0.356035,
		40.589569, 35.440399, 22.557199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336246, 34.909092, 22.764595>,  <40.778706, 34.814209, 22.307976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336246, 34.909092, 22.764595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058670, 35.180984, 22.859602>,  <40.892124, 35.344120, 22.916607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058670, 35.180984, 22.859602>,  <41.336246, 34.909092, 22.764595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058670, 35.180984, 22.859602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191159, -0.144116, 0.970922,
		0.694195, 0.719164, -0.029929,
		-0.693939, 0.679731, 0.237519,
		40.850487, 35.384903, 22.930859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549328, 35.270481, 23.448069>,  <41.336246, 34.909092, 22.764595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549328, 35.270481, 23.448069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155983, 35.335785, 23.416204>,  <40.919975, 35.374966, 23.397085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155983, 35.335785, 23.416204>,  <41.549328, 35.270481, 23.448069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155983, 35.335785, 23.416204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120173, -0.255801, 0.959231,
		0.136224, 0.952845, 0.271164,
		-0.983362, 0.163257, -0.079660,
		40.860973, 35.384762, 23.392307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343266, 35.712383, 24.037848>,  <41.549328, 35.270481, 23.448069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343266, 35.712383, 24.037848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030216, 35.508984, 23.894218>,  <40.842388, 35.386944, 23.808041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030216, 35.508984, 23.894218>,  <41.343266, 35.712383, 24.037848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030216, 35.508984, 23.894218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231001, -0.298405, 0.926063,
		-0.578048, 0.807704, 0.116076,
		-0.782623, -0.508496, -0.359073,
		40.795429, 35.356434, 23.786497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869270, 35.851719, 24.501865>,  <41.343266, 35.712383, 24.037848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869270, 35.851719, 24.501865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693733, 35.537693, 24.327011>,  <40.588413, 35.349277, 24.222097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693733, 35.537693, 24.327011>,  <40.869270, 35.851719, 24.501865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693733, 35.537693, 24.327011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338239, -0.306378, 0.889790,
		-0.832475, 0.538332, -0.131090,
		-0.438839, -0.785068, -0.437137,
		40.562080, 35.302174, 24.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235271, 35.802299, 24.789400>,  <40.869270, 35.851719, 24.501865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235271, 35.802299, 24.789400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356140, 35.444061, 24.658808>,  <40.428661, 35.229118, 24.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356140, 35.444061, 24.658808>,  <40.235271, 35.802299, 24.789400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356140, 35.444061, 24.658808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114880, -0.374211, 0.920200,
		-0.946305, -0.240554, -0.215964,
		0.302174, -0.895600, -0.326483,
		40.446793, 35.175381, 24.560863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833271, 35.324490, 25.115877>,  <40.235271, 35.802299, 24.789400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833271, 35.324490, 25.115877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134552, 35.096786, 24.984037>,  <40.315319, 34.960163, 24.904934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134552, 35.096786, 24.984037>,  <39.833271, 35.324490, 25.115877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134552, 35.096786, 24.984037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016863, -0.484195, 0.874798,
		-0.657575, -0.664456, -0.355097,
		0.753200, -0.569257, -0.329599,
		40.360512, 34.926010, 24.885157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555973, 34.774258, 25.261480>,  <39.833271, 35.324490, 25.115877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555973, 34.774258, 25.261480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948799, 34.700657, 25.244995>,  <40.184494, 34.656498, 25.235104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948799, 34.700657, 25.244995>,  <39.555973, 34.774258, 25.261480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948799, 34.700657, 25.244995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036311, -0.399019, 0.916224,
		-0.185028, -0.898292, -0.398542,
		0.982062, -0.183999, -0.041211,
		40.243420, 34.645458, 25.232632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673271, 34.099926, 25.664919>,  <39.555973, 34.774258, 25.261480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673271, 34.099926, 25.664919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039692, 34.259888, 25.652752>,  <40.259544, 34.355865, 25.645452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039692, 34.259888, 25.652752>,  <39.673271, 34.099926, 25.664919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039692, 34.259888, 25.652752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119150, -0.198947, 0.972740,
		0.382948, -0.894706, -0.229895,
		0.916054, 0.399901, -0.030418,
		40.314507, 34.379856, 25.643627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053753, 33.529327, 25.783953>,  <39.673271, 34.099926, 25.664919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053753, 33.529327, 25.783953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248238, 33.864429, 25.883360>,  <40.364929, 34.065491, 25.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248238, 33.864429, 25.883360>,  <40.053753, 33.529327, 25.783953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248238, 33.864429, 25.883360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134868, -0.352932, 0.925878,
		0.863373, -0.416652, -0.284585,
		0.486207, 0.837759, 0.248519,
		40.394100, 34.115757, 25.957916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717724, 33.213131, 26.082615>,  <40.053753, 33.529327, 25.783953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717724, 33.213131, 26.082615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666325, 33.594002, 26.193502>,  <40.635487, 33.822525, 26.260035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666325, 33.594002, 26.193502>,  <40.717724, 33.213131, 26.082615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666325, 33.594002, 26.193502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132953, -0.260471, 0.956284,
		0.982757, 0.159739, -0.093124,
		-0.128499, 0.952176, 0.277217,
		40.627773, 33.879654, 26.276669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303867, 33.304104, 26.492662>,  <40.717724, 33.213131, 26.082615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303867, 33.304104, 26.492662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058262, 33.607029, 26.581621>,  <40.910896, 33.788784, 26.634996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058262, 33.607029, 26.581621>,  <41.303867, 33.304104, 26.492662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058262, 33.607029, 26.581621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138902, -0.173688, 0.974956,
		0.776974, 0.629531, 0.001456,
		-0.614018, 0.757313, 0.222394,
		40.874058, 33.834225, 26.648340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694736, 33.624451, 26.927996>,  <41.303867, 33.304104, 26.492662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694736, 33.624451, 26.927996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332546, 33.772999, 27.010159>,  <41.115231, 33.862129, 27.059456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332546, 33.772999, 27.010159>,  <41.694736, 33.624451, 26.927996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332546, 33.772999, 27.010159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231876, 0.027547, 0.972355,
		0.355449, 0.928074, -0.111056,
		-0.905477, 0.371374, 0.205406,
		41.060902, 33.884411, 27.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768467, 34.167992, 27.546446>,  <41.694736, 33.624451, 26.927996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768467, 34.167992, 27.546446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378407, 34.088142, 27.508015>,  <41.144371, 34.040234, 27.484957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378407, 34.088142, 27.508015>,  <41.768467, 34.167992, 27.546446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378407, 34.088142, 27.508015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078612, -0.093656, 0.992496,
		-0.207125, 0.975386, 0.075636,
		-0.975151, -0.199625, -0.096076,
		41.085861, 34.028255, 27.479193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311157, 34.655182, 27.950623>,  <41.768467, 34.167992, 27.546446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311157, 34.655182, 27.950623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146381, 34.296833, 27.884031>,  <41.047516, 34.081821, 27.844076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146381, 34.296833, 27.884031>,  <41.311157, 34.655182, 27.950623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146381, 34.296833, 27.884031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162628, -0.107483, 0.980816,
		-0.896583, 0.431107, -0.101418,
		-0.411936, -0.895876, -0.166477,
		41.022800, 34.028069, 27.834087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787846, 34.703491, 28.437162>,  <41.311157, 34.655182, 27.950623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787846, 34.703491, 28.437162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851315, 34.317341, 28.354336>,  <40.889397, 34.085651, 28.304640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851315, 34.317341, 28.354336>,  <40.787846, 34.703491, 28.437162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851315, 34.317341, 28.354336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120866, -0.227137, 0.966334,
		-0.979905, -0.128303, -0.152721,
		0.158672, -0.965374, -0.207065,
		40.898918, 34.027729, 28.292217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320255, 34.367542, 28.829590>,  <40.787846, 34.703491, 28.437162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320255, 34.367542, 28.829590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554211, 34.051144, 28.757772>,  <40.694584, 33.861305, 28.714682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554211, 34.051144, 28.757772>,  <40.320255, 34.367542, 28.829590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554211, 34.051144, 28.757772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031654, -0.198925, 0.979504,
		-0.810496, -0.578584, -0.091311,
		0.584889, -0.790993, -0.179542,
		40.729679, 33.813847, 28.703911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987564, 33.711559, 29.120207>,  <40.320255, 34.367542, 28.829590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987564, 33.711559, 29.120207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366779, 33.590885, 29.079782>,  <40.594307, 33.518478, 29.055529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366779, 33.590885, 29.079782>,  <39.987564, 33.711559, 29.120207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366779, 33.590885, 29.079782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005856, -0.334123, 0.942511,
		-0.318111, -0.892942, -0.318527,
		0.948036, -0.301688, -0.101059,
		40.651192, 33.500378, 29.049465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039993, 32.995293, 29.328947>,  <39.987564, 33.711559, 29.120207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039993, 32.995293, 29.328947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404163, 33.158501, 29.356194>,  <40.622665, 33.256428, 29.372541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404163, 33.158501, 29.356194>,  <40.039993, 32.995293, 29.328947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404163, 33.158501, 29.356194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060666, -0.294576, 0.953701,
		0.409199, -0.864142, -0.292943,
		0.910426, 0.408025, 0.068116,
		40.677292, 33.280907, 29.376629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389050, 32.601074, 29.805130>,  <40.039993, 32.995293, 29.328947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389050, 32.601074, 29.805130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635330, 32.915600, 29.784605>,  <40.783096, 33.104313, 29.772289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635330, 32.915600, 29.784605>,  <40.389050, 32.601074, 29.805130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635330, 32.915600, 29.784605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254400, -0.136725, 0.957385,
		0.745786, -0.602514, -0.284219,
		0.615698, 0.786309, -0.051312,
		40.820038, 33.151493, 29.769211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976700, 32.311459, 30.103092>,  <40.389050, 32.601074, 29.805130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976700, 32.311459, 30.103092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016853, 32.707741, 30.139793>,  <41.040947, 32.945511, 30.161814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016853, 32.707741, 30.139793>,  <40.976700, 32.311459, 30.103092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016853, 32.707741, 30.139793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222090, -0.112205, 0.968548,
		0.969845, -0.076851, -0.231290,
		0.100386, 0.990709, 0.091754,
		41.046970, 33.004955, 30.167320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667004, 32.574341, 30.373045>,  <40.976700, 32.311459, 30.103092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667004, 32.574341, 30.373045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406792, 32.864567, 30.462824>,  <41.250664, 33.038700, 30.516691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406792, 32.864567, 30.462824>,  <41.667004, 32.574341, 30.373045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406792, 32.864567, 30.462824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216535, -0.106076, 0.970495,
		0.727961, 0.679934, -0.088104,
		-0.650527, 0.725560, 0.224449,
		41.211632, 33.082233, 30.530159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022690, 32.981953, 30.881124>,  <41.667004, 32.574341, 30.373045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022690, 32.981953, 30.881124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635632, 33.064072, 30.939808>,  <41.403397, 33.113342, 30.975018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635632, 33.064072, 30.939808>,  <42.022690, 32.981953, 30.881124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635632, 33.064072, 30.939808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137357, -0.059167, 0.988753,
		0.211667, 0.976910, 0.029054,
		-0.967642, 0.205296, 0.146709,
		41.345341, 33.125660, 30.983820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996181, 33.105694, 31.518833>,  <42.022690, 32.981953, 30.881124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996181, 33.105694, 31.518833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597309, 33.126637, 31.497335>,  <41.357986, 33.139202, 31.484436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597309, 33.126637, 31.497335>,  <41.996181, 33.105694, 31.518833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597309, 33.126637, 31.497335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043414, 0.181584, 0.982417,
		0.061195, 0.981981, -0.178799,
		-0.997181, 0.052357, -0.053744,
		41.298153, 33.142345, 31.481213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803345, 33.657722, 32.119171>,  <41.996181, 33.105694, 31.518833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803345, 33.657722, 32.119171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501450, 33.427765, 31.992767>,  <41.320312, 33.289791, 31.916925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501450, 33.427765, 31.992767>,  <41.803345, 33.657722, 32.119171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501450, 33.427765, 31.992767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384919, -0.001998, 0.922948,
		-0.531228, 0.818226, -0.219779,
		-0.754741, -0.574893, -0.316012,
		41.275028, 33.255299, 31.897964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219189, 33.925591, 32.310722>,  <41.803345, 33.657722, 32.119171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219189, 33.925591, 32.310722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237343, 33.526955, 32.283142>,  <41.248238, 33.287773, 32.266594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237343, 33.526955, 32.283142>,  <41.219189, 33.925591, 32.310722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237343, 33.526955, 32.283142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192134, -0.076444, 0.978387,
		-0.980319, -0.031158, -0.194947,
		0.045387, -0.996587, -0.068953,
		41.250957, 33.227978, 32.262455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876404, 33.850948, 32.866966>,  <41.219189, 33.925591, 32.310722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876404, 33.850948, 32.866966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024467, 33.493553, 32.765247>,  <41.113304, 33.279118, 32.704216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024467, 33.493553, 32.765247>,  <40.876404, 33.850948, 32.866966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024467, 33.493553, 32.765247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017481, -0.266991, 0.963540,
		-0.928806, -0.361104, -0.083210,
		0.370155, -0.893487, -0.254295,
		41.135513, 33.225506, 32.688957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542088, 33.272259, 33.184082>,  <40.876404, 33.850948, 32.866966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542088, 33.272259, 33.184082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885078, 33.085804, 33.096951>,  <41.090874, 32.973930, 33.044670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885078, 33.085804, 33.096951>,  <40.542088, 33.272259, 33.184082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885078, 33.085804, 33.096951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023783, -0.387007, 0.921770,
		-0.513974, -0.795577, -0.320763,
		0.857476, -0.466137, -0.217833,
		41.142323, 32.945965, 33.031601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530640, 32.542900, 33.545971>,  <40.542088, 33.272259, 33.184082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530640, 32.542900, 33.545971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901241, 32.560658, 33.396507>,  <41.123604, 32.571312, 33.306831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901241, 32.560658, 33.396507>,  <40.530640, 32.542900, 33.545971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901241, 32.560658, 33.396507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306639, -0.664614, 0.681367,
		-0.218089, -0.745867, -0.629381,
		0.926504, 0.044394, -0.373657,
		41.179192, 32.573975, 33.284409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753895, 31.892818, 33.345455>,  <40.530640, 32.542900, 33.545971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753895, 31.892818, 33.345455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080467, 32.101414, 33.444645>,  <41.276409, 32.226570, 33.504158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080467, 32.101414, 33.444645>,  <40.753895, 31.892818, 33.345455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080467, 32.101414, 33.444645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146890, -0.602867, 0.784203,
		0.558449, -0.603822, -0.568800,
		0.816430, 0.521489, 0.247975,
		41.325397, 32.257862, 33.519039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332329, 31.457563, 33.494526>,  <40.753895, 31.892818, 33.345455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332329, 31.457563, 33.494526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455994, 31.788570, 33.681988>,  <41.530193, 31.987175, 33.794464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455994, 31.788570, 33.681988>,  <41.332329, 31.457563, 33.494526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455994, 31.788570, 33.681988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430839, -0.561196, 0.706709,
		0.847818, -0.016576, -0.530028,
		0.309164, 0.827517, 0.468650,
		41.548744, 32.036827, 33.822582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069576, 31.381886, 33.593636>,  <41.332329, 31.457563, 33.494526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069576, 31.381886, 33.593636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932640, 31.649204, 33.857811>,  <41.850479, 31.809595, 34.016315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932640, 31.649204, 33.857811>,  <42.069576, 31.381886, 33.593636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932640, 31.649204, 33.857811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513245, -0.455765, 0.727226,
		0.787009, 0.587927, -0.186973,
		-0.342340, 0.668297, 0.660441,
		41.829937, 31.849693, 34.055943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642445, 31.415419, 34.051659>,  <42.069576, 31.381886, 33.593636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642445, 31.415419, 34.051659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329174, 31.558298, 34.255241>,  <42.141212, 31.644026, 34.377392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329174, 31.558298, 34.255241>,  <42.642445, 31.415419, 34.051659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329174, 31.558298, 34.255241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310657, -0.484273, 0.817907,
		0.538630, 0.798680, 0.268307,
		-0.783180, 0.357197, 0.508959,
		42.094219, 31.665457, 34.407928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875328, 31.658333, 34.645767>,  <42.642445, 31.415419, 34.051659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875328, 31.658333, 34.645767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492691, 31.601711, 34.747669>,  <42.263111, 31.567739, 34.808811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492691, 31.601711, 34.747669>,  <42.875328, 31.658333, 34.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492691, 31.601711, 34.747669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289387, -0.564877, 0.772767,
		0.034518, 0.812943, 0.581319,
		-0.956590, -0.141552, 0.254754,
		42.205715, 31.559246, 34.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823086, 31.824635, 35.356213>,  <42.875328, 31.658333, 34.645767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823086, 31.824635, 35.356213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498421, 31.602467, 35.283871>,  <42.303619, 31.469166, 35.240467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498421, 31.602467, 35.283871>,  <42.823086, 31.824635, 35.356213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498421, 31.602467, 35.283871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195747, -0.550345, 0.811667,
		-0.550345, 0.623402, 0.555418,
		-0.811667, -0.555418, -0.180851,
		42.254921, 31.435841, 35.229614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611771, 31.649370, 35.948311>,  <42.823086, 31.824635, 35.356213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611771, 31.649370, 35.948311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452808, 31.361176, 35.720989>,  <42.357433, 31.188259, 35.584595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452808, 31.361176, 35.720989>,  <42.611771, 31.649370, 35.948311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452808, 31.361176, 35.720989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051147, -0.635734, 0.770211,
		-0.916218, 0.277017, 0.289493,
		-0.397402, -0.720488, -0.568303,
		42.333588, 31.145029, 35.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133705, 31.261372, 36.417564>,  <42.611771, 31.649370, 35.948311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133705, 31.261372, 36.417564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192902, 31.030651, 36.096218>,  <42.228420, 30.892220, 35.903408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192902, 31.030651, 36.096218>,  <42.133705, 31.261372, 36.417564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192902, 31.030651, 36.096218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107093, -0.816883, 0.566774,
		-0.983173, 0.002156, -0.182665,
		0.147994, -0.576799, -0.803368,
		42.237301, 30.857611, 35.855209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668861, 30.771368, 36.443092>,  <42.133705, 31.261372, 36.417564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668861, 30.771368, 36.443092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977386, 30.641407, 36.224182>,  <42.162502, 30.563431, 36.092834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977386, 30.641407, 36.224182>,  <41.668861, 30.771368, 36.443092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977386, 30.641407, 36.224182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120003, -0.770222, 0.626384,
		-0.625039, -0.548814, -0.555094,
		0.771314, -0.324901, -0.547279,
		42.208782, 30.543936, 36.059998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663582, 30.111025, 36.544537>,  <41.668861, 30.771368, 36.443092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663582, 30.111025, 36.544537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041504, 30.178696, 36.432304>,  <42.268257, 30.219297, 36.364964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041504, 30.178696, 36.432304>,  <41.663582, 30.111025, 36.544537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041504, 30.178696, 36.432304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313624, -0.714764, 0.625101,
		-0.094797, -0.678595, -0.728370,
		0.944803, 0.169177, -0.280581,
		42.324944, 30.229448, 36.348129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100082, 29.465958, 36.374378>,  <41.663582, 30.111025, 36.544537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100082, 29.465958, 36.374378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332474, 29.742880, 36.545578>,  <42.471909, 29.909033, 36.648296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332474, 29.742880, 36.545578>,  <42.100082, 29.465958, 36.374378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332474, 29.742880, 36.545578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253924, -0.653769, 0.712817,
		0.773298, -0.305450, -0.555617,
		0.580975, 0.692305, 0.427998,
		42.506767, 29.950571, 36.673977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691074, 29.126038, 36.488205>,  <42.100082, 29.465958, 36.374378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691074, 29.126038, 36.488205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695229, 29.424381, 36.754616>,  <42.697720, 29.603388, 36.914463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695229, 29.424381, 36.754616>,  <42.691074, 29.126038, 36.488205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695229, 29.424381, 36.754616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050705, -0.664810, 0.745289,
		0.998660, -0.041511, 0.030915,
		0.010385, 0.745858, 0.666024,
		42.698345, 29.648138, 36.954422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250031, 29.003094, 36.943268>,  <42.691074, 29.126038, 36.488205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250031, 29.003094, 36.943268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978577, 29.229126, 37.130943>,  <42.815704, 29.364746, 37.243549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978577, 29.229126, 37.130943>,  <43.250031, 29.003094, 36.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978577, 29.229126, 37.130943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039506, -0.665965, 0.744936,
		0.733412, 0.487004, 0.474272,
		-0.678635, 0.565082, 0.469187,
		42.774986, 29.398651, 37.271698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303204, 28.766182, 37.593643>,  <43.250031, 29.003094, 36.943268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303204, 28.766182, 37.593643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996765, 29.016645, 37.651646>,  <42.812904, 29.166924, 37.686447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996765, 29.016645, 37.651646>,  <43.303204, 28.766182, 37.593643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996765, 29.016645, 37.651646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169486, -0.414429, 0.894160,
		0.619979, 0.660435, 0.423617,
		-0.766094, 0.626158, 0.145003,
		42.766937, 29.204493, 37.695145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362244, 29.063915, 38.225903>,  <43.303204, 28.766182, 37.593643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362244, 29.063915, 38.225903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973099, 29.075401, 38.134068>,  <42.739613, 29.082293, 38.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973099, 29.075401, 38.134068>,  <43.362244, 29.063915, 38.225903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973099, 29.075401, 38.134068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222865, -0.382902, 0.896503,
		-0.062167, 0.923343, 0.378911,
		-0.972865, 0.028713, -0.229585,
		42.681240, 29.084015, 38.065193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999901, 29.207212, 38.909504>,  <43.362244, 29.063915, 38.225903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999901, 29.207212, 38.909504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731895, 29.033827, 38.668442>,  <42.571091, 28.929796, 38.523804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731895, 29.033827, 38.668442>,  <42.999901, 29.207212, 38.909504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731895, 29.033827, 38.668442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274737, -0.609388, 0.743751,
		-0.689638, 0.663895, 0.289211,
		-0.670015, -0.433462, -0.602654,
		42.530891, 28.903788, 38.487644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308262, 29.250132, 39.147961>,  <42.999901, 29.207212, 38.909504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308262, 29.250132, 39.147961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345764, 28.923487, 38.920155>,  <42.368267, 28.727499, 38.783470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345764, 28.923487, 38.920155>,  <42.308262, 29.250132, 39.147961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345764, 28.923487, 38.920155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361133, -0.560973, 0.744911,
		-0.927789, 0.135831, -0.347502,
		0.093757, -0.816614, -0.569518,
		42.373890, 28.678503, 38.749298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612789, 28.984537, 39.405468>,  <42.308262, 29.250132, 39.147961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612789, 28.984537, 39.405468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794144, 28.680927, 39.218571>,  <41.902958, 28.498760, 39.106430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794144, 28.680927, 39.218571>,  <41.612789, 28.984537, 39.405468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794144, 28.680927, 39.218571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645145, -0.641172, 0.415555,
		-0.615004, 0.113037, -0.780380,
		0.453385, -0.759026, -0.467248,
		41.930161, 28.453218, 39.078396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118584, 28.512638, 39.082111>,  <41.612789, 28.984537, 39.405468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118584, 28.512638, 39.082111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448936, 28.298269, 39.152206>,  <41.647148, 28.169649, 39.194263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448936, 28.298269, 39.152206>,  <41.118584, 28.512638, 39.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448936, 28.298269, 39.152206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508789, -0.574384, 0.641261,
		-0.243010, -0.618766, -0.747044,
		0.825881, -0.535921, 0.175241,
		41.696701, 28.137493, 39.204781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865665, 28.055176, 39.463161>,  <41.118584, 28.512638, 39.082111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865665, 28.055176, 39.463161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248970, 27.940880, 39.467045>,  <41.478951, 27.872301, 39.469376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248970, 27.940880, 39.467045>,  <40.865665, 28.055176, 39.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248970, 27.940880, 39.467045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203090, -0.656394, 0.726568,
		-0.201238, -0.698211, -0.687026,
		0.958257, -0.285741, 0.009708,
		41.536446, 27.855158, 39.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857166, 27.345720, 39.435543>,  <40.865665, 28.055176, 39.463161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857166, 27.345720, 39.435543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190430, 27.470316, 39.618328>,  <41.390388, 27.545074, 39.727997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190430, 27.470316, 39.618328>,  <40.857166, 27.345720, 39.435543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190430, 27.470316, 39.618328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127817, -0.695456, 0.707110,
		0.538054, -0.647545, -0.539614,
		0.833163, 0.311491, 0.456960,
		41.440380, 27.563763, 39.755417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255295, 26.713842, 39.479553>,  <40.857166, 27.345720, 39.435543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255295, 26.713842, 39.479553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276253, 26.989347, 39.768791>,  <41.288830, 27.154650, 39.942333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276253, 26.989347, 39.768791>,  <41.255295, 26.713842, 39.479553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276253, 26.989347, 39.768791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202322, -0.701748, 0.683093,
		0.977916, -0.182089, 0.102582,
		0.052397, 0.688762, 0.723091,
		41.291973, 27.195976, 39.985718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773743, 26.451353, 39.966236>,  <41.255295, 26.713842, 39.479553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773743, 26.451353, 39.966236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518028, 26.702868, 40.143295>,  <41.364601, 26.853777, 40.249531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518028, 26.702868, 40.143295>,  <41.773743, 26.451353, 39.966236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518028, 26.702868, 40.143295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198860, -0.691244, 0.694721,
		0.742811, 0.356100, 0.566944,
		-0.639286, 0.628788, 0.442649,
		41.326241, 26.891504, 40.276089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956348, 26.539913, 40.647758>,  <41.773743, 26.451353, 39.966236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956348, 26.539913, 40.647758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565552, 26.622910, 40.667492>,  <41.331074, 26.672707, 40.679333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565552, 26.622910, 40.667492>,  <41.956348, 26.539913, 40.647758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565552, 26.622910, 40.667492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092688, -0.621419, 0.777977,
		0.192081, 0.755504, 0.626353,
		-0.976992, 0.207490, 0.049337,
		41.272453, 26.685156, 40.682293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718468, 26.101877, 41.152939>,  <41.956348, 26.539913, 40.647758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718468, 26.101877, 41.152939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369877, 26.290926, 41.100544>,  <41.160721, 26.404354, 41.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369877, 26.290926, 41.100544>,  <41.718468, 26.101877, 41.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369877, 26.290926, 41.100544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448234, -0.659157, 0.603819,
		0.199035, 0.584928, 0.786285,
		-0.871476, 0.472621, -0.130989,
		41.108433, 26.432713, 41.061249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466389, 26.287941, 41.810024>,  <41.718468, 26.101877, 41.152939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466389, 26.287941, 41.810024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148949, 26.265486, 41.567684>,  <40.958485, 26.252012, 41.422279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148949, 26.265486, 41.567684>,  <41.466389, 26.287941, 41.810024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148949, 26.265486, 41.567684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477282, -0.560131, 0.677094,
		-0.377365, 0.826500, 0.417725,
		-0.793598, -0.056139, -0.605847,
		40.910870, 26.248644, 41.385929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893734, 26.448698, 42.250511>,  <41.466389, 26.287941, 41.810024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893734, 26.448698, 42.250511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721180, 26.276892, 41.933167>,  <40.617649, 26.173807, 41.742760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721180, 26.276892, 41.933167>,  <40.893734, 26.448698, 42.250511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721180, 26.276892, 41.933167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637972, -0.476548, 0.604891,
		-0.637885, 0.767084, -0.068443,
		-0.431386, -0.429516, -0.793362,
		40.591763, 26.148037, 41.695160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199322, 26.527237, 42.383629>,  <40.893734, 26.448698, 42.250511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199322, 26.527237, 42.383629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271496, 26.206820, 42.155323>,  <40.314800, 26.014570, 42.018337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271496, 26.206820, 42.155323>,  <40.199322, 26.527237, 42.383629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271496, 26.206820, 42.155323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557284, -0.561420, 0.611753,
		-0.810480, 0.207699, -0.547707,
		0.180433, -0.801042, -0.570767,
		40.325626, 25.966507, 41.984093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530296, 26.063782, 42.217503>,  <40.199322, 26.527237, 42.383629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530296, 26.063782, 42.217503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848721, 25.821775, 42.211292>,  <40.039776, 25.676571, 42.207565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848721, 25.821775, 42.211292>,  <39.530296, 26.063782, 42.217503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848721, 25.821775, 42.211292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419267, -0.569794, 0.706789,
		-0.436465, -0.556138, -0.707254,
		0.796061, -0.605017, -0.015525,
		40.087540, 25.640270, 42.206635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327324, 25.348595, 42.078987>,  <39.530296, 26.063782, 42.217503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327324, 25.348595, 42.078987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660297, 25.407972, 42.292534>,  <39.860081, 25.443598, 42.420662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660297, 25.407972, 42.292534>,  <39.327324, 25.348595, 42.078987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660297, 25.407972, 42.292534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457360, -0.359876, 0.813210,
		0.312841, -0.921116, -0.231682,
		0.832437, 0.148444, 0.533866,
		39.910030, 25.452505, 42.452694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677242, 24.791538, 42.420517>,  <39.327324, 25.348595, 42.078987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677242, 24.791538, 42.420517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760654, 25.105719, 42.653610>,  <39.810703, 25.294228, 42.793465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760654, 25.105719, 42.653610>,  <39.677242, 24.791538, 42.420517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760654, 25.105719, 42.653610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386376, -0.481202, 0.786866,
		0.898458, -0.389243, 0.203133,
		0.208534, 0.785452, 0.582734,
		39.823215, 25.341354, 42.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379940, 24.942986, 42.426071>,  <39.677242, 24.791538, 42.420517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379940, 24.942986, 42.426071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085880, 24.986305, 42.158394>,  <39.909443, 25.012297, 41.997787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085880, 24.986305, 42.158394>,  <40.379940, 24.942986, 42.426071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085880, 24.986305, 42.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564230, 0.644934, -0.515466,
		0.375764, -0.756526, -0.535229,
		-0.735151, 0.108299, -0.669197,
		39.865334, 25.018795, 41.957634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669121, 24.856680, 41.750423>,  <40.379940, 24.942986, 42.426071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669121, 24.856680, 41.750423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339874, 25.079636, 41.706970>,  <40.142326, 25.213409, 41.680897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339874, 25.079636, 41.706970>,  <40.669121, 24.856680, 41.750423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339874, 25.079636, 41.706970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540244, 0.709645, -0.452262,
		-0.174995, -0.430952, -0.885244,
		-0.823112, 0.557392, -0.108635,
		40.092941, 25.246853, 41.674381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520477, 25.124855, 41.044579>,  <40.669121, 24.856680, 41.750423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520477, 25.124855, 41.044579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347427, 25.388908, 41.290203>,  <40.243599, 25.547340, 41.437576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347427, 25.388908, 41.290203>,  <40.520477, 25.124855, 41.044579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347427, 25.388908, 41.290203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461236, 0.747269, -0.478384,
		-0.774662, 0.076267, -0.627760,
		-0.432620, 0.660131, 0.614058,
		40.217640, 25.586948, 41.474419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117085, 25.515572, 40.644241>,  <40.520477, 25.124855, 41.044579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117085, 25.515572, 40.644241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251728, 25.716938, 40.962555>,  <40.332516, 25.837759, 41.153542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251728, 25.716938, 40.962555>,  <40.117085, 25.515572, 40.644241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251728, 25.716938, 40.962555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340209, 0.722995, -0.601279,
		-0.878039, 0.473127, 0.072099,
		0.336608, 0.503418, 0.795780,
		40.352711, 25.867964, 41.201290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967365, 26.185732, 40.508507>,  <40.117085, 25.515572, 40.644241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967365, 26.185732, 40.508507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251480, 26.205288, 40.789391>,  <40.421951, 26.217022, 40.957920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251480, 26.205288, 40.789391>,  <39.967365, 26.185732, 40.508507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251480, 26.205288, 40.789391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358079, 0.833770, -0.420246,
		-0.606027, 0.549943, 0.574712,
		0.710289, 0.048888, 0.702210,
		40.464565, 26.219954, 41.000053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916180, 26.858799, 40.825386>,  <39.967365, 26.185732, 40.508507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916180, 26.858799, 40.825386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289196, 26.732136, 40.894775>,  <40.513004, 26.656137, 40.936409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289196, 26.732136, 40.894775>,  <39.916180, 26.858799, 40.825386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289196, 26.732136, 40.894775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360690, 0.795226, -0.487358,
		0.016373, 0.517053, 0.855797,
		0.932542, -0.316657, 0.173476,
		40.568958, 26.637138, 40.946819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301495, 27.420227, 41.124523>,  <39.916180, 26.858799, 40.825386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301495, 27.420227, 41.124523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562000, 27.196918, 40.918926>,  <40.718304, 27.062933, 40.795567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562000, 27.196918, 40.918926>,  <40.301495, 27.420227, 41.124523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562000, 27.196918, 40.918926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410003, 0.828825, -0.380718,
		0.638554, 0.037210, 0.768677,
		0.651266, -0.558269, -0.513993,
		40.757381, 27.029438, 40.764729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813328, 27.815477, 41.008373>,  <40.301495, 27.420227, 41.124523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813328, 27.815477, 41.008373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980186, 27.540686, 40.770367>,  <41.080303, 27.375811, 40.627563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980186, 27.540686, 40.770367>,  <40.813328, 27.815477, 41.008373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980186, 27.540686, 40.770367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516229, 0.717935, -0.466987,
		0.747995, -0.112363, 0.654124,
		0.417147, -0.686981, -0.595017,
		41.105331, 27.334591, 40.591862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533611, 27.937805, 40.980499>,  <40.813328, 27.815477, 41.008373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533611, 27.937805, 40.980499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459442, 27.718868, 40.654057>,  <41.414940, 27.587507, 40.458191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459442, 27.718868, 40.654057>,  <41.533611, 27.937805, 40.980499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459442, 27.718868, 40.654057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680563, 0.527557, -0.508447,
		0.708838, -0.649694, 0.274676,
		-0.185427, -0.547341, -0.816109,
		41.403812, 27.554667, 40.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163544, 27.584358, 40.567703>,  <41.533611, 27.937805, 40.980499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163544, 27.584358, 40.567703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845760, 27.696218, 40.352066>,  <41.655090, 27.763334, 40.222683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845760, 27.696218, 40.352066>,  <42.163544, 27.584358, 40.567703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845760, 27.696218, 40.352066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537380, 0.737249, -0.409496,
		0.282932, -0.615029, -0.735995,
		-0.794463, 0.279650, -0.539096,
		41.607422, 27.780113, 40.190338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434879, 27.661797, 39.816219>,  <42.163544, 27.584358, 40.567703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434879, 27.661797, 39.816219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138580, 27.877985, 39.975811>,  <41.960800, 28.007698, 40.071564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138580, 27.877985, 39.975811>,  <42.434879, 27.661797, 39.816219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138580, 27.877985, 39.975811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507409, 0.839359, -0.194969,
		-0.440260, 0.058022, -0.895993,
		-0.740748, 0.540472, 0.398977,
		41.916355, 28.040127, 40.095505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861012, 27.778435, 39.247265>,  <42.434879, 27.661797, 39.816219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861012, 27.778435, 39.247265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471802, 27.781265, 39.155033>,  <42.238274, 27.782963, 39.099693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471802, 27.781265, 39.155033>,  <42.861012, 27.778435, 39.247265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471802, 27.781265, 39.155033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182476, 0.635138, -0.750535,
		0.141143, -0.772366, -0.619297,
		-0.973027, 0.007074, -0.230583,
		42.179893, 27.783388, 39.085857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726486, 27.647650, 38.444397>,  <42.861012, 27.778435, 39.247265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726486, 27.647650, 38.444397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431339, 27.863756, 38.606216>,  <42.254250, 27.993420, 38.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431339, 27.863756, 38.606216>,  <42.726486, 27.647650, 38.444397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431339, 27.863756, 38.606216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044738, 0.637210, -0.769391,
		-0.673457, -0.549613, -0.494350,
		-0.737872, 0.540267, 0.404545,
		42.209976, 28.025837, 38.727581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101006, 27.738640, 37.942963>,  <42.726486, 27.647650, 38.444397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101006, 27.738640, 37.942963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181992, 28.041668, 38.191189>,  <42.230583, 28.223484, 38.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181992, 28.041668, 38.191189>,  <42.101006, 27.738640, 37.942963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181992, 28.041668, 38.191189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122964, 0.609003, -0.783578,
		-0.971539, 0.234954, 0.030148,
		0.202465, 0.757569, 0.620561,
		42.242729, 28.268938, 38.377357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737587, 28.205887, 37.623962>,  <42.101006, 27.738640, 37.942963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737587, 28.205887, 37.623962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000908, 28.385977, 37.865269>,  <42.158901, 28.494030, 38.010052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000908, 28.385977, 37.865269>,  <41.737587, 28.205887, 37.623962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000908, 28.385977, 37.865269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112306, 0.733706, -0.670121,
		-0.744327, 0.508895, 0.432439,
		0.658304, 0.450224, 0.603269,
		42.198399, 28.521044, 38.046249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454769, 28.809391, 37.635303>,  <41.737587, 28.205887, 37.623962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454769, 28.809391, 37.635303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833755, 28.861797, 37.752022>,  <42.061146, 28.893242, 37.822052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833755, 28.861797, 37.752022>,  <41.454769, 28.809391, 37.635303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833755, 28.861797, 37.752022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040630, 0.855573, -0.516086,
		-0.317264, 0.500830, 0.805303,
		0.947466, 0.131017, 0.291791,
		42.117996, 28.901102, 37.839558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525272, 29.453306, 37.881603>,  <41.454769, 28.809391, 37.635303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525272, 29.453306, 37.881603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914227, 29.386789, 37.816105>,  <42.147598, 29.346878, 37.776806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914227, 29.386789, 37.816105>,  <41.525272, 29.453306, 37.881603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914227, 29.386789, 37.816105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082287, 0.900867, -0.426225,
		0.218395, 0.400981, 0.889673,
		0.972385, -0.166293, -0.163749,
		42.205940, 29.336901, 37.766979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878571, 30.181276, 37.800045>,  <41.525272, 29.453306, 37.881603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878571, 30.181276, 37.800045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175426, 29.949930, 37.664562>,  <42.353539, 29.811123, 37.583271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175426, 29.949930, 37.664562>,  <41.878571, 30.181276, 37.800045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175426, 29.949930, 37.664562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329611, 0.754955, -0.566922,
		0.583595, 0.309094, 0.750918,
		0.742141, -0.578363, -0.338707,
		42.398067, 29.776421, 37.562950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536587, 30.630848, 37.771973>,  <41.878571, 30.181276, 37.800045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536587, 30.630848, 37.771973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600681, 30.323988, 37.523521>,  <42.639137, 30.139872, 37.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600681, 30.323988, 37.523521>,  <42.536587, 30.630848, 37.771973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600681, 30.323988, 37.523521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189478, 0.641466, -0.743383,
		0.968722, 0.001425, 0.248144,
		0.160235, -0.767150, -0.621133,
		42.648750, 30.093843, 37.337181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173084, 30.874535, 37.338402>,  <42.536587, 30.630848, 37.771973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173084, 30.874535, 37.338402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973499, 30.585434, 37.147125>,  <42.853748, 30.411974, 37.032360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973499, 30.585434, 37.147125>,  <43.173084, 30.874535, 37.338402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973499, 30.585434, 37.147125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207140, 0.436330, -0.875619,
		0.841505, -0.535953, -0.068002,
		-0.498962, -0.722752, -0.478191,
		42.823811, 30.368608, 37.003670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220493, 31.007730, 36.604622>,  <43.173084, 30.874535, 37.338402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220493, 31.007730, 36.604622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020000, 30.662073, 36.586628>,  <42.899704, 30.454679, 36.575832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020000, 30.662073, 36.586628>,  <43.220493, 31.007730, 36.604622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020000, 30.662073, 36.586628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062152, 0.087810, -0.994196,
		0.863078, -0.495527, -0.097722,
		-0.501232, -0.864143, -0.044989,
		42.869633, 30.402830, 36.573132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543362, 30.517866, 36.094936>,  <43.220493, 31.007730, 36.604622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543362, 30.517866, 36.094936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154572, 30.430395, 36.129436>,  <42.921295, 30.377913, 36.150139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154572, 30.430395, 36.129436>,  <43.543362, 30.517866, 36.094936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154572, 30.430395, 36.129436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116395, 0.128907, -0.984802,
		0.204242, -0.967244, -0.150748,
		-0.971976, -0.218684, 0.086254,
		42.862980, 30.364792, 36.155312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253208, 30.090775, 35.446384>,  <43.543362, 30.517866, 36.094936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253208, 30.090775, 35.446384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940922, 30.263895, 35.626678>,  <42.753548, 30.367767, 35.734856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940922, 30.263895, 35.626678>,  <43.253208, 30.090775, 35.446384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940922, 30.263895, 35.626678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267351, 0.420603, -0.866958,
		-0.564800, -0.797355, -0.212663,
		-0.780720, 0.432802, 0.450731,
		42.706707, 30.393736, 35.761898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011234, 29.931259, 35.583939>,  <43.253208, 30.090775, 35.446384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011234, 29.931259, 35.583939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306923, 29.713905, 35.424797>,  <44.484337, 29.583492, 35.329311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306923, 29.713905, 35.424797>,  <44.011234, 29.931259, 35.583939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306923, 29.713905, 35.424797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372021, 0.821914, -0.431343,
		0.561384, 0.170850, 0.809727,
		0.739221, -0.543385, -0.397850,
		44.528690, 29.550890, 35.305443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140095, 30.455954, 35.111885>,  <44.011234, 29.931259, 35.583939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140095, 30.455954, 35.111885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442944, 30.202049, 35.050117>,  <44.624653, 30.049707, 35.013058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442944, 30.202049, 35.050117>,  <44.140095, 30.455954, 35.111885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442944, 30.202049, 35.050117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480772, 0.701445, -0.526149,
		0.442291, 0.324122, 0.836256,
		0.757124, -0.634759, -0.154414,
		44.670082, 30.011621, 35.003792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743889, 30.650602, 35.336269>,  <44.140095, 30.455954, 35.111885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743889, 30.650602, 35.336269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848328, 30.434107, 35.016548>,  <44.910992, 30.304209, 34.824715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848328, 30.434107, 35.016548>,  <44.743889, 30.650602, 35.336269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848328, 30.434107, 35.016548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716734, 0.663357, -0.215057,
		0.646621, -0.516737, 0.561127,
		0.261100, -0.541240, -0.799304,
		44.926659, 30.271734, 34.776756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545719, 30.566223, 35.232059>,  <44.743889, 30.650602, 35.336269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545719, 30.566223, 35.232059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355099, 30.550306, 34.880760>,  <45.240726, 30.540756, 34.669983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355099, 30.550306, 34.880760>,  <45.545719, 30.566223, 35.232059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355099, 30.550306, 34.880760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503199, 0.806808, -0.309601,
		0.720893, -0.589473, -0.364465,
		-0.476554, -0.039791, -0.878244,
		45.212132, 30.538368, 34.617287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998516, 30.804747, 34.560078>,  <45.545719, 30.566223, 35.232059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998516, 30.804747, 34.560078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620117, 30.850304, 34.438679>,  <45.393078, 30.877638, 34.365837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.620117, 30.850304, 34.438679>,  <45.998516, 30.804747, 34.560078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620117, 30.850304, 34.438679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219925, 0.913317, -0.342761,
		0.238154, -0.390999, -0.889046,
		-0.946000, 0.113893, -0.303501,
		45.336319, 30.884472, 34.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826195, 31.358688, 33.915958>,  <45.998516, 30.804747, 34.560078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826195, 31.358688, 33.915958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475925, 31.317083, 34.104584>,  <45.265762, 31.292120, 34.217758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475925, 31.317083, 34.104584>,  <45.826195, 31.358688, 33.915958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475925, 31.317083, 34.104584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149201, 0.987024, -0.059355,
		-0.459268, -0.122334, -0.879834,
		-0.875678, -0.104012, 0.471561,
		45.213223, 31.285879, 34.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286312, 31.613661, 33.490555>,  <45.826195, 31.358688, 33.915958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286312, 31.613661, 33.490555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168018, 31.627205, 33.872421>,  <45.097042, 31.635332, 34.101543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168018, 31.627205, 33.872421>,  <45.286312, 31.613661, 33.490555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168018, 31.627205, 33.872421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254531, 0.960450, -0.112916,
		-0.920735, -0.276387, -0.275423,
		-0.295738, 0.033862, 0.954669,
		45.079296, 31.637363, 34.158821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554859, 31.414463, 33.279579>,  <45.286312, 31.613661, 33.490555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554859, 31.414463, 33.279579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234100, 31.597174, 33.125534>,  <44.041645, 31.706800, 33.033108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234100, 31.597174, 33.125534>,  <44.554859, 31.414463, 33.279579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234100, 31.597174, 33.125534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143454, 0.478522, 0.866278,
		0.579980, 0.749914, -0.318201,
		-0.801900, 0.456777, -0.385112,
		43.993530, 31.734207, 33.010002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605804, 32.082806, 33.335236>,  <44.554859, 31.414463, 33.279579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605804, 32.082806, 33.335236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227451, 31.956284, 33.364235>,  <44.000439, 31.880369, 33.381634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227451, 31.956284, 33.364235>,  <44.605804, 32.082806, 33.335236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227451, 31.956284, 33.364235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110111, 0.523000, 0.845190,
		-0.305257, 0.791467, -0.529526,
		-0.945883, -0.316307, 0.072500,
		43.943687, 31.861391, 33.385986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130810, 32.553528, 33.444080>,  <44.605804, 32.082806, 33.335236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130810, 32.553528, 33.444080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942181, 32.277599, 33.663815>,  <44.829002, 32.112041, 33.795654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942181, 32.277599, 33.663815>,  <45.130810, 32.553528, 33.444080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942181, 32.277599, 33.663815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300711, 0.459812, 0.835551,
		-0.828972, 0.559211, -0.009396,
		-0.471570, -0.689823, 0.549332,
		44.800709, 32.070652, 33.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605434, 32.786175, 33.816666>,  <45.130810, 32.553528, 33.444080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605434, 32.786175, 33.816666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725697, 32.469784, 34.029816>,  <44.797855, 32.279949, 34.157703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725697, 32.469784, 34.029816>,  <44.605434, 32.786175, 33.816666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725697, 32.469784, 34.029816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024291, 0.564893, 0.824806,
		-0.953423, -0.235040, 0.189053,
		0.300658, -0.790981, 0.532873,
		44.815895, 32.232491, 34.189678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251465, 33.016064, 34.402470>,  <44.605434, 32.786175, 33.816666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251465, 33.016064, 34.402470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542347, 32.750092, 34.470623>,  <44.716877, 32.590508, 34.511517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542347, 32.750092, 34.470623>,  <44.251465, 33.016064, 34.402470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542347, 32.750092, 34.470623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094721, 0.343058, 0.934526,
		-0.679850, -0.663456, 0.312458,
		0.727208, -0.664934, 0.170385,
		44.760509, 32.550613, 34.521740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151592, 32.682209, 35.002872>,  <44.251465, 33.016064, 34.402470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151592, 32.682209, 35.002872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540634, 32.726784, 34.921268>,  <44.774059, 32.753529, 34.872307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540634, 32.726784, 34.921268>,  <44.151592, 32.682209, 35.002872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540634, 32.726784, 34.921268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062345, 0.720410, 0.690741,
		0.223948, -0.684537, 0.693726,
		0.972605, 0.111439, -0.204012,
		44.832417, 32.760216, 34.860065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627583, 32.469891, 35.534569>,  <44.151592, 32.682209, 35.002872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627583, 32.469891, 35.534569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843361, 32.726479, 35.316391>,  <44.972828, 32.880432, 35.185486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843361, 32.726479, 35.316391>,  <44.627583, 32.469891, 35.534569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843361, 32.726479, 35.316391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091109, 0.599512, 0.795163,
		0.837075, -0.478645, 0.264962,
		0.539449, 0.641471, -0.545445,
		45.005196, 32.918919, 35.152756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199024, 32.688511, 35.951344>,  <44.627583, 32.469891, 35.534569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199024, 32.688511, 35.951344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174053, 32.984661, 35.683628>,  <45.159069, 33.162350, 35.522999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174053, 32.984661, 35.683628>,  <45.199024, 32.688511, 35.951344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174053, 32.984661, 35.683628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384604, 0.636654, 0.668395,
		0.920968, -0.215682, -0.324498,
		-0.062432, 0.740374, -0.669290,
		45.155323, 33.206772, 35.482841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827538, 33.004883, 35.869247>,  <45.199024, 32.688511, 35.951344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827538, 33.004883, 35.869247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542297, 33.277927, 35.805336>,  <45.371155, 33.441753, 35.766991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.542297, 33.277927, 35.805336>,  <45.827538, 33.004883, 35.869247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542297, 33.277927, 35.805336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521112, 0.668565, 0.530532,
		0.468967, 0.295062, -0.832471,
		-0.713100, 0.682612, -0.159775,
		45.328365, 33.482712, 35.757404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093548, 33.664833, 35.670048>,  <45.827538, 33.004883, 35.869247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093548, 33.664833, 35.670048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741859, 33.765781, 35.831676>,  <45.530846, 33.826351, 35.928654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.741859, 33.765781, 35.831676>,  <46.093548, 33.664833, 35.670048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.741859, 33.765781, 35.831676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442833, 0.745698, 0.497828,
		-0.175680, 0.616640, -0.767393,
		-0.879224, 0.252369, 0.404072,
		45.478092, 33.841492, 35.952900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893101, 34.434078, 35.655289>,  <46.093548, 33.664833, 35.670048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893101, 34.434078, 35.655289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749210, 34.248150, 35.978901>,  <45.662876, 34.136593, 36.173069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.749210, 34.248150, 35.978901>,  <45.893101, 34.434078, 35.655289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.749210, 34.248150, 35.978901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376898, 0.720801, 0.581717,
		-0.853547, 0.514183, -0.084101,
		-0.359729, -0.464825, 0.809032,
		45.641293, 34.108704, 36.221611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576836, 34.368748, 35.401997>,  <45.893101, 34.434078, 35.655289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.576836, 34.368748, 35.401997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941025, 34.281620, 35.542618>,  <47.159538, 34.229343, 35.626991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941025, 34.281620, 35.542618>,  <46.576836, 34.368748, 35.401997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941025, 34.281620, 35.542618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402865, 0.659215, -0.634929,
		-0.093450, 0.719716, 0.687950,
		0.910476, -0.217817, 0.351552,
		47.214169, 34.216274, 35.648083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931396, 34.966965, 35.407055>,  <46.576836, 34.368748, 35.401997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.931396, 34.966965, 35.407055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189850, 34.661919, 35.394867>,  <47.344921, 34.478889, 35.387554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189850, 34.661919, 35.394867>,  <46.931396, 34.966965, 35.407055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189850, 34.661919, 35.394867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201957, 0.209342, -0.956760,
		0.736019, 0.612041, 0.289278,
		0.646134, -0.762616, -0.030473,
		47.383690, 34.433132, 35.385723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669643, 35.059265, 35.170143>,  <46.931396, 34.966965, 35.407055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669643, 35.059265, 35.170143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536739, 34.693497, 35.077671>,  <47.456997, 34.474037, 35.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536739, 34.693497, 35.077671>,  <47.669643, 35.059265, 35.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536739, 34.693497, 35.077671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181910, 0.178376, -0.967001,
		0.925480, -0.363348, 0.107075,
		-0.332258, -0.914418, -0.231181,
		47.437061, 34.419170, 35.008316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.506428, 31.053308, 26.115023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207901, 30.898357, 25.898525>,  <39.028786, 30.805386, 25.768627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207901, 30.898357, 25.898525>,  <39.506428, 31.053308, 26.115023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207901, 30.898357, 25.898525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315581, -0.510014, 0.800183,
		-0.586016, 0.767999, 0.258384,
		-0.746320, -0.387379, -0.541243,
		38.984005, 30.782143, 25.736153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962036, 31.105988, 26.495617>,  <39.506428, 31.053308, 26.115023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962036, 31.105988, 26.495617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862442, 30.809946, 26.245737>,  <38.802685, 30.632320, 26.095810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862442, 30.809946, 26.245737>,  <38.962036, 31.105988, 26.495617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862442, 30.809946, 26.245737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433594, -0.491580, 0.755212,
		-0.866026, 0.458906, -0.198506,
		-0.248990, -0.740104, -0.624700,
		38.787746, 30.587915, 26.058327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258503, 30.889130, 26.701824>,  <38.962036, 31.105988, 26.495617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258503, 30.889130, 26.701824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441406, 30.593777, 26.503551>,  <38.551147, 30.416565, 26.384588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441406, 30.593777, 26.503551>,  <38.258503, 30.889130, 26.701824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441406, 30.593777, 26.503551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274976, -0.647440, 0.710781,
		-0.845754, -0.188712, -0.499087,
		0.457262, -0.738383, -0.495684,
		38.578587, 30.372261, 26.354847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744087, 30.396019, 26.691139>,  <38.258503, 30.889130, 26.701824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744087, 30.396019, 26.691139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088718, 30.204151, 26.624685>,  <38.295498, 30.089029, 26.584812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088718, 30.204151, 26.624685>,  <37.744087, 30.396019, 26.691139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088718, 30.204151, 26.624685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167006, -0.576903, 0.799557,
		-0.479368, -0.661134, -0.577154,
		0.861577, -0.479671, -0.166135,
		38.347191, 30.060249, 26.574844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582153, 29.754944, 26.907612>,  <37.744087, 30.396019, 26.691139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582153, 29.754944, 26.907612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981766, 29.743837, 26.921268>,  <38.221535, 29.737173, 26.929462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981766, 29.743837, 26.921268>,  <37.582153, 29.754944, 26.907612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981766, 29.743837, 26.921268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043420, -0.495839, 0.867328,
		-0.007155, -0.867970, -0.496565,
		0.999031, -0.027767, 0.034140,
		38.281475, 29.735508, 26.931511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752480, 29.118519, 27.199701>,  <37.582153, 29.754944, 26.907612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752480, 29.118519, 27.199701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101929, 29.298170, 27.274616>,  <38.311596, 29.405960, 27.319565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101929, 29.298170, 27.274616>,  <37.752480, 29.118519, 27.199701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101929, 29.298170, 27.274616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030240, -0.334025, 0.942079,
		0.485671, -0.828681, -0.278229,
		0.873618, 0.449127, 0.187285,
		38.364014, 29.432909, 27.330801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071560, 28.658680, 27.639753>,  <37.752480, 29.118519, 27.199701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071560, 28.658680, 27.639753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287685, 28.991701, 27.688593>,  <38.417362, 29.191515, 27.717897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287685, 28.991701, 27.688593>,  <38.071560, 28.658680, 27.639753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287685, 28.991701, 27.688593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088990, -0.200828, 0.975576,
		0.836742, -0.516256, -0.182600,
		0.540318, 0.832555, 0.122099,
		38.449780, 29.241468, 27.725224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637482, 28.356043, 28.025034>,  <38.071560, 28.658680, 27.639753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637482, 28.356043, 28.025034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612049, 28.750694, 28.085066>,  <38.596790, 28.987484, 28.121084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612049, 28.750694, 28.085066>,  <38.637482, 28.356043, 28.025034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612049, 28.750694, 28.085066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123374, -0.141459, 0.982226,
		0.990321, 0.080969, -0.112730,
		-0.063583, 0.986627, 0.150079,
		38.592976, 29.046682, 28.130089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227413, 28.625322, 28.384153>,  <38.637482, 28.356043, 28.025034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227413, 28.625322, 28.384153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936764, 28.890362, 28.456797>,  <38.762375, 29.049385, 28.500383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936764, 28.890362, 28.456797>,  <39.227413, 28.625322, 28.384153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936764, 28.890362, 28.456797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086125, -0.174403, 0.980901,
		0.681618, 0.728385, 0.069658,
		-0.726622, 0.662601, 0.181608,
		38.718777, 29.089142, 28.511280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440372, 28.893280, 28.937553>,  <39.227413, 28.625322, 28.384153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440372, 28.893280, 28.937553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.071812, 29.048075, 28.951805>,  <38.850677, 29.140951, 28.960356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.071812, 29.048075, 28.951805>,  <39.440372, 28.893280, 28.937553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071812, 29.048075, 28.951805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004167, -0.081831, 0.996637,
		0.388599, 0.918448, 0.073786,
		-0.921398, 0.386985, 0.035627,
		38.795391, 29.164169, 28.962494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502003, 29.350136, 29.342344>,  <39.440372, 28.893280, 28.937553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502003, 29.350136, 29.342344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 29.293783, 29.366459>,  <38.869564, 29.259972, 29.380928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.106728, 29.293783, 29.366459>,  <39.502003, 29.350136, 29.342344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106728, 29.293783, 29.366459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056913, 0.027862, 0.997990,
		-0.142279, 0.989634, -0.019515,
		-0.988189, -0.140883, 0.060287,
		38.810272, 29.251518, 29.384544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328243, 29.951935, 29.693134>,  <39.502003, 29.350136, 29.342344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328243, 29.951935, 29.693134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064247, 29.652462, 29.718069>,  <38.905849, 29.472778, 29.733030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.064247, 29.652462, 29.718069>,  <39.328243, 29.951935, 29.693134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064247, 29.652462, 29.718069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053764, 0.035695, 0.997915,
		-0.749344, 0.661970, 0.016694,
		-0.659994, -0.748680, 0.062338,
		38.866249, 29.427858, 29.736771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905674, 30.173376, 30.267651>,  <39.328243, 29.951935, 29.693134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905674, 30.173376, 30.267651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810787, 29.786722, 30.228973>,  <38.753857, 29.554729, 30.205767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810787, 29.786722, 30.228973>,  <38.905674, 30.173376, 30.267651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810787, 29.786722, 30.228973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075432, -0.117562, 0.990197,
		-0.968524, 0.227595, 0.100802,
		-0.237214, -0.966633, -0.096694,
		38.739624, 29.496733, 30.199965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356613, 30.128799, 30.764900>,  <38.905674, 30.173376, 30.267651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356613, 30.128799, 30.764900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489201, 29.759840, 30.685595>,  <38.568752, 29.538464, 30.638012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489201, 29.759840, 30.685595>,  <38.356613, 30.128799, 30.764900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489201, 29.759840, 30.685595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006976, -0.212534, 0.977129,
		-0.943440, -0.322506, -0.076883,
		0.331471, -0.922399, -0.198263,
		38.588642, 29.483120, 30.626116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945213, 29.708040, 31.242378>,  <38.356613, 30.128799, 30.764900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945213, 29.708040, 31.242378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277325, 29.505386, 31.149456>,  <38.476589, 29.383795, 31.093702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277325, 29.505386, 31.149456>,  <37.945213, 29.708040, 31.242378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277325, 29.505386, 31.149456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180511, -0.149904, 0.972083,
		-0.527315, -0.849028, -0.033008,
		0.830274, -0.506636, -0.232306,
		38.526405, 29.353395, 31.079765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963638, 29.078484, 31.614382>,  <37.945213, 29.708040, 31.242378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963638, 29.078484, 31.614382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353085, 29.127111, 31.537140>,  <38.586754, 29.156288, 31.490795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353085, 29.127111, 31.537140>,  <37.963638, 29.078484, 31.614382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353085, 29.127111, 31.537140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218104, -0.247030, 0.944143,
		0.067079, -0.961351, -0.267028,
		0.973618, 0.121572, -0.193104,
		38.645168, 29.163584, 31.479208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317860, 28.722004, 32.060432>,  <37.963638, 29.078484, 31.614382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317860, 28.722004, 32.060432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631130, 28.942322, 31.945017>,  <38.819092, 29.074512, 31.875767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631130, 28.942322, 31.945017>,  <38.317860, 28.722004, 32.060432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631130, 28.942322, 31.945017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397856, -0.087280, 0.913287,
		0.477851, -0.830064, -0.287494,
		0.783179, 0.550796, -0.288539,
		38.866085, 29.107561, 31.858456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814507, 28.335592, 32.192753>,  <38.317860, 28.722004, 32.060432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814507, 28.335592, 32.192753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995117, 28.690426, 32.154385>,  <39.103485, 28.903326, 32.131363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995117, 28.690426, 32.154385>,  <38.814507, 28.335592, 32.192753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995117, 28.690426, 32.154385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521199, -0.174969, 0.835307,
		0.724206, -0.427158, -0.541352,
		0.451528, 0.887086, -0.095921,
		39.130577, 28.956553, 32.125607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563969, 28.219526, 32.440311>,  <38.814507, 28.335592, 32.192753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563969, 28.219526, 32.440311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467232, 28.607153, 32.459991>,  <39.409187, 28.839729, 32.471798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467232, 28.607153, 32.459991>,  <39.563969, 28.219526, 32.440311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467232, 28.607153, 32.459991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409146, 0.055873, 0.910757,
		0.879835, 0.240391, -0.410003,
		-0.241845, 0.969067, 0.049196,
		39.394680, 28.897873, 32.474751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096355, 28.503649, 32.741646>,  <39.563969, 28.219526, 32.440311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096355, 28.503649, 32.741646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797119, 28.763885, 32.793938>,  <39.617577, 28.920027, 32.825314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797119, 28.763885, 32.793938>,  <40.096355, 28.503649, 32.741646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797119, 28.763885, 32.793938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208834, 0.043818, 0.976969,
		0.629880, 0.758162, -0.168646,
		-0.748091, 0.650592, 0.130729,
		39.572693, 28.959063, 32.833157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389263, 28.886778, 33.127937>,  <40.096355, 28.503649, 32.741646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389263, 28.886778, 33.127937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006802, 28.989107, 33.184952>,  <39.777325, 29.050505, 33.219162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006802, 28.989107, 33.184952>,  <40.389263, 28.886778, 33.127937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006802, 28.989107, 33.184952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146908, -0.002060, 0.989148,
		0.253340, 0.966722, -0.035612,
		-0.956157, 0.255823, 0.142541,
		39.719955, 29.065853, 33.227715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954594, 29.051594, 33.648750>,  <40.389263, 28.886778, 33.127937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954594, 29.051594, 33.648750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354134, 29.055397, 33.667572>,  <41.593857, 29.057678, 33.678867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.354134, 29.055397, 33.667572>,  <40.954594, 29.051594, 33.648750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354134, 29.055397, 33.667572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039928, 0.379739, -0.924231,
		-0.026657, 0.925045, 0.378922,
		0.998847, 0.009507, 0.047058,
		41.653790, 29.058249, 33.681690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104103, 29.637627, 33.387177>,  <40.954594, 29.051594, 33.648750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104103, 29.637627, 33.387177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442497, 29.426834, 33.354660>,  <41.645535, 29.300360, 33.335152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.442497, 29.426834, 33.354660>,  <41.104103, 29.637627, 33.387177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442497, 29.426834, 33.354660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136586, 0.361537, -0.922299,
		0.515423, 0.769144, 0.377832,
		0.845981, -0.526980, -0.081290,
		41.696293, 29.268740, 33.330273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525524, 30.047737, 33.037403>,  <41.104103, 29.637627, 33.387177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525524, 30.047737, 33.037403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.721470, 29.700157, 33.009243>,  <41.839039, 29.491610, 32.992348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.721470, 29.700157, 33.009243>,  <41.525524, 30.047737, 33.037403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721470, 29.700157, 33.009243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286049, 0.236486, -0.928574,
		0.823532, 0.434742, 0.364409,
		0.489868, -0.868950, -0.070397,
		41.868431, 29.439472, 32.988125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138165, 30.198742, 32.716721>,  <41.525524, 30.047737, 33.037403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138165, 30.198742, 32.716721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.131428, 29.804873, 32.647289>,  <42.127388, 29.568550, 32.605629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.131428, 29.804873, 32.647289>,  <42.138165, 30.198742, 32.716721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131428, 29.804873, 32.647289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283078, 0.161809, -0.945349,
		0.958949, -0.065056, 0.276015,
		-0.016839, -0.984675, -0.173582,
		42.126377, 29.509470, 32.595215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822556, 29.920416, 32.429989>,  <42.138165, 30.198742, 32.716721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822556, 29.920416, 32.429989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.506405, 29.697262, 32.328747>,  <42.316715, 29.563370, 32.268002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.506405, 29.697262, 32.328747>,  <42.822556, 29.920416, 32.429989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506405, 29.697262, 32.328747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185088, 0.176378, -0.966764,
		0.583987, -0.810958, -0.036147,
		-0.790381, -0.557887, -0.253101,
		42.269291, 29.529896, 32.252815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028439, 29.545549, 31.803583>,  <42.822556, 29.920416, 32.429989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028439, 29.545549, 31.803583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.632668, 29.489292, 31.817760>,  <42.395206, 29.455538, 31.826267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.632668, 29.489292, 31.817760>,  <43.028439, 29.545549, 31.803583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632668, 29.489292, 31.817760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048581, 0.091116, -0.994654,
		0.136668, -0.985858, -0.096986,
		-0.989425, -0.140649, 0.035442,
		42.335838, 29.447100, 31.828394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903881, 29.482405, 31.099110>,  <43.028439, 29.545549, 31.803583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903881, 29.482405, 31.099110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.529881, 29.508949, 31.238461>,  <42.305481, 29.524876, 31.322071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.529881, 29.508949, 31.238461>,  <42.903881, 29.482405, 31.099110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529881, 29.508949, 31.238461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348919, 0.003645, -0.937146,
		-0.063464, -0.997789, 0.019748,
		-0.935002, 0.066365, 0.348378,
		42.249378, 29.528858, 31.342974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581997, 29.042385, 30.683781>,  <42.903881, 29.482405, 31.099110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581997, 29.042385, 30.683781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299328, 29.275188, 30.844719>,  <42.129726, 29.414869, 30.941282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.299328, 29.275188, 30.844719>,  <42.581997, 29.042385, 30.683781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299328, 29.275188, 30.844719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463872, 0.048288, -0.884585,
		-0.534263, -0.811749, 0.235853,
		-0.706672, 0.582006, 0.402347,
		42.087326, 29.449791, 30.965424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974651, 28.705687, 30.511538>,  <42.581997, 29.042385, 30.683781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974651, 28.705687, 30.511538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.937645, 29.099911, 30.568266>,  <41.915440, 29.336445, 30.602303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.937645, 29.099911, 30.568266>,  <41.974651, 28.705687, 30.511538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937645, 29.099911, 30.568266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294144, 0.109022, -0.949523,
		-0.951273, -0.129561, 0.279810,
		-0.092516, 0.985559, 0.141820,
		41.909889, 29.395578, 30.610811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225193, 28.947037, 30.284878>,  <41.974651, 28.705687, 30.511538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225193, 28.947037, 30.284878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426304, 29.292196, 30.264389>,  <41.546970, 29.499292, 30.252096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.426304, 29.292196, 30.264389>,  <41.225193, 28.947037, 30.284878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426304, 29.292196, 30.264389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260426, 0.094701, -0.960838,
		-0.824255, 0.496424, 0.272334,
		0.502774, 0.862899, -0.051224,
		41.577137, 29.551065, 30.249022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931694, 29.438938, 29.965132>,  <41.225193, 28.947037, 30.284878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931694, 29.438938, 29.965132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280491, 29.631475, 29.929499>,  <41.489769, 29.746998, 29.908119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.280491, 29.631475, 29.929499>,  <40.931694, 29.438938, 29.965132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280491, 29.631475, 29.929499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216497, 0.216003, -0.952088,
		-0.439040, 0.849501, 0.292563,
		0.871994, 0.481344, -0.089080,
		41.542088, 29.775879, 29.902775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798946, 30.136301, 29.631380>,  <40.931694, 29.438938, 29.965132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798946, 30.136301, 29.631380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173832, 30.020437, 29.553694>,  <41.398766, 29.950918, 29.507082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.173832, 30.020437, 29.553694>,  <40.798946, 30.136301, 29.631380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173832, 30.020437, 29.553694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136671, 0.207282, -0.968687,
		0.320847, 0.934415, 0.154680,
		0.937218, -0.289661, -0.194214,
		41.454998, 29.933538, 29.495430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025047, 30.601534, 29.084106>,  <40.798946, 30.136301, 29.631380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025047, 30.601534, 29.084106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286949, 30.299282, 29.076899>,  <41.444088, 30.117931, 29.072575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286949, 30.299282, 29.076899>,  <41.025047, 30.601534, 29.084106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286949, 30.299282, 29.076899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003296, 0.026694, -0.999638,
		0.755837, 0.654456, 0.019968,
		0.654752, -0.755629, -0.018019,
		41.483376, 30.072594, 29.071493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282715, 30.701979, 28.508307>,  <41.025047, 30.601534, 29.084106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282715, 30.701979, 28.508307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.471062, 30.358898, 28.590897>,  <41.584072, 30.153049, 28.640450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.471062, 30.358898, 28.590897>,  <41.282715, 30.701979, 28.508307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471062, 30.358898, 28.590897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270413, -0.082455, -0.959207,
		0.839736, 0.507496, 0.193107,
		0.470871, -0.857700, 0.206474,
		41.612324, 30.101587, 28.652840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959888, 30.707991, 28.265821>,  <41.282715, 30.701979, 28.508307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959888, 30.707991, 28.265821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.828682, 30.330269, 28.255295>,  <41.749958, 30.103636, 28.248980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.828682, 30.330269, 28.255295>,  <41.959888, 30.707991, 28.265821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828682, 30.330269, 28.255295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037581, 0.040878, -0.998457,
		0.943924, -0.326524, -0.048897,
		-0.328019, -0.944305, -0.026315,
		41.730278, 30.046978, 28.247400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255817, 30.405659, 27.681522>,  <41.959888, 30.707991, 28.265821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255817, 30.405659, 27.681522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926735, 30.188643, 27.749405>,  <41.729286, 30.058434, 27.790134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.926735, 30.188643, 27.749405>,  <42.255817, 30.405659, 27.681522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926735, 30.188643, 27.749405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173385, -0.044823, -0.983834,
		0.541375, -0.838834, -0.057191,
		-0.822710, -0.542539, 0.169707,
		41.679920, 30.025881, 27.800318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298939, 29.888613, 27.240679>,  <42.255817, 30.405659, 27.681522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298939, 29.888613, 27.240679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.904808, 29.866339, 27.305222>,  <41.668331, 29.852974, 27.343946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.904808, 29.866339, 27.305222>,  <42.298939, 29.888613, 27.240679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904808, 29.866339, 27.305222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153342, -0.126493, -0.980044,
		0.074986, -0.990403, 0.116098,
		-0.985324, -0.055687, 0.161355,
		41.609211, 29.849632, 27.353628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048431, 29.569685, 26.636854>,  <42.298939, 29.888613, 27.240679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048431, 29.569685, 26.636854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.716110, 29.690161, 26.824064>,  <41.516716, 29.762447, 26.936390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.716110, 29.690161, 26.824064>,  <42.048431, 29.569685, 26.636854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716110, 29.690161, 26.824064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455994, 0.113795, -0.882678,
		-0.319115, -0.946749, 0.042801,
		-0.830804, 0.301192, 0.468026,
		41.466869, 29.780518, 26.964472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508884, 29.284128, 26.216948>,  <42.048431, 29.569685, 26.636854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508884, 29.284128, 26.216948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341045, 29.579987, 26.427420>,  <41.240341, 29.757502, 26.553703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341045, 29.579987, 26.427420>,  <41.508884, 29.284128, 26.216948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341045, 29.579987, 26.427420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334124, 0.413122, -0.847167,
		-0.843978, -0.531278, 0.073788,
		-0.419598, 0.739644, 0.526178,
		41.215164, 29.801880, 26.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.776253, 29.450270, 25.877972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909634, 29.777929, 26.064650>,  <40.989662, 29.974525, 26.176657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.909634, 29.777929, 26.064650>,  <40.776253, 29.450270, 25.877972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909634, 29.777929, 26.064650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170146, 0.539186, -0.824820,
		-0.927285, 0.195634, 0.319169,
		0.333454, 0.819149, 0.466693,
		41.009670, 30.023674, 26.204657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240402, 30.032818, 25.875755>,  <40.776253, 29.450270, 25.877972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240402, 30.032818, 25.875755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.607018, 30.183064, 25.930716>,  <40.826984, 30.273211, 25.963692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.607018, 30.183064, 25.930716>,  <40.240402, 30.032818, 25.875755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607018, 30.183064, 25.930716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147320, 0.636435, -0.757131,
		-0.371834, 0.673695, 0.638650,
		0.916535, 0.375613, 0.137399,
		40.881977, 30.295748, 25.971935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071877, 30.679073, 25.923012>,  <40.240402, 30.032818, 25.875755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071877, 30.679073, 25.923012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465340, 30.672018, 25.851336>,  <40.701416, 30.667786, 25.808329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465340, 30.672018, 25.851336>,  <40.071877, 30.679073, 25.923012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465340, 30.672018, 25.851336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128990, 0.625324, -0.769631,
		0.125627, 0.780166, 0.612829,
		0.983656, -0.017638, -0.179191,
		40.760437, 30.666727, 25.797579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289486, 31.388063, 25.839132>,  <40.071877, 30.679073, 25.923012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289486, 31.388063, 25.839132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597179, 31.190962, 25.676414>,  <40.781796, 31.072701, 25.578783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.597179, 31.190962, 25.676414>,  <40.289486, 31.388063, 25.839132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597179, 31.190962, 25.676414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086871, 0.711374, -0.697424,
		0.633040, 0.501140, 0.590015,
		0.769229, -0.492753, -0.406794,
		40.827950, 31.043137, 25.554377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720554, 31.922354, 25.670658>,  <40.289486, 31.388063, 25.839132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720554, 31.922354, 25.670658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871449, 31.630310, 25.442751>,  <40.961987, 31.455084, 25.306007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.871449, 31.630310, 25.442751>,  <40.720554, 31.922354, 25.670658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871449, 31.630310, 25.442751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029189, 0.624289, -0.780648,
		0.925658, 0.277856, 0.256815,
		0.377235, -0.730109, -0.569767,
		40.984619, 31.411278, 25.271820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250824, 32.200939, 25.299509>,  <40.720554, 31.922354, 25.670658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250824, 32.200939, 25.299509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.112667, 31.880445, 25.104067>,  <41.029774, 31.688150, 24.986801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.112667, 31.880445, 25.104067>,  <41.250824, 32.200939, 25.299509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112667, 31.880445, 25.104067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006320, 0.518648, -0.854964,
		0.938439, -0.298382, -0.174071,
		-0.345388, -0.801231, -0.488605,
		41.009052, 31.640076, 24.957485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703815, 32.251984, 24.771769>,  <41.250824, 32.200939, 25.299509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703815, 32.251984, 24.771769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411339, 32.000565, 24.665718>,  <41.235855, 31.849712, 24.602087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.411339, 32.000565, 24.665718>,  <41.703815, 32.251984, 24.771769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411339, 32.000565, 24.665718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020813, 0.409021, -0.912287,
		0.681858, -0.661535, -0.312153,
		-0.731188, -0.628548, -0.265126,
		41.191982, 31.812000, 24.586180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906937, 31.961111, 24.107958>,  <41.703815, 32.251984, 24.771769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906937, 31.961111, 24.107958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512859, 31.892666, 24.112141>,  <41.276413, 31.851599, 24.114651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.512859, 31.892666, 24.112141>,  <41.906937, 31.961111, 24.107958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512859, 31.892666, 24.112141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048238, 0.218171, -0.974718,
		0.164502, -0.960793, -0.223195,
		-0.985197, -0.171109, 0.010458,
		41.217300, 31.841331, 24.115278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815437, 31.560467, 23.554808>,  <41.906937, 31.961111, 24.107958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815437, 31.560467, 23.554808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.466629, 31.744194, 23.622463>,  <41.257343, 31.854431, 23.663055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.466629, 31.744194, 23.622463>,  <41.815437, 31.560467, 23.554808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466629, 31.744194, 23.622463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050270, 0.259681, -0.964385,
		-0.486883, -0.849465, -0.203358,
		-0.872020, 0.459320, 0.169137,
		41.205025, 31.881990, 23.673204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364609, 31.421938, 23.018597>,  <41.815437, 31.560467, 23.554808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364609, 31.421938, 23.018597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203323, 31.761646, 23.154922>,  <41.106552, 31.965471, 23.236719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203323, 31.761646, 23.154922>,  <41.364609, 31.421938, 23.018597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203323, 31.761646, 23.154922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177538, 0.292758, -0.939560,
		-0.897720, -0.439349, 0.032735,
		-0.403211, 0.849273, 0.340816,
		41.082359, 32.016430, 23.257168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991230, 31.596645, 22.432919>,  <41.364609, 31.421938, 23.018597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991230, 31.596645, 22.432919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.937870, 31.936676, 22.636711>,  <40.905853, 32.140694, 22.758987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.937870, 31.936676, 22.636711>,  <40.991230, 31.596645, 22.432919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937870, 31.936676, 22.636711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165666, 0.487717, -0.857139,
		-0.977118, -0.198743, 0.075769,
		-0.133397, 0.850078, 0.509482,
		40.897850, 32.191700, 22.789557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320126, 32.043701, 22.190922>,  <40.991230, 31.596645, 22.432919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320126, 32.043701, 22.190922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549076, 32.307835, 22.385380>,  <40.686447, 32.466316, 22.502054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.549076, 32.307835, 22.385380>,  <40.320126, 32.043701, 22.190922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549076, 32.307835, 22.385380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211118, 0.691555, -0.690783,
		-0.792344, 0.292757, 0.535242,
		0.572381, 0.660337, 0.486143,
		40.720791, 32.505936, 22.531223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964531, 32.686962, 22.077845>,  <40.320126, 32.043701, 22.190922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964531, 32.686962, 22.077845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.333614, 32.785683, 22.196295>,  <40.555065, 32.844917, 22.267365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.333614, 32.785683, 22.196295>,  <39.964531, 32.686962, 22.077845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333614, 32.785683, 22.196295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029368, 0.720944, -0.692371,
		-0.384371, 0.647555, 0.657975,
		0.922711, 0.246804, 0.296128,
		40.610428, 32.859722, 22.285133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905293, 33.441059, 22.224380>,  <39.964531, 32.686962, 22.077845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905293, 33.441059, 22.224380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281384, 33.353348, 22.120153>,  <40.507038, 33.300720, 22.057617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.281384, 33.353348, 22.120153>,  <39.905293, 33.441059, 22.224380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281384, 33.353348, 22.120153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027399, 0.713938, -0.699672,
		0.339455, 0.664988, 0.665253,
		0.940223, -0.219280, -0.260570,
		40.563450, 33.287563, 22.041983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088531, 34.005936, 21.987419>,  <39.905293, 33.441059, 22.224380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088531, 34.005936, 21.987419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391766, 33.786369, 21.846565>,  <40.573708, 33.654629, 21.762053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391766, 33.786369, 21.846565>,  <40.088531, 34.005936, 21.987419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391766, 33.786369, 21.846565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062631, 0.598739, -0.798491,
		0.649140, 0.583271, 0.488275,
		0.758086, -0.548914, -0.352135,
		40.619190, 33.621696, 21.740925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547890, 34.489510, 21.579250>,  <40.088531, 34.005936, 21.987419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547890, 34.489510, 21.579250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650597, 34.126514, 21.446259>,  <40.712219, 33.908718, 21.366463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.650597, 34.126514, 21.446259>,  <40.547890, 34.489510, 21.579250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650597, 34.126514, 21.446259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029284, 0.336552, -0.941210,
		0.966030, 0.251407, 0.059840,
		0.256766, -0.907484, -0.332481,
		40.727627, 33.854271, 21.346514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259739, 34.520058, 21.235216>,  <40.547890, 34.489510, 21.579250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259739, 34.520058, 21.235216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.065552, 34.199520, 21.095402>,  <40.949039, 34.007198, 21.011513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.065552, 34.199520, 21.095402>,  <41.259739, 34.520058, 21.235216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065552, 34.199520, 21.095402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064736, 0.365760, -0.928455,
		0.871855, -0.473361, -0.125688,
		-0.485466, -0.801342, -0.349534,
		40.919910, 33.959118, 20.990541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674950, 34.260181, 20.661457>,  <41.259739, 34.520058, 21.235216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674950, 34.260181, 20.661457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.292133, 34.150219, 20.624596>,  <41.062443, 34.084240, 20.602478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.292133, 34.150219, 20.624596>,  <41.674950, 34.260181, 20.661457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292133, 34.150219, 20.624596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014030, 0.361369, -0.932317,
		0.289603, -0.890976, -0.349703,
		-0.957044, -0.274908, -0.092153,
		41.005020, 34.067745, 20.596951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406689, 33.963131, 19.954321>,  <41.674950, 34.260181, 20.661457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406689, 33.963131, 19.954321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099457, 34.144398, 20.135296>,  <40.915119, 34.253159, 20.243881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.099457, 34.144398, 20.135296>,  <41.406689, 33.963131, 19.954321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099457, 34.144398, 20.135296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220160, 0.476593, -0.851111,
		-0.601319, -0.753328, -0.266292,
		-0.768079, 0.453163, 0.452437,
		40.869034, 34.280346, 20.271027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123207, 34.333462, 19.343334>,  <41.406689, 33.963131, 19.954321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123207, 34.333462, 19.343334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849613, 34.432880, 19.617674>,  <40.685455, 34.492531, 19.782278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.849613, 34.432880, 19.617674>,  <41.123207, 34.333462, 19.343334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849613, 34.432880, 19.617674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495332, 0.531975, -0.686767,
		-0.535546, -0.809462, -0.240752,
		-0.683985, 0.248543, 0.685850,
		40.644417, 34.507442, 19.823429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464874, 34.266140, 19.036793>,  <41.123207, 34.333462, 19.343334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464874, 34.266140, 19.036793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417850, 34.523815, 19.339104>,  <40.389637, 34.678421, 19.520491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417850, 34.523815, 19.339104>,  <40.464874, 34.266140, 19.036793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417850, 34.523815, 19.339104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500311, 0.618990, -0.605425,
		-0.857827, -0.449298, 0.249526,
		-0.117562, 0.644191, 0.755776,
		40.382584, 34.717072, 19.565836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811756, 34.380199, 18.909834>,  <40.464874, 34.266140, 19.036793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811756, 34.380199, 18.909834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956707, 34.663464, 19.152220>,  <40.043678, 34.833420, 19.297651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.956707, 34.663464, 19.152220>,  <39.811756, 34.380199, 18.909834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956707, 34.663464, 19.152220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491643, 0.697583, -0.521216,
		-0.791813, -0.109039, 0.600951,
		0.362381, 0.708159, 0.605963,
		40.065422, 34.875912, 19.334009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377434, 34.998428, 18.885113>,  <39.811756, 34.380199, 18.909834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377434, 34.998428, 18.885113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706097, 35.177063, 19.026779>,  <39.903294, 35.284245, 19.111778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.706097, 35.177063, 19.026779>,  <39.377434, 34.998428, 18.885113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706097, 35.177063, 19.026779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231234, 0.829116, -0.509016,
		-0.520965, 0.336343, 0.784518,
		0.821661, 0.446587, 0.354166,
		39.952595, 35.311039, 19.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038052, 35.477711, 19.248821>,  <39.377434, 34.998428, 18.885113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038052, 35.477711, 19.248821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398663, 35.547623, 19.090479>,  <39.615028, 35.589569, 18.995474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398663, 35.547623, 19.090479>,  <39.038052, 35.477711, 19.248821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398663, 35.547623, 19.090479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372436, 0.779170, -0.504168,
		0.220323, 0.601952, 0.767536,
		0.901526, 0.174779, -0.395857,
		39.669121, 35.600056, 18.971722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417736, 35.029625, 18.872679>,  <39.038052, 35.477711, 19.248821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417736, 35.029625, 18.872679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064846, 34.862137, 18.786564>,  <37.853111, 34.761642, 18.734896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064846, 34.862137, 18.786564>,  <38.417736, 35.029625, 18.872679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064846, 34.862137, 18.786564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125230, -0.232096, 0.964598,
		-0.453865, 0.877955, 0.152325,
		-0.882227, -0.418722, -0.215286,
		37.800179, 34.736519, 18.721977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060513, 35.217422, 19.460663>,  <38.417736, 35.029625, 18.872679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060513, 35.217422, 19.460663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887039, 34.904034, 19.282631>,  <37.782955, 34.716000, 19.175812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.887039, 34.904034, 19.282631>,  <38.060513, 35.217422, 19.460663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887039, 34.904034, 19.282631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175942, -0.410810, 0.894584,
		-0.883719, 0.466277, 0.040317,
		-0.433687, -0.783467, -0.445078,
		37.756931, 34.668995, 19.149107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414722, 35.117489, 19.802530>,  <38.060513, 35.217422, 19.460663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414722, 35.117489, 19.802530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516102, 34.764820, 19.643324>,  <37.576931, 34.553219, 19.547800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516102, 34.764820, 19.643324>,  <37.414722, 35.117489, 19.802530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516102, 34.764820, 19.643324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192836, -0.449243, 0.872351,
		-0.947934, -0.144344, -0.283878,
		0.253449, -0.881672, -0.398018,
		37.592136, 34.500317, 19.523918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883259, 34.674759, 20.068403>,  <37.414722, 35.117489, 19.802530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883259, 34.674759, 20.068403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196289, 34.458221, 19.945423>,  <37.384106, 34.328300, 19.871635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196289, 34.458221, 19.945423>,  <36.883259, 34.674759, 20.068403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196289, 34.458221, 19.945423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051119, -0.548062, 0.834874,
		-0.620454, -0.637635, -0.456573,
		0.782575, -0.541341, -0.307452,
		37.431061, 34.295818, 19.853188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822716, 34.038528, 20.368626>,  <36.883259, 34.674759, 20.068403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822716, 34.038528, 20.368626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211082, 33.998497, 20.281631>,  <37.444103, 33.974480, 20.229435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211082, 33.998497, 20.281631>,  <36.822716, 34.038528, 20.368626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211082, 33.998497, 20.281631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102961, -0.645589, 0.756712,
		-0.216134, -0.757100, -0.616511,
		0.970920, -0.100075, -0.217485,
		37.502357, 33.968475, 20.216387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992542, 33.351704, 20.392708>,  <36.822716, 34.038528, 20.368626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992542, 33.351704, 20.392708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348907, 33.531136, 20.421104>,  <37.562729, 33.638794, 20.438143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.348907, 33.531136, 20.421104>,  <36.992542, 33.351704, 20.392708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348907, 33.531136, 20.421104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300491, -0.699423, 0.648470,
		0.340545, -0.556401, -0.757923,
		0.890918, 0.448582, 0.070991,
		37.616184, 33.665710, 20.442402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504303, 32.818344, 20.152033>,  <36.992542, 33.351704, 20.392708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504303, 32.818344, 20.152033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649342, 33.076313, 20.421133>,  <37.736362, 33.231094, 20.582594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.649342, 33.076313, 20.421133>,  <37.504303, 32.818344, 20.152033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649342, 33.076313, 20.421133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259809, -0.763211, 0.591614,
		0.895000, -0.039729, -0.444293,
		0.362594, 0.644926, 0.672752,
		37.758121, 33.269791, 20.622959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108643, 32.522396, 20.366663>,  <37.504303, 32.818344, 20.152033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108643, 32.522396, 20.366663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050926, 32.797768, 20.650988>,  <38.016296, 32.962990, 20.821583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050926, 32.797768, 20.650988>,  <38.108643, 32.522396, 20.366663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050926, 32.797768, 20.650988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186717, -0.686482, 0.702765,
		0.971760, 0.234122, -0.029489,
		-0.144289, 0.688425, 0.710810,
		38.007641, 33.004295, 20.864231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712925, 32.506172, 20.834368>,  <38.108643, 32.522396, 20.366663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712925, 32.506172, 20.834368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411884, 32.660355, 21.047913>,  <38.231258, 32.752865, 21.176041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.411884, 32.660355, 21.047913>,  <38.712925, 32.506172, 20.834368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411884, 32.660355, 21.047913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245723, -0.587785, 0.770797,
		0.610909, 0.711287, 0.347652,
		-0.752603, 0.385460, 0.533863,
		38.186104, 32.775993, 21.208071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973652, 32.416359, 21.449635>,  <38.712925, 32.506172, 20.834368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973652, 32.416359, 21.449635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589958, 32.494118, 21.531691>,  <38.359741, 32.540771, 21.580925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.589958, 32.494118, 21.531691>,  <38.973652, 32.416359, 21.449635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589958, 32.494118, 21.531691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056579, -0.579080, 0.813305,
		0.276895, 0.791755, 0.544474,
		-0.959233, 0.194394, 0.205142,
		38.302189, 32.552437, 21.593233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997276, 32.764362, 22.077883>,  <38.973652, 32.416359, 21.449635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997276, 32.764362, 22.077883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635433, 32.597172, 22.044456>,  <38.418327, 32.496857, 22.024401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635433, 32.597172, 22.044456>,  <38.997276, 32.764362, 22.077883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635433, 32.597172, 22.044456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111913, -0.422073, 0.899628,
		-0.411296, 0.804456, 0.428586,
		-0.904605, -0.417978, -0.083568,
		38.364052, 32.471779, 22.019386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696045, 32.861908, 22.658604>,  <38.997276, 32.764362, 22.077883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696045, 32.861908, 22.658604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.476543, 32.562626, 22.509441>,  <38.344841, 32.383057, 22.419945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.476543, 32.562626, 22.509441>,  <38.696045, 32.861908, 22.658604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476543, 32.562626, 22.509441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167071, -0.535222, 0.828025,
		-0.819118, 0.392082, 0.418709,
		-0.548756, -0.748204, -0.372904,
		38.311916, 32.338165, 22.397570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361492, 32.680420, 23.200914>,  <38.696045, 32.861908, 22.658604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361492, 32.680420, 23.200914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332237, 32.355980, 22.968790>,  <38.314682, 32.161316, 22.829515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332237, 32.355980, 22.968790>,  <38.361492, 32.680420, 23.200914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332237, 32.355980, 22.968790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099757, -0.584903, 0.804945,
		-0.992320, 0.000984, 0.123693,
		-0.073141, -0.811102, -0.580313,
		38.310295, 32.112648, 22.794697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920776, 32.277920, 23.540251>,  <38.361492, 32.680420, 23.200914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920776, 32.277920, 23.540251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.144905, 32.048050, 23.301659>,  <38.279381, 31.910128, 23.158504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.144905, 32.048050, 23.301659>,  <37.920776, 32.277920, 23.540251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144905, 32.048050, 23.301659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060658, -0.689740, 0.721512,
		-0.826054, -0.440457, -0.351615,
		0.560318, -0.574679, -0.596479,
		38.313000, 31.875647, 23.122715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707958, 31.643232, 23.684526>,  <37.920776, 32.277920, 23.540251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707958, 31.643232, 23.684526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077744, 31.624720, 23.533150>,  <38.299614, 31.613611, 23.442324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.077744, 31.624720, 23.533150>,  <37.707958, 31.643232, 23.684526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077744, 31.624720, 23.533150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279687, -0.592245, 0.755659,
		-0.259105, -0.804428, -0.534566,
		0.924467, -0.046284, -0.378442,
		38.355083, 31.610834, 23.419617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842060, 30.990343, 23.731665>,  <37.707958, 31.643232, 23.684526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842060, 30.990343, 23.731665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197823, 31.170315, 23.699369>,  <38.411282, 31.278297, 23.679993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197823, 31.170315, 23.699369>,  <37.842060, 30.990343, 23.731665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197823, 31.170315, 23.699369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357031, -0.573453, 0.737347,
		0.285455, -0.684628, -0.670671,
		0.889407, 0.449929, -0.080739,
		38.464645, 31.305294, 23.675148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424850, 30.381870, 23.736462>,  <37.842060, 30.990343, 23.731665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424850, 30.381870, 23.736462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614235, 30.712696, 23.857656>,  <38.727867, 30.911192, 23.930374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.614235, 30.712696, 23.857656>,  <38.424850, 30.381870, 23.736462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614235, 30.712696, 23.857656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362976, -0.496621, 0.788426,
		0.802548, -0.263311, -0.535334,
		0.473460, 0.827064, 0.302987,
		38.756271, 30.960815, 23.948553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041931, 30.130068, 24.006706>,  <38.424850, 30.381870, 23.736462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041931, 30.130068, 24.006706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991192, 30.501427, 24.146412>,  <38.960751, 30.724243, 24.230236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.991192, 30.501427, 24.146412>,  <39.041931, 30.130068, 24.006706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991192, 30.501427, 24.146412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130905, -0.333361, 0.933667,
		0.983247, 0.164151, -0.079247,
		-0.126845, 0.928399, 0.349265,
		38.953140, 30.779947, 24.251192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704060, 30.362442, 24.409674>,  <39.041931, 30.130068, 24.006706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704060, 30.362442, 24.409674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379417, 30.549301, 24.549999>,  <39.184631, 30.661417, 24.634193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379417, 30.549301, 24.549999>,  <39.704060, 30.362442, 24.409674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379417, 30.549301, 24.549999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255110, -0.256819, 0.932182,
		0.525563, 0.846059, 0.089262,
		-0.811605, 0.467148, 0.350813,
		39.135937, 30.689445, 24.655243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921543, 30.641769, 25.079779>,  <39.704060, 30.362442, 24.409674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921543, 30.641769, 25.079779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521545, 30.642790, 25.078600>,  <39.281548, 30.643402, 25.077892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521545, 30.642790, 25.078600>,  <39.921543, 30.641769, 25.079779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521545, 30.642790, 25.078600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003512, -0.260325, 0.965515,
		0.001698, 0.965518, 0.260332,
		-0.999992, 0.002553, -0.002949,
		39.221546, 30.643557, 25.077715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.592129, 29.235931, 28.972813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269524, 29.468491, 29.015749>,  <42.075962, 29.608027, 29.041512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.269524, 29.468491, 29.015749>,  <42.592129, 29.235931, 28.972813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269524, 29.468491, 29.015749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249151, 0.169576, 0.953503,
		0.536160, 0.795753, -0.281620,
		-0.806509, 0.581396, 0.107343,
		42.027573, 29.642910, 29.047953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683392, 29.660097, 29.455589>,  <42.592129, 29.235931, 28.972813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683392, 29.660097, 29.455589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.303940, 29.786638, 29.453470>,  <42.076271, 29.862562, 29.452200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.303940, 29.786638, 29.453470>,  <42.683392, 29.660097, 29.455589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303940, 29.786638, 29.453470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016717, 0.066827, 0.997625,
		0.315955, 0.946285, -0.068683,
		-0.948627, 0.316352, -0.005296,
		42.019352, 29.881544, 29.451881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708897, 30.236277, 29.909033>,  <42.683392, 29.660097, 29.455589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708897, 30.236277, 29.909033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327385, 30.116312, 29.901482>,  <42.098476, 30.044334, 29.896950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.327385, 30.116312, 29.901482>,  <42.708897, 30.236277, 29.909033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327385, 30.116312, 29.901482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038652, 0.060131, 0.997442,
		-0.298007, 0.952071, -0.068943,
		-0.953781, -0.299910, -0.018880,
		42.041252, 30.026339, 29.895817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326569, 30.565989, 30.336258>,  <42.708897, 30.236277, 29.909033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326569, 30.565989, 30.336258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086864, 30.247969, 30.298779>,  <41.943043, 30.057156, 30.276291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.086864, 30.247969, 30.298779>,  <42.326569, 30.565989, 30.336258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086864, 30.247969, 30.298779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075648, -0.060280, 0.995311,
		-0.796971, 0.603539, -0.024020,
		-0.599261, -0.795051, -0.093698,
		41.907085, 30.009453, 30.270670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775745, 30.685823, 30.820230>,  <42.326569, 30.565989, 30.336258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775745, 30.685823, 30.820230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790798, 30.294373, 30.739367>,  <41.799831, 30.059502, 30.690849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790798, 30.294373, 30.739367>,  <41.775745, 30.685823, 30.820230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790798, 30.294373, 30.739367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053323, -0.203980, 0.977522,
		-0.997868, -0.026010, -0.059860,
		0.037635, -0.978630, -0.202158,
		41.802090, 30.000784, 30.678719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279694, 30.361223, 31.338358>,  <41.775745, 30.685823, 30.820230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279694, 30.361223, 31.338358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529190, 30.071314, 31.221296>,  <41.678890, 29.897367, 31.151060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529190, 30.071314, 31.221296>,  <41.279694, 30.361223, 31.338358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529190, 30.071314, 31.221296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032352, -0.350154, 0.936133,
		-0.780959, -0.593374, -0.194959,
		0.623743, -0.724775, -0.292653,
		41.716312, 29.853882, 31.133501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114170, 29.875879, 31.824871>,  <41.279694, 30.361223, 31.338358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114170, 29.875879, 31.824871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449623, 29.729055, 31.663891>,  <41.650894, 29.640961, 31.567303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449623, 29.729055, 31.663891>,  <41.114170, 29.875879, 31.824871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449623, 29.729055, 31.663891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193419, -0.490020, 0.849982,
		-0.509211, -0.790659, -0.339945,
		0.838626, -0.367068, -0.402452,
		41.701214, 29.618937, 31.543156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044254, 29.142052, 31.923527>,  <41.114170, 29.875879, 31.824871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044254, 29.142052, 31.923527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431679, 29.227425, 31.872389>,  <41.664131, 29.278648, 31.841707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431679, 29.227425, 31.872389>,  <41.044254, 29.142052, 31.923527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431679, 29.227425, 31.872389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217685, -0.478214, 0.850837,
		0.120459, -0.851914, -0.509639,
		0.968557, 0.213432, -0.127843,
		41.722244, 29.291454, 31.834036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353790, 28.558573, 32.078136>,  <41.044254, 29.142052, 31.923527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353790, 28.558573, 32.078136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622654, 28.851135, 32.124176>,  <41.783974, 29.026672, 32.151798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622654, 28.851135, 32.124176>,  <41.353790, 28.558573, 32.078136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622654, 28.851135, 32.124176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200780, -0.329684, 0.922494,
		0.712665, -0.596953, -0.368451,
		0.672158, 0.731407, 0.115098,
		41.824303, 29.070557, 32.158707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992073, 28.236870, 32.338482>,  <41.353790, 28.558573, 32.078136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992073, 28.236870, 32.338482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.017036, 28.620405, 32.449287>,  <42.032017, 28.850527, 32.515770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.017036, 28.620405, 32.449287>,  <41.992073, 28.236870, 32.338482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017036, 28.620405, 32.449287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320751, -0.282100, 0.904178,
		0.945105, 0.032421, -0.325154,
		0.062412, 0.958837, 0.277013,
		42.035759, 28.908056, 32.532391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542202, 28.297108, 32.915897>,  <41.992073, 28.236870, 32.338482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542202, 28.297108, 32.915897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341938, 28.643360, 32.917786>,  <42.221779, 28.851112, 32.918919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341938, 28.643360, 32.917786>,  <42.542202, 28.297108, 32.915897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341938, 28.643360, 32.917786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020264, 0.006266, 0.999775,
		0.865408, 0.500641, -0.020679,
		-0.500657, 0.865633, 0.004722,
		42.191742, 28.903049, 32.919201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862709, 28.697887, 33.363197>,  <42.542202, 28.297108, 32.915897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862709, 28.697887, 33.363197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510662, 28.887327, 33.349949>,  <42.299435, 29.000992, 33.341999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510662, 28.887327, 33.349949>,  <42.862709, 28.697887, 33.363197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510662, 28.887327, 33.349949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083305, -0.085378, 0.992860,
		0.467391, 0.876592, 0.114596,
		-0.880117, 0.473600, -0.033120,
		42.246628, 29.029408, 33.340012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957710, 29.157406, 33.846760>,  <42.862709, 28.697887, 33.363197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957710, 29.157406, 33.846760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569458, 29.086834, 33.781342>,  <42.336506, 29.044491, 33.742092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569458, 29.086834, 33.781342>,  <42.957710, 29.157406, 33.846760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569458, 29.086834, 33.781342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123184, -0.219433, 0.967820,
		-0.206641, 0.959542, 0.191255,
		-0.970631, -0.176432, -0.163544,
		42.278267, 29.033905, 33.732277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504253, 29.536116, 34.353291>,  <42.957710, 29.157406, 33.846760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504253, 29.536116, 34.353291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280502, 29.219372, 34.255260>,  <42.146252, 29.029325, 34.196442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.280502, 29.219372, 34.255260>,  <42.504253, 29.536116, 34.353291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280502, 29.219372, 34.255260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293950, -0.086941, 0.951858,
		-0.775043, 0.604486, -0.184134,
		-0.559376, -0.791857, -0.245072,
		42.112690, 28.981815, 34.181740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491459, 30.052572, 34.852940>,  <42.504253, 29.536116, 34.353291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491459, 30.052572, 34.852940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.401234, 30.298594, 35.155151>,  <42.347099, 30.446207, 35.336479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.401234, 30.298594, 35.155151>,  <42.491459, 30.052572, 34.852940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401234, 30.298594, 35.155151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612304, 0.513701, -0.600995,
		-0.757762, -0.598178, 0.260727,
		-0.225566, 0.615055, 0.755531,
		42.333565, 30.483110, 35.381809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824436, 30.285149, 34.734356>,  <42.491459, 30.052572, 34.852940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824436, 30.285149, 34.734356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960953, 30.557722, 34.993328>,  <42.042862, 30.721266, 35.148712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960953, 30.557722, 34.993328>,  <41.824436, 30.285149, 34.734356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960953, 30.557722, 34.993328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421076, 0.726650, -0.542839,
		-0.840366, -0.087352, 0.534935,
		0.341292, 0.681431, 0.647434,
		42.063339, 30.762152, 35.187557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226276, 30.704422, 34.895996>,  <41.824436, 30.285149, 34.734356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226276, 30.704422, 34.895996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554054, 30.917515, 34.980576>,  <41.750721, 31.045370, 35.031322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554054, 30.917515, 34.980576>,  <41.226276, 30.704422, 34.895996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554054, 30.917515, 34.980576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387403, 0.786684, -0.480674,
		-0.422418, 0.311966, 0.851023,
		0.819440, 0.532734, 0.211453,
		41.799885, 31.077335, 35.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959492, 31.409100, 34.871750>,  <41.226276, 30.704422, 34.895996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959492, 31.409100, 34.871750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358089, 31.439259, 34.857197>,  <41.597248, 31.457354, 34.848465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.358089, 31.439259, 34.857197>,  <40.959492, 31.409100, 34.871750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358089, 31.439259, 34.857197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081675, 0.780324, -0.620019,
		-0.018359, 0.620813, 0.783743,
		0.996490, 0.075396, -0.036379,
		41.657036, 31.461878, 34.846283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074039, 32.145092, 35.094662>,  <40.959492, 31.409100, 34.871750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074039, 32.145092, 35.094662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387856, 32.019718, 34.880650>,  <41.576145, 31.944494, 34.752243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387856, 32.019718, 34.880650>,  <41.074039, 32.145092, 35.094662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387856, 32.019718, 34.880650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122366, 0.767617, -0.629119,
		0.607886, 0.559038, 0.563873,
		0.784539, -0.313434, -0.535030,
		41.623219, 31.925688, 34.720139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352440, 32.726406, 34.889313>,  <41.074039, 32.145092, 35.094662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352440, 32.726406, 34.889313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516693, 32.458160, 34.642200>,  <41.615246, 32.297211, 34.493935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516693, 32.458160, 34.642200>,  <41.352440, 32.726406, 34.889313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516693, 32.458160, 34.642200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045949, 0.661458, -0.748573,
		0.910641, 0.335778, 0.240804,
		0.410636, -0.670616, -0.617779,
		41.639885, 32.256977, 34.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966137, 33.090111, 34.471375>,  <41.352440, 32.726406, 34.889313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966137, 33.090111, 34.471375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844353, 32.767330, 34.268940>,  <41.771282, 32.573662, 34.147480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844353, 32.767330, 34.268940>,  <41.966137, 33.090111, 34.471375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844353, 32.767330, 34.268940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032166, 0.539723, -0.841228,
		0.951981, -0.239845, -0.190282,
		-0.304464, -0.806953, -0.506091,
		41.753014, 32.525246, 34.117111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288467, 33.067738, 33.795227>,  <41.966137, 33.090111, 34.471375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288467, 33.067738, 33.795227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004780, 32.796772, 33.717129>,  <41.834568, 32.634193, 33.670273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.004780, 32.796772, 33.717129>,  <42.288467, 33.067738, 33.795227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004780, 32.796772, 33.717129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093217, 0.184402, -0.978420,
		0.698794, -0.712118, -0.067636,
		-0.709223, -0.677410, -0.195241,
		41.792011, 32.593548, 33.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428486, 32.673992, 33.181553>,  <42.288467, 33.067738, 33.795227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428486, 32.673992, 33.181553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030525, 32.659111, 33.219063>,  <41.791748, 32.650181, 33.241570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.030525, 32.659111, 33.219063>,  <42.428486, 32.673992, 33.181553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030525, 32.659111, 33.219063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096405, 0.076835, -0.992372,
		0.029709, -0.996350, -0.080029,
		-0.994899, -0.037198, 0.093771,
		41.732056, 32.647949, 33.247192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125801, 32.229210, 32.642441>,  <42.428486, 32.673992, 33.181553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125801, 32.229210, 32.642441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.842335, 32.476860, 32.777771>,  <41.672253, 32.625450, 32.858971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.842335, 32.476860, 32.777771>,  <42.125801, 32.229210, 32.642441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842335, 32.476860, 32.777771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208252, 0.274606, -0.938735,
		-0.674105, -0.735710, -0.065671,
		-0.708670, 0.619130, 0.338326,
		41.629734, 32.662598, 32.879269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523254, 32.021858, 32.395500>,  <42.125801, 32.229210, 32.642441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523254, 32.021858, 32.395500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392849, 32.385178, 32.500343>,  <41.314606, 32.603168, 32.563251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.392849, 32.385178, 32.500343>,  <41.523254, 32.021858, 32.395500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392849, 32.385178, 32.500343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234359, 0.190953, -0.953212,
		-0.915855, -0.372188, 0.150616,
		-0.326014, 0.908302, 0.262111,
		41.295044, 32.657669, 32.578976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832878, 32.074043, 32.005524>,  <41.523254, 32.021858, 32.395500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832878, 32.074043, 32.005524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957283, 32.445362, 32.087040>,  <41.031925, 32.668156, 32.135948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957283, 32.445362, 32.087040>,  <40.832878, 32.074043, 32.005524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957283, 32.445362, 32.087040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234376, 0.282713, -0.930130,
		-0.921053, 0.241520, 0.305499,
		0.311014, 0.928300, 0.203787,
		41.050587, 32.723854, 32.148174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395390, 32.341877, 31.610006>,  <40.832878, 32.074043, 32.005524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395390, 32.341877, 31.610006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676342, 32.610332, 31.704866>,  <40.844913, 32.771404, 31.761782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676342, 32.610332, 31.704866>,  <40.395390, 32.341877, 31.610006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676342, 32.610332, 31.704866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117640, 0.438034, -0.891228,
		-0.702015, 0.598081, 0.386618,
		0.702378, 0.671137, 0.237149,
		40.887054, 32.811672, 31.776011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036659, 32.909988, 31.534794>,  <40.395390, 32.341877, 31.610006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036659, 32.909988, 31.534794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427151, 32.991653, 31.505692>,  <40.661446, 33.040653, 31.488230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427151, 32.991653, 31.505692>,  <40.036659, 32.909988, 31.534794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427151, 32.991653, 31.505692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140205, 0.338882, -0.930324,
		-0.165282, 0.918410, 0.359451,
		0.976230, 0.204163, -0.072754,
		40.720020, 33.052902, 31.483866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708603, 33.506363, 31.740355>,  <40.036659, 32.909988, 31.534794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708603, 33.506363, 31.740355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310539, 33.535538, 31.766710>,  <39.071701, 33.553043, 31.782524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.310539, 33.535538, 31.766710>,  <39.708603, 33.506363, 31.740355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310539, 33.535538, 31.766710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042419, -0.286035, 0.957280,
		0.088667, 0.955439, 0.281556,
		-0.995158, 0.072936, 0.065891,
		39.011993, 33.557419, 31.786478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597912, 33.912800, 32.346401>,  <39.708603, 33.506363, 31.740355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597912, 33.912800, 32.346401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.254398, 33.721603, 32.272629>,  <39.048290, 33.606888, 32.228367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.254398, 33.721603, 32.272629>,  <39.597912, 33.912800, 32.346401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254398, 33.721603, 32.272629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130553, -0.143927, 0.980939,
		-0.495421, 0.866494, 0.061200,
		-0.858786, -0.477988, -0.184428,
		38.996761, 33.578205, 32.217300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160961, 34.169640, 32.862392>,  <39.597912, 33.912800, 32.346401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160961, 34.169640, 32.862392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992046, 33.829422, 32.737015>,  <38.890697, 33.625290, 32.661789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992046, 33.829422, 32.737015>,  <39.160961, 34.169640, 32.862392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992046, 33.829422, 32.737015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102975, -0.298533, 0.948828,
		-0.900592, 0.432958, 0.038483,
		-0.422291, -0.850544, -0.313441,
		38.865360, 33.574257, 32.642982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551559, 34.088211, 33.218803>,  <39.160961, 34.169640, 32.862392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551559, 34.088211, 33.218803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616047, 33.719910, 33.076691>,  <38.654739, 33.498928, 32.991425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.616047, 33.719910, 33.076691>,  <38.551559, 34.088211, 33.218803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616047, 33.719910, 33.076691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002854, -0.360424, 0.932784,
		-0.986915, -0.149366, -0.060734,
		0.161216, -0.920752, -0.355282,
		38.664413, 33.443684, 32.970104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086052, 33.743328, 33.678280>,  <38.551559, 34.088211, 33.218803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086052, 33.743328, 33.678280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339546, 33.471783, 33.529938>,  <38.491642, 33.308857, 33.440933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339546, 33.471783, 33.529938>,  <38.086052, 33.743328, 33.678280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339546, 33.471783, 33.529938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057122, -0.519174, 0.852757,
		-0.771440, -0.519236, -0.367795,
		0.633733, -0.678861, -0.370852,
		38.529667, 33.268124, 33.418682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772091, 33.130707, 33.798046>,  <38.086052, 33.743328, 33.678280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772091, 33.130707, 33.798046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156811, 33.035927, 33.743206>,  <38.387642, 32.979057, 33.710304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156811, 33.035927, 33.743206>,  <37.772091, 33.130707, 33.798046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156811, 33.035927, 33.743206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009748, -0.530135, 0.847857,
		-0.273579, -0.814133, -0.512193,
		0.961800, -0.236949, -0.137097,
		38.445351, 32.964844, 33.702076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864529, 32.341953, 34.058739>,  <37.772091, 33.130707, 33.798046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864529, 32.341953, 34.058739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238045, 32.484413, 34.044907>,  <38.462154, 32.569889, 34.036606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.238045, 32.484413, 34.044907>,  <37.864529, 32.341953, 34.058739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238045, 32.484413, 34.044907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261715, -0.613880, 0.744753,
		0.244014, -0.704493, -0.666444,
		0.933789, 0.356148, -0.034581,
		38.518181, 32.591259, 34.034531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243614, 31.714016, 33.994995>,  <37.864529, 32.341953, 34.058739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243614, 31.714016, 33.994995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458271, 32.016815, 34.144108>,  <38.587067, 32.198494, 34.233578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.458271, 32.016815, 34.144108>,  <38.243614, 31.714016, 33.994995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458271, 32.016815, 34.144108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296378, -0.582736, 0.756689,
		0.790048, -0.295586, -0.537078,
		0.536641, 0.756999, 0.372784,
		38.619263, 32.243916, 34.255943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905598, 31.453735, 34.063690>,  <38.243614, 31.714016, 33.994995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905598, 31.453735, 34.063690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860065, 31.746645, 34.332264>,  <38.832748, 31.922390, 34.493408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860065, 31.746645, 34.332264>,  <38.905598, 31.453735, 34.063690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860065, 31.746645, 34.332264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295162, -0.620383, 0.726639,
		0.948642, 0.280893, -0.145522,
		-0.113828, 0.732273, 0.671431,
		38.825916, 31.966328, 34.533691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417587, 31.321730, 34.536308>,  <38.905598, 31.453735, 34.063690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417587, 31.321730, 34.536308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177189, 31.584362, 34.718605>,  <39.032948, 31.741941, 34.827984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.177189, 31.584362, 34.718605>,  <39.417587, 31.321730, 34.536308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177189, 31.584362, 34.718605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094940, -0.507530, 0.856388,
		0.793591, 0.557956, 0.242689,
		-0.600999, 0.656581, 0.455744,
		38.996891, 31.781336, 34.855328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705238, 31.425890, 35.205105>,  <39.417587, 31.321730, 34.536308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705238, 31.425890, 35.205105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333797, 31.572760, 35.226574>,  <39.110931, 31.660881, 35.239456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333797, 31.572760, 35.226574>,  <39.705238, 31.425890, 35.205105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333797, 31.572760, 35.226574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116448, -0.425685, 0.897347,
		0.352330, 0.827029, 0.438049,
		-0.928603, 0.367172, 0.053676,
		39.055218, 31.682911, 35.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689980, 31.673277, 35.843468>,  <39.705238, 31.425890, 35.205105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689980, 31.673277, 35.843468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301285, 31.625174, 35.762211>,  <39.068069, 31.596312, 35.713455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301285, 31.625174, 35.762211>,  <39.689980, 31.673277, 35.843468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301285, 31.625174, 35.762211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083440, -0.630018, 0.772085,
		-0.220834, 0.767213, 0.602176,
		-0.971736, -0.120257, -0.203145,
		39.009766, 31.589096, 35.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.533924, 35.007214, 28.421646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219112, 34.761292, 28.442049>,  <38.030228, 34.613739, 28.454290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219112, 34.761292, 28.442049>,  <38.533924, 35.007214, 28.421646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219112, 34.761292, 28.442049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028321, 0.046586, 0.998513,
		-0.616270, 0.787299, -0.019253,
		-0.787025, -0.614808, 0.051007,
		37.983006, 34.576847, 28.457352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177223, 35.195713, 29.077513>,  <38.533924, 35.007214, 28.421646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177223, 35.195713, 29.077513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002079, 34.843620, 29.004341>,  <37.896992, 34.632362, 28.960438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002079, 34.843620, 29.004341>,  <38.177223, 35.195713, 29.077513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002079, 34.843620, 29.004341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025124, -0.215374, 0.976208,
		-0.898690, 0.422851, 0.116420,
		-0.437865, -0.880233, -0.182931,
		37.870720, 34.579552, 28.949461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562283, 35.079872, 29.586512>,  <38.177223, 35.195713, 29.077513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562283, 35.079872, 29.586512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725830, 34.742157, 29.447945>,  <37.823959, 34.539528, 29.364805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725830, 34.742157, 29.447945>,  <37.562283, 35.079872, 29.586512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725830, 34.742157, 29.447945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135678, -0.319138, 0.937946,
		-0.902452, -0.430495, -0.015933,
		0.408866, -0.844290, -0.346415,
		37.848492, 34.488869, 29.344021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279289, 34.576328, 30.001270>,  <37.562283, 35.079872, 29.586512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279289, 34.576328, 30.001270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583469, 34.385452, 29.825085>,  <37.765976, 34.270927, 29.719374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583469, 34.385452, 29.825085>,  <37.279289, 34.576328, 30.001270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583469, 34.385452, 29.825085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189204, -0.486033, 0.853214,
		-0.621228, -0.732160, -0.279315,
		0.760445, -0.477193, -0.440465,
		37.811604, 34.242294, 29.692945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270569, 33.981205, 30.279007>,  <37.279289, 34.576328, 30.001270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270569, 33.981205, 30.279007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651131, 34.000957, 30.157427>,  <37.879467, 34.012810, 30.084478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651131, 34.000957, 30.157427>,  <37.270569, 33.981205, 30.279007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651131, 34.000957, 30.157427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299966, -0.371729, 0.878543,
		-0.069599, -0.927026, -0.368480,
		0.951407, 0.049386, -0.303949,
		37.936554, 34.015774, 30.066242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580921, 33.297268, 30.392923>,  <37.270569, 33.981205, 30.279007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580921, 33.297268, 30.392923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882629, 33.559452, 30.377680>,  <38.063652, 33.716763, 30.368534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882629, 33.559452, 30.377680>,  <37.580921, 33.297268, 30.392923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882629, 33.559452, 30.377680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403227, -0.416641, 0.814750,
		0.518157, -0.629908, -0.578558,
		0.754269, 0.655459, -0.038110,
		38.108910, 33.756088, 30.366247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150291, 33.034184, 30.559223>,  <37.580921, 33.297268, 30.392923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150291, 33.034184, 30.559223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289345, 33.407467, 30.595615>,  <38.372776, 33.631435, 30.617451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289345, 33.407467, 30.595615>,  <38.150291, 33.034184, 30.559223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289345, 33.407467, 30.595615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469600, -0.257271, 0.844563,
		0.811557, -0.250876, -0.527670,
		0.347635, 0.933206, 0.090979,
		38.393635, 33.687428, 30.622910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893112, 32.932590, 30.736357>,  <38.150291, 33.034184, 30.559223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893112, 32.932590, 30.736357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796360, 33.299908, 30.861729>,  <38.738308, 33.520298, 30.936953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796360, 33.299908, 30.861729>,  <38.893112, 32.932590, 30.736357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796360, 33.299908, 30.861729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405925, -0.197634, 0.892281,
		0.881317, 0.343054, -0.324954,
		-0.241879, 0.918289, 0.313432,
		38.723797, 33.575394, 30.955759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445244, 33.142231, 31.094704>,  <38.893112, 32.932590, 30.736357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445244, 33.142231, 31.094704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146530, 33.374748, 31.223955>,  <38.967304, 33.514259, 31.301506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146530, 33.374748, 31.223955>,  <39.445244, 33.142231, 31.094704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146530, 33.374748, 31.223955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229297, -0.231029, 0.945541,
		0.624291, 0.780206, 0.039238,
		-0.746782, 0.581296, 0.323128,
		38.922497, 33.549137, 31.320894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111721, 33.474075, 31.064524>,  <39.445244, 33.142231, 31.094704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111721, 33.474075, 31.064524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500729, 33.381500, 31.074615>,  <40.734135, 33.325954, 31.080669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500729, 33.381500, 31.074615>,  <40.111721, 33.474075, 31.064524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500729, 33.381500, 31.074615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166025, 0.613483, -0.772058,
		0.163210, 0.755032, 0.635051,
		0.972521, -0.231442, 0.025228,
		40.792484, 33.312069, 31.082184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488323, 34.086552, 30.822632>,  <40.111721, 33.474075, 31.064524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488323, 34.086552, 30.822632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721516, 33.775436, 30.728670>,  <40.861431, 33.588768, 30.672293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721516, 33.775436, 30.728670>,  <40.488323, 34.086552, 30.822632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721516, 33.775436, 30.728670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006347, 0.284749, -0.958581,
		0.812458, 0.560329, 0.161068,
		0.582985, -0.777785, -0.234903,
		40.896412, 33.542103, 30.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004913, 34.300739, 30.288168>,  <40.488323, 34.086552, 30.822632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004913, 34.300739, 30.288168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039810, 33.903252, 30.260159>,  <41.060749, 33.664757, 30.243353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039810, 33.903252, 30.260159>,  <41.004913, 34.300739, 30.288168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039810, 33.903252, 30.260159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160583, 0.083401, -0.983492,
		0.983160, 0.074554, 0.166851,
		0.087239, -0.993723, -0.070025,
		41.065983, 33.605133, 30.239151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530155, 34.171852, 29.820841>,  <41.004913, 34.300739, 30.288168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530155, 34.171852, 29.820841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327965, 33.826950, 29.808159>,  <41.206650, 33.620007, 29.800550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327965, 33.826950, 29.808159>,  <41.530155, 34.171852, 29.820841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327965, 33.826950, 29.808159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055400, 0.004234, -0.998455,
		0.861062, -0.506449, 0.045629,
		-0.505474, -0.862260, -0.031703,
		41.176323, 33.568272, 29.798647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918713, 33.689156, 29.425543>,  <41.530155, 34.171852, 29.820841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918713, 33.689156, 29.425543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539536, 33.563610, 29.404001>,  <41.312031, 33.488285, 29.391075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539536, 33.563610, 29.404001>,  <41.918713, 33.689156, 29.425543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539536, 33.563610, 29.404001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069921, -0.040150, -0.996744,
		0.310677, -0.948620, 0.060005,
		-0.947940, -0.313861, -0.053855,
		41.255154, 33.469452, 29.387844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913094, 33.178490, 28.966682>,  <41.918713, 33.689156, 29.425543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913094, 33.178490, 28.966682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527599, 33.282986, 28.988449>,  <41.296303, 33.345684, 29.001509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527599, 33.282986, 28.988449>,  <41.913094, 33.178490, 28.966682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527599, 33.282986, 28.988449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047734, 0.031857, -0.998352,
		-0.262541, -0.964748, -0.018232,
		-0.963740, 0.261238, 0.054415,
		41.238476, 33.361359, 29.004774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556545, 32.790878, 28.465088>,  <41.913094, 33.178490, 28.966682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556545, 32.790878, 28.465088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289219, 33.078949, 28.539602>,  <41.128822, 33.251793, 28.584311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289219, 33.078949, 28.539602>,  <41.556545, 32.790878, 28.465088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289219, 33.078949, 28.539602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178201, 0.088132, -0.980039,
		-0.722217, -0.688172, 0.069436,
		-0.668316, 0.720175, 0.186284,
		41.088726, 33.295002, 28.595488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017708, 32.772400, 28.004791>,  <41.556545, 32.790878, 28.465088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017708, 32.772400, 28.004791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953690, 33.156113, 28.097878>,  <40.915279, 33.386341, 28.153730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953690, 33.156113, 28.097878>,  <41.017708, 32.772400, 28.004791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953690, 33.156113, 28.097878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322873, 0.171913, -0.930698,
		-0.932812, -0.224095, 0.282213,
		-0.160048, 0.959285, 0.232717,
		40.905674, 33.443897, 28.167692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270565, 32.992435, 27.863558>,  <41.017708, 32.772400, 28.004791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270565, 32.992435, 27.863558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528133, 33.297764, 27.842777>,  <40.682674, 33.480961, 27.830309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528133, 33.297764, 27.842777>,  <40.270565, 32.992435, 27.863558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528133, 33.297764, 27.842777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424362, 0.299833, -0.854411,
		-0.636615, 0.572221, 0.516995,
		0.643924, 0.763324, -0.051950,
		40.721310, 33.526760, 27.827192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880573, 33.433014, 27.455347>,  <40.270565, 32.992435, 27.863558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880573, 33.433014, 27.455347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245968, 33.595741, 27.452747>,  <40.465202, 33.693378, 27.451187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245968, 33.595741, 27.452747>,  <39.880573, 33.433014, 27.455347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245968, 33.595741, 27.452747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141379, 0.302397, -0.942639,
		-0.381521, 0.862005, 0.333751,
		0.913485, 0.406822, -0.006498,
		40.520012, 33.717789, 27.450798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761097, 34.131386, 27.157429>,  <39.880573, 33.433014, 27.455347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761097, 34.131386, 27.157429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156441, 34.070595, 27.160379>,  <40.393646, 34.034119, 27.162149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156441, 34.070595, 27.160379>,  <39.761097, 34.131386, 27.157429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156441, 34.070595, 27.160379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070861, 0.416834, -0.906216,
		0.134649, 0.896188, 0.422750,
		0.988356, -0.151978, 0.007379,
		40.452950, 34.025002, 27.162594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021179, 34.702583, 26.971624>,  <39.761097, 34.131386, 27.157429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021179, 34.702583, 26.971624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306160, 34.436657, 26.881796>,  <40.477150, 34.277100, 26.827898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306160, 34.436657, 26.881796>,  <40.021179, 34.702583, 26.971624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306160, 34.436657, 26.881796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031007, 0.349544, -0.936406,
		0.701035, 0.660182, 0.269647,
		0.712452, -0.664815, -0.224573,
		40.519897, 34.237213, 26.814425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618649, 35.087212, 26.746208>,  <40.021179, 34.702583, 26.971624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618649, 35.087212, 26.746208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616150, 34.720848, 26.585669>,  <40.614651, 34.501030, 26.489346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616150, 34.720848, 26.585669>,  <40.618649, 35.087212, 26.746208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616150, 34.720848, 26.585669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082579, 0.399511, -0.913002,
		0.996565, -0.038849, 0.073138,
		-0.006250, -0.915905, -0.401347,
		40.614273, 34.446075, 26.465265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186501, 35.105949, 26.227844>,  <40.618649, 35.087212, 26.746208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186501, 35.105949, 26.227844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939548, 34.802971, 26.142881>,  <40.791378, 34.621185, 26.091904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939548, 34.802971, 26.142881>,  <41.186501, 35.105949, 26.227844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939548, 34.802971, 26.142881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162562, 0.141340, -0.976523,
		0.769683, -0.637417, 0.035871,
		-0.617383, -0.757444, -0.212407,
		40.754333, 34.575737, 26.079159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.729900, 30.219894, 23.676764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741833, 30.579872, 23.850756>,  <35.748993, 30.795858, 23.955151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741833, 30.579872, 23.850756>,  <35.729900, 30.219894, 23.676764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741833, 30.579872, 23.850756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207615, -0.431263, 0.878014,
		0.977756, 0.064117, -0.199707,
		0.029831, 0.899945, 0.434982,
		35.750782, 30.849855, 23.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382061, 30.350039, 24.041437>,  <35.729900, 30.219894, 23.676764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382061, 30.350039, 24.041437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113827, 30.569391, 24.241274>,  <35.952885, 30.701002, 24.361176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113827, 30.569391, 24.241274>,  <36.382061, 30.350039, 24.041437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113827, 30.569391, 24.241274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330855, -0.381682, 0.863049,
		0.663965, 0.744041, 0.074516,
		-0.670586, 0.548381, 0.499593,
		35.912651, 30.733906, 24.391151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682102, 30.579058, 24.676201>,  <36.382061, 30.350039, 24.041437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682102, 30.579058, 24.676201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294167, 30.658621, 24.732555>,  <36.061405, 30.706358, 24.766367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.294167, 30.658621, 24.732555>,  <36.682102, 30.579058, 24.676201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294167, 30.658621, 24.732555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083002, -0.273953, 0.958155,
		0.229179, 0.940950, 0.249181,
		-0.969839, 0.198906, 0.140885,
		36.003216, 30.718292, 24.774820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665115, 31.174723, 25.235571>,  <36.682102, 30.579058, 24.676201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665115, 31.174723, 25.235571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320847, 30.971540, 25.221569>,  <36.114285, 30.849632, 25.213167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320847, 30.971540, 25.221569>,  <36.665115, 31.174723, 25.235571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320847, 30.971540, 25.221569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140532, -0.303070, 0.942549,
		-0.489381, 0.806307, 0.332228,
		-0.860672, -0.507954, -0.035005,
		36.062645, 30.819155, 25.211067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243813, 31.384914, 25.910410>,  <36.665115, 31.174723, 25.235571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243813, 31.384914, 25.910410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057308, 31.046560, 25.806812>,  <35.945404, 30.843548, 25.744654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.057308, 31.046560, 25.806812>,  <36.243813, 31.384914, 25.910410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057308, 31.046560, 25.806812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047873, -0.268208, 0.962171,
		-0.883351, 0.461021, 0.084560,
		-0.466260, -0.845887, -0.258992,
		35.917431, 30.792795, 25.729115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571213, 31.306620, 26.375576>,  <36.243813, 31.384914, 25.910410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571213, 31.306620, 26.375576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685429, 30.948183, 26.239639>,  <35.753956, 30.733122, 26.158077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.685429, 30.948183, 26.239639>,  <35.571213, 31.306620, 26.375576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685429, 30.948183, 26.239639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013158, -0.350907, 0.936318,
		-0.958278, -0.271824, -0.088406,
		0.285536, -0.896090, -0.339842,
		35.771088, 30.679356, 26.137686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219524, 30.855503, 26.754992>,  <35.571213, 31.306620, 26.375576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219524, 30.855503, 26.754992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491516, 30.609186, 26.595778>,  <35.654709, 30.461395, 26.500248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491516, 30.609186, 26.595778>,  <35.219524, 30.855503, 26.754992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491516, 30.609186, 26.595778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049198, -0.579944, 0.813169,
		-0.731583, -0.533352, -0.424644,
		0.679975, -0.615792, -0.398037,
		35.695507, 30.424448, 26.476366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902431, 30.183100, 26.747328>,  <35.219524, 30.855503, 26.754992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902431, 30.183100, 26.747328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297565, 30.124058, 26.727772>,  <35.534645, 30.088633, 26.716038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.297565, 30.124058, 26.727772>,  <34.902431, 30.183100, 26.747328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297565, 30.124058, 26.727772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060994, -0.657050, 0.751376,
		-0.143030, -0.739255, -0.658061,
		0.987838, -0.147607, -0.048888,
		35.593918, 30.079775, 26.713106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980145, 29.499439, 26.885452>,  <34.902431, 30.183100, 26.747328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980145, 29.499439, 26.885452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359222, 29.620174, 26.926971>,  <35.586670, 29.692616, 26.951883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.359222, 29.620174, 26.926971>,  <34.980145, 29.499439, 26.885452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359222, 29.620174, 26.926971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073731, -0.523408, 0.848886,
		0.310555, -0.796829, -0.518284,
		0.947691, 0.301840, 0.103796,
		35.643528, 29.710726, 26.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413616, 28.861622, 26.985014>,  <34.980145, 29.499439, 26.885452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413616, 28.861622, 26.985014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627480, 29.169466, 27.124638>,  <35.755798, 29.354172, 27.208412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627480, 29.169466, 27.124638>,  <35.413616, 28.861622, 26.985014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627480, 29.169466, 27.124638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243014, -0.535627, 0.808732,
		0.809374, -0.347567, -0.473403,
		0.534656, 0.769611, 0.349059,
		35.787876, 29.400349, 27.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018600, 28.600962, 27.183353>,  <35.413616, 28.861622, 26.985014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018600, 28.600962, 27.183353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978580, 28.934715, 27.400166>,  <35.954571, 29.134968, 27.530252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.978580, 28.934715, 27.400166>,  <36.018600, 28.600962, 27.183353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978580, 28.934715, 27.400166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443947, -0.450096, 0.774806,
		0.890450, 0.318151, -0.325390,
		-0.100048, 0.834382, 0.542030,
		35.948566, 29.185030, 27.562775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666790, 28.556923, 27.542383>,  <36.018600, 28.600962, 27.183353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666790, 28.556923, 27.542383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436268, 28.808048, 27.751659>,  <36.297955, 28.958723, 27.877224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436268, 28.808048, 27.751659>,  <36.666790, 28.556923, 27.542383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436268, 28.808048, 27.751659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332153, -0.404994, 0.851853,
		0.746693, 0.664704, 0.024869,
		-0.576302, 0.627812, 0.523189,
		36.263378, 28.996391, 27.908617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107231, 28.679853, 28.140593>,  <36.666790, 28.556923, 27.542383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107231, 28.679853, 28.140593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746849, 28.823517, 28.237984>,  <36.530621, 28.909716, 28.296417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.746849, 28.823517, 28.237984>,  <37.107231, 28.679853, 28.140593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746849, 28.823517, 28.237984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151930, -0.264482, 0.952348,
		0.406438, 0.895017, 0.183720,
		-0.900958, 0.359158, 0.243476,
		36.476562, 28.931265, 28.311026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158054, 29.085798, 28.784414>,  <37.107231, 28.679853, 28.140593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158054, 29.085798, 28.784414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786705, 28.939734, 28.756750>,  <36.563896, 28.852095, 28.740150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.786705, 28.939734, 28.756750>,  <37.158054, 29.085798, 28.784414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786705, 28.939734, 28.756750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069724, -0.353912, 0.932676,
		-0.365055, 0.861048, 0.354023,
		-0.928371, -0.365162, -0.069162,
		36.508194, 28.830185, 28.736002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578926, 29.642746, 28.963612>,  <37.158054, 29.085798, 28.784414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578926, 29.642746, 28.963612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959141, 29.518671, 28.970207>,  <38.187267, 29.444225, 28.974165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959141, 29.518671, 28.970207>,  <37.578926, 29.642746, 28.963612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959141, 29.518671, 28.970207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062922, 0.140291, -0.988109,
		0.304186, 0.940267, 0.152869,
		0.950532, -0.310188, 0.016489,
		38.244301, 29.425615, 28.975153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960701, 30.169933, 28.655605>,  <37.578926, 29.642746, 28.963612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960701, 30.169933, 28.655605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194176, 29.847939, 28.613073>,  <38.334259, 29.654741, 28.587555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.194176, 29.847939, 28.613073>,  <37.960701, 30.169933, 28.655605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194176, 29.847939, 28.613073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204166, 0.272243, -0.940319,
		0.785893, 0.527142, 0.323255,
		0.583686, -0.804988, -0.106329,
		38.369282, 29.606441, 28.581175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575165, 30.363873, 28.377899>,  <37.960701, 30.169933, 28.655605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575165, 30.363873, 28.377899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559025, 29.972935, 28.294788>,  <38.549339, 29.738373, 28.244923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.559025, 29.972935, 28.294788>,  <38.575165, 30.363873, 28.377899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559025, 29.972935, 28.294788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271389, 0.189408, -0.943648,
		0.961623, -0.094469, 0.257597,
		-0.040354, -0.977343, -0.207777,
		38.546917, 29.679731, 28.232456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198082, 30.301031, 27.950657>,  <38.575165, 30.363873, 28.377899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198082, 30.301031, 27.950657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.988247, 29.965796, 27.890772>,  <38.862347, 29.764654, 27.854841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.988247, 29.965796, 27.890772>,  <39.198082, 30.301031, 27.950657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988247, 29.965796, 27.890772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262695, 0.007923, -0.964846,
		0.809812, -0.545479, 0.216005,
		-0.524592, -0.838087, -0.149711,
		38.830868, 29.714369, 27.845860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547783, 29.987104, 27.512329>,  <39.198082, 30.301031, 27.950657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547783, 29.987104, 27.512329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180939, 29.839262, 27.452597>,  <38.960831, 29.750557, 27.416758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180939, 29.839262, 27.452597>,  <39.547783, 29.987104, 27.512329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180939, 29.839262, 27.452597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102308, 0.143824, -0.984301,
		0.385279, -0.917991, -0.094090,
		-0.917111, -0.369605, -0.149330,
		38.905804, 29.728380, 27.407797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577621, 29.815023, 26.809883>,  <39.547783, 29.987104, 27.512329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577621, 29.815023, 26.809883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181667, 29.778273, 26.853109>,  <38.944096, 29.756222, 26.879045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181667, 29.778273, 26.853109>,  <39.577621, 29.815023, 26.809883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181667, 29.778273, 26.853109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116215, 0.088540, -0.989270,
		0.081290, -0.991829, -0.098318,
		-0.989892, -0.091844, 0.108068,
		38.884701, 29.750710, 26.885529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403381, 29.494028, 26.244207>,  <39.577621, 29.815023, 26.809883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403381, 29.494028, 26.244207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047173, 29.637995, 26.355515>,  <38.833447, 29.724375, 26.422298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.047173, 29.637995, 26.355515>,  <39.403381, 29.494028, 26.244207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047173, 29.637995, 26.355515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057126, 0.518354, -0.853256,
		-0.451343, -0.775738, -0.441044,
		-0.890520, 0.359916, 0.278270,
		38.780018, 29.745970, 26.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961262, 29.323441, 25.729921>,  <39.403381, 29.494028, 26.244207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961262, 29.323441, 25.729921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857731, 29.667326, 25.906059>,  <38.795612, 29.873657, 26.011742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857731, 29.667326, 25.906059>,  <38.961262, 29.323441, 25.729921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857731, 29.667326, 25.906059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056690, 0.468615, -0.881582,
		-0.964258, -0.203215, -0.170028,
		-0.258828, 0.859712, 0.440345,
		38.780083, 29.925240, 26.038162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455109, 29.584351, 25.327343>,  <38.961262, 29.323441, 25.729921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455109, 29.584351, 25.327343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574886, 29.901089, 25.540251>,  <38.646751, 30.091131, 25.667995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.574886, 29.901089, 25.540251>,  <38.455109, 29.584351, 25.327343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574886, 29.901089, 25.540251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045361, 0.545423, -0.836932,
		-0.953035, 0.274758, 0.127404,
		0.299443, 0.791847, 0.532271,
		38.664719, 30.138643, 25.699932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136028, 30.111616, 24.990036>,  <38.455109, 29.584351, 25.327343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136028, 30.111616, 24.990036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404556, 30.302143, 25.217176>,  <38.565674, 30.416460, 25.353460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404556, 30.302143, 25.217176>,  <38.136028, 30.111616, 24.990036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404556, 30.302143, 25.217176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172211, 0.644946, -0.744572,
		-0.720887, 0.597634, 0.350936,
		0.671317, 0.476317, 0.567852,
		38.605949, 30.445038, 25.387531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968330, 30.856392, 25.053318>,  <38.136028, 30.111616, 24.990036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968330, 30.856392, 25.053318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362968, 30.794046, 25.072649>,  <38.599751, 30.756639, 25.084248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362968, 30.794046, 25.072649>,  <37.968330, 30.856392, 25.053318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362968, 30.794046, 25.072649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144381, 0.695770, -0.703604,
		0.076042, 0.701150, 0.708948,
		0.986596, -0.155862, 0.048325,
		38.658947, 30.747288, 25.087147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220402, 31.557707, 25.207968>,  <37.968330, 30.856392, 25.053318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220402, 31.557707, 25.207968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491596, 31.321667, 25.032644>,  <38.654312, 31.180042, 24.927450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.491596, 31.321667, 25.032644>,  <38.220402, 31.557707, 25.207968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491596, 31.321667, 25.032644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030593, 0.573113, -0.818905,
		0.734436, 0.568618, 0.370511,
		0.677988, -0.590098, -0.438310,
		38.694992, 31.144638, 24.901152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769318, 31.867575, 24.855001>,  <38.220402, 31.557707, 25.207968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769318, 31.867575, 24.855001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.800423, 31.520699, 24.658253>,  <38.819084, 31.312572, 24.540203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.800423, 31.520699, 24.658253>,  <38.769318, 31.867575, 24.855001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800423, 31.520699, 24.658253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083265, 0.497291, -0.863579,
		0.993489, 0.026198, 0.110877,
		0.077762, -0.867189, -0.491871,
		38.823750, 31.260542, 24.510691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299568, 32.052986, 24.314714>,  <38.769318, 31.867575, 24.855001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299568, 32.052986, 24.314714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110004, 31.719601, 24.201044>,  <38.996265, 31.519569, 24.132843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110004, 31.719601, 24.201044>,  <39.299568, 32.052986, 24.314714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110004, 31.719601, 24.201044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019063, 0.332349, -0.942964,
		0.880368, -0.441462, -0.173391,
		-0.473909, -0.833460, -0.284174,
		38.967831, 31.469563, 24.115791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931793, 31.687096, 24.222717>,  <39.299568, 32.052986, 24.314714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931793, 31.687096, 24.222717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325272, 31.752890, 24.193619>,  <40.561359, 31.792366, 24.176159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325272, 31.752890, 24.193619>,  <39.931793, 31.687096, 24.222717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325272, 31.752890, 24.193619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160354, -0.618922, 0.768910,
		0.081449, -0.768037, -0.635205,
		0.983693, 0.164484, -0.072747,
		40.620380, 31.802235, 24.171795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215370, 31.035112, 24.107405>,  <39.931793, 31.687096, 24.222717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215370, 31.035112, 24.107405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509315, 31.268213, 24.246183>,  <40.685684, 31.408073, 24.329451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.509315, 31.268213, 24.246183>,  <40.215370, 31.035112, 24.107405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509315, 31.268213, 24.246183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161416, -0.647144, 0.745084,
		0.658724, -0.491534, -0.569630,
		0.734866, 0.582752, 0.346947,
		40.729774, 31.443039, 24.350267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744724, 30.551271, 24.294235>,  <40.215370, 31.035112, 24.107405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744724, 30.551271, 24.294235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834202, 30.890528, 24.486326>,  <40.887886, 31.094082, 24.601582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.834202, 30.890528, 24.486326>,  <40.744724, 30.551271, 24.294235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834202, 30.890528, 24.486326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223121, -0.524191, 0.821852,
		0.948778, -0.076692, -0.306495,
		0.223691, 0.848140, 0.480229,
		40.901310, 31.144970, 24.630396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433628, 30.437691, 24.543829>,  <40.744724, 30.551271, 24.294235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433628, 30.437691, 24.543829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288731, 30.727247, 24.778696>,  <41.201794, 30.900980, 24.919617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.288731, 30.727247, 24.778696>,  <41.433628, 30.437691, 24.543829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288731, 30.727247, 24.778696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108041, -0.593094, 0.797851,
		0.925801, 0.352454, 0.136634,
		-0.362243, 0.723889, 0.587167,
		41.180058, 30.944414, 24.954845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941216, 30.608171, 25.081068>,  <41.433628, 30.437691, 24.543829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941216, 30.608171, 25.081068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.569969, 30.687117, 25.207333>,  <41.347221, 30.734484, 25.283092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.569969, 30.687117, 25.207333>,  <41.941216, 30.608171, 25.081068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569969, 30.687117, 25.207333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189938, -0.478217, 0.857456,
		0.320184, 0.855778, 0.406357,
		-0.928119, 0.197361, 0.315663,
		41.291534, 30.746325, 25.302031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094315, 30.758867, 25.712067>,  <41.941216, 30.608171, 25.081068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094315, 30.758867, 25.712067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.695309, 30.731943, 25.720346>,  <41.455906, 30.715788, 25.725315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.695309, 30.731943, 25.720346>,  <42.094315, 30.758867, 25.712067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695309, 30.731943, 25.720346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037090, -0.252281, 0.966943,
		-0.059865, 0.965310, 0.254152,
		-0.997517, -0.067312, 0.020701,
		41.396053, 30.711750, 25.726557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927429, 30.969646, 26.351044>,  <42.094315, 30.758867, 25.712067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927429, 30.969646, 26.351044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600178, 30.777971, 26.223892>,  <41.403828, 30.662966, 26.147602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.600178, 30.777971, 26.223892>,  <41.927429, 30.969646, 26.351044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600178, 30.777971, 26.223892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085929, -0.444713, 0.891542,
		-0.568578, 0.756711, 0.322656,
		-0.818129, -0.479186, -0.317877,
		41.354740, 30.634216, 26.128529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483059, 31.023136, 26.898907>,  <41.927429, 30.969646, 26.351044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483059, 31.023136, 26.898907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356239, 30.711987, 26.681875>,  <41.280148, 30.525297, 26.551657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.356239, 30.711987, 26.681875>,  <41.483059, 31.023136, 26.898907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356239, 30.711987, 26.681875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025428, -0.564917, 0.824756,
		-0.948068, 0.275285, 0.159327,
		-0.317049, -0.777874, -0.542580,
		41.261124, 30.478624, 26.519102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789726, 30.813284, 27.232067>,  <41.483059, 31.023136, 26.898907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789726, 30.813284, 27.232067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909992, 30.493782, 27.023609>,  <40.982151, 30.302082, 26.898535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909992, 30.493782, 27.023609>,  <40.789726, 30.813284, 27.232067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909992, 30.493782, 27.023609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066101, -0.527664, 0.846878,
		-0.951437, -0.289074, -0.105850,
		0.300663, -0.798754, -0.521147,
		41.000191, 30.254156, 26.867266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367069, 30.284830, 27.502033>,  <40.789726, 30.813284, 27.232067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367069, 30.284830, 27.502033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695644, 30.129051, 27.335382>,  <40.892788, 30.035583, 27.235392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695644, 30.129051, 27.335382>,  <40.367069, 30.284830, 27.502033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695644, 30.129051, 27.335382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252602, -0.406517, 0.878030,
		-0.511312, -0.826483, -0.235552,
		0.821433, -0.389447, -0.416629,
		40.942074, 30.012218, 27.210394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401707, 29.583525, 27.739170>,  <40.367069, 30.284830, 27.502033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401707, 29.583525, 27.739170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774014, 29.677887, 27.627441>,  <40.997398, 29.734505, 27.560404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.774014, 29.677887, 27.627441>,  <40.401707, 29.583525, 27.739170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774014, 29.677887, 27.627441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338857, -0.269754, 0.901337,
		0.137282, -0.933585, -0.331016,
		0.930768, 0.235904, -0.279319,
		41.053246, 29.748659, 27.543646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793232, 29.142624, 28.120918>,  <40.401707, 29.583525, 27.739170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793232, 29.142624, 28.120918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078117, 29.401991, 28.013353>,  <41.249046, 29.557611, 27.948814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.078117, 29.401991, 28.013353>,  <40.793232, 29.142624, 28.120918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078117, 29.401991, 28.013353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532140, -0.248883, 0.809249,
		0.457804, -0.719453, -0.522305,
		0.712210, 0.648417, -0.268910,
		41.291779, 29.596516, 27.932680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307728, 28.795191, 28.259102>,  <40.793232, 29.142624, 28.120918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307728, 28.795191, 28.259102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.411385, 29.181295, 28.272469>,  <41.473579, 29.412958, 28.280489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.411385, 29.181295, 28.272469>,  <41.307728, 28.795191, 28.259102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411385, 29.181295, 28.272469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437016, -0.148037, 0.887188,
		0.861316, -0.215300, -0.460197,
		0.259138, 0.965262, 0.033417,
		41.489124, 29.470875, 28.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872456, 28.875067, 28.636341>,  <41.307728, 28.795191, 28.259102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872456, 28.875067, 28.636341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778233, 29.263531, 28.651098>,  <41.721699, 29.496609, 28.659952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.778233, 29.263531, 28.651098>,  <41.872456, 28.875067, 28.636341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778233, 29.263531, 28.651098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319130, 0.041440, 0.946804,
		0.917969, 0.234802, -0.319688,
		-0.235560, 0.971159, 0.036892,
		41.707565, 29.554878, 28.662167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.530094, 34.760498, 25.663345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.150848, 34.634830, 25.643845>,  <40.923302, 34.559429, 25.632145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.150848, 34.634830, 25.643845>,  <41.530094, 34.760498, 25.663345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150848, 34.634830, 25.643845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060518, -0.027799, -0.997780,
		0.312118, -0.948959, 0.045370,
		-0.948114, -0.314170, -0.048752,
		40.866413, 34.540581, 25.629219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532833, 34.337574, 25.163258>,  <41.530094, 34.760498, 25.663345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532833, 34.337574, 25.163258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146381, 34.439102, 25.181927>,  <40.914513, 34.500019, 25.193129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.146381, 34.439102, 25.181927>,  <41.532833, 34.337574, 25.163258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146381, 34.439102, 25.181927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021547, 0.100876, -0.994666,
		-0.257173, -0.961977, -0.091990,
		-0.966125, 0.253819, 0.046671,
		40.856544, 34.515247, 25.195929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326855, 34.165764, 24.506393>,  <41.532833, 34.337574, 25.163258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326855, 34.165764, 24.506393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.024372, 34.397659, 24.627756>,  <40.842884, 34.536797, 24.700575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.024372, 34.397659, 24.627756>,  <41.326855, 34.165764, 24.506393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024372, 34.397659, 24.627756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115795, 0.337804, -0.934066,
		-0.644010, -0.741477, -0.188317,
		-0.756203, 0.579742, 0.303409,
		40.797512, 34.571583, 24.718779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664986, 34.028439, 24.064419>,  <41.326855, 34.165764, 24.506393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664986, 34.028439, 24.064419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 34.398422, 24.205517>,  <40.574421, 34.620411, 24.290174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608383, 34.398422, 24.205517>,  <40.664986, 34.028439, 24.064419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608383, 34.398422, 24.205517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398653, 0.272914, -0.875553,
		-0.906119, -0.264518, 0.330119,
		-0.141505, 0.924959, 0.352743,
		40.565933, 34.675911, 24.311340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121403, 34.215889, 23.630056>,  <40.664986, 34.028439, 24.064419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121403, 34.215889, 23.630056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247692, 34.555367, 23.799780>,  <40.323463, 34.759052, 23.901613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247692, 34.555367, 23.799780>,  <40.121403, 34.215889, 23.630056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247692, 34.555367, 23.799780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251340, 0.506009, -0.825096,
		-0.914959, 0.153853, 0.373068,
		0.315719, 0.848696, 0.424308,
		40.342407, 34.809975, 23.927073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686329, 34.736118, 23.311235>,  <40.121403, 34.215889, 23.630056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686329, 34.736118, 23.311235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001350, 34.920868, 23.474421>,  <40.190361, 35.031719, 23.572330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.001350, 34.920868, 23.474421>,  <39.686329, 34.736118, 23.311235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001350, 34.920868, 23.474421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041054, 0.699859, -0.713100,
		-0.614881, 0.544855, 0.570136,
		0.787551, 0.461877, 0.407962,
		40.237617, 35.059433, 23.596809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549095, 35.431362, 23.340549>,  <39.686329, 34.736118, 23.311235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549095, 35.431362, 23.340549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948372, 35.426254, 23.364069>,  <40.187939, 35.423191, 23.378181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.948372, 35.426254, 23.364069>,  <39.549095, 35.431362, 23.340549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948372, 35.426254, 23.364069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051553, 0.685410, -0.726330,
		-0.031029, 0.728046, 0.684826,
		0.998188, -0.012767, 0.058801,
		40.247829, 35.422424, 23.381710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745739, 36.083954, 23.353651>,  <39.549095, 35.431362, 23.340549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745739, 36.083954, 23.353651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061893, 35.876999, 23.222443>,  <40.251587, 35.752827, 23.143717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.061893, 35.876999, 23.222443>,  <39.745739, 36.083954, 23.353651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061893, 35.876999, 23.222443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224411, 0.742766, -0.630824,
		0.570023, 0.424984, 0.703180,
		0.790388, -0.517386, -0.328022,
		40.299011, 35.721783, 23.124037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290951, 36.516956, 23.143238>,  <39.745739, 36.083954, 23.353651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290951, 36.516956, 23.143238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.371628, 36.175453, 22.951229>,  <40.420036, 35.970551, 22.836023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.371628, 36.175453, 22.951229>,  <40.290951, 36.516956, 23.143238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371628, 36.175453, 22.951229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290553, 0.520189, -0.803108,
		0.935360, 0.022512, 0.352981,
		0.201696, -0.853754, -0.480023,
		40.432137, 35.919327, 22.807222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870640, 36.614082, 22.867434>,  <40.290951, 36.516956, 23.143238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870640, 36.614082, 22.867434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706772, 36.317200, 22.655285>,  <40.608452, 36.139069, 22.527996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706772, 36.317200, 22.655285>,  <40.870640, 36.614082, 22.867434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706772, 36.317200, 22.655285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310110, 0.433467, -0.846132,
		0.857904, -0.511111, 0.052586,
		-0.409673, -0.742208, -0.530374,
		40.583870, 36.094536, 22.496172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383076, 36.471497, 22.390959>,  <40.870640, 36.614082, 22.867434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383076, 36.471497, 22.390959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058285, 36.315441, 22.217300>,  <40.863411, 36.221806, 22.113106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.058285, 36.315441, 22.217300>,  <41.383076, 36.471497, 22.390959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058285, 36.315441, 22.217300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383816, 0.203492, -0.900709,
		0.439751, -0.897986, -0.015487,
		-0.811976, -0.390143, -0.434147,
		40.814693, 36.198399, 22.087057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665897, 36.165627, 21.753080>,  <41.383076, 36.471497, 22.390959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665897, 36.165627, 21.753080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270943, 36.192074, 21.695524>,  <41.033970, 36.207943, 21.660990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.270943, 36.192074, 21.695524>,  <41.665897, 36.165627, 21.753080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270943, 36.192074, 21.695524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158249, 0.445195, -0.881339,
		0.005785, -0.892989, -0.450042,
		-0.987382, 0.066120, -0.143890,
		40.974728, 36.211910, 21.652357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393776, 35.865631, 21.083035>,  <41.665897, 36.165627, 21.753080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393776, 35.865631, 21.083035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145851, 36.151917, 21.211773>,  <40.997097, 36.323689, 21.289017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.145851, 36.151917, 21.211773>,  <41.393776, 35.865631, 21.083035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145851, 36.151917, 21.211773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164264, 0.519367, -0.838615,
		-0.767367, -0.466915, -0.439476,
		-0.619811, 0.715716, 0.321848,
		40.959908, 36.366631, 21.308327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214577, 36.093136, 20.467602>,  <41.393776, 35.865631, 21.083035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214577, 36.093136, 20.467602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078259, 36.373646, 20.718067>,  <40.996468, 36.541950, 20.868347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.078259, 36.373646, 20.718067>,  <41.214577, 36.093136, 20.467602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078259, 36.373646, 20.718067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121843, 0.627471, -0.769047,
		-0.932210, -0.338378, -0.128391,
		-0.340791, 0.701270, 0.626164,
		40.976021, 36.584026, 20.905916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584965, 35.925911, 20.136389>,  <41.214577, 36.093136, 20.467602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584965, 35.925911, 20.136389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414875, 35.646751, 19.905870>,  <40.312820, 35.479256, 19.767559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.414875, 35.646751, 19.905870>,  <40.584965, 35.925911, 20.136389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414875, 35.646751, 19.905870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304546, -0.709928, 0.635023,
		-0.852314, 0.094516, 0.514420,
		-0.425220, -0.697904, -0.576297,
		40.287308, 35.437382, 19.732981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246544, 35.529701, 20.616838>,  <40.584965, 35.925911, 20.136389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246544, 35.529701, 20.616838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268887, 35.303429, 20.287746>,  <40.282291, 35.167664, 20.090292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.268887, 35.303429, 20.287746>,  <40.246544, 35.529701, 20.616838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268887, 35.303429, 20.287746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238890, -0.792512, 0.561121,
		-0.969439, -0.227883, 0.090871,
		0.055854, -0.565681, -0.822731,
		40.285645, 35.133724, 20.040928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813969, 34.931511, 20.714796>,  <40.246544, 35.529701, 20.616838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813969, 34.931511, 20.714796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084538, 34.819134, 20.442467>,  <40.246880, 34.751709, 20.279070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084538, 34.819134, 20.442467>,  <39.813969, 34.931511, 20.714796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084538, 34.819134, 20.442467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189212, -0.827075, 0.529288,
		-0.711790, -0.486844, -0.506298,
		0.676427, -0.280944, -0.680820,
		40.287464, 34.734852, 20.238220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607449, 34.332554, 20.605864>,  <39.813969, 34.931511, 20.714796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607449, 34.332554, 20.605864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995697, 34.336945, 20.509720>,  <40.228645, 34.339581, 20.452034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.995697, 34.336945, 20.509720>,  <39.607449, 34.332554, 20.605864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995697, 34.336945, 20.509720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150559, -0.806938, 0.571124,
		-0.187683, -0.590533, -0.784885,
		0.970622, 0.010981, -0.240359,
		40.286884, 34.340240, 20.437613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840096, 33.552063, 20.528891>,  <39.607449, 34.332554, 20.605864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840096, 33.552063, 20.528891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201820, 33.720619, 20.556187>,  <40.418854, 33.821754, 20.572563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.201820, 33.720619, 20.556187>,  <39.840096, 33.552063, 20.528891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201820, 33.720619, 20.556187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309085, -0.756609, 0.576202,
		0.294436, -0.499973, -0.814453,
		0.904308, 0.421390, 0.068238,
		40.473114, 33.847034, 20.576658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350273, 32.924961, 20.444902>,  <39.840096, 33.552063, 20.528891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350273, 32.924961, 20.444902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.507179, 33.242687, 20.630459>,  <40.601322, 33.433323, 20.741793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.507179, 33.242687, 20.630459>,  <40.350273, 32.924961, 20.444902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507179, 33.242687, 20.630459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319905, -0.590629, 0.740822,
		0.862434, -0.142195, -0.485786,
		0.392261, 0.794316, 0.463890,
		40.624859, 33.480984, 20.769627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756145, 32.630936, 20.895199>,  <40.350273, 32.924961, 20.444902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756145, 32.630936, 20.895199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.755726, 33.005199, 21.036356>,  <40.755474, 33.229759, 21.121050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.755726, 33.005199, 21.036356>,  <40.756145, 32.630936, 20.895199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755726, 33.005199, 21.036356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151363, -0.348680, 0.924939,
		0.988478, 0.054387, -0.141258,
		-0.001050, 0.935663, 0.352894,
		40.755409, 33.285900, 21.142223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378426, 32.757595, 21.192812>,  <40.756145, 32.630936, 20.895199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378426, 32.757595, 21.192812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167942, 33.037922, 21.385458>,  <41.041653, 33.206120, 21.501045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.167942, 33.037922, 21.385458>,  <41.378426, 32.757595, 21.192812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167942, 33.037922, 21.385458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276829, -0.394335, 0.876280,
		0.804032, 0.594433, 0.013496,
		-0.526211, 0.700821, 0.481614,
		41.010078, 33.248169, 21.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833675, 33.005070, 21.747320>,  <41.378426, 32.757595, 21.192812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833675, 33.005070, 21.747320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453476, 33.072372, 21.851816>,  <41.225357, 33.112755, 21.914515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453476, 33.072372, 21.851816>,  <41.833675, 33.005070, 21.747320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453476, 33.072372, 21.851816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137704, -0.525576, 0.839528,
		0.278556, 0.833943, 0.476389,
		-0.950497, 0.168255, 0.261240,
		41.168327, 33.122849, 21.930187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807335, 33.336533, 22.447002>,  <41.833675, 33.005070, 21.747320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807335, 33.336533, 22.447002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440369, 33.181934, 22.409119>,  <41.220188, 33.089176, 22.386389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.440369, 33.181934, 22.409119>,  <41.807335, 33.336533, 22.447002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440369, 33.181934, 22.409119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119005, -0.493598, 0.861510,
		-0.379715, 0.779093, 0.498830,
		-0.917417, -0.386492, -0.094710,
		41.165142, 33.065987, 22.380705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648373, 33.159752, 23.076609>,  <41.807335, 33.336533, 22.447002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648373, 33.159752, 23.076609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334263, 32.982430, 22.903719>,  <41.145798, 32.876034, 22.799986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.334263, 32.982430, 22.903719>,  <41.648373, 33.159752, 23.076609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334263, 32.982430, 22.903719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196652, -0.483367, 0.853044,
		-0.587085, 0.754873, 0.292399,
		-0.785276, -0.443309, -0.432224,
		41.098679, 32.849438, 22.774052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977547, 33.335430, 23.401457>,  <41.648373, 33.159752, 23.076609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977547, 33.335430, 23.401457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949074, 32.976906, 23.226387>,  <40.931992, 32.761791, 23.121346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.949074, 32.976906, 23.226387>,  <40.977547, 33.335430, 23.401457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949074, 32.976906, 23.226387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293978, -0.400444, 0.867883,
		-0.953158, 0.190443, -0.234992,
		-0.071182, -0.896312, -0.437672,
		40.927719, 32.708012, 23.095085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382088, 32.970814, 23.676325>,  <40.977547, 33.335430, 23.401457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382088, 32.970814, 23.676325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624866, 32.677040, 23.554855>,  <40.770535, 32.500774, 23.481974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.624866, 32.677040, 23.554855>,  <40.382088, 32.970814, 23.676325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624866, 32.677040, 23.554855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070482, -0.330857, 0.941045,
		-0.791610, -0.592569, -0.149049,
		0.606948, -0.734436, -0.303675,
		40.806950, 32.456711, 23.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035114, 32.365887, 24.023809>,  <40.382088, 32.970814, 23.676325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035114, 32.365887, 24.023809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.393303, 32.226158, 23.913465>,  <40.608215, 32.142323, 23.847260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.393303, 32.226158, 23.913465>,  <40.035114, 32.365887, 24.023809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393303, 32.226158, 23.913465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052063, -0.533301, 0.844322,
		-0.442054, -0.770433, -0.459371,
		0.895476, -0.349319, -0.275859,
		40.661945, 32.121361, 23.830708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540703, 31.970791, 23.603626>,  <40.035114, 32.365887, 24.023809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540703, 31.970791, 23.603626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226231, 31.725578, 23.634918>,  <39.037548, 31.578451, 23.653694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226231, 31.725578, 23.634918>,  <39.540703, 31.970791, 23.603626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226231, 31.725578, 23.634918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306887, 0.277384, -0.910428,
		0.536422, -0.739763, -0.406204,
		-0.786175, -0.613032, 0.078229,
		38.990379, 31.541668, 23.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542271, 31.439539, 22.926130>,  <39.540703, 31.970791, 23.603626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542271, 31.439539, 22.926130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182369, 31.510250, 23.085728>,  <38.966431, 31.552677, 23.181486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182369, 31.510250, 23.085728>,  <39.542271, 31.439539, 22.926130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182369, 31.510250, 23.085728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288453, 0.445168, -0.847715,
		-0.327479, -0.877824, -0.349548,
		-0.899751, 0.176780, 0.398994,
		38.912445, 31.563284, 23.205425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034893, 31.165806, 22.370348>,  <39.542271, 31.439539, 22.926130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034893, 31.165806, 22.370348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.797371, 31.384258, 22.606697>,  <38.654858, 31.515329, 22.748507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.797371, 31.384258, 22.606697>,  <39.034893, 31.165806, 22.370348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797371, 31.384258, 22.606697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397782, 0.439084, -0.805590,
		-0.699400, -0.713406, -0.043492,
		-0.593809, 0.546129, 0.590875,
		38.619228, 31.548098, 22.783960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 31.047964, 22.069077>,  <39.034893, 31.165806, 22.370348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362041, 31.047964, 22.069077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362934, 31.384411, 22.285416>,  <38.363468, 31.586279, 22.415218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.362934, 31.384411, 22.285416>,  <38.362041, 31.047964, 22.069077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362934, 31.384411, 22.285416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446187, 0.484861, -0.752214,
		-0.894937, -0.239643, 0.376376,
		0.002228, 0.841119, 0.540846,
		38.363602, 31.636747, 22.447670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675537, 31.336346, 21.913849>,  <38.362041, 31.047964, 22.069077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675537, 31.336346, 21.913849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863480, 31.656672, 22.062407>,  <37.976246, 31.848867, 22.151541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.863480, 31.656672, 22.062407>,  <37.675537, 31.336346, 21.913849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863480, 31.656672, 22.062407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452273, 0.579696, -0.677791,
		-0.758081, 0.150491, 0.634559,
		0.469853, 0.800815, 0.371394,
		38.004436, 31.896915, 22.173824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207993, 31.922522, 21.787447>,  <37.675537, 31.336346, 21.913849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207993, 31.922522, 21.787447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554794, 32.102070, 21.874001>,  <37.762875, 32.209801, 21.925932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554794, 32.102070, 21.874001>,  <37.207993, 31.922522, 21.787447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554794, 32.102070, 21.874001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200761, 0.712092, -0.672771,
		-0.456073, 0.539852, 0.707501,
		0.867002, 0.448871, 0.216384,
		37.814896, 32.236732, 21.938915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030800, 32.642765, 21.762197>,  <37.207993, 31.922522, 21.787447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030800, 32.642765, 21.762197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424732, 32.605915, 21.703377>,  <37.661091, 32.583805, 21.668083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.424732, 32.605915, 21.703377>,  <37.030800, 32.642765, 21.762197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424732, 32.605915, 21.703377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032022, 0.736394, -0.675795,
		0.170549, 0.670251, 0.722271,
		0.984829, -0.092127, -0.147054,
		37.720181, 32.578278, 21.659260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620625, 33.138218, 22.145962>,  <37.030800, 32.642765, 21.762197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620625, 33.138218, 22.145962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277687, 32.953232, 22.055553>,  <36.071926, 32.842239, 22.001308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.277687, 32.953232, 22.055553>,  <36.620625, 33.138218, 22.145962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277687, 32.953232, 22.055553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002436, -0.442729, 0.896652,
		-0.514739, 0.768188, 0.380697,
		-0.857343, -0.462469, -0.226018,
		36.020485, 32.814491, 21.987747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334190, 33.124958, 22.698019>,  <36.620625, 33.138218, 22.145962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334190, 33.124958, 22.698019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119286, 32.846771, 22.507158>,  <35.990341, 32.679859, 22.392641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119286, 32.846771, 22.507158>,  <36.334190, 33.124958, 22.698019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119286, 32.846771, 22.507158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093844, -0.512934, 0.853283,
		-0.838177, 0.503216, 0.210315,
		-0.537263, -0.695466, -0.477153,
		35.958107, 32.638130, 22.364012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778866, 33.025753, 23.113316>,  <36.334190, 33.124958, 22.698019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778866, 33.025753, 23.113316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828850, 32.699482, 22.887379>,  <35.858841, 32.503719, 22.751816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.828850, 32.699482, 22.887379>,  <35.778866, 33.025753, 23.113316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828850, 32.699482, 22.887379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048523, -0.573649, 0.817662,
		-0.990974, -0.074769, -0.111264,
		0.124963, -0.815682, -0.564843,
		35.866337, 32.454777, 22.717926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189629, 32.625275, 23.203012>,  <35.778866, 33.025753, 23.113316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189629, 32.625275, 23.203012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460918, 32.365520, 23.065426>,  <35.623692, 32.209667, 22.982874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460918, 32.365520, 23.065426>,  <35.189629, 32.625275, 23.203012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460918, 32.365520, 23.065426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097911, -0.543759, 0.833510,
		-0.728302, -0.531629, -0.432373,
		0.678225, -0.649381, -0.343969,
		35.664387, 32.170708, 22.962234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887489, 31.966299, 23.219036>,  <35.189629, 32.625275, 23.203012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887489, 31.966299, 23.219036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279240, 31.886662, 23.205263>,  <35.514290, 31.838879, 23.196999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.279240, 31.886662, 23.205263>,  <34.887489, 31.966299, 23.219036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279240, 31.886662, 23.205263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130137, -0.751948, 0.646249,
		-0.154556, -0.628439, -0.762349,
		0.979376, -0.199092, -0.034434,
		35.573051, 31.826935, 23.194933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952900, 31.196560, 23.119511>,  <34.887489, 31.966299, 23.219036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952900, 31.196560, 23.119511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299683, 31.328621, 23.268850>,  <35.507751, 31.407858, 23.358454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299683, 31.328621, 23.268850>,  <34.952900, 31.196560, 23.119511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299683, 31.328621, 23.268850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022176, -0.722818, 0.690682,
		0.497896, -0.607068, -0.619328,
		0.866953, 0.330154, 0.373350,
		35.559769, 31.427668, 23.380856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199482, 30.566771, 23.392323>,  <34.952900, 31.196560, 23.119511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199482, 30.566771, 23.392323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400330, 30.871376, 23.556261>,  <35.520840, 31.054138, 23.654625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.400330, 30.871376, 23.556261>,  <35.199482, 30.566771, 23.392323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400330, 30.871376, 23.556261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257766, -0.584169, 0.769612,
		0.825490, -0.280792, -0.489615,
		0.502119, 0.761513, 0.409847,
		35.550964, 31.099831, 23.679214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.238579, 36.577221, 22.335779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636257, 36.558529, 22.297007>,  <37.874863, 36.547314, 22.273743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.636257, 36.558529, 22.297007>,  <37.238579, 36.577221, 22.335779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636257, 36.558529, 22.297007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048419, -0.610191, 0.790773,
		-0.096101, -0.790875, -0.604385,
		0.994193, -0.046731, -0.096933,
		37.934517, 36.544510, 22.267927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346905, 35.916718, 22.250774>,  <37.238579, 36.577221, 22.335779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346905, 35.916718, 22.250774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.686848, 36.072212, 22.393116>,  <37.890812, 36.165508, 22.478521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.686848, 36.072212, 22.393116>,  <37.346905, 35.916718, 22.250774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686848, 36.072212, 22.393116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043591, -0.724753, 0.687628,
		0.525214, -0.568871, -0.632879,
		0.849853, 0.388740, 0.355853,
		37.941803, 36.188835, 22.499872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708542, 35.261509, 22.441652>,  <37.346905, 35.916718, 22.250774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708542, 35.261509, 22.441652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888748, 35.563805, 22.631767>,  <37.996872, 35.745182, 22.745836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888748, 35.563805, 22.631767>,  <37.708542, 35.261509, 22.441652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888748, 35.563805, 22.631767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289502, -0.627272, 0.722993,
		0.844528, -0.188121, -0.501382,
		0.450513, 0.755739, 0.475287,
		38.023903, 35.790527, 22.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353802, 35.031860, 22.587215>,  <37.708542, 35.261509, 22.441652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353802, 35.031860, 22.587215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282757, 35.319237, 22.856228>,  <38.240131, 35.491661, 23.017635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282757, 35.319237, 22.856228>,  <38.353802, 35.031860, 22.587215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282757, 35.319237, 22.856228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167350, -0.651393, 0.740055,
		0.969767, 0.243991, -0.004534,
		-0.177613, 0.718439, 0.672531,
		38.229473, 35.534767, 23.057987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617329, 34.806297, 23.143742>,  <38.353802, 35.031860, 22.587215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617329, 34.806297, 23.143742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.443272, 35.119453, 23.321609>,  <38.338837, 35.307346, 23.428331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.443272, 35.119453, 23.321609>,  <38.617329, 34.806297, 23.143742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443272, 35.119453, 23.321609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142058, -0.547394, 0.824730,
		0.889083, 0.295709, 0.349412,
		-0.435146, 0.782890, 0.444670,
		38.312729, 35.354321, 23.455011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065670, 34.984512, 23.808834>,  <38.617329, 34.806297, 23.143742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065670, 34.984512, 23.808834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686443, 35.108334, 23.838097>,  <38.458908, 35.182625, 23.855654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686443, 35.108334, 23.838097>,  <39.065670, 34.984512, 23.808834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686443, 35.108334, 23.838097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082731, -0.462064, 0.882979,
		0.307130, 0.831069, 0.463676,
		-0.948065, 0.309550, 0.073158,
		38.402023, 35.201199, 23.860044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976170, 35.255569, 24.494299>,  <39.065670, 34.984512, 23.808834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976170, 35.255569, 24.494299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592327, 35.219883, 24.387569>,  <38.362022, 35.198471, 24.323532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592327, 35.219883, 24.387569>,  <38.976170, 35.255569, 24.494299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592327, 35.219883, 24.387569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238688, -0.243893, 0.939970,
		-0.148938, 0.965689, 0.212747,
		-0.959607, -0.089217, -0.266824,
		38.304443, 35.193119, 24.307522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548756, 35.445728, 25.055565>,  <38.976170, 35.255569, 24.494299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548756, 35.445728, 25.055565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295120, 35.220531, 24.843538>,  <38.142937, 35.085415, 24.716322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295120, 35.220531, 24.843538>,  <38.548756, 35.445728, 25.055565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295120, 35.220531, 24.843538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424617, -0.319386, 0.847168,
		-0.646243, 0.762256, -0.036535,
		-0.634090, -0.562990, -0.530068,
		38.104893, 35.051636, 24.684517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962757, 35.549610, 25.470613>,  <38.548756, 35.445728, 25.055565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962757, 35.549610, 25.470613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.887592, 35.242828, 25.225187>,  <37.842491, 35.058758, 25.077932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.887592, 35.242828, 25.225187>,  <37.962757, 35.549610, 25.470613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887592, 35.242828, 25.225187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533242, -0.444944, 0.719498,
		-0.824827, 0.462384, -0.325363,
		-0.187916, -0.766959, -0.613565,
		37.831219, 35.012741, 25.041119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274296, 35.456169, 25.356190>,  <37.962757, 35.549610, 25.470613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274296, 35.456169, 25.356190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410839, 35.090572, 25.268467>,  <37.492767, 34.871216, 25.215834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.410839, 35.090572, 25.268467>,  <37.274296, 35.456169, 25.356190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410839, 35.090572, 25.268467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452426, -0.364292, 0.814004,
		-0.823882, -0.178650, -0.537868,
		0.341362, -0.913989, -0.219308,
		37.513248, 34.816376, 25.202675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694683, 35.033516, 25.517488>,  <37.274296, 35.456169, 25.356190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694683, 35.033516, 25.517488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049316, 34.853809, 25.561552>,  <37.262096, 34.745983, 25.587990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.049316, 34.853809, 25.561552>,  <36.694683, 35.033516, 25.517488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049316, 34.853809, 25.561552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229628, -0.220716, 0.947922,
		-0.401558, -0.865703, -0.298847,
		0.886579, -0.449269, 0.110160,
		37.315289, 34.719028, 25.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493412, 34.475998, 25.935776>,  <36.694683, 35.033516, 25.517488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493412, 34.475998, 25.935776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891769, 34.471825, 25.971758>,  <37.130783, 34.469322, 25.993347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891769, 34.471825, 25.971758>,  <36.493412, 34.475998, 25.935776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891769, 34.471825, 25.971758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086671, -0.397696, 0.913414,
		0.026244, -0.917458, -0.396967,
		0.995891, -0.010434, 0.089955,
		37.190536, 34.468693, 25.998745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260502, 33.798199, 25.624033>,  <36.493412, 34.475998, 25.935776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260502, 33.798199, 25.624033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865314, 33.736351, 25.622705>,  <35.628201, 33.699242, 25.621910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865314, 33.736351, 25.622705>,  <36.260502, 33.798199, 25.624033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865314, 33.736351, 25.622705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039401, 0.272381, -0.961382,
		0.149553, -0.949685, -0.275196,
		-0.987969, -0.154621, -0.003316,
		35.568924, 33.689964, 25.621710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081390, 33.420498, 24.937910>,  <36.260502, 33.798199, 25.624033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081390, 33.420498, 24.937910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.750992, 33.604816, 25.067772>,  <35.552753, 33.715408, 25.145689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.750992, 33.604816, 25.067772>,  <36.081390, 33.420498, 24.937910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750992, 33.604816, 25.067772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156667, 0.365592, -0.917495,
		-0.541470, -0.808708, -0.229785,
		-0.825993, 0.460797, 0.324655,
		35.503193, 33.743057, 25.165169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513115, 33.374897, 24.399298>,  <36.081390, 33.420498, 24.937910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513115, 33.374897, 24.399298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425690, 33.688305, 24.631964>,  <35.373234, 33.876350, 24.771563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425690, 33.688305, 24.631964>,  <35.513115, 33.374897, 24.399298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425690, 33.688305, 24.631964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275051, 0.522441, -0.807095,
		-0.936258, -0.336385, 0.101323,
		-0.218560, 0.783518, 0.581663,
		35.360123, 33.923359, 24.806463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912838, 33.575027, 24.015736>,  <35.513115, 33.374897, 24.399298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912838, 33.575027, 24.015736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.003895, 33.882626, 24.254673>,  <35.058529, 34.067184, 24.398035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.003895, 33.882626, 24.254673>,  <34.912838, 33.575027, 24.015736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003895, 33.882626, 24.254673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398817, 0.633269, -0.663262,
		-0.888327, -0.087246, 0.450847,
		0.227640, 0.768999, 0.597345,
		35.072186, 34.113327, 24.433876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373898, 34.037537, 24.065722>,  <34.912838, 33.575027, 24.015736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373898, 34.037537, 24.065722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663696, 34.275902, 24.204281>,  <34.837578, 34.418919, 24.287416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663696, 34.275902, 24.204281>,  <34.373898, 34.037537, 24.065722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663696, 34.275902, 24.204281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315454, 0.733497, -0.602056,
		-0.612853, 0.326917, 0.719400,
		0.724500, 0.595909, 0.346399,
		34.881046, 34.454674, 24.308201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107674, 34.634167, 24.315569>,  <34.373898, 34.037537, 24.065722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107674, 34.634167, 24.315569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489765, 34.727917, 24.243349>,  <34.719021, 34.784168, 24.200018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489765, 34.727917, 24.243349>,  <34.107674, 34.634167, 24.315569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489765, 34.727917, 24.243349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292812, 0.661616, -0.690308,
		-0.042338, 0.712272, 0.700625,
		0.955232, 0.234378, -0.180550,
		34.776337, 34.798229, 24.189184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154160, 35.417442, 24.271284>,  <34.107674, 34.634167, 24.315569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154160, 35.417442, 24.271284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.460125, 35.268383, 24.061125>,  <34.643703, 35.178947, 23.935030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.460125, 35.268383, 24.061125>,  <34.154160, 35.417442, 24.271284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460125, 35.268383, 24.061125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084912, 0.750208, -0.655727,
		0.638515, 0.546185, 0.542200,
		0.764911, -0.372652, -0.525397,
		34.689598, 35.156586, 23.903505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332279, 36.016121, 23.983713>,  <34.154160, 35.417442, 24.271284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332279, 36.016121, 23.983713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518356, 35.720695, 23.788523>,  <34.630001, 35.543442, 23.671410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518356, 35.720695, 23.788523>,  <34.332279, 36.016121, 23.983713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518356, 35.720695, 23.788523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051415, 0.572865, -0.818035,
		0.883715, 0.355455, 0.304466,
		0.465193, -0.738564, -0.487974,
		34.657913, 35.499126, 23.642130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840343, 36.371830, 23.647152>,  <34.332279, 36.016121, 23.983713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840343, 36.371830, 23.647152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.780472, 36.032200, 23.444500>,  <34.744549, 35.828423, 23.322908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.780472, 36.032200, 23.444500>,  <34.840343, 36.371830, 23.647152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780472, 36.032200, 23.444500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133254, 0.525049, -0.840575,
		0.979715, -0.058303, -0.191729,
		-0.149675, -0.849072, -0.506629,
		34.735569, 35.777477, 23.292511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223949, 36.528793, 23.093460>,  <34.840343, 36.371830, 23.647152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223949, 36.528793, 23.093460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999222, 36.214321, 22.990479>,  <34.864388, 36.025639, 22.928690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.999222, 36.214321, 22.990479>,  <35.223949, 36.528793, 23.093460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999222, 36.214321, 22.990479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239290, 0.452349, -0.859139,
		0.791898, -0.421072, -0.442263,
		-0.561817, -0.786180, -0.257456,
		34.830677, 35.978466, 22.913242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364738, 36.338364, 22.401512>,  <35.223949, 36.528793, 23.093460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364738, 36.338364, 22.401512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.987545, 36.231304, 22.480661>,  <34.761230, 36.167068, 22.528151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.987545, 36.231304, 22.480661>,  <35.364738, 36.338364, 22.401512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987545, 36.231304, 22.480661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317756, 0.546902, -0.774551,
		0.099087, -0.793262, -0.600764,
		-0.942981, -0.267645, 0.197873,
		34.704651, 36.151012, 22.540024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115257, 36.083538, 21.754389>,  <35.364738, 36.338364, 22.401512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115257, 36.083538, 21.754389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.770897, 36.118820, 21.954817>,  <34.564281, 36.139992, 22.075073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.770897, 36.118820, 21.954817>,  <35.115257, 36.083538, 21.754389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770897, 36.118820, 21.954817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421631, 0.427499, -0.799670,
		-0.284746, -0.899702, -0.330842,
		-0.860899, 0.088210, 0.501071,
		34.512627, 36.145283, 22.105139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602242, 35.728767, 21.322870>,  <35.115257, 36.083538, 21.754389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602242, 35.728767, 21.322870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.430607, 35.996220, 21.565792>,  <34.327625, 36.156689, 21.711546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.430607, 35.996220, 21.565792>,  <34.602242, 35.728767, 21.322870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430607, 35.996220, 21.565792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549700, 0.340209, -0.762947,
		-0.716739, -0.661207, 0.221566,
		-0.429087, 0.668628, 0.607306,
		34.301880, 36.196808, 21.747984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457577, 35.355137, 20.769129>,  <34.602242, 35.728767, 21.322870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457577, 35.355137, 20.769129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.447834, 35.119469, 20.446072>,  <34.441990, 34.978069, 20.252237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.447834, 35.119469, 20.446072>,  <34.457577, 35.355137, 20.769129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447834, 35.119469, 20.446072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295899, -0.775933, 0.557110,
		-0.954908, -0.225412, 0.193233,
		-0.024356, -0.589167, -0.807644,
		34.440529, 34.942719, 20.203779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987938, 34.732494, 20.868397>,  <34.457577, 35.355137, 20.769129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987938, 34.732494, 20.868397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240318, 34.614788, 20.581255>,  <34.391747, 34.544167, 20.408970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.240318, 34.614788, 20.581255>,  <33.987938, 34.732494, 20.868397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240318, 34.614788, 20.581255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324819, -0.740083, 0.588872,
		-0.704551, -0.604721, -0.371375,
		0.630951, -0.294261, -0.717852,
		34.429604, 34.526508, 20.365898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955887, 34.058186, 20.999191>,  <33.987938, 34.732494, 20.868397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955887, 34.058186, 20.999191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280602, 34.122952, 20.774769>,  <34.475430, 34.161812, 20.640116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.280602, 34.122952, 20.774769>,  <33.955887, 34.058186, 20.999191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280602, 34.122952, 20.774769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509740, -0.665220, 0.545571,
		-0.284890, -0.728881, -0.622552,
		0.811790, 0.161912, -0.561054,
		34.524139, 34.171524, 20.606453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179211, 33.430389, 20.772085>,  <33.955887, 34.058186, 20.999191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179211, 33.430389, 20.772085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.496990, 33.672485, 20.751923>,  <34.687656, 33.817741, 20.739826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.496990, 33.672485, 20.751923>,  <34.179211, 33.430389, 20.772085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496990, 33.672485, 20.751923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558323, -0.695148, 0.452818,
		0.239025, -0.387881, -0.890177,
		0.794445, 0.605241, -0.050405,
		34.735325, 33.854057, 20.736801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658951, 33.042294, 20.528883>,  <34.179211, 33.430389, 20.772085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658951, 33.042294, 20.528883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.867630, 33.340755, 20.694334>,  <34.992836, 33.519833, 20.793604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.867630, 33.340755, 20.694334>,  <34.658951, 33.042294, 20.528883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867630, 33.340755, 20.694334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592122, -0.665726, 0.454093,
		0.614184, 0.008018, -0.789122,
		0.521698, 0.746153, 0.413626,
		35.024139, 33.564602, 20.818422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431053, 32.932076, 20.379864>,  <34.658951, 33.042294, 20.528883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431053, 32.932076, 20.379864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397243, 33.172619, 20.697662>,  <35.376957, 33.316944, 20.888342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.397243, 33.172619, 20.697662>,  <35.431053, 32.932076, 20.379864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397243, 33.172619, 20.697662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621201, -0.591626, 0.513896,
		0.779080, 0.536979, -0.323555,
		-0.084528, 0.601358, 0.794495,
		35.371883, 33.353027, 20.936010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220108, 32.997299, 20.634787>,  <35.431053, 32.932076, 20.379864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220108, 32.997299, 20.634787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.967648, 33.104855, 20.925812>,  <35.816170, 33.169388, 21.100428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.967648, 33.104855, 20.925812>,  <36.220108, 32.997299, 20.634787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967648, 33.104855, 20.925812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389272, -0.701514, 0.596947,
		0.670905, 0.659984, 0.338094,
		-0.631153, 0.268885, 0.727562,
		35.778301, 33.185520, 21.144081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633644, 33.069012, 21.310381>,  <36.220108, 32.997299, 20.634787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633644, 33.069012, 21.310381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248158, 33.006596, 21.397007>,  <36.016865, 32.969147, 21.448982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248158, 33.006596, 21.397007>,  <36.633644, 33.069012, 21.310381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248158, 33.006596, 21.397007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259793, -0.734644, 0.626743,
		0.061299, 0.660264, 0.748527,
		-0.963717, -0.156043, 0.216565,
		35.959042, 32.959782, 21.461977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259876, 33.339798, 21.842642>,  <36.633644, 33.069012, 21.310381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259876, 33.339798, 21.842642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571175, 33.165268, 21.661999>,  <37.757954, 33.060551, 21.553612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.571175, 33.165268, 21.661999>,  <37.259876, 33.339798, 21.842642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571175, 33.165268, 21.661999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025548, 0.740577, -0.671486,
		0.627438, 0.511044, 0.587499,
		0.778247, -0.436326, -0.451610,
		37.804649, 33.034370, 21.526516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810024, 33.907787, 21.781433>,  <37.259876, 33.339798, 21.842642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810024, 33.907787, 21.781433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.854382, 33.630699, 21.496380>,  <37.880997, 33.464447, 21.325348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.854382, 33.630699, 21.496380>,  <37.810024, 33.907787, 21.781433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854382, 33.630699, 21.496380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147003, 0.697733, -0.701113,
		0.982900, 0.182506, -0.024460,
		0.110891, -0.692720, -0.712631,
		37.887650, 33.422882, 21.282591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494675, 34.007465, 21.322840>,  <37.810024, 33.907787, 21.781433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494675, 34.007465, 21.322840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211803, 33.811298, 21.119118>,  <38.042080, 33.693600, 20.996885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.211803, 33.811298, 21.119118>,  <38.494675, 34.007465, 21.322840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211803, 33.811298, 21.119118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047923, 0.685434, -0.726556,
		0.705420, -0.538204, -0.461214,
		-0.707167, -0.490425, -0.509311,
		37.999649, 33.664173, 20.966326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704277, 34.221004, 20.662275>,  <38.494675, 34.007465, 21.322840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704277, 34.221004, 20.662275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364410, 34.025051, 20.584225>,  <38.160488, 33.907478, 20.537395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.364410, 34.025051, 20.584225>,  <38.704277, 34.221004, 20.662275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364410, 34.025051, 20.584225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023749, 0.405209, -0.913915,
		0.526780, -0.771892, -0.355929,
		-0.849670, -0.489886, -0.195125,
		38.109509, 33.878086, 20.525688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748699, 33.896900, 20.017399>,  <38.704277, 34.221004, 20.662275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748699, 33.896900, 20.017399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354435, 33.924847, 20.078844>,  <38.117878, 33.941616, 20.115711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354435, 33.924847, 20.078844>,  <38.748699, 33.896900, 20.017399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354435, 33.924847, 20.078844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111015, 0.417113, -0.902049,
		-0.127099, -0.906165, -0.403375,
		-0.985658, 0.069869, 0.153613,
		38.058739, 33.945808, 20.124928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405605, 33.522297, 19.432543>,  <38.748699, 33.896900, 20.017399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405605, 33.522297, 19.432543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112652, 33.764969, 19.556190>,  <37.936878, 33.910572, 19.630379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.112652, 33.764969, 19.556190>,  <38.405605, 33.522297, 19.432543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112652, 33.764969, 19.556190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096806, 0.356605, -0.929226,
		-0.673974, -0.710477, -0.202442,
		-0.732386, 0.606677, 0.309121,
		37.892937, 33.946972, 19.648926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918045, 33.374077, 18.974459>,  <38.405605, 33.522297, 19.432543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918045, 33.374077, 18.974459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838760, 33.722321, 19.154572>,  <37.791191, 33.931267, 19.262640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.838760, 33.722321, 19.154572>,  <37.918045, 33.374077, 18.974459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838760, 33.722321, 19.154572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239900, 0.402334, -0.883502,
		-0.950347, -0.283144, 0.129111,
		-0.198213, 0.870607, 0.450283,
		37.779297, 33.983501, 19.289656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325932, 33.544693, 18.584547>,  <37.918045, 33.374077, 18.974459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325932, 33.544693, 18.584547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415581, 33.891739, 18.762089>,  <37.469372, 34.099968, 18.868614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.415581, 33.891739, 18.762089>,  <37.325932, 33.544693, 18.584547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415581, 33.891739, 18.762089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273205, 0.493112, -0.825954,
		-0.935482, 0.063855, 0.347557,
		0.224126, 0.867619, 0.443852,
		37.482819, 34.152023, 18.895245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693188, 33.940044, 18.427813>,  <37.325932, 33.544693, 18.584547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693188, 33.940044, 18.427813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007298, 34.174061, 18.508869>,  <37.195763, 34.314472, 18.557503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.007298, 34.174061, 18.508869>,  <36.693188, 33.940044, 18.427813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007298, 34.174061, 18.508869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117735, 0.462422, -0.878809,
		-0.607845, 0.666252, 0.432010,
		0.785279, 0.585042, 0.202640,
		37.242882, 34.349575, 18.569662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.728107, 28.913248, 33.901653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061684, 29.099070, 33.782501>,  <39.261829, 29.210564, 33.711010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061684, 29.099070, 33.782501>,  <38.728107, 28.913248, 33.901653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061684, 29.099070, 33.782501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398639, 0.133840, -0.907289,
		-0.381618, 0.875371, 0.296804,
		0.833939, 0.464556, -0.297881,
		39.311867, 29.238436, 33.693138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435066, 29.322216, 33.415367>,  <38.728107, 28.913248, 33.901653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435066, 29.322216, 33.415367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830509, 29.307117, 33.357094>,  <39.067776, 29.298058, 33.322128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.830509, 29.307117, 33.357094>,  <38.435066, 29.322216, 33.415367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830509, 29.307117, 33.357094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145482, 0.008088, -0.989328,
		0.038522, 0.999255, 0.002505,
		0.988611, -0.037747, -0.145685,
		39.127094, 29.295794, 33.313389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659271, 29.872742, 32.880020>,  <38.435066, 29.322216, 33.415367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659271, 29.872742, 32.880020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943886, 29.591818, 32.888775>,  <39.114655, 29.423264, 32.894028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.943886, 29.591818, 32.888775>,  <38.659271, 29.872742, 32.880020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943886, 29.591818, 32.888775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000358, -0.030787, -0.999526,
		0.702652, 0.711204, -0.021654,
		0.711534, -0.702311, 0.021887,
		39.157345, 29.381124, 32.895340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218113, 30.191599, 32.561672>,  <38.659271, 29.872742, 32.880020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218113, 30.191599, 32.561672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246387, 29.794319, 32.524666>,  <39.263351, 29.555952, 32.502460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246387, 29.794319, 32.524666>,  <39.218113, 30.191599, 32.561672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246387, 29.794319, 32.524666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057409, 0.096646, -0.993662,
		0.995845, 0.064931, 0.063851,
		0.070690, -0.993199, -0.092517,
		39.267593, 29.496359, 32.496910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701019, 30.079098, 32.129360>,  <39.218113, 30.191599, 32.561672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701019, 30.079098, 32.129360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518108, 29.723835, 32.111107>,  <39.408363, 29.510677, 32.100155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.518108, 29.723835, 32.111107>,  <39.701019, 30.079098, 32.129360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518108, 29.723835, 32.111107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098340, 0.000498, -0.995153,
		0.883872, -0.459544, 0.087113,
		-0.457273, -0.888155, -0.045631,
		39.380928, 29.457388, 32.097416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921284, 29.786800, 31.480026>,  <39.701019, 30.079098, 32.129360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921284, 29.786800, 31.480026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.609325, 29.567104, 31.600090>,  <39.422150, 29.435287, 31.672129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.609325, 29.567104, 31.600090>,  <39.921284, 29.786800, 31.480026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609325, 29.567104, 31.600090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176471, -0.267150, -0.947359,
		0.600513, -0.791813, 0.111425,
		-0.779899, -0.549238, 0.300160,
		39.375355, 29.402332, 31.690138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928535, 29.249262, 31.035461>,  <39.921284, 29.786800, 31.480026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928535, 29.249262, 31.035461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553787, 29.226770, 31.173515>,  <39.328938, 29.213276, 31.256348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.553787, 29.226770, 31.173515>,  <39.928535, 29.249262, 31.035461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553787, 29.226770, 31.173515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323232, -0.237324, -0.916077,
		0.133418, -0.969802, 0.204167,
		-0.936868, -0.056228, 0.345135,
		39.272728, 29.209902, 31.277056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579639, 28.584473, 30.855278>,  <39.928535, 29.249262, 31.035461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579639, 28.584473, 30.855278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262253, 28.822584, 30.905975>,  <39.071823, 28.965450, 30.936394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262253, 28.822584, 30.905975>,  <39.579639, 28.584473, 30.855278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262253, 28.822584, 30.905975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303834, -0.206987, -0.929968,
		-0.527355, -0.776403, 0.345102,
		-0.793462, 0.595277, 0.126742,
		39.024216, 29.001167, 30.943998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003300, 28.224644, 30.410578>,  <39.579639, 28.584473, 30.855278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003300, 28.224644, 30.410578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890945, 28.604237, 30.467901>,  <38.823532, 28.831991, 30.502296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890945, 28.604237, 30.467901>,  <39.003300, 28.224644, 30.410578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890945, 28.604237, 30.467901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427287, 0.010055, -0.904060,
		-0.859377, -0.315172, 0.402662,
		-0.280886, 0.948981, 0.143310,
		38.806679, 28.888931, 30.510895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345097, 28.254635, 30.154425>,  <39.003300, 28.224644, 30.410578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345097, 28.254635, 30.154425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468201, 28.635008, 30.167181>,  <38.542061, 28.863232, 30.174835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.468201, 28.635008, 30.167181>,  <38.345097, 28.254635, 30.154425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468201, 28.635008, 30.167181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350375, 0.144429, -0.925407,
		-0.884604, 0.273625, 0.377631,
		0.307756, 0.950931, 0.031891,
		38.560528, 28.920286, 30.176748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917622, 28.541212, 29.799154>,  <38.345097, 28.254635, 30.154425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917622, 28.541212, 29.799154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214725, 28.808784, 29.787596>,  <38.392990, 28.969328, 29.780661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214725, 28.808784, 29.787596>,  <37.917622, 28.541212, 29.799154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214725, 28.808784, 29.787596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219253, 0.202221, -0.954481,
		-0.632638, 0.715290, 0.296867,
		0.742763, 0.668930, -0.028897,
		38.437553, 29.009464, 29.778927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570793, 28.948467, 29.417484>,  <37.917622, 28.541212, 29.799154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570793, 28.948467, 29.417484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960815, 29.037046, 29.411417>,  <38.194828, 29.090193, 29.407776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960815, 29.037046, 29.411417>,  <37.570793, 28.948467, 29.417484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960815, 29.037046, 29.411417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056090, 0.179698, -0.982121,
		-0.214762, 0.958473, 0.187636,
		0.975054, 0.221447, -0.015169,
		38.253330, 29.103481, 29.406866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898121, 29.192177, 29.448483>,  <37.570793, 28.948467, 29.417484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898121, 29.192177, 29.448483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638802, 28.940626, 29.276794>,  <36.483212, 28.789696, 29.173782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.638802, 28.940626, 29.276794>,  <36.898121, 29.192177, 29.448483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638802, 28.940626, 29.276794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235228, -0.370726, 0.898460,
		-0.724142, 0.683431, 0.092411,
		-0.648295, -0.628875, -0.429220,
		36.444313, 28.751963, 29.148029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253605, 29.352844, 29.771193>,  <36.898121, 29.192177, 29.448483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253605, 29.352844, 29.771193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250790, 28.981133, 29.623466>,  <36.249100, 28.758106, 29.534830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.250790, 28.981133, 29.623466>,  <36.253605, 29.352844, 29.771193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250790, 28.981133, 29.623466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338610, -0.345292, 0.875281,
		-0.940900, 0.131213, -0.312233,
		-0.007037, -0.929277, -0.369315,
		36.248680, 28.702349, 29.512672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594822, 29.063643, 30.018894>,  <36.253605, 29.352844, 29.771193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594822, 29.063643, 30.018894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826698, 28.749386, 29.932425>,  <35.965824, 28.560833, 29.880543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.826698, 28.749386, 29.932425>,  <35.594822, 29.063643, 30.018894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826698, 28.749386, 29.932425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371649, -0.491018, 0.787895,
		-0.725149, -0.376390, -0.576619,
		0.579686, -0.785641, -0.216176,
		36.000603, 28.513693, 29.867571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202492, 28.487494, 30.233650>,  <35.594822, 29.063643, 30.018894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202492, 28.487494, 30.233650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566376, 28.321596, 30.225477>,  <35.784706, 28.222057, 30.220573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566376, 28.321596, 30.225477>,  <35.202492, 28.487494, 30.233650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566376, 28.321596, 30.225477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189429, -0.458283, 0.868385,
		-0.369520, -0.786108, -0.495469,
		0.909710, -0.414742, -0.020434,
		35.839287, 28.197174, 30.219347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242996, 27.724871, 30.462984>,  <35.202492, 28.487494, 30.233650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242996, 27.724871, 30.462984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624969, 27.835539, 30.505972>,  <35.854153, 27.901939, 30.531765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624969, 27.835539, 30.505972>,  <35.242996, 27.724871, 30.462984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624969, 27.835539, 30.505972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000981, -0.359140, 0.933283,
		0.296811, -0.891331, -0.342684,
		0.954936, 0.276673, 0.107471,
		35.911449, 27.918541, 30.538214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386368, 27.244999, 30.997478>,  <35.242996, 27.724871, 30.462984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386368, 27.244999, 30.997478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697540, 27.496284, 31.002712>,  <35.884243, 27.647057, 31.005852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697540, 27.496284, 31.002712>,  <35.386368, 27.244999, 30.997478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697540, 27.496284, 31.002712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115454, -0.163373, 0.979786,
		0.617654, -0.760693, -0.199622,
		0.777929, 0.628216, 0.013083,
		35.930920, 27.684750, 31.006638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797379, 26.872734, 31.308643>,  <35.386368, 27.244999, 30.997478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797379, 26.872734, 31.308643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939331, 27.245081, 31.343374>,  <36.024502, 27.468489, 31.364214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939331, 27.245081, 31.343374>,  <35.797379, 26.872734, 31.308643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939331, 27.245081, 31.343374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102972, -0.131227, 0.985990,
		0.929222, -0.340972, -0.142424,
		0.354885, 0.930869, 0.086828,
		36.045795, 27.524342, 31.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169281, 26.885206, 31.910204>,  <35.797379, 26.872734, 31.308643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169281, 26.885206, 31.910204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102581, 27.277748, 31.871975>,  <36.062561, 27.513273, 31.849037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102581, 27.277748, 31.871975>,  <36.169281, 26.885206, 31.910204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102581, 27.277748, 31.871975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003904, 0.096273, 0.995348,
		0.985991, 0.166351, -0.012223,
		-0.166753, 0.981356, -0.095574,
		36.052555, 27.572155, 31.843304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559658, 27.205839, 32.434505>,  <36.169281, 26.885206, 31.910204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559658, 27.205839, 32.434505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285664, 27.480862, 32.338120>,  <36.121269, 27.645876, 32.280289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285664, 27.480862, 32.338120>,  <36.559658, 27.205839, 32.434505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285664, 27.480862, 32.338120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196400, 0.144231, 0.969858,
		0.701587, 0.711662, 0.036240,
		-0.684984, 0.687557, -0.240960,
		36.080170, 27.687128, 32.265831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596691, 27.720816, 32.984097>,  <36.559658, 27.205839, 32.434505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596691, 27.720816, 32.984097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244328, 27.794521, 32.809715>,  <36.032909, 27.838745, 32.705086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244328, 27.794521, 32.809715>,  <36.596691, 27.720816, 32.984097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244328, 27.794521, 32.809715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427904, 0.083537, 0.899956,
		0.202249, 0.979320, 0.005259,
		-0.880905, 0.184266, -0.435950,
		35.980057, 27.849800, 32.678932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415047, 28.266109, 33.426247>,  <36.596691, 27.720816, 32.984097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415047, 28.266109, 33.426247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095463, 28.134508, 33.224880>,  <35.903713, 28.055548, 33.104061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095463, 28.134508, 33.224880>,  <36.415047, 28.266109, 33.426247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095463, 28.134508, 33.224880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601274, 0.420678, 0.679337,
		-0.011729, 0.845451, -0.533925,
		-0.798957, -0.329003, -0.503413,
		35.855774, 28.035807, 33.073856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865337, 28.850771, 33.442131>,  <36.415047, 28.266109, 33.426247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865337, 28.850771, 33.442131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671486, 28.508568, 33.369209>,  <35.555176, 28.303246, 33.325455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671486, 28.508568, 33.369209>,  <35.865337, 28.850771, 33.442131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671486, 28.508568, 33.369209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619133, 0.188262, 0.762386,
		-0.617907, 0.482348, -0.620912,
		-0.484630, -0.855510, -0.182309,
		35.526096, 28.251915, 33.314518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040031, 28.914965, 33.633835>,  <35.865337, 28.850771, 33.442131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040031, 28.914965, 33.633835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097801, 28.519283, 33.623878>,  <35.132465, 28.281876, 33.617905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097801, 28.519283, 33.623878>,  <35.040031, 28.914965, 33.633835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097801, 28.519283, 33.623878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607514, -0.108499, 0.786864,
		-0.781068, -0.098525, -0.616624,
		0.144429, -0.989202, -0.024890,
		35.141129, 28.222523, 33.616413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520149, 29.247595, 34.037537>,  <35.040031, 28.914965, 33.633835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520149, 29.247595, 34.037537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821449, 29.296759, 34.295998>,  <36.002228, 29.326258, 34.451073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821449, 29.296759, 34.295998>,  <35.520149, 29.247595, 34.037537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821449, 29.296759, 34.295998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345935, 0.909566, 0.230256,
		-0.559414, -0.396966, 0.727649,
		0.753249, 0.122911, 0.646149,
		36.047424, 29.333632, 34.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253483, 29.520882, 34.754684>,  <35.520149, 29.247595, 34.037537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253483, 29.520882, 34.754684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.620903, 29.674068, 34.715508>,  <35.841354, 29.765982, 34.692001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.620903, 29.674068, 34.715508>,  <35.253483, 29.520882, 34.754684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620903, 29.674068, 34.715508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347186, 0.900070, 0.263318,
		0.188997, -0.207868, 0.959725,
		0.918554, 0.382969, -0.097942,
		35.896469, 29.788960, 34.686127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543781, 29.918720, 35.355888>,  <35.253483, 29.520882, 34.754684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543781, 29.918720, 35.355888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681553, 30.085779, 35.019569>,  <35.764217, 30.186014, 34.817780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681553, 30.085779, 35.019569>,  <35.543781, 29.918720, 35.355888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681553, 30.085779, 35.019569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338377, 0.890627, 0.303785,
		0.875711, 0.179874, 0.448079,
		0.344428, 0.417647, -0.840798,
		35.784882, 30.211073, 34.767330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903339, 30.524763, 35.657547>,  <35.543781, 29.918720, 35.355888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903339, 30.524763, 35.657547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763557, 30.557749, 35.284222>,  <35.679688, 30.577539, 35.060226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763557, 30.557749, 35.284222>,  <35.903339, 30.524763, 35.657547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763557, 30.557749, 35.284222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475734, 0.842547, 0.252568,
		0.807192, 0.532272, -0.255201,
		-0.349454, 0.082463, -0.933318,
		35.658722, 30.582487, 35.004227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419506, 30.499960, 35.040997>,  <35.903339, 30.524763, 35.657547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419506, 30.499960, 35.040997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778393, 30.593544, 34.891186>,  <36.993725, 30.649694, 34.801300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778393, 30.593544, 34.891186>,  <36.419506, 30.499960, 35.040997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778393, 30.593544, 34.891186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411959, 0.138000, -0.900692,
		-0.159044, 0.962402, 0.220198,
		0.897215, 0.233962, -0.374522,
		37.047558, 30.663733, 34.778828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350536, 31.157694, 34.703300>,  <36.419506, 30.499960, 35.040997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350536, 31.157694, 34.703300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684319, 31.001009, 34.548252>,  <36.884586, 30.906998, 34.455223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.684319, 31.001009, 34.548252>,  <36.350536, 31.157694, 34.703300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684319, 31.001009, 34.548252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294922, 0.276750, -0.914566,
		0.465523, 0.877479, 0.115410,
		0.834452, -0.391714, -0.387622,
		36.934654, 30.883495, 34.431965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752544, 31.646366, 34.243069>,  <36.350536, 31.157694, 34.703300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752544, 31.646366, 34.243069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893398, 31.286768, 34.138908>,  <36.977909, 31.071009, 34.076412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.893398, 31.286768, 34.138908>,  <36.752544, 31.646366, 34.243069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893398, 31.286768, 34.138908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144414, 0.222705, -0.964130,
		0.924741, 0.377109, -0.051405,
		0.352134, -0.898995, -0.260405,
		36.999039, 31.017069, 34.060787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224155, 31.751060, 33.658493>,  <36.752544, 31.646366, 34.243069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224155, 31.751060, 33.658493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139351, 31.360514, 33.641712>,  <37.088467, 31.126186, 33.631645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.139351, 31.360514, 33.641712>,  <37.224155, 31.751060, 33.658493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139351, 31.360514, 33.641712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132985, 0.071350, -0.988547,
		0.968177, -0.204004, -0.144969,
		-0.212011, -0.976366, -0.041950,
		37.075748, 31.067604, 33.629128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614479, 31.580587, 33.092903>,  <37.224155, 31.751060, 33.658493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614479, 31.580587, 33.092903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355183, 31.282358, 33.154743>,  <37.199604, 31.103420, 33.191845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.355183, 31.282358, 33.154743>,  <37.614479, 31.580587, 33.092903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355183, 31.282358, 33.154743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233152, 0.001075, -0.972440,
		0.724860, -0.666421, -0.174529,
		-0.648242, -0.745574, 0.154598,
		37.160709, 31.058685, 33.201122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655281, 31.107054, 32.482872>,  <37.614479, 31.580587, 33.092903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655281, 31.107054, 32.482872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302570, 31.025314, 32.652912>,  <37.090942, 30.976271, 32.754936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302570, 31.025314, 32.652912>,  <37.655281, 31.107054, 32.482872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302570, 31.025314, 32.652912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417290, -0.082141, -0.905054,
		0.219864, -0.975446, -0.012842,
		-0.881776, -0.204347, 0.425103,
		37.038036, 30.964010, 32.780441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500568, 30.510551, 32.132893>,  <37.655281, 31.107054, 32.482872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500568, 30.510551, 32.132893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168736, 30.679138, 32.279404>,  <36.969635, 30.780291, 32.367310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.168736, 30.679138, 32.279404>,  <37.500568, 30.510551, 32.132893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168736, 30.679138, 32.279404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449079, -0.113745, -0.886223,
		-0.331851, -0.899682, 0.283633,
		-0.829580, 0.421467, 0.366281,
		36.919861, 30.805578, 32.389290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995750, 30.106031, 31.966211>,  <37.500568, 30.510551, 32.132893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995750, 30.106031, 31.966211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842960, 30.474504, 31.995930>,  <36.751286, 30.695589, 32.013760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842960, 30.474504, 31.995930>,  <36.995750, 30.106031, 31.966211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842960, 30.474504, 31.995930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492809, -0.135018, -0.859598,
		-0.781815, -0.364957, 0.505541,
		-0.381973, 0.921182, 0.074295,
		36.728367, 30.750858, 32.018219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465439, 30.144011, 31.577522>,  <36.995750, 30.106031, 31.966211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465439, 30.144011, 31.577522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435432, 30.536205, 31.650202>,  <36.417427, 30.771523, 31.693810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435432, 30.536205, 31.650202>,  <36.465439, 30.144011, 31.577522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435432, 30.536205, 31.650202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597479, 0.101689, -0.795411,
		-0.798368, -0.168228, 0.578194,
		-0.075014, 0.980489, 0.181698,
		36.412930, 30.830353, 31.704712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786285, 30.298937, 31.450188>,  <36.465439, 30.144011, 31.577522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786285, 30.298937, 31.450188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993343, 30.639780, 31.419331>,  <36.117580, 30.844286, 31.400816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993343, 30.639780, 31.419331>,  <35.786285, 30.298937, 31.450188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993343, 30.639780, 31.419331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495117, 0.224801, -0.839240,
		-0.697783, 0.472624, 0.538261,
		0.517647, 0.852110, -0.077142,
		36.148636, 30.895412, 31.396189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371986, 30.714752, 31.140852>,  <35.786285, 30.298937, 31.450188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371986, 30.714752, 31.140852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712360, 30.919470, 31.093575>,  <35.916584, 31.042301, 31.065208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712360, 30.919470, 31.093575>,  <35.371986, 30.714752, 31.140852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712360, 30.919470, 31.093575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339850, 0.364866, -0.866818,
		-0.400509, 0.777777, 0.484413,
		0.850937, 0.511796, -0.118196,
		35.967640, 31.073009, 31.058115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243668, 31.429665, 30.806038>,  <35.371986, 30.714752, 31.140852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243668, 31.429665, 30.806038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632030, 31.369772, 30.731287>,  <35.865047, 31.333836, 30.686436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632030, 31.369772, 30.731287>,  <35.243668, 31.429665, 30.806038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632030, 31.369772, 30.731287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103914, 0.439643, -0.892141,
		0.215742, 0.885604, 0.411292,
		0.970905, -0.149734, -0.186876,
		35.923302, 31.324852, 30.675224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496460, 32.000877, 30.508654>,  <35.243668, 31.429665, 30.806038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496460, 32.000877, 30.508654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761162, 31.723938, 30.393604>,  <35.919983, 31.557774, 30.324575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.761162, 31.723938, 30.393604>,  <35.496460, 32.000877, 30.508654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761162, 31.723938, 30.393604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152188, 0.251599, -0.955791,
		0.734108, 0.676275, 0.061130,
		0.661758, -0.692351, -0.287621,
		35.959690, 31.516233, 30.307318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054234, 32.324673, 30.212358>,  <35.496460, 32.000877, 30.508654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054234, 32.324673, 30.212358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079880, 31.968016, 30.033089>,  <36.095268, 31.754021, 29.925526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079880, 31.968016, 30.033089>,  <36.054234, 32.324673, 30.212358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079880, 31.968016, 30.033089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019631, 0.447886, -0.893875,
		0.997750, 0.066107, 0.011212,
		0.064113, -0.891643, -0.448176,
		36.099113, 31.700523, 29.898636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545525, 32.475277, 29.589617>,  <36.054234, 32.324673, 30.212358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545525, 32.475277, 29.589617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372036, 32.124619, 29.506298>,  <36.267944, 31.914225, 29.456306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372036, 32.124619, 29.506298>,  <36.545525, 32.475277, 29.589617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372036, 32.124619, 29.506298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009389, 0.226762, -0.973905,
		0.900999, -0.424357, -0.090121,
		-0.433719, -0.876642, -0.208297,
		36.241920, 31.861626, 29.443810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962589, 32.171825, 29.061008>,  <36.545525, 32.475277, 29.589617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962589, 32.171825, 29.061008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589909, 32.026546, 29.059027>,  <36.366302, 31.939379, 29.057838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589909, 32.026546, 29.059027>,  <36.962589, 32.171825, 29.061008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589909, 32.026546, 29.059027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095929, 0.259188, -0.961051,
		0.350340, -0.894934, -0.276326,
		-0.931697, -0.363202, -0.004954,
		36.310398, 31.917585, 29.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858448, 31.757578, 28.329268>,  <36.962589, 32.171825, 29.061008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858448, 31.757578, 28.329268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494030, 31.822020, 28.481079>,  <36.275379, 31.860683, 28.572166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494030, 31.822020, 28.481079>,  <36.858448, 31.757578, 28.329268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494030, 31.822020, 28.481079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357484, 0.149995, -0.921795,
		-0.205432, -0.975473, -0.079060,
		-0.911045, 0.161104, 0.379530,
		36.220718, 31.870350, 28.594938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292736, 31.408884, 27.821209>,  <36.858448, 31.757578, 28.329268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292736, 31.408884, 27.821209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087666, 31.675898, 28.037193>,  <35.964622, 31.836105, 28.166784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087666, 31.675898, 28.037193>,  <36.292736, 31.408884, 27.821209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087666, 31.675898, 28.037193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544101, 0.233892, -0.805759,
		-0.664164, -0.706891, 0.243294,
		-0.512679, 0.667533, 0.539963,
		35.933861, 31.876158, 28.199183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571117, 31.374151, 27.668659>,  <36.292736, 31.408884, 27.821209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571117, 31.374151, 27.668659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652554, 31.731800, 27.828205>,  <35.701416, 31.946390, 27.923933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652554, 31.731800, 27.828205>,  <35.571117, 31.374151, 27.668659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652554, 31.731800, 27.828205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415015, 0.447800, -0.791983,
		-0.886743, -0.004294, 0.462243,
		0.203591, 0.894123, 0.398866,
		35.713631, 32.000038, 27.947865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906982, 31.753103, 27.502226>,  <35.571117, 31.374151, 27.668659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906982, 31.753103, 27.502226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163483, 32.044220, 27.599485>,  <35.317383, 32.218891, 27.657841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163483, 32.044220, 27.599485>,  <34.906982, 31.753103, 27.502226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163483, 32.044220, 27.599485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335478, 0.550895, -0.764179,
		-0.690112, 0.408457, 0.597418,
		0.641249, 0.727790, 0.243151,
		35.355858, 32.262558, 27.672430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463448, 32.321175, 27.480673>,  <34.906982, 31.753103, 27.502226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463448, 32.321175, 27.480673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830143, 32.477707, 27.448563>,  <35.050159, 32.571629, 27.429296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830143, 32.477707, 27.448563>,  <34.463448, 32.321175, 27.480673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830143, 32.477707, 27.448563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311393, 0.574130, -0.757238,
		-0.250244, 0.719188, 0.648187,
		0.916740, 0.391335, -0.080278,
		35.105164, 32.595108, 27.424479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444061, 33.064102, 27.404289>,  <34.463448, 32.321175, 27.480673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444061, 33.064102, 27.404289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814240, 32.986660, 27.274019>,  <35.036346, 32.940197, 27.195858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814240, 32.986660, 27.274019>,  <34.444061, 33.064102, 27.404289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814240, 32.986660, 27.274019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122490, 0.660532, -0.740738,
		0.358526, 0.725407, 0.587574,
		0.925449, -0.193602, -0.325673,
		35.091873, 32.928581, 27.176317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782860, 33.738571, 27.258213>,  <34.444061, 33.064102, 27.404289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782860, 33.738571, 27.258213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940273, 33.464081, 27.013519>,  <35.034721, 33.299385, 26.866703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940273, 33.464081, 27.013519>,  <34.782860, 33.738571, 27.258213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940273, 33.464081, 27.013519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023909, 0.657565, -0.753018,
		0.918997, 0.310967, 0.242370,
		0.393538, -0.686227, -0.611736,
		35.058334, 33.258213, 26.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253548, 34.155556, 26.965401>,  <34.782860, 33.738571, 27.258213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253548, 34.155556, 26.965401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213589, 33.834480, 26.730213>,  <35.189613, 33.641834, 26.589100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213589, 33.834480, 26.730213>,  <35.253548, 34.155556, 26.965401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213589, 33.834480, 26.730213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137622, 0.574099, -0.807137,
		0.985434, -0.161548, 0.053118,
		-0.099896, -0.802691, -0.587969,
		35.183620, 33.593674, 26.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909172, 34.077637, 26.486872>,  <35.253548, 34.155556, 26.965401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909172, 34.077637, 26.486872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624210, 33.877140, 26.290403>,  <35.453236, 33.756844, 26.172523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.624210, 33.877140, 26.290403>,  <35.909172, 34.077637, 26.486872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624210, 33.877140, 26.290403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288394, 0.428962, -0.856049,
		0.639777, -0.751499, -0.161038,
		-0.712400, -0.501239, -0.491169,
		35.410492, 33.726768, 26.143053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646263, 33.896496, 26.546144>,  <35.909172, 34.077637, 26.486872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646263, 33.896496, 26.546144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974365, 34.120899, 26.501516>,  <37.171227, 34.255543, 26.474739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974365, 34.120899, 26.501516>,  <36.646263, 33.896496, 26.546144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974365, 34.120899, 26.501516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273723, -0.213720, 0.937763,
		0.502248, -0.799746, -0.328866,
		0.820258, 0.561008, -0.111568,
		37.220444, 34.289200, 26.468046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071228, 33.527115, 26.903629>,  <36.646263, 33.896496, 26.546144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071228, 33.527115, 26.903629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246925, 33.883190, 26.855249>,  <37.352345, 34.096836, 26.826221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246925, 33.883190, 26.855249>,  <37.071228, 33.527115, 26.903629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246925, 33.883190, 26.855249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386064, -0.065475, 0.920145,
		0.811185, -0.450860, -0.372430,
		0.439241, 0.890190, -0.120949,
		37.378696, 34.150246, 26.818964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760307, 33.357433, 27.088696>,  <37.071228, 33.527115, 26.903629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760307, 33.357433, 27.088696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678650, 33.746975, 27.128550>,  <37.629658, 33.980701, 27.152462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678650, 33.746975, 27.128550>,  <37.760307, 33.357433, 27.088696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678650, 33.746975, 27.128550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195405, -0.059192, 0.978935,
		0.959241, 0.219310, -0.178213,
		-0.204142, 0.973858, 0.099633,
		37.617409, 34.039131, 27.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317444, 33.589203, 27.501785>,  <37.760307, 33.357433, 27.088696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317444, 33.589203, 27.501785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052498, 33.884068, 27.555241>,  <37.893528, 34.060986, 27.587315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.052498, 33.884068, 27.555241>,  <38.317444, 33.589203, 27.501785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052498, 33.884068, 27.555241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294587, 0.092262, 0.951160,
		0.688831, 0.669386, -0.278270,
		-0.662367, 0.737164, 0.133640,
		37.853786, 34.105217, 27.595333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724464, 34.180637, 27.773087>,  <38.317444, 33.589203, 27.501785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724464, 34.180637, 27.773087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338844, 34.220066, 27.871796>,  <38.107471, 34.243725, 27.931021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.338844, 34.220066, 27.871796>,  <38.724464, 34.180637, 27.773087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338844, 34.220066, 27.871796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250039, 0.022108, 0.967983,
		0.089961, 0.994884, -0.045960,
		-0.964048, 0.098572, 0.246771,
		38.049629, 34.249638, 27.945827>
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
