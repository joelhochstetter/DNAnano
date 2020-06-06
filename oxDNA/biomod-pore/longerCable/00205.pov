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
	<24.407602, 34.766987, 34.486500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236443, 34.931576, 34.808392>,  <24.133747, 35.030327, 35.001526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236443, 34.931576, 34.808392>,  <24.407602, 34.766987, 34.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236443, 34.931576, 34.808392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559196, -0.578970, 0.593375,
		0.710071, 0.703909, 0.017651,
		-0.427901, 0.411468, 0.804732,
		24.108072, 35.055016, 35.049812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815598, 34.468658, 34.973923>,  <24.407602, 34.766987, 34.486500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815598, 34.468658, 34.973923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503061, 34.611393, 35.178738>,  <24.315540, 34.697033, 35.301624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503061, 34.611393, 35.178738>,  <24.815598, 34.468658, 34.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503061, 34.611393, 35.178738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123539, -0.715766, 0.687326,
		0.611758, 0.600291, 0.515173,
		-0.781339, 0.356833, 0.512034,
		24.268660, 34.718445, 35.332348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073063, 34.615005, 35.646797>,  <24.815598, 34.468658, 34.973923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073063, 34.615005, 35.646797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682264, 34.532707, 35.624344>,  <24.447786, 34.483330, 35.610870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682264, 34.532707, 35.624344>,  <25.073063, 34.615005, 35.646797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682264, 34.532707, 35.624344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093618, -0.650243, 0.753936,
		-0.191618, 0.731336, 0.654546,
		-0.976995, -0.205745, -0.056132,
		24.389166, 34.470985, 35.607506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670652, 34.799149, 36.148052>,  <25.073063, 34.615005, 35.646797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670652, 34.799149, 36.148052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573580, 34.458416, 35.962368>,  <24.515337, 34.253975, 35.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573580, 34.458416, 35.962368>,  <24.670652, 34.799149, 36.148052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573580, 34.458416, 35.962368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285601, -0.520039, 0.804979,
		-0.927113, 0.062774, 0.369487,
		-0.242680, -0.851833, -0.464207,
		24.500776, 34.202866, 35.823105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.065208, 34.373489, 36.411659>,  <24.670652, 34.799149, 36.148052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.065208, 34.373489, 36.411659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376551, 34.166386, 36.269623>,  <24.563356, 34.042126, 36.184399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.376551, 34.166386, 36.269623>,  <24.065208, 34.373489, 36.411659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.376551, 34.166386, 36.269623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217513, -0.308181, 0.926128,
		-0.588941, -0.798094, -0.127256,
		0.778355, -0.517755, -0.355096,
		24.610058, 34.011059, 36.163094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061342, 33.610828, 36.521175>,  <24.065208, 34.373489, 36.411659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061342, 33.610828, 36.521175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431274, 33.757114, 36.479347>,  <24.653234, 33.844887, 36.454250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431274, 33.757114, 36.479347>,  <24.061342, 33.610828, 36.521175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431274, 33.757114, 36.479347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211928, -0.267129, 0.940069,
		0.315866, -0.891568, -0.324555,
		0.924833, 0.365718, -0.104571,
		24.708725, 33.866829, 36.447975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495363, 33.202488, 36.996250>,  <24.061342, 33.610828, 36.521175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495363, 33.202488, 36.996250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662495, 33.549473, 36.888226>,  <24.762774, 33.757664, 36.823410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662495, 33.549473, 36.888226>,  <24.495363, 33.202488, 36.996250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662495, 33.549473, 36.888226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506649, 0.024262, 0.861811,
		0.754140, -0.496913, -0.429361,
		0.417828, 0.867461, -0.270058,
		24.787844, 33.809711, 36.807209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.480705, 32.594475, 36.696884>,  <24.495363, 33.202488, 36.996250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.480705, 32.594475, 36.696884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836708, 32.600605, 36.879162>,  <25.050310, 32.604282, 36.988529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836708, 32.600605, 36.879162>,  <24.480705, 32.594475, 36.696884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836708, 32.600605, 36.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178412, -0.908041, 0.378988,
		0.419596, -0.418602, -0.805426,
		0.890005, 0.015325, 0.455694,
		25.103710, 32.605202, 37.015869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.827677, 31.956945, 36.541416>,  <24.480705, 32.594475, 36.696884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.827677, 31.956945, 36.541416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048538, 32.046535, 36.862656>,  <25.181055, 32.100288, 37.055397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.048538, 32.046535, 36.862656>,  <24.827677, 31.956945, 36.541416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048538, 32.046535, 36.862656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201990, -0.898610, 0.389488,
		0.808905, -0.377274, -0.450929,
		0.552153, 0.223976, 0.803095,
		25.214184, 32.113728, 37.103584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388983, 31.374926, 36.587296>,  <24.827677, 31.956945, 36.541416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388983, 31.374926, 36.587296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332102, 31.558964, 36.937859>,  <25.297974, 31.669386, 37.148197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332102, 31.558964, 36.937859>,  <25.388983, 31.374926, 36.587296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332102, 31.558964, 36.937859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013695, -0.884406, 0.466517,
		0.989743, 0.078343, 0.119465,
		-0.142205, 0.460096, 0.876407,
		25.289440, 31.696993, 37.200779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844826, 31.020178, 36.966019>,  <25.388983, 31.374926, 36.587296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844826, 31.020178, 36.966019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639605, 31.232058, 37.236187>,  <25.516472, 31.359184, 37.398289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639605, 31.232058, 37.236187>,  <25.844826, 31.020178, 36.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639605, 31.232058, 37.236187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016427, -0.792796, 0.609266,
		0.858201, 0.301490, 0.415446,
		-0.513051, 0.529697, 0.675425,
		25.485689, 31.390966, 37.438816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170746, 31.003284, 37.628593>,  <25.844826, 31.020178, 36.966019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170746, 31.003284, 37.628593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773327, 31.042006, 37.652229>,  <25.534876, 31.065239, 37.666409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773327, 31.042006, 37.652229>,  <26.170746, 31.003284, 37.628593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773327, 31.042006, 37.652229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047318, -0.827304, 0.559758,
		0.103069, 0.553350, 0.826547,
		-0.993548, 0.096804, 0.059086,
		25.475262, 31.071047, 37.669956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033846, 30.968542, 38.371696>,  <26.170746, 31.003284, 37.628593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033846, 30.968542, 38.371696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751844, 30.809565, 38.136745>,  <25.582644, 30.714178, 37.995777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751844, 30.809565, 38.136745>,  <26.033846, 30.968542, 38.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751844, 30.809565, 38.136745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058121, -0.793053, 0.606373,
		-0.706819, 0.461634, 0.536005,
		-0.705003, -0.397443, -0.587376,
		25.540344, 30.690332, 37.960533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350569, 30.918171, 38.659359>,  <26.033846, 30.968542, 38.371696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350569, 30.918171, 38.659359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435839, 30.589876, 38.447342>,  <25.487000, 30.392899, 38.320133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435839, 30.589876, 38.447342>,  <25.350569, 30.918171, 38.659359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435839, 30.589876, 38.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117919, -0.560160, 0.819949,
		-0.969872, -0.112289, -0.216191,
		0.213173, -0.820739, -0.530043,
		25.499790, 30.343655, 38.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605221, 30.734138, 38.687061>,  <25.350569, 30.918171, 38.659359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605221, 30.734138, 38.687061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695433, 30.382858, 38.518349>,  <24.749559, 30.172091, 38.417122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695433, 30.382858, 38.518349>,  <24.605221, 30.734138, 38.687061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695433, 30.382858, 38.518349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322912, 0.341075, -0.882834,
		0.919165, 0.335302, -0.206660,
		0.225530, -0.878203, -0.421777,
		24.763092, 30.119398, 38.391815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379938, 31.319290, 38.142723>,  <24.605221, 30.734138, 38.687061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379938, 31.319290, 38.142723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750753, 31.217295, 38.032753>,  <24.973242, 31.156097, 37.966770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750753, 31.217295, 38.032753>,  <24.379938, 31.319290, 38.142723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750753, 31.217295, 38.032753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120537, 0.896926, -0.425435,
		0.355069, 0.361254, 0.862218,
		0.927036, -0.254988, -0.274926,
		25.028864, 31.140799, 37.950275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632509, 32.006237, 38.168137>,  <24.379938, 31.319290, 38.142723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632509, 32.006237, 38.168137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931618, 31.805471, 37.994278>,  <25.111082, 31.685011, 37.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931618, 31.805471, 37.994278>,  <24.632509, 32.006237, 38.168137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931618, 31.805471, 37.994278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314566, 0.844311, -0.433806,
		0.584713, 0.187662, 0.789237,
		0.747770, -0.501919, -0.434647,
		25.155949, 31.654896, 37.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207094, 32.400040, 38.271446>,  <24.632509, 32.006237, 38.168137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207094, 32.400040, 38.271446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289206, 32.165592, 37.957932>,  <25.338472, 32.024921, 37.769821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289206, 32.165592, 37.957932>,  <25.207094, 32.400040, 38.271446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289206, 32.165592, 37.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372661, 0.787325, -0.491165,
		0.904978, -0.191261, 0.380046,
		0.205279, -0.586122, -0.783787,
		25.350790, 31.989756, 37.722794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963097, 32.411499, 38.075947>,  <25.207094, 32.400040, 38.271446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963097, 32.411499, 38.075947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715057, 32.338669, 37.770706>,  <25.566233, 32.294971, 37.587563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715057, 32.338669, 37.770706>,  <25.963097, 32.411499, 38.075947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715057, 32.338669, 37.770706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208835, 0.899289, -0.384274,
		0.756218, -0.397650, -0.519624,
		-0.620099, -0.182079, -0.763102,
		25.529028, 32.284046, 37.541775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321442, 32.606010, 37.549034>,  <25.963097, 32.411499, 38.075947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321442, 32.606010, 37.549034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950768, 32.611927, 37.398815>,  <25.728363, 32.615479, 37.308685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950768, 32.611927, 37.398815>,  <26.321442, 32.606010, 37.549034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950768, 32.611927, 37.398815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239331, 0.793665, -0.559300,
		0.289786, -0.608175, -0.739018,
		-0.926685, 0.014792, -0.375548,
		25.672762, 32.616364, 37.286152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313618, 32.573959, 36.833340>,  <26.321442, 32.606010, 37.549034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313618, 32.573959, 36.833340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985437, 32.776409, 36.939697>,  <25.788530, 32.897881, 37.003510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985437, 32.776409, 36.939697>,  <26.313618, 32.573959, 36.833340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985437, 32.776409, 36.939697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210947, 0.700246, -0.682024,
		-0.531380, -0.503477, -0.681282,
		-0.820449, 0.506128, 0.265890,
		25.739304, 32.928249, 37.019463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958614, 32.673210, 36.528046>,  <26.313618, 32.573959, 36.833340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958614, 32.673210, 36.528046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007120, 32.399517, 36.240398>,  <27.036224, 32.235302, 36.067810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007120, 32.399517, 36.240398>,  <26.958614, 32.673210, 36.528046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007120, 32.399517, 36.240398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955970, 0.275546, -0.100970,
		0.267236, -0.675208, 0.687516,
		0.121266, -0.684228, -0.719115,
		27.043501, 32.194248, 36.024662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744274, 32.805382, 35.768375>,  <26.958614, 32.673210, 36.528046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744274, 32.805382, 35.768375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969080, 33.135883, 35.783592>,  <27.103964, 33.334183, 35.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969080, 33.135883, 35.783592>,  <26.744274, 32.805382, 35.768375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969080, 33.135883, 35.783592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176465, 0.164710, -0.970428,
		-0.808085, 0.538681, 0.238374,
		0.562013, 0.826253, 0.038042,
		27.137684, 33.383759, 35.795006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432478, 33.513363, 35.549297>,  <26.744274, 32.805382, 35.768375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432478, 33.513363, 35.549297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823246, 33.498997, 35.465069>,  <27.057707, 33.490379, 35.414532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823246, 33.498997, 35.465069>,  <26.432478, 33.513363, 35.549297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823246, 33.498997, 35.465069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206945, 0.085250, -0.974631,
		0.052954, 0.995712, 0.075850,
		0.976918, -0.035914, -0.210572,
		27.116322, 33.488224, 35.401897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729048, 33.957088, 34.948242>,  <26.432478, 33.513363, 35.549297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729048, 33.957088, 34.948242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940279, 33.620564, 34.994419>,  <27.067019, 33.418648, 35.022125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940279, 33.620564, 34.994419>,  <26.729048, 33.957088, 34.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940279, 33.620564, 34.994419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069106, -0.178072, -0.981588,
		0.846378, 0.510379, -0.152176,
		0.528080, -0.841311, 0.115446,
		27.098703, 33.368172, 35.029053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394030, 33.896572, 34.578823>,  <26.729048, 33.957088, 34.948242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394030, 33.896572, 34.578823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248512, 33.524902, 34.605007>,  <27.161201, 33.301899, 34.620716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248512, 33.524902, 34.605007>,  <27.394030, 33.896572, 34.578823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248512, 33.524902, 34.605007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017385, -0.077034, -0.996877,
		0.931318, -0.361519, 0.044178,
		-0.363793, -0.929177, 0.065458,
		27.139374, 33.246151, 34.624645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809183, 33.347023, 34.203232>,  <27.394030, 33.896572, 34.578823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809183, 33.347023, 34.203232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415766, 33.276157, 34.217411>,  <27.179716, 33.233639, 34.225918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.415766, 33.276157, 34.217411>,  <27.809183, 33.347023, 34.203232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415766, 33.276157, 34.217411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024117, -0.065714, -0.997547,
		0.179056, -0.981985, 0.060360,
		-0.983543, -0.177161, 0.035449,
		27.120703, 33.223011, 34.228046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658634, 32.697613, 33.774895>,  <27.809183, 33.347023, 34.203232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658634, 32.697613, 33.774895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324844, 32.914261, 33.815483>,  <27.124571, 33.044250, 33.839836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324844, 32.914261, 33.815483>,  <27.658634, 32.697613, 33.774895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324844, 32.914261, 33.815483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128823, -0.012701, -0.991586,
		-0.535777, -0.840526, 0.080372,
		-0.834475, 0.541623, 0.101474,
		27.074501, 33.076748, 33.845924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148794, 32.316666, 33.503407>,  <27.658634, 32.697613, 33.774895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148794, 32.316666, 33.503407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051191, 32.703957, 33.481499>,  <26.992630, 32.936333, 33.468353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051191, 32.703957, 33.481499>,  <27.148794, 32.316666, 33.503407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051191, 32.703957, 33.481499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165832, -0.097308, -0.981341,
		-0.955490, -0.230369, 0.184306,
		-0.244005, 0.968226, -0.054774,
		26.977989, 32.994423, 33.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491922, 32.360844, 33.125183>,  <27.148794, 32.316666, 33.503407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491922, 32.360844, 33.125183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686066, 32.709068, 33.092804>,  <26.802551, 32.918003, 33.073376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686066, 32.709068, 33.092804>,  <26.491922, 32.360844, 33.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686066, 32.709068, 33.092804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353643, 0.110805, -0.928795,
		-0.799604, 0.479421, 0.361648,
		0.485356, 0.870562, -0.080944,
		26.831673, 32.970238, 33.068520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966213, 32.820091, 32.912766>,  <26.491922, 32.360844, 33.125183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966213, 32.820091, 32.912766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331032, 32.943386, 32.804573>,  <26.549923, 33.017365, 32.739658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331032, 32.943386, 32.804573>,  <25.966213, 32.820091, 32.912766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331032, 32.943386, 32.804573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289793, 0.017768, -0.956925,
		-0.290154, 0.951144, 0.105530,
		0.912048, 0.308237, -0.270479,
		26.604647, 33.035858, 32.723431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825541, 33.320137, 32.342960>,  <25.966213, 32.820091, 32.912766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825541, 33.320137, 32.342960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198011, 33.181850, 32.296669>,  <26.421494, 33.098881, 32.268894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198011, 33.181850, 32.296669>,  <25.825541, 33.320137, 32.342960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198011, 33.181850, 32.296669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071976, 0.136848, -0.987974,
		0.357393, 0.928307, 0.102546,
		0.931176, -0.345714, -0.115725,
		26.477364, 33.078136, 32.261951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204901, 33.663754, 31.871155>,  <25.825541, 33.320137, 32.342960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204901, 33.663754, 31.871155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418116, 33.327538, 31.832449>,  <26.546045, 33.125809, 31.809225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418116, 33.327538, 31.832449>,  <26.204901, 33.663754, 31.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418116, 33.327538, 31.832449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242189, -0.041995, -0.969320,
		0.810687, 0.540121, -0.225955,
		0.533039, -0.840539, -0.096766,
		26.578028, 33.075375, 31.803419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468018, 33.685329, 31.209076>,  <26.204901, 33.663754, 31.871155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468018, 33.685329, 31.209076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408920, 33.304768, 31.317154>,  <26.373463, 33.076431, 31.382000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408920, 33.304768, 31.317154>,  <26.468018, 33.685329, 31.209076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408920, 33.304768, 31.317154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458640, -0.176136, -0.870991,
		0.876254, -0.252605, -0.410328,
		-0.147743, -0.951403, 0.270194,
		26.364597, 33.019348, 31.398212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434544, 33.138435, 30.534609>,  <26.468018, 33.685329, 31.209076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434544, 33.138435, 30.534609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290222, 32.916817, 30.834703>,  <26.203629, 32.783848, 31.014761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290222, 32.916817, 30.834703>,  <26.434544, 33.138435, 30.534609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290222, 32.916817, 30.834703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555260, -0.518708, -0.650099,
		0.749337, -0.651135, -0.120486,
		-0.360805, -0.554044, 0.750236,
		26.181980, 32.750603, 31.059774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627502, 32.478058, 30.296490>,  <26.434544, 33.138435, 30.534609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627502, 32.478058, 30.296490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991156, 32.458977, 30.461994>,  <27.209349, 32.447529, 30.561296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991156, 32.458977, 30.461994>,  <26.627502, 32.478058, 30.296490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991156, 32.458977, 30.461994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404411, 0.136549, 0.904327,
		-0.099639, -0.989484, 0.104849,
		0.909134, -0.047704, 0.413763,
		27.263895, 32.444668, 30.586123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465700, 32.224960, 30.897694>,  <26.627502, 32.478058, 30.296490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465700, 32.224960, 30.897694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843121, 32.342533, 30.958769>,  <27.069572, 32.413078, 30.995413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843121, 32.342533, 30.958769>,  <26.465700, 32.224960, 30.897694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843121, 32.342533, 30.958769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189231, 0.100030, 0.976824,
		0.271850, -0.950577, 0.150005,
		0.943552, 0.293935, 0.152686,
		27.126186, 32.430714, 31.004574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646412, 31.969334, 31.548016>,  <26.465700, 32.224960, 30.897694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646412, 31.969334, 31.548016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893669, 32.274158, 31.470907>,  <27.042023, 32.457054, 31.424643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.893669, 32.274158, 31.470907>,  <26.646412, 31.969334, 31.548016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893669, 32.274158, 31.470907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114601, 0.329983, 0.937005,
		0.777668, -0.557110, 0.291309,
		0.618142, 0.762063, -0.192772,
		27.079111, 32.502777, 31.413076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006384, 32.013657, 32.185139>,  <26.646412, 31.969334, 31.548016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006384, 32.013657, 32.185139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100660, 32.357700, 32.004185>,  <27.157227, 32.564129, 31.895613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100660, 32.357700, 32.004185>,  <27.006384, 32.013657, 32.185139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100660, 32.357700, 32.004185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118946, 0.487531, 0.864965,
		0.964521, -0.150057, 0.217215,
		0.235693, 0.860114, -0.452386,
		27.171368, 32.615734, 31.868469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573290, 32.437824, 32.505165>,  <27.006384, 32.013657, 32.185139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573290, 32.437824, 32.505165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341707, 32.704247, 32.317047>,  <27.202757, 32.864098, 32.204174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341707, 32.704247, 32.317047>,  <27.573290, 32.437824, 32.505165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341707, 32.704247, 32.317047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095659, 0.517331, 0.850422,
		0.809727, 0.537346, -0.235798,
		-0.578957, 0.666054, -0.470299,
		27.168020, 32.904064, 32.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890888, 33.180672, 32.435104>,  <27.573290, 32.437824, 32.505165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890888, 33.180672, 32.435104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495569, 33.145481, 32.484943>,  <27.258377, 33.124367, 32.514847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495569, 33.145481, 32.484943>,  <27.890888, 33.180672, 32.435104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495569, 33.145481, 32.484943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090935, 0.315991, 0.944394,
		-0.122454, 0.944675, -0.304293,
		-0.988299, -0.087975, 0.124598,
		27.199080, 33.119087, 32.522324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596676, 33.889202, 32.732628>,  <27.890888, 33.180672, 32.435104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596676, 33.889202, 32.732628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363096, 33.579727, 32.830940>,  <27.222948, 33.394043, 32.889927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363096, 33.579727, 32.830940>,  <27.596676, 33.889202, 32.732628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363096, 33.579727, 32.830940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081375, 0.245446, 0.965989,
		-0.807700, 0.584090, -0.080370,
		-0.583951, -0.773689, 0.245777,
		27.187910, 33.347622, 32.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224646, 34.275803, 32.860485>,  <27.596676, 33.889202, 32.732628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224646, 34.275803, 32.860485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252594, 34.546562, 33.153587>,  <28.269363, 34.709019, 33.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252594, 34.546562, 33.153587>,  <28.224646, 34.275803, 32.860485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252594, 34.546562, 33.153587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283841, -0.717674, 0.635908,
		0.956322, 0.163555, -0.242276,
		0.069869, 0.676900, 0.732751,
		28.273554, 34.749634, 33.373413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920311, 34.233719, 33.201683>,  <28.224646, 34.275803, 32.860485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920311, 34.233719, 33.201683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647741, 34.409538, 33.435760>,  <28.484200, 34.515030, 33.576206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647741, 34.409538, 33.435760>,  <28.920311, 34.233719, 33.201683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647741, 34.409538, 33.435760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270313, -0.591890, 0.759340,
		0.680142, 0.675619, 0.284510,
		-0.681423, 0.439552, 0.585198,
		28.443314, 34.541405, 33.611320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289463, 34.464218, 33.864738>,  <28.920311, 34.233719, 33.201683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289463, 34.464218, 33.864738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895283, 34.412296, 33.908623>,  <28.658775, 34.381145, 33.934956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895283, 34.412296, 33.908623>,  <29.289463, 34.464218, 33.864738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895283, 34.412296, 33.908623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162347, -0.527884, 0.833656,
		-0.050292, 0.839339, 0.541277,
		-0.985451, -0.129801, 0.109715,
		28.599648, 34.373356, 33.941536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066790, 34.654037, 34.573303>,  <29.289463, 34.464218, 33.864738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066790, 34.654037, 34.573303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911139, 34.349182, 34.366333>,  <28.817749, 34.166267, 34.242153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911139, 34.349182, 34.366333>,  <29.066790, 34.654037, 34.573303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911139, 34.349182, 34.366333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274859, -0.632165, 0.724445,
		-0.879223, 0.139682, 0.455473,
		-0.389126, -0.762140, -0.517421,
		28.794401, 34.120541, 34.211105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417179, 35.235264, 35.078278>,  <29.066790, 34.654037, 34.573303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417179, 35.235264, 35.078278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666000, 35.243305, 34.765190>,  <29.815294, 35.248131, 34.577339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666000, 35.243305, 34.765190>,  <29.417179, 35.235264, 35.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666000, 35.243305, 34.765190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379640, 0.866552, 0.323976,
		0.684778, -0.498681, 0.531410,
		0.622055, 0.020107, -0.782715,
		29.852617, 35.249336, 34.530376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191481, 35.172058, 35.166691>,  <29.417179, 35.235264, 35.078278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191481, 35.172058, 35.166691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091522, 35.380749, 34.840412>,  <30.031548, 35.505962, 34.644646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091522, 35.380749, 34.840412>,  <30.191481, 35.172058, 35.166691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091522, 35.380749, 34.840412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331400, 0.837629, 0.434224,
		0.909794, -0.161811, -0.382219,
		-0.249895, 0.521722, -0.815695,
		30.016554, 35.537266, 34.595703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983698, 35.047947, 35.084217>,  <30.191481, 35.172058, 35.166691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983698, 35.047947, 35.084217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326174, 35.207245, 34.952557>,  <31.531660, 35.302822, 34.873558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326174, 35.207245, 34.952557>,  <30.983698, 35.047947, 35.084217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326174, 35.207245, 34.952557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294056, -0.899437, -0.323332,
		-0.424819, 0.180044, -0.887194,
		0.856189, 0.398242, -0.329155,
		31.583031, 35.326717, 34.853809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181900, 34.985596, 34.284241>,  <30.983698, 35.047947, 35.084217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181900, 34.985596, 34.284241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486916, 34.985355, 34.543018>,  <31.669926, 34.985210, 34.698284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486916, 34.985355, 34.543018>,  <31.181900, 34.985596, 34.284241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486916, 34.985355, 34.543018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395526, -0.790907, -0.466932,
		0.511951, 0.611936, -0.602860,
		0.762539, -0.000599, 0.646942,
		31.715677, 34.985176, 34.737103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715698, 34.674145, 33.935425>,  <31.181900, 34.985596, 34.284241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715698, 34.674145, 33.935425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762604, 34.619541, 34.328896>,  <31.790747, 34.586777, 34.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762604, 34.619541, 34.328896>,  <31.715698, 34.674145, 33.935425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762604, 34.619541, 34.328896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363537, -0.915856, -0.170438,
		0.924170, 0.377588, -0.057770,
		0.117265, -0.136513, 0.983673,
		31.797783, 34.578587, 34.623997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467464, 34.639778, 34.218975>,  <31.715698, 34.674145, 33.935425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467464, 34.639778, 34.218975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309704, 34.475174, 33.890316>,  <32.215050, 34.376411, 33.693119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309704, 34.475174, 33.890316>,  <32.467464, 34.639778, 34.218975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309704, 34.475174, 33.890316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719386, -0.694606, 0.002574,
		-0.571782, -0.590068, 0.569987,
		-0.394398, -0.411512, -0.821649,
		32.191383, 34.351719, 33.643822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366039, 33.985645, 34.246643>,  <32.467464, 34.639778, 34.218975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366039, 33.985645, 34.246643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427582, 34.068165, 33.860115>,  <32.464508, 34.117676, 33.628201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427582, 34.068165, 33.860115>,  <32.366039, 33.985645, 34.246643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427582, 34.068165, 33.860115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715025, -0.698211, -0.035215,
		-0.681959, -0.685523, -0.254931,
		0.153855, 0.206298, -0.966318,
		32.473740, 34.130054, 33.570221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213669, 33.377785, 33.855431>,  <32.366039, 33.985645, 34.246643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213669, 33.377785, 33.855431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489559, 33.621132, 33.698380>,  <32.655094, 33.767139, 33.604149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489559, 33.621132, 33.698380>,  <32.213669, 33.377785, 33.855431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489559, 33.621132, 33.698380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686757, -0.721480, 0.088496,
		-0.229438, -0.330681, -0.915428,
		0.689726, 0.608372, -0.392632,
		32.696476, 33.803642, 33.580589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638744, 32.978275, 33.405590>,  <32.213669, 33.377785, 33.855431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638744, 32.978275, 33.405590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860550, 33.307449, 33.455051>,  <32.993633, 33.504955, 33.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860550, 33.307449, 33.455051>,  <32.638744, 32.978275, 33.405590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860550, 33.307449, 33.455051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824720, -0.563289, 0.050422,
		0.111148, 0.074021, -0.991043,
		0.554512, 0.822937, 0.123655,
		33.026905, 33.554329, 33.492149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187420, 32.998779, 32.854450>,  <32.638744, 32.978275, 33.405590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187420, 32.998779, 32.854450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298542, 33.234798, 33.157677>,  <33.365215, 33.376411, 33.339615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298542, 33.234798, 33.157677>,  <33.187420, 32.998779, 32.854450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298542, 33.234798, 33.157677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836313, -0.536822, 0.111363,
		0.472658, 0.603048, -0.642594,
		0.277802, 0.590047, 0.758070,
		33.381882, 33.411812, 33.385098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777458, 33.272537, 32.662495>,  <33.187420, 32.998779, 32.854450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777458, 33.272537, 32.662495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775444, 33.294460, 33.061890>,  <33.774235, 33.307613, 33.301525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775444, 33.294460, 33.061890>,  <33.777458, 33.272537, 32.662495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775444, 33.294460, 33.061890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621399, -0.782139, 0.046064,
		0.783478, 0.620688, -0.030120,
		-0.005033, 0.054807, 0.998484,
		33.773933, 33.310902, 33.361435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428635, 33.326687, 32.938961>,  <33.777458, 33.272537, 32.662495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428635, 33.326687, 32.938961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187294, 33.135712, 33.194466>,  <34.042488, 33.021126, 33.347767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187294, 33.135712, 33.194466>,  <34.428635, 33.326687, 32.938961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187294, 33.135712, 33.194466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705508, -0.692984, 0.148432,
		0.371784, 0.540207, 0.754952,
		-0.603354, -0.477440, 0.638761,
		34.006287, 32.992481, 33.386093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884697, 33.170311, 33.493450>,  <34.428635, 33.326687, 32.938961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884697, 33.170311, 33.493450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582027, 32.914524, 33.547890>,  <34.400425, 32.761051, 33.580555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582027, 32.914524, 33.547890>,  <34.884697, 33.170311, 33.493450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582027, 32.914524, 33.547890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634108, -0.667131, 0.390953,
		-0.159206, 0.382126, 0.910293,
		-0.756678, -0.639466, 0.136098,
		34.355022, 32.722683, 33.588718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705841, 33.017132, 34.201683>,  <34.884697, 33.170311, 33.493450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705841, 33.017132, 34.201683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656113, 32.730968, 33.926659>,  <34.626274, 32.559269, 33.761646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656113, 32.730968, 33.926659>,  <34.705841, 33.017132, 34.201683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656113, 32.730968, 33.926659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516339, -0.638368, 0.570859,
		-0.847312, -0.284041, 0.448758,
		-0.124326, -0.715407, -0.687558,
		34.618816, 32.516346, 33.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424561, 32.422142, 34.489597>,  <34.705841, 33.017132, 34.201683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424561, 32.422142, 34.489597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602459, 32.297440, 34.153736>,  <34.709198, 32.222618, 33.952221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602459, 32.297440, 34.153736>,  <34.424561, 32.422142, 34.489597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602459, 32.297440, 34.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379331, -0.783674, 0.491897,
		-0.811365, -0.537272, -0.230274,
		0.444742, -0.311758, -0.839649,
		34.735882, 32.203911, 33.901840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851181, 32.084049, 34.107697>,  <34.424561, 32.422142, 34.489597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851181, 32.084049, 34.107697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075291, 32.407803, 34.037289>,  <34.209759, 32.602055, 33.995045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075291, 32.407803, 34.037289>,  <33.851181, 32.084049, 34.107697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075291, 32.407803, 34.037289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812832, 0.578136, 0.071156,
		0.159355, 0.103207, 0.981812,
		0.560276, 0.809387, -0.176018,
		34.243374, 32.650620, 33.984482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473049, 32.593834, 34.445019>,  <33.851181, 32.084049, 34.107697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473049, 32.593834, 34.445019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714478, 32.772446, 34.180801>,  <33.859333, 32.879612, 34.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714478, 32.772446, 34.180801>,  <33.473049, 32.593834, 34.445019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714478, 32.772446, 34.180801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597970, 0.801505, -0.004577,
		0.527387, 0.397750, 0.750772,
		0.603568, 0.446525, -0.660546,
		33.895550, 32.906403, 33.982639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688972, 33.328480, 34.647652>,  <33.473049, 32.593834, 34.445019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688972, 33.328480, 34.647652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701099, 33.325634, 34.247845>,  <33.708378, 33.323929, 34.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701099, 33.325634, 34.247845>,  <33.688972, 33.328480, 34.647652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701099, 33.325634, 34.247845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671883, 0.740214, -0.025649,
		0.740037, 0.672334, 0.017664,
		0.030320, -0.007113, -0.999515,
		33.710197, 33.323502, 33.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812733, 34.013168, 34.490349>,  <33.688972, 33.328480, 34.647652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812733, 34.013168, 34.490349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663013, 33.837727, 34.163540>,  <33.573181, 33.732460, 33.967453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663013, 33.837727, 34.163540>,  <33.812733, 34.013168, 34.490349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663013, 33.837727, 34.163540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556111, 0.811221, -0.180725,
		0.742053, 0.386711, -0.547552,
		-0.374297, -0.438607, -0.817022,
		33.550724, 33.706146, 33.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637646, 34.563850, 34.030907>,  <33.812733, 34.013168, 34.490349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637646, 34.563850, 34.030907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432186, 34.248653, 33.895123>,  <33.308910, 34.059536, 33.813652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432186, 34.248653, 33.895123>,  <33.637646, 34.563850, 34.030907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432186, 34.248653, 33.895123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706436, 0.612944, -0.353903,
		0.486943, 0.058027, -0.871504,
		-0.513647, -0.787993, -0.339461,
		33.278091, 34.012257, 33.793285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500538, 34.655354, 33.287457>,  <33.637646, 34.563850, 34.030907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500538, 34.655354, 33.287457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351231, 34.870743, 32.985275>,  <33.261646, 34.999977, 32.803967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351231, 34.870743, 32.985275>,  <33.500538, 34.655354, 33.287457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351231, 34.870743, 32.985275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391025, -0.647129, -0.654464,
		-0.841290, -0.539695, 0.030997,
		-0.373270, 0.538474, -0.755457,
		33.239250, 35.032284, 32.758636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102936, 34.268250, 32.915291>,  <33.500538, 34.655354, 33.287457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102936, 34.268250, 32.915291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198055, 34.553864, 32.651897>,  <33.255127, 34.725231, 32.493862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198055, 34.553864, 32.651897>,  <33.102936, 34.268250, 32.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198055, 34.553864, 32.651897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388541, -0.691257, -0.609263,
		-0.890217, -0.110964, -0.441815,
		0.237801, 0.714039, -0.658482,
		33.269394, 34.768074, 32.454353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721745, 34.219368, 32.270878>,  <33.102936, 34.268250, 32.915291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721745, 34.219368, 32.270878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057072, 34.423046, 32.192974>,  <33.258270, 34.545254, 32.146233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057072, 34.423046, 32.192974>,  <32.721745, 34.219368, 32.270878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057072, 34.423046, 32.192974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209958, -0.631240, -0.746629,
		-0.503124, 0.585024, -0.636092,
		0.838322, 0.509199, -0.194762,
		33.308567, 34.575806, 32.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791943, 34.158871, 31.568724>,  <32.721745, 34.219368, 32.270878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791943, 34.158871, 31.568724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166374, 34.277042, 31.645121>,  <33.391033, 34.347946, 31.690958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166374, 34.277042, 31.645121>,  <32.791943, 34.158871, 31.568724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166374, 34.277042, 31.645121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344953, -0.664325, -0.663083,
		-0.069014, 0.686581, -0.723770,
		0.936079, 0.295429, 0.190991,
		33.447197, 34.365669, 31.702417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082836, 34.322227, 30.940176>,  <32.791943, 34.158871, 31.568724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082836, 34.322227, 30.940176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404613, 34.250092, 31.166573>,  <33.597679, 34.206810, 31.302410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404613, 34.250092, 31.166573>,  <33.082836, 34.322227, 30.940176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404613, 34.250092, 31.166573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443017, -0.452616, -0.773870,
		0.395734, 0.873280, -0.284212,
		0.804444, -0.180336, 0.565993,
		33.645947, 34.195992, 31.336370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650822, 34.437733, 30.549320>,  <33.082836, 34.322227, 30.940176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650822, 34.437733, 30.549320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821869, 34.209080, 30.829428>,  <33.924496, 34.071888, 30.997492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821869, 34.209080, 30.829428>,  <33.650822, 34.437733, 30.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821869, 34.209080, 30.829428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581865, -0.418790, -0.697172,
		0.691795, 0.705583, 0.153534,
		0.427614, -0.571636, 0.700271,
		33.950153, 34.037590, 31.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443085, 34.407333, 30.336077>,  <33.650822, 34.437733, 30.549320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443085, 34.407333, 30.336077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395569, 34.131863, 30.622187>,  <34.367062, 33.966579, 30.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395569, 34.131863, 30.622187>,  <34.443085, 34.407333, 30.336077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395569, 34.131863, 30.622187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609179, -0.619412, -0.495206,
		0.784085, 0.376907, 0.493104,
		-0.118788, -0.688672, 0.715276,
		34.359932, 33.925262, 30.836769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175598, 34.204983, 30.543304>,  <34.443085, 34.407333, 30.336077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175598, 34.204983, 30.543304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911663, 33.916245, 30.626776>,  <34.753300, 33.743000, 30.676859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911663, 33.916245, 30.626776>,  <35.175598, 34.204983, 30.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911663, 33.916245, 30.626776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586840, -0.668505, -0.456859,
		0.469285, -0.178994, 0.864715,
		-0.659841, -0.721847, 0.208678,
		34.713711, 33.699692, 30.689379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575619, 33.568821, 30.518541>,  <35.175598, 34.204983, 30.543304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575619, 33.568821, 30.518541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199268, 33.434765, 30.498817>,  <34.973457, 33.354332, 30.486982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199268, 33.434765, 30.498817>,  <35.575619, 33.568821, 30.518541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199268, 33.434765, 30.498817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291039, -0.725280, -0.623911,
		0.173332, -0.601375, 0.779938,
		-0.940878, -0.335137, -0.049310,
		34.917004, 33.334225, 30.484024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681355, 32.870998, 30.625647>,  <35.575619, 33.568821, 30.518541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681355, 32.870998, 30.625647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321522, 32.893059, 30.452345>,  <35.105621, 32.906296, 30.348364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321522, 32.893059, 30.452345>,  <35.681355, 32.870998, 30.625647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321522, 32.893059, 30.452345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223272, -0.794506, -0.564721,
		-0.375368, -0.604747, 0.702411,
		-0.899582, 0.055149, -0.433255,
		35.051647, 32.909603, 30.322369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587585, 32.154476, 30.477669>,  <35.681355, 32.870998, 30.625647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587585, 32.154476, 30.477669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304688, 32.336559, 30.261303>,  <35.134949, 32.445808, 30.131483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304688, 32.336559, 30.261303>,  <35.587585, 32.154476, 30.477669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304688, 32.336559, 30.261303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089552, -0.701273, -0.707246,
		-0.701273, -0.548636, 0.455208,
		0.707246, -0.455208, 0.540915,
		35.092514, 32.473122, 30.099028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130947, 31.617186, 30.266020>,  <35.587585, 32.154476, 30.477669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130947, 31.617186, 30.266020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087143, 31.918219, 30.006289>,  <35.060860, 32.098839, 29.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087143, 31.918219, 30.006289>,  <35.130947, 31.617186, 30.266020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087143, 31.918219, 30.006289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030524, -0.655497, -0.754580,
		-0.993517, -0.062812, 0.094754,
		-0.109508, 0.752581, -0.649330,
		35.054291, 32.143993, 29.811489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628075, 31.393690, 29.734009>,  <35.130947, 31.617186, 30.266020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628075, 31.393690, 29.734009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833900, 31.684889, 29.552792>,  <34.957394, 31.859608, 29.444061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833900, 31.684889, 29.552792>,  <34.628075, 31.393690, 29.734009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833900, 31.684889, 29.552792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117241, -0.463660, -0.878222,
		-0.849400, 0.505014, -0.153231,
		0.514561, 0.727997, -0.453041,
		34.988270, 31.903288, 29.416880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351696, 31.423986, 28.986572>,  <34.628075, 31.393690, 29.734009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351696, 31.423986, 28.986572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687374, 31.641474, 28.990944>,  <34.888783, 31.771967, 28.993567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687374, 31.641474, 28.990944>,  <34.351696, 31.423986, 28.986572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687374, 31.641474, 28.990944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185449, -0.267222, -0.945622,
		-0.511232, 0.795589, -0.325083,
		0.839196, 0.543719, 0.010929,
		34.939133, 31.804590, 28.994223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380947, 31.617704, 28.305796>,  <34.351696, 31.423986, 28.986572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380947, 31.617704, 28.305796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753460, 31.714363, 28.414841>,  <34.976967, 31.772358, 28.480268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753460, 31.714363, 28.414841>,  <34.380947, 31.617704, 28.305796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753460, 31.714363, 28.414841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313519, -0.150546, -0.937572,
		-0.185521, 0.958615, -0.215962,
		0.931283, 0.241647, 0.272615,
		35.032845, 31.786858, 28.496626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569450, 32.104321, 27.869537>,  <34.380947, 31.617704, 28.305796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569450, 32.104321, 27.869537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879620, 31.906689, 28.026819>,  <35.065720, 31.788111, 28.121189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879620, 31.906689, 28.026819>,  <34.569450, 32.104321, 27.869537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879620, 31.906689, 28.026819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295105, -0.266966, -0.917411,
		0.558243, 0.827417, -0.061207,
		0.775421, -0.494076, 0.393207,
		35.112247, 31.758467, 28.144781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165112, 32.428200, 27.610306>,  <34.569450, 32.104321, 27.869537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165112, 32.428200, 27.610306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254757, 32.050659, 27.707396>,  <35.308544, 31.824135, 27.765650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254757, 32.050659, 27.707396>,  <35.165112, 32.428200, 27.610306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254757, 32.050659, 27.707396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405217, -0.136260, -0.904009,
		0.886325, 0.300956, 0.351928,
		0.224114, -0.943853, 0.242723,
		35.321991, 31.767504, 27.780212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770405, 32.341667, 27.285315>,  <35.165112, 32.428200, 27.610306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770405, 32.341667, 27.285315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647385, 31.971678, 27.374605>,  <35.573570, 31.749683, 27.428181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647385, 31.971678, 27.374605>,  <35.770405, 32.341667, 27.285315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647385, 31.971678, 27.374605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316405, -0.320663, -0.892784,
		0.897385, -0.203948, 0.391288,
		-0.307553, -0.924976, 0.223228,
		35.555119, 31.694185, 27.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372295, 31.899162, 27.159866>,  <35.770405, 32.341667, 27.285315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372295, 31.899162, 27.159866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049038, 31.663628, 27.154608>,  <35.855083, 31.522306, 27.151453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049038, 31.663628, 27.154608>,  <36.372295, 31.899162, 27.159866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049038, 31.663628, 27.154608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192677, -0.243218, -0.950642,
		0.556575, -0.770790, 0.310011,
		-0.808146, -0.588836, -0.013145,
		35.806595, 31.486977, 27.150665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611195, 31.310871, 26.874973>,  <36.372295, 31.899162, 27.159866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611195, 31.310871, 26.874973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213734, 31.295803, 26.832577>,  <35.975258, 31.286762, 26.807138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213734, 31.295803, 26.832577>,  <36.611195, 31.310871, 26.874973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213734, 31.295803, 26.832577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112293, -0.276779, -0.954350,
		0.006612, -0.960195, 0.279253,
		-0.993653, -0.037668, -0.105993,
		35.915638, 31.284502, 26.800779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572674, 30.680969, 26.679815>,  <36.611195, 31.310871, 26.874973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572674, 30.680969, 26.679815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248482, 30.877050, 26.551550>,  <36.053967, 30.994699, 26.474590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248482, 30.877050, 26.551550>,  <36.572674, 30.680969, 26.679815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248482, 30.877050, 26.551550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173142, -0.322485, -0.930605,
		-0.559596, -0.809755, 0.176492,
		-0.810478, 0.490204, -0.320664,
		36.005337, 31.024111, 26.455351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211742, 30.219658, 26.344940>,  <36.572674, 30.680969, 26.679815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211742, 30.219658, 26.344940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066841, 30.560503, 26.193848>,  <35.979900, 30.765011, 26.103193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066841, 30.560503, 26.193848>,  <36.211742, 30.219658, 26.344940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066841, 30.560503, 26.193848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275877, -0.289077, -0.916693,
		-0.890318, -0.436279, -0.130360,
		-0.362250, 0.852112, -0.377730,
		35.958164, 30.816137, 26.080528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751724, 29.970554, 25.900408>,  <36.211742, 30.219658, 26.344940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751724, 29.970554, 25.900408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828331, 30.346790, 25.788258>,  <35.874294, 30.572533, 25.720968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828331, 30.346790, 25.788258>,  <35.751724, 29.970554, 25.900408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828331, 30.346790, 25.788258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284554, -0.326605, -0.901309,
		-0.939335, 0.092835, -0.330200,
		0.191518, 0.940590, -0.280375,
		35.885788, 30.628967, 25.704145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409180, 30.121761, 25.312616>,  <35.751724, 29.970554, 25.900408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409180, 30.121761, 25.312616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719887, 30.373629, 25.317513>,  <35.906311, 30.524748, 25.320450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719887, 30.373629, 25.317513>,  <35.409180, 30.121761, 25.312616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719887, 30.373629, 25.317513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251858, -0.292769, -0.922417,
		-0.577232, 0.719588, -0.386001,
		0.776769, 0.629667, 0.012238,
		35.952919, 30.562529, 25.321184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340145, 30.447624, 24.638613>,  <35.409180, 30.121761, 25.312616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340145, 30.447624, 24.638613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713772, 30.498581, 24.772058>,  <35.937946, 30.529154, 24.852127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713772, 30.498581, 24.772058>,  <35.340145, 30.447624, 24.638613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713772, 30.498581, 24.772058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354979, -0.229309, -0.906315,
		-0.038955, 0.964981, -0.259410,
		0.934062, 0.127390, 0.333615,
		35.993992, 30.536798, 24.872143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684631, 31.055769, 24.207245>,  <35.340145, 30.447624, 24.638613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684631, 31.055769, 24.207245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977962, 30.829945, 24.358770>,  <36.153961, 30.694450, 24.449686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977962, 30.829945, 24.358770>,  <35.684631, 31.055769, 24.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977962, 30.829945, 24.358770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383386, -0.116752, -0.916179,
		0.561464, 0.817094, 0.130826,
		0.733330, -0.564559, 0.378815,
		36.197960, 30.660578, 24.472414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246185, 31.282753, 23.812532>,  <35.684631, 31.055769, 24.207245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246185, 31.282753, 23.812532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378201, 30.952932, 23.996351>,  <36.457409, 30.755039, 24.106642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378201, 30.952932, 23.996351>,  <36.246185, 31.282753, 23.812532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378201, 30.952932, 23.996351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536215, -0.236893, -0.810157,
		0.776882, 0.513802, 0.363953,
		0.330043, -0.824554, 0.459546,
		36.477215, 30.705566, 24.134214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938801, 31.262213, 23.729324>,  <36.246185, 31.282753, 23.812532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938801, 31.262213, 23.729324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889393, 30.875462, 23.818665>,  <36.859749, 30.643410, 23.872269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889393, 30.875462, 23.818665>,  <36.938801, 31.262213, 23.729324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889393, 30.875462, 23.818665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600106, -0.252035, -0.759178,
		0.790327, 0.040265, 0.611361,
		-0.123516, -0.966880, 0.223353,
		36.852337, 30.585398, 23.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614368, 31.123203, 23.811899>,  <36.938801, 31.262213, 23.729324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614368, 31.123203, 23.811899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412025, 30.783640, 23.750633>,  <37.290619, 30.579903, 23.713873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412025, 30.783640, 23.750633>,  <37.614368, 31.123203, 23.811899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412025, 30.783640, 23.750633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665922, -0.271442, -0.694886,
		0.548319, -0.453511, 0.702619,
		-0.505859, -0.848909, -0.153166,
		37.260269, 30.528967, 23.704683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114910, 30.534868, 23.920713>,  <37.614368, 31.123203, 23.811899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114910, 30.534868, 23.920713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812374, 30.460583, 23.669806>,  <37.630852, 30.416012, 23.519260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812374, 30.460583, 23.669806>,  <38.114910, 30.534868, 23.920713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812374, 30.460583, 23.669806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649858, -0.323362, -0.687839,
		-0.075094, -0.927872, 0.365257,
		-0.756337, -0.185713, -0.627268,
		37.585472, 30.404869, 23.481625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338169, 29.843033, 23.553503>,  <38.114910, 30.534868, 23.920713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338169, 29.843033, 23.553503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050423, 30.032875, 23.350618>,  <37.877773, 30.146780, 23.228888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050423, 30.032875, 23.350618>,  <38.338169, 29.843033, 23.553503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050423, 30.032875, 23.350618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528631, -0.099641, -0.842983,
		-0.450625, -0.874539, -0.179214,
		-0.719365, 0.474607, -0.507209,
		37.834614, 30.175257, 23.198456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971214, 29.383183, 23.133589>,  <38.338169, 29.843033, 23.553503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971214, 29.383183, 23.133589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 29.748587, 22.972281>,  <37.936913, 29.967829, 22.875496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 29.748587, 22.972281>,  <37.971214, 29.383183, 23.133589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949776, 29.748587, 22.972281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432458, -0.342779, -0.833956,
		-0.900060, -0.219093, -0.376684,
		-0.053595, 0.913510, -0.403270,
		37.933697, 30.022640, 22.851299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961533, 29.157112, 22.503622>,  <37.971214, 29.383183, 23.133589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961533, 29.157112, 22.503622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020489, 29.551144, 22.468077>,  <38.055862, 29.787563, 22.446749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020489, 29.551144, 22.468077>,  <37.961533, 29.157112, 22.503622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020489, 29.551144, 22.468077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480425, -0.149837, -0.864142,
		-0.864562, 0.084672, -0.495341,
		0.147389, 0.985079, -0.088865,
		38.064705, 29.846666, 22.441418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629932, 29.450006, 21.900530>,  <37.961533, 29.157112, 22.503622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629932, 29.450006, 21.900530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950775, 29.679420, 21.967077>,  <38.143280, 29.817068, 22.007006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950775, 29.679420, 21.967077>,  <37.629932, 29.450006, 21.900530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950775, 29.679420, 21.967077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200467, 0.003828, -0.979693,
		-0.562524, 0.819173, -0.111904,
		0.802110, 0.573534, 0.166370,
		38.191406, 29.851480, 22.016989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669651, 29.995417, 21.330076>,  <37.629932, 29.450006, 21.900530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669651, 29.995417, 21.330076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032829, 29.978102, 21.496817>,  <38.250736, 29.967712, 21.596861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032829, 29.978102, 21.496817>,  <37.669651, 29.995417, 21.330076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032829, 29.978102, 21.496817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410862, -0.104205, -0.905723,
		0.082646, 0.993613, -0.076826,
		0.907944, -0.043290, 0.416850,
		38.305214, 29.965115, 21.621872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113018, 30.378780, 20.938326>,  <37.669651, 29.995417, 21.330076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113018, 30.378780, 20.938326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402782, 30.202311, 21.150209>,  <38.576641, 30.096428, 21.277340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402782, 30.202311, 21.150209>,  <38.113018, 30.378780, 20.938326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402782, 30.202311, 21.150209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588592, -0.004176, -0.808419,
		0.358866, 0.897412, 0.256646,
		0.724413, -0.441174, 0.529708,
		38.620106, 30.069958, 21.309122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625340, 30.691429, 20.989985>,  <38.113018, 30.378780, 20.938326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625340, 30.691429, 20.989985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819839, 30.349091, 21.060514>,  <38.936539, 30.143688, 21.102833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819839, 30.349091, 21.060514>,  <38.625340, 30.691429, 20.989985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819839, 30.349091, 21.060514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566857, 0.155382, -0.809030,
		0.665007, 0.493341, 0.560697,
		0.486250, -0.855845, 0.176324,
		38.965714, 30.092337, 21.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345028, 30.820478, 20.933584>,  <38.625340, 30.691429, 20.989985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345028, 30.820478, 20.933584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280113, 30.431255, 20.868078>,  <39.241165, 30.197721, 20.828775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280113, 30.431255, 20.868078>,  <39.345028, 30.820478, 20.933584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280113, 30.431255, 20.868078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518515, 0.057107, -0.853159,
		0.839526, -0.223373, 0.495278,
		-0.162289, -0.973059, -0.163765,
		39.231426, 30.139338, 20.818949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957687, 30.438972, 20.692204>,  <39.345028, 30.820478, 20.933584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957687, 30.438972, 20.692204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696938, 30.151295, 20.596018>,  <39.540489, 29.978689, 20.538307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696938, 30.151295, 20.596018>,  <39.957687, 30.438972, 20.692204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696938, 30.151295, 20.596018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316663, 0.029965, -0.948065,
		0.689047, -0.694163, 0.208209,
		-0.651873, -0.719193, -0.240464,
		39.501377, 29.935537, 20.523878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308212, 29.911543, 20.187838>,  <39.957687, 30.438972, 20.692204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308212, 29.911543, 20.187838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916534, 29.842529, 20.145115>,  <39.681526, 29.801121, 20.119482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916534, 29.842529, 20.145115>,  <40.308212, 29.911543, 20.187838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916534, 29.842529, 20.145115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130700, -0.133649, -0.982372,
		0.155219, -0.975894, 0.153419,
		-0.979196, -0.172534, -0.106805,
		39.622776, 29.790770, 20.113073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280983, 29.412172, 19.739824>,  <40.308212, 29.911543, 20.187838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280983, 29.412172, 19.739824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907375, 29.554710, 19.729778>,  <39.683212, 29.640234, 19.723751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907375, 29.554710, 19.729778>,  <40.280983, 29.412172, 19.739824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907375, 29.554710, 19.729778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054742, -0.212243, -0.975683,
		-0.353012, -0.909928, 0.217746,
		-0.934016, 0.356347, -0.025113,
		39.627171, 29.661613, 19.722244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051132, 28.993385, 19.347336>,  <40.280983, 29.412172, 19.739824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051132, 28.993385, 19.347336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788937, 29.293764, 19.315323>,  <39.631618, 29.473991, 19.296114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788937, 29.293764, 19.315323>,  <40.051132, 28.993385, 19.347336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788937, 29.293764, 19.315323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189098, -0.265809, -0.945297,
		-0.731143, -0.604501, 0.316239,
		-0.655493, 0.750948, -0.080034,
		39.592289, 29.519049, 19.291313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428848, 28.754091, 18.838036>,  <40.051132, 28.993385, 19.347336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428848, 28.754091, 18.838036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450089, 29.153419, 18.847281>,  <39.462833, 29.393017, 18.852827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450089, 29.153419, 18.847281>,  <39.428848, 28.754091, 18.838036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450089, 29.153419, 18.847281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199353, 0.033277, -0.979363,
		-0.978488, 0.047402, 0.200785,
		0.053105, 0.998321, 0.023111,
		39.466019, 29.452915, 18.854214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915691, 29.019108, 18.401094>,  <39.428848, 28.754091, 18.838036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915691, 29.019108, 18.401094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183010, 29.314138, 18.439796>,  <39.343403, 29.491156, 18.463018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183010, 29.314138, 18.439796>,  <38.915691, 29.019108, 18.401094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183010, 29.314138, 18.439796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116316, 0.232077, -0.965718,
		-0.734744, 0.634132, 0.240888,
		0.668297, 0.737575, 0.096757,
		39.383499, 29.535412, 18.468824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709576, 29.457796, 17.974140>,  <38.915691, 29.019108, 18.401094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709576, 29.457796, 17.974140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095104, 29.543613, 18.037420>,  <39.326420, 29.595104, 18.075388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095104, 29.543613, 18.037420>,  <38.709576, 29.457796, 17.974140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095104, 29.543613, 18.037420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077459, 0.342462, -0.936333,
		-0.255062, 0.914708, 0.313452,
		0.963817, 0.214543, 0.158202,
		39.384251, 29.607977, 18.084881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678226, 30.128973, 17.746796>,  <38.709576, 29.457796, 17.974140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678226, 30.128973, 17.746796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032158, 29.946266, 17.710041>,  <39.244518, 29.836641, 17.687988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032158, 29.946266, 17.710041>,  <38.678226, 30.128973, 17.746796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032158, 29.946266, 17.710041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085262, 0.352626, -0.931872,
		0.458050, 0.816712, 0.350958,
		0.884828, -0.456767, -0.091886,
		39.297607, 29.809237, 17.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257072, 30.568764, 17.718767>,  <38.678226, 30.128973, 17.746796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257072, 30.568764, 17.718767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360931, 30.248714, 17.502476>,  <39.423244, 30.056684, 17.372702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360931, 30.248714, 17.502476>,  <39.257072, 30.568764, 17.718767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360931, 30.248714, 17.502476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078181, 0.575510, -0.814049,
		0.962534, 0.169090, 0.211983,
		0.259646, -0.800123, -0.540728,
		39.438824, 30.008677, 17.340258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003571, 30.544649, 17.376427>,  <39.257072, 30.568764, 17.718767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003571, 30.544649, 17.376427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696095, 30.385151, 17.176378>,  <39.511608, 30.289452, 17.056349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696095, 30.385151, 17.176378>,  <40.003571, 30.544649, 17.376427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696095, 30.385151, 17.176378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212093, 0.578761, -0.787434,
		0.603437, -0.711363, -0.360315,
		-0.768688, -0.398746, -0.500121,
		39.465488, 30.265528, 17.026342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284725, 30.308924, 16.724989>,  <40.003571, 30.544649, 17.376427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284725, 30.308924, 16.724989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906914, 30.429829, 16.673595>,  <39.680229, 30.502373, 16.642759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906914, 30.429829, 16.673595>,  <40.284725, 30.308924, 16.724989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906914, 30.429829, 16.673595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273716, 0.508215, -0.816577,
		-0.181525, -0.806445, -0.562756,
		-0.944526, 0.302264, -0.128483,
		39.623554, 30.520508, 16.635050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538166, 29.961170, 17.476341>,  <40.284725, 30.308924, 16.724989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538166, 29.961170, 17.476341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877274, 29.908045, 17.681730>,  <41.080738, 29.876169, 17.804964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877274, 29.908045, 17.681730>,  <40.538166, 29.961170, 17.476341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877274, 29.908045, 17.681730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359802, 0.855307, -0.372816,
		-0.389659, 0.500809, 0.772888,
		0.847766, -0.132816, 0.513470,
		41.131603, 29.868200, 17.835772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877083, 30.578766, 17.335888>,  <40.538166, 29.961170, 17.476341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877083, 30.578766, 17.335888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156849, 30.360161, 17.520123>,  <41.324711, 30.228998, 17.630663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156849, 30.360161, 17.520123>,  <40.877083, 30.578766, 17.335888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156849, 30.360161, 17.520123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699963, 0.654029, -0.286877,
		-0.144457, 0.523041, 0.839976,
		0.699417, -0.546511, 0.460589,
		41.366673, 30.196207, 17.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426102, 30.967695, 17.709366>,  <40.877083, 30.578766, 17.335888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426102, 30.967695, 17.709366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599964, 30.625242, 17.597567>,  <41.704281, 30.419771, 17.530487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599964, 30.625242, 17.597567>,  <41.426102, 30.967695, 17.709366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599964, 30.625242, 17.597567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818879, 0.504872, -0.273023,
		0.374853, -0.110203, 0.920511,
		0.434652, -0.856130, -0.279496,
		41.730358, 30.368402, 17.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239456, 31.694933, 17.608679>,  <41.426102, 30.967695, 17.709366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239456, 31.694933, 17.608679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968510, 31.402416, 17.576723>,  <40.805943, 31.226906, 17.557550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968510, 31.402416, 17.576723>,  <41.239456, 31.694933, 17.608679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968510, 31.402416, 17.576723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682770, 0.584538, 0.438339,
		-0.273856, 0.351463, -0.895252,
		-0.677369, -0.731293, -0.079889,
		40.765301, 31.183029, 17.552757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627907, 32.030209, 17.385738>,  <41.239456, 31.694933, 17.608679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627907, 32.030209, 17.385738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566330, 31.699545, 17.602230>,  <40.529385, 31.501146, 17.732126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566330, 31.699545, 17.602230>,  <40.627907, 32.030209, 17.385738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566330, 31.699545, 17.602230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565514, 0.522889, 0.637794,
		-0.810243, -0.207888, -0.547986,
		-0.153946, -0.826662, 0.541231,
		40.520145, 31.451546, 17.764599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987164, 31.848785, 17.453554>,  <40.627907, 32.030209, 17.385738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987164, 31.848785, 17.453554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155979, 31.674576, 17.771599>,  <40.257271, 31.570049, 17.962425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155979, 31.674576, 17.771599>,  <39.987164, 31.848785, 17.453554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155979, 31.674576, 17.771599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538168, 0.585437, 0.606333,
		-0.729559, -0.683800, 0.012694,
		0.422042, -0.435524, 0.795110,
		40.282593, 31.543919, 18.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376026, 31.591129, 17.889297>,  <39.987164, 31.848785, 17.453554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376026, 31.591129, 17.889297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689137, 31.619234, 18.136625>,  <39.877003, 31.636097, 18.285023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689137, 31.619234, 18.136625>,  <39.376026, 31.591129, 17.889297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689137, 31.619234, 18.136625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544237, 0.559114, 0.625458,
		-0.301767, -0.826109, 0.475900,
		0.782779, 0.070260, 0.618321,
		39.923969, 31.640312, 18.322121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094097, 31.572371, 18.605064>,  <39.376026, 31.591129, 17.889297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094097, 31.572371, 18.605064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456646, 31.728241, 18.670361>,  <39.674175, 31.821764, 18.709538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456646, 31.728241, 18.670361>,  <39.094097, 31.572371, 18.605064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456646, 31.728241, 18.670361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340731, 0.445767, 0.827764,
		0.249794, -0.805881, 0.536804,
		0.906369, 0.389676, 0.163239,
		39.728558, 31.845144, 18.719332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257664, 31.406862, 19.248545>,  <39.094097, 31.572371, 18.605064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257664, 31.406862, 19.248545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486973, 31.722336, 19.159700>,  <39.624557, 31.911619, 19.106394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486973, 31.722336, 19.159700>,  <39.257664, 31.406862, 19.248545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486973, 31.722336, 19.159700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279260, 0.442919, 0.851961,
		0.770306, -0.426380, 0.474162,
		0.573274, 0.788684, -0.222112,
		39.658955, 31.958941, 19.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649944, 31.511984, 19.877098>,  <39.257664, 31.406862, 19.248545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649944, 31.511984, 19.877098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676895, 31.862482, 19.686245>,  <39.693066, 32.072781, 19.571733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676895, 31.862482, 19.686245>,  <39.649944, 31.511984, 19.877098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676895, 31.862482, 19.686245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220599, 0.479467, 0.849381,
		0.973035, 0.048028, 0.225602,
		0.067375, 0.876245, -0.477133,
		39.697109, 32.125355, 19.543106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226715, 32.008568, 20.217991>,  <39.649944, 31.511984, 19.877098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226715, 32.008568, 20.217991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956608, 32.237610, 20.032030>,  <39.794544, 32.375034, 19.920454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956608, 32.237610, 20.032030>,  <40.226715, 32.008568, 20.217991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956608, 32.237610, 20.032030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203358, 0.461345, 0.863601,
		0.708983, 0.677705, -0.195089,
		-0.675270, 0.572605, -0.464902,
		39.754028, 32.409393, 19.892559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196659, 32.540009, 20.631739>,  <40.226715, 32.008568, 20.217991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196659, 32.540009, 20.631739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861324, 32.567631, 20.415432>,  <39.660126, 32.584206, 20.285648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861324, 32.567631, 20.415432>,  <40.196659, 32.540009, 20.631739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861324, 32.567631, 20.415432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408937, 0.576308, 0.707559,
		0.360512, 0.814310, -0.454897,
		-0.838332, 0.069059, -0.540768,
		39.609825, 32.588348, 20.253202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114006, 33.139481, 20.676044>,  <40.196659, 32.540009, 20.631739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114006, 33.139481, 20.676044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744179, 33.012981, 20.591049>,  <39.522282, 32.937080, 20.540052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744179, 33.012981, 20.591049>,  <40.114006, 33.139481, 20.676044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744179, 33.012981, 20.591049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368615, 0.601399, 0.708831,
		-0.096375, 0.733693, -0.672611,
		-0.924573, -0.316248, -0.212490,
		39.466808, 32.918106, 20.527302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813362, 33.682526, 20.885014>,  <40.114006, 33.139481, 20.676044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813362, 33.682526, 20.885014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519100, 33.416805, 20.832090>,  <39.342541, 33.257374, 20.800337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519100, 33.416805, 20.832090>,  <39.813362, 33.682526, 20.885014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519100, 33.416805, 20.832090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529244, 0.441824, 0.724357,
		-0.422736, 0.602903, -0.676611,
		-0.735659, -0.664304, -0.132308,
		39.298401, 33.217514, 20.792398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192348, 34.070286, 20.824560>,  <39.813362, 33.682526, 20.885014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192348, 34.070286, 20.824560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049820, 33.706505, 20.910286>,  <38.964302, 33.488235, 20.961721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049820, 33.706505, 20.910286>,  <39.192348, 34.070286, 20.824560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049820, 33.706505, 20.910286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570119, 0.393341, 0.721282,
		-0.740271, 0.134823, -0.658652,
		-0.356320, -0.909453, 0.214314,
		38.942924, 33.433670, 20.974581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495228, 34.115807, 20.914253>,  <39.192348, 34.070286, 20.824560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495228, 34.115807, 20.914253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582756, 33.773804, 21.102333>,  <38.635273, 33.568604, 21.215181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582756, 33.773804, 21.102333>,  <38.495228, 34.115807, 20.914253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582756, 33.773804, 21.102333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604513, 0.259474, 0.753151,
		-0.765952, -0.449045, -0.460083,
		0.218819, -0.855004, 0.470199,
		38.648403, 33.517303, 21.243393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833988, 33.766846, 21.023973>,  <38.495228, 34.115807, 20.914253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833988, 33.766846, 21.023973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124157, 33.658985, 21.277287>,  <38.298260, 33.594269, 21.429274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124157, 33.658985, 21.277287>,  <37.833988, 33.766846, 21.023973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124157, 33.658985, 21.277287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600207, 0.202539, 0.773776,
		-0.336913, -0.941418, -0.014918,
		0.725425, -0.269649, 0.633283,
		38.341785, 33.578091, 21.467272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473137, 33.542850, 21.593634>,  <37.833988, 33.766846, 21.023973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473137, 33.542850, 21.593634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850922, 33.556023, 21.724417>,  <38.077595, 33.563927, 21.802887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850922, 33.556023, 21.724417>,  <37.473137, 33.542850, 21.593634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850922, 33.556023, 21.724417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328279, 0.049690, 0.943273,
		0.014815, -0.998222, 0.057740,
		0.944464, 0.032929, 0.326959,
		38.134262, 33.565903, 21.822504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519638, 33.068184, 22.070723>,  <37.473137, 33.542850, 21.593634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519638, 33.068184, 22.070723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807507, 33.320251, 22.187311>,  <37.980228, 33.471493, 22.257265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807507, 33.320251, 22.187311>,  <37.519638, 33.068184, 22.070723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807507, 33.320251, 22.187311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460178, 0.118567, 0.879874,
		0.519912, -0.767350, 0.375320,
		0.719672, 0.630171, 0.291473,
		38.023407, 33.509304, 22.274754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702496, 32.766029, 22.676054>,  <37.519638, 33.068184, 22.070723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702496, 32.766029, 22.676054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807327, 33.151615, 22.694315>,  <37.870228, 33.382965, 22.705273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807327, 33.151615, 22.694315>,  <37.702496, 32.766029, 22.676054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807327, 33.151615, 22.694315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438406, 0.076781, 0.895492,
		0.859718, -0.254704, 0.442731,
		0.262079, 0.963965, 0.045654,
		37.885952, 33.440804, 22.708012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956562, 32.958492, 23.303164>,  <37.702496, 32.766029, 22.676054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956562, 32.958492, 23.303164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847675, 33.323318, 23.180504>,  <37.782345, 33.542213, 23.106907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847675, 33.323318, 23.180504>,  <37.956562, 32.958492, 23.303164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847675, 33.323318, 23.180504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585789, 0.095746, 0.804788,
		0.763380, 0.398711, 0.508214,
		-0.272218, 0.912065, -0.306651,
		37.766010, 33.596939, 23.088509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900593, 33.291843, 23.927055>,  <37.956562, 32.958492, 23.303164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900593, 33.291843, 23.927055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751431, 33.561493, 23.672026>,  <37.661934, 33.723282, 23.519007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751431, 33.561493, 23.672026>,  <37.900593, 33.291843, 23.927055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751431, 33.561493, 23.672026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631805, 0.318752, 0.706554,
		0.679531, 0.666303, 0.307047,
		-0.372907, 0.674119, -0.637576,
		37.639557, 33.763729, 23.480753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112122, 33.950428, 24.129019>,  <37.900593, 33.291843, 23.927055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112122, 33.950428, 24.129019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765114, 33.968075, 23.930840>,  <37.556911, 33.978664, 23.811932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765114, 33.968075, 23.930840>,  <38.112122, 33.950428, 24.129019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765114, 33.968075, 23.930840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434283, 0.418461, 0.797677,
		0.242521, 0.907163, -0.343860,
		-0.867515, 0.044121, -0.495450,
		37.504860, 33.981312, 23.782204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820629, 34.637661, 24.271814>,  <38.112122, 33.950428, 24.129019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820629, 34.637661, 24.271814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525585, 34.403519, 24.137182>,  <37.348557, 34.263035, 24.056402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525585, 34.403519, 24.137182>,  <37.820629, 34.637661, 24.271814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525585, 34.403519, 24.137182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542868, 0.217682, 0.811116,
		-0.401523, 0.781009, -0.478335,
		-0.737613, -0.585355, -0.336581,
		37.304302, 34.227913, 24.036207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188778, 35.121544, 24.308859>,  <37.820629, 34.637661, 24.271814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188778, 35.121544, 24.308859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062012, 34.743351, 24.278843>,  <36.985954, 34.516434, 24.260834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062012, 34.743351, 24.278843>,  <37.188778, 35.121544, 24.308859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062012, 34.743351, 24.278843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723221, 0.189711, 0.664049,
		-0.613610, 0.264716, -0.743914,
		-0.316913, -0.945482, -0.075040,
		36.966938, 34.459705, 24.256330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448612, 35.087402, 24.259363>,  <37.188778, 35.121544, 24.308859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448612, 35.087402, 24.259363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488113, 34.706360, 24.374449>,  <36.511814, 34.477734, 24.443501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488113, 34.706360, 24.374449>,  <36.448612, 35.087402, 24.259363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488113, 34.706360, 24.374449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774993, 0.107734, 0.622720,
		-0.624206, -0.284474, -0.727627,
		0.098758, -0.952611, 0.287714,
		36.517742, 34.420578, 24.460762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797459, 34.797970, 24.282997>,  <36.448612, 35.087402, 24.259363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797459, 34.797970, 24.282997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983150, 34.521904, 24.505049>,  <36.094566, 34.356266, 24.638279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983150, 34.521904, 24.505049>,  <35.797459, 34.797970, 24.282997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983150, 34.521904, 24.505049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789936, -0.039134, 0.611939,
		-0.400612, -0.722596, -0.563351,
		0.464231, -0.690162, 0.555128,
		36.122421, 34.314857, 24.671587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300888, 34.314552, 24.362268>,  <35.797459, 34.797970, 24.282997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300888, 34.314552, 24.362268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553185, 34.268517, 24.669233>,  <35.704563, 34.240894, 24.853413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553185, 34.268517, 24.669233>,  <35.300888, 34.314552, 24.362268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553185, 34.268517, 24.669233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752200, 0.152348, 0.641082,
		-0.190698, -0.981603, 0.009519,
		0.630738, -0.115093, 0.767414,
		35.742405, 34.233990, 24.899458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937866, 33.905979, 24.905869>,  <35.300888, 34.314552, 24.362268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937866, 33.905979, 24.905869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236038, 34.068542, 25.117212>,  <35.414944, 34.166080, 25.244019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236038, 34.068542, 25.117212>,  <34.937866, 33.905979, 24.905869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236038, 34.068542, 25.117212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613053, 0.106778, 0.782793,
		0.261715, -0.907432, 0.328744,
		0.745434, 0.406406, 0.528359,
		35.459667, 34.190464, 25.275721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981113, 33.465996, 25.472298>,  <34.937866, 33.905979, 24.905869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981113, 33.465996, 25.472298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165741, 33.805630, 25.575066>,  <35.276516, 34.009411, 25.636726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165741, 33.805630, 25.575066>,  <34.981113, 33.465996, 25.472298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165741, 33.805630, 25.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382542, -0.070796, 0.921222,
		0.800387, -0.523486, 0.292135,
		0.461565, 0.849088, 0.256919,
		35.304211, 34.060356, 25.652142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378796, 33.371529, 26.057404>,  <34.981113, 33.465996, 25.472298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378796, 33.371529, 26.057404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351807, 33.768353, 26.099850>,  <35.335613, 34.006447, 26.125319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351807, 33.768353, 26.099850>,  <35.378796, 33.371529, 26.057404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351807, 33.768353, 26.099850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191742, -0.117271, 0.974414,
		0.979123, 0.045404, 0.198133,
		-0.067477, 0.992061, 0.106117,
		35.331562, 34.065971, 26.131685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581997, 33.489388, 26.748951>,  <35.378796, 33.371529, 26.057404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581997, 33.489388, 26.748951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390179, 33.824741, 26.645298>,  <35.275089, 34.025955, 26.583107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390179, 33.824741, 26.645298>,  <35.581997, 33.489388, 26.748951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390179, 33.824741, 26.645298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248853, 0.153250, 0.956340,
		0.841493, 0.523092, 0.135145,
		-0.479543, 0.838385, -0.259132,
		35.246315, 34.076256, 26.567558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713715, 34.024551, 27.263887>,  <35.581997, 33.489388, 26.748951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713715, 34.024551, 27.263887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390617, 34.160652, 27.071314>,  <35.196758, 34.242313, 26.955770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390617, 34.160652, 27.071314>,  <35.713715, 34.024551, 27.263887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390617, 34.160652, 27.071314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263400, 0.522296, 0.811066,
		0.527419, 0.781942, -0.332258,
		-0.807743, 0.340255, -0.481432,
		35.148293, 34.262730, 26.926884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740395, 34.719109, 27.287642>,  <35.713715, 34.024551, 27.263887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740395, 34.719109, 27.287642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358727, 34.603218, 27.257664>,  <35.129726, 34.533684, 27.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358727, 34.603218, 27.257664>,  <35.740395, 34.719109, 27.287642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358727, 34.603218, 27.257664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268294, 0.717214, 0.643135,
		-0.132583, 0.633767, -0.762076,
		-0.954170, -0.289729, -0.074945,
		35.072475, 34.516300, 27.235180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229111, 35.337490, 27.298124>,  <35.740395, 34.719109, 27.287642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229111, 35.337490, 27.298124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991966, 35.024555, 27.374510>,  <34.849682, 34.836796, 27.420341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991966, 35.024555, 27.374510>,  <35.229111, 35.337490, 27.298124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991966, 35.024555, 27.374510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542552, 0.563264, 0.623194,
		-0.595112, 0.265858, -0.758394,
		-0.592857, -0.782338, 0.190964,
		34.814110, 34.789852, 27.431799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581295, 35.635441, 27.346756>,  <35.229111, 35.337490, 27.298124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581295, 35.635441, 27.346756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535152, 35.288090, 27.539677>,  <34.507469, 35.079678, 27.655430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535152, 35.288090, 27.539677>,  <34.581295, 35.635441, 27.346756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535152, 35.288090, 27.539677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603532, 0.446916, 0.660314,
		-0.788950, -0.214915, -0.575647,
		-0.115355, -0.868376, 0.482303,
		34.500546, 35.027576, 27.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768890, 35.574856, 27.471640>,  <34.581295, 35.635441, 27.346756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768890, 35.574856, 27.471640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984093, 35.350460, 27.723303>,  <34.113213, 35.215824, 27.874302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984093, 35.350460, 27.723303>,  <33.768890, 35.574856, 27.471640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984093, 35.350460, 27.723303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538407, 0.345601, 0.768556,
		-0.648590, -0.752230, -0.116106,
		0.538004, -0.560990, 0.629159,
		34.145493, 35.182163, 27.912050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350704, 35.404354, 27.994946>,  <33.768890, 35.574856, 27.471640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350704, 35.404354, 27.994946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699215, 35.320843, 28.172617>,  <33.908321, 35.270737, 28.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699215, 35.320843, 28.172617>,  <33.350704, 35.404354, 27.994946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699215, 35.320843, 28.172617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368167, 0.320449, 0.872792,
		-0.324559, -0.923972, 0.202332,
		0.871272, -0.208780, 0.444180,
		33.960598, 35.258209, 28.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118107, 35.177322, 28.545332>,  <33.350704, 35.404354, 27.994946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118107, 35.177322, 28.545332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491531, 35.296711, 28.624699>,  <33.715588, 35.368343, 28.672319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491531, 35.296711, 28.624699>,  <33.118107, 35.177322, 28.545332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491531, 35.296711, 28.624699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283352, 0.275640, 0.918550,
		0.219470, -0.913749, 0.341900,
		0.933565, 0.298472, 0.198418,
		33.771603, 35.386253, 28.684223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282104, 34.775253, 29.206642>,  <33.118107, 35.177322, 28.545332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282104, 34.775253, 29.206642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506878, 35.103359, 29.163937>,  <33.641743, 35.300224, 29.138313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506878, 35.103359, 29.163937>,  <33.282104, 34.775253, 29.206642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506878, 35.103359, 29.163937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288397, 0.315248, 0.904127,
		0.775280, -0.477269, 0.413710,
		0.561933, 0.820265, -0.106762,
		33.675457, 35.349438, 29.131908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696117, 34.755634, 29.818865>,  <33.282104, 34.775253, 29.206642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696117, 34.755634, 29.818865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739754, 35.122509, 29.665571>,  <33.765934, 35.342632, 29.573595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739754, 35.122509, 29.665571>,  <33.696117, 34.755634, 29.818865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739754, 35.122509, 29.665571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285867, 0.398193, 0.871620,
		0.952040, 0.014471, 0.305632,
		0.109087, 0.917187, -0.383233,
		33.772480, 35.397667, 29.550602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196259, 35.182636, 30.148647>,  <33.696117, 34.755634, 29.818865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196259, 35.182636, 30.148647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964500, 35.470524, 29.995647>,  <33.825447, 35.643257, 29.903849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964500, 35.470524, 29.995647>,  <34.196259, 35.182636, 30.148647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964500, 35.470524, 29.995647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124194, 0.385855, 0.914162,
		0.805528, 0.577165, -0.134178,
		-0.579396, 0.719719, -0.382498,
		33.790680, 35.686440, 29.880898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418827, 35.790916, 30.523619>,  <34.196259, 35.182636, 30.148647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418827, 35.790916, 30.523619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065071, 35.897984, 30.370670>,  <33.852818, 35.962223, 30.278900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065071, 35.897984, 30.370670>,  <34.418827, 35.790916, 30.523619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065071, 35.897984, 30.370670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225488, 0.472265, 0.852127,
		0.408668, 0.839833, -0.357310,
		-0.884390, 0.267668, -0.382372,
		33.799755, 35.978283, 30.255959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312107, 36.582317, 30.556732>,  <34.418827, 35.790916, 30.523619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312107, 36.582317, 30.556732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943459, 36.430035, 30.526588>,  <33.722271, 36.338665, 30.508503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943459, 36.430035, 30.526588>,  <34.312107, 36.582317, 30.556732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943459, 36.430035, 30.526588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274750, 0.502893, 0.819519,
		-0.274101, 0.775989, -0.568075,
		-0.921619, -0.380710, -0.075359,
		33.666973, 36.315823, 30.503981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975327, 36.875790, 30.330793>,  <34.312107, 36.582317, 30.556732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975327, 36.875790, 30.330793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157158, 36.777740, 30.673319>,  <35.266258, 36.718910, 30.878834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157158, 36.777740, 30.673319>,  <34.975327, 36.875790, 30.330793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157158, 36.777740, 30.673319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828525, -0.236541, -0.507538,
		0.326963, 0.940193, 0.095565,
		0.454578, -0.245124, 0.856314,
		35.293530, 36.704205, 30.930212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598980, 37.139610, 30.315563>,  <34.975327, 36.875790, 30.330793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598980, 37.139610, 30.315563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642429, 36.856812, 30.595093>,  <35.668499, 36.687134, 30.762810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642429, 36.856812, 30.595093>,  <35.598980, 37.139610, 30.315563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642429, 36.856812, 30.595093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786183, -0.369122, -0.495646,
		0.608372, 0.603243, 0.515734,
		0.108626, -0.706998, 0.698823,
		35.675018, 36.644711, 30.804739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225796, 37.183403, 30.510801>,  <35.598980, 37.139610, 30.315563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225796, 37.183403, 30.510801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135761, 36.809132, 30.619499>,  <36.081741, 36.584568, 30.684717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135761, 36.809132, 30.619499>,  <36.225796, 37.183403, 30.510801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135761, 36.809132, 30.619499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911295, -0.300864, -0.281110,
		0.344786, 0.184363, 0.920398,
		-0.225089, -0.935677, 0.271742,
		36.068233, 36.528427, 30.701021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842171, 36.936199, 30.824011>,  <36.225796, 37.183403, 30.510801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842171, 36.936199, 30.824011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600468, 36.642311, 30.700684>,  <36.455444, 36.465981, 30.626688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600468, 36.642311, 30.700684>,  <36.842171, 36.936199, 30.824011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600468, 36.642311, 30.700684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764286, -0.425075, -0.484951,
		0.225243, -0.528681, 0.818390,
		-0.604262, -0.734716, -0.308318,
		36.419189, 36.421898, 30.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188538, 36.330502, 30.900888>,  <36.842171, 36.936199, 30.824011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188538, 36.330502, 30.900888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892590, 36.208340, 30.661116>,  <36.715023, 36.135040, 30.517252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892590, 36.208340, 30.661116>,  <37.188538, 36.330502, 30.900888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892590, 36.208340, 30.661116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664207, -0.473175, -0.578736,
		-0.106886, -0.826336, 0.552941,
		-0.739868, -0.305408, -0.599434,
		36.670628, 36.116718, 30.481285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392761, 35.677990, 30.835581>,  <37.188538, 36.330502, 30.900888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392761, 35.677990, 30.835581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150471, 35.748390, 30.525194>,  <37.005096, 35.790630, 30.338963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150471, 35.748390, 30.525194>,  <37.392761, 35.677990, 30.835581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150471, 35.748390, 30.525194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663001, -0.427551, -0.614516,
		-0.439921, -0.886692, 0.142288,
		-0.605722, 0.176002, -0.775967,
		36.968754, 35.801189, 30.292404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307011, 35.009949, 30.446226>,  <37.392761, 35.677990, 30.835581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307011, 35.009949, 30.446226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212559, 35.313934, 30.204004>,  <37.155888, 35.496326, 30.058672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212559, 35.313934, 30.204004>,  <37.307011, 35.009949, 30.446226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212559, 35.313934, 30.204004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554220, -0.406550, -0.726331,
		-0.798174, -0.507120, -0.325188,
		-0.236132, 0.759964, -0.605554,
		37.141720, 35.541924, 30.022339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233418, 34.717735, 29.739918>,  <37.307011, 35.009949, 30.446226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233418, 34.717735, 29.739918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250664, 35.107803, 29.653036>,  <37.261013, 35.341846, 29.600908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250664, 35.107803, 29.653036>,  <37.233418, 34.717735, 29.739918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250664, 35.107803, 29.653036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507391, -0.208654, -0.836073,
		-0.860636, -0.074157, -0.503791,
		0.043117, 0.975174, -0.217202,
		37.263599, 35.400356, 29.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952499, 34.830467, 29.037901>,  <37.233418, 34.717735, 29.739918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952499, 34.830467, 29.037901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185707, 35.153835, 29.070255>,  <37.325630, 35.347855, 29.089668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185707, 35.153835, 29.070255>,  <36.952499, 34.830467, 29.037901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185707, 35.153835, 29.070255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519280, -0.294215, -0.802363,
		-0.624849, 0.509796, -0.591330,
		0.583020, 0.808422, 0.080887,
		37.360615, 35.396362, 29.094521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944393, 35.235985, 28.380690>,  <36.952499, 34.830467, 29.037901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944393, 35.235985, 28.380690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280449, 35.342922, 28.569452>,  <37.482082, 35.407085, 28.682711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280449, 35.342922, 28.569452>,  <36.944393, 35.235985, 28.380690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280449, 35.342922, 28.569452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483939, 0.023353, -0.874790,
		-0.244891, 0.963318, -0.109760,
		0.840137, 0.267345, 0.471906,
		37.532490, 35.423126, 28.711023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210873, 35.668377, 27.924767>,  <36.944393, 35.235985, 28.380690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210873, 35.668377, 27.924767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531170, 35.598030, 28.153812>,  <37.723347, 35.555820, 28.291239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531170, 35.598030, 28.153812>,  <37.210873, 35.668377, 27.924767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531170, 35.598030, 28.153812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532213, -0.229804, -0.814825,
		0.274888, 0.957216, -0.090415,
		0.800741, -0.175866, 0.572613,
		37.771393, 35.545269, 28.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821167, 36.048748, 27.666691>,  <37.210873, 35.668377, 27.924767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821167, 36.048748, 27.666691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993519, 35.762363, 27.886414>,  <38.096931, 35.590530, 28.018248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993519, 35.762363, 27.886414>,  <37.821167, 36.048748, 27.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993519, 35.762363, 27.886414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640059, -0.186626, -0.745316,
		0.636135, 0.672729, 0.377846,
		0.430879, -0.715965, 0.549306,
		38.122784, 35.547573, 28.051205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566246, 36.126842, 27.765020>,  <37.821167, 36.048748, 27.666691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566246, 36.126842, 27.765020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489010, 35.735855, 27.799128>,  <38.442669, 35.501263, 27.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489010, 35.735855, 27.799128>,  <38.566246, 36.126842, 27.765020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489010, 35.735855, 27.799128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519670, -0.175594, -0.836128,
		0.832261, -0.117140, 0.541867,
		-0.193093, -0.977468, 0.085266,
		38.431084, 35.442616, 27.824707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205891, 35.908817, 27.532364>,  <38.566246, 36.126842, 27.765020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205891, 35.908817, 27.532364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995411, 35.568684, 27.535116>,  <38.869122, 35.364605, 27.536768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995411, 35.568684, 27.535116>,  <39.205891, 35.908817, 27.532364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995411, 35.568684, 27.535116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471361, -0.298398, -0.829926,
		0.707767, -0.433463, 0.557831,
		-0.526198, -0.850334, 0.006879,
		38.837551, 35.313583, 27.537180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648056, 35.362701, 27.344896>,  <39.205891, 35.908817, 27.532364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648056, 35.362701, 27.344896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288475, 35.209801, 27.259329>,  <39.072727, 35.118061, 27.207989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288475, 35.209801, 27.259329>,  <39.648056, 35.362701, 27.344896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288475, 35.209801, 27.259329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390360, -0.477528, -0.787138,
		0.198734, -0.791108, 0.578493,
		-0.898957, -0.382251, -0.213916,
		39.018787, 35.095127, 27.195154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824612, 34.693195, 27.310022>,  <39.648056, 35.362701, 27.344896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824612, 34.693195, 27.310022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489620, 34.744095, 27.097445>,  <39.288624, 34.774635, 26.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489620, 34.744095, 27.097445>,  <39.824612, 34.693195, 27.310022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489620, 34.744095, 27.097445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427999, -0.451924, -0.782676,
		-0.339763, -0.882934, 0.324018,
		-0.837483, 0.127245, -0.531442,
		39.238377, 34.782269, 26.938011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518864, 34.007763, 26.983644>,  <39.824612, 34.693195, 27.310022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518864, 34.007763, 26.983644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348331, 34.301716, 26.772667>,  <39.246014, 34.478088, 26.646080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348331, 34.301716, 26.772667>,  <39.518864, 34.007763, 26.983644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348331, 34.301716, 26.772667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417534, -0.357389, -0.835427,
		-0.802441, -0.576391, -0.154472,
		-0.426326, 0.734878, -0.527446,
		39.220432, 34.522179, 26.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091064, 33.664440, 26.395376>,  <39.518864, 34.007763, 26.983644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091064, 33.664440, 26.395376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148285, 34.045513, 26.288092>,  <39.182617, 34.274155, 26.223721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148285, 34.045513, 26.288092>,  <39.091064, 33.664440, 26.395376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148285, 34.045513, 26.288092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217596, -0.294640, -0.930505,
		-0.965499, 0.074749, -0.249448,
		0.143052, 0.952680, -0.268210,
		39.191200, 34.331318, 26.207628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799442, 33.863205, 25.679413>,  <39.091064, 33.664440, 26.395376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799442, 33.863205, 25.679413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081821, 34.140144, 25.739138>,  <39.251247, 34.306309, 25.774973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081821, 34.140144, 25.739138>,  <38.799442, 33.863205, 25.679413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081821, 34.140144, 25.739138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403323, -0.219676, -0.888298,
		-0.582213, 0.687310, -0.434319,
		0.705945, 0.692349, 0.149310,
		39.293606, 34.347851, 25.783930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903801, 34.041321, 25.037968>,  <38.799442, 33.863205, 25.679413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903801, 34.041321, 25.037968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208401, 34.222584, 25.223341>,  <39.391159, 34.331341, 25.334564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208401, 34.222584, 25.223341>,  <38.903801, 34.041321, 25.037968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208401, 34.222584, 25.223341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489112, 0.067411, -0.869612,
		-0.425310, 0.888879, -0.170311,
		0.761499, 0.453155, 0.463432,
		39.436852, 34.358532, 25.362370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939571, 34.616482, 24.616640>,  <38.903801, 34.041321, 25.037968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939571, 34.616482, 24.616640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272667, 34.512669, 24.812265>,  <39.472523, 34.450378, 24.929642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272667, 34.512669, 24.812265>,  <38.939571, 34.616482, 24.616640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272667, 34.512669, 24.812265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492616, -0.055894, -0.868450,
		0.252730, 0.964115, 0.081306,
		0.832740, -0.259536, 0.489065,
		39.522488, 34.434807, 24.958984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482880, 34.975121, 24.253445>,  <38.939571, 34.616482, 24.616640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482880, 34.975121, 24.253445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653893, 34.679176, 24.461226>,  <39.756500, 34.501610, 24.585894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653893, 34.679176, 24.461226>,  <39.482880, 34.975121, 24.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653893, 34.679176, 24.461226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674769, -0.121212, -0.728008,
		0.601586, 0.661754, 0.447411,
		0.427530, -0.739858, 0.519450,
		39.782150, 34.457218, 24.617060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172462, 35.097942, 24.078396>,  <39.482880, 34.975121, 24.253445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172462, 35.097942, 24.078396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166889, 34.717556, 24.201986>,  <40.163544, 34.489323, 24.276140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166889, 34.717556, 24.201986>,  <40.172462, 35.097942, 24.078396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166889, 34.717556, 24.201986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546194, -0.266069, -0.794279,
		0.837543, 0.157693, 0.523121,
		-0.013934, -0.950968, 0.308975,
		40.162708, 34.432266, 24.294680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845985, 34.835472, 24.069712>,  <40.172462, 35.097942, 24.078396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845985, 34.835472, 24.069712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618187, 34.507217, 24.050848>,  <40.481506, 34.310265, 24.039530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618187, 34.507217, 24.050848>,  <40.845985, 34.835472, 24.069712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618187, 34.507217, 24.050848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616966, -0.388838, -0.684221,
		0.543161, -0.418757, 0.727749,
		-0.569498, -0.820639, -0.047157,
		40.447338, 34.261024, 24.036701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284000, 34.279724, 23.911371>,  <40.845985, 34.835472, 24.069712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284000, 34.279724, 23.911371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922020, 34.135490, 23.820993>,  <40.704834, 34.048950, 23.766766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922020, 34.135490, 23.820993>,  <41.284000, 34.279724, 23.911371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922020, 34.135490, 23.820993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378887, -0.441105, -0.813555,
		0.193687, -0.821832, 0.535796,
		-0.904948, -0.360581, -0.225945,
		40.650536, 34.027317, 23.753210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444588, 33.645512, 23.797949>,  <41.284000, 34.279724, 23.911371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444588, 33.645512, 23.797949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084171, 33.674526, 23.626900>,  <40.867920, 33.691933, 23.524271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084171, 33.674526, 23.626900>,  <41.444588, 33.645512, 23.797949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084171, 33.674526, 23.626900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306965, -0.589888, -0.746863,
		-0.306422, -0.804221, 0.509250,
		-0.901043, 0.072533, -0.427622,
		40.813858, 33.696285, 23.498613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233150, 33.049316, 23.801338>,  <41.444588, 33.645512, 23.797949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233150, 33.049316, 23.801338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020782, 33.241261, 23.521950>,  <40.893364, 33.356426, 23.354317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020782, 33.241261, 23.521950>,  <41.233150, 33.049316, 23.801338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020782, 33.241261, 23.521950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324558, -0.646241, -0.690677,
		-0.782809, -0.593386, 0.187358,
		-0.530916, 0.479860, -0.698471,
		40.861507, 33.385220, 23.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873318, 32.521202, 23.386440>,  <41.233150, 33.049316, 23.801338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873318, 32.521202, 23.386440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888687, 32.845821, 23.153233>,  <40.897907, 33.040592, 23.013308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888687, 32.845821, 23.153233>,  <40.873318, 32.521202, 23.386440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888687, 32.845821, 23.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236934, -0.574211, -0.783674,
		-0.970766, -0.108025, -0.214347,
		0.038424, 0.811549, -0.583019,
		40.900215, 33.089287, 22.978327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690601, 32.182785, 22.775492>,  <40.873318, 32.521202, 23.386440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690601, 32.182785, 22.775492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842384, 32.535919, 22.664776>,  <40.933453, 32.747799, 22.598347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842384, 32.535919, 22.664776>,  <40.690601, 32.182785, 22.775492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842384, 32.535919, 22.664776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389861, -0.423877, -0.817518,
		-0.839061, 0.202300, -0.505025,
		0.379453, 0.882838, -0.276790,
		40.956219, 32.800770, 22.581739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523094, 32.305237, 22.057734>,  <40.690601, 32.182785, 22.775492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523094, 32.305237, 22.057734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852299, 32.523228, 22.121803>,  <41.049820, 32.654022, 22.160246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852299, 32.523228, 22.121803>,  <40.523094, 32.305237, 22.057734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852299, 32.523228, 22.121803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416169, -0.386596, -0.823011,
		-0.386596, 0.744007, -0.544974,
		0.823011, 0.544974, 0.160176,
		41.099201, 32.686722, 22.169855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562073, 32.579292, 21.442320>,  <40.523094, 32.305237, 22.057734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562073, 32.579292, 21.442320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923374, 32.641010, 21.602486>,  <41.140156, 32.678043, 21.698586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923374, 32.641010, 21.602486>,  <40.562073, 32.579292, 21.442320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923374, 32.641010, 21.602486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423774, -0.467480, -0.775808,
		0.067480, 0.870434, -0.487638,
		0.903251, 0.154297, 0.400413,
		41.194351, 32.687298, 21.722609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012913, 32.805847, 20.869356>,  <40.562073, 32.579292, 21.442320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012913, 32.805847, 20.869356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271320, 32.694553, 21.153677>,  <41.426365, 32.627777, 21.324270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271320, 32.694553, 21.153677>,  <41.012913, 32.805847, 20.869356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271320, 32.694553, 21.153677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614520, -0.362802, -0.700528,
		0.452790, 0.889360, -0.063399,
		0.646023, -0.278233, 0.710803,
		41.465126, 32.611084, 21.366919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627205, 32.881020, 20.557014>,  <41.012913, 32.805847, 20.869356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627205, 32.881020, 20.557014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700291, 32.620701, 20.851788>,  <41.744144, 32.464508, 21.028652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700291, 32.620701, 20.851788>,  <41.627205, 32.881020, 20.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700291, 32.620701, 20.851788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586393, -0.529499, -0.613004,
		0.789150, 0.544140, 0.284877,
		0.182718, -0.650802, 0.736934,
		41.755108, 32.425461, 21.072868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345757, 32.793110, 20.463665>,  <41.627205, 32.881020, 20.557014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345757, 32.793110, 20.463665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223167, 32.468914, 20.663334>,  <42.149612, 32.274395, 20.783134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223167, 32.468914, 20.663334>,  <42.345757, 32.793110, 20.463665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223167, 32.468914, 20.663334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680066, -0.553360, -0.480940,
		0.666021, 0.192073, 0.720781,
		-0.306476, -0.810494, 0.499171,
		42.131226, 32.225765, 20.813086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007004, 32.534431, 20.783895>,  <42.345757, 32.793110, 20.463665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007004, 32.534431, 20.783895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756027, 32.223106, 20.793257>,  <42.605442, 32.036312, 20.798874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756027, 32.223106, 20.793257>,  <43.007004, 32.534431, 20.783895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756027, 32.223106, 20.793257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694718, -0.573115, -0.434633,
		0.351694, -0.256447, 0.900303,
		-0.627437, -0.778316, 0.023403,
		42.567795, 31.989613, 20.800278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446182, 32.038986, 20.948551>,  <43.007004, 32.534431, 20.783895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446182, 32.038986, 20.948551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150063, 31.806917, 20.812693>,  <42.972389, 31.667677, 20.731176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150063, 31.806917, 20.812693>,  <43.446182, 32.038986, 20.948551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150063, 31.806917, 20.812693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669895, -0.594110, -0.445280,
		0.056549, -0.557169, 0.828471,
		-0.740300, -0.580168, -0.339648,
		42.927971, 31.632866, 20.710798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684669, 31.484545, 21.051701>,  <43.446182, 32.038986, 20.948551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684669, 31.484545, 21.051701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402832, 31.409044, 20.778082>,  <43.233730, 31.363745, 20.613911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402832, 31.409044, 20.778082>,  <43.684669, 31.484545, 21.051701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402832, 31.409044, 20.778082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628370, -0.613829, -0.477875,
		-0.329688, -0.766542, 0.551107,
		-0.704597, -0.188750, -0.684044,
		43.191452, 31.352419, 20.572868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.697987, 30.787420, 20.952421>,  <43.684669, 31.484545, 21.051701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.697987, 30.787420, 20.952421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553467, 30.971474, 20.628017>,  <43.466755, 31.081905, 20.433374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553467, 30.971474, 20.628017>,  <43.697987, 30.787420, 20.952421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553467, 30.971474, 20.628017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622185, -0.528857, -0.577231,
		-0.694512, -0.713154, -0.095210,
		-0.361302, 0.460132, -0.811011,
		43.445076, 31.109514, 20.384714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592098, 30.020580, 20.689322>,  <43.697987, 30.787420, 20.952421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592098, 30.020580, 20.689322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699677, 29.709351, 20.916395>,  <43.764225, 29.522614, 21.052639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699677, 29.709351, 20.916395>,  <43.592098, 30.020580, 20.689322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699677, 29.709351, 20.916395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432007, 0.429337, 0.793120,
		-0.860835, -0.458551, -0.220665,
		0.268946, -0.778075, 0.567686,
		43.780361, 29.475927, 21.086700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970177, 29.699608, 21.022430>,  <43.592098, 30.020580, 20.689322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970177, 29.699608, 21.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267265, 29.561066, 21.251656>,  <43.445518, 29.477940, 21.389191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267265, 29.561066, 21.251656>,  <42.970177, 29.699608, 21.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267265, 29.561066, 21.251656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483470, 0.314727, 0.816826,
		-0.463270, -0.883734, 0.066303,
		0.742724, -0.346355, 0.573062,
		43.490082, 29.457159, 21.423574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603668, 29.293146, 21.511059>,  <42.970177, 29.699608, 21.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603668, 29.293146, 21.511059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958908, 29.411221, 21.651991>,  <43.172054, 29.482065, 21.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958908, 29.411221, 21.651991>,  <42.603668, 29.293146, 21.511059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958908, 29.411221, 21.651991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423357, 0.226810, 0.877113,
		0.178996, -0.928130, 0.326399,
		0.888104, 0.295183, 0.352332,
		43.225338, 29.499777, 21.757690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757336, 28.897423, 22.126926>,  <42.603668, 29.293146, 21.511059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757336, 28.897423, 22.126926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000973, 29.213257, 22.156771>,  <43.147156, 29.402758, 22.174677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000973, 29.213257, 22.156771>,  <42.757336, 28.897423, 22.126926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000973, 29.213257, 22.156771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408448, 0.231650, 0.882898,
		0.679840, -0.568237, 0.463599,
		0.609088, 0.789585, 0.074610,
		43.183701, 29.450132, 22.179153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895546, 28.868711, 22.801105>,  <42.757336, 28.897423, 22.126926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895546, 28.868711, 22.801105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967609, 29.234589, 22.656397>,  <43.010849, 29.454115, 22.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967609, 29.234589, 22.656397>,  <42.895546, 28.868711, 22.801105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967609, 29.234589, 22.656397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529841, 0.400113, 0.747783,
		0.828741, 0.056962, 0.556725,
		0.180158, 0.914694, -0.361771,
		43.021656, 29.508997, 22.547865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093658, 29.214901, 23.352262>,  <42.895546, 28.868711, 22.801105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093658, 29.214901, 23.352262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972782, 29.479229, 23.077454>,  <42.900257, 29.637825, 22.912569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972782, 29.479229, 23.077454>,  <43.093658, 29.214901, 23.352262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972782, 29.479229, 23.077454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563446, 0.457515, 0.687901,
		0.768902, 0.594976, 0.234080,
		-0.302189, 0.660821, -0.687021,
		42.882126, 29.677475, 22.871347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106388, 29.798933, 23.713575>,  <43.093658, 29.214901, 23.352262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106388, 29.798933, 23.713575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862289, 29.893950, 23.411272>,  <42.715828, 29.950960, 23.229891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862289, 29.893950, 23.411272>,  <43.106388, 29.798933, 23.713575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862289, 29.893950, 23.411272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559894, 0.545590, 0.623579,
		0.560460, 0.803683, -0.199947,
		-0.610249, 0.237542, -0.755758,
		42.679214, 29.965212, 23.184546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006298, 30.495493, 23.874733>,  <43.106388, 29.798933, 23.713575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006298, 30.495493, 23.874733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722397, 30.361406, 23.626902>,  <42.552055, 30.280954, 23.478203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722397, 30.361406, 23.626902>,  <43.006298, 30.495493, 23.874733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722397, 30.361406, 23.626902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697107, 0.460857, 0.549230,
		0.101426, 0.821731, -0.560777,
		-0.709757, -0.335215, -0.619577,
		42.509468, 30.260841, 23.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688633, 31.045612, 23.620508>,  <43.006298, 30.495493, 23.874733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688633, 31.045612, 23.620508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428505, 30.743664, 23.586456>,  <42.272427, 30.562494, 23.566025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428505, 30.743664, 23.586456>,  <42.688633, 31.045612, 23.620508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428505, 30.743664, 23.586456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683041, 0.532005, 0.500425,
		-0.332469, 0.383584, -0.861584,
		-0.650323, -0.754873, -0.085128,
		42.233410, 30.517202, 23.560917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075996, 31.384087, 23.349005>,  <42.688633, 31.045612, 23.620508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075996, 31.384087, 23.349005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959934, 31.043015, 23.522787>,  <41.890297, 30.838371, 23.627056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.959934, 31.043015, 23.522787>,  <42.075996, 31.384087, 23.349005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959934, 31.043015, 23.522787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764541, 0.479590, 0.430662,
		-0.575577, -0.207201, -0.791062,
		-0.290152, -0.852678, 0.434455,
		41.872890, 30.787210, 23.653124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425346, 31.438839, 23.273321>,  <42.075996, 31.384087, 23.349005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425346, 31.438839, 23.273321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495892, 31.171360, 23.562246>,  <41.538219, 31.010872, 23.735601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495892, 31.171360, 23.562246>,  <41.425346, 31.438839, 23.273321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495892, 31.171360, 23.562246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711290, 0.420671, 0.563119,
		-0.680413, -0.613090, -0.401446,
		0.176366, -0.668698, 0.722315,
		41.548801, 30.970751, 23.778940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861755, 31.508253, 23.633839>,  <41.425346, 31.438839, 23.273321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861755, 31.508253, 23.633839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062111, 31.300846, 23.911039>,  <41.182323, 31.176403, 24.077360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062111, 31.300846, 23.911039>,  <40.861755, 31.508253, 23.633839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062111, 31.300846, 23.911039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549399, 0.428217, 0.717490,
		-0.668785, -0.740117, -0.070384,
		0.500887, -0.518515, 0.693004,
		41.212376, 31.145292, 24.118940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425442, 31.269642, 24.220432>,  <40.861755, 31.508253, 23.633839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425442, 31.269642, 24.220432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793896, 31.240025, 24.373283>,  <41.014969, 31.222254, 24.464994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793896, 31.240025, 24.373283>,  <40.425442, 31.269642, 24.220432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793896, 31.240025, 24.373283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373990, 0.103709, 0.921616,
		-0.107872, -0.991848, 0.067838,
		0.921138, -0.074045, 0.382129,
		41.070236, 31.217812, 24.487923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304714, 30.940487, 24.814398>,  <40.425442, 31.269642, 24.220432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304714, 30.940487, 24.814398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669857, 31.081745, 24.896357>,  <40.888943, 31.166500, 24.945532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669857, 31.081745, 24.896357>,  <40.304714, 30.940487, 24.814398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669857, 31.081745, 24.896357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301872, 0.245897, 0.921091,
		0.274902, -0.902673, 0.331075,
		0.912854, 0.353152, 0.204894,
		40.943714, 31.187689, 24.957825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516476, 30.639559, 25.423876>,  <40.304714, 30.940487, 24.814398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516476, 30.639559, 25.423876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734512, 30.972765, 25.386023>,  <40.865334, 31.172689, 25.363310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734512, 30.972765, 25.386023>,  <40.516476, 30.639559, 25.423876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734512, 30.972765, 25.386023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300827, 0.299703, 0.905363,
		0.782544, -0.465039, 0.413960,
		0.545094, 0.833017, -0.094634,
		40.898041, 31.222670, 25.357632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981617, 30.637888, 26.006756>,  <40.516476, 30.639559, 25.423876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981617, 30.637888, 26.006756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917934, 31.014141, 25.886845>,  <40.879726, 31.239893, 25.814898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917934, 31.014141, 25.886845>,  <40.981617, 30.637888, 26.006756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917934, 31.014141, 25.886845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286291, 0.246618, 0.925860,
		0.944824, 0.233223, 0.230032,
		-0.159202, 0.940631, -0.299780,
		40.870174, 31.296329, 25.796911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180550, 30.977720, 26.505247>,  <40.981617, 30.637888, 26.006756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180550, 30.977720, 26.505247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965679, 31.264368, 26.327305>,  <40.836758, 31.436357, 26.220539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965679, 31.264368, 26.327305>,  <41.180550, 30.977720, 26.505247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965679, 31.264368, 26.327305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296402, 0.333394, 0.894983,
		0.789675, 0.612619, 0.033316,
		-0.537176, 0.716621, -0.444854,
		40.804527, 31.479355, 26.193848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238564, 31.579826, 26.910213>,  <41.180550, 30.977720, 26.505247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238564, 31.579826, 26.910213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916245, 31.650045, 26.683981>,  <40.722855, 31.692177, 26.548243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916245, 31.650045, 26.683981>,  <41.238564, 31.579826, 26.910213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916245, 31.650045, 26.683981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516601, 0.258540, 0.816260,
		0.289518, 0.949916, -0.117641,
		-0.805793, 0.175548, -0.565580,
		40.674507, 31.702709, 26.514307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085144, 32.209675, 27.067144>,  <41.238564, 31.579826, 26.910213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085144, 32.209675, 27.067144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757469, 32.037159, 26.915930>,  <40.560863, 31.933649, 26.825201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757469, 32.037159, 26.915930>,  <41.085144, 32.209675, 27.067144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757469, 32.037159, 26.915930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543069, 0.371407, 0.753082,
		-0.184392, 0.822219, -0.538475,
		-0.819192, -0.431292, -0.378038,
		40.511711, 31.907772, 26.802519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559425, 32.776348, 26.919085>,  <41.085144, 32.209675, 27.067144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559425, 32.776348, 26.919085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343876, 32.439594, 26.930721>,  <40.214546, 32.237541, 26.937704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343876, 32.439594, 26.930721>,  <40.559425, 32.776348, 26.919085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343876, 32.439594, 26.930721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665319, 0.446530, 0.598299,
		-0.516691, 0.303049, -0.800744,
		-0.538870, -0.841887, 0.029094,
		40.182217, 32.187027, 26.939449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873135, 32.995735, 26.852949>,  <40.559425, 32.776348, 26.919085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873135, 32.995735, 26.852949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846008, 32.629940, 27.012505>,  <39.829731, 32.410461, 27.108238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846008, 32.629940, 27.012505>,  <39.873135, 32.995735, 26.852949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846008, 32.629940, 27.012505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674019, 0.336770, 0.657483,
		-0.735595, -0.224270, -0.639221,
		-0.067817, -0.914488, 0.398888,
		39.825665, 32.355595, 27.132172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187912, 32.927734, 27.026907>,  <39.873135, 32.995735, 26.852949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187912, 32.927734, 27.026907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346107, 32.644836, 27.261305>,  <39.441025, 32.475098, 27.401943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346107, 32.644836, 27.261305>,  <39.187912, 32.927734, 27.026907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346107, 32.644836, 27.261305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646997, 0.238320, 0.724291,
		-0.651906, -0.665589, -0.363332,
		0.395491, -0.707245, 0.585996,
		39.464756, 32.432663, 27.437103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652000, 32.601814, 27.354622>,  <39.187912, 32.927734, 27.026907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652000, 32.601814, 27.354622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961750, 32.492439, 27.582857>,  <39.147602, 32.426815, 27.719799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961750, 32.492439, 27.582857>,  <38.652000, 32.601814, 27.354622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961750, 32.492439, 27.582857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551946, 0.148972, 0.820465,
		-0.309352, -0.950282, -0.035565,
		0.774376, -0.273442, 0.570589,
		39.194061, 32.410408, 27.754034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348732, 32.209534, 27.908741>,  <38.652000, 32.601814, 27.354622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348732, 32.209534, 27.908741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709003, 32.346432, 28.015808>,  <38.925167, 32.428570, 28.080048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709003, 32.346432, 28.015808>,  <38.348732, 32.209534, 27.908741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709003, 32.346432, 28.015808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363395, 0.255687, 0.895862,
		0.238152, -0.904158, 0.354658,
		0.900682, 0.342232, 0.267674,
		38.979206, 32.449108, 28.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282330, 32.172802, 28.592678>,  <38.348732, 32.209534, 27.908741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282330, 32.172802, 28.592678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604004, 32.404591, 28.539766>,  <38.797009, 32.543663, 28.508018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604004, 32.404591, 28.539766>,  <38.282330, 32.172802, 28.592678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604004, 32.404591, 28.539766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127046, 0.384985, 0.914137,
		0.580646, -0.718328, 0.383218,
		0.804183, 0.579476, -0.132279,
		38.845261, 32.578434, 28.500082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851078, 32.150856, 29.222391>,  <38.282330, 32.172802, 28.592678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851078, 32.150856, 29.222391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900620, 32.512131, 29.057991>,  <38.930344, 32.728893, 28.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900620, 32.512131, 29.057991>,  <38.851078, 32.150856, 29.222391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900620, 32.512131, 29.057991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041658, 0.418554, 0.907236,
		0.991426, -0.095240, 0.089463,
		0.123851, 0.903184, -0.410998,
		38.937775, 32.783085, 28.934692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264751, 32.468517, 29.612658>,  <38.851078, 32.150856, 29.222391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264751, 32.468517, 29.612658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073498, 32.763363, 29.421640>,  <38.958744, 32.940269, 29.307030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073498, 32.763363, 29.421640>,  <39.264751, 32.468517, 29.612658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073498, 32.763363, 29.421640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184220, 0.447459, 0.875125,
		0.858747, 0.506404, -0.078157,
		-0.478139, 0.737113, -0.477544,
		38.930058, 32.984497, 29.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658485, 32.962250, 29.885923>,  <39.264751, 32.468517, 29.612658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658485, 32.962250, 29.885923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301136, 33.102013, 29.772932>,  <39.086727, 33.185871, 29.705137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301136, 33.102013, 29.772932>,  <39.658485, 32.962250, 29.885923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301136, 33.102013, 29.772932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112336, 0.435038, 0.893377,
		0.435038, 0.829855, -0.349403,
		-0.893377, 0.349403, -0.282480,
		39.033123, 33.206833, 29.688189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603222, 33.644493, 30.145405>,  <39.658485, 32.962250, 29.885923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603222, 33.644493, 30.145405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224247, 33.528965, 30.090347>,  <38.996861, 33.459648, 30.057314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224247, 33.528965, 30.090347>,  <39.603222, 33.644493, 30.145405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224247, 33.528965, 30.090347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212369, 0.245939, 0.945734,
		-0.239299, 0.925254, -0.294349,
		-0.947436, -0.288824, -0.137642,
		38.940018, 33.442318, 30.049055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222675, 34.115971, 30.574858>,  <39.603222, 33.644493, 30.145405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222675, 34.115971, 30.574858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963009, 33.819912, 30.504700>,  <38.807209, 33.642277, 30.462605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963009, 33.819912, 30.504700>,  <39.222675, 34.115971, 30.574858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963009, 33.819912, 30.504700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346298, 0.082276, 0.934509,
		-0.677244, 0.667393, -0.309723,
		-0.649168, -0.740147, -0.175396,
		38.768257, 33.597866, 30.452082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576283, 34.367939, 30.806400>,  <39.222675, 34.115971, 30.574858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576283, 34.367939, 30.806400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562092, 33.968204, 30.803101>,  <38.553577, 33.728363, 30.801121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562092, 33.968204, 30.803101>,  <38.576283, 34.367939, 30.806400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562092, 33.968204, 30.803101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172151, -0.002022, 0.985069,
		-0.984432, 0.036371, -0.171965,
		-0.035481, -0.999336, -0.008252,
		38.551449, 33.668404, 30.800625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074619, 34.247822, 31.327518>,  <38.576283, 34.367939, 30.806400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074619, 34.247822, 31.327518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256180, 33.892227, 31.303268>,  <38.365116, 33.678871, 31.288719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256180, 33.892227, 31.303268>,  <38.074619, 34.247822, 31.327518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256180, 33.892227, 31.303268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254325, -0.194459, 0.947367,
		-0.853987, -0.414591, -0.314357,
		0.453899, -0.888988, -0.060624,
		38.392349, 33.625530, 31.285082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601604, 33.709686, 31.565657>,  <38.074619, 34.247822, 31.327518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601604, 33.709686, 31.565657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980637, 33.585068, 31.594038>,  <38.208057, 33.510296, 31.611067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980637, 33.585068, 31.594038>,  <37.601604, 33.709686, 31.565657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980637, 33.585068, 31.594038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163199, -0.280986, 0.945734,
		-0.274670, -0.907747, -0.317098,
		0.947587, -0.311515, 0.070965,
		38.264912, 33.491604, 31.615324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601303, 33.205044, 32.097137>,  <37.601604, 33.709686, 31.565657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601303, 33.205044, 32.097137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996746, 33.261219, 32.075500>,  <38.234013, 33.294926, 32.062519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996746, 33.261219, 32.075500>,  <37.601303, 33.205044, 32.097137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996746, 33.261219, 32.075500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079742, -0.184010, 0.979684,
		0.127635, -0.972840, -0.193113,
		0.988610, 0.140441, -0.054090,
		38.293327, 33.303352, 32.059273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888435, 32.625031, 32.464836>,  <37.601303, 33.205044, 32.097137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888435, 32.625031, 32.464836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173126, 32.905567, 32.448971>,  <38.343941, 33.073887, 32.439453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173126, 32.905567, 32.448971>,  <37.888435, 32.625031, 32.464836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173126, 32.905567, 32.448971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223808, -0.172876, 0.959179,
		0.665853, -0.691547, -0.280005,
		0.711723, 0.701339, -0.039664,
		38.386642, 33.115971, 32.437073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458569, 32.272964, 32.862221>,  <37.888435, 32.625031, 32.464836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458569, 32.272964, 32.862221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513485, 32.669117, 32.855419>,  <38.546436, 32.906811, 32.851337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513485, 32.669117, 32.855419>,  <38.458569, 32.272964, 32.862221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513485, 32.669117, 32.855419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326149, -0.028987, 0.944874,
		0.935295, -0.135274, -0.326993,
		0.137296, 0.990384, -0.017008,
		38.554672, 32.966232, 32.850315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031570, 32.352524, 33.310371>,  <38.458569, 32.272964, 32.862221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031570, 32.352524, 33.310371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900833, 32.729153, 33.277855>,  <38.822392, 32.955132, 33.258347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900833, 32.729153, 33.277855>,  <39.031570, 32.352524, 33.310371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900833, 32.729153, 33.277855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234854, 0.164233, 0.958056,
		0.915433, 0.294043, -0.274812,
		-0.326843, 0.941576, -0.081287,
		38.802780, 33.011627, 33.253468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595482, 32.793438, 33.528896>,  <39.031570, 32.352524, 33.310371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595482, 32.793438, 33.528896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233990, 32.955864, 33.583126>,  <39.017094, 33.053322, 33.615662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233990, 32.955864, 33.583126>,  <39.595482, 32.793438, 33.528896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233990, 32.955864, 33.583126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190314, 0.097411, 0.976878,
		0.383474, 0.908636, -0.165314,
		-0.903730, 0.406069, 0.135572,
		38.962872, 33.077686, 33.623798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646263, 33.362469, 34.067329>,  <39.595482, 32.793438, 33.528896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646263, 33.362469, 34.067329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248669, 33.320763, 34.080673>,  <39.010113, 33.295738, 34.088680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248669, 33.320763, 34.080673>,  <39.646263, 33.362469, 34.067329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248669, 33.320763, 34.080673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022935, 0.099626, 0.994761,
		-0.107043, 0.989547, -0.096636,
		-0.993990, -0.104266, 0.033360,
		38.950470, 33.289482, 34.090683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452587, 33.759972, 34.598900>,  <39.646263, 33.362469, 34.067329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452587, 33.759972, 34.598900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131046, 33.527649, 34.547543>,  <38.938122, 33.388256, 34.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131046, 33.527649, 34.547543>,  <39.452587, 33.759972, 34.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131046, 33.527649, 34.547543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094946, -0.087791, 0.991604,
		-0.587198, 0.809296, 0.015427,
		-0.803856, -0.580803, -0.128391,
		38.889889, 33.353409, 34.509026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502525, 34.138115, 35.384361>,  <39.452587, 33.759972, 34.598900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502525, 34.138115, 35.384361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802307, 34.030815, 35.142254>,  <39.982178, 33.966434, 34.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802307, 34.030815, 35.142254>,  <39.502525, 34.138115, 35.384361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802307, 34.030815, 35.142254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147138, 0.823883, -0.547328,
		0.645494, 0.499258, 0.577996,
		0.749458, -0.268252, -0.605271,
		40.027145, 33.950340, 34.960674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905483, 34.825108, 35.245773>,  <39.502525, 34.138115, 35.384361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905483, 34.825108, 35.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003197, 34.572716, 34.951241>,  <40.061825, 34.421280, 34.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003197, 34.572716, 34.951241>,  <39.905483, 34.825108, 35.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003197, 34.572716, 34.951241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032112, 0.753658, -0.656481,
		0.969173, 0.184010, 0.163841,
		0.244280, -0.630983, -0.736335,
		40.076481, 34.383423, 34.730339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335739, 35.289478, 34.876167>,  <39.905483, 34.825108, 35.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335739, 35.289478, 34.876167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265175, 34.974091, 34.640472>,  <40.222836, 34.784859, 34.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265175, 34.974091, 34.640472>,  <40.335739, 35.289478, 34.876167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265175, 34.974091, 34.640472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030763, 0.593920, -0.803936,
		0.983837, -0.159946, -0.080516,
		-0.176406, -0.788465, -0.589240,
		40.212254, 34.737553, 34.463699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891407, 35.356491, 34.502167>,  <40.335739, 35.289478, 34.876167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891407, 35.356491, 34.502167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622437, 35.148930, 34.291042>,  <40.461052, 35.024395, 34.164368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622437, 35.148930, 34.291042>,  <40.891407, 35.356491, 34.502167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622437, 35.148930, 34.291042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061855, 0.671208, -0.738684,
		0.737571, -0.529361, -0.419244,
		-0.672430, -0.518900, -0.527807,
		40.420708, 34.993259, 34.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095745, 35.453369, 33.841366>,  <40.891407, 35.356491, 34.502167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095745, 35.453369, 33.841366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726196, 35.305439, 33.801975>,  <40.504467, 35.216682, 33.778339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726196, 35.305439, 33.801975>,  <41.095745, 35.453369, 33.841366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726196, 35.305439, 33.801975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185587, 0.657963, -0.729824,
		0.334701, -0.655985, -0.676505,
		-0.923868, -0.369824, -0.098479,
		40.449036, 35.194492, 33.772430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026531, 35.182606, 33.173817>,  <41.095745, 35.453369, 33.841366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026531, 35.182606, 33.173817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654205, 35.270279, 33.290806>,  <40.430809, 35.322884, 33.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654205, 35.270279, 33.290806>,  <41.026531, 35.182606, 33.173817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654205, 35.270279, 33.290806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113271, 0.587822, -0.801021,
		-0.347489, -0.778733, -0.522328,
		-0.930818, 0.219181, 0.292469,
		40.374962, 35.336033, 33.378548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715393, 35.282684, 32.567234>,  <41.026531, 35.182606, 33.173817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715393, 35.282684, 32.567234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437572, 35.444294, 32.805347>,  <40.270878, 35.541260, 32.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437572, 35.444294, 32.805347>,  <40.715393, 35.282684, 32.567234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437572, 35.444294, 32.805347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189324, 0.695612, -0.693023,
		-0.694083, -0.594042, -0.406647,
		-0.694553, 0.404028, 0.595279,
		40.229206, 35.565502, 32.983932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080105, 35.412388, 32.076981>,  <40.715393, 35.282684, 32.567234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080105, 35.412388, 32.076981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058804, 35.635128, 32.408543>,  <40.046024, 35.768772, 32.607479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058804, 35.635128, 32.408543>,  <40.080105, 35.412388, 32.076981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058804, 35.635128, 32.408543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198729, 0.807566, -0.555287,
		-0.978607, -0.194297, 0.067659,
		-0.053252, 0.556854, 0.828902,
		40.042828, 35.802185, 32.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964520, 36.116241, 31.751753>,  <40.080105, 35.412388, 32.076981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964520, 36.116241, 31.751753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875820, 36.178185, 32.136845>,  <39.822601, 36.215351, 32.367901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875820, 36.178185, 32.136845>,  <39.964520, 36.116241, 31.751753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875820, 36.178185, 32.136845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196636, 0.959924, -0.199703,
		-0.955072, -0.233591, -0.182410,
		-0.221749, 0.154862, 0.962728,
		39.809296, 36.224644, 32.425663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254478, 36.441265, 31.989063>,  <39.964520, 36.116241, 31.751753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254478, 36.441265, 31.989063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497147, 36.531013, 32.294117>,  <39.642746, 36.584862, 32.477150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497147, 36.531013, 32.294117>,  <39.254478, 36.441265, 31.989063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497147, 36.531013, 32.294117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112057, 0.973901, -0.197384,
		-0.787017, 0.034288, 0.615977,
		0.606668, 0.224369, 0.762635,
		39.679146, 36.598324, 32.522907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862885, 36.954762, 32.312630>,  <39.254478, 36.441265, 31.989063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862885, 36.954762, 32.312630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262581, 36.962234, 32.326344>,  <39.502399, 36.966717, 32.334572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262581, 36.962234, 32.326344>,  <38.862885, 36.954762, 32.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262581, 36.962234, 32.326344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007988, 0.957356, -0.288801,
		-0.038217, 0.288307, 0.956775,
		0.999238, 0.018680, 0.034284,
		39.562351, 36.967838, 32.336628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972618, 37.512363, 32.668835>,  <38.862885, 36.954762, 32.312630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972618, 37.512363, 32.668835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278675, 37.434258, 32.423420>,  <39.462311, 37.387394, 32.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278675, 37.434258, 32.423420>,  <38.972618, 37.512363, 32.668835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278675, 37.434258, 32.423420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070788, 0.921615, -0.381594,
		0.639954, 0.335406, 0.691347,
		0.765145, -0.195264, -0.613534,
		39.508217, 37.375679, 32.239361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217751, 38.108322, 32.554733>,  <38.972618, 37.512363, 32.668835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217751, 38.108322, 32.554733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430447, 37.936062, 32.263039>,  <39.558064, 37.832706, 32.088020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430447, 37.936062, 32.263039>,  <39.217751, 38.108322, 32.554733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430447, 37.936062, 32.263039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046005, 0.874477, -0.482880,
		0.845655, 0.223219, 0.484810,
		0.531743, -0.430654, -0.729237,
		39.589970, 37.806866, 32.044266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822884, 38.555061, 32.366425>,  <39.217751, 38.108322, 32.554733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822884, 38.555061, 32.366425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752544, 38.332447, 32.041622>,  <39.710339, 38.198879, 31.846741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752544, 38.332447, 32.041622>,  <39.822884, 38.555061, 32.366425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752544, 38.332447, 32.041622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019266, 0.822752, -0.568073,
		0.984228, -0.115540, -0.133960,
		-0.175851, -0.556533, -0.812002,
		39.699787, 38.165485, 31.798021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268070, 38.863438, 31.815905>,  <39.822884, 38.555061, 32.366425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268070, 38.863438, 31.815905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006496, 38.634518, 31.617979>,  <39.849552, 38.497166, 31.499224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006496, 38.634518, 31.617979>,  <40.268070, 38.863438, 31.815905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006496, 38.634518, 31.617979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206339, 0.494327, -0.844432,
		0.727870, -0.654302, -0.205168,
		-0.653934, -0.572303, -0.494814,
		39.810314, 38.462826, 31.469536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605667, 38.375107, 31.254128>,  <40.268070, 38.863438, 31.815905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605667, 38.375107, 31.254128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235806, 38.482124, 31.145735>,  <40.013889, 38.546337, 31.080700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235806, 38.482124, 31.145735>,  <40.605667, 38.375107, 31.254128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235806, 38.482124, 31.145735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363577, 0.408642, -0.837152,
		-0.113242, -0.872600, -0.475127,
		-0.924655, 0.267546, -0.270982,
		39.958408, 38.562389, 31.064440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530437, 38.095131, 30.568449>,  <40.605667, 38.375107, 31.254128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530437, 38.095131, 30.568449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296192, 38.412899, 30.632896>,  <40.155643, 38.603558, 30.671566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296192, 38.412899, 30.632896>,  <40.530437, 38.095131, 30.568449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296192, 38.412899, 30.632896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341427, 0.422018, -0.839838,
		-0.735177, -0.436810, -0.518375,
		-0.585613, 0.794417, 0.161119,
		40.120510, 38.651222, 30.681232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272430, 38.372112, 29.845472>,  <40.530437, 38.095131, 30.568449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272430, 38.372112, 29.845472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252193, 38.674889, 30.106083>,  <40.240051, 38.856552, 30.262449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252193, 38.674889, 30.106083>,  <40.272430, 38.372112, 29.845472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252193, 38.674889, 30.106083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456346, 0.597797, -0.659081,
		-0.888363, 0.263979, -0.375667,
		-0.050590, 0.756937, 0.651527,
		40.237015, 38.901970, 30.301540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931572, 38.921124, 29.539301>,  <40.272430, 38.372112, 29.845472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931572, 38.921124, 29.539301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148750, 39.094582, 29.826956>,  <40.279057, 39.198658, 29.999550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148750, 39.094582, 29.826956>,  <39.931572, 38.921124, 29.539301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148750, 39.094582, 29.826956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326352, 0.680085, -0.656490,
		-0.773758, 0.591132, 0.227730,
		0.542948, 0.433644, 0.719139,
		40.311634, 39.224674, 30.042698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875839, 39.607037, 29.358603>,  <39.931572, 38.921124, 29.539301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875839, 39.607037, 29.358603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174717, 39.574902, 29.622496>,  <40.354042, 39.555622, 29.780832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174717, 39.574902, 29.622496>,  <39.875839, 39.607037, 29.358603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174717, 39.574902, 29.622496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536642, 0.658529, -0.527593,
		-0.392068, 0.748254, 0.535162,
		0.747194, -0.080338, 0.659733,
		40.398876, 39.550800, 29.820415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113106, 40.288479, 29.553917>,  <39.875839, 39.607037, 29.358603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113106, 40.288479, 29.553917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441715, 40.064217, 29.595398>,  <40.638882, 39.929657, 29.620287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441715, 40.064217, 29.595398>,  <40.113106, 40.288479, 29.553917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441715, 40.064217, 29.595398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559963, 0.759109, -0.331955,
		0.107391, 0.330781, 0.937577,
		0.821528, -0.560657, 0.103704,
		40.688175, 39.896019, 29.626509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824562, 40.667236, 29.453360>,  <40.113106, 40.288479, 29.553917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824562, 40.667236, 29.453360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193920, 40.815117, 29.412060>,  <41.415535, 40.903843, 29.387280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193920, 40.815117, 29.412060>,  <40.824562, 40.667236, 29.453360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193920, 40.815117, 29.412060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219846, -0.729880, -0.647258,
		-0.314649, 0.574978, -0.755246,
		0.923398, 0.369697, -0.103250,
		41.470940, 40.926025, 29.381084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339531, 40.375134, 29.058046>,  <40.824562, 40.667236, 29.453360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339531, 40.375134, 29.058046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393059, 40.476460, 29.441280>,  <41.425175, 40.537254, 29.671221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393059, 40.476460, 29.441280>,  <41.339531, 40.375134, 29.058046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393059, 40.476460, 29.441280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590788, -0.755811, 0.282347,
		0.795652, -0.603808, 0.048513,
		0.133816, 0.253311, 0.958085,
		41.433205, 40.552452, 29.728706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678486, 39.764759, 29.409056>,  <41.339531, 40.375134, 29.058046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678486, 39.764759, 29.409056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462776, 40.013866, 29.635805>,  <41.333351, 40.163330, 29.771854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462776, 40.013866, 29.635805>,  <41.678486, 39.764759, 29.409056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462776, 40.013866, 29.635805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589145, -0.759988, 0.274456,
		0.601741, -0.185965, 0.776740,
		-0.539274, 0.622764, 0.566876,
		41.300995, 40.200695, 29.805868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598919, 39.335274, 30.043556>,  <41.678486, 39.764759, 29.409056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598919, 39.335274, 30.043556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336494, 39.637108, 30.048992>,  <41.179039, 39.818207, 30.052254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336494, 39.637108, 30.048992>,  <41.598919, 39.335274, 30.043556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336494, 39.637108, 30.048992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624719, -0.553081, 0.551206,
		0.423447, 0.353136, 0.834259,
		-0.656063, 0.754584, 0.013590,
		41.139675, 39.863483, 30.053070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297821, 39.494198, 30.756950>,  <41.598919, 39.335274, 30.043556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297821, 39.494198, 30.756950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032223, 39.601963, 30.477945>,  <40.872864, 39.666622, 30.310543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032223, 39.601963, 30.477945>,  <41.297821, 39.494198, 30.756950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032223, 39.601963, 30.477945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671984, -0.624129, 0.398623,
		-0.327943, 0.733402, 0.595462,
		-0.663996, 0.269415, -0.697513,
		40.833023, 39.682789, 30.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754345, 39.925579, 31.034691>,  <41.297821, 39.494198, 30.756950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754345, 39.925579, 31.034691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622181, 39.695709, 30.735205>,  <40.542881, 39.557785, 30.555513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622181, 39.695709, 30.735205>,  <40.754345, 39.925579, 31.034691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622181, 39.695709, 30.735205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643098, -0.443552, 0.624249,
		-0.690837, 0.687755, -0.223021,
		-0.330409, -0.574678, -0.748716,
		40.523060, 39.523304, 30.510590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061749, 39.995453, 31.030807>,  <40.754345, 39.925579, 31.034691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061749, 39.995453, 31.030807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123257, 39.662437, 30.817930>,  <40.160160, 39.462627, 30.690203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123257, 39.662437, 30.817930>,  <40.061749, 39.995453, 31.030807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123257, 39.662437, 30.817930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756588, -0.445635, 0.478523,
		-0.635554, 0.329069, -0.698416,
		0.153772, -0.832540, -0.532195,
		40.169388, 39.412674, 30.658272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419209, 39.715897, 30.892342>,  <40.061749, 39.995453, 31.030807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419209, 39.715897, 30.892342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649067, 39.394817, 30.828526>,  <39.786983, 39.202171, 30.790236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649067, 39.394817, 30.828526>,  <39.419209, 39.715897, 30.892342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649067, 39.394817, 30.828526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641816, -0.562968, 0.520710,
		-0.507788, -0.196832, -0.838695,
		0.574651, -0.802698, -0.159539,
		39.821461, 39.154007, 30.780663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871315, 39.232014, 30.880211>,  <39.419209, 39.715897, 30.892342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871315, 39.232014, 30.880211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217358, 39.035736, 30.921797>,  <39.424984, 38.917969, 30.946749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217358, 39.035736, 30.921797>,  <38.871315, 39.232014, 30.880211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217358, 39.035736, 30.921797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472047, -0.726412, 0.499497,
		-0.169577, -0.481196, -0.860055,
		0.865110, -0.490690, 0.103965,
		39.476891, 38.888531, 30.952986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629463, 38.454910, 30.952957>,  <38.871315, 39.232014, 30.880211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629463, 38.454910, 30.952957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028183, 38.486877, 30.953535>,  <39.267414, 38.506058, 30.953882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028183, 38.486877, 30.953535>,  <38.629463, 38.454910, 30.952957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028183, 38.486877, 30.953535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069099, -0.870635, 0.487052,
		0.040184, -0.485394, -0.873372,
		0.996800, 0.079921, 0.001446,
		39.327225, 38.510853, 30.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899555, 37.786396, 30.814209>,  <38.629463, 38.454910, 30.952957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899555, 37.786396, 30.814209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199062, 37.995682, 30.976978>,  <39.378769, 38.121254, 31.074640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199062, 37.995682, 30.976978>,  <38.899555, 37.786396, 30.814209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199062, 37.995682, 30.976978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220838, -0.775766, 0.591115,
		0.624958, -0.352746, -0.696418,
		0.748771, 0.523218, 0.406921,
		39.423695, 38.152649, 31.099054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538513, 37.350071, 30.809259>,  <38.899555, 37.786396, 30.814209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538513, 37.350071, 30.809259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635124, 37.617748, 31.090357>,  <39.693089, 37.778355, 31.259016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635124, 37.617748, 31.090357>,  <39.538513, 37.350071, 30.809259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635124, 37.617748, 31.090357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349529, -0.735568, 0.580319,
		0.905260, 0.105469, -0.411558,
		0.241523, 0.669191, 0.702745,
		39.707581, 37.818504, 31.301180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221260, 37.195099, 31.115482>,  <39.538513, 37.350071, 30.809259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221260, 37.195099, 31.115482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028534, 37.396423, 31.402405>,  <39.912899, 37.517216, 31.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028534, 37.396423, 31.402405>,  <40.221260, 37.195099, 31.115482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028534, 37.396423, 31.402405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170162, -0.749269, 0.640032,
		0.859590, 0.430439, 0.275368,
		-0.481819, 0.503308, 0.717308,
		39.883987, 37.547417, 31.617598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713791, 37.283417, 31.769617>,  <40.221260, 37.195099, 31.115482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713791, 37.283417, 31.769617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333057, 37.306187, 31.890135>,  <40.104618, 37.319847, 31.962444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333057, 37.306187, 31.890135>,  <40.713791, 37.283417, 31.769617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333057, 37.306187, 31.890135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183923, -0.680224, 0.709554,
		0.245335, 0.730791, 0.636989,
		-0.951831, 0.056922, 0.301292,
		40.047508, 37.323265, 31.980522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882648, 37.208260, 32.434341>,  <40.713791, 37.283417, 31.769617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882648, 37.208260, 32.434341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493240, 37.130054, 32.386974>,  <40.259594, 37.083130, 32.358555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493240, 37.130054, 32.386974>,  <40.882648, 37.208260, 32.434341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493240, 37.130054, 32.386974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088902, -0.801140, 0.591837,
		-0.210584, 0.565640, 0.797311,
		-0.973525, -0.195515, -0.118421,
		40.201183, 37.071400, 32.351448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616089, 37.109806, 33.102623>,  <40.882648, 37.208260, 32.434341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616089, 37.109806, 33.102623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367764, 36.927410, 32.847542>,  <40.218769, 36.817970, 32.694492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367764, 36.927410, 32.847542>,  <40.616089, 37.109806, 33.102623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367764, 36.927410, 32.847542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019526, -0.822180, 0.568893,
		-0.783718, 0.340722, 0.519321,
		-0.620810, -0.455992, -0.637704,
		40.181522, 36.790611, 32.656231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589382, 36.385849, 33.381306>,  <40.616089, 37.109806, 33.102623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589382, 36.385849, 33.381306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293148, 36.399853, 33.112885>,  <40.115410, 36.408253, 32.951832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293148, 36.399853, 33.112885>,  <40.589382, 36.385849, 33.381306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293148, 36.399853, 33.112885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299773, -0.910973, 0.283310,
		-0.601394, 0.410978, 0.685144,
		-0.740582, 0.035006, -0.671054,
		40.070972, 36.410355, 32.911568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000610, 36.383888, 33.800655>,  <40.589382, 36.385849, 33.381306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000610, 36.383888, 33.800655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997269, 36.222069, 33.434864>,  <39.995266, 36.124977, 33.215389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997269, 36.222069, 33.434864>,  <40.000610, 36.383888, 33.800655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997269, 36.222069, 33.434864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142041, -0.904758, 0.401545,
		-0.989826, 0.133246, -0.049907,
		-0.008351, -0.404548, -0.914479,
		39.994762, 36.100704, 33.160519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348133, 36.153202, 33.766056>,  <40.000610, 36.383888, 33.800655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348133, 36.153202, 33.766056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626518, 35.977501, 33.538830>,  <39.793549, 35.872082, 33.402493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626518, 35.977501, 33.538830>,  <39.348133, 36.153202, 33.766056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626518, 35.977501, 33.538830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092809, -0.839478, 0.535410,
		-0.712056, -0.319903, -0.625011,
		0.695962, -0.439248, -0.568065,
		39.835308, 35.845726, 33.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349136, 35.525501, 34.034454>,  <39.348133, 36.153202, 33.766056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349136, 35.525501, 34.034454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637211, 35.466431, 33.763302>,  <39.810055, 35.430988, 33.600613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637211, 35.466431, 33.763302>,  <39.349136, 35.525501, 34.034454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637211, 35.466431, 33.763302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120904, -0.935417, 0.332231,
		-0.683162, -0.321228, -0.655822,
		0.720189, -0.147676, -0.677879,
		39.853268, 35.422127, 33.559937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213097, 34.913956, 33.544933>,  <39.349136, 35.525501, 34.034454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213097, 34.913956, 33.544933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603367, 34.971767, 33.610878>,  <39.837528, 35.006454, 33.650444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603367, 34.971767, 33.610878>,  <39.213097, 34.913956, 33.544933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603367, 34.971767, 33.610878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067746, -0.913899, 0.400250,
		0.208510, -0.379343, -0.901455,
		0.975671, 0.144526, 0.164858,
		39.896069, 35.015125, 33.660336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591217, 34.341862, 33.299496>,  <39.213097, 34.913956, 33.544933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591217, 34.341862, 33.299496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827461, 34.495846, 33.583179>,  <39.969208, 34.588238, 33.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827461, 34.495846, 33.583179>,  <39.591217, 34.341862, 33.299496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827461, 34.495846, 33.583179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048130, -0.894113, 0.445248,
		0.805517, -0.228836, -0.546605,
		0.590615, 0.384962, 0.709209,
		40.004646, 34.611336, 33.795940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910400, 33.775417, 33.535862>,  <39.591217, 34.341862, 33.299496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910400, 33.775417, 33.535862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014217, 34.042038, 33.815388>,  <40.076508, 34.202011, 33.983105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014217, 34.042038, 33.815388>,  <39.910400, 33.775417, 33.535862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014217, 34.042038, 33.815388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398021, -0.733129, 0.551454,
		0.879897, 0.135019, -0.455578,
		0.259541, 0.666552, 0.698818,
		40.092079, 34.242004, 34.025032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504364, 33.499828, 33.850719>,  <39.910400, 33.775417, 33.535862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504364, 33.499828, 33.850719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380943, 33.776894, 34.111492>,  <40.306892, 33.943130, 34.267956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380943, 33.776894, 34.111492>,  <40.504364, 33.499828, 33.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380943, 33.776894, 34.111492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441123, -0.503020, 0.743224,
		0.842738, 0.516905, -0.150341,
		-0.308552, 0.692662, 0.651932,
		40.288380, 33.984692, 34.307072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029728, 33.632133, 34.236767>,  <40.504364, 33.499828, 33.850719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029728, 33.632133, 34.236767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706314, 33.714550, 34.457249>,  <40.512268, 33.764000, 34.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706314, 33.714550, 34.457249>,  <41.029728, 33.632133, 34.236767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706314, 33.714550, 34.457249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430085, -0.432397, 0.792502,
		0.401625, 0.877827, 0.260992,
		-0.808532, 0.206041, 0.551202,
		40.463753, 33.776363, 34.622608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136120, 34.160988, 34.777817>,  <41.029728, 33.632133, 34.236767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136120, 34.160988, 34.777817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902672, 33.839748, 34.825851>,  <40.762604, 33.647003, 34.854671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902672, 33.839748, 34.825851>,  <41.136120, 34.160988, 34.777817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902672, 33.839748, 34.825851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546885, -0.279418, 0.789204,
		-0.600256, 0.526265, 0.602277,
		-0.583617, -0.803101, 0.120084,
		40.727585, 33.598820, 34.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736759, 34.141853, 35.376038>,  <41.136120, 34.160988, 34.777817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736759, 34.141853, 35.376038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854282, 33.778423, 35.257267>,  <40.924797, 33.560364, 35.186005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854282, 33.778423, 35.257267>,  <40.736759, 34.141853, 35.376038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854282, 33.778423, 35.257267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655629, -0.034496, 0.754294,
		-0.695578, -0.416287, 0.585556,
		0.293804, -0.908578, -0.296925,
		40.942425, 33.505848, 35.168190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513191, 33.423611, 35.830147>,  <40.736759, 34.141853, 35.376038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513191, 33.423611, 35.830147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827087, 33.527004, 35.604805>,  <41.015427, 33.589039, 35.469601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827087, 33.527004, 35.604805>,  <40.513191, 33.423611, 35.830147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827087, 33.527004, 35.604805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600182, -0.089908, 0.794794,
		0.154789, -0.961823, -0.225690,
		0.784743, 0.258481, -0.563352,
		41.062511, 33.604549, 35.435799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080235, 33.366180, 36.255688>,  <40.513191, 33.423611, 35.830147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080235, 33.366180, 36.255688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259480, 33.514267, 35.930199>,  <41.367027, 33.603119, 35.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259480, 33.514267, 35.930199>,  <41.080235, 33.366180, 36.255688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259480, 33.514267, 35.930199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849564, 0.106978, 0.516524,
		0.278274, -0.922766, -0.266581,
		0.448113, 0.370213, -0.813718,
		41.393913, 33.625332, 35.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716114, 32.973137, 35.868187>,  <41.080235, 33.366180, 36.255688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716114, 32.973137, 35.868187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732735, 33.371910, 35.841640>,  <41.742706, 33.611172, 35.825714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732735, 33.371910, 35.841640>,  <41.716114, 32.973137, 35.868187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732735, 33.371910, 35.841640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897340, -0.008023, 0.441266,
		0.439379, -0.077883, -0.894919,
		0.041547, 0.996930, -0.066363,
		41.745197, 33.670990, 35.821732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304039, 33.338478, 35.440098>,  <41.716114, 32.973137, 35.868187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304039, 33.338478, 35.440098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166111, 33.548786, 35.751141>,  <42.083355, 33.674969, 35.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166111, 33.548786, 35.751141>,  <42.304039, 33.338478, 35.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166111, 33.548786, 35.751141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858349, -0.158672, 0.487913,
		0.379912, 0.835699, -0.396577,
		-0.344823, 0.525766, 0.777603,
		42.062664, 33.706516, 35.984421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824879, 33.957565, 35.573116>,  <42.304039, 33.338478, 35.440098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824879, 33.957565, 35.573116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597851, 33.818680, 35.871727>,  <42.461636, 33.735348, 36.050892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597851, 33.818680, 35.871727>,  <42.824879, 33.957565, 35.573116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597851, 33.818680, 35.871727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821133, -0.172603, 0.544012,
		-0.060037, 0.921764, 0.383075,
		-0.567571, -0.347217, 0.746528,
		42.427578, 33.714516, 36.095684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814327, 34.448051, 36.179790>,  <42.824879, 33.957565, 35.573116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814327, 34.448051, 36.179790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784973, 34.050568, 36.213631>,  <42.767361, 33.812077, 36.233936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784973, 34.050568, 36.213631>,  <42.814327, 34.448051, 36.179790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784973, 34.050568, 36.213631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891892, -0.027430, 0.451417,
		-0.446256, 0.108582, 0.888293,
		-0.073382, -0.993709, 0.084603,
		42.762959, 33.752457, 36.239010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845287, 34.288025, 36.851681>,  <42.814327, 34.448051, 36.179790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845287, 34.288025, 36.851681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989456, 34.000004, 36.614491>,  <43.075958, 33.827190, 36.472176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.989456, 34.000004, 36.614491>,  <42.845287, 34.288025, 36.851681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989456, 34.000004, 36.614491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890673, 0.076799, 0.448111,
		-0.277125, -0.689653, 0.669014,
		0.360421, -0.720056, -0.592972,
		43.097584, 33.783989, 36.436600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089695, 33.619308, 37.269382>,  <42.845287, 34.288025, 36.851681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089695, 33.619308, 37.269382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315228, 33.730656, 36.958359>,  <43.450546, 33.797466, 36.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315228, 33.730656, 36.958359>,  <43.089695, 33.619308, 37.269382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315228, 33.730656, 36.958359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804428, 0.028128, 0.593384,
		0.187052, -0.960061, -0.208071,
		0.563832, 0.278372, -0.777562,
		43.484379, 33.814167, 36.725090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523251, 33.048409, 37.146240>,  <43.089695, 33.619308, 37.269382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523251, 33.048409, 37.146240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692986, 33.393368, 37.035812>,  <43.794827, 33.600342, 36.969555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.692986, 33.393368, 37.035812>,  <43.523251, 33.048409, 37.146240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692986, 33.393368, 37.035812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785607, -0.199015, 0.585845,
		0.450289, -0.465475, -0.761953,
		0.424336, 0.862396, -0.276066,
		43.820286, 33.652088, 36.952991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238960, 32.961842, 37.494568>,  <43.523251, 33.048409, 37.146240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238960, 32.961842, 37.494568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216011, 33.337936, 37.360306>,  <44.202240, 33.563591, 37.279747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216011, 33.337936, 37.360306>,  <44.238960, 32.961842, 37.494568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216011, 33.337936, 37.360306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433135, 0.326364, 0.840167,
		0.899501, -0.097184, -0.425973,
		-0.057372, 0.940235, -0.335659,
		44.198799, 33.620007, 37.259609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.897785, 33.271446, 37.576580>,  <44.238960, 32.961842, 37.494568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.897785, 33.271446, 37.576580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635395, 33.573112, 37.564362>,  <44.477962, 33.754112, 37.557030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.635395, 33.573112, 37.564362>,  <44.897785, 33.271446, 37.576580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635395, 33.573112, 37.564362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526672, 0.486341, 0.697200,
		0.540661, 0.441257, -0.716225,
		-0.655974, 0.754165, -0.030548,
		44.438602, 33.799362, 37.555199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177700, 33.955502, 37.448677>,  <44.897785, 33.271446, 37.576580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177700, 33.955502, 37.448677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829498, 34.002808, 37.639774>,  <44.620579, 34.031193, 37.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829498, 34.002808, 37.639774>,  <45.177700, 33.955502, 37.448677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829498, 34.002808, 37.639774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488496, 0.325976, 0.809389,
		-0.060010, 0.937951, -0.341536,
		-0.870500, 0.118268, 0.477747,
		44.568348, 34.038288, 37.783100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514423, 34.287518, 38.034744>,  <45.177700, 33.955502, 37.448677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514423, 34.287518, 38.034744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195724, 34.220470, 38.266987>,  <45.004505, 34.180241, 38.406330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195724, 34.220470, 38.266987>,  <45.514423, 34.287518, 38.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195724, 34.220470, 38.266987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518665, 0.303390, 0.799338,
		-0.310132, 0.938008, -0.154787,
		-0.796746, -0.167618, 0.580603,
		44.956699, 34.170185, 38.441166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906467, 34.042595, 37.412949>,  <45.514423, 34.287518, 38.034744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906467, 34.042595, 37.412949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218285, 34.225739, 37.583908>,  <46.405376, 34.335625, 37.686485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218285, 34.225739, 37.583908>,  <45.906467, 34.042595, 37.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218285, 34.225739, 37.583908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548651, -0.828336, -0.113324,
		0.302145, 0.322835, -0.896932,
		0.779545, 0.457862, 0.427401,
		46.452148, 34.363098, 37.712128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477295, 34.083019, 36.922104>,  <45.906467, 34.042595, 37.412949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477295, 34.083019, 36.922104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484829, 33.906296, 36.563339>,  <46.489349, 33.800262, 36.348080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.484829, 33.906296, 36.563339>,  <46.477295, 34.083019, 36.922104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.484829, 33.906296, 36.563339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538076, 0.760564, -0.363342,
		0.842686, -0.475764, 0.252049,
		0.018834, -0.441805, -0.896914,
		46.490479, 33.773754, 36.294266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852867, 34.528847, 36.463245>,  <46.477295, 34.083019, 36.922104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852867, 34.528847, 36.463245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722652, 34.271854, 36.185760>,  <46.644524, 34.117661, 36.019268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722652, 34.271854, 36.185760>,  <46.852867, 34.528847, 36.463245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722652, 34.271854, 36.185760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372512, 0.587194, -0.718637,
		0.869056, -0.492362, 0.048176,
		-0.325541, -0.642482, -0.693715,
		46.624989, 34.079109, 35.977646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480053, 34.192856, 35.996574>,  <46.852867, 34.528847, 36.463245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480053, 34.192856, 35.996574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120392, 34.281704, 35.845749>,  <46.904594, 34.335011, 35.755253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120392, 34.281704, 35.845749>,  <47.480053, 34.192856, 35.996574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120392, 34.281704, 35.845749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420410, 0.677706, -0.603300,
		0.121539, -0.700985, -0.702744,
		-0.899157, 0.222116, -0.377068,
		46.850643, 34.348339, 35.732628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422874, 34.037216, 35.299690>,  <47.480053, 34.192856, 35.996574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422874, 34.037216, 35.299690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216877, 34.373531, 35.366447>,  <47.093277, 34.575321, 35.406502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.216877, 34.373531, 35.366447>,  <47.422874, 34.037216, 35.299690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216877, 34.373531, 35.366447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617145, 0.498800, -0.608548,
		-0.594906, -0.210403, -0.775769,
		-0.514994, 0.840791, 0.166890,
		47.062378, 34.625767, 35.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.821533, 34.690907, 35.249802>,  <47.422874, 34.037216, 35.299690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.821533, 34.690907, 35.249802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900421, 35.039650, 35.070484>,  <47.947754, 35.248898, 34.962894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.900421, 35.039650, 35.070484>,  <47.821533, 34.690907, 35.249802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.900421, 35.039650, 35.070484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196328, -0.483138, -0.853249,
		-0.960500, 0.080263, -0.266453,
		0.197218, 0.871858, -0.448296,
		47.959587, 35.301208, 34.935997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.658524, 27.846060, 26.978365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404613, 28.100172, 26.802420>,  <38.252266, 28.252640, 26.696854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404613, 28.100172, 26.802420>,  <38.658524, 27.846060, 26.978365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404613, 28.100172, 26.802420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249322, 0.370414, 0.894781,
		0.731367, 0.677653, -0.076740,
		-0.634776, 0.635280, -0.439862,
		38.214180, 28.290756, 26.670462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703438, 28.455257, 27.326786>,  <38.658524, 27.846060, 26.978365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703438, 28.455257, 27.326786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353222, 28.508589, 27.141035>,  <38.143089, 28.540588, 27.029585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353222, 28.508589, 27.141035>,  <38.703438, 28.455257, 27.326786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353222, 28.508589, 27.141035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358091, 0.466155, 0.808994,
		0.324334, 0.874599, -0.360395,
		-0.875544, 0.133330, -0.464376,
		38.090557, 28.548588, 27.001722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487392, 29.181890, 27.407667>,  <38.703438, 28.455257, 27.326786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487392, 29.181890, 27.407667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168922, 28.952040, 27.331865>,  <37.977840, 28.814129, 27.286385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168922, 28.952040, 27.331865>,  <38.487392, 29.181890, 27.407667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168922, 28.952040, 27.331865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535988, 0.524465, 0.661554,
		-0.280761, 0.628281, -0.725559,
		-0.796172, -0.574629, -0.189502,
		37.930069, 28.779652, 27.275015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914745, 29.628767, 27.318325>,  <38.487392, 29.181890, 27.407667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914745, 29.628767, 27.318325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728973, 29.289129, 27.418999>,  <37.617512, 29.085346, 27.479403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728973, 29.289129, 27.418999>,  <37.914745, 29.628767, 27.318325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728973, 29.289129, 27.418999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504728, 0.487296, 0.712596,
		-0.727706, 0.203917, -0.654876,
		-0.464428, -0.849094, 0.251685,
		37.589645, 29.034401, 27.494505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280235, 29.859995, 27.359171>,  <37.914745, 29.628767, 27.318325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280235, 29.859995, 27.359171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279182, 29.516945, 27.564878>,  <37.278553, 29.311115, 27.688303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279182, 29.516945, 27.564878>,  <37.280235, 29.859995, 27.359171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279182, 29.516945, 27.564878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534954, 0.435703, 0.723870,
		-0.844877, -0.273205, -0.459936,
		-0.002630, -0.857626, 0.514268,
		37.278393, 29.259657, 27.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628941, 29.933348, 27.557356>,  <37.280235, 29.859995, 27.359171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628941, 29.933348, 27.557356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805412, 29.648336, 27.775589>,  <36.911297, 29.477329, 27.906528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805412, 29.648336, 27.775589>,  <36.628941, 29.933348, 27.557356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805412, 29.648336, 27.775589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472135, 0.332723, 0.816324,
		-0.763182, -0.617736, -0.189619,
		0.441182, -0.712529, 0.545582,
		36.937767, 29.434578, 27.939264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045753, 29.615898, 27.961504>,  <36.628941, 29.933348, 27.557356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045753, 29.615898, 27.961504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396584, 29.547586, 28.141088>,  <36.607082, 29.506599, 28.248838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396584, 29.547586, 28.141088>,  <36.045753, 29.615898, 27.961504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396584, 29.547586, 28.141088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366420, 0.366483, 0.855235,
		-0.310596, -0.914617, 0.258856,
		0.877079, -0.170782, 0.448962,
		36.659706, 29.496351, 28.275778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895298, 29.268724, 28.525270>,  <36.045753, 29.615898, 27.961504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895298, 29.268724, 28.525270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253197, 29.432169, 28.597340>,  <36.467937, 29.530235, 28.640581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253197, 29.432169, 28.597340>,  <35.895298, 29.268724, 28.525270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253197, 29.432169, 28.597340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294891, 0.237640, 0.925509,
		0.335358, -0.881228, 0.333124,
		0.894748, 0.408612, 0.180171,
		36.521622, 29.554752, 28.651392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932480, 29.218929, 29.252426>,  <35.895298, 29.268724, 28.525270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932480, 29.218929, 29.252426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249966, 29.458763, 29.211390>,  <36.440456, 29.602663, 29.186768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.249966, 29.458763, 29.211390>,  <35.932480, 29.218929, 29.252426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249966, 29.458763, 29.211390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, 0.407105, 0.892948,
		0.577162, -0.689032, 0.438314,
		0.793710, 0.599583, -0.102590,
		36.488079, 29.638638, 29.180613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275364, 29.176922, 29.826899>,  <35.932480, 29.218929, 29.252426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275364, 29.176922, 29.826899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408649, 29.524662, 29.680914>,  <36.488621, 29.733307, 29.593323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408649, 29.524662, 29.680914>,  <36.275364, 29.176922, 29.826899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408649, 29.524662, 29.680914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061221, 0.366316, 0.928474,
		0.940862, -0.331721, 0.068838,
		0.333211, 0.869352, -0.364961,
		36.508614, 29.785467, 29.571426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828625, 29.419897, 30.162699>,  <36.275364, 29.176922, 29.826899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828625, 29.419897, 30.162699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663483, 29.752790, 30.014679>,  <36.564400, 29.952526, 29.925867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.663483, 29.752790, 30.014679>,  <36.828625, 29.419897, 30.162699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663483, 29.752790, 30.014679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088422, 0.440998, 0.893142,
		0.906495, 0.336015, -0.255655,
		-0.412853, 0.832235, -0.370051,
		36.539627, 30.002460, 29.903664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250576, 29.888584, 30.475821>,  <36.828625, 29.419897, 30.162699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250576, 29.888584, 30.475821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932335, 30.093397, 30.346302>,  <36.741390, 30.216286, 30.268591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932335, 30.093397, 30.346302>,  <37.250576, 29.888584, 30.475821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932335, 30.093397, 30.346302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056622, 0.469290, 0.881227,
		0.603172, 0.719437, -0.344374,
		-0.795599, 0.512032, -0.323798,
		36.693657, 30.247007, 30.249163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390842, 30.596685, 30.791786>,  <37.250576, 29.888584, 30.475821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390842, 30.596685, 30.791786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005192, 30.558300, 30.692791>,  <36.773800, 30.535269, 30.633394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005192, 30.558300, 30.692791>,  <37.390842, 30.596685, 30.791786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005192, 30.558300, 30.692791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265391, 0.330114, 0.905866,
		-0.005230, 0.939050, -0.343739,
		-0.964127, -0.095963, -0.247489,
		36.715954, 30.529510, 30.618544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172321, 31.125166, 31.044773>,  <37.390842, 30.596685, 30.791786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172321, 31.125166, 31.044773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818703, 30.951988, 30.974325>,  <36.606533, 30.848082, 30.932056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818703, 30.951988, 30.974325>,  <37.172321, 31.125166, 31.044773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818703, 30.951988, 30.974325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364099, 0.401637, 0.840309,
		-0.293072, 0.806998, -0.512701,
		-0.884048, -0.432945, -0.176119,
		36.553490, 30.822105, 30.921490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620449, 31.566906, 31.113417>,  <37.172321, 31.125166, 31.044773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620449, 31.566906, 31.113417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 31.208294, 31.192263>,  <36.366554, 30.993128, 31.239571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 31.208294, 31.192263>,  <36.620449, 31.566906, 31.113417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461765, 31.208294, 31.192263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237469, 0.307663, 0.921386,
		-0.886694, 0.318717, -0.334952,
		-0.396714, -0.896528, 0.197117,
		36.342751, 30.939335, 31.251398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015198, 31.736221, 31.330973>,  <36.620449, 31.566906, 31.113417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015198, 31.736221, 31.330973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044960, 31.363287, 31.472517>,  <36.062817, 31.139526, 31.557444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044960, 31.363287, 31.472517>,  <36.015198, 31.736221, 31.330973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044960, 31.363287, 31.472517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095960, 0.346503, 0.933128,
		-0.992601, -0.103383, -0.063686,
		0.074402, -0.932334, 0.353860,
		36.067280, 31.083586, 31.578674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511570, 31.686733, 31.894310>,  <36.015198, 31.736221, 31.330973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511570, 31.686733, 31.894310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755764, 31.387060, 31.997095>,  <35.902279, 31.207256, 32.058765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755764, 31.387060, 31.997095>,  <35.511570, 31.686733, 31.894310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755764, 31.387060, 31.997095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173717, 0.189880, 0.966317,
		-0.772742, -0.634561, -0.014227,
		0.610485, -0.749185, 0.256962,
		35.938911, 31.162304, 32.074184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293701, 31.537970, 32.481289>,  <35.511570, 31.686733, 31.894310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293701, 31.537970, 32.481289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646542, 31.350817, 32.503105>,  <35.858246, 31.238525, 32.516193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646542, 31.350817, 32.503105>,  <35.293701, 31.537970, 32.481289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646542, 31.350817, 32.503105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051483, 0.210854, 0.976161,
		-0.468230, -0.858269, 0.210083,
		0.882105, -0.467884, 0.054542,
		35.911175, 31.210451, 32.519466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436943, 31.364901, 33.242168>,  <35.293701, 31.537970, 32.481289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436943, 31.364901, 33.242168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802639, 31.304731, 33.091682>,  <36.022057, 31.268631, 33.001392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802639, 31.304731, 33.091682>,  <35.436943, 31.364901, 33.242168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802639, 31.304731, 33.091682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404310, 0.278190, 0.871288,
		-0.026402, -0.948675, 0.315150,
		0.914241, -0.150422, -0.376214,
		36.076912, 31.259605, 32.978817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828430, 30.936953, 33.803982>,  <35.436943, 31.364901, 33.242168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828430, 30.936953, 33.803982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078121, 31.142019, 33.568184>,  <36.227936, 31.265059, 33.426704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.078121, 31.142019, 33.568184>,  <35.828430, 30.936953, 33.803982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078121, 31.142019, 33.568184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456255, 0.373284, 0.807769,
		0.634167, -0.773196, -0.000891,
		0.624231, 0.512667, -0.589499,
		36.265392, 31.295818, 33.391335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450512, 30.846434, 34.121719>,  <35.828430, 30.936953, 33.803982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450512, 30.846434, 34.121719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509541, 31.177252, 33.904751>,  <36.544956, 31.375742, 33.774570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509541, 31.177252, 33.904751>,  <36.450512, 30.846434, 34.121719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509541, 31.177252, 33.904751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401956, 0.450945, 0.796919,
		0.903690, -0.335631, -0.265889,
		0.147569, 0.827043, -0.542423,
		36.553810, 31.425365, 33.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016361, 30.790722, 34.609554>,  <36.450512, 30.846434, 34.121719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016361, 30.790722, 34.609554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386688, 30.941864, 34.605995>,  <37.608887, 31.032549, 34.603859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386688, 30.941864, 34.605995>,  <37.016361, 30.790722, 34.609554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386688, 30.941864, 34.605995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246177, -0.620702, -0.744396,
		-0.286795, 0.686989, -0.667679,
		0.925821, 0.377857, -0.008893,
		37.664436, 31.055222, 34.603329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204433, 31.060108, 33.807915>,  <37.016361, 30.790722, 34.609554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204433, 31.060108, 33.807915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529892, 30.984043, 34.027664>,  <37.725166, 30.938404, 34.159515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529892, 30.984043, 34.027664>,  <37.204433, 31.060108, 33.807915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529892, 30.984043, 34.027664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266953, -0.717255, -0.643647,
		0.516441, 0.670360, -0.532829,
		0.813649, -0.190165, 0.549375,
		37.773987, 30.926994, 34.192478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692760, 30.920502, 33.328487>,  <37.204433, 31.060108, 33.807915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692760, 30.920502, 33.328487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864235, 30.774923, 33.659248>,  <37.967121, 30.687576, 33.857704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864235, 30.774923, 33.659248>,  <37.692760, 30.920502, 33.328487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864235, 30.774923, 33.659248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454234, -0.704348, -0.545495,
		0.780958, 0.609456, -0.136630,
		0.428690, -0.363947, 0.826902,
		37.992844, 30.665739, 33.907318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431667, 30.954473, 33.328621>,  <37.692760, 30.920502, 33.328487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431667, 30.954473, 33.328621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329060, 30.633141, 33.543602>,  <38.267494, 30.440340, 33.672588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329060, 30.633141, 33.543602>,  <38.431667, 30.954473, 33.328621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329060, 30.633141, 33.543602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568430, -0.575116, -0.588328,
		0.781720, 0.154587, 0.604166,
		-0.256518, -0.803334, 0.537451,
		38.252106, 30.392141, 33.704838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054787, 30.555777, 33.272091>,  <38.431667, 30.954473, 33.328621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054787, 30.555777, 33.272091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827538, 30.296602, 33.475033>,  <38.691189, 30.141098, 33.596798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.827538, 30.296602, 33.475033>,  <39.054787, 30.555777, 33.272091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827538, 30.296602, 33.475033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518399, -0.760591, -0.390849,
		0.639136, 0.040961, 0.768002,
		-0.568126, -0.647937, 0.507356,
		38.657101, 30.102221, 33.627239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496300, 30.135578, 33.490723>,  <39.054787, 30.555777, 33.272091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496300, 30.135578, 33.490723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141018, 29.952026, 33.481506>,  <38.927849, 29.841896, 33.475979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.141018, 29.952026, 33.481506>,  <39.496300, 30.135578, 33.490723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141018, 29.952026, 33.481506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432765, -0.818705, -0.377407,
		0.154322, -0.345183, 0.925761,
		-0.888200, -0.458879, -0.023039,
		38.874557, 29.814363, 33.474594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592682, 29.485353, 33.812698>,  <39.496300, 30.135578, 33.490723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592682, 29.485353, 33.812698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268517, 29.445131, 33.581833>,  <39.074017, 29.420998, 33.443314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.268517, 29.445131, 33.581833>,  <39.592682, 29.485353, 33.812698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268517, 29.445131, 33.581833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481786, -0.674918, -0.558899,
		-0.333339, -0.731009, 0.595408,
		-0.810412, -0.100557, -0.577166,
		39.025394, 29.414965, 33.408684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530003, 28.784885, 33.600204>,  <39.592682, 29.485353, 33.812698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530003, 28.784885, 33.600204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.298851, 28.984123, 33.341606>,  <39.160160, 29.103666, 33.186447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.298851, 28.984123, 33.341606>,  <39.530003, 28.784885, 33.600204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298851, 28.984123, 33.341606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274102, -0.627691, -0.728610,
		-0.768719, -0.598252, 0.226198,
		-0.577875, 0.498095, -0.646500,
		39.125488, 29.133551, 33.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290310, 28.220678, 33.240486>,  <39.530003, 28.784885, 33.600204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290310, 28.220678, 33.240486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230968, 28.528263, 32.991749>,  <39.195362, 28.712814, 32.842506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.230968, 28.528263, 32.991749>,  <39.290310, 28.220678, 33.240486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230968, 28.528263, 32.991749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291788, -0.566773, -0.770473,
		-0.944908, -0.295751, -0.140290,
		-0.148356, 0.768960, -0.621844,
		39.186462, 28.758951, 32.805195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013279, 27.854450, 32.632797>,  <39.290310, 28.220678, 33.240486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013279, 27.854450, 32.632797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139896, 28.221613, 32.537094>,  <39.215866, 28.441912, 32.479671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139896, 28.221613, 32.537094>,  <39.013279, 27.854450, 32.632797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139896, 28.221613, 32.537094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189733, -0.308400, -0.932143,
		-0.929410, 0.249665, -0.271779,
		0.316540, 0.917909, -0.239260,
		39.234859, 28.496986, 32.465317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752827, 27.938927, 31.898741>,  <39.013279, 27.854450, 32.632797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752827, 27.938927, 31.898741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037296, 28.217768, 31.935129>,  <39.207977, 28.385073, 31.956963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.037296, 28.217768, 31.935129>,  <38.752827, 27.938927, 31.898741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037296, 28.217768, 31.935129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399554, -0.294323, -0.868176,
		-0.578433, 0.653775, -0.487846,
		0.711176, 0.697103, 0.090972,
		39.250648, 28.426899, 31.962421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879131, 28.139275, 31.183260>,  <38.752827, 27.938927, 31.898741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879131, 28.139275, 31.183260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202240, 28.283043, 31.370163>,  <39.396103, 28.369305, 31.482304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.202240, 28.283043, 31.370163>,  <38.879131, 28.139275, 31.183260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202240, 28.283043, 31.370163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568354, -0.264430, -0.779135,
		-0.156481, 0.894927, -0.417876,
		0.807767, 0.359421, 0.467257,
		39.444569, 28.390869, 31.510340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142178, 28.670301, 30.784739>,  <38.879131, 28.139275, 31.183260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142178, 28.670301, 30.784739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440025, 28.537148, 31.016163>,  <39.618732, 28.457256, 31.155018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.440025, 28.537148, 31.016163>,  <39.142178, 28.670301, 30.784739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440025, 28.537148, 31.016163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571233, -0.130600, -0.810331,
		0.345306, 0.933880, 0.092907,
		0.744618, -0.332883, 0.578561,
		39.663410, 28.437283, 31.189732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729164, 29.013630, 30.633078>,  <39.142178, 28.670301, 30.784739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729164, 29.013630, 30.633078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865448, 28.676764, 30.800251>,  <39.947220, 28.474644, 30.900555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.865448, 28.676764, 30.800251>,  <39.729164, 29.013630, 30.633078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865448, 28.676764, 30.800251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510946, -0.207288, -0.834246,
		0.789207, 0.497780, 0.359676,
		0.340714, -0.842168, 0.417932,
		39.967663, 28.424112, 30.925631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428516, 29.080559, 30.525999>,  <39.729164, 29.013630, 30.633078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428516, 29.080559, 30.525999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353771, 28.693813, 30.595581>,  <40.308922, 28.461767, 30.637331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.353771, 28.693813, 30.595581>,  <40.428516, 29.080559, 30.525999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353771, 28.693813, 30.595581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423179, -0.239025, -0.873949,
		0.886567, -0.089697, 0.453821,
		-0.186865, -0.966862, 0.173954,
		40.297710, 28.403755, 30.647768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994320, 28.680439, 30.236439>,  <40.428516, 29.080559, 30.525999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994320, 28.680439, 30.236439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711544, 28.398302, 30.257351>,  <40.541878, 28.229019, 30.269897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.711544, 28.398302, 30.257351>,  <40.994320, 28.680439, 30.236439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711544, 28.398302, 30.257351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275540, -0.342730, -0.898117,
		0.651399, -0.620505, 0.436638,
		-0.706935, -0.705343, 0.052280,
		40.499462, 28.186699, 30.273035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284348, 28.057753, 29.932043>,  <40.994320, 28.680439, 30.236439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284348, 28.057753, 29.932043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.889381, 28.002066, 29.902050>,  <40.652401, 27.968655, 29.884054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.889381, 28.002066, 29.902050>,  <41.284348, 28.057753, 29.932043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889381, 28.002066, 29.902050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125890, -0.405196, -0.905521,
		0.095680, -0.903568, 0.417624,
		-0.987419, -0.139215, -0.074981,
		40.593155, 27.960300, 29.879557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194229, 27.469416, 29.537756>,  <41.284348, 28.057753, 29.932043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194229, 27.469416, 29.537756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832161, 27.633768, 29.494236>,  <40.614918, 27.732380, 29.468124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.832161, 27.633768, 29.494236>,  <41.194229, 27.469416, 29.537756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832161, 27.633768, 29.494236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009904, -0.276294, -0.961022,
		-0.424929, -0.868813, 0.254163,
		-0.905173, 0.410883, -0.108801,
		40.560608, 27.757032, 29.461596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875233, 26.963102, 29.247778>,  <41.194229, 27.469416, 29.537756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875233, 26.963102, 29.247778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642883, 27.282883, 29.186502>,  <40.503475, 27.474751, 29.149736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642883, 27.282883, 29.186502>,  <40.875233, 26.963102, 29.247778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642883, 27.282883, 29.186502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120666, -0.270687, -0.955075,
		-0.805000, -0.536293, 0.253702,
		-0.580874, 0.799449, -0.153191,
		40.468620, 27.522717, 29.140545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.210011, 26.785858, 28.700111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250809, 27.183313, 28.681021>,  <40.275288, 27.421787, 28.669565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.250809, 27.183313, 28.681021>,  <40.210011, 26.785858, 28.700111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250809, 27.183313, 28.681021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197031, -0.026850, -0.980029,
		-0.975078, 0.109358, 0.193039,
		0.101991, 0.993639, -0.047727,
		40.281406, 27.481405, 28.666702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724987, 26.953533, 28.186571>,  <40.210011, 26.785858, 28.700111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724987, 26.953533, 28.186571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.951965, 27.279743, 28.232042>,  <40.088154, 27.475470, 28.259325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.951965, 27.279743, 28.232042>,  <39.724987, 26.953533, 28.186571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951965, 27.279743, 28.232042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126252, 0.050255, -0.990724,
		-0.813675, 0.576534, -0.074445,
		0.567445, 0.815526, 0.113679,
		40.122200, 27.524401, 28.266146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410027, 27.606796, 27.735638>,  <39.724987, 26.953533, 28.186571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410027, 27.606796, 27.735638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803036, 27.664267, 27.782978>,  <40.038841, 27.698750, 27.811382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803036, 27.664267, 27.782978>,  <39.410027, 27.606796, 27.735638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803036, 27.664267, 27.782978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105292, 0.095346, -0.989860,
		-0.153505, 0.985021, 0.078552,
		0.982522, 0.143678, 0.118351,
		40.097794, 27.707371, 27.818483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570374, 28.108955, 27.364647>,  <39.410027, 27.606796, 27.735638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570374, 28.108955, 27.364647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931629, 27.942623, 27.407389>,  <40.148384, 27.842825, 27.433033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931629, 27.942623, 27.407389>,  <39.570374, 28.108955, 27.364647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931629, 27.942623, 27.407389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153514, 0.080340, -0.984875,
		0.400955, 0.905887, 0.136394,
		0.903143, -0.415829, 0.106854,
		40.202572, 27.817875, 27.439445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998413, 28.505562, 26.956808>,  <39.570374, 28.108955, 27.364647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998413, 28.505562, 26.956808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183788, 28.153727, 26.999790>,  <40.295013, 27.942625, 27.025579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.183788, 28.153727, 26.999790>,  <39.998413, 28.505562, 26.956808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183788, 28.153727, 26.999790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267798, 0.023429, -0.963190,
		0.844693, 0.475159, 0.246410,
		0.463441, -0.879588, 0.107457,
		40.322823, 27.889851, 27.032026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667458, 28.606756, 26.611507>,  <39.998413, 28.505562, 26.956808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667458, 28.606756, 26.611507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622120, 28.211521, 26.653143>,  <40.594917, 27.974380, 26.678123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.622120, 28.211521, 26.653143>,  <40.667458, 28.606756, 26.611507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622120, 28.211521, 26.653143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420229, -0.142607, -0.896142,
		0.900311, -0.057836, 0.431388,
		-0.113349, -0.988088, 0.104087,
		40.588116, 27.915094, 26.684368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290863, 28.340488, 26.285574>,  <40.667458, 28.606756, 26.611507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290863, 28.340488, 26.285574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007526, 28.058281, 26.294441>,  <40.837524, 27.888956, 26.299763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.007526, 28.058281, 26.294441>,  <41.290863, 28.340488, 26.285574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007526, 28.058281, 26.294441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205637, -0.236302, -0.949671,
		0.675250, -0.668135, 0.312464,
		-0.708344, -0.705519, 0.022170,
		40.795025, 27.846624, 26.301092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591404, 27.631338, 26.164339>,  <41.290863, 28.340488, 26.285574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591404, 27.631338, 26.164339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210697, 27.592943, 26.047766>,  <40.982273, 27.569906, 25.977821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.210697, 27.592943, 26.047766>,  <41.591404, 27.631338, 26.164339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210697, 27.592943, 26.047766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303757, -0.428930, -0.850735,
		-0.043344, -0.898223, 0.437397,
		-0.951763, -0.095988, -0.291434,
		40.925167, 27.564146, 25.960335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488132, 26.945681, 25.990744>,  <41.591404, 27.631338, 26.164339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488132, 26.945681, 25.990744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.189682, 27.125702, 25.794481>,  <41.010612, 27.233715, 25.676723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.189682, 27.125702, 25.794481>,  <41.488132, 26.945681, 25.990744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189682, 27.125702, 25.794481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352161, -0.358647, -0.864497,
		-0.565041, -0.817816, 0.109106,
		-0.746131, 0.450054, -0.490654,
		40.965843, 27.260717, 25.647285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329937, 26.517725, 25.444727>,  <41.488132, 26.945681, 25.990744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329937, 26.517725, 25.444727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190231, 26.875660, 25.333529>,  <41.106407, 27.090422, 25.266809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190231, 26.875660, 25.333529>,  <41.329937, 26.517725, 25.444727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190231, 26.875660, 25.333529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343546, -0.153733, -0.926468,
		-0.871776, -0.419081, -0.253726,
		-0.349259, 0.894839, -0.277994,
		41.085453, 27.144112, 25.250130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095837, 26.339016, 24.705143>,  <41.329937, 26.517725, 25.444727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095837, 26.339016, 24.705143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098648, 26.737907, 24.734774>,  <41.100334, 26.977242, 24.752552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.098648, 26.737907, 24.734774>,  <41.095837, 26.339016, 24.705143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098648, 26.737907, 24.734774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585522, 0.055949, -0.808724,
		-0.810626, 0.049054, -0.583506,
		0.007024, 0.997228, 0.074076,
		41.100754, 27.037075, 24.756996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785942, 26.577719, 24.097036>,  <41.095837, 26.339016, 24.705143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785942, 26.577719, 24.097036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015583, 26.879866, 24.223413>,  <41.153370, 27.061153, 24.299240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.015583, 26.879866, 24.223413>,  <40.785942, 26.577719, 24.097036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015583, 26.879866, 24.223413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527355, -0.045951, -0.848402,
		-0.626338, 0.653687, -0.424728,
		0.574106, 0.755369, 0.315944,
		41.187817, 27.106476, 24.318197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692215, 27.207685, 23.623569>,  <40.785942, 26.577719, 24.097036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692215, 27.207685, 23.623569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.032364, 27.274378, 23.823198>,  <41.236454, 27.314392, 23.942976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.032364, 27.274378, 23.823198>,  <40.692215, 27.207685, 23.623569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032364, 27.274378, 23.823198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482717, 0.130290, -0.866031,
		-0.209416, 0.977357, 0.030312,
		0.850370, 0.166729, 0.499071,
		41.287476, 27.324396, 23.972919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882977, 27.825565, 23.347555>,  <40.692215, 27.207685, 23.623569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882977, 27.825565, 23.347555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200016, 27.632723, 23.496881>,  <41.390240, 27.517017, 23.586477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200016, 27.632723, 23.496881>,  <40.882977, 27.825565, 23.347555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200016, 27.632723, 23.496881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445220, 0.039259, -0.894560,
		0.416616, 0.875233, 0.245759,
		0.792597, -0.482105, 0.373315,
		41.437794, 27.488091, 23.608875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382732, 28.195120, 23.148390>,  <40.882977, 27.825565, 23.347555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382732, 28.195120, 23.148390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.552059, 27.841928, 23.229527>,  <41.653656, 27.630013, 23.278210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.552059, 27.841928, 23.229527>,  <41.382732, 28.195120, 23.148390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552059, 27.841928, 23.229527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566720, 0.083397, -0.819679,
		0.706844, 0.461942, 0.535706,
		0.423320, -0.882980, 0.202843,
		41.679054, 27.577034, 23.290379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852802, 28.160740, 22.730713>,  <41.382732, 28.195120, 23.148390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852802, 28.160740, 22.730713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.957664, 27.803150, 22.876087>,  <42.020580, 27.588596, 22.963312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.957664, 27.803150, 22.876087>,  <41.852802, 28.160740, 22.730713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957664, 27.803150, 22.876087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451820, -0.219079, -0.864790,
		0.852721, 0.390916, 0.346483,
		0.262153, -0.893974, 0.363437,
		42.036312, 27.534958, 22.985119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643650, 28.119289, 22.798975>,  <41.852802, 28.160740, 22.730713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643650, 28.119289, 22.798975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433525, 27.787598, 22.722633>,  <42.307449, 27.588583, 22.676828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.433525, 27.787598, 22.722633>,  <42.643650, 28.119289, 22.798975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433525, 27.787598, 22.722633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466189, -0.092834, -0.879801,
		0.711839, -0.551144, 0.435344,
		-0.525312, -0.829230, -0.190855,
		42.275932, 27.538828, 22.665377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161190, 27.678293, 22.604370>,  <42.643650, 28.119289, 22.798975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161190, 27.678293, 22.604370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821747, 27.528381, 22.455025>,  <42.618080, 27.438435, 22.365417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.821747, 27.528381, 22.455025>,  <43.161190, 27.678293, 22.604370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821747, 27.528381, 22.455025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399698, 0.008111, -0.916611,
		0.346554, -0.927079, 0.142915,
		-0.848612, -0.374778, -0.373362,
		42.567162, 27.415949, 22.343016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387051, 27.010397, 22.284349>,  <43.161190, 27.678293, 22.604370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387051, 27.010397, 22.284349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038918, 27.120590, 22.121067>,  <42.830040, 27.186707, 22.023098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.038918, 27.120590, 22.121067>,  <43.387051, 27.010397, 22.284349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038918, 27.120590, 22.121067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398124, -0.094295, -0.912472,
		-0.289864, -0.956669, -0.027609,
		-0.870331, 0.275485, -0.408206,
		42.777817, 27.203236, 21.998606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206001, 26.377840, 21.880745>,  <43.387051, 27.010397, 22.284349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206001, 26.377840, 21.880745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.010368, 26.697973, 21.742027>,  <42.892986, 26.890053, 21.658796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.010368, 26.697973, 21.742027>,  <43.206001, 26.377840, 21.880745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010368, 26.697973, 21.742027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303986, -0.216263, -0.927805,
		-0.817550, -0.559196, -0.137518,
		-0.489085, 0.800331, -0.346794,
		42.863644, 26.938072, 21.637989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676090, 26.078655, 21.366285>,  <43.206001, 26.377840, 21.880745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676090, 26.078655, 21.366285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764950, 26.460274, 21.285845>,  <42.818268, 26.689245, 21.237579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764950, 26.460274, 21.285845>,  <42.676090, 26.078655, 21.366285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764950, 26.460274, 21.285845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131148, -0.233622, -0.963442,
		-0.966152, 0.187655, -0.177021,
		0.222151, 0.954047, -0.201103,
		42.831596, 26.746489, 21.225513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116776, 26.325205, 20.907799>,  <42.676090, 26.078655, 21.366285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116776, 26.325205, 20.907799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479382, 26.484659, 20.852201>,  <42.696945, 26.580332, 20.818842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479382, 26.484659, 20.852201>,  <42.116776, 26.325205, 20.907799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479382, 26.484659, 20.852201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012683, -0.303372, -0.952788,
		-0.421984, 0.865479, -0.269955,
		0.906514, 0.398638, -0.138995,
		42.751335, 26.604250, 20.810503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092705, 26.677633, 20.252594>,  <42.116776, 26.325205, 20.907799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092705, 26.677633, 20.252594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.477749, 26.601902, 20.330093>,  <42.708775, 26.556463, 20.376593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.477749, 26.601902, 20.330093>,  <42.092705, 26.677633, 20.252594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477749, 26.601902, 20.330093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101830, -0.409879, -0.906438,
		0.251027, 0.892275, -0.375274,
		0.962609, -0.189326, 0.193751,
		42.766533, 26.545105, 20.388218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441414, 26.989222, 19.686749>,  <42.092705, 26.677633, 20.252594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441414, 26.989222, 19.686749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.685612, 26.712559, 19.841105>,  <42.832130, 26.546562, 19.933718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.685612, 26.712559, 19.841105>,  <42.441414, 26.989222, 19.686749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685612, 26.712559, 19.841105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345598, -0.205762, -0.915546,
		0.712644, 0.692297, 0.113419,
		0.610492, -0.691655, 0.385892,
		42.868759, 26.505062, 19.956871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679482, 27.068911, 19.715294>,  <42.441414, 26.989222, 19.686749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679482, 27.068911, 19.715294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.415535, 27.210016, 19.449924>,  <41.257168, 27.294680, 19.290703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.415535, 27.210016, 19.449924>,  <41.679482, 27.068911, 19.715294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415535, 27.210016, 19.449924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659674, 0.150718, 0.736284,
		0.359726, 0.923493, 0.133257,
		-0.659869, 0.352766, -0.663422,
		41.217575, 27.315845, 19.250898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544357, 27.641123, 20.006933>,  <41.679482, 27.068911, 19.715294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544357, 27.641123, 20.006933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222473, 27.578196, 19.777956>,  <41.029343, 27.540440, 19.640570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222473, 27.578196, 19.777956>,  <41.544357, 27.641123, 20.006933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222473, 27.578196, 19.777956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589693, 0.323168, 0.740152,
		0.068557, 0.933174, -0.352826,
		-0.804712, -0.157316, -0.572442,
		40.981060, 27.531000, 19.606224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187263, 28.300381, 20.018532>,  <41.544357, 27.641123, 20.006933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187263, 28.300381, 20.018532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931641, 28.008781, 19.920410>,  <40.778267, 27.833822, 19.861538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.931641, 28.008781, 19.920410>,  <41.187263, 28.300381, 20.018532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931641, 28.008781, 19.920410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594655, 0.265985, 0.758708,
		-0.487850, 0.630724, -0.603481,
		-0.639053, -0.728998, -0.245302,
		40.739925, 27.790081, 19.846819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443256, 28.493942, 19.887024>,  <41.187263, 28.300381, 20.018532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443256, 28.493942, 19.887024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395737, 28.110397, 19.990152>,  <40.367226, 27.880270, 20.052031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.395737, 28.110397, 19.990152>,  <40.443256, 28.493942, 19.887024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395737, 28.110397, 19.990152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742645, 0.258160, 0.617925,
		-0.659064, -0.118063, -0.742762,
		-0.118797, -0.958861, 0.257823,
		40.360096, 27.822739, 20.067499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769413, 28.456257, 20.265753>,  <40.443256, 28.493942, 19.887024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769413, 28.456257, 20.265753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.946022, 28.107050, 20.348595>,  <40.051987, 27.897526, 20.398300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.946022, 28.107050, 20.348595>,  <39.769413, 28.456257, 20.265753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946022, 28.107050, 20.348595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518233, -0.059705, 0.853153,
		-0.732454, -0.484017, -0.478789,
		0.441527, -0.873019, 0.207102,
		40.078480, 27.845144, 20.410725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197411, 27.946827, 20.348051>,  <39.769413, 28.456257, 20.265753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197411, 27.946827, 20.348051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530266, 27.821959, 20.531395>,  <39.729980, 27.747038, 20.641401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530266, 27.821959, 20.531395>,  <39.197411, 27.946827, 20.348051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530266, 27.821959, 20.531395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507260, -0.094437, 0.856603,
		-0.224118, -0.945321, -0.236936,
		0.832141, -0.312168, 0.458359,
		39.779907, 27.728308, 20.668903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912273, 27.638077, 20.953503>,  <39.197411, 27.946827, 20.348051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912273, 27.638077, 20.953503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299908, 27.626459, 21.051510>,  <39.532486, 27.619490, 21.110313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299908, 27.626459, 21.051510>,  <38.912273, 27.638077, 20.953503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299908, 27.626459, 21.051510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246665, -0.137531, 0.959292,
		0.005840, -0.990072, -0.140442,
		0.969083, -0.029040, 0.245019,
		39.590633, 27.617746, 21.125015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937832, 27.108809, 21.321421>,  <38.912273, 27.638077, 20.953503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937832, 27.108809, 21.321421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230038, 27.361980, 21.423992>,  <39.405361, 27.513884, 21.485535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.230038, 27.361980, 21.423992>,  <38.937832, 27.108809, 21.321421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230038, 27.361980, 21.423992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337461, 0.008123, 0.941304,
		0.593695, -0.774168, 0.219523,
		0.730511, 0.632928, 0.256429,
		39.449192, 27.551859, 21.500921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191925, 26.786085, 21.963192>,  <38.937832, 27.108809, 21.321421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191925, 26.786085, 21.963192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308918, 27.168587, 21.960798>,  <39.379112, 27.398087, 21.959362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.308918, 27.168587, 21.960798>,  <39.191925, 26.786085, 21.963192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308918, 27.168587, 21.960798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226493, 0.075352, 0.971094,
		0.929062, -0.282671, 0.238624,
		0.292481, 0.956253, -0.005984,
		39.396664, 27.455463, 21.959003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599621, 26.844498, 22.532871>,  <39.191925, 26.786085, 21.963192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599621, 26.844498, 22.532871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493187, 27.222717, 22.457893>,  <39.429329, 27.449650, 22.412907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.493187, 27.222717, 22.457893>,  <39.599621, 26.844498, 22.532871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493187, 27.222717, 22.457893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114539, 0.162064, 0.980110,
		0.957121, 0.282259, 0.065180,
		-0.266081, 0.945550, -0.187445,
		39.413364, 27.506382, 22.401661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923237, 27.262239, 22.948736>,  <39.599621, 26.844498, 22.532871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923237, 27.262239, 22.948736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610947, 27.490007, 22.845791>,  <39.423573, 27.626667, 22.784023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.610947, 27.490007, 22.845791>,  <39.923237, 27.262239, 22.948736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610947, 27.490007, 22.845791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119228, 0.268556, 0.955857,
		0.613399, 0.776943, -0.141777,
		-0.780722, 0.569417, -0.257366,
		39.376732, 27.660833, 22.768581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011017, 28.074215, 23.192127>,  <39.923237, 27.262239, 22.948736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011017, 28.074215, 23.192127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624981, 27.972061, 23.168837>,  <39.393360, 27.910769, 23.154863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.624981, 27.972061, 23.168837>,  <40.011017, 28.074215, 23.192127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624981, 27.972061, 23.168837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124783, 0.252807, 0.959436,
		-0.230303, 0.933203, -0.275848,
		-0.965085, -0.255382, -0.058226,
		39.335457, 27.895447, 23.151369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702370, 28.519226, 23.584047>,  <40.011017, 28.074215, 23.192127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702370, 28.519226, 23.584047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391827, 28.271233, 23.538628>,  <39.205502, 28.122437, 23.511375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.391827, 28.271233, 23.538628>,  <39.702370, 28.519226, 23.584047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391827, 28.271233, 23.538628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333619, 0.251356, 0.908581,
		-0.534763, 0.743264, -0.401979,
		-0.776355, -0.619983, -0.113551,
		39.158920, 28.085238, 23.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163025, 28.875412, 23.935349>,  <39.702370, 28.519226, 23.584047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163025, 28.875412, 23.935349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026676, 28.499598, 23.922232>,  <38.944866, 28.274109, 23.914362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026676, 28.499598, 23.922232>,  <39.163025, 28.875412, 23.935349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026676, 28.499598, 23.922232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349359, 0.094213, 0.932240,
		-0.872786, 0.329230, -0.360351,
		-0.340871, -0.939538, -0.032792,
		38.924416, 28.217735, 23.912394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398720, 28.835232, 24.184395>,  <39.163025, 28.875412, 23.935349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398720, 28.835232, 24.184395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511360, 28.453632, 24.225555>,  <38.578945, 28.224672, 24.250252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.511360, 28.453632, 24.225555>,  <38.398720, 28.835232, 24.184395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511360, 28.453632, 24.225555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256565, 0.028475, 0.966107,
		-0.924595, -0.298458, -0.236744,
		0.281601, -0.953998, 0.102901,
		38.595840, 28.167433, 24.256426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813023, 28.478964, 24.302322>,  <38.398720, 28.835232, 24.184395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813023, 28.478964, 24.302322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097717, 28.238850, 24.448246>,  <38.268536, 28.094782, 24.535801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.097717, 28.238850, 24.448246>,  <37.813023, 28.478964, 24.302322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097717, 28.238850, 24.448246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455912, 0.000333, 0.890025,
		-0.534390, -0.799786, -0.273441,
		0.711738, -0.600286, 0.364809,
		38.311237, 28.058764, 24.557690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425041, 28.069927, 24.679663>,  <37.813023, 28.478964, 24.302322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425041, 28.069927, 24.679663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795990, 28.042116, 24.826712>,  <38.018559, 28.025429, 24.914940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795990, 28.042116, 24.826712>,  <37.425041, 28.069927, 24.679663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795990, 28.042116, 24.826712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371614, -0.057227, 0.926622,
		-0.043379, -0.995938, -0.078905,
		0.927374, -0.069518, 0.367622,
		38.074203, 28.021257, 24.936998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450745, 27.725208, 25.326853>,  <37.425041, 28.069927, 24.679663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450745, 27.725208, 25.326853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821190, 27.867739, 25.376413>,  <38.043457, 27.953257, 25.406151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821190, 27.867739, 25.376413>,  <37.450745, 27.725208, 25.326853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821190, 27.867739, 25.376413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200798, 0.187546, 0.961513,
		0.319376, -0.915345, 0.245238,
		0.926110, 0.356327, 0.123902,
		38.099022, 27.974636, 25.413584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790340, 27.396660, 25.871229>,  <37.450745, 27.725208, 25.326853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790340, 27.396660, 25.871229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940746, 27.767170, 25.861189>,  <38.030991, 27.989475, 25.855165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.940746, 27.767170, 25.861189>,  <37.790340, 27.396660, 25.871229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940746, 27.767170, 25.861189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095664, 0.065748, 0.993240,
		0.921663, -0.371070, 0.113333,
		0.376013, 0.926274, -0.025099,
		38.053551, 28.045052, 25.853659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114082, 27.455330, 26.602522>,  <37.790340, 27.396660, 25.871229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114082, 27.455330, 26.602522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089153, 27.822487, 26.445761>,  <38.074196, 28.042782, 26.351704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089153, 27.822487, 26.445761>,  <38.114082, 27.455330, 26.602522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089153, 27.822487, 26.445761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205537, 0.372445, 0.905008,
		0.976663, 0.136953, 0.165450,
		-0.062323, 0.917894, -0.391902,
		38.070457, 28.097855, 26.328190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.552162, 27.884642, 31.977999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302326, 28.075972, 31.731066>,  <40.152424, 28.190769, 31.582907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302326, 28.075972, 31.731066>,  <40.552162, 27.884642, 31.977999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302326, 28.075972, 31.731066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443243, 0.433703, 0.784498,
		0.642985, 0.763613, -0.058870,
		-0.624585, 0.478327, -0.617330,
		40.114952, 28.219469, 31.545866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533585, 28.568554, 32.240932>,  <40.552162, 27.884642, 31.977999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533585, 28.568554, 32.240932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195782, 28.533379, 32.029621>,  <39.993099, 28.512274, 31.902836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195782, 28.533379, 32.029621>,  <40.533585, 28.568554, 32.240932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195782, 28.533379, 32.029621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509627, 0.435109, 0.742267,
		0.164584, 0.896073, -0.412268,
		-0.844507, -0.087937, -0.528275,
		39.942429, 28.506998, 31.871138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250011, 29.228085, 32.207912>,  <40.533585, 28.568554, 32.240932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250011, 29.228085, 32.207912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947670, 28.979725, 32.124805>,  <39.766266, 28.830709, 32.074940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947670, 28.979725, 32.124805>,  <40.250011, 29.228085, 32.207912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947670, 28.979725, 32.124805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568774, 0.465487, 0.678099,
		-0.324318, 0.630717, -0.704992,
		-0.755853, -0.620901, -0.207769,
		39.720913, 28.793455, 32.062473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638702, 29.646475, 31.998688>,  <40.250011, 29.228085, 32.207912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638702, 29.646475, 31.998688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499676, 29.304886, 32.153568>,  <39.416260, 29.099932, 32.246494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.499676, 29.304886, 32.153568>,  <39.638702, 29.646475, 31.998688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499676, 29.304886, 32.153568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617832, 0.519204, 0.590518,
		-0.705323, -0.033979, -0.708072,
		-0.347568, -0.853975, 0.387199,
		39.395405, 29.048693, 32.269730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983406, 29.808819, 32.116196>,  <39.638702, 29.646475, 31.998688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983406, 29.808819, 32.116196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041214, 29.477434, 32.332626>,  <39.075897, 29.278605, 32.462486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041214, 29.477434, 32.332626>,  <38.983406, 29.808819, 32.116196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041214, 29.477434, 32.332626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497796, 0.411714, 0.763341,
		-0.855168, -0.379664, -0.352904,
		0.144518, -0.828460, 0.541080,
		39.084568, 29.228895, 32.494949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274696, 29.563360, 32.343849>,  <38.983406, 29.808819, 32.116196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274696, 29.563360, 32.343849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561489, 29.433113, 32.590397>,  <38.733566, 29.354965, 32.738327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.561489, 29.433113, 32.590397>,  <38.274696, 29.563360, 32.343849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561489, 29.433113, 32.590397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471846, 0.424164, 0.772946,
		-0.513126, -0.845020, 0.150477,
		0.716982, -0.325617, 0.616369,
		38.776585, 29.335428, 32.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885300, 29.293301, 32.846207>,  <38.274696, 29.563360, 32.343849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885300, 29.293301, 32.846207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251419, 29.341421, 32.999958>,  <38.471092, 29.370293, 33.092209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251419, 29.341421, 32.999958>,  <37.885300, 29.293301, 32.846207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251419, 29.341421, 32.999958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391343, 0.491322, 0.778109,
		-0.095249, -0.862630, 0.496787,
		0.915302, 0.120300, 0.384382,
		38.526009, 29.377512, 33.115273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746933, 29.135500, 33.513382>,  <37.885300, 29.293301, 32.846207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746933, 29.135500, 33.513382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086853, 29.345280, 33.492241>,  <38.290806, 29.471148, 33.479557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086853, 29.345280, 33.492241>,  <37.746933, 29.135500, 33.513382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086853, 29.345280, 33.492241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313712, 0.583796, 0.748844,
		0.423586, -0.619786, 0.660636,
		0.849800, 0.524449, -0.052854,
		38.341793, 29.502615, 33.476383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825108, 29.277313, 34.150219>,  <37.746933, 29.135500, 33.513382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825108, 29.277313, 34.150219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061985, 29.541800, 33.966003>,  <38.204113, 29.700491, 33.855473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061985, 29.541800, 33.966003>,  <37.825108, 29.277313, 34.150219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061985, 29.541800, 33.966003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211659, 0.679108, 0.702860,
		0.777499, -0.318753, 0.542117,
		0.592195, 0.661217, -0.460540,
		38.239643, 29.740164, 33.827843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239124, 29.561222, 34.657284>,  <37.825108, 29.277313, 34.150219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239124, 29.561222, 34.657284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251743, 29.828808, 34.360233>,  <38.259315, 29.989359, 34.182003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.251743, 29.828808, 34.360233>,  <38.239124, 29.561222, 34.657284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251743, 29.828808, 34.360233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139617, 0.738660, 0.659461,
		0.989703, 0.082879, 0.116701,
		0.031546, 0.668964, -0.742625,
		38.261208, 30.029497, 34.137447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511078, 30.199896, 34.978905>,  <38.239124, 29.561222, 34.657284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511078, 30.199896, 34.978905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308945, 30.311237, 34.652184>,  <38.187664, 30.378042, 34.456150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308945, 30.311237, 34.652184>,  <38.511078, 30.199896, 34.978905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308945, 30.311237, 34.652184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353277, 0.796856, 0.490118,
		0.787298, 0.536227, -0.304340,
		-0.505330, 0.278352, -0.816800,
		38.157345, 30.394743, 34.407143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854259, 30.761673, 34.892792>,  <38.511078, 30.199896, 34.978905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854259, 30.761673, 34.892792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507545, 30.803932, 34.697845>,  <38.299519, 30.829287, 34.580875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507545, 30.803932, 34.697845>,  <38.854259, 30.761673, 34.892792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507545, 30.803932, 34.697845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191521, 0.831835, 0.520933,
		0.460446, 0.544876, -0.700785,
		-0.866781, 0.105646, -0.487370,
		38.247513, 30.835627, 34.551636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882618, 31.498199, 34.601250>,  <38.854259, 30.761673, 34.892792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882618, 31.498199, 34.601250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.509289, 31.358688, 34.635342>,  <38.285290, 31.274982, 34.655796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.509289, 31.358688, 34.635342>,  <38.882618, 31.498199, 34.601250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509289, 31.358688, 34.635342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281650, 0.858441, 0.428663,
		-0.222671, 0.376077, -0.899436,
		-0.933323, -0.348777, 0.085228,
		38.229294, 31.254055, 34.660912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401939, 32.078506, 34.471951>,  <38.882618, 31.498199, 34.601250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401939, 32.078506, 34.471951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217213, 31.809561, 34.703346>,  <38.106377, 31.648193, 34.842182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.217213, 31.809561, 34.703346>,  <38.401939, 32.078506, 34.471951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217213, 31.809561, 34.703346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306451, 0.732990, 0.607300,
		-0.832356, 0.103181, -0.544553,
		-0.461814, -0.672368, 0.578489,
		38.078667, 31.607851, 34.876892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879562, 32.521057, 34.438488>,  <38.401939, 32.078506, 34.471951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879562, 32.521057, 34.438488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178200, 32.787140, 34.434479>,  <38.357380, 32.946789, 34.432076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178200, 32.787140, 34.434479>,  <37.879562, 32.521057, 34.438488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178200, 32.787140, 34.434479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180445, 0.187981, -0.965455,
		-0.640344, 0.722608, 0.260378,
		0.746591, 0.665207, -0.010019,
		38.402176, 32.986702, 34.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704773, 33.171246, 34.026802>,  <37.879562, 32.521057, 34.438488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704773, 33.171246, 34.026802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104553, 33.166775, 34.039291>,  <38.344421, 33.164093, 34.046783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.104553, 33.166775, 34.039291>,  <37.704773, 33.171246, 34.026802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104553, 33.166775, 34.039291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033129, 0.294530, -0.955068,
		0.001476, 0.955577, 0.294738,
		0.999450, -0.011174, 0.031222,
		38.404388, 33.163422, 34.048656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969112, 33.809811, 33.748817>,  <37.704773, 33.171246, 34.026802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969112, 33.809811, 33.748817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291504, 33.578289, 33.699211>,  <38.484940, 33.439377, 33.669449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.291504, 33.578289, 33.699211>,  <37.969112, 33.809811, 33.748817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291504, 33.578289, 33.699211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005609, 0.216967, -0.976163,
		0.591912, 0.786075, 0.178118,
		0.805983, -0.578802, -0.124016,
		38.533298, 33.404648, 33.662006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382912, 34.206589, 33.191582>,  <37.969112, 33.809811, 33.748817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382912, 34.206589, 33.191582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524033, 33.833500, 33.221386>,  <38.608707, 33.609646, 33.239269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.524033, 33.833500, 33.221386>,  <38.382912, 34.206589, 33.191582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524033, 33.833500, 33.221386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161174, -0.017867, -0.986764,
		0.921711, 0.360146, 0.144027,
		0.352806, -0.932725, 0.074514,
		38.629875, 33.553684, 33.243740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906494, 34.227684, 32.749348>,  <38.382912, 34.206589, 33.191582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906494, 34.227684, 32.749348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770435, 33.853405, 32.786827>,  <38.688801, 33.628838, 32.809315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770435, 33.853405, 32.786827>,  <38.906494, 34.227684, 32.749348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770435, 33.853405, 32.786827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157636, -0.154961, -0.975263,
		0.927067, -0.316960, 0.200209,
		-0.340144, -0.935694, 0.093695,
		38.668392, 33.572697, 32.814934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351868, 33.964668, 32.280018>,  <38.906494, 34.227684, 32.749348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351868, 33.964668, 32.280018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048439, 33.713772, 32.350597>,  <38.866383, 33.563232, 32.392944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.048439, 33.713772, 32.350597>,  <39.351868, 33.964668, 32.280018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048439, 33.713772, 32.350597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043761, -0.319231, -0.946666,
		0.650121, -0.710391, 0.269608,
		-0.758570, -0.627246, 0.176451,
		38.820869, 33.525597, 32.403534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631271, 33.330704, 32.072025>,  <39.351868, 33.964668, 32.280018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631271, 33.330704, 32.072025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232849, 33.361027, 32.053600>,  <38.993793, 33.379219, 32.042545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232849, 33.361027, 32.053600>,  <39.631271, 33.330704, 32.072025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232849, 33.361027, 32.053600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026334, -0.243162, -0.969628,
		-0.084704, -0.967019, 0.240207,
		-0.996058, 0.075806, -0.046063,
		38.934032, 33.383770, 32.039780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444668, 32.883633, 31.578260>,  <39.631271, 33.330704, 32.072025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444668, 32.883633, 31.578260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088531, 33.064087, 31.602837>,  <38.874851, 33.172359, 31.617582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.088531, 33.064087, 31.602837>,  <39.444668, 32.883633, 31.578260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088531, 33.064087, 31.602837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070125, -0.002536, -0.997535,
		-0.449865, -0.892453, 0.033893,
		-0.890339, 0.451132, 0.061443,
		38.821430, 33.199425, 31.621269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163136, 32.618721, 31.060865>,  <39.444668, 32.883633, 31.578260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163136, 32.618721, 31.060865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908154, 32.913651, 31.150316>,  <38.755165, 33.090607, 31.203987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908154, 32.913651, 31.150316>,  <39.163136, 32.618721, 31.060865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908154, 32.913651, 31.150316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184598, 0.135636, -0.973410,
		-0.748048, -0.661785, 0.049647,
		-0.637455, 0.737322, 0.223627,
		38.716919, 33.134846, 31.217403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511383, 32.378529, 30.791054>,  <39.163136, 32.618721, 31.060865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511383, 32.378529, 30.791054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504501, 32.778091, 30.808426>,  <38.500370, 33.017830, 30.818850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504501, 32.778091, 30.808426>,  <38.511383, 32.378529, 30.791054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504501, 32.778091, 30.808426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032140, 0.042861, -0.998564,
		-0.999335, -0.018580, 0.031367,
		-0.017209, 0.998908, 0.043429,
		38.499340, 33.077763, 30.821455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882626, 32.675915, 30.417030>,  <38.511383, 32.378529, 30.791054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882626, 32.675915, 30.417030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.179138, 32.944157, 30.405729>,  <38.357044, 33.105103, 30.398949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.179138, 32.944157, 30.405729>,  <37.882626, 32.675915, 30.417030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179138, 32.944157, 30.405729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075192, 0.041144, -0.996320,
		-0.666973, 0.740675, 0.080923,
		0.741278, 0.670603, -0.028252,
		38.401520, 33.145336, 30.397253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721195, 33.063328, 29.826090>,  <37.882626, 32.675915, 30.417030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721195, 33.063328, 29.826090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097263, 33.184776, 29.887924>,  <38.322903, 33.257645, 29.925024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.097263, 33.184776, 29.887924>,  <37.721195, 33.063328, 29.826090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097263, 33.184776, 29.887924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187748, -0.083078, -0.978697,
		-0.284313, 0.949163, -0.135112,
		0.940169, 0.303623, 0.154584,
		38.379314, 33.275864, 29.934299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824890, 33.550873, 29.290564>,  <37.721195, 33.063328, 29.826090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824890, 33.550873, 29.290564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188892, 33.443645, 29.417070>,  <38.407295, 33.379307, 29.492975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.188892, 33.443645, 29.417070>,  <37.824890, 33.550873, 29.290564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188892, 33.443645, 29.417070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294745, -0.118174, -0.948241,
		0.291573, 0.956123, -0.028526,
		0.910006, -0.268073, 0.316269,
		38.461895, 33.363224, 29.511951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181793, 33.876198, 28.761951>,  <37.824890, 33.550873, 29.290564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181793, 33.876198, 28.761951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435390, 33.617161, 28.931038>,  <38.587547, 33.461739, 29.032490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435390, 33.617161, 28.931038>,  <38.181793, 33.876198, 28.761951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435390, 33.617161, 28.931038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290948, -0.306714, -0.906243,
		0.716525, 0.697536, -0.006038,
		0.633989, -0.647588, 0.422715,
		38.625587, 33.422886, 29.057852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513077, 34.564106, 28.802691>,  <38.181793, 33.876198, 28.761951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513077, 34.564106, 28.802691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397724, 34.856903, 28.555784>,  <38.328514, 35.032581, 28.407640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.397724, 34.856903, 28.555784>,  <38.513077, 34.564106, 28.802691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397724, 34.856903, 28.555784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371220, 0.508763, 0.776760,
		0.882628, 0.453144, 0.125014,
		-0.288381, 0.731997, -0.617265,
		38.311211, 35.076504, 28.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688828, 35.219524, 29.170801>,  <38.513077, 34.564106, 28.802691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688828, 35.219524, 29.170801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415928, 35.337948, 28.903404>,  <38.252186, 35.409004, 28.742966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.415928, 35.337948, 28.903404>,  <38.688828, 35.219524, 29.170801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415928, 35.337948, 28.903404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508696, 0.464506, 0.724888,
		0.525130, 0.834615, -0.166304,
		-0.682251, 0.296062, -0.668491,
		38.211254, 35.426765, 28.702856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542564, 35.878990, 29.425791>,  <38.688828, 35.219524, 29.170801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542564, 35.878990, 29.425791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231907, 35.752838, 29.207666>,  <38.045513, 35.677147, 29.076792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231907, 35.752838, 29.207666>,  <38.542564, 35.878990, 29.425791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231907, 35.752838, 29.207666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629936, 0.392172, 0.670359,
		0.002437, 0.864140, -0.503246,
		-0.776643, -0.315379, -0.545309,
		37.998913, 35.658226, 29.044073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131432, 36.427841, 29.367516>,  <38.542564, 35.878990, 29.425791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131432, 36.427841, 29.367516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891304, 36.116680, 29.293240>,  <37.747227, 35.929985, 29.248674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.891304, 36.116680, 29.293240>,  <38.131432, 36.427841, 29.367516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891304, 36.116680, 29.293240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632556, 0.319768, 0.705423,
		-0.489373, 0.540940, -0.684031,
		-0.600322, -0.777903, -0.185689,
		37.711208, 35.883308, 29.237534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398415, 36.681694, 29.433016>,  <38.131432, 36.427841, 29.367516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398415, 36.681694, 29.433016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357563, 36.284458, 29.456144>,  <37.333054, 36.046116, 29.470020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357563, 36.284458, 29.456144>,  <37.398415, 36.681694, 29.433016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357563, 36.284458, 29.456144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698449, 0.112974, 0.706687,
		-0.708335, 0.031789, -0.705160,
		-0.102130, -0.993089, 0.057820,
		37.326923, 35.986530, 29.473490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645435, 36.539761, 29.317205>,  <37.398415, 36.681694, 29.433016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645435, 36.539761, 29.317205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814163, 36.244354, 29.527599>,  <36.915401, 36.067108, 29.653835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814163, 36.244354, 29.527599>,  <36.645435, 36.539761, 29.317205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814163, 36.244354, 29.527599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734833, 0.061363, 0.675467,
		-0.531120, -0.671436, -0.516803,
		0.421820, -0.738518, 0.525984,
		36.940708, 36.022800, 29.685394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126472, 36.120541, 29.365910>,  <36.645435, 36.539761, 29.317205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126472, 36.120541, 29.365910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.375111, 36.006615, 29.657801>,  <36.524292, 35.938259, 29.832935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.375111, 36.006615, 29.657801>,  <36.126472, 36.120541, 29.365910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375111, 36.006615, 29.657801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730001, 0.127250, 0.671495,
		-0.284112, -0.950098, -0.128821,
		0.621594, -0.284819, 0.729726,
		36.561588, 35.921169, 29.876719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747162, 35.625233, 29.691118>,  <36.126472, 36.120541, 29.365910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747162, 35.625233, 29.691118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027237, 35.785038, 29.927803>,  <36.195282, 35.880920, 30.069815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.027237, 35.785038, 29.927803>,  <35.747162, 35.625233, 29.691118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027237, 35.785038, 29.927803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687338, 0.152994, 0.710042,
		0.193149, -0.903866, 0.381732,
		0.700185, 0.399523, 0.591711,
		36.237293, 35.904892, 30.105318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613621, 35.386036, 30.390841>,  <35.747162, 35.625233, 29.691118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613621, 35.386036, 30.390841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858856, 35.696194, 30.451349>,  <36.005997, 35.882290, 30.487656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858856, 35.696194, 30.451349>,  <35.613621, 35.386036, 30.390841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858856, 35.696194, 30.451349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484086, 0.217401, 0.847584,
		0.624324, -0.592875, 0.508644,
		0.613091, 0.775394, 0.151274,
		36.042782, 35.928810, 30.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918316, 35.316475, 31.088301>,  <35.613621, 35.386036, 30.390841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918316, 35.316475, 31.088301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927589, 35.694744, 30.958582>,  <35.933155, 35.921703, 30.880751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927589, 35.694744, 30.958582>,  <35.918316, 35.316475, 31.088301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927589, 35.694744, 30.958582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668054, 0.255983, 0.698697,
		0.743752, 0.200449, 0.637694,
		0.023185, 0.945671, -0.324299,
		35.934544, 35.978447, 30.861292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930470, 35.668606, 31.629147>,  <35.918316, 35.316475, 31.088301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930470, 35.668606, 31.629147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836109, 35.961903, 31.374050>,  <35.779491, 36.137878, 31.220993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836109, 35.961903, 31.374050>,  <35.930470, 35.668606, 31.629147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836109, 35.961903, 31.374050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492086, 0.475770, 0.729037,
		0.837975, 0.485803, 0.248581,
		-0.235901, 0.733238, -0.637740,
		35.765339, 36.181873, 31.182728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904224, 36.243206, 31.977028>,  <35.930470, 35.668606, 31.629147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904224, 36.243206, 31.977028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710865, 36.406124, 31.667076>,  <35.594849, 36.503876, 31.481104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.710865, 36.406124, 31.667076>,  <35.904224, 36.243206, 31.977028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710865, 36.406124, 31.667076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545687, 0.551952, 0.630535,
		0.684511, 0.727639, -0.044554,
		-0.483394, 0.407296, -0.774881,
		35.565845, 36.528313, 31.434612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.610046, 34.166325, 25.615042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285183, 34.262810, 25.402548>,  <40.090263, 34.320702, 25.275051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285183, 34.262810, 25.402548>,  <40.610046, 34.166325, 25.615042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285183, 34.262810, 25.402548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303488, 0.602981, 0.737773,
		0.498287, 0.760413, -0.416511,
		-0.812160, 0.241217, -0.531234,
		40.041534, 34.335175, 25.243177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490658, 34.904408, 25.738745>,  <40.610046, 34.166325, 25.615042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490658, 34.904408, 25.738745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149784, 34.719021, 25.641605>,  <39.945259, 34.607788, 25.583323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149784, 34.719021, 25.641605>,  <40.490658, 34.904408, 25.738745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149784, 34.719021, 25.641605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458682, 0.438394, 0.772930,
		-0.251764, 0.770072, -0.586178,
		-0.852189, -0.463465, -0.242847,
		39.894127, 34.579983, 25.568752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000595, 35.415329, 25.926975>,  <40.490658, 34.904408, 25.738745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000595, 35.415329, 25.926975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781895, 35.083466, 25.881842>,  <39.650673, 34.884350, 25.854761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781895, 35.083466, 25.881842>,  <40.000595, 35.415329, 25.926975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781895, 35.083466, 25.881842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633220, 0.321551, 0.704015,
		-0.547808, 0.456372, -0.701164,
		-0.546753, -0.829656, -0.112836,
		39.617870, 34.834568, 25.847990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320068, 35.603951, 25.897474>,  <40.000595, 35.415329, 25.926975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320068, 35.603951, 25.897474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287926, 35.214355, 25.982220>,  <39.268639, 34.980598, 26.033066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287926, 35.214355, 25.982220>,  <39.320068, 35.603951, 25.897474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287926, 35.214355, 25.982220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649162, 0.212433, 0.730384,
		-0.756393, -0.078838, -0.649349,
		-0.080361, -0.973990, 0.211861,
		39.263817, 34.922157, 26.045778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564445, 35.458214, 25.947552>,  <39.320068, 35.603951, 25.897474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564445, 35.458214, 25.947552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786263, 35.188442, 26.142538>,  <38.919353, 35.026581, 26.259531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786263, 35.188442, 26.142538>,  <38.564445, 35.458214, 25.947552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786263, 35.188442, 26.142538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579866, 0.106974, 0.807658,
		-0.596856, -0.730548, -0.331757,
		0.554543, -0.674431, 0.487468,
		38.952625, 34.986115, 26.288778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110214, 34.997215, 26.254145>,  <38.564445, 35.458214, 25.947552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110214, 34.997215, 26.254145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455193, 34.947308, 26.450357>,  <38.662178, 34.917362, 26.568085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455193, 34.947308, 26.450357>,  <38.110214, 34.997215, 26.254145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455193, 34.947308, 26.450357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489465, 0.041220, 0.871048,
		-0.128904, -0.991328, -0.025523,
		0.862443, -0.124774, 0.490534,
		38.713924, 34.909878, 26.597517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040466, 34.461582, 26.798660>,  <38.110214, 34.997215, 26.254145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040466, 34.461582, 26.798660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337761, 34.695530, 26.928600>,  <38.516136, 34.835899, 27.006563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337761, 34.695530, 26.928600>,  <38.040466, 34.461582, 26.798660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337761, 34.695530, 26.928600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445661, 0.070674, 0.892408,
		0.498984, -0.808042, 0.313181,
		0.743237, 0.584870, 0.324848,
		38.560734, 34.870991, 27.026054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971745, 34.367092, 27.506020>,  <38.040466, 34.461582, 26.798660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971745, 34.367092, 27.506020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257523, 34.646660, 27.519226>,  <38.428989, 34.814400, 27.527149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257523, 34.646660, 27.519226>,  <37.971745, 34.367092, 27.506020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257523, 34.646660, 27.519226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217255, 0.176736, 0.959981,
		0.665111, -0.693023, 0.278111,
		0.714442, 0.698916, 0.033014,
		38.471855, 34.856335, 27.529131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326069, 34.205364, 28.152498>,  <37.971745, 34.367092, 27.506020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326069, 34.205364, 28.152498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360607, 34.593586, 28.062557>,  <38.381332, 34.826519, 28.008593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360607, 34.593586, 28.062557>,  <38.326069, 34.205364, 28.152498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360607, 34.593586, 28.062557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285076, 0.240330, 0.927886,
		0.954607, -0.016022, 0.297436,
		0.086349, 0.970559, -0.224854,
		38.386513, 34.884754, 27.995102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060913, 33.891304, 28.329327>,  <38.326069, 34.205364, 28.152498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060913, 33.891304, 28.329327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009075, 33.549809, 28.531052>,  <38.977974, 33.344910, 28.652086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009075, 33.549809, 28.531052>,  <39.060913, 33.891304, 28.329327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009075, 33.549809, 28.531052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450210, -0.503816, -0.737211,
		0.883469, 0.131510, 0.449653,
		-0.129592, -0.853741, 0.504313,
		38.970196, 33.293686, 28.682346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785503, 33.440506, 28.315298>,  <39.060913, 33.891304, 28.329327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785503, 33.440506, 28.315298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500996, 33.166088, 28.376528>,  <39.330292, 33.001438, 28.413265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500996, 33.166088, 28.376528>,  <39.785503, 33.440506, 28.315298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500996, 33.166088, 28.376528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453932, -0.614578, -0.645167,
		0.536690, -0.389404, 0.748551,
		-0.711273, -0.686046, 0.153075,
		39.287613, 32.960274, 28.422451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116539, 32.915104, 28.570665>,  <39.785503, 33.440506, 28.315298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116539, 32.915104, 28.570665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780838, 32.753891, 28.424665>,  <39.579418, 32.657166, 28.337065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780838, 32.753891, 28.424665>,  <40.116539, 32.915104, 28.570665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780838, 32.753891, 28.424665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542567, -0.576545, -0.610916,
		0.035778, -0.710748, 0.702536,
		-0.839251, -0.403030, -0.365000,
		39.529064, 32.632980, 28.315165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224026, 32.179367, 28.471172>,  <40.116539, 32.915104, 28.570665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224026, 32.179367, 28.471172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901333, 32.259609, 28.248842>,  <39.707718, 32.307755, 28.115444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901333, 32.259609, 28.248842>,  <40.224026, 32.179367, 28.471172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901333, 32.259609, 28.248842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368975, -0.563704, -0.738982,
		-0.461565, -0.801246, 0.380739,
		-0.806731, 0.200605, -0.555826,
		39.659313, 32.319790, 28.082094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994946, 31.516296, 28.161844>,  <40.224026, 32.179367, 28.471172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994946, 31.516296, 28.161844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830814, 31.804258, 27.937929>,  <39.732334, 31.977036, 27.803579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830814, 31.804258, 27.937929>,  <39.994946, 31.516296, 28.161844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830814, 31.804258, 27.937929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320313, -0.460955, -0.827599,
		-0.853831, -0.518897, -0.041451,
		-0.410331, 0.719907, -0.559787,
		39.707714, 32.020229, 27.769993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617214, 31.182497, 27.636316>,  <39.994946, 31.516296, 28.161844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617214, 31.182497, 27.636316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691444, 31.542980, 27.479658>,  <39.735985, 31.759270, 27.385664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691444, 31.542980, 27.479658>,  <39.617214, 31.182497, 27.636316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691444, 31.542980, 27.479658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452684, -0.432164, -0.779943,
		-0.872146, -0.032551, -0.488162,
		0.185578, 0.901208, -0.391645,
		39.747116, 31.813343, 27.362165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408485, 31.171934, 26.887320>,  <39.617214, 31.182497, 27.636316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408485, 31.171934, 26.887320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673336, 31.468386, 26.931698>,  <39.832249, 31.646257, 26.958324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673336, 31.468386, 26.931698>,  <39.408485, 31.171934, 26.887320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673336, 31.468386, 26.931698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426622, -0.251075, -0.868881,
		-0.616099, 0.622645, -0.482427,
		0.662130, 0.741131, 0.110947,
		39.871975, 31.690725, 26.964981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410816, 31.560099, 26.273540>,  <39.408485, 31.171934, 26.887320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410816, 31.560099, 26.273540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755524, 31.693466, 26.426479>,  <39.962349, 31.773487, 26.518242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755524, 31.693466, 26.426479>,  <39.410816, 31.560099, 26.273540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755524, 31.693466, 26.426479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414589, -0.028530, -0.909561,
		-0.292357, 0.942347, -0.162818,
		0.861768, 0.333419, 0.382346,
		40.014053, 31.793491, 26.541183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624763, 32.060192, 25.868830>,  <39.410816, 31.560099, 26.273540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624763, 32.060192, 25.868830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955013, 31.972973, 26.076984>,  <40.153164, 31.920641, 26.201878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955013, 31.972973, 26.076984>,  <39.624763, 32.060192, 25.868830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955013, 31.972973, 26.076984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506852, -0.118592, -0.853836,
		0.247890, 0.968706, 0.012606,
		0.825622, -0.218047, 0.520389,
		40.202702, 31.907558, 26.233101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142120, 32.284260, 25.406012>,  <39.624763, 32.060192, 25.868830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142120, 32.284260, 25.406012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346592, 32.073109, 25.677315>,  <40.469276, 31.946417, 25.840097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346592, 32.073109, 25.677315>,  <40.142120, 32.284260, 25.406012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346592, 32.073109, 25.677315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685436, -0.225715, -0.692264,
		0.518526, 0.818776, 0.246447,
		0.511183, -0.527881, 0.678258,
		40.499947, 31.914743, 25.880793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906036, 32.551022, 25.483551>,  <40.142120, 32.284260, 25.406012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906036, 32.551022, 25.483551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898754, 32.165752, 25.590855>,  <40.894386, 31.934589, 25.655237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898754, 32.165752, 25.590855>,  <40.906036, 32.551022, 25.483551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898754, 32.165752, 25.590855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609398, -0.223394, -0.760743,
		0.792655, 0.149627, 0.591024,
		-0.018204, -0.963175, 0.268257,
		40.893291, 31.876801, 25.671331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581310, 32.315891, 25.322218>,  <40.906036, 32.551022, 25.483551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581310, 32.315891, 25.322218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370419, 31.976017, 25.318922>,  <41.243885, 31.772093, 25.316944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370419, 31.976017, 25.318922>,  <41.581310, 32.315891, 25.322218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370419, 31.976017, 25.318922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532992, -0.323137, -0.781987,
		0.661780, -0.416675, 0.623241,
		-0.527227, -0.849685, -0.008239,
		41.212250, 31.721111, 25.316450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055916, 31.775311, 25.137018>,  <41.581310, 32.315891, 25.322218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055916, 31.775311, 25.137018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692360, 31.621265, 25.073011>,  <41.474228, 31.528837, 25.034607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692360, 31.621265, 25.073011>,  <42.055916, 31.775311, 25.137018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692360, 31.621265, 25.073011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324008, -0.410519, -0.852346,
		0.262561, -0.826535, 0.497897,
		-0.908890, -0.385115, -0.160017,
		41.419693, 31.505732, 25.025005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275547, 31.094585, 25.017855>,  <42.055916, 31.775311, 25.137018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275547, 31.094585, 25.017855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907017, 31.138554, 24.868685>,  <41.685898, 31.164934, 24.779182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907017, 31.138554, 24.868685>,  <42.275547, 31.094585, 25.017855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907017, 31.138554, 24.868685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269863, -0.509688, -0.816941,
		-0.279874, -0.853309, 0.439926,
		-0.921328, 0.109921, -0.372925,
		41.630619, 31.171530, 24.756807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.798412, 29.389854, 23.488499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931099, 29.760553, 23.559044>,  <37.010712, 29.982973, 23.601372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931099, 29.760553, 23.559044>,  <36.798412, 29.389854, 23.488499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931099, 29.760553, 23.559044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521922, 0.024552, 0.852640,
		0.785852, -0.374880, 0.491835,
		0.331713, 0.926748, 0.176365,
		37.030613, 30.038578, 23.611954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752625, 29.363052, 24.225374>,  <36.798412, 29.389854, 23.488499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752625, 29.363052, 24.225374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777065, 29.745523, 24.110840>,  <36.791729, 29.975006, 24.042120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777065, 29.745523, 24.110840>,  <36.752625, 29.363052, 24.225374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777065, 29.745523, 24.110840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407236, 0.285788, 0.867459,
		0.911277, 0.063605, 0.406852,
		0.061099, 0.956180, -0.286335,
		36.795395, 30.032377, 24.024940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222984, 29.712126, 24.598454>,  <36.752625, 29.363052, 24.225374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222984, 29.712126, 24.598454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991463, 30.013502, 24.473673>,  <36.852551, 30.194328, 24.398804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991463, 30.013502, 24.473673>,  <37.222984, 29.712126, 24.598454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991463, 30.013502, 24.473673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147665, 0.279384, 0.948757,
		0.801988, 0.595206, -0.050451,
		-0.578801, 0.753442, -0.311954,
		36.817822, 30.239534, 24.380087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171185, 30.121502, 25.225246>,  <37.222984, 29.712126, 24.598454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171185, 30.121502, 25.225246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883659, 30.277248, 24.994873>,  <36.711143, 30.370697, 24.856649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.883659, 30.277248, 24.994873>,  <37.171185, 30.121502, 25.225246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883659, 30.277248, 24.994873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482803, 0.316482, 0.816542,
		0.500207, 0.865004, -0.039503,
		-0.718814, 0.389368, -0.575933,
		36.668015, 30.394058, 24.822094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231220, 30.910521, 25.229033>,  <37.171185, 30.121502, 25.225246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231220, 30.910521, 25.229033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863335, 30.792656, 25.125269>,  <36.642601, 30.721937, 25.063011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863335, 30.792656, 25.125269>,  <37.231220, 30.910521, 25.229033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863335, 30.792656, 25.125269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371995, 0.442965, 0.815722,
		-0.125452, 0.846733, -0.517015,
		-0.919718, -0.294661, -0.259410,
		36.587418, 30.704258, 25.047445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790909, 31.479813, 25.241566>,  <37.231220, 30.910521, 25.229033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790909, 31.479813, 25.241566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531090, 31.177683, 25.276384>,  <36.375198, 30.996405, 25.297276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.531090, 31.177683, 25.276384>,  <36.790909, 31.479813, 25.241566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531090, 31.177683, 25.276384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500476, 0.510930, 0.698909,
		-0.572377, 0.410409, -0.709894,
		-0.649545, -0.755325, 0.087044,
		36.336227, 30.951086, 25.302498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098053, 31.862965, 25.432474>,  <36.790909, 31.479813, 25.241566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098053, 31.862965, 25.432474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046616, 31.471127, 25.494257>,  <36.015755, 31.236023, 25.531326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046616, 31.471127, 25.494257>,  <36.098053, 31.862965, 25.432474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046616, 31.471127, 25.494257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481220, 0.197824, 0.853987,
		-0.867117, 0.035488, -0.496840,
		-0.128593, -0.979595, 0.154459,
		36.008038, 31.177248, 25.540594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469059, 31.893917, 25.633324>,  <36.098053, 31.862965, 25.432474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469059, 31.893917, 25.633324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627098, 31.555084, 25.775507>,  <35.721920, 31.351784, 25.860817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627098, 31.555084, 25.775507>,  <35.469059, 31.893917, 25.633324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627098, 31.555084, 25.775507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436642, 0.167268, 0.883949,
		-0.808236, -0.504449, -0.303786,
		0.395093, -0.847085, 0.355456,
		35.745625, 31.300959, 25.882143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951775, 31.594597, 26.068600>,  <35.469059, 31.893917, 25.633324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951775, 31.594597, 26.068600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298710, 31.435976, 26.188910>,  <35.506870, 31.340803, 26.261095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298710, 31.435976, 26.188910>,  <34.951775, 31.594597, 26.068600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298710, 31.435976, 26.188910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284779, 0.100208, 0.953341,
		-0.408189, -0.912527, -0.026015,
		0.867342, -0.396551, 0.300773,
		35.558914, 31.317011, 26.279140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698238, 31.058105, 26.491451>,  <34.951775, 31.594597, 26.068600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698238, 31.058105, 26.491451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073906, 31.162931, 26.580254>,  <35.299305, 31.225826, 26.633535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073906, 31.162931, 26.580254>,  <34.698238, 31.058105, 26.491451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073906, 31.162931, 26.580254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202567, -0.099361, 0.974215,
		0.277367, -0.959921, -0.040230,
		0.939167, 0.262066, 0.222008,
		35.355656, 31.241550, 26.646856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780251, 30.684511, 27.025305>,  <34.698238, 31.058105, 26.491451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780251, 30.684511, 27.025305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084629, 30.941605, 27.060766>,  <35.267254, 31.095861, 27.082043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.084629, 30.941605, 27.060766>,  <34.780251, 30.684511, 27.025305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084629, 30.941605, 27.060766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049016, -0.079302, 0.995645,
		0.646966, -0.761974, -0.028840,
		0.760942, 0.642734, 0.088654,
		35.312912, 31.134424, 27.087362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299103, 30.459208, 27.577778>,  <34.780251, 30.684511, 27.025305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299103, 30.459208, 27.577778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349613, 30.853605, 27.534197>,  <35.379921, 31.090244, 27.508049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349613, 30.853605, 27.534197>,  <35.299103, 30.459208, 27.577778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349613, 30.853605, 27.534197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092913, 0.097591, 0.990880,
		0.987634, -0.135251, -0.079288,
		0.126279, 0.985994, -0.108951,
		35.387497, 31.149403, 27.501513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846241, 30.563402, 28.040802>,  <35.299103, 30.459208, 27.577778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846241, 30.563402, 28.040802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675350, 30.918140, 27.970396>,  <35.572815, 31.130983, 27.928152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.675350, 30.918140, 27.970396>,  <35.846241, 30.563402, 28.040802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675350, 30.918140, 27.970396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087850, 0.153040, 0.984307,
		0.899867, 0.435984, 0.012526,
		-0.427226, 0.886846, -0.176017,
		35.547184, 31.184195, 27.917591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183727, 30.991735, 28.480764>,  <35.846241, 30.563402, 28.040802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183727, 30.991735, 28.480764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868767, 31.223799, 28.397419>,  <35.679790, 31.363037, 28.347412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.868767, 31.223799, 28.397419>,  <36.183727, 30.991735, 28.480764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868767, 31.223799, 28.397419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013143, 0.322132, 0.946604,
		0.616301, 0.748095, -0.246022,
		-0.787401, 0.580159, -0.208362,
		35.632545, 31.397846, 28.334909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769264, 30.806019, 28.784307>,  <36.183727, 30.991735, 28.480764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769264, 30.806019, 28.784307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723820, 30.515121, 29.055073>,  <36.696552, 30.340582, 29.217531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.723820, 30.515121, 29.055073>,  <36.769264, 30.806019, 28.784307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723820, 30.515121, 29.055073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383279, -0.660663, -0.645462,
		0.916619, 0.186117, 0.353793,
		-0.113607, -0.727245, 0.676911,
		36.689739, 30.296947, 29.258146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465599, 30.520340, 28.965899>,  <36.769264, 30.806019, 28.784307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465599, 30.520340, 28.965899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159111, 30.267769, 29.013590>,  <36.975220, 30.116226, 29.042204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.159111, 30.267769, 29.013590>,  <37.465599, 30.520340, 28.965899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159111, 30.267769, 29.013590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349325, -0.565035, -0.747467,
		0.539338, -0.531071, 0.653512,
		-0.766215, -0.631426, 0.119229,
		36.929245, 30.078341, 29.049358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724125, 29.869953, 28.930473>,  <37.465599, 30.520340, 28.965899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724125, 29.869953, 28.930473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345764, 29.757933, 28.864943>,  <37.118748, 29.690722, 28.825624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.345764, 29.757933, 28.864943>,  <37.724125, 29.869953, 28.930473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345764, 29.757933, 28.864943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307738, -0.614440, -0.726471,
		0.102786, -0.737587, 0.667383,
		-0.945903, -0.280050, -0.163828,
		37.061993, 29.673918, 28.815794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723312, 29.156408, 28.988892>,  <37.724125, 29.869953, 28.930473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723312, 29.156408, 28.988892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401020, 29.252476, 28.772331>,  <37.207645, 29.310116, 28.642395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.401020, 29.252476, 28.772331>,  <37.723312, 29.156408, 28.988892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401020, 29.252476, 28.772331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245350, -0.696634, -0.674169,
		-0.539072, -0.676032, 0.502376,
		-0.805732, 0.240168, -0.541401,
		37.159302, 29.324526, 28.609911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461239, 28.572323, 28.761013>,  <37.723312, 29.156408, 28.988892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461239, 28.572323, 28.761013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280640, 28.823788, 28.507736>,  <37.172279, 28.974667, 28.355770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280640, 28.823788, 28.507736>,  <37.461239, 28.572323, 28.761013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280640, 28.823788, 28.507736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241338, -0.597149, -0.764963,
		-0.859014, -0.498192, 0.117892,
		-0.451498, 0.628663, -0.633193,
		37.145191, 29.012386, 28.317778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133816, 28.098568, 28.318808>,  <37.461239, 28.572323, 28.761013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133816, 28.098568, 28.318808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146877, 28.447666, 28.123976>,  <37.154713, 28.657125, 28.007076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146877, 28.447666, 28.123976>,  <37.133816, 28.098568, 28.318808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146877, 28.447666, 28.123976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400041, -0.458011, -0.793848,
		-0.915916, -0.168932, -0.364089,
		0.032650, 0.872748, -0.487079,
		37.156673, 28.709490, 27.977852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890980, 27.990072, 27.705519>,  <37.133816, 28.098568, 28.318808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890980, 27.990072, 27.705519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115379, 28.318228, 27.661251>,  <37.250019, 28.515121, 27.634691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.115379, 28.318228, 27.661251>,  <36.890980, 27.990072, 27.705519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115379, 28.318228, 27.661251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289165, -0.319467, -0.902399,
		-0.775673, 0.474240, -0.416447,
		0.560995, 0.820388, -0.110669,
		37.283676, 28.564344, 27.628050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809155, 28.168026, 26.947218>,  <36.890980, 27.990072, 27.705519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809155, 28.168026, 26.947218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149879, 28.347158, 27.055931>,  <37.354313, 28.454638, 27.121159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.149879, 28.347158, 27.055931>,  <36.809155, 28.168026, 26.947218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149879, 28.347158, 27.055931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389990, -0.195733, -0.899776,
		-0.349752, 0.872430, -0.341378,
		0.851811, 0.447832, 0.271781,
		37.405422, 28.481508, 27.137465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979603, 28.605532, 26.394482>,  <36.809155, 28.168026, 26.947218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979603, 28.605532, 26.394482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323662, 28.599432, 26.598412>,  <37.530098, 28.595772, 26.720770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.323662, 28.599432, 26.598412>,  <36.979603, 28.605532, 26.394482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323662, 28.599432, 26.598412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508264, -0.057997, -0.859246,
		0.042673, 0.998200, -0.042134,
		0.860143, -0.015251, 0.509824,
		37.581703, 28.594856, 26.751358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398746, 29.189236, 26.133602>,  <36.979603, 28.605532, 26.394482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398746, 29.189236, 26.133602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654366, 28.927095, 26.294670>,  <37.807735, 28.769812, 26.391310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654366, 28.927095, 26.294670>,  <37.398746, 29.189236, 26.133602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654366, 28.927095, 26.294670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532341, -0.001039, -0.846529,
		0.555190, 0.755326, 0.348205,
		0.639044, -0.655348, 0.402668,
		37.846077, 28.730492, 26.415470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081612, 29.289085, 25.755362>,  <37.398746, 29.189236, 26.133602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081612, 29.289085, 25.755362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069126, 28.934422, 25.939911>,  <38.061634, 28.721624, 26.050640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069126, 28.934422, 25.939911>,  <38.081612, 29.289085, 25.755362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069126, 28.934422, 25.939911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588084, -0.389535, -0.708816,
		0.808197, 0.249200, 0.533588,
		-0.031214, -0.886658, 0.461371,
		38.059761, 28.668425, 26.078321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802326, 29.091192, 25.854742>,  <38.081612, 29.289085, 25.755362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802326, 29.091192, 25.854742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544407, 28.786142, 25.834183>,  <38.389656, 28.603113, 25.821848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544407, 28.786142, 25.834183>,  <38.802326, 29.091192, 25.854742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544407, 28.786142, 25.834183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467929, -0.340674, -0.815465,
		0.604382, -0.549861, 0.576520,
		-0.644798, -0.762623, -0.051399,
		38.350967, 28.557356, 25.818764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249928, 28.571472, 25.494221>,  <38.802326, 29.091192, 25.854742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249928, 28.571472, 25.494221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896091, 28.386673, 25.468746>,  <38.683788, 28.275793, 25.453463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.896091, 28.386673, 25.468746>,  <39.249928, 28.571472, 25.494221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896091, 28.386673, 25.468746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334370, -0.533091, -0.777181,
		0.325106, -0.708783, 0.626046,
		-0.884592, -0.461997, -0.063685,
		38.630714, 28.248074, 25.449640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284489, 27.865847, 25.343670>,  <39.249928, 28.571472, 25.494221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284489, 27.865847, 25.343670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905941, 27.909327, 25.221970>,  <38.678814, 27.935413, 25.148951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905941, 27.909327, 25.221970>,  <39.284489, 27.865847, 25.343670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905941, 27.909327, 25.221970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238611, -0.399753, -0.885021,
		-0.217823, -0.910155, 0.352379,
		-0.946371, 0.108696, -0.304249,
		38.622028, 27.941936, 25.130695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680599, 27.408779, 25.718388>,  <39.284489, 27.865847, 25.343670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680599, 27.408779, 25.718388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071960, 27.452358, 25.788654>,  <40.306778, 27.478506, 25.830814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071960, 27.452358, 25.788654>,  <39.680599, 27.408779, 25.718388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071960, 27.452358, 25.788654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160384, -0.136016, 0.977638,
		0.130407, -0.984698, -0.115605,
		0.978402, 0.108950, 0.175668,
		40.365482, 27.485043, 25.841354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862404, 26.925117, 26.207947>,  <39.680599, 27.408779, 25.718388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862404, 26.925117, 26.207947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145729, 27.205139, 26.244192>,  <40.315723, 27.373152, 26.265940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.145729, 27.205139, 26.244192>,  <39.862404, 26.925117, 26.207947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145729, 27.205139, 26.244192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094090, -0.033592, 0.994997,
		0.699598, -0.713297, 0.042075,
		0.708315, 0.700056, 0.090615,
		40.358223, 27.415155, 26.271378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409237, 26.659153, 26.648333>,  <39.862404, 26.925117, 26.207947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409237, 26.659153, 26.648333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.457722, 27.055115, 26.677710>,  <40.486813, 27.292692, 26.695335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.457722, 27.055115, 26.677710>,  <40.409237, 26.659153, 26.648333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457722, 27.055115, 26.677710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003662, -0.073544, 0.997285,
		0.992620, -0.121149, -0.005289,
		0.121209, 0.989906, 0.073445,
		40.494083, 27.352087, 26.699743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027431, 26.805271, 27.169983>,  <40.409237, 26.659153, 26.648333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027431, 26.805271, 27.169983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799889, 27.132561, 27.136717>,  <40.663364, 27.328934, 27.116756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.799889, 27.132561, 27.136717>,  <41.027431, 26.805271, 27.169983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799889, 27.132561, 27.136717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102405, 0.029866, 0.994294,
		0.816037, 0.574126, 0.066801,
		-0.568855, 0.818222, -0.083165,
		40.629230, 27.378027, 27.111767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315060, 27.203913, 27.675436>,  <41.027431, 26.805271, 27.169983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315060, 27.203913, 27.675436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967285, 27.387360, 27.601959>,  <40.758621, 27.497427, 27.557873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.967285, 27.387360, 27.601959>,  <41.315060, 27.203913, 27.675436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967285, 27.387360, 27.601959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115442, 0.172929, 0.978146,
		0.480360, 0.871646, -0.097408,
		-0.869441, 0.458617, -0.183692,
		40.706451, 27.524944, 27.546852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318413, 27.801544, 28.071369>,  <41.315060, 27.203913, 27.675436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318413, 27.801544, 28.071369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932121, 27.785875, 27.968733>,  <40.700348, 27.776474, 27.907150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932121, 27.785875, 27.968733>,  <41.318413, 27.801544, 28.071369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932121, 27.785875, 27.968733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246375, 0.449450, 0.858658,
		0.081690, 0.892446, -0.443697,
		-0.965726, -0.039172, -0.256592,
		40.642403, 27.774124, 27.891756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001141, 28.442087, 28.185188>,  <41.318413, 27.801544, 28.071369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001141, 28.442087, 28.185188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716522, 28.163445, 28.221924>,  <40.545750, 27.996258, 28.243965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716522, 28.163445, 28.221924>,  <41.001141, 28.442087, 28.185188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716522, 28.163445, 28.221924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206220, 0.331991, 0.920465,
		-0.671693, 0.636017, -0.379883,
		-0.711549, -0.696609, 0.091837,
		40.503056, 27.954462, 28.249475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361309, 28.764425, 28.401361>,  <41.001141, 28.442087, 28.185188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361309, 28.764425, 28.401361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320171, 28.379576, 28.502350>,  <40.295486, 28.148666, 28.562943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320171, 28.379576, 28.502350>,  <40.361309, 28.764425, 28.401361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320171, 28.379576, 28.502350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197685, 0.268523, 0.942771,
		-0.974856, 0.047052, -0.217814,
		-0.102847, -0.962124, 0.252470,
		40.289318, 28.090939, 28.578091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815983, 28.729288, 28.918219>,  <40.361309, 28.764425, 28.401361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815983, 28.729288, 28.918219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030239, 28.393007, 28.949987>,  <40.158794, 28.191238, 28.969048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030239, 28.393007, 28.949987>,  <39.815983, 28.729288, 28.918219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030239, 28.393007, 28.949987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051249, 0.061514, 0.996790,
		-0.842890, -0.537990, -0.010136,
		0.535639, -0.840704, 0.079421,
		40.190929, 28.140797, 28.973814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349625, 28.236204, 29.318438>,  <39.815983, 28.729288, 28.918219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349625, 28.236204, 29.318438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721626, 28.099518, 29.372574>,  <39.944828, 28.017506, 29.405056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721626, 28.099518, 29.372574>,  <39.349625, 28.236204, 29.318438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721626, 28.099518, 29.372574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173401, -0.083254, 0.981326,
		-0.324069, -0.936107, -0.136681,
		0.930006, -0.341718, 0.135341,
		40.000629, 27.997004, 29.413176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296062, 27.804607, 29.868753>,  <39.349625, 28.236204, 29.318438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296062, 27.804607, 29.868753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685524, 27.894285, 29.852072>,  <39.919201, 27.948092, 29.842062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685524, 27.894285, 29.852072>,  <39.296062, 27.804607, 29.868753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685524, 27.894285, 29.852072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037204, 0.024265, 0.999013,
		0.224988, -0.974241, 0.015285,
		0.973651, 0.224198, -0.041705,
		39.977619, 27.961544, 29.839560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485767, 27.342419, 30.309698>,  <39.296062, 27.804607, 29.868753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485767, 27.342419, 30.309698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785030, 27.607790, 30.305262>,  <39.964588, 27.767014, 30.302601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.785030, 27.607790, 30.305262>,  <39.485767, 27.342419, 30.309698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785030, 27.607790, 30.305262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099669, 0.128891, 0.986637,
		0.655994, -0.737054, 0.162554,
		0.748157, 0.663429, -0.011090,
		40.009476, 27.806818, 30.301935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971165, 27.189651, 30.902304>,  <39.485767, 27.342419, 30.309698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971165, 27.189651, 30.902304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039410, 27.574587, 30.817642>,  <40.080357, 27.805548, 30.766846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039410, 27.574587, 30.817642>,  <39.971165, 27.189651, 30.902304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039410, 27.574587, 30.817642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083179, 0.228105, 0.970077,
		0.981821, -0.147904, 0.118964,
		0.170615, 0.962337, -0.211656,
		40.090595, 27.863289, 30.754145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264854, 27.330265, 31.522722>,  <39.971165, 27.189651, 30.902304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264854, 27.330265, 31.522722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187336, 27.675430, 31.336035>,  <40.140823, 27.882528, 31.224022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.187336, 27.675430, 31.336035>,  <40.264854, 27.330265, 31.522722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187336, 27.675430, 31.336035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079446, 0.460372, 0.884164,
		0.977820, 0.208426, -0.020663,
		-0.193795, 0.862911, -0.466720,
		40.129196, 27.934303, 31.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.965137, 30.443043, 24.919306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.775772, 30.667643, 24.647837>,  <41.662155, 30.802402, 24.484955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.775772, 30.667643, 24.647837>,  <41.965137, 30.443043, 24.919306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775772, 30.667643, 24.647837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154897, -0.705409, -0.691668,
		-0.867116, -0.432567, 0.246973,
		-0.473410, 0.561501, -0.678675,
		41.633751, 30.836094, 24.444235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625179, 29.966274, 24.544022>,  <41.965137, 30.443043, 24.919306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625179, 29.966274, 24.544022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.600773, 30.292448, 24.313772>,  <41.586128, 30.488153, 24.175623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.600773, 30.292448, 24.313772>,  <41.625179, 29.966274, 24.544022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600773, 30.292448, 24.313772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184303, -0.557578, -0.809407,
		-0.980974, -0.155474, -0.116267,
		-0.061014, 0.815436, -0.575623,
		41.582470, 30.537079, 24.141085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225552, 29.707947, 23.926897>,  <41.625179, 29.966274, 24.544022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225552, 29.707947, 23.926897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441124, 30.038065, 23.859440>,  <41.570469, 30.236135, 23.818966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.441124, 30.038065, 23.859440>,  <41.225552, 29.707947, 23.926897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441124, 30.038065, 23.859440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412222, -0.432995, -0.801616,
		-0.734592, 0.362497, -0.573559,
		0.538932, 0.825295, -0.168645,
		41.602802, 30.285654, 23.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334484, 29.674152, 23.330343>,  <41.225552, 29.707947, 23.926897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334484, 29.674152, 23.330343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.610390, 29.951836, 23.412613>,  <41.775932, 30.118446, 23.461975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.610390, 29.951836, 23.412613>,  <41.334484, 29.674152, 23.330343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610390, 29.951836, 23.412613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554271, -0.323514, -0.766891,
		-0.465842, 0.642973, -0.607928,
		0.689764, 0.694207, 0.205675,
		41.817318, 30.160097, 23.474316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493122, 29.950226, 22.659622>,  <41.334484, 29.674152, 23.330343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493122, 29.950226, 22.659622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798214, 30.044270, 22.900608>,  <41.981270, 30.100695, 23.045198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798214, 30.044270, 22.900608>,  <41.493122, 29.950226, 22.659622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798214, 30.044270, 22.900608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646704, -0.272532, -0.712391,
		-0.003298, 0.932980, -0.359914,
		0.762734, 0.235107, 0.602462,
		42.027035, 30.114801, 23.081347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970924, 30.282982, 22.158480>,  <41.493122, 29.950226, 22.659622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970924, 30.282982, 22.158480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.202030, 30.211843, 22.477118>,  <42.340694, 30.169161, 22.668301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.202030, 30.211843, 22.477118>,  <41.970924, 30.282982, 22.158480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202030, 30.211843, 22.477118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790143, -0.122781, -0.600499,
		0.204602, 0.976369, 0.069584,
		0.577765, -0.177844, 0.796592,
		42.375359, 30.158491, 22.716095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614441, 30.726770, 22.193562>,  <41.970924, 30.282982, 22.158480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614441, 30.726770, 22.193562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715858, 30.394899, 22.392498>,  <42.776711, 30.195776, 22.511860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.715858, 30.394899, 22.392498>,  <42.614441, 30.726770, 22.193562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715858, 30.394899, 22.392498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847674, -0.057123, -0.527433,
		0.466009, 0.555312, 0.688814,
		0.253543, -0.829678, 0.497343,
		42.791920, 30.145996, 22.541700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354237, 30.744957, 22.235531>,  <42.614441, 30.726770, 22.193562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354237, 30.744957, 22.235531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.285404, 30.363171, 22.333006>,  <43.244106, 30.134098, 22.391491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.285404, 30.363171, 22.333006>,  <43.354237, 30.744957, 22.235531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285404, 30.363171, 22.333006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760337, -0.285977, -0.583185,
		0.626319, 0.084932, 0.774927,
		-0.172080, -0.954465, 0.243689,
		43.233780, 30.076832, 22.406113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020672, 30.382065, 22.379946>,  <43.354237, 30.744957, 22.235531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020672, 30.382065, 22.379946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.742210, 30.107555, 22.295670>,  <43.575134, 29.942850, 22.245104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.742210, 30.107555, 22.295670>,  <44.020672, 30.382065, 22.379946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742210, 30.107555, 22.295670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604508, -0.402094, -0.687671,
		0.387213, -0.606093, 0.694779,
		-0.696158, -0.686274, -0.210692,
		43.533363, 29.901672, 22.232462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433945, 29.843145, 22.284790>,  <44.020672, 30.382065, 22.379946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433945, 29.843145, 22.284790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.073933, 29.756321, 22.133615>,  <43.857925, 29.704226, 22.042912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.073933, 29.756321, 22.133615>,  <44.433945, 29.843145, 22.284790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073933, 29.756321, 22.133615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435213, -0.493859, -0.752790,
		-0.023244, -0.842014, 0.538955,
		-0.900028, -0.217062, -0.377935,
		43.803925, 29.691202, 22.020235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304466, 29.065611, 22.314638>,  <44.433945, 29.843145, 22.284790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304466, 29.065611, 22.314638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066044, 29.216625, 22.031178>,  <43.922993, 29.307234, 21.861101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.066044, 29.216625, 22.031178>,  <44.304466, 29.065611, 22.314638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066044, 29.216625, 22.031178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331338, -0.688270, -0.645368,
		-0.731394, -0.619476, 0.285152,
		-0.596052, 0.377537, -0.708653,
		43.887226, 29.329885, 21.818583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282768, 28.542763, 21.893900>,  <44.304466, 29.065611, 22.314638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282768, 28.542763, 21.893900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.104321, 28.808289, 21.653790>,  <43.997253, 28.967604, 21.509724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.104321, 28.808289, 21.653790>,  <44.282768, 28.542763, 21.893900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104321, 28.808289, 21.653790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179589, -0.590680, -0.786667,
		-0.876772, -0.458748, 0.144298,
		-0.446116, 0.663813, -0.600278,
		43.970486, 29.007433, 21.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601063, 28.267584, 21.697403>,  <44.282768, 28.542763, 21.893900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601063, 28.267584, 21.697403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.808903, 28.512316, 21.458845>,  <43.933605, 28.659155, 21.315710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.808903, 28.512316, 21.458845>,  <43.601063, 28.267584, 21.697403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808903, 28.512316, 21.458845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137030, -0.748653, -0.648646,
		-0.843351, 0.255311, -0.472837,
		0.519597, 0.611830, -0.596392,
		43.964783, 28.695864, 21.279928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897251, 27.859818, 21.219473>,  <43.601063, 28.267584, 21.697403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897251, 27.859818, 21.219473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.051613, 28.174387, 21.026554>,  <44.144230, 28.363129, 20.910803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.051613, 28.174387, 21.026554>,  <43.897251, 27.859818, 21.219473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051613, 28.174387, 21.026554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703992, -0.588907, -0.396968,
		-0.596214, -0.186340, -0.780901,
		0.385907, 0.786426, -0.482297,
		44.167385, 28.410315, 20.881865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498466, 27.531229, 20.670822>,  <43.897251, 27.859818, 21.219473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498466, 27.531229, 20.670822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229889, 27.234837, 20.675005>,  <43.068741, 27.057001, 20.677515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229889, 27.234837, 20.675005>,  <43.498466, 27.531229, 20.670822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229889, 27.234837, 20.675005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378031, 0.354623, 0.855181,
		-0.637380, 0.570255, -0.518224,
		-0.671446, -0.740980, 0.010456,
		43.028454, 27.012543, 20.678143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852451, 27.918016, 20.835773>,  <43.498466, 27.531229, 20.670822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852451, 27.918016, 20.835773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833473, 27.537220, 20.956745>,  <42.822086, 27.308743, 21.029327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833473, 27.537220, 20.956745>,  <42.852451, 27.918016, 20.835773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833473, 27.537220, 20.956745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405274, 0.295075, 0.865265,
		-0.912963, -0.081517, -0.399816,
		-0.047442, -0.951991, 0.302429,
		42.819241, 27.251623, 21.047474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161716, 27.820839, 21.086233>,  <42.852451, 27.918016, 20.835773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161716, 27.820839, 21.086233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.349331, 27.522821, 21.275932>,  <42.461899, 27.344011, 21.389751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.349331, 27.522821, 21.275932>,  <42.161716, 27.820839, 21.086233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349331, 27.522821, 21.275932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483982, 0.232340, 0.843670,
		-0.738759, -0.625242, -0.251611,
		0.469039, -0.745044, 0.474249,
		42.490044, 27.299309, 21.418207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659557, 27.356384, 21.385830>,  <42.161716, 27.820839, 21.086233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659557, 27.356384, 21.385830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.001163, 27.307858, 21.588196>,  <42.206127, 27.278742, 21.709616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.001163, 27.307858, 21.588196>,  <41.659557, 27.356384, 21.385830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001163, 27.307858, 21.588196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499735, 0.079131, 0.862556,
		-0.144677, -0.989455, 0.006952,
		0.854010, -0.121318, 0.505913,
		42.257366, 27.271463, 21.739969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553608, 26.805084, 21.843496>,  <41.659557, 27.356384, 21.385830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553608, 26.805084, 21.843496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870403, 26.999325, 21.991522>,  <42.060482, 27.115870, 22.080338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.870403, 26.999325, 21.991522>,  <41.553608, 26.805084, 21.843496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870403, 26.999325, 21.991522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384294, -0.074496, 0.920200,
		0.474419, -0.871000, 0.127614,
		0.791988, 0.485601, 0.370062,
		42.107998, 27.145006, 22.102541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649517, 26.454586, 22.445839>,  <41.553608, 26.805084, 21.843496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649517, 26.454586, 22.445839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860596, 26.788307, 22.509686>,  <41.987244, 26.988539, 22.547995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.860596, 26.788307, 22.509686>,  <41.649517, 26.454586, 22.445839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860596, 26.788307, 22.509686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285510, -0.002771, 0.958372,
		0.800013, -0.551301, 0.236739,
		0.527695, 0.834302, 0.159618,
		42.018906, 27.038597, 22.557571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047127, 26.310667, 23.144047>,  <41.649517, 26.454586, 22.445839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047127, 26.310667, 23.144047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.019848, 26.706898, 23.096533>,  <42.003479, 26.944635, 23.068026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.019848, 26.706898, 23.096533>,  <42.047127, 26.310667, 23.144047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019848, 26.706898, 23.096533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245558, 0.098732, 0.964341,
		0.966980, 0.094933, 0.236510,
		-0.068197, 0.990575, -0.118783,
		41.999390, 27.004070, 23.060898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340126, 26.550182, 23.643204>,  <42.047127, 26.310667, 23.144047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340126, 26.550182, 23.643204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132496, 26.872633, 23.529560>,  <42.007919, 27.066103, 23.461374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132496, 26.872633, 23.529560>,  <42.340126, 26.550182, 23.643204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132496, 26.872633, 23.529560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128336, 0.255121, 0.958354,
		0.845039, 0.533920, -0.028972,
		-0.519076, 0.806128, -0.284108,
		41.976772, 27.114471, 23.444328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525333, 26.966827, 24.163242>,  <42.340126, 26.550182, 23.643204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525333, 26.966827, 24.163242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208172, 27.143635, 23.995468>,  <42.017876, 27.249720, 23.894804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208172, 27.143635, 23.995468>,  <42.525333, 26.966827, 24.163242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208172, 27.143635, 23.995468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305296, 0.307539, 0.901229,
		0.527354, 0.842638, -0.108901,
		-0.792901, 0.442020, -0.419436,
		41.970303, 27.276241, 23.869637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450367, 27.609495, 24.532885>,  <42.525333, 26.966827, 24.163242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450367, 27.609495, 24.532885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098305, 27.516827, 24.367161>,  <41.887066, 27.461226, 24.267727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.098305, 27.516827, 24.367161>,  <42.450367, 27.609495, 24.532885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098305, 27.516827, 24.367161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473229, 0.359993, 0.804027,
		-0.037122, 0.903733, -0.426484,
		-0.880157, -0.231672, -0.414309,
		41.834259, 27.447325, 24.242868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984482, 28.056580, 24.751347>,  <42.450367, 27.609495, 24.532885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984482, 28.056580, 24.751347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.721756, 27.783609, 24.623037>,  <41.564121, 27.619827, 24.546051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.721756, 27.783609, 24.623037>,  <41.984482, 28.056580, 24.751347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721756, 27.783609, 24.623037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610711, 0.231894, 0.757138,
		-0.442304, 0.693197, -0.569074,
		-0.656810, -0.682425, -0.320775,
		41.524712, 27.578882, 24.526804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305351, 28.321260, 24.828180>,  <41.984482, 28.056580, 24.751347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305351, 28.321260, 24.828180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220512, 27.931221, 24.802259>,  <41.169609, 27.697197, 24.786707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220512, 27.931221, 24.802259>,  <41.305351, 28.321260, 24.828180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220512, 27.931221, 24.802259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680963, 0.099904, 0.725471,
		-0.700932, 0.197997, -0.685195,
		-0.212095, -0.975098, -0.064803,
		41.156883, 27.638691, 24.782818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505829, 28.174725, 24.773949>,  <41.305351, 28.321260, 24.828180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505829, 28.174725, 24.773949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701687, 27.870008, 24.943619>,  <40.819202, 27.687178, 25.045422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701687, 27.870008, 24.943619>,  <40.505829, 28.174725, 24.773949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701687, 27.870008, 24.943619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635303, 0.021500, 0.771963,
		-0.597195, -0.647465, -0.473441,
		0.489640, -0.761792, 0.424177,
		40.848579, 27.641472, 25.070871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959953, 27.796883, 25.042391>,  <40.505829, 28.174725, 24.773949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959953, 27.796883, 25.042391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273449, 27.636383, 25.232023>,  <40.461548, 27.540083, 25.345802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273449, 27.636383, 25.232023>,  <39.959953, 27.796883, 25.042391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273449, 27.636383, 25.232023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521786, -0.011341, 0.853001,
		-0.336889, -0.915899, -0.218255,
		0.783738, -0.401249, 0.474083,
		40.508572, 27.516008, 25.374249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260956, 27.316629, 24.904316>,  <39.959953, 27.796883, 25.042391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260956, 27.316629, 24.904316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958530, 27.559536, 24.806664>,  <38.777077, 27.705280, 24.748072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958530, 27.559536, 24.806664>,  <39.260956, 27.316629, 24.904316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958530, 27.559536, 24.806664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201390, -0.139054, -0.969591,
		-0.622747, -0.782235, -0.017164,
		-0.756061, 0.607266, -0.244130,
		38.731712, 27.741716, 24.733425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841755, 26.954393, 24.325428>,  <39.260956, 27.316629, 24.904316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841755, 26.954393, 24.325428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819817, 27.353415, 24.308084>,  <38.806652, 27.592827, 24.297678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819817, 27.353415, 24.308084>,  <38.841755, 26.954393, 24.325428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819817, 27.353415, 24.308084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008774, -0.042942, -0.999039,
		-0.998456, -0.055173, -0.006397,
		-0.054845, 0.997553, -0.043360,
		38.803364, 27.652681, 24.295076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440022, 27.025002, 23.810112>,  <38.841755, 26.954393, 24.325428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440022, 27.025002, 23.810112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603107, 27.388365, 23.847122>,  <38.700958, 27.606382, 23.869329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.603107, 27.388365, 23.847122>,  <38.440022, 27.025002, 23.810112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603107, 27.388365, 23.847122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000780, 0.100986, -0.994888,
		-0.913109, 0.405703, 0.040465,
		0.407715, 0.908409, 0.092527,
		38.725422, 27.660887, 23.874880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120632, 27.372549, 23.320683>,  <38.440022, 27.025002, 23.810112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120632, 27.372549, 23.320683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452648, 27.585400, 23.387457>,  <38.651859, 27.713110, 23.427521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.452648, 27.585400, 23.387457>,  <38.120632, 27.372549, 23.320683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452648, 27.585400, 23.387457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077050, 0.187039, -0.979326,
		-0.552349, 0.825746, 0.114250,
		0.830044, 0.532127, 0.166935,
		38.701660, 27.745037, 23.437538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100273, 27.823933, 22.778072>,  <38.120632, 27.372549, 23.320683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100273, 27.823933, 22.778072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.474651, 27.872787, 22.910183>,  <38.699280, 27.902100, 22.989450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.474651, 27.872787, 22.910183>,  <38.100273, 27.823933, 22.778072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474651, 27.872787, 22.910183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318495, 0.106468, -0.941927,
		-0.150206, 0.986786, 0.060749,
		0.935948, 0.122135, 0.330278,
		38.755436, 27.909428, 23.009266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435272, 28.492500, 22.453396>,  <38.100273, 27.823933, 22.778072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435272, 28.492500, 22.453396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729546, 28.243406, 22.559965>,  <38.906109, 28.093950, 22.623907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729546, 28.243406, 22.559965>,  <38.435272, 28.492500, 22.453396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729546, 28.243406, 22.559965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296560, -0.057491, -0.953282,
		0.608957, 0.780320, 0.142383,
		0.735679, -0.622733, 0.266421,
		38.950249, 28.056587, 22.639891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142170, 28.764410, 22.271877>,  <38.435272, 28.492500, 22.453396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142170, 28.764410, 22.271877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198906, 28.368612, 22.283089>,  <39.232948, 28.131134, 22.289816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198906, 28.368612, 22.283089>,  <39.142170, 28.764410, 22.271877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198906, 28.368612, 22.283089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457787, 0.040467, -0.888140,
		0.877674, 0.138807, 0.458717,
		0.141843, -0.989492, 0.028027,
		39.241459, 28.071764, 22.291496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576408, 29.379784, 21.944269>,  <39.142170, 28.764410, 22.271877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576408, 29.379784, 21.944269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281311, 29.581720, 21.764997>,  <39.104252, 29.702883, 21.657434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.281311, 29.581720, 21.764997>,  <39.576408, 29.379784, 21.944269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281311, 29.581720, 21.764997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300342, 0.349117, 0.887644,
		0.604588, 0.789463, -0.105934,
		-0.737745, 0.504843, -0.448181,
		39.059986, 29.733173, 21.630543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425198, 30.020386, 22.315641>,  <39.576408, 29.379784, 21.944269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425198, 30.020386, 22.315641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 30.010321, 22.099709>,  <38.886703, 30.004282, 21.970150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 30.010321, 22.099709>,  <39.425198, 30.020386, 22.315641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088638, 30.010321, 22.099709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489298, 0.459547, 0.741218,
		0.229427, 0.887797, -0.398973,
		-0.841398, -0.025161, -0.539830,
		38.836220, 30.002773, 21.937759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055908, 30.687479, 22.370340>,  <39.425198, 30.020386, 22.315641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055908, 30.687479, 22.370340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786438, 30.421547, 22.241241>,  <38.624756, 30.261988, 22.163782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786438, 30.421547, 22.241241>,  <39.055908, 30.687479, 22.370340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786438, 30.421547, 22.241241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681947, 0.390925, 0.618164,
		-0.284806, 0.636535, -0.716735,
		-0.673672, -0.664832, -0.322745,
		38.584335, 30.222097, 22.144419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354881, 31.103420, 22.307327>,  <39.055908, 30.687479, 22.370340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354881, 31.103420, 22.307327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281273, 30.716103, 22.374905>,  <38.237110, 30.483711, 22.415451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.281273, 30.716103, 22.374905>,  <38.354881, 31.103420, 22.307327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281273, 30.716103, 22.374905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709777, 0.249805, 0.658646,
		-0.679966, 0.001292, -0.733243,
		-0.184019, -0.968295, 0.168942,
		38.226067, 30.425613, 22.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632111, 31.050428, 22.157026>,  <38.354881, 31.103420, 22.307327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632111, 31.050428, 22.157026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741703, 30.753771, 22.401941>,  <37.807461, 30.575775, 22.548889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741703, 30.753771, 22.401941>,  <37.632111, 31.050428, 22.157026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741703, 30.753771, 22.401941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746112, 0.237798, 0.621907,
		-0.606835, -0.627228, -0.488197,
		0.273985, -0.741645, 0.612287,
		37.823898, 30.531277, 22.585627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969536, 30.680397, 22.377869>,  <37.632111, 31.050428, 22.157026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969536, 30.680397, 22.377869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243935, 30.547956, 22.637030>,  <37.408573, 30.468493, 22.792526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243935, 30.547956, 22.637030>,  <36.969536, 30.680397, 22.377869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243935, 30.547956, 22.637030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710214, -0.111209, 0.695147,
		-0.158120, -0.937015, -0.311450,
		0.685999, -0.331112, 0.647897,
		37.449734, 30.448626, 22.831400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765846, 30.039314, 22.605988>,  <36.969536, 30.680397, 22.377869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765846, 30.039314, 22.605988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003231, 30.155891, 22.906084>,  <37.145664, 30.225838, 23.086142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003231, 30.155891, 22.906084>,  <36.765846, 30.039314, 22.605988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003231, 30.155891, 22.906084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681212, -0.314563, 0.661060,
		0.428661, -0.903388, 0.011854,
		0.593464, 0.291446, 0.750240,
		37.181271, 30.243324, 23.131157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.915440, 31.492441, 19.299500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.073578, 31.358875, 19.641773>,  <43.168461, 31.278736, 19.847137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.073578, 31.358875, 19.641773>,  <42.915440, 31.492441, 19.299500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073578, 31.358875, 19.641773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718970, 0.467272, 0.514528,
		-0.571647, -0.818631, -0.055340,
		0.395350, -0.333916, 0.855686,
		43.192184, 31.258701, 19.898479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321835, 31.164423, 19.569445>,  <42.915440, 31.492441, 19.299500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321835, 31.164423, 19.569445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.577137, 31.197165, 19.875628>,  <42.730320, 31.216810, 20.059338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.577137, 31.197165, 19.875628>,  <42.321835, 31.164423, 19.569445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577137, 31.197165, 19.875628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700948, 0.472889, 0.533899,
		-0.318276, -0.877312, 0.359199,
		0.638257, 0.081853, 0.765459,
		42.768616, 31.221720, 20.105265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960732, 31.113688, 20.078854>,  <42.321835, 31.164423, 19.569445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960732, 31.113688, 20.078854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.264950, 31.251186, 20.299187>,  <42.447479, 31.333685, 20.431387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.264950, 31.251186, 20.299187>,  <41.960732, 31.113688, 20.078854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264950, 31.251186, 20.299187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648747, 0.436988, 0.623033,
		-0.026541, -0.831192, 0.555352,
		0.760542, 0.343747, 0.550831,
		42.493111, 31.354311, 20.464436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740612, 30.988104, 20.813437>,  <41.960732, 31.113688, 20.078854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740612, 30.988104, 20.813437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.999096, 31.293308, 20.819479>,  <42.154186, 31.476431, 20.823105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.999096, 31.293308, 20.819479>,  <41.740612, 30.988104, 20.813437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999096, 31.293308, 20.819479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553710, 0.455139, 0.697319,
		0.525189, -0.458975, 0.716602,
		0.646205, 0.763014, 0.015105,
		42.192959, 31.522211, 20.824011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808380, 31.172600, 21.479763>,  <41.740612, 30.988104, 20.813437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808380, 31.172600, 21.479763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916447, 31.501738, 21.279787>,  <41.981285, 31.699221, 21.159801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916447, 31.501738, 21.279787>,  <41.808380, 31.172600, 21.479763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916447, 31.501738, 21.279787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588737, 0.552045, 0.590453,
		0.761841, 0.134816, 0.633580,
		0.270162, 0.822843, -0.499941,
		41.997494, 31.748590, 21.129805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894653, 31.558395, 22.007120>,  <41.808380, 31.172600, 21.479763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894653, 31.558395, 22.007120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867958, 31.821545, 21.707054>,  <41.851940, 31.979435, 21.527014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867958, 31.821545, 21.707054>,  <41.894653, 31.558395, 22.007120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867958, 31.821545, 21.707054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348653, 0.689070, 0.635313,
		0.934872, 0.303949, 0.183380,
		-0.066741, 0.657873, -0.750166,
		41.847935, 32.018906, 21.482004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152729, 32.150143, 22.339594>,  <41.894653, 31.558395, 22.007120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152729, 32.150143, 22.339594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.937775, 32.290916, 22.033037>,  <41.808804, 32.375381, 21.849104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.937775, 32.290916, 22.033037>,  <42.152729, 32.150143, 22.339594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937775, 32.290916, 22.033037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422302, 0.674318, 0.605769,
		0.729984, 0.649181, -0.213746,
		-0.537386, 0.351937, -0.766392,
		41.776558, 32.396496, 21.803120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336098, 32.864590, 22.248129>,  <42.152729, 32.150143, 22.339594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336098, 32.864590, 22.248129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.969532, 32.814762, 22.095989>,  <41.749592, 32.784866, 22.004705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.969532, 32.814762, 22.095989>,  <42.336098, 32.864590, 22.248129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969532, 32.814762, 22.095989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340035, 0.743570, 0.575743,
		0.211096, 0.656951, -0.723777,
		-0.916414, -0.124573, -0.380351,
		41.694607, 32.777390, 21.981884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058769, 33.515980, 22.324875>,  <42.336098, 32.864590, 22.248129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058769, 33.515980, 22.324875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.754936, 33.263550, 22.261906>,  <41.572636, 33.112091, 22.224125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.754936, 33.263550, 22.261906>,  <42.058769, 33.515980, 22.324875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754936, 33.263550, 22.261906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548487, 0.491419, 0.676513,
		-0.349568, 0.600212, -0.719408,
		-0.759582, -0.631073, -0.157424,
		41.527061, 33.074226, 22.214678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573612, 33.901836, 22.356150>,  <42.058769, 33.515980, 22.324875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573612, 33.901836, 22.356150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377144, 33.558983, 22.418215>,  <41.259262, 33.353271, 22.455454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377144, 33.558983, 22.418215>,  <41.573612, 33.901836, 22.356150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377144, 33.558983, 22.418215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703895, 0.495487, 0.508945,
		-0.513115, 0.140760, -0.846699,
		-0.491167, -0.857134, 0.155162,
		41.229794, 33.301842, 22.464764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885441, 34.175297, 22.320885>,  <41.573612, 33.901836, 22.356150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885441, 34.175297, 22.320885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859337, 33.813675, 22.489843>,  <40.843674, 33.596703, 22.591219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859337, 33.813675, 22.489843>,  <40.885441, 34.175297, 22.320885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859337, 33.813675, 22.489843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625395, 0.366906, 0.688666,
		-0.777575, -0.219221, -0.589338,
		-0.065262, -0.904059, 0.422397,
		40.839760, 33.542458, 22.616562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132221, 34.003403, 22.342237>,  <40.885441, 34.175297, 22.320885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132221, 34.003403, 22.342237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.353069, 33.827000, 22.625271>,  <40.485580, 33.721157, 22.795092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.353069, 33.827000, 22.625271>,  <40.132221, 34.003403, 22.342237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353069, 33.827000, 22.625271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626966, 0.339832, 0.701019,
		-0.549612, -0.830680, -0.088865,
		0.552123, -0.441004, 0.707584,
		40.518707, 33.694698, 22.837545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387787, 33.627892, 22.381704>,  <40.132221, 34.003403, 22.342237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387787, 33.627892, 22.381704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014206, 33.643200, 22.239567>,  <38.790058, 33.652386, 22.154284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014206, 33.643200, 22.239567>,  <39.387787, 33.627892, 22.381704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014206, 33.643200, 22.239567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278916, -0.543628, -0.791627,
		-0.223471, -0.838453, 0.497048,
		-0.933952, 0.038271, -0.355343,
		38.734020, 33.654682, 22.132963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285587, 32.986164, 22.194258>,  <39.387787, 33.627892, 22.381704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285587, 32.986164, 22.194258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.039997, 33.217430, 21.979313>,  <38.892643, 33.356190, 21.850346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.039997, 33.217430, 21.979313>,  <39.285587, 32.986164, 22.194258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039997, 33.217430, 21.979313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201620, -0.543331, -0.814949,
		-0.763141, -0.608702, 0.217022,
		-0.613975, 0.578164, -0.537364,
		38.855804, 33.390881, 21.818104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067684, 32.486176, 21.892645>,  <39.285587, 32.986164, 22.194258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067684, 32.486176, 21.892645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941235, 32.810810, 21.696115>,  <38.865364, 33.005589, 21.578197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941235, 32.810810, 21.696115>,  <39.067684, 32.486176, 21.892645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941235, 32.810810, 21.696115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122303, -0.478699, -0.869419,
		-0.940802, -0.334934, 0.052069,
		-0.316123, 0.811583, -0.491325,
		38.846397, 33.054283, 21.548717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551636, 32.277645, 21.396212>,  <39.067684, 32.486176, 21.892645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551636, 32.277645, 21.396212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701118, 32.622810, 21.260136>,  <38.790806, 32.829910, 21.178490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701118, 32.622810, 21.260136>,  <38.551636, 32.277645, 21.396212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701118, 32.622810, 21.260136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241068, -0.444515, -0.862724,
		-0.895675, 0.240393, -0.374136,
		0.373702, 0.862912, -0.340190,
		38.813229, 32.881683, 21.158079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401474, 32.218273, 20.750540>,  <38.551636, 32.277645, 21.396212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401474, 32.218273, 20.750540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648464, 32.532909, 20.751345>,  <38.796658, 32.721691, 20.751827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648464, 32.532909, 20.751345>,  <38.401474, 32.218273, 20.750540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648464, 32.532909, 20.751345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347856, -0.270774, -0.897596,
		-0.705494, 0.554942, -0.440815,
		0.617474, 0.786588, 0.002010,
		38.833706, 32.768887, 20.751947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308987, 32.566109, 20.095129>,  <38.401474, 32.218273, 20.750540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308987, 32.566109, 20.095129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665451, 32.665573, 20.246916>,  <38.879330, 32.725250, 20.337988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.665451, 32.665573, 20.246916>,  <38.308987, 32.566109, 20.095129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665451, 32.665573, 20.246916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424287, -0.160639, -0.891165,
		-0.160639, 0.955178, -0.248658,
		0.891165, 0.248658, 0.379465,
		38.932800, 32.740170, 20.360756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551098, 32.924397, 19.493803>,  <38.308987, 32.566109, 20.095129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551098, 32.924397, 19.493803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875244, 32.838589, 19.711903>,  <39.069733, 32.787106, 19.842762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875244, 32.838589, 19.711903>,  <38.551098, 32.924397, 19.493803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875244, 32.838589, 19.711903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480481, -0.289289, -0.827919,
		0.335335, 0.932896, -0.131358,
		0.810363, -0.214515, 0.545248,
		39.118355, 32.774235, 19.875477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094715, 33.233482, 19.176676>,  <38.551098, 32.924397, 19.493803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094715, 33.233482, 19.176676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277290, 32.960949, 19.405567>,  <39.386837, 32.797428, 19.542902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.277290, 32.960949, 19.405567>,  <39.094715, 33.233482, 19.176676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277290, 32.960949, 19.405567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367781, -0.441141, -0.818616,
		0.810186, 0.584102, 0.049229,
		0.456438, -0.681336, 0.572228,
		39.414223, 32.756550, 19.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760216, 33.257233, 18.799009>,  <39.094715, 33.233482, 19.176676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760216, 33.257233, 18.799009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753864, 32.930210, 19.029261>,  <39.750053, 32.733997, 19.167412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.753864, 32.930210, 19.029261>,  <39.760216, 33.257233, 18.799009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753864, 32.930210, 19.029261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510506, -0.501635, -0.698388,
		0.859728, 0.282772, 0.425333,
		-0.015878, -0.817559, 0.575627,
		39.749100, 32.684944, 19.201948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476513, 32.896145, 18.783400>,  <39.760216, 33.257233, 18.799009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476513, 32.896145, 18.783400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210541, 32.616840, 18.889454>,  <40.050957, 32.449257, 18.953087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210541, 32.616840, 18.889454>,  <40.476513, 32.896145, 18.783400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210541, 32.616840, 18.889454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458132, -0.661644, -0.593584,
		0.589904, -0.273224, 0.759843,
		-0.664927, -0.698266, 0.265134,
		40.011063, 32.407360, 18.968994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906250, 32.334942, 18.897961>,  <40.476513, 32.896145, 18.783400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906250, 32.334942, 18.897961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.538914, 32.188267, 18.838367>,  <40.318512, 32.100262, 18.802610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.538914, 32.188267, 18.838367>,  <40.906250, 32.334942, 18.897961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538914, 32.188267, 18.838367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392494, -0.795155, -0.462252,
		0.051037, -0.482979, 0.874143,
		-0.918337, -0.366688, -0.148984,
		40.263412, 32.078259, 18.793673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861496, 31.644924, 19.194971>,  <40.906250, 32.334942, 18.897961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861496, 31.644924, 19.194971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567238, 31.661673, 18.924543>,  <40.390682, 31.671722, 18.762287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.567238, 31.661673, 18.924543>,  <40.861496, 31.644924, 19.194971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567238, 31.661673, 18.924543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456612, -0.706575, -0.540608,
		-0.500331, -0.706398, 0.500670,
		-0.735645, 0.041871, -0.676071,
		40.346542, 31.674234, 18.721722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622345, 30.925188, 19.101929>,  <40.861496, 31.644924, 19.194971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622345, 30.925188, 19.101929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534790, 31.123596, 18.765821>,  <40.482258, 31.242641, 18.564157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534790, 31.123596, 18.765821>,  <40.622345, 30.925188, 19.101929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534790, 31.123596, 18.765821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647791, -0.570122, -0.505300,
		-0.729694, -0.654923, -0.196523,
		-0.218890, 0.496020, -0.840268,
		40.469124, 31.272402, 18.513741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071190, 30.529381, 18.721291>,  <40.622345, 30.925188, 19.101929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071190, 30.529381, 18.721291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.810123, 30.245554, 18.615047>,  <39.653484, 30.075258, 18.551302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.810123, 30.245554, 18.615047>,  <40.071190, 30.529381, 18.721291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810123, 30.245554, 18.615047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388357, 0.012304, 0.921427,
		-0.650544, 0.704532, -0.283596,
		-0.652664, -0.709565, -0.265606,
		39.614323, 30.032684, 18.535366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500584, 30.725729, 18.971170>,  <40.071190, 30.529381, 18.721291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500584, 30.725729, 18.971170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489071, 30.327974, 18.930439>,  <39.482162, 30.089321, 18.906000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489071, 30.327974, 18.930439>,  <39.500584, 30.725729, 18.971170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489071, 30.327974, 18.930439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085824, -0.099037, 0.991376,
		-0.995894, 0.037278, -0.082491,
		-0.028787, -0.994385, -0.101830,
		39.480434, 30.029659, 18.899891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839977, 30.591585, 19.251484>,  <39.500584, 30.725729, 18.971170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839977, 30.591585, 19.251484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064865, 30.262085, 19.280727>,  <39.199799, 30.064384, 19.298273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.064865, 30.262085, 19.280727>,  <38.839977, 30.591585, 19.251484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064865, 30.262085, 19.280727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339201, -0.149077, 0.928827,
		-0.754222, -0.547003, -0.363231,
		0.562220, -0.823750, 0.073106,
		39.233532, 30.014959, 19.302660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387947, 30.170931, 19.593792>,  <38.839977, 30.591585, 19.251484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387947, 30.170931, 19.593792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756599, 30.020018, 19.630123>,  <38.977791, 29.929470, 19.651922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756599, 30.020018, 19.630123>,  <38.387947, 30.170931, 19.593792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756599, 30.020018, 19.630123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176783, -0.199831, 0.963751,
		-0.345456, -0.904282, -0.250868,
		0.921633, -0.377282, 0.090829,
		39.033089, 29.906834, 19.657372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321537, 29.619961, 19.976490>,  <38.387947, 30.170931, 19.593792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321537, 29.619961, 19.976490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715431, 29.682913, 20.006226>,  <38.951767, 29.720684, 20.024067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715431, 29.682913, 20.006226>,  <38.321537, 29.619961, 19.976490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715431, 29.682913, 20.006226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060787, -0.089233, 0.994154,
		0.163091, -0.983499, -0.078305,
		0.984737, 0.157378, 0.074337,
		39.010853, 29.730125, 20.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572109, 28.980688, 20.314692>,  <38.321537, 29.619961, 19.976490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572109, 28.980688, 20.314692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833092, 29.280699, 20.358070>,  <38.989681, 29.460705, 20.384098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.833092, 29.280699, 20.358070>,  <38.572109, 28.980688, 20.314692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833092, 29.280699, 20.358070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048310, -0.183976, 0.981743,
		0.756287, -0.635303, -0.156270,
		0.652454, 0.750028, 0.108447,
		39.028828, 29.505707, 20.390604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176430, 28.812279, 20.691093>,  <38.572109, 28.980688, 20.314692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176430, 28.812279, 20.691093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.174477, 29.211468, 20.716473>,  <39.173306, 29.450981, 20.731701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.174477, 29.211468, 20.716473>,  <39.176430, 28.812279, 20.691093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174477, 29.211468, 20.716473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020551, -0.063536, 0.997768,
		0.999777, 0.003567, 0.020819,
		-0.004882, 0.997973, 0.063448,
		39.173012, 29.510860, 20.735508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601738, 28.997755, 21.302143>,  <39.176430, 28.812279, 20.691093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601738, 28.997755, 21.302143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368469, 29.317129, 21.242266>,  <39.228508, 29.508753, 21.206339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368469, 29.317129, 21.242266>,  <39.601738, 28.997755, 21.302143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368469, 29.317129, 21.242266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144953, 0.079039, 0.986277,
		0.799309, 0.596871, 0.069642,
		-0.583176, 0.798434, -0.149695,
		39.193516, 29.556660, 21.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897572, 28.659946, 21.941029>,  <39.601738, 28.997755, 21.302143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897572, 28.659946, 21.941029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733833, 28.295002, 21.943518>,  <39.635590, 28.076036, 21.945011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733833, 28.295002, 21.943518>,  <39.897572, 28.659946, 21.941029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733833, 28.295002, 21.943518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493033, -0.226933, -0.839893,
		0.767696, -0.340738, 0.542716,
		-0.409343, -0.912359, 0.006221,
		39.611031, 28.021294, 21.945383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504547, 28.243341, 21.880371>,  <39.897572, 28.659946, 21.941029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504547, 28.243341, 21.880371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185600, 28.036180, 21.756441>,  <39.994232, 27.911884, 21.682083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.185600, 28.036180, 21.756441>,  <40.504547, 28.243341, 21.880371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185600, 28.036180, 21.756441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502399, -0.285192, -0.816248,
		0.334377, -0.806501, 0.487594,
		-0.797363, -0.517901, -0.309824,
		39.946392, 27.880810, 21.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814808, 27.876049, 21.420538>,  <40.504547, 28.243341, 21.880371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814808, 27.876049, 21.420538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.440430, 27.762247, 21.337538>,  <40.215801, 27.693966, 21.287737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.440430, 27.762247, 21.337538>,  <40.814808, 27.876049, 21.420538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440430, 27.762247, 21.337538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319935, -0.440875, -0.838612,
		0.147105, -0.851285, 0.503659,
		-0.935950, -0.284503, -0.207501,
		40.159645, 27.676897, 21.275288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824615, 27.108829, 21.204531>,  <40.814808, 27.876049, 21.420538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824615, 27.108829, 21.204531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.495506, 27.282721, 21.058077>,  <40.298042, 27.387054, 20.970203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.495506, 27.282721, 21.058077>,  <40.824615, 27.108829, 21.204531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495506, 27.282721, 21.058077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209886, -0.366266, -0.906530,
		-0.528196, -0.822717, 0.210111,
		-0.822774, 0.434726, -0.366137,
		40.248672, 27.413137, 20.948236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527973, 26.650742, 20.689333>,  <40.824615, 27.108829, 21.204531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527973, 26.650742, 20.689333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387318, 27.015947, 20.606623>,  <40.302925, 27.235071, 20.556995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.387318, 27.015947, 20.606623>,  <40.527973, 26.650742, 20.689333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387318, 27.015947, 20.606623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181930, -0.150023, -0.971799,
		-0.918286, -0.379344, -0.113351,
		-0.351641, 0.913012, -0.206778,
		40.281826, 27.289850, 20.544590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979187, 26.590776, 20.105320>,  <40.527973, 26.650742, 20.689333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979187, 26.590776, 20.105320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124119, 26.963583, 20.108612>,  <40.211079, 27.187267, 20.110586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124119, 26.963583, 20.108612>,  <39.979187, 26.590776, 20.105320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124119, 26.963583, 20.108612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377140, -0.138531, -0.915737,
		-0.852341, 0.334899, -0.401693,
		0.362327, 0.932015, 0.008228,
		40.232819, 27.243187, 20.111080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982368, 26.793215, 19.532082>,  <39.979187, 26.590776, 20.105320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982368, 26.793215, 19.532082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.193848, 27.122826, 19.613525>,  <40.320736, 27.320591, 19.662392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.193848, 27.122826, 19.613525>,  <39.982368, 26.793215, 19.532082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193848, 27.122826, 19.613525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523049, -0.127358, -0.842733,
		-0.668502, 0.552053, -0.498340,
		0.528701, 0.824025, 0.203612,
		40.352459, 27.370033, 19.674608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923813, 27.218229, 18.979660>,  <39.982368, 26.793215, 19.532082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923813, 27.218229, 18.979660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263973, 27.318480, 19.164705>,  <40.468067, 27.378630, 19.275732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.263973, 27.318480, 19.164705>,  <39.923813, 27.218229, 18.979660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263973, 27.318480, 19.164705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513763, -0.205953, -0.832845,
		-0.113454, 0.945923, -0.303903,
		0.850397, 0.250624, 0.462615,
		40.519093, 27.393667, 19.303490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160534, 27.707214, 18.512030>,  <39.923813, 27.218229, 18.979660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160534, 27.707214, 18.512030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.480705, 27.572975, 18.710697>,  <40.672810, 27.492432, 18.829899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.480705, 27.572975, 18.710697>,  <40.160534, 27.707214, 18.512030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480705, 27.572975, 18.710697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499027, -0.085959, -0.862313,
		0.332085, 0.938075, 0.098669,
		0.800432, -0.335599, 0.496670,
		40.720837, 27.472296, 18.859699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.339138, 32.676865, 33.743595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562145, 32.345062, 33.756855>,  <36.695950, 32.145981, 33.764809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.562145, 32.345062, 33.756855>,  <36.339138, 32.676865, 33.743595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562145, 32.345062, 33.756855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458492, -0.340952, -0.820692,
		0.692069, 0.442352, -0.570408,
		0.557517, -0.829504, 0.033148,
		36.729401, 32.096210, 33.766800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609482, 32.535458, 33.070480>,  <36.339138, 32.676865, 33.743595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609482, 32.535458, 33.070480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589340, 32.193241, 33.276592>,  <36.577255, 31.987911, 33.400261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.589340, 32.193241, 33.276592>,  <36.609482, 32.535458, 33.070480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589340, 32.193241, 33.276592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269166, -0.485221, -0.831932,
		0.961777, -0.180585, -0.205851,
		-0.050352, -0.855540, 0.515282,
		36.574234, 31.936579, 33.431175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033161, 32.043713, 32.661411>,  <36.609482, 32.535458, 33.070480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033161, 32.043713, 32.661411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824444, 31.801126, 32.901390>,  <36.699215, 31.655577, 33.045376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.824444, 31.801126, 32.901390>,  <37.033161, 32.043713, 32.661411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824444, 31.801126, 32.901390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300099, -0.527831, -0.794566,
		0.798545, -0.594642, 0.093419,
		-0.521792, -0.606461, 0.599948,
		36.667908, 31.619188, 33.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261169, 31.355354, 32.462170>,  <37.033161, 32.043713, 32.661411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261169, 31.355354, 32.462170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898792, 31.331921, 32.629906>,  <36.681366, 31.317862, 32.730545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898792, 31.331921, 32.629906>,  <37.261169, 31.355354, 32.462170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898792, 31.331921, 32.629906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277909, -0.664921, -0.693287,
		0.319441, -0.744613, 0.586097,
		-0.905938, -0.058583, 0.419338,
		36.627010, 31.314346, 32.755707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121567, 30.639515, 32.607178>,  <37.261169, 31.355354, 32.462170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121567, 30.639515, 32.607178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763676, 30.813486, 32.566582>,  <36.548943, 30.917868, 32.542225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763676, 30.813486, 32.566582>,  <37.121567, 30.639515, 32.607178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763676, 30.813486, 32.566582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250787, -0.677308, -0.691635,
		-0.369550, -0.593374, 0.715081,
		-0.894729, 0.434927, -0.101489,
		36.495258, 30.943964, 32.536137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651360, 30.120018, 32.341030>,  <37.121567, 30.639515, 32.607178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651360, 30.120018, 32.341030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420437, 30.436678, 32.261017>,  <36.281883, 30.626675, 32.213009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420437, 30.436678, 32.261017>,  <36.651360, 30.120018, 32.341030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420437, 30.436678, 32.261017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226169, -0.390427, -0.892420,
		-0.784582, -0.469956, 0.404441,
		-0.577302, 0.791649, -0.200032,
		36.247246, 30.674173, 32.201008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955429, 29.861145, 32.007214>,  <36.651360, 30.120018, 32.341030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955429, 29.861145, 32.007214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989918, 30.235111, 31.869518>,  <36.010612, 30.459490, 31.786901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.989918, 30.235111, 31.869518>,  <35.955429, 29.861145, 32.007214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989918, 30.235111, 31.869518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012050, -0.346479, -0.937981,
		-0.996203, 0.076728, -0.041141,
		0.086224, 0.934915, -0.344238,
		36.015785, 30.515585, 31.766247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712807, 29.824509, 31.323790>,  <35.955429, 29.861145, 32.007214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712807, 29.824509, 31.323790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906281, 30.174604, 31.323635>,  <36.022366, 30.384663, 31.323542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906281, 30.174604, 31.323635>,  <35.712807, 29.824509, 31.323790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906281, 30.174604, 31.323635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273454, -0.151540, -0.949873,
		-0.831426, 0.459336, -0.312636,
		0.483688, 0.875241, -0.000387,
		36.051388, 30.437176, 31.323519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558182, 30.047207, 30.714823>,  <35.712807, 29.824509, 31.323790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558182, 30.047207, 30.714823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862095, 30.290686, 30.806231>,  <36.044441, 30.436773, 30.861074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862095, 30.290686, 30.806231>,  <35.558182, 30.047207, 30.714823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862095, 30.290686, 30.806231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183862, 0.135977, -0.973501,
		-0.623643, 0.781662, -0.008604,
		0.759779, 0.608699, 0.228519,
		36.090027, 30.473295, 30.874786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478161, 30.573435, 30.307928>,  <35.558182, 30.047207, 30.714823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478161, 30.573435, 30.307928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864670, 30.545607, 30.407110>,  <36.096573, 30.528910, 30.466619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.864670, 30.545607, 30.407110>,  <35.478161, 30.573435, 30.307928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864670, 30.545607, 30.407110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248347, -0.003103, -0.968666,
		0.068162, 0.997572, 0.014280,
		0.966270, -0.069573, 0.247955,
		36.154552, 30.524734, 30.481497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724129, 31.037575, 29.834730>,  <35.478161, 30.573435, 30.307928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724129, 31.037575, 29.834730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994297, 30.773857, 29.966877>,  <36.156399, 30.615625, 30.046165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994297, 30.773857, 29.966877>,  <35.724129, 31.037575, 29.834730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994297, 30.773857, 29.966877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311929, -0.150517, -0.938107,
		0.668215, 0.736664, 0.103991,
		0.675417, -0.659296, 0.330365,
		36.196922, 30.576069, 30.065987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259518, 31.099213, 29.369961>,  <35.724129, 31.037575, 29.834730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259518, 31.099213, 29.369961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333904, 30.742188, 29.534277>,  <36.378536, 30.527973, 29.632868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333904, 30.742188, 29.534277>,  <36.259518, 31.099213, 29.369961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333904, 30.742188, 29.534277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480973, -0.281873, -0.830189,
		0.856785, 0.351970, 0.376877,
		0.185970, -0.892561, 0.410792,
		36.389694, 30.474419, 29.657515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238464, 31.661234, 28.905743>,  <36.259518, 31.099213, 29.369961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238464, 31.661234, 28.905743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869728, 31.713003, 28.759617>,  <35.648487, 31.744064, 28.671942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869728, 31.713003, 28.759617>,  <36.238464, 31.661234, 28.905743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869728, 31.713003, 28.759617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197998, 0.653035, 0.730987,
		0.333168, 0.746188, -0.576371,
		-0.921844, 0.129421, -0.365314,
		35.593174, 31.751829, 28.650023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156212, 32.371307, 28.821898>,  <36.238464, 31.661234, 28.905743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156212, 32.371307, 28.821898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792747, 32.207874, 28.856285>,  <35.574669, 32.109814, 28.876919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792747, 32.207874, 28.856285>,  <36.156212, 32.371307, 28.821898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792747, 32.207874, 28.856285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214971, 0.634332, 0.742570,
		-0.357934, 0.656265, -0.664228,
		-0.908664, -0.408581, 0.085971,
		35.520149, 32.085300, 28.882076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645367, 32.937286, 28.965462>,  <36.156212, 32.371307, 28.821898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645367, 32.937286, 28.965462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458523, 32.609219, 29.097603>,  <35.346416, 32.412380, 29.176888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.458523, 32.609219, 29.097603>,  <35.645367, 32.937286, 28.965462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458523, 32.609219, 29.097603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414921, 0.533251, 0.737213,
		-0.780800, 0.207288, -0.589391,
		-0.467109, -0.820168, 0.330354,
		35.318390, 32.363167, 29.196709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042191, 33.220070, 29.059851>,  <35.645367, 32.937286, 28.965462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042191, 33.220070, 29.059851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034828, 32.877651, 29.266481>,  <35.030411, 32.672199, 29.390459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.034828, 32.877651, 29.266481>,  <35.042191, 33.220070, 29.059851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034828, 32.877651, 29.266481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284839, 0.499742, 0.818000,
		-0.958399, -0.132085, -0.253033,
		-0.018406, -0.856044, 0.516575,
		35.029308, 32.620838, 29.421453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350300, 33.028240, 29.227028>,  <35.042191, 33.220070, 29.059851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350300, 33.028240, 29.227028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563450, 32.849052, 29.514185>,  <34.691338, 32.741539, 29.686480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563450, 32.849052, 29.514185>,  <34.350300, 33.028240, 29.227028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563450, 32.849052, 29.514185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496842, 0.521109, 0.693969,
		-0.684978, -0.726476, 0.055115,
		0.532873, -0.447970, 0.717892,
		34.723312, 32.714661, 29.729553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891205, 32.955250, 29.686073>,  <34.350300, 33.028240, 29.227028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891205, 32.955250, 29.686073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230053, 32.928986, 29.897007>,  <34.433361, 32.913227, 30.023567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.230053, 32.928986, 29.897007>,  <33.891205, 32.955250, 29.686073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230053, 32.928986, 29.897007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416174, 0.535087, 0.735174,
		-0.330439, -0.842242, 0.425956,
		0.847118, -0.065659, 0.527332,
		34.484188, 32.909286, 30.055206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739048, 32.983326, 30.363085>,  <33.891205, 32.955250, 29.686073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739048, 32.983326, 30.363085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124184, 33.072414, 30.424191>,  <34.355267, 33.125870, 30.460854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124184, 33.072414, 30.424191>,  <33.739048, 32.983326, 30.363085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124184, 33.072414, 30.424191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253893, 0.553554, 0.793168,
		0.092095, -0.802478, 0.589532,
		0.962837, 0.222725, 0.152764,
		34.413036, 33.139233, 30.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991005, 32.688202, 30.981203>,  <33.739048, 32.983326, 30.363085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991005, 32.688202, 30.981203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213356, 33.011959, 30.905426>,  <34.346767, 33.206211, 30.859961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213356, 33.011959, 30.905426>,  <33.991005, 32.688202, 30.981203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213356, 33.011959, 30.905426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449412, 0.484338, 0.750630,
		0.699308, -0.332118, 0.632982,
		0.555875, 0.809391, -0.189444,
		34.380119, 33.254776, 30.848593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207142, 32.947575, 31.673012>,  <33.991005, 32.688202, 30.981203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207142, 32.947575, 31.673012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270477, 33.255547, 31.425741>,  <34.308479, 33.440331, 31.277380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270477, 33.255547, 31.425741>,  <34.207142, 32.947575, 31.673012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270477, 33.255547, 31.425741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381202, 0.625199, 0.681037,
		0.910832, 0.127817, 0.392489,
		0.158335, 0.769928, -0.618176,
		34.317978, 33.486526, 31.240288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523113, 33.462601, 32.024422>,  <34.207142, 32.947575, 31.673012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523113, 33.462601, 32.024422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354580, 33.651230, 31.714558>,  <34.253460, 33.764408, 31.528639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354580, 33.651230, 31.714558>,  <34.523113, 33.462601, 32.024422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354580, 33.651230, 31.714558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260293, 0.755364, 0.601392,
		0.868750, 0.455026, -0.195513,
		-0.421333, 0.471568, -0.774663,
		34.228180, 33.792702, 31.482159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749912, 34.148224, 32.021770>,  <34.523113, 33.462601, 32.024422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749912, 34.148224, 32.021770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403858, 34.146484, 31.821167>,  <34.196224, 34.145439, 31.700804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.403858, 34.146484, 31.821167>,  <34.749912, 34.148224, 32.021770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403858, 34.146484, 31.821167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345354, 0.730285, 0.589419,
		0.363682, 0.683129, -0.633301,
		-0.865139, -0.004352, -0.501513,
		34.144318, 34.145180, 31.670713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592716, 34.832581, 32.034519>,  <34.749912, 34.148224, 32.021770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592716, 34.832581, 32.034519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232071, 34.698982, 31.924576>,  <34.015686, 34.618824, 31.858610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232071, 34.698982, 31.924576>,  <34.592716, 34.832581, 32.034519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232071, 34.698982, 31.924576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430846, 0.749781, 0.502195,
		0.038351, 0.571205, -0.819911,
		-0.901610, -0.333996, -0.274856,
		33.961586, 34.598782, 31.842119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274487, 35.348316, 31.736443>,  <34.592716, 34.832581, 32.034519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274487, 35.348316, 31.736443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.999763, 35.098568, 31.885283>,  <33.834930, 34.948719, 31.974586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.999763, 35.098568, 31.885283>,  <34.274487, 35.348316, 31.736443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999763, 35.098568, 31.885283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533150, 0.780712, 0.325943,
		-0.494011, 0.025475, -0.869082,
		-0.686807, -0.624371, 0.372098,
		33.793720, 34.911255, 31.996912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636059, 35.531776, 31.467787>,  <34.274487, 35.348316, 31.736443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636059, 35.531776, 31.467787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565891, 35.328171, 31.804863>,  <33.523792, 35.206005, 32.007111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.565891, 35.328171, 31.804863>,  <33.636059, 35.531776, 31.467787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565891, 35.328171, 31.804863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611475, 0.727175, 0.311954,
		-0.771574, -0.460564, -0.438809,
		-0.175416, -0.509017, 0.842693,
		33.513268, 35.175465, 32.057671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954552, 35.552879, 31.476830>,  <33.636059, 35.531776, 31.467787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954552, 35.552879, 31.476830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036968, 35.445084, 31.853111>,  <33.086418, 35.380405, 32.078880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036968, 35.445084, 31.853111>,  <32.954552, 35.552879, 31.476830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036968, 35.445084, 31.853111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800572, 0.506382, 0.320408,
		-0.562701, -0.819118, -0.111409,
		0.206037, -0.269486, 0.940705,
		33.098778, 35.364239, 32.135323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916580, 35.498528, 30.776714>,  <32.954552, 35.552879, 31.476830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916580, 35.498528, 30.776714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926163, 35.897388, 30.748117>,  <32.931911, 36.136703, 30.730959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926163, 35.897388, 30.748117>,  <32.916580, 35.498528, 30.776714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926163, 35.897388, 30.748117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355143, -0.075337, -0.931771,
		-0.934505, -0.003063, -0.355937,
		0.023961, 0.997153, -0.071491,
		32.933350, 36.196533, 30.726669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472076, 35.775696, 30.208168>,  <32.916580, 35.498528, 30.776714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472076, 35.775696, 30.208168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799839, 35.983883, 30.304239>,  <32.996498, 36.108795, 30.361883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799839, 35.983883, 30.304239>,  <32.472076, 35.775696, 30.208168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799839, 35.983883, 30.304239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390643, -0.200403, -0.898464,
		-0.419485, 0.830033, -0.367528,
		0.819408, 0.520464, 0.240180,
		33.045662, 36.140022, 30.376293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563137, 36.282242, 29.619089>,  <32.472076, 35.775696, 30.208168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563137, 36.282242, 29.619089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904392, 36.198429, 29.810192>,  <33.109146, 36.148140, 29.924854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.904392, 36.198429, 29.810192>,  <32.563137, 36.282242, 29.619089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904392, 36.198429, 29.810192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410282, -0.296160, -0.862530,
		0.322221, 0.931872, -0.166698,
		0.853136, -0.209532, 0.477760,
		33.160332, 36.135571, 29.953520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115421, 36.521214, 29.221634>,  <32.563137, 36.282242, 29.619089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115421, 36.521214, 29.221634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313080, 36.258942, 29.449987>,  <33.431675, 36.101578, 29.587000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313080, 36.258942, 29.449987>,  <33.115421, 36.521214, 29.221634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313080, 36.258942, 29.449987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486264, -0.335886, -0.806677,
		0.720673, 0.676214, 0.152856,
		0.494144, -0.655679, 0.570882,
		33.461323, 36.062237, 29.621252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776260, 36.595043, 28.999739>,  <33.115421, 36.521214, 29.221634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776260, 36.595043, 28.999739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763950, 36.239662, 29.182909>,  <33.756565, 36.026432, 29.292812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763950, 36.239662, 29.182909>,  <33.776260, 36.595043, 28.999739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763950, 36.239662, 29.182909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444581, -0.422496, -0.789839,
		0.895210, 0.179282, 0.407991,
		-0.030771, -0.888457, 0.457928,
		33.754719, 35.973125, 29.320288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523304, 36.337269, 28.961361>,  <33.776260, 36.595043, 28.999739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523304, 36.337269, 28.961361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265690, 36.036900, 29.019781>,  <34.111122, 35.856678, 29.054834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265690, 36.036900, 29.019781>,  <34.523304, 36.337269, 28.961361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265690, 36.036900, 29.019781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491049, -0.552197, -0.673758,
		0.586591, -0.362206, 0.724375,
		-0.644036, -0.750923, 0.146053,
		34.072479, 35.811623, 29.063597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960426, 35.689228, 29.044630>,  <34.523304, 36.337269, 28.961361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960426, 35.689228, 29.044630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590530, 35.585171, 28.933512>,  <34.368591, 35.522736, 28.866840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590530, 35.585171, 28.933512>,  <34.960426, 35.689228, 29.044630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590530, 35.585171, 28.933512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371952, -0.463135, -0.804461,
		0.080622, -0.847248, 0.525044,
		-0.924744, -0.260148, -0.277797,
		34.313107, 35.507126, 28.850172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099049, 35.058540, 28.850269>,  <34.960426, 35.689228, 29.044630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099049, 35.058540, 28.850269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735146, 35.119186, 28.695683>,  <34.516804, 35.155575, 28.602930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735146, 35.119186, 28.695683>,  <35.099049, 35.058540, 28.850269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735146, 35.119186, 28.695683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251162, -0.540212, -0.803174,
		-0.330544, -0.827759, 0.453382,
		-0.909757, 0.151612, -0.386465,
		34.462219, 35.164669, 28.579742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729683, 34.369858, 28.787733>,  <35.099049, 35.058540, 28.850269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729683, 34.369858, 28.787733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552326, 34.595467, 28.509081>,  <34.445911, 34.730831, 28.341890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.552326, 34.595467, 28.509081>,  <34.729683, 34.369858, 28.787733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552326, 34.595467, 28.509081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365236, -0.596064, -0.715060,
		-0.818541, -0.571483, 0.058288,
		-0.443388, 0.564017, -0.696629,
		34.419312, 34.764671, 28.300093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452850, 33.885792, 28.248142>,  <34.729683, 34.369858, 28.787733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452850, 33.885792, 28.248142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435978, 34.237656, 28.058651>,  <34.425854, 34.448772, 27.944956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435978, 34.237656, 28.058651>,  <34.452850, 33.885792, 28.248142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435978, 34.237656, 28.058651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296791, -0.441717, -0.846641,
		-0.954011, -0.176307, -0.242445,
		-0.042177, 0.879660, -0.473729,
		34.423325, 34.501553, 27.916533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944725, 33.876831, 27.531229>,  <34.452850, 33.885792, 28.248142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944725, 33.876831, 27.531229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226780, 34.160057, 27.516104>,  <34.396011, 34.329990, 27.507029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226780, 34.160057, 27.516104>,  <33.944725, 33.876831, 27.531229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226780, 34.160057, 27.516104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329170, -0.374111, -0.866999,
		-0.628035, 0.598907, -0.496873,
		0.705137, 0.708062, -0.037813,
		34.438320, 34.372475, 27.504761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864376, 34.277897, 26.856527>,  <33.944725, 33.876831, 27.531229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864376, 34.277897, 26.856527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234703, 34.321121, 27.001410>,  <34.456898, 34.347057, 27.088339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234703, 34.321121, 27.001410>,  <33.864376, 34.277897, 26.856527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234703, 34.321121, 27.001410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372704, -0.101433, -0.922390,
		-0.062934, 0.988956, -0.134183,
		0.925814, 0.108060, 0.362204,
		34.512447, 34.353539, 27.110071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021675, 34.558273, 26.336914>,  <33.864376, 34.277897, 26.856527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021675, 34.558273, 26.336914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374283, 34.486217, 26.511490>,  <34.585846, 34.442982, 26.616236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374283, 34.486217, 26.511490>,  <34.021675, 34.558273, 26.336914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374283, 34.486217, 26.511490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435080, -0.049135, -0.899050,
		0.183401, 0.982413, 0.035063,
		0.881515, -0.180142, 0.436440,
		34.638737, 34.432175, 26.642422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408119, 34.937988, 26.014210>,  <34.021675, 34.558273, 26.336914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408119, 34.937988, 26.014210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680691, 34.691525, 26.172195>,  <34.844234, 34.543644, 26.266987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680691, 34.691525, 26.172195>,  <34.408119, 34.937988, 26.014210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680691, 34.691525, 26.172195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456608, -0.063841, -0.887374,
		0.571983, 0.785027, 0.237842,
		0.681429, -0.616163, 0.394966,
		34.885120, 34.506676, 26.290686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080132, 35.262421, 25.931198>,  <34.408119, 34.937988, 26.014210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080132, 35.262421, 25.931198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160816, 34.879478, 26.013927>,  <35.209229, 34.649712, 26.063564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160816, 34.879478, 26.013927>,  <35.080132, 35.262421, 25.931198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160816, 34.879478, 26.013927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605241, -0.044182, -0.794815,
		0.770061, 0.285504, 0.570521,
		0.201716, -0.957358, 0.206822,
		35.221333, 34.592270, 26.075974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789181, 35.196255, 25.997328>,  <35.080132, 35.262421, 25.931198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789181, 35.196255, 25.997328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667442, 34.824776, 25.912567>,  <35.594398, 34.601891, 25.861710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667442, 34.824776, 25.912567>,  <35.789181, 35.196255, 25.997328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667442, 34.824776, 25.912567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639898, -0.034540, -0.767683,
		0.705623, -0.369238, 0.604781,
		-0.304346, -0.928693, -0.211902,
		35.576138, 34.546169, 25.848997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386059, 34.769608, 25.940687>,  <35.789181, 35.196255, 25.997328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386059, 34.769608, 25.940687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097916, 34.582100, 25.736204>,  <35.925030, 34.469593, 25.613514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097916, 34.582100, 25.736204>,  <36.386059, 34.769608, 25.940687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097916, 34.582100, 25.736204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633081, -0.143278, -0.760710,
		0.283356, -0.871621, 0.399984,
		-0.720360, -0.468774, -0.511207,
		35.881809, 34.441467, 25.582842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604027, 34.064888, 25.836151>,  <36.386059, 34.769608, 25.940687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604027, 34.064888, 25.836151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339520, 34.171967, 25.555849>,  <36.180813, 34.236214, 25.387669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339520, 34.171967, 25.555849>,  <36.604027, 34.064888, 25.836151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339520, 34.171967, 25.555849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567657, -0.432114, -0.700745,
		-0.490397, -0.861170, 0.133781,
		-0.661269, 0.267701, -0.700756,
		36.141140, 34.252277, 25.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650021, 33.526585, 25.528282>,  <36.604027, 34.064888, 25.836151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650021, 33.526585, 25.528282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508785, 33.780987, 25.253817>,  <36.424046, 33.933628, 25.089138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508785, 33.780987, 25.253817>,  <36.650021, 33.526585, 25.528282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508785, 33.780987, 25.253817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709791, -0.295710, -0.639338,
		-0.609531, -0.712774, -0.347023,
		-0.353086, 0.636010, -0.686165,
		36.402859, 33.971790, 25.047968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815659, 33.264774, 24.885529>,  <36.650021, 33.526585, 25.528282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815659, 33.264774, 24.885529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699097, 33.624180, 24.754225>,  <36.629158, 33.839825, 24.675444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699097, 33.624180, 24.754225>,  <36.815659, 33.264774, 24.885529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699097, 33.624180, 24.754225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435843, -0.180757, -0.881685,
		-0.851541, -0.400000, -0.338937,
		-0.291409, 0.898514, -0.328259,
		36.611675, 33.893734, 24.655746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581951, 33.196629, 24.156811>,  <36.815659, 33.264774, 24.885529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581951, 33.196629, 24.156811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702717, 33.574039, 24.211363>,  <36.775177, 33.800488, 24.244095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702717, 33.574039, 24.211363>,  <36.581951, 33.196629, 24.156811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702717, 33.574039, 24.211363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405760, 0.002273, -0.913977,
		-0.862674, 0.331280, -0.382161,
		0.301913, 0.943530, 0.136381,
		36.793289, 33.857098, 24.252277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231583, 33.617767, 23.629700>,  <36.581951, 33.196629, 24.156811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231583, 33.617767, 23.629700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568710, 33.802681, 23.739927>,  <36.770988, 33.913631, 23.806065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.568710, 33.802681, 23.739927>,  <36.231583, 33.617767, 23.629700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568710, 33.802681, 23.739927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336720, -0.053510, -0.940083,
		-0.419843, 0.885114, -0.200761,
		0.842824, 0.462287, 0.275570,
		36.821556, 33.941368, 23.822598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395164, 34.183708, 23.157589>,  <36.231583, 33.617767, 23.629700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395164, 34.183708, 23.157589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749237, 34.097073, 23.322292>,  <36.961681, 34.045090, 23.421114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749237, 34.097073, 23.322292>,  <36.395164, 34.183708, 23.157589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749237, 34.097073, 23.322292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403914, -0.081458, -0.911163,
		0.230893, 0.972857, 0.015380,
		0.885179, -0.216593, 0.411759,
		37.014790, 34.032093, 23.445820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888252, 34.438118, 22.637878>,  <36.395164, 34.183708, 23.157589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888252, 34.438118, 22.637878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125980, 34.250317, 22.899057>,  <37.268620, 34.137634, 23.055765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125980, 34.250317, 22.899057>,  <36.888252, 34.438118, 22.637878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125980, 34.250317, 22.899057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701820, -0.093681, -0.706168,
		0.392719, 0.877945, 0.273832,
		0.594324, -0.469506, 0.652950,
		37.304279, 34.109467, 23.094942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589050, 34.795158, 22.719687>,  <36.888252, 34.438118, 22.637878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589050, 34.795158, 22.719687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646919, 34.414116, 22.826729>,  <37.681641, 34.185490, 22.890953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646919, 34.414116, 22.826729>,  <37.589050, 34.795158, 22.719687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646919, 34.414116, 22.826729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633753, -0.118490, -0.764406,
		0.759887, 0.280181, 0.586576,
		0.144668, -0.952606, 0.267605,
		37.690319, 34.128334, 22.907011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322674, 34.672302, 22.815813>,  <37.589050, 34.795158, 22.719687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322674, 34.672302, 22.815813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158440, 34.318874, 22.725716>,  <38.059898, 34.106819, 22.671658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158440, 34.318874, 22.725716>,  <38.322674, 34.672302, 22.815813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158440, 34.318874, 22.725716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664012, -0.120434, -0.737959,
		0.624908, -0.452557, 0.636146,
		-0.410583, -0.883565, -0.225243,
		38.035263, 34.053806, 22.658142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961205, 34.332298, 22.602938>,  <38.322674, 34.672302, 22.815813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961205, 34.332298, 22.602938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662464, 34.086658, 22.500877>,  <38.483219, 33.939274, 22.439642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.662464, 34.086658, 22.500877>,  <38.961205, 34.332298, 22.602938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662464, 34.086658, 22.500877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499704, -0.265101, -0.824632,
		0.438765, -0.743374, 0.504858,
		-0.746848, -0.614098, -0.255150,
		38.438408, 33.902428, 22.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657753, 34.081848, 22.977743>,  <38.961205, 34.332298, 22.602938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657753, 34.081848, 22.977743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995483, 33.917763, 23.115631>,  <40.198124, 33.819309, 23.198364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.995483, 33.917763, 23.115631>,  <39.657753, 34.081848, 22.977743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995483, 33.917763, 23.115631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256811, 0.254828, 0.932261,
		-0.470273, -0.875663, 0.109810,
		0.844329, -0.410217, 0.344718,
		40.248783, 33.794697, 23.219046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439472, 33.595551, 23.461393>,  <39.657753, 34.081848, 22.977743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439472, 33.595551, 23.461393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809452, 33.727276, 23.537310>,  <40.031441, 33.806313, 23.582859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.809452, 33.727276, 23.537310>,  <39.439472, 33.595551, 23.461393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809452, 33.727276, 23.537310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301829, 0.332880, 0.893359,
		0.231019, -0.883596, 0.407294,
		0.924948, 0.329316, 0.189793,
		40.086937, 33.826069, 23.594248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717621, 33.157162, 23.963516>,  <39.439472, 33.595551, 23.461393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717621, 33.157162, 23.963516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928059, 33.496555, 23.986465>,  <40.054321, 33.700191, 24.000235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928059, 33.496555, 23.986465>,  <39.717621, 33.157162, 23.963516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928059, 33.496555, 23.986465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250411, 0.090083, 0.963940,
		0.812724, -0.521490, 0.259863,
		0.526094, 0.848489, 0.057374,
		40.085888, 33.751102, 24.003677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112736, 33.144745, 24.654358>,  <39.717621, 33.157162, 23.963516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112736, 33.144745, 24.654358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124462, 33.534397, 24.564720>,  <40.131496, 33.768188, 24.510937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124462, 33.534397, 24.564720>,  <40.112736, 33.144745, 24.654358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124462, 33.534397, 24.564720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260231, 0.223896, 0.939228,
		0.965101, 0.030785, 0.260061,
		0.029313, 0.974127, -0.224094,
		40.133255, 33.826633, 24.497492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400406, 33.470692, 25.221415>,  <40.112736, 33.144745, 24.654358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400406, 33.470692, 25.221415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196671, 33.756073, 25.028933>,  <40.074429, 33.927303, 24.913443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196671, 33.756073, 25.028933>,  <40.400406, 33.470692, 25.221415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196671, 33.756073, 25.028933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491828, 0.217521, 0.843084,
		0.706172, 0.666086, 0.240103,
		-0.509339, 0.713452, -0.481207,
		40.043869, 33.970108, 24.884571>
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
