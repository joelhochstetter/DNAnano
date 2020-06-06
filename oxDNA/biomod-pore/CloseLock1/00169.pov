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
	<24.561594, 34.976776, 35.155949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611961, 34.862030, 34.776085>,  <24.642181, 34.793182, 34.548168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611961, 34.862030, 34.776085>,  <24.561594, 34.976776, 35.155949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611961, 34.862030, 34.776085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545993, -0.779208, 0.307776,
		-0.828273, -0.557261, 0.058511,
		0.125920, -0.286869, -0.949658,
		24.649736, 34.775970, 34.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204395, 35.411854, 35.394875>,  <24.561594, 34.976776, 35.155949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204395, 35.411854, 35.394875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554249, 35.356888, 35.580833>,  <25.764162, 35.323910, 35.692410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554249, 35.356888, 35.580833>,  <25.204395, 35.411854, 35.394875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554249, 35.356888, 35.580833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299742, -0.906994, 0.295834,
		0.381009, -0.398096, -0.834477,
		0.874635, -0.137412, 0.464899,
		25.816639, 35.315662, 35.720303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524855, 34.841633, 35.116028>,  <25.204395, 35.411854, 35.394875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524855, 34.841633, 35.116028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623474, 34.890167, 35.500629>,  <25.682646, 34.919289, 35.731392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623474, 34.890167, 35.500629>,  <25.524855, 34.841633, 35.116028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623474, 34.890167, 35.500629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438354, -0.870877, 0.222305,
		0.864326, -0.476288, -0.161523,
		0.246548, 0.121340, 0.961505,
		25.697439, 34.926571, 35.789082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924374, 34.273052, 35.391582>,  <25.524855, 34.841633, 35.116028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924374, 34.273052, 35.391582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721035, 34.460285, 35.680714>,  <25.599031, 34.572624, 35.854195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721035, 34.460285, 35.680714>,  <25.924374, 34.273052, 35.391582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721035, 34.460285, 35.680714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534884, -0.829453, 0.160956,
		0.674896, -0.304810, 0.672017,
		-0.508345, 0.468079, 0.722832,
		25.568531, 34.600708, 35.897564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.758926, 33.794815, 35.838871>,  <25.924374, 34.273052, 35.391582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.758926, 33.794815, 35.838871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473637, 34.046806, 35.961800>,  <25.302464, 34.198002, 36.035557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473637, 34.046806, 35.961800>,  <25.758926, 33.794815, 35.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473637, 34.046806, 35.961800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627329, -0.769286, 0.121068,
		0.312686, -0.106441, 0.943874,
		-0.713222, 0.629975, 0.307319,
		25.259670, 34.235798, 36.053997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439022, 33.709721, 36.582924>,  <25.758926, 33.794815, 35.838871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439022, 33.709721, 36.582924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152195, 33.820274, 36.326977>,  <24.980099, 33.886608, 36.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152195, 33.820274, 36.326977>,  <25.439022, 33.709721, 36.582924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152195, 33.820274, 36.326977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605862, -0.701027, 0.376156,
		-0.344597, 0.657397, 0.670136,
		-0.717067, 0.276388, -0.639863,
		24.937075, 33.903191, 36.135017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883553, 34.356701, 36.674034>,  <25.439022, 33.709721, 36.582924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883553, 34.356701, 36.674034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132906, 34.633236, 36.820156>,  <26.282518, 34.799156, 36.907829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132906, 34.633236, 36.820156>,  <25.883553, 34.356701, 36.674034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132906, 34.633236, 36.820156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360001, -0.160972, 0.918960,
		0.694112, -0.704377, 0.148534,
		0.623384, 0.691334, 0.365309,
		26.319921, 34.840637, 36.929749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206755, 34.022156, 37.159050>,  <25.883553, 34.356701, 36.674034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206755, 34.022156, 37.159050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234114, 34.414440, 37.232296>,  <26.250528, 34.649811, 37.276241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234114, 34.414440, 37.232296>,  <26.206755, 34.022156, 37.159050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234114, 34.414440, 37.232296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118834, -0.174227, 0.977509,
		0.990556, -0.088619, 0.104625,
		0.068397, 0.980710, 0.183113,
		26.254633, 34.708652, 37.287231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591177, 34.032921, 37.781219>,  <26.206755, 34.022156, 37.159050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591177, 34.032921, 37.781219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430218, 34.398319, 37.757214>,  <26.333643, 34.617558, 37.742809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430218, 34.398319, 37.757214>,  <26.591177, 34.032921, 37.781219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430218, 34.398319, 37.757214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201090, -0.024241, 0.979273,
		0.893107, 0.406125, 0.193449,
		-0.402397, 0.913496, -0.060018,
		26.309498, 34.672367, 37.739208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984423, 34.438522, 38.209343>,  <26.591177, 34.032921, 37.781219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984423, 34.438522, 38.209343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631701, 34.624332, 38.176765>,  <26.420067, 34.735821, 38.157219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631701, 34.624332, 38.176765>,  <26.984423, 34.438522, 38.209343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631701, 34.624332, 38.176765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104947, -0.024913, 0.994166,
		0.459788, 0.885208, 0.070720,
		-0.881806, 0.464527, -0.081445,
		26.367159, 34.763691, 38.152332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985359, 34.925163, 38.697346>,  <26.984423, 34.438522, 38.209343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985359, 34.925163, 38.697346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593712, 34.913097, 38.616924>,  <26.358725, 34.905857, 38.568672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593712, 34.913097, 38.616924>,  <26.985359, 34.925163, 38.697346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593712, 34.913097, 38.616924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199568, -0.045997, 0.978804,
		-0.038772, 0.998486, 0.039017,
		-0.979117, -0.030164, -0.201049,
		26.299976, 34.904049, 38.556610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718067, 35.497585, 38.934895>,  <26.985359, 34.925163, 38.697346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718067, 35.497585, 38.934895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414234, 35.237705, 38.922798>,  <26.231934, 35.081776, 38.915539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414234, 35.237705, 38.922798>,  <26.718067, 35.497585, 38.934895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414234, 35.237705, 38.922798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131364, 0.107709, 0.985466,
		-0.637004, 0.752517, -0.167162,
		-0.759585, -0.649705, -0.030242,
		26.186359, 35.042793, 38.913727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070061, 35.810528, 39.394672>,  <26.718067, 35.497585, 38.934895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070061, 35.810528, 39.394672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007578, 35.420059, 39.334427>,  <25.970089, 35.185776, 39.298279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007578, 35.420059, 39.334427>,  <26.070061, 35.810528, 39.394672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007578, 35.420059, 39.334427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307194, -0.096909, 0.946700,
		-0.938739, 0.194149, -0.284737,
		-0.156207, -0.976174, -0.150613,
		25.960716, 35.127209, 39.289242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370047, 35.703140, 39.623940>,  <26.070061, 35.810528, 39.394672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370047, 35.703140, 39.623940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551544, 35.346771, 39.616264>,  <25.660442, 35.132950, 39.611660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551544, 35.346771, 39.616264>,  <25.370047, 35.703140, 39.623940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551544, 35.346771, 39.616264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457921, -0.251581, 0.852652,
		-0.764477, -0.378099, -0.522127,
		0.453744, -0.890926, -0.019188,
		25.687668, 35.079494, 39.610508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912880, 35.307053, 39.939873>,  <25.370047, 35.703140, 39.623940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912880, 35.307053, 39.939873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226362, 35.058704, 39.947136>,  <25.414452, 34.909695, 39.951492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.226362, 35.058704, 39.947136>,  <24.912880, 35.307053, 39.939873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226362, 35.058704, 39.947136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163188, -0.177613, 0.970476,
		-0.599312, -0.763530, -0.240515,
		0.783706, -0.620867, 0.018153,
		25.461473, 34.872444, 39.952583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612379, 34.699646, 40.145573>,  <24.912880, 35.307053, 39.939873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612379, 34.699646, 40.145573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004290, 34.725185, 40.221424>,  <25.239435, 34.740509, 40.266937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004290, 34.725185, 40.221424>,  <24.612379, 34.699646, 40.145573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004290, 34.725185, 40.221424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176608, -0.169549, 0.969568,
		0.094061, -0.983451, -0.154843,
		0.979776, 0.063852, 0.189633,
		25.298223, 34.744339, 40.278313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629932, 34.280357, 40.699665>,  <24.612379, 34.699646, 40.145573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629932, 34.280357, 40.699665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987551, 34.458431, 40.719666>,  <25.202122, 34.565273, 40.731667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987551, 34.458431, 40.719666>,  <24.629932, 34.280357, 40.699665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987551, 34.458431, 40.719666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056660, 0.001649, 0.998392,
		0.444382, -0.895439, 0.026698,
		0.894044, 0.445181, 0.050003,
		25.255764, 34.591984, 40.734665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050636, 33.872276, 41.164474>,  <24.629932, 34.280357, 40.699665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050636, 33.872276, 41.164474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253592, 34.216915, 41.158649>,  <25.375364, 34.423698, 41.155155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253592, 34.216915, 41.158649>,  <25.050636, 33.872276, 41.164474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253592, 34.216915, 41.158649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001278, 0.017657, 0.999843,
		0.861718, -0.507288, 0.010060,
		0.507386, 0.861596, -0.014567,
		25.405807, 34.475395, 41.154278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547457, 33.798771, 41.637245>,  <25.050636, 33.872276, 41.164474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547457, 33.798771, 41.637245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504519, 34.194263, 41.595505>,  <25.478756, 34.431561, 41.570461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504519, 34.194263, 41.595505>,  <25.547457, 33.798771, 41.637245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504519, 34.194263, 41.595505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025356, 0.107650, 0.993866,
		0.993898, 0.104041, -0.036626,
		-0.107345, 0.988730, -0.104355,
		25.472315, 34.490883, 41.564198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090542, 34.074913, 41.948181>,  <25.547457, 33.798771, 41.637245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090542, 34.074913, 41.948181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817699, 34.367409, 41.949692>,  <25.653994, 34.542908, 41.950600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817699, 34.367409, 41.949692>,  <26.090542, 34.074913, 41.948181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817699, 34.367409, 41.949692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114355, 0.101569, 0.988234,
		0.722255, 0.674514, -0.152902,
		-0.682108, 0.731242, 0.003776,
		25.613068, 34.586781, 41.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388515, 34.583172, 42.369812>,  <26.090542, 34.074913, 41.948181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388515, 34.583172, 42.369812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990179, 34.613457, 42.349533>,  <25.751177, 34.631630, 42.337368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990179, 34.613457, 42.349533>,  <26.388515, 34.583172, 42.369812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990179, 34.613457, 42.349533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039389, 0.143963, 0.988799,
		0.082164, 0.986682, -0.140382,
		-0.995840, 0.075714, -0.050693,
		25.691427, 34.636169, 42.334324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241535, 35.131523, 42.848125>,  <26.388515, 34.583172, 42.369812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241535, 35.131523, 42.848125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908178, 34.915291, 42.802116>,  <25.708164, 34.785553, 42.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908178, 34.915291, 42.802116>,  <26.241535, 35.131523, 42.848125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908178, 34.915291, 42.802116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248715, 0.180982, 0.951518,
		-0.493554, 0.821596, -0.285279,
		-0.833394, -0.540579, -0.115019,
		25.658159, 34.753117, 42.767612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736055, 35.615536, 43.260120>,  <26.241535, 35.131523, 42.848125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736055, 35.615536, 43.260120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590916, 35.245823, 43.212704>,  <25.503832, 35.023994, 43.184254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590916, 35.245823, 43.212704>,  <25.736055, 35.615536, 43.260120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590916, 35.245823, 43.212704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285151, -0.010978, 0.958420,
		-0.887148, 0.381562, -0.259575,
		-0.362847, -0.924278, -0.118542,
		25.482061, 34.968540, 43.177143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051609, 35.655151, 43.515980>,  <25.736055, 35.615536, 43.260120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051609, 35.655151, 43.515980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172140, 35.274040, 43.531006>,  <25.244459, 35.045372, 43.540024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172140, 35.274040, 43.531006>,  <25.051609, 35.655151, 43.515980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172140, 35.274040, 43.531006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131274, -0.002430, 0.991343,
		-0.944440, -0.303653, -0.125808,
		0.301330, -0.952780, 0.037567,
		25.262539, 34.988205, 43.542274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560173, 35.361656, 43.961746>,  <25.051609, 35.655151, 43.515980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560173, 35.361656, 43.961746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857460, 35.094173, 43.953136>,  <25.035831, 34.933685, 43.947971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857460, 35.094173, 43.953136>,  <24.560173, 35.361656, 43.961746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857460, 35.094173, 43.953136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013790, -0.047482, 0.998777,
		-0.668908, -0.742012, -0.044511,
		0.743218, -0.668703, -0.021529,
		25.080425, 34.893562, 43.946678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440559, 34.563507, 43.937534>,  <24.560173, 35.361656, 43.961746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440559, 34.563507, 43.937534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754923, 34.706108, 44.139626>,  <24.943541, 34.791668, 44.260880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754923, 34.706108, 44.139626>,  <24.440559, 34.563507, 43.937534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754923, 34.706108, 44.139626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411484, -0.308361, 0.857668,
		0.461552, -0.881942, -0.095649,
		0.785908, 0.356500, 0.505229,
		24.990696, 34.813057, 44.291195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760965, 34.109703, 44.445377>,  <24.440559, 34.563507, 43.937534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760965, 34.109703, 44.445377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828102, 34.481209, 44.577576>,  <24.868383, 34.704113, 44.656895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828102, 34.481209, 44.577576>,  <24.760965, 34.109703, 44.445377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828102, 34.481209, 44.577576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363495, -0.253322, 0.896492,
		0.916352, -0.270601, 0.295084,
		0.167840, 0.928764, 0.330495,
		24.878454, 34.759838, 44.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018276, 33.917591, 45.154961>,  <24.760965, 34.109703, 44.445377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018276, 33.917591, 45.154961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891428, 34.296520, 45.172924>,  <24.815319, 34.523876, 45.183701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891428, 34.296520, 45.172924>,  <25.018276, 33.917591, 45.154961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891428, 34.296520, 45.172924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151950, -0.097491, 0.983568,
		0.936134, 0.305086, 0.174862,
		-0.317120, 0.947322, 0.044907,
		24.796291, 34.580715, 45.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.189278, 33.307098, 45.635078>,  <25.018276, 33.917591, 45.154961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.189278, 33.307098, 45.635078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963333, 32.997707, 45.750088>,  <24.827766, 32.812073, 45.819096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963333, 32.997707, 45.750088>,  <25.189278, 33.307098, 45.635078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963333, 32.997707, 45.750088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256075, -0.495542, -0.829978,
		0.784448, -0.395193, 0.477979,
		-0.564860, -0.773473, 0.287527,
		24.793875, 32.765667, 45.836346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594791, 32.673519, 45.552258>,  <25.189278, 33.307098, 45.635078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594791, 32.673519, 45.552258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198812, 32.632259, 45.513557>,  <24.961226, 32.607502, 45.490337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198812, 32.632259, 45.513557>,  <25.594791, 32.673519, 45.552258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198812, 32.632259, 45.513557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137290, -0.536691, -0.832535,
		0.033952, -0.837450, 0.545459,
		-0.989949, -0.103152, -0.096751,
		24.901829, 32.601315, 45.484531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338934, 31.987438, 45.470383>,  <25.594791, 32.673519, 45.552258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338934, 31.987438, 45.470383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087433, 32.241890, 45.291492>,  <24.936531, 32.394562, 45.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087433, 32.241890, 45.291492>,  <25.338934, 31.987438, 45.470383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087433, 32.241890, 45.291492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214466, -0.410960, -0.886068,
		-0.747444, -0.653033, 0.121965,
		-0.628754, 0.636129, -0.447222,
		24.898806, 32.432728, 45.157326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064606, 31.796827, 45.835087>,  <25.338934, 31.987438, 45.470383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064606, 31.796827, 45.835087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254639, 32.064739, 46.063366>,  <26.368658, 32.225487, 46.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254639, 32.064739, 46.063366>,  <26.064606, 31.796827, 45.835087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254639, 32.064739, 46.063366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755113, 0.022667, -0.655203,
		-0.451777, 0.742215, -0.494990,
		0.475081, 0.669779, 0.570696,
		26.397163, 32.265675, 46.234573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317842, 32.340412, 45.402660>,  <26.064606, 31.796827, 45.835087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317842, 32.340412, 45.402660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532915, 32.266071, 45.731625>,  <26.661959, 32.221466, 45.929005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532915, 32.266071, 45.731625>,  <26.317842, 32.340412, 45.402660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532915, 32.266071, 45.731625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842660, 0.085267, -0.531651,
		0.028686, 0.978870, 0.202460,
		0.537681, -0.185856, 0.822409,
		26.694220, 32.210316, 45.978348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753174, 32.961594, 45.675560>,  <26.317842, 32.340412, 45.402660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753174, 32.961594, 45.675560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992743, 32.651714, 45.756680>,  <27.136484, 32.465786, 45.805351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992743, 32.651714, 45.756680>,  <26.753174, 32.961594, 45.675560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992743, 32.651714, 45.756680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676216, 0.353596, -0.646299,
		0.428978, 0.524221, 0.735642,
		0.598924, -0.774701, 0.202802,
		27.172421, 32.419304, 45.817520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330540, 33.158836, 45.914989>,  <26.753174, 32.961594, 45.675560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330540, 33.158836, 45.914989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390305, 32.822186, 45.707397>,  <27.426163, 32.620193, 45.582844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390305, 32.822186, 45.707397>,  <27.330540, 33.158836, 45.914989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390305, 32.822186, 45.707397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407427, 0.530643, -0.743250,
		0.900933, -0.100395, 0.422186,
		0.149412, -0.841629, -0.518977,
		27.435127, 32.569698, 45.551704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934168, 33.336155, 45.537201>,  <27.330540, 33.158836, 45.914989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934168, 33.336155, 45.537201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776880, 33.009918, 45.367401>,  <27.682508, 32.814178, 45.265522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776880, 33.009918, 45.367401>,  <27.934168, 33.336155, 45.537201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776880, 33.009918, 45.367401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492296, 0.203175, -0.846383,
		0.776547, -0.541790, 0.321619,
		-0.393217, -0.815588, -0.424496,
		27.658915, 32.765244, 45.240051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408794, 33.077274, 45.108009>,  <27.934168, 33.336155, 45.537201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408794, 33.077274, 45.108009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078236, 32.898487, 44.971024>,  <27.879900, 32.791214, 44.888832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078236, 32.898487, 44.971024>,  <28.408794, 33.077274, 45.108009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078236, 32.898487, 44.971024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367868, 0.031902, -0.929331,
		0.426309, -0.893980, 0.138062,
		-0.826398, -0.446970, -0.342467,
		27.830317, 32.764397, 44.868282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711269, 32.486942, 44.679581>,  <28.408794, 33.077274, 45.108009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711269, 32.486942, 44.679581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324627, 32.550232, 44.598942>,  <28.092642, 32.588207, 44.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324627, 32.550232, 44.598942>,  <28.711269, 32.486942, 44.679581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324627, 32.550232, 44.598942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218223, 0.095741, -0.971191,
		-0.134365, -0.982751, -0.127072,
		-0.966605, 0.158224, -0.201594,
		28.034645, 32.597698, 44.538464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606018, 32.014236, 44.206234>,  <28.711269, 32.486942, 44.679581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606018, 32.014236, 44.206234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343052, 32.314125, 44.175999>,  <28.185272, 32.494061, 44.157856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343052, 32.314125, 44.175999>,  <28.606018, 32.014236, 44.206234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343052, 32.314125, 44.175999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391426, 0.254062, -0.884442,
		-0.643886, -0.611034, -0.460487,
		-0.657417, 0.749726, -0.075588,
		28.145826, 32.539043, 44.153324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749666, 32.215343, 43.562798>,  <28.606018, 32.014236, 44.206234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749666, 32.215343, 43.562798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454195, 32.476982, 43.627922>,  <28.276913, 32.633965, 43.666996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.454195, 32.476982, 43.627922>,  <28.749666, 32.215343, 43.562798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454195, 32.476982, 43.627922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196619, 0.440118, -0.876149,
		-0.644744, -0.615182, -0.453714,
		-0.738679, 0.654100, 0.162807,
		28.232592, 32.673214, 43.676765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034575, 32.165836, 43.015800>,  <28.749666, 32.215343, 43.562798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034575, 32.165836, 43.015800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136843, 32.515179, 43.181633>,  <28.198204, 32.724785, 43.281132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136843, 32.515179, 43.181633>,  <28.034575, 32.165836, 43.015800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136843, 32.515179, 43.181633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164675, 0.383225, -0.908857,
		-0.952636, 0.300638, -0.045842,
		0.255669, 0.873359, 0.414581,
		28.213543, 32.777187, 43.306007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742220, 32.617130, 42.550308>,  <28.034575, 32.165836, 43.015800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742220, 32.617130, 42.550308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005859, 32.832203, 42.760639>,  <28.164043, 32.961246, 42.886837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005859, 32.832203, 42.760639>,  <27.742220, 32.617130, 42.550308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005859, 32.832203, 42.760639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059061, 0.660013, -0.748929,
		-0.749735, 0.524673, 0.403257,
		0.659097, 0.537681, 0.525823,
		28.203588, 32.993507, 42.918385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669960, 33.342453, 42.418945>,  <27.742220, 32.617130, 42.550308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669960, 33.342453, 42.418945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037180, 33.340599, 42.577518>,  <28.257513, 33.339485, 42.672665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037180, 33.340599, 42.577518>,  <27.669960, 33.342453, 42.418945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037180, 33.340599, 42.577518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292034, 0.684195, -0.668276,
		-0.268139, 0.729284, 0.629481,
		0.918051, -0.004639, 0.396435,
		28.312595, 33.339207, 42.696449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894123, 33.969524, 42.452145>,  <27.669960, 33.342453, 42.418945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894123, 33.969524, 42.452145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238920, 33.766781, 42.455296>,  <28.445799, 33.645134, 42.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238920, 33.766781, 42.455296>,  <27.894123, 33.969524, 42.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238920, 33.766781, 42.455296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293701, 0.486690, -0.822723,
		0.413172, 0.711494, 0.568388,
		0.861991, -0.506862, 0.007880,
		28.497517, 33.614723, 42.457661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445818, 34.472824, 42.473217>,  <27.894123, 33.969524, 42.452145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445818, 34.472824, 42.473217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635441, 34.148296, 42.336380>,  <28.749214, 33.953579, 42.254280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635441, 34.148296, 42.336380>,  <28.445818, 34.472824, 42.473217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635441, 34.148296, 42.336380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219275, 0.485065, -0.846540,
		0.852752, 0.326298, 0.407852,
		0.474059, -0.811321, -0.342091,
		28.777658, 33.904900, 42.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975000, 34.744938, 42.084602>,  <28.445818, 34.472824, 42.473217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975000, 34.744938, 42.084602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938120, 34.359764, 41.983208>,  <28.915993, 34.128658, 41.922371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938120, 34.359764, 41.983208>,  <28.975000, 34.744938, 42.084602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938120, 34.359764, 41.983208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222733, 0.228180, -0.947800,
		0.970510, -0.143848, 0.193439,
		-0.092200, -0.962934, -0.253491,
		28.910460, 34.070885, 41.907162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611349, 34.643326, 41.692932>,  <28.975000, 34.744938, 42.084602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611349, 34.643326, 41.692932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325722, 34.374588, 41.614216>,  <29.154345, 34.213345, 41.566986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325722, 34.374588, 41.614216>,  <29.611349, 34.643326, 41.692932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325722, 34.374588, 41.614216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095595, 0.184893, -0.978098,
		0.693518, -0.717242, -0.067801,
		-0.714070, -0.671847, -0.196791,
		29.111502, 34.173035, 41.555180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919641, 34.233311, 41.149216>,  <29.611349, 34.643326, 41.692932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919641, 34.233311, 41.149216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520365, 34.210506, 41.141590>,  <29.280798, 34.196823, 41.137016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520365, 34.210506, 41.141590>,  <29.919641, 34.233311, 41.149216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520365, 34.210506, 41.141590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002933, 0.270597, -0.962688,
		0.060036, -0.961003, -0.269941,
		-0.998192, -0.057004, -0.019064,
		29.220907, 34.193405, 41.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733519, 33.863865, 40.507362>,  <29.919641, 34.233311, 41.149216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733519, 33.863865, 40.507362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411036, 34.072239, 40.619545>,  <29.217546, 34.197266, 40.686855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411036, 34.072239, 40.619545>,  <29.733519, 33.863865, 40.507362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411036, 34.072239, 40.619545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151749, 0.276099, -0.949074,
		-0.571842, -0.807708, -0.143541,
		-0.806206, 0.520939, 0.280454,
		29.169174, 34.228519, 40.703682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310688, 33.695274, 39.876244>,  <29.733519, 33.863865, 40.507362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310688, 33.695274, 39.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104918, 33.980213, 40.067207>,  <28.981455, 34.151176, 40.181786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104918, 33.980213, 40.067207>,  <29.310688, 33.695274, 39.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104918, 33.980213, 40.067207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174563, 0.458082, -0.871601,
		-0.839579, -0.531715, -0.111300,
		-0.514428, 0.712349, 0.477414,
		28.950588, 34.193916, 40.210430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765085, 33.749599, 39.433002>,  <29.310688, 33.695274, 39.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765085, 33.749599, 39.433002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755888, 34.093616, 39.636883>,  <28.750370, 34.300026, 39.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755888, 34.093616, 39.636883>,  <28.765085, 33.749599, 39.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755888, 34.093616, 39.636883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348184, 0.471024, -0.810496,
		-0.937144, -0.196105, 0.288624,
		-0.022993, 0.860046, 0.509698,
		28.748989, 34.351631, 39.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030222, 34.062702, 39.286854>,  <28.765085, 33.749599, 39.433002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030222, 34.062702, 39.286854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296900, 34.333088, 39.412449>,  <28.456907, 34.495319, 39.487804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296900, 34.333088, 39.412449>,  <28.030222, 34.062702, 39.286854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296900, 34.333088, 39.412449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310230, 0.634722, -0.707733,
		-0.677698, 0.374434, 0.632871,
		0.666696, 0.675964, 0.313989,
		28.496908, 34.535877, 39.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711329, 34.664227, 39.224304>,  <28.030222, 34.062702, 39.286854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711329, 34.664227, 39.224304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095463, 34.773960, 39.244282>,  <28.325943, 34.839802, 39.256268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095463, 34.773960, 39.244282>,  <27.711329, 34.664227, 39.224304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095463, 34.773960, 39.244282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187007, 0.766502, -0.614413,
		-0.206838, 0.580703, 0.787402,
		0.960337, 0.274334, 0.049946,
		28.383564, 34.856258, 39.259266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751051, 35.528740, 39.313728>,  <27.711329, 34.664227, 39.224304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751051, 35.528740, 39.313728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071136, 35.368828, 39.134918>,  <28.263187, 35.272881, 39.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071136, 35.368828, 39.134918>,  <27.751051, 35.528740, 39.313728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071136, 35.368828, 39.134918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055377, 0.692957, -0.718849,
		0.597150, 0.599989, 0.532376,
		0.800216, -0.399779, -0.447025,
		28.311201, 35.248894, 39.000813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156183, 36.118622, 39.169922>,  <27.751051, 35.528740, 39.313728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156183, 36.118622, 39.169922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271778, 35.828163, 38.920376>,  <28.341135, 35.653889, 38.770649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271778, 35.828163, 38.920376>,  <28.156183, 36.118622, 39.169922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271778, 35.828163, 38.920376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087467, 0.668967, -0.738128,
		0.953328, 0.158743, 0.256837,
		0.288988, -0.726143, -0.623860,
		28.358475, 35.610321, 38.733219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868729, 36.393158, 38.932728>,  <28.156183, 36.118622, 39.169922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868729, 36.393158, 38.932728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727585, 36.114220, 38.683182>,  <28.642899, 35.946857, 38.533455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727585, 36.114220, 38.683182>,  <28.868729, 36.393158, 38.932728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727585, 36.114220, 38.683182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235151, 0.579259, -0.780489,
		0.905645, -0.422106, -0.040417,
		-0.352861, -0.697342, -0.623862,
		28.621727, 35.905018, 38.496021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416767, 36.255093, 38.363670>,  <28.868729, 36.393158, 38.932728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416767, 36.255093, 38.363670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068735, 36.141930, 38.202217>,  <28.859915, 36.074032, 38.105343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068735, 36.141930, 38.202217>,  <29.416767, 36.255093, 38.363670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068735, 36.141930, 38.202217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219827, 0.510225, -0.831472,
		0.441171, -0.812180, -0.381749,
		-0.870083, -0.282903, -0.403636,
		28.807711, 36.057056, 38.081127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569452, 36.065609, 37.727139>,  <29.416767, 36.255093, 38.363670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569452, 36.065609, 37.727139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193277, 36.201370, 37.719322>,  <28.967571, 36.282825, 37.714634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193277, 36.201370, 37.719322>,  <29.569452, 36.065609, 37.727139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193277, 36.201370, 37.719322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191580, 0.481618, -0.855185,
		-0.280841, -0.807992, -0.517955,
		-0.940439, 0.339401, -0.019537,
		28.911146, 36.303192, 37.713463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091724, 35.529758, 37.543705>,  <29.569452, 36.065609, 37.727139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091724, 35.529758, 37.543705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208286, 35.878563, 37.386391>,  <30.278223, 36.087845, 37.292004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208286, 35.878563, 37.386391>,  <30.091724, 35.529758, 37.543705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208286, 35.878563, 37.386391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395545, -0.484173, -0.780462,
		-0.870992, 0.071869, -0.486012,
		0.291405, 0.872016, -0.393284,
		30.295708, 36.140167, 37.268406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709707, 35.602715, 36.910759>,  <30.091724, 35.529758, 37.543705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709707, 35.602715, 36.910759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072678, 35.763218, 36.960682>,  <30.290459, 35.859520, 36.990635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072678, 35.763218, 36.960682>,  <29.709707, 35.602715, 36.910759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072678, 35.763218, 36.960682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336897, -0.517151, -0.786800,
		-0.251163, 0.756009, -0.604457,
		0.907424, 0.401255, 0.124808,
		30.344904, 35.883595, 36.998123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085068, 35.323952, 36.300880>,  <29.709707, 35.602715, 36.910759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085068, 35.323952, 36.300880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435276, 35.444225, 36.149590>,  <30.645401, 35.516388, 36.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435276, 35.444225, 36.149590>,  <30.085068, 35.323952, 36.300880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435276, 35.444225, 36.149590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451515, -0.230403, 0.862003,
		0.172045, -0.925475, -0.337485,
		0.875520, 0.300683, -0.378226,
		30.697931, 35.534431, 36.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621370, 34.861092, 36.341949>,  <30.085068, 35.323952, 36.300880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621370, 34.861092, 36.341949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841288, 35.194504, 36.320187>,  <30.973238, 35.394550, 36.307129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841288, 35.194504, 36.320187>,  <30.621370, 34.861092, 36.341949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841288, 35.194504, 36.320187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525758, -0.294708, 0.797951,
		0.649079, -0.467313, -0.600262,
		0.549795, 0.833526, -0.054404,
		31.006226, 35.444561, 36.303864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410025, 34.749672, 36.446030>,  <30.621370, 34.861092, 36.341949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410025, 34.749672, 36.446030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347937, 35.125778, 36.567234>,  <31.310684, 35.351440, 36.639957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347937, 35.125778, 36.567234>,  <31.410025, 34.749672, 36.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347937, 35.125778, 36.567234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457102, -0.203557, 0.865807,
		0.875765, 0.272895, -0.398201,
		-0.155218, 0.940262, 0.303009,
		31.301371, 35.407856, 36.658138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448614, 35.205536, 37.133636>,  <31.410025, 34.749672, 36.446030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448614, 35.205536, 37.133636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530790, 34.967163, 37.444160>,  <31.580095, 34.824139, 37.630474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530790, 34.967163, 37.444160>,  <31.448614, 35.205536, 37.133636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530790, 34.967163, 37.444160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175055, 0.802815, 0.569951,
		-0.962886, 0.018807, 0.269251,
		0.205440, -0.595932, 0.776312,
		31.592422, 34.788383, 37.677055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045200, 35.441029, 37.772984>,  <31.448614, 35.205536, 37.133636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045200, 35.441029, 37.772984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382898, 35.249237, 37.868774>,  <31.585518, 35.134163, 37.926250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382898, 35.249237, 37.868774>,  <31.045200, 35.441029, 37.772984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382898, 35.249237, 37.868774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239384, 0.737122, 0.631938,
		-0.479525, -0.476185, 0.737092,
		0.844246, -0.479478, 0.239478,
		31.636171, 35.105392, 37.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050463, 35.180244, 38.452141>,  <31.045200, 35.441029, 37.772984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050463, 35.180244, 38.452141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443226, 35.198254, 38.378571>,  <31.678885, 35.209061, 38.334431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443226, 35.198254, 38.378571>,  <31.050463, 35.180244, 38.452141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443226, 35.198254, 38.378571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151489, 0.395974, 0.905680,
		0.113603, -0.917158, 0.381990,
		0.981909, 0.045021, -0.183923,
		31.737799, 35.211761, 38.323395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370203, 34.832020, 38.989517>,  <31.050463, 35.180244, 38.452141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370203, 34.832020, 38.989517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662155, 35.063721, 38.844334>,  <31.837326, 35.202744, 38.757225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662155, 35.063721, 38.844334>,  <31.370203, 34.832020, 38.989517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662155, 35.063721, 38.844334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120929, 0.413178, 0.902585,
		0.672795, -0.702670, 0.231521,
		0.729879, 0.579257, -0.362957,
		31.881119, 35.237499, 38.735447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872433, 34.806259, 39.410698>,  <31.370203, 34.832020, 38.989517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872433, 34.806259, 39.410698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977278, 35.142986, 39.221958>,  <32.040184, 35.345020, 39.108715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977278, 35.142986, 39.221958>,  <31.872433, 34.806259, 39.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977278, 35.142986, 39.221958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178177, 0.438324, 0.880979,
		0.948446, -0.314989, -0.035102,
		0.262113, 0.841815, -0.471851,
		32.055912, 35.395531, 39.080402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463436, 34.952896, 39.678814>,  <31.872433, 34.806259, 39.410698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463436, 34.952896, 39.678814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382515, 35.304008, 39.505112>,  <32.333961, 35.514675, 39.400890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382515, 35.304008, 39.505112>,  <32.463436, 34.952896, 39.678814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382515, 35.304008, 39.505112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374050, 0.479063, 0.794094,
		0.905075, -0.001787, -0.425248,
		-0.202302, 0.877779, -0.434256,
		32.321823, 35.567341, 39.374836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155106, 35.361942, 39.758163>,  <32.463436, 34.952896, 39.678814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155106, 35.361942, 39.758163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849854, 35.613613, 39.699154>,  <32.666702, 35.764614, 39.663750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849854, 35.613613, 39.699154>,  <33.155106, 35.361942, 39.758163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849854, 35.613613, 39.699154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245716, 0.493635, 0.834235,
		0.597704, 0.600384, -0.531309,
		-0.763134, 0.629177, -0.147523,
		32.620914, 35.802364, 39.654896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377960, 36.031994, 39.866638>,  <33.155106, 35.361942, 39.758163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377960, 36.031994, 39.866638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985287, 36.089741, 39.916367>,  <32.749683, 36.124390, 39.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985287, 36.089741, 39.916367>,  <33.377960, 36.031994, 39.866638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985287, 36.089741, 39.916367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188141, 0.631754, 0.751991,
		0.030021, 0.761607, -0.647343,
		-0.981683, 0.144367, 0.124324,
		32.690781, 36.133053, 39.953663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390907, 36.672592, 40.004009>,  <33.377960, 36.031994, 39.866638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390907, 36.672592, 40.004009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014378, 36.574348, 40.096607>,  <32.788460, 36.515404, 40.152168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014378, 36.574348, 40.096607>,  <33.390907, 36.672592, 40.004009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014378, 36.574348, 40.096607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088796, 0.481517, 0.871927,
		-0.325621, 0.841320, -0.431454,
		-0.941322, -0.245606, 0.231498,
		32.731979, 36.500668, 40.166058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910378, 37.198475, 39.987473>,  <33.390907, 36.672592, 40.004009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910378, 37.198475, 39.987473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776890, 36.942211, 40.264076>,  <32.696796, 36.788452, 40.430038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776890, 36.942211, 40.264076>,  <32.910378, 37.198475, 39.987473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776890, 36.942211, 40.264076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144108, 0.690265, 0.709061,
		-0.931591, 0.336281, -0.138032,
		-0.333722, -0.640663, 0.691506,
		32.676773, 36.750011, 40.471527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477715, 37.576355, 40.582935>,  <32.910378, 37.198475, 39.987473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477715, 37.576355, 40.582935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518803, 37.229061, 40.777096>,  <32.543457, 37.020683, 40.893593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518803, 37.229061, 40.777096>,  <32.477715, 37.576355, 40.582935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518803, 37.229061, 40.777096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128876, 0.495486, 0.859002,
		-0.986326, -0.025684, 0.162793,
		0.102724, -0.868236, 0.485401,
		32.549622, 36.968590, 40.922714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001919, 37.488922, 41.176376>,  <32.477715, 37.576355, 40.582935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001919, 37.488922, 41.176376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297337, 37.226524, 41.238632>,  <32.474586, 37.069084, 41.275986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297337, 37.226524, 41.238632>,  <32.001919, 37.488922, 41.176376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297337, 37.226524, 41.238632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021264, 0.208074, 0.977882,
		-0.673874, -0.725515, 0.139722,
		0.738540, -0.655998, 0.155643,
		32.518898, 37.029724, 41.285324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863321, 37.187222, 41.795193>,  <32.001919, 37.488922, 41.176376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863321, 37.187222, 41.795193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249664, 37.095066, 41.747799>,  <32.481472, 37.039772, 41.719364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249664, 37.095066, 41.747799>,  <31.863321, 37.187222, 41.795193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249664, 37.095066, 41.747799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159182, 0.166931, 0.973034,
		-0.204398, -0.958674, 0.197906,
		0.965859, -0.230389, -0.118483,
		32.539421, 37.025951, 41.712254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993279, 36.552982, 42.174870>,  <31.863321, 37.187222, 41.795193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993279, 36.552982, 42.174870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337608, 36.751694, 42.130707>,  <32.544209, 36.870922, 42.104210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337608, 36.751694, 42.130707>,  <31.993279, 36.552982, 42.174870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337608, 36.751694, 42.130707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112711, 0.025441, 0.993302,
		0.496260, -0.867504, -0.034092,
		0.860826, 0.496779, -0.110402,
		32.595856, 36.900726, 42.097588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408859, 36.286858, 42.673069>,  <31.993279, 36.552982, 42.174870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408859, 36.286858, 42.673069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584766, 36.633877, 42.580143>,  <32.690311, 36.842087, 42.524387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584766, 36.633877, 42.580143>,  <32.408859, 36.286858, 42.673069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584766, 36.633877, 42.580143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203050, 0.155935, 0.966672,
		0.874857, -0.472283, -0.107579,
		0.439768, 0.867544, -0.232318,
		32.716698, 36.894138, 42.510448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002899, 36.316307, 43.018131>,  <32.408859, 36.286858, 42.673069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002899, 36.316307, 43.018131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000149, 36.706669, 42.930901>,  <32.998497, 36.940887, 42.878563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000149, 36.706669, 42.930901>,  <33.002899, 36.316307, 43.018131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000149, 36.706669, 42.930901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265490, 0.212034, 0.940509,
		0.964089, -0.051430, -0.260552,
		-0.006876, 0.975908, -0.218073,
		32.998085, 36.999443, 42.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690926, 36.656536, 43.215363>,  <33.002899, 36.316307, 43.018131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690926, 36.656536, 43.215363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435421, 36.963448, 43.192482>,  <33.282120, 37.147594, 43.178753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435421, 36.963448, 43.192482>,  <33.690926, 36.656536, 43.215363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435421, 36.963448, 43.192482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368553, 0.370392, 0.852630,
		0.675390, 0.523545, -0.519373,
		-0.638762, 0.767275, -0.057205,
		33.243793, 37.193630, 43.175320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033871, 37.217064, 43.576199>,  <33.690926, 36.656536, 43.215363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033871, 37.217064, 43.576199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655529, 37.346886, 43.574181>,  <33.428524, 37.424778, 43.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655529, 37.346886, 43.574181>,  <34.033871, 37.217064, 43.576199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655529, 37.346886, 43.574181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130252, 0.393735, 0.909949,
		0.297315, 0.860021, -0.414689,
		-0.945853, 0.324556, -0.005043,
		33.371773, 37.444252, 43.572666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989357, 37.861877, 43.867851>,  <34.033871, 37.217064, 43.576199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989357, 37.861877, 43.867851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613636, 37.737598, 43.926048>,  <33.388203, 37.663029, 43.960968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613636, 37.737598, 43.926048>,  <33.989357, 37.861877, 43.867851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613636, 37.737598, 43.926048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027425, 0.354726, 0.934568,
		-0.341980, 0.881836, -0.324676,
		-0.939307, -0.310700, 0.145494,
		33.331844, 37.644390, 43.969696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617439, 38.326569, 44.309879>,  <33.989357, 37.861877, 43.867851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617439, 38.326569, 44.309879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398273, 37.996883, 44.367104>,  <33.266773, 37.799072, 44.401440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398273, 37.996883, 44.367104>,  <33.617439, 38.326569, 44.309879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398273, 37.996883, 44.367104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159277, 0.270672, 0.949404,
		-0.821232, 0.497405, -0.279583,
		-0.547914, -0.824211, 0.143060,
		33.233898, 37.749619, 44.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987053, 38.556965, 44.501461>,  <33.617439, 38.326569, 44.309879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987053, 38.556965, 44.501461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956009, 38.174484, 44.614361>,  <32.937382, 37.944996, 44.682098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956009, 38.174484, 44.614361>,  <32.987053, 38.556965, 44.501461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956009, 38.174484, 44.614361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367432, 0.290607, 0.883483,
		-0.926806, -0.035139, -0.373892,
		-0.077611, -0.956197, 0.282247,
		32.932724, 37.887627, 44.699036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272446, 38.305122, 44.584976>,  <32.987053, 38.556965, 44.501461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272446, 38.305122, 44.584976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532757, 38.113194, 44.820354>,  <32.688942, 37.998035, 44.961582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532757, 38.113194, 44.820354>,  <32.272446, 38.305122, 44.584976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532757, 38.113194, 44.820354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345771, 0.502699, 0.792298,
		-0.675969, -0.719075, 0.161236,
		0.650775, -0.479818, 0.588444,
		32.727989, 37.969250, 44.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938438, 38.256668, 45.204727>,  <32.272446, 38.305122, 44.584976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938438, 38.256668, 45.204727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310638, 38.162426, 45.316914>,  <32.533958, 38.105881, 45.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310638, 38.162426, 45.316914>,  <31.938438, 38.256668, 45.204727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310638, 38.162426, 45.316914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148541, 0.457187, 0.876878,
		-0.334819, -0.857597, 0.390417,
		0.930501, -0.235602, 0.280463,
		32.589790, 38.091743, 45.401051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917852, 38.197224, 45.871338>,  <31.938438, 38.256668, 45.204727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917852, 38.197224, 45.871338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300041, 38.282848, 45.790100>,  <32.529354, 38.334221, 45.741356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300041, 38.282848, 45.790100>,  <31.917852, 38.197224, 45.871338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300041, 38.282848, 45.790100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012807, 0.657554, 0.753298,
		0.294799, -0.722358, 0.625534,
		0.955473, 0.214060, -0.203097,
		32.586685, 38.347065, 45.729172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226635, 38.077976, 46.567711>,  <31.917852, 38.197224, 45.871338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226635, 38.077976, 46.567711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495045, 38.293163, 46.363625>,  <32.656090, 38.422276, 46.241173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495045, 38.293163, 46.363625>,  <32.226635, 38.077976, 46.567711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495045, 38.293163, 46.363625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058639, 0.647487, 0.759817,
		0.739115, -0.539773, 0.402932,
		0.671022, 0.537965, -0.510219,
		32.696350, 38.454552, 46.210560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718082, 38.380638, 47.110222>,  <32.226635, 38.077976, 46.567711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718082, 38.380638, 47.110222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833702, 38.598614, 46.795391>,  <32.903072, 38.729397, 46.606491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833702, 38.598614, 46.795391>,  <32.718082, 38.380638, 47.110222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833702, 38.598614, 46.795391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242484, 0.753686, 0.610867,
		0.926096, -0.367423, 0.085712,
		0.289047, 0.544937, -0.787080,
		32.920418, 38.762096, 46.559265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303257, 38.760677, 47.253506>,  <32.718082, 38.380638, 47.110222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303257, 38.760677, 47.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156948, 38.973507, 46.948059>,  <33.069164, 39.101204, 46.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156948, 38.973507, 46.948059>,  <33.303257, 38.760677, 47.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156948, 38.973507, 46.948059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139339, 0.842527, 0.520319,
		0.920214, 0.083918, -0.382313,
		-0.365773, 0.532077, -0.763613,
		33.047215, 39.133129, 46.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767262, 39.194241, 47.211117>,  <33.303257, 38.760677, 47.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767262, 39.194241, 47.211117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428307, 39.347450, 47.064026>,  <33.224934, 39.439377, 46.975769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428307, 39.347450, 47.064026>,  <33.767262, 39.194241, 47.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428307, 39.347450, 47.064026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124559, 0.816628, 0.563563,
		0.516159, 0.431752, -0.739710,
		-0.847387, 0.383026, -0.367731,
		33.174091, 39.462357, 46.953705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949108, 39.958633, 46.998337>,  <33.767262, 39.194241, 47.211117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949108, 39.958633, 46.998337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556873, 39.918747, 47.065876>,  <33.321533, 39.894817, 47.106400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556873, 39.918747, 47.065876>,  <33.949108, 39.958633, 46.998337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556873, 39.918747, 47.065876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007039, 0.878404, 0.477867,
		-0.195962, 0.467402, -0.862053,
		-0.980586, -0.099712, 0.168843,
		33.262699, 39.888832, 47.116528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591568, 40.522617, 46.652950>,  <33.949108, 39.958633, 46.998337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591568, 40.522617, 46.652950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377407, 40.367413, 46.953026>,  <33.248909, 40.274292, 47.133072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377407, 40.367413, 46.953026>,  <33.591568, 40.522617, 46.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377407, 40.367413, 46.953026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021572, 0.881657, 0.471398,
		-0.844319, 0.268573, -0.463675,
		-0.535407, -0.388008, 0.750193,
		33.216785, 40.251011, 47.178085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131847, 41.156555, 46.897346>,  <33.591568, 40.522617, 46.652950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131847, 41.156555, 46.897346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119446, 40.877998, 47.184143>,  <33.112003, 40.710865, 47.356220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119446, 40.877998, 47.184143>,  <33.131847, 41.156555, 46.897346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119446, 40.877998, 47.184143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134853, 0.707861, 0.693359,
		-0.990380, 0.118187, 0.071962,
		-0.031007, -0.696393, 0.716990,
		33.110146, 40.669079, 47.399239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650124, 41.423100, 47.435730>,  <33.131847, 41.156555, 46.897346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650124, 41.423100, 47.435730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833130, 41.117237, 47.617271>,  <32.942936, 40.933720, 47.726196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833130, 41.117237, 47.617271>,  <32.650124, 41.423100, 47.435730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833130, 41.117237, 47.617271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263055, 0.603951, 0.752360,
		-0.849399, -0.224831, 0.477465,
		0.457519, -0.764653, 0.453853,
		32.970387, 40.887840, 47.753426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410000, 41.367916, 48.121899>,  <32.650124, 41.423100, 47.435730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410000, 41.367916, 48.121899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776985, 41.209091, 48.131725>,  <32.997177, 41.113796, 48.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776985, 41.209091, 48.131725>,  <32.410000, 41.367916, 48.121899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776985, 41.209091, 48.131725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200439, 0.514721, 0.833598,
		-0.343632, -0.759872, 0.551825,
		0.917464, -0.397059, 0.024566,
		33.052223, 41.089973, 48.139095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519947, 41.229248, 48.811047>,  <32.410000, 41.367916, 48.121899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519947, 41.229248, 48.811047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899208, 41.152771, 48.709499>,  <33.126766, 41.106884, 48.648571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899208, 41.152771, 48.709499>,  <32.519947, 41.229248, 48.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899208, 41.152771, 48.709499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302131, 0.294492, 0.906637,
		-0.098579, -0.936334, 0.336988,
		0.948155, -0.191190, -0.253865,
		33.183655, 41.095413, 48.633339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777718, 40.870396, 49.414211>,  <32.519947, 41.229248, 48.811047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777718, 40.870396, 49.414211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071125, 41.031006, 49.194855>,  <33.247169, 41.127373, 49.063240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071125, 41.031006, 49.194855>,  <32.777718, 40.870396, 49.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071125, 41.031006, 49.194855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484090, 0.257711, 0.836207,
		0.477087, -0.878839, -0.005342,
		0.733515, 0.401530, -0.548388,
		33.291180, 41.151463, 49.030338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398182, 40.662872, 49.615719>,  <32.777718, 40.870396, 49.414211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398182, 40.662872, 49.615719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541721, 40.982323, 49.422466>,  <33.627846, 41.173992, 49.306515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541721, 40.982323, 49.422466>,  <33.398182, 40.662872, 49.615719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541721, 40.982323, 49.422466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534395, 0.248588, 0.807853,
		0.765276, -0.548083, -0.337577,
		0.358852, 0.798630, -0.483131,
		33.649376, 41.221912, 49.277527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164177, 40.685902, 49.591911>,  <33.398182, 40.662872, 49.615719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164177, 40.685902, 49.591911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990868, 41.046078, 49.576576>,  <33.886883, 41.262184, 49.567375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990868, 41.046078, 49.576576>,  <34.164177, 40.685902, 49.591911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990868, 41.046078, 49.576576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475440, 0.264500, 0.839045,
		0.765655, 0.345310, -0.542709,
		-0.433277, 0.900445, -0.038342,
		33.860886, 41.316212, 49.565075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735096, 41.202923, 49.806923>,  <34.164177, 40.685902, 49.591911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735096, 41.202923, 49.806923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394287, 41.408367, 49.847439>,  <34.189800, 41.531631, 49.871750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394287, 41.408367, 49.847439>,  <34.735096, 41.202923, 49.806923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394287, 41.408367, 49.847439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372422, 0.458700, 0.806781,
		0.367904, 0.725123, -0.582102,
		-0.852026, 0.513606, 0.101294,
		34.138680, 41.562450, 49.877827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900360, 41.978912, 49.841507>,  <34.735096, 41.202923, 49.806923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900360, 41.978912, 49.841507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539635, 41.919266, 50.003742>,  <34.323200, 41.883476, 50.101082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539635, 41.919266, 50.003742>,  <34.900360, 41.978912, 49.841507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539635, 41.919266, 50.003742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266857, 0.546043, 0.794119,
		-0.339886, 0.824379, -0.452634,
		-0.901812, -0.149121, 0.405583,
		34.269093, 41.874531, 50.125416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883915, 42.519878, 50.261395>,  <34.900360, 41.978912, 49.841507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883915, 42.519878, 50.261395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582573, 42.307339, 50.416378>,  <34.401768, 42.179817, 50.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582573, 42.307339, 50.416378>,  <34.883915, 42.519878, 50.261395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582573, 42.307339, 50.416378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203497, 0.371914, 0.905687,
		-0.625336, 0.761151, -0.172055,
		-0.753355, -0.531346, 0.387463,
		34.356567, 42.147934, 50.532616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321598, 42.970844, 50.553905>,  <34.883915, 42.519878, 50.261395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321598, 42.970844, 50.553905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350822, 42.615719, 50.735649>,  <34.368359, 42.402641, 50.844696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350822, 42.615719, 50.735649>,  <34.321598, 42.970844, 50.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350822, 42.615719, 50.735649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212021, 0.458990, 0.862772,
		-0.974530, 0.033298, 0.221770,
		0.073062, -0.887817, 0.454360,
		34.372742, 42.349373, 50.871956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241917, 43.246899, 51.217102>,  <34.321598, 42.970844, 50.553905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241917, 43.246899, 51.217102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333740, 42.862377, 51.278030>,  <34.388832, 42.631664, 51.314587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333740, 42.862377, 51.278030>,  <34.241917, 43.246899, 51.217102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333740, 42.862377, 51.278030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419468, 0.238936, 0.875760,
		-0.878266, -0.137142, 0.458085,
		0.229556, -0.961302, 0.152323,
		34.402607, 42.573986, 51.323727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994503, 42.911694, 51.876389>,  <34.241917, 43.246899, 51.217102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994503, 42.911694, 51.876389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323978, 42.721050, 51.753502>,  <34.521664, 42.606663, 51.679768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323978, 42.721050, 51.753502>,  <33.994503, 42.911694, 51.876389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323978, 42.721050, 51.753502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449768, 0.219183, 0.865834,
		-0.345328, -0.851352, 0.394902,
		0.823685, -0.476611, -0.307221,
		34.571083, 42.578068, 51.661335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213535, 43.044827, 52.027321>,  <33.994503, 42.911694, 51.876389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213535, 43.044827, 52.027321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152206, 42.677635, 51.881001>,  <33.115410, 42.457321, 51.793209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152206, 42.677635, 51.881001>,  <33.213535, 43.044827, 52.027321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152206, 42.677635, 51.881001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984081, 0.108179, 0.141005,
		-0.089867, 0.381597, -0.919950,
		-0.153326, -0.917977, -0.365800,
		33.106209, 42.402241, 51.771259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580444, 42.747421, 52.392479>,  <33.213535, 43.044827, 52.027321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580444, 42.747421, 52.392479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608452, 42.367249, 52.513660>,  <32.625256, 42.139145, 52.586369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608452, 42.367249, 52.513660>,  <32.580444, 42.747421, 52.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608452, 42.367249, 52.513660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978139, 0.005797, -0.207872,
		0.195811, 0.310885, 0.930058,
		0.070016, -0.950430, 0.302954,
		32.629456, 42.082119, 52.604546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117332, 42.755054, 52.951321>,  <32.580444, 42.747421, 52.392479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117332, 42.755054, 52.951321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051552, 42.395649, 52.788532>,  <33.012085, 42.180004, 52.690861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051552, 42.395649, 52.788532>,  <33.117332, 42.755054, 52.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051552, 42.395649, 52.788532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980097, -0.195360, 0.035274,
		-0.111200, -0.393070, 0.912760,
		-0.164452, -0.898516, -0.406971,
		33.002216, 42.126095, 52.666443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385914, 42.339691, 53.436886>,  <33.117332, 42.755054, 52.951321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385914, 42.339691, 53.436886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391525, 42.201977, 53.061382>,  <33.394894, 42.119350, 52.836079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391525, 42.201977, 53.061382>,  <33.385914, 42.339691, 53.436886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391525, 42.201977, 53.061382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971087, -0.219073, 0.094857,
		-0.238315, -0.912949, 0.331255,
		0.014031, -0.344283, -0.938761,
		33.395733, 42.098690, 52.779755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906185, 41.891327, 53.513142>,  <33.385914, 42.339691, 53.436886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906185, 41.891327, 53.513142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864445, 41.916397, 53.116116>,  <33.839401, 41.931438, 52.877899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864445, 41.916397, 53.116116>,  <33.906185, 41.891327, 53.513142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864445, 41.916397, 53.116116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935093, -0.333690, -0.119383,
		-0.338692, -0.940597, -0.023788,
		-0.104354, 0.062678, -0.992563,
		33.833138, 41.935200, 52.818348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552460, 42.219193, 53.202961>,  <33.906185, 41.891327, 53.513142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552460, 42.219193, 53.202961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863781, 42.456711, 53.284603>,  <35.050571, 42.599220, 53.333588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863781, 42.456711, 53.284603>,  <34.552460, 42.219193, 53.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863781, 42.456711, 53.284603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172325, 0.110574, -0.978814,
		-0.603782, 0.796983, -0.016266,
		0.778300, 0.593794, 0.204103,
		35.097271, 42.634850, 53.345833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671871, 41.543163, 52.902630>,  <34.552460, 42.219193, 53.202961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671871, 41.543163, 52.902630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443501, 41.225491, 52.985886>,  <34.306477, 41.034889, 53.035839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443501, 41.225491, 52.985886>,  <34.671871, 41.543163, 52.902630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443501, 41.225491, 52.985886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581745, -0.570224, -0.580014,
		0.579321, -0.210063, 0.787567,
		-0.570929, -0.794177, 0.208140,
		34.272221, 40.987236, 53.048328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105530, 40.956421, 52.975277>,  <34.671871, 41.543163, 52.902630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105530, 40.956421, 52.975277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749329, 40.793747, 52.893681>,  <34.535610, 40.696140, 52.844723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749329, 40.793747, 52.893681>,  <35.105530, 40.956421, 52.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749329, 40.793747, 52.893681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415936, -0.545943, -0.727285,
		0.184408, -0.732497, 0.655318,
		-0.890501, -0.406687, -0.203995,
		34.482178, 40.671741, 52.832481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251724, 40.254555, 53.079548>,  <35.105530, 40.956421, 52.975277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251724, 40.254555, 53.079548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949722, 40.321041, 52.825825>,  <34.768520, 40.360935, 52.673592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949722, 40.321041, 52.825825>,  <35.251724, 40.254555, 53.079548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949722, 40.321041, 52.825825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431095, -0.603074, -0.671162,
		-0.494092, -0.780175, 0.383667,
		-0.755004, 0.166218, -0.634303,
		34.723221, 40.370907, 52.635532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002411, 39.635571, 52.814793>,  <35.251724, 40.254555, 53.079548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002411, 39.635571, 52.814793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960155, 39.930420, 52.547813>,  <34.934803, 40.107330, 52.387627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960155, 39.930420, 52.547813>,  <35.002411, 39.635571, 52.814793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960155, 39.930420, 52.547813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554800, -0.513341, -0.654735,
		-0.825250, -0.439470, -0.354724,
		-0.105642, 0.737121, -0.667452,
		34.928463, 40.151558, 52.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717628, 39.376976, 52.120335>,  <35.002411, 39.635571, 52.814793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717628, 39.376976, 52.120335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937397, 39.706001, 52.061642>,  <35.069260, 39.903416, 52.026428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937397, 39.706001, 52.061642>,  <34.717628, 39.376976, 52.120335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937397, 39.706001, 52.061642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239444, -0.323244, -0.915521,
		-0.800502, 0.467873, -0.374555,
		0.549421, 0.822562, -0.146728,
		35.102222, 39.952770, 52.017624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433971, 39.704086, 51.490631>,  <34.717628, 39.376976, 52.120335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433971, 39.704086, 51.490631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818176, 39.801651, 51.544189>,  <35.048698, 39.860188, 51.576324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818176, 39.801651, 51.544189>,  <34.433971, 39.704086, 51.490631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818176, 39.801651, 51.544189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209251, -0.316042, -0.925382,
		-0.183392, 0.916857, -0.354599,
		0.960511, 0.243908, 0.133894,
		35.106331, 39.874825, 51.584358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711189, 39.891163, 50.835434>,  <34.433971, 39.704086, 51.490631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711189, 39.891163, 50.835434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070026, 39.873890, 51.011322>,  <35.285328, 39.863525, 51.116856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070026, 39.873890, 51.011322>,  <34.711189, 39.891163, 50.835434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070026, 39.873890, 51.011322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413979, -0.265661, -0.870658,
		0.154415, 0.963099, -0.220447,
		0.897094, -0.043182, 0.439724,
		35.339153, 39.860935, 51.143238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200096, 40.377819, 50.465675>,  <34.711189, 39.891163, 50.835434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200096, 40.377819, 50.465675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404278, 40.086395, 50.648384>,  <35.526787, 39.911541, 50.758007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404278, 40.086395, 50.648384>,  <35.200096, 40.377819, 50.465675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404278, 40.086395, 50.648384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384432, -0.281799, -0.879091,
		0.769187, 0.624333, 0.136236,
		0.510455, -0.728559, 0.456769,
		35.557415, 39.867828, 50.785416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763939, 40.400429, 50.150017>,  <35.200096, 40.377819, 50.465675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763939, 40.400429, 50.150017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747665, 40.027866, 50.294697>,  <35.737900, 39.804329, 50.381504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747665, 40.027866, 50.294697>,  <35.763939, 40.400429, 50.150017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747665, 40.027866, 50.294697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415835, -0.344943, -0.841484,
		0.908530, 0.116174, 0.401344,
		-0.040683, -0.931406, 0.361700,
		35.735462, 39.748444, 50.403206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325951, 40.035011, 49.828506>,  <35.763939, 40.400429, 50.150017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325951, 40.035011, 49.828506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147755, 39.711704, 49.982513>,  <36.040836, 39.517719, 50.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147755, 39.711704, 49.982513>,  <36.325951, 40.035011, 49.828506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147755, 39.711704, 49.982513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582762, -0.588264, -0.560655,
		0.679654, -0.025390, 0.733093,
		-0.445487, -0.808271, 0.385019,
		36.014107, 39.469223, 50.098019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918419, 39.589222, 49.818016>,  <36.325951, 40.035011, 49.828506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918419, 39.589222, 49.818016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574570, 39.385544, 49.834866>,  <36.368259, 39.263336, 49.844975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574570, 39.385544, 49.834866>,  <36.918419, 39.589222, 49.818016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574570, 39.385544, 49.834866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345611, -0.640222, -0.686053,
		0.376304, -0.575186, 0.726331,
		-0.859621, -0.509193, 0.042127,
		36.316685, 39.232784, 49.847504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057392, 38.906330, 50.009453>,  <36.918419, 39.589222, 49.818016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057392, 38.906330, 50.009453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706123, 38.887936, 49.819000>,  <36.495361, 38.876900, 49.704727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706123, 38.887936, 49.819000>,  <37.057392, 38.906330, 50.009453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706123, 38.887936, 49.819000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420218, -0.549743, -0.721941,
		-0.228548, -0.834067, 0.502094,
		-0.878170, -0.045991, -0.476132,
		36.442673, 38.874138, 49.676159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929752, 38.241711, 49.923382>,  <37.057392, 38.906330, 50.009453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929752, 38.241711, 49.923382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701103, 38.413975, 49.644016>,  <36.563915, 38.517334, 49.476398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701103, 38.413975, 49.644016>,  <36.929752, 38.241711, 49.923382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701103, 38.413975, 49.644016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407747, -0.589554, -0.697258,
		-0.712035, -0.683342, 0.161400,
		-0.571620, 0.430661, -0.698414,
		36.529617, 38.543175, 49.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588440, 37.641224, 49.503414>,  <36.929752, 38.241711, 49.923382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588440, 37.641224, 49.503414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559917, 37.972523, 49.281094>,  <36.542805, 38.171303, 49.147701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559917, 37.972523, 49.281094>,  <36.588440, 37.641224, 49.503414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559917, 37.972523, 49.281094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381561, -0.492193, -0.782405,
		-0.921590, -0.267860, -0.280933,
		-0.071302, 0.828249, -0.555805,
		36.538528, 38.220997, 49.114353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291702, 37.409760, 48.827316>,  <36.588440, 37.641224, 49.503414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291702, 37.409760, 48.827316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455410, 37.763962, 48.739330>,  <36.553635, 37.976482, 48.686539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455410, 37.763962, 48.739330>,  <36.291702, 37.409760, 48.827316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455410, 37.763962, 48.739330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333913, -0.369713, -0.867072,
		-0.849119, 0.281415, -0.446993,
		0.409266, 0.885504, -0.219962,
		36.578190, 38.029613, 48.673340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195885, 37.409031, 48.087456>,  <36.291702, 37.409760, 48.827316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195885, 37.409031, 48.087456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473125, 37.689449, 48.154572>,  <36.639469, 37.857700, 48.194839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473125, 37.689449, 48.154572>,  <36.195885, 37.409031, 48.087456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473125, 37.689449, 48.154572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368786, -0.144850, -0.918159,
		-0.619364, 0.698254, -0.358930,
		0.693099, 0.701042, 0.167791,
		36.681057, 37.899761, 48.204910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109684, 37.761341, 47.565651>,  <36.195885, 37.409031, 48.087456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109684, 37.761341, 47.565651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485474, 37.846893, 47.672722>,  <36.710945, 37.898224, 47.736965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485474, 37.846893, 47.672722>,  <36.109684, 37.761341, 47.565651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485474, 37.846893, 47.672722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291671, -0.089283, -0.952343,
		-0.179787, 0.972771, -0.146260,
		0.939471, 0.213879, 0.267677,
		36.767315, 37.911057, 47.753025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259369, 38.253235, 47.096302>,  <36.109684, 37.761341, 47.565651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259369, 38.253235, 47.096302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601738, 38.123329, 47.257259>,  <36.807159, 38.045387, 47.353832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601738, 38.123329, 47.257259>,  <36.259369, 38.253235, 47.096302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601738, 38.123329, 47.257259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311543, -0.297210, -0.902556,
		0.412713, 0.897883, -0.153211,
		0.855926, -0.324764, 0.402391,
		36.858517, 38.025902, 47.377975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810333, 38.551403, 46.796303>,  <36.259369, 38.253235, 47.096302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810333, 38.551403, 46.796303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992378, 38.236450, 46.962631>,  <37.101604, 38.047478, 47.062428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992378, 38.236450, 46.962631>,  <36.810333, 38.551403, 46.796303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992378, 38.236450, 46.962631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431190, -0.213707, -0.876587,
		0.779071, 0.578242, 0.242250,
		0.455109, -0.787379, 0.415825,
		37.128910, 38.000237, 47.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687466, 38.558472, 46.719654>,  <36.810333, 38.551403, 46.796303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687466, 38.558472, 46.719654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547352, 38.185551, 46.755695>,  <37.463284, 37.961800, 46.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547352, 38.185551, 46.755695>,  <37.687466, 38.558472, 46.719654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547352, 38.185551, 46.755695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372813, -0.227023, -0.899706,
		0.859251, -0.281561, 0.427096,
		-0.350283, -0.932300, 0.090100,
		37.442268, 37.905861, 46.782726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139641, 38.238979, 46.332039>,  <37.687466, 38.558472, 46.719654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139641, 38.238979, 46.332039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841965, 37.976875, 46.383926>,  <37.663361, 37.819614, 46.415058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841965, 37.976875, 46.383926>,  <38.139641, 38.238979, 46.332039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841965, 37.976875, 46.383926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057871, -0.256715, -0.964753,
		0.665461, -0.710449, 0.228964,
		-0.744186, -0.655256, 0.129719,
		37.618710, 37.780300, 46.422844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335213, 37.518162, 46.028008>,  <38.139641, 38.238979, 46.332039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335213, 37.518162, 46.028008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936169, 37.545532, 46.032009>,  <37.696743, 37.561954, 46.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936169, 37.545532, 46.032009>,  <38.335213, 37.518162, 46.028008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936169, 37.545532, 46.032009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030857, -0.311035, -0.949898,
		-0.061891, -0.947932, 0.312401,
		-0.997606, 0.068430, 0.010000,
		37.636887, 37.566063, 46.035007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167130, 36.946907, 45.669998>,  <38.335213, 37.518162, 46.028008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167130, 36.946907, 45.669998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823746, 37.151333, 45.652782>,  <37.617714, 37.273991, 45.642452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823746, 37.151333, 45.652782>,  <38.167130, 36.946907, 45.669998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823746, 37.151333, 45.652782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137515, -0.310202, -0.940672,
		-0.494098, -0.801613, 0.336577,
		-0.858462, 0.511069, -0.043036,
		37.566208, 37.304653, 45.639870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670525, 36.431274, 45.499084>,  <38.167130, 36.946907, 45.669998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670525, 36.431274, 45.499084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500053, 36.778130, 45.395981>,  <37.397770, 36.986244, 45.334118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500053, 36.778130, 45.395981>,  <37.670525, 36.431274, 45.499084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500053, 36.778130, 45.395981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344659, -0.419080, -0.839989,
		-0.836409, -0.269149, 0.477472,
		-0.426181, 0.867140, -0.257757,
		37.372200, 37.038273, 45.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938965, 36.262146, 45.324612>,  <37.670525, 36.431274, 45.499084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938965, 36.262146, 45.324612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015751, 36.610405, 45.143452>,  <37.061825, 36.819359, 45.034756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015751, 36.610405, 45.143452>,  <36.938965, 36.262146, 45.324612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015751, 36.610405, 45.143452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467867, -0.324479, -0.822079,
		-0.862698, 0.369712, 0.345057,
		0.191968, 0.870647, -0.452903,
		37.073341, 36.871597, 45.007580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372810, 36.414406, 45.013523>,  <36.938965, 36.262146, 45.324612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372810, 36.414406, 45.013523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632671, 36.660976, 44.835552>,  <36.788589, 36.808918, 44.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632671, 36.660976, 44.835552>,  <36.372810, 36.414406, 45.013523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632671, 36.660976, 44.835552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426912, -0.188448, -0.884440,
		-0.629042, 0.764526, 0.140736,
		0.649656, 0.616431, -0.444928,
		36.827568, 36.845905, 44.702072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978436, 36.782139, 44.534622>,  <36.372810, 36.414406, 45.013523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978436, 36.782139, 44.534622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349884, 36.813766, 44.389618>,  <36.572754, 36.832745, 44.302616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349884, 36.813766, 44.389618>,  <35.978436, 36.782139, 44.534622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349884, 36.813766, 44.389618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327397, -0.285097, -0.900850,
		-0.174579, 0.955232, -0.238860,
		0.928619, 0.079068, -0.362513,
		36.628471, 36.837486, 44.280865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984821, 37.183399, 43.869385>,  <35.978436, 36.782139, 44.534622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984821, 37.183399, 43.869385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314373, 36.956696, 43.869450>,  <36.512104, 36.820675, 43.869488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314373, 36.956696, 43.869450>,  <35.984821, 37.183399, 43.869385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314373, 36.956696, 43.869450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200647, -0.291940, -0.935153,
		0.530053, 0.770425, -0.354244,
		0.823884, -0.566759, 0.000160,
		36.561539, 36.786667, 43.869499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264626, 37.286579, 43.233822>,  <35.984821, 37.183399, 43.869385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264626, 37.286579, 43.233822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433250, 36.947601, 43.362892>,  <36.534424, 36.744213, 43.440334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433250, 36.947601, 43.362892>,  <36.264626, 37.286579, 43.233822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433250, 36.947601, 43.362892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133522, -0.409969, -0.902273,
		0.896917, 0.337278, -0.285979,
		0.421559, -0.847448, 0.322674,
		36.559719, 36.693367, 43.459694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608456, 37.126591, 42.661804>,  <36.264626, 37.286579, 43.233822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608456, 37.126591, 42.661804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610737, 36.779949, 42.861389>,  <36.612106, 36.571964, 42.981140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610737, 36.779949, 42.861389>,  <36.608456, 37.126591, 42.661804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610737, 36.779949, 42.861389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081836, -0.496890, -0.863946,
		0.996629, 0.045757, 0.068088,
		0.005699, -0.866606, 0.498960,
		36.612446, 36.519966, 43.011078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015965, 36.616058, 42.243561>,  <36.608456, 37.126591, 42.661804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015965, 36.616058, 42.243561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796139, 36.387375, 42.487244>,  <36.664242, 36.250164, 42.633453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796139, 36.387375, 42.487244>,  <37.015965, 36.616058, 42.243561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796139, 36.387375, 42.487244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048934, -0.705913, -0.706606,
		0.834015, -0.418139, 0.359971,
		-0.549567, -0.571705, 0.609203,
		36.631268, 36.215862, 42.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260910, 35.959145, 42.249912>,  <37.015965, 36.616058, 42.243561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260910, 35.959145, 42.249912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884773, 35.884277, 42.363556>,  <36.659092, 35.839355, 42.431740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884773, 35.884277, 42.363556>,  <37.260910, 35.959145, 42.249912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884773, 35.884277, 42.363556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055595, -0.739304, -0.671073,
		0.335646, -0.646836, 0.684796,
		-0.940346, -0.187172, 0.284106,
		36.602669, 35.828125, 42.448788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095680, 35.215019, 42.262478>,  <37.260910, 35.959145, 42.249912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095680, 35.215019, 42.262478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715591, 35.337109, 42.237469>,  <36.487537, 35.410362, 42.222466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715591, 35.337109, 42.237469>,  <37.095680, 35.215019, 42.262478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715591, 35.337109, 42.237469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179036, -0.699153, -0.692193,
		-0.254986, -0.646546, 0.718999,
		-0.950226, 0.305226, -0.062519,
		36.430523, 35.428677, 42.218712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647499, 34.573997, 42.074055>,  <37.095680, 35.215019, 42.262478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647499, 34.573997, 42.074055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395435, 34.876221, 42.002460>,  <36.244198, 35.057552, 41.959503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395435, 34.876221, 42.002460>,  <36.647499, 34.573997, 42.074055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395435, 34.876221, 42.002460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499782, -0.571103, -0.651198,
		-0.594240, -0.320899, 0.737498,
		-0.630156, 0.755556, -0.178992,
		36.206387, 35.102886, 41.948765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932465, 34.315819, 42.281891>,  <36.647499, 34.573997, 42.074055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932465, 34.315819, 42.281891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936275, 34.612991, 42.014168>,  <35.938560, 34.791294, 41.853535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936275, 34.612991, 42.014168>,  <35.932465, 34.315819, 42.281891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936275, 34.612991, 42.014168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357135, -0.622663, -0.696237,
		-0.934004, 0.245663, 0.259395,
		0.009524, 0.742927, -0.669304,
		35.939133, 34.835869, 41.813377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367496, 34.228203, 41.964340>,  <35.932465, 34.315819, 42.281891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367496, 34.228203, 41.964340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548820, 34.473858, 41.705933>,  <35.657616, 34.621250, 41.550888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548820, 34.473858, 41.705933>,  <35.367496, 34.228203, 41.964340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548820, 34.473858, 41.705933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330487, -0.557308, -0.761699,
		-0.827820, 0.558791, -0.049672,
		0.453313, 0.614134, -0.646024,
		35.684814, 34.658096, 41.512127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872101, 34.399361, 41.477863>,  <35.367496, 34.228203, 41.964340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872101, 34.399361, 41.477863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224670, 34.483574, 41.308739>,  <35.436211, 34.534100, 41.207264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224670, 34.483574, 41.308739>,  <34.872101, 34.399361, 41.477863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224670, 34.483574, 41.308739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330997, -0.363279, -0.870901,
		-0.336950, 0.907582, -0.250517,
		0.881422, 0.210530, -0.422814,
		35.489098, 34.546734, 41.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823471, 34.897285, 40.796204>,  <34.872101, 34.399361, 41.477863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823471, 34.897285, 40.796204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177402, 34.714485, 40.759941>,  <35.389763, 34.604805, 40.738182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177402, 34.714485, 40.759941>,  <34.823471, 34.897285, 40.796204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177402, 34.714485, 40.759941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265741, -0.335203, -0.903892,
		0.382694, 0.823884, -0.418043,
		0.884832, -0.457005, -0.090660,
		35.442852, 34.577385, 40.732742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010563, 34.967678, 40.031467>,  <34.823471, 34.897285, 40.796204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010563, 34.967678, 40.031467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225937, 34.665443, 40.180698>,  <35.355160, 34.484104, 40.270237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225937, 34.665443, 40.180698>,  <35.010563, 34.967678, 40.031467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225937, 34.665443, 40.180698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176607, -0.534081, -0.826782,
		0.823955, 0.379278, -0.421007,
		0.538432, -0.755583, 0.373075,
		35.387466, 34.438770, 40.292622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380177, 34.666447, 39.391735>,  <35.010563, 34.967678, 40.031467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380177, 34.666447, 39.391735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421284, 34.386665, 39.674637>,  <35.445950, 34.218796, 39.844379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421284, 34.386665, 39.674637>,  <35.380177, 34.666447, 39.391735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421284, 34.386665, 39.674637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139568, -0.714124, -0.685965,
		0.984865, -0.028213, -0.171012,
		0.102770, -0.699451, 0.707254,
		35.452114, 34.176830, 39.886814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938309, 34.287067, 39.283936>,  <35.380177, 34.666447, 39.391735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938309, 34.287067, 39.283936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690880, 34.041714, 39.480354>,  <35.542423, 33.894501, 39.598206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690880, 34.041714, 39.480354>,  <35.938309, 34.287067, 39.283936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690880, 34.041714, 39.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082489, -0.672199, -0.735761,
		0.781386, -0.414615, 0.466401,
		-0.618572, -0.613387, 0.491046,
		35.505310, 33.857697, 39.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244503, 33.694370, 39.362041>,  <35.938309, 34.287067, 39.283936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244503, 33.694370, 39.362041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857365, 33.596741, 39.386395>,  <35.625084, 33.538162, 39.401009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857365, 33.596741, 39.386395>,  <36.244503, 33.694370, 39.362041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857365, 33.596741, 39.386395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171342, -0.816853, -0.550812,
		0.184172, -0.522667, 0.832406,
		-0.967844, -0.244070, 0.060887,
		35.567013, 33.523521, 39.404659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916363, 34.040596, 39.005867>,  <36.244503, 33.694370, 39.362041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916363, 34.040596, 39.005867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281658, 33.892712, 39.074345>,  <37.500835, 33.803982, 39.115433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281658, 33.892712, 39.074345>,  <36.916363, 34.040596, 39.005867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281658, 33.892712, 39.074345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149485, 0.694940, 0.703358,
		-0.379010, -0.616743, 0.689913,
		0.913239, -0.369711, 0.171196,
		37.555630, 33.781799, 39.125702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134216, 34.253414, 39.637039>,  <36.916363, 34.040596, 39.005867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134216, 34.253414, 39.637039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498325, 34.115044, 39.546055>,  <37.716789, 34.032021, 39.491467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498325, 34.115044, 39.546055>,  <37.134216, 34.253414, 39.637039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498325, 34.115044, 39.546055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401865, 0.606192, 0.686321,
		-0.099532, -0.716147, 0.690816,
		0.910273, -0.345926, -0.227459,
		37.771408, 34.011265, 39.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457970, 33.895592, 40.248325>,  <37.134216, 34.253414, 39.637039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457970, 33.895592, 40.248325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716404, 34.073582, 40.000271>,  <37.871464, 34.180374, 39.851437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716404, 34.073582, 40.000271>,  <37.457970, 33.895592, 40.248325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716404, 34.073582, 40.000271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393321, 0.502202, 0.770125,
		0.654120, -0.741480, 0.149448,
		0.646086, 0.444973, -0.620139,
		37.910229, 34.207073, 39.814228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162167, 33.662884, 40.433640>,  <37.457970, 33.895592, 40.248325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162167, 33.662884, 40.433640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161732, 34.002365, 40.222088>,  <38.161472, 34.206055, 40.095158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161732, 34.002365, 40.222088>,  <38.162167, 33.662884, 40.433640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161732, 34.002365, 40.222088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747159, 0.352200, 0.563656,
		0.664644, -0.394543, -0.634495,
		-0.001083, 0.848699, -0.528874,
		38.161407, 34.256973, 40.063427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913841, 33.852791, 40.189590>,  <38.162167, 33.662884, 40.433640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913841, 33.852791, 40.189590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696781, 34.188744, 40.185211>,  <38.566544, 34.390316, 40.182583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696781, 34.188744, 40.185211>,  <38.913841, 33.852791, 40.189590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696781, 34.188744, 40.185211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614763, 0.406011, 0.676182,
		0.572360, 0.360203, -0.736653,
		-0.542651, 0.839887, -0.010945,
		38.533985, 34.440708, 40.181927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444485, 34.482979, 40.330685>,  <38.913841, 33.852791, 40.189590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444485, 34.482979, 40.330685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075153, 34.621277, 40.397533>,  <38.853554, 34.704258, 40.437645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075153, 34.621277, 40.397533>,  <39.444485, 34.482979, 40.330685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075153, 34.621277, 40.397533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337786, 0.524187, 0.781747,
		0.182684, 0.778258, -0.600784,
		-0.923324, 0.345749, 0.167125,
		38.798157, 34.725002, 40.447670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634678, 35.062050, 40.569054>,  <39.444485, 34.482979, 40.330685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634678, 35.062050, 40.569054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251862, 35.010490, 40.672939>,  <39.022171, 34.979553, 40.735271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251862, 35.010490, 40.672939>,  <39.634678, 35.062050, 40.569054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251862, 35.010490, 40.672939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133128, 0.600389, 0.788549,
		-0.257574, 0.789252, -0.557438,
		-0.957044, -0.128900, 0.259716,
		38.964748, 34.971821, 40.750854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323814, 35.731041, 40.664062>,  <39.634678, 35.062050, 40.569054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323814, 35.731041, 40.664062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105732, 35.472633, 40.877758>,  <38.974884, 35.317589, 41.005978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105732, 35.472633, 40.877758>,  <39.323814, 35.731041, 40.664062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105732, 35.472633, 40.877758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208583, 0.512709, 0.832840,
		-0.811941, 0.565500, -0.144782,
		-0.545202, -0.646018, 0.534243,
		38.942173, 35.278828, 41.038033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112255, 36.083519, 41.266964>,  <39.323814, 35.731041, 40.664062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112255, 36.083519, 41.266964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034096, 35.714603, 41.400352>,  <38.987202, 35.493256, 41.480385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034096, 35.714603, 41.400352>,  <39.112255, 36.083519, 41.266964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034096, 35.714603, 41.400352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233248, 0.286565, 0.929234,
		-0.952583, 0.259353, 0.159127,
		-0.195399, -0.922289, 0.333471,
		38.975475, 35.437916, 41.500393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750206, 36.144249, 41.879093>,  <39.112255, 36.083519, 41.266964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750206, 36.144249, 41.879093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937752, 35.790955, 41.875774>,  <39.050278, 35.578979, 41.873783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937752, 35.790955, 41.875774>,  <38.750206, 36.144249, 41.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937752, 35.790955, 41.875774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284538, 0.142139, 0.948069,
		-0.836186, -0.446874, 0.317957,
		0.468861, -0.883233, -0.008297,
		39.078411, 35.525986, 41.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431816, 35.772930, 42.344555>,  <38.750206, 36.144249, 41.879093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431816, 35.772930, 42.344555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794613, 35.605656, 42.324619>,  <39.012291, 35.505291, 42.312656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794613, 35.605656, 42.324619>,  <38.431816, 35.772930, 42.344555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794613, 35.605656, 42.324619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041564, -0.028876, 0.998719,
		-0.419087, -0.907903, -0.008809,
		0.906994, -0.418184, -0.049838,
		39.066711, 35.480202, 42.309669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477577, 35.407383, 42.993797>,  <38.431816, 35.772930, 42.344555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477577, 35.407383, 42.993797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851910, 35.454113, 42.860786>,  <39.076508, 35.482151, 42.780979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851910, 35.454113, 42.860786>,  <38.477577, 35.407383, 42.993797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851910, 35.454113, 42.860786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317666, 0.129148, 0.939366,
		0.152698, -0.984718, 0.083745,
		0.935826, 0.116837, -0.332532,
		39.132660, 35.489159, 42.761028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816631, 34.874527, 43.364506>,  <38.477577, 35.407383, 42.993797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816631, 34.874527, 43.364506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071125, 35.151676, 43.228783>,  <39.223824, 35.317966, 43.147346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071125, 35.151676, 43.228783>,  <38.816631, 34.874527, 43.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071125, 35.151676, 43.228783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335157, 0.147912, 0.930480,
		0.694891, -0.705728, -0.138113,
		0.636237, 0.692871, -0.339312,
		39.261997, 35.359539, 43.126987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430748, 34.732449, 43.791046>,  <38.816631, 34.874527, 43.364506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430748, 34.732449, 43.791046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540932, 35.073265, 43.612991>,  <39.607040, 35.277756, 43.506157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540932, 35.073265, 43.612991>,  <39.430748, 34.732449, 43.791046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540932, 35.073265, 43.612991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562609, 0.232576, 0.793335,
		0.779482, -0.468970, -0.415301,
		0.275461, 0.852042, -0.445136,
		39.623569, 35.328876, 43.479450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124798, 34.798473, 43.958626>,  <39.430748, 34.732449, 43.791046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124798, 34.798473, 43.958626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927738, 35.140648, 43.894730>,  <39.809502, 35.345955, 43.856392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927738, 35.140648, 43.894730>,  <40.124798, 34.798473, 43.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927738, 35.140648, 43.894730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304041, 0.341192, 0.889464,
		0.815384, 0.389631, -0.428178,
		-0.492654, 0.855439, -0.159739,
		39.779942, 35.397278, 43.846809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596882, 35.385921, 44.154816>,  <40.124798, 34.798473, 43.958626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596882, 35.385921, 44.154816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241894, 35.566696, 44.118702>,  <40.028900, 35.675159, 44.097034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241894, 35.566696, 44.118702>,  <40.596882, 35.385921, 44.154816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241894, 35.566696, 44.118702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277350, 0.680191, 0.678540,
		0.368064, 0.577145, -0.728994,
		-0.887471, 0.451933, -0.090283,
		39.975651, 35.702274, 44.091618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792065, 36.117485, 44.081314>,  <40.596882, 35.385921, 44.154816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792065, 36.117485, 44.081314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420509, 36.072029, 44.222309>,  <40.197575, 36.044754, 44.306908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420509, 36.072029, 44.222309>,  <40.792065, 36.117485, 44.081314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420509, 36.072029, 44.222309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146183, 0.761978, 0.630888,
		-0.340283, 0.637553, -0.691182,
		-0.928891, -0.113642, 0.352488,
		40.141842, 36.037937, 44.328056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631142, 36.767696, 44.268364>,  <40.792065, 36.117485, 44.081314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631142, 36.767696, 44.268364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332653, 36.584618, 44.461723>,  <40.153561, 36.474770, 44.577740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332653, 36.584618, 44.461723>,  <40.631142, 36.767696, 44.268364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332653, 36.584618, 44.461723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117220, 0.624465, 0.772207,
		-0.655301, 0.632899, -0.412335,
		-0.746217, -0.457693, 0.483401,
		40.108788, 36.447311, 44.606743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075611, 37.258549, 44.347210>,  <40.631142, 36.767696, 44.268364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075611, 37.258549, 44.347210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028477, 36.977470, 44.627876>,  <40.000195, 36.808823, 44.796276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028477, 36.977470, 44.627876>,  <40.075611, 37.258549, 44.347210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028477, 36.977470, 44.627876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077285, 0.697952, 0.711962,
		-0.990021, 0.138124, -0.027937,
		-0.117837, -0.702698, 0.701662,
		39.993126, 36.766663, 44.838375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450172, 37.455379, 44.780930>,  <40.075611, 37.258549, 44.347210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450172, 37.455379, 44.780930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616470, 37.195702, 45.035709>,  <39.716251, 37.039894, 45.188576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616470, 37.195702, 45.035709>,  <39.450172, 37.455379, 44.780930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616470, 37.195702, 45.035709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119112, 0.655442, 0.745794,
		-0.901646, -0.385930, 0.195172,
		0.415748, -0.649195, 0.636946,
		39.741196, 37.000942, 45.226791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978146, 37.403267, 45.438438>,  <39.450172, 37.455379, 44.780930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978146, 37.403267, 45.438438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349621, 37.279362, 45.520016>,  <39.572506, 37.205021, 45.568962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349621, 37.279362, 45.520016>,  <38.978146, 37.403267, 45.438438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349621, 37.279362, 45.520016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079547, 0.370736, 0.925325,
		-0.362236, -0.875559, 0.319657,
		0.928685, -0.309758, 0.203942,
		39.628227, 37.186436, 45.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950233, 37.046131, 46.149902>,  <38.978146, 37.403267, 45.438438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950233, 37.046131, 46.149902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316490, 37.184242, 46.067558>,  <39.536243, 37.267109, 46.018150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316490, 37.184242, 46.067558>,  <38.950233, 37.046131, 46.149902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316490, 37.184242, 46.067558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001715, 0.515457, 0.856914,
		0.401989, -0.784274, 0.472566,
		0.915643, 0.345280, -0.205863,
		39.591183, 37.287827, 46.005798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266857, 37.031216, 46.803295>,  <38.950233, 37.046131, 46.149902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266857, 37.031216, 46.803295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452934, 37.296700, 46.569000>,  <39.564583, 37.455990, 46.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452934, 37.296700, 46.569000>,  <39.266857, 37.031216, 46.803295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452934, 37.296700, 46.569000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018326, 0.668771, 0.743243,
		0.885018, -0.335018, 0.323272,
		0.465195, 0.663708, -0.585735,
		39.592491, 37.495811, 46.393280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781502, 37.253883, 47.275162>,  <39.266857, 37.031216, 46.803295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781502, 37.253883, 47.275162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716576, 37.528118, 46.991295>,  <39.677620, 37.692657, 46.820976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716576, 37.528118, 46.991295>,  <39.781502, 37.253883, 47.275162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716576, 37.528118, 46.991295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055355, 0.724396, 0.687158,
		0.985186, 0.072251, -0.155528,
		-0.162312, 0.685588, -0.709665,
		39.667881, 37.733795, 46.778397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298496, 37.863659, 47.431545>,  <39.781502, 37.253883, 47.275162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298496, 37.863659, 47.431545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038597, 38.031425, 47.177959>,  <39.882656, 38.132084, 47.025806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038597, 38.031425, 47.177959>,  <40.298496, 37.863659, 47.431545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038597, 38.031425, 47.177959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090210, 0.870657, 0.483548,
		0.754778, 0.256994, -0.603543,
		-0.649748, 0.419417, -0.633969,
		39.843674, 38.157249, 46.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437389, 38.643555, 47.409382>,  <40.298496, 37.863659, 47.431545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437389, 38.643555, 47.409382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058750, 38.623322, 47.282005>,  <39.831566, 38.611183, 47.205582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058750, 38.623322, 47.282005>,  <40.437389, 38.643555, 47.409382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058750, 38.623322, 47.282005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254149, 0.724808, 0.640360,
		0.198416, 0.687091, -0.698954,
		-0.946594, -0.050581, -0.318437,
		39.774773, 38.608147, 47.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205753, 39.300701, 47.329571>,  <40.437389, 38.643555, 47.409382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205753, 39.300701, 47.329571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872864, 39.090218, 47.399426>,  <39.673130, 38.963928, 47.441338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872864, 39.090218, 47.399426>,  <40.205753, 39.300701, 47.329571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872864, 39.090218, 47.399426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431588, 0.812579, 0.391723,
		-0.348037, 0.250631, -0.903357,
		-0.832227, -0.526213, 0.174638,
		39.623196, 38.932354, 47.451817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596115, 39.732449, 47.204262>,  <40.205753, 39.300701, 47.329571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596115, 39.732449, 47.204262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431252, 39.449417, 47.433857>,  <39.332333, 39.279598, 47.571613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431252, 39.449417, 47.433857>,  <39.596115, 39.732449, 47.204262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431252, 39.449417, 47.433857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544699, 0.696364, 0.467312,
		-0.730363, -0.120043, -0.672429,
		-0.412157, -0.707578, 0.573985,
		39.307606, 39.237144, 47.606052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903866, 39.931458, 47.182667>,  <39.596115, 39.732449, 47.204262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903866, 39.931458, 47.182667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950344, 39.696815, 47.503262>,  <38.978233, 39.556030, 47.695618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950344, 39.696815, 47.503262>,  <38.903866, 39.931458, 47.182667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950344, 39.696815, 47.503262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651498, 0.564085, 0.507304,
		-0.749699, -0.581118, -0.316629,
		0.116198, -0.586608, 0.801492,
		38.985203, 39.520832, 47.743710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197102, 39.850731, 47.412182>,  <38.903866, 39.931458, 47.182667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197102, 39.850731, 47.412182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437634, 39.755150, 47.717155>,  <38.581951, 39.697800, 47.900139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437634, 39.755150, 47.717155>,  <38.197102, 39.850731, 47.412182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437634, 39.755150, 47.717155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585248, 0.517908, 0.623904,
		-0.543955, -0.821384, 0.171586,
		0.601330, -0.238955, 0.762432,
		38.618034, 39.683464, 47.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776211, 39.990788, 47.971081>,  <38.197102, 39.850731, 47.412182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776211, 39.990788, 47.971081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138138, 39.966183, 48.139614>,  <38.355293, 39.951420, 48.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138138, 39.966183, 48.139614>,  <37.776211, 39.990788, 47.971081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138138, 39.966183, 48.139614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236008, 0.751158, 0.616491,
		-0.354407, -0.657250, 0.665145,
		0.904818, -0.061509, 0.421332,
		38.409584, 39.947731, 48.266014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585846, 39.934319, 48.644989>,  <37.776211, 39.990788, 47.971081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585846, 39.934319, 48.644989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958820, 40.076912, 48.621384>,  <38.182606, 40.162468, 48.607220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958820, 40.076912, 48.621384>,  <37.585846, 39.934319, 48.644989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958820, 40.076912, 48.621384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277304, 0.810680, 0.515656,
		0.231664, -0.464451, 0.854761,
		0.932435, 0.356488, -0.059011,
		38.238552, 40.183857, 48.603680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774582, 40.000084, 49.232098>,  <37.585846, 39.934319, 48.644989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774582, 40.000084, 49.232098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057388, 40.244743, 49.090107>,  <38.227074, 40.391541, 49.004913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057388, 40.244743, 49.090107>,  <37.774582, 40.000084, 49.232098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057388, 40.244743, 49.090107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302474, 0.715262, 0.630008,
		0.639241, -0.338060, 0.690714,
		0.707022, 0.611650, -0.354970,
		38.269493, 40.428238, 48.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967293, 40.397217, 49.803070>,  <37.774582, 40.000084, 49.232098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967293, 40.397217, 49.803070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090557, 40.608990, 49.486908>,  <38.164516, 40.736053, 49.297211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090557, 40.608990, 49.486908>,  <37.967293, 40.397217, 49.803070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090557, 40.608990, 49.486908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097735, 0.844060, 0.527267,
		0.946300, -0.085234, 0.311853,
		0.308164, 0.529431, -0.790403,
		38.183006, 40.767818, 49.249786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446377, 40.896084, 50.086163>,  <37.967293, 40.397217, 49.803070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446377, 40.896084, 50.086163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360748, 41.060059, 49.731506>,  <38.309372, 41.158443, 49.518715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360748, 41.060059, 49.731506>,  <38.446377, 40.896084, 50.086163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360748, 41.060059, 49.731506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021818, 0.909459, 0.415220,
		0.976575, 0.069542, -0.203633,
		-0.214071, 0.409936, -0.886638,
		38.296528, 41.183041, 49.465515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878792, 41.455303, 50.126953>,  <38.446377, 40.896084, 50.086163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878792, 41.455303, 50.126953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609070, 41.511127, 49.836895>,  <38.447235, 41.544621, 49.662861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609070, 41.511127, 49.836895>,  <38.878792, 41.455303, 50.126953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609070, 41.511127, 49.836895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239306, 0.887690, 0.393370,
		0.698599, 0.438784, -0.565179,
		-0.674308, 0.139557, -0.725143,
		38.406776, 41.552994, 49.619350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904472, 42.182774, 49.944458>,  <38.878792, 41.455303, 50.126953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904472, 42.182774, 49.944458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544910, 42.048763, 49.831512>,  <38.329174, 41.968357, 49.763744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544910, 42.048763, 49.831512>,  <38.904472, 42.182774, 49.944458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544910, 42.048763, 49.831512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423835, 0.828264, 0.366527,
		0.111072, 0.449147, -0.886527,
		-0.898903, -0.335030, -0.282361,
		38.275238, 41.948254, 49.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776062, 42.792370, 50.316879>,  <38.904472, 42.182774, 49.944458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776062, 42.792370, 50.316879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647320, 42.839722, 50.692623>,  <38.570076, 42.868134, 50.918068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647320, 42.839722, 50.692623>,  <38.776062, 42.792370, 50.316879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647320, 42.839722, 50.692623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381003, -0.924467, -0.014041,
		0.866744, -0.362418, 0.342648,
		-0.321855, 0.118380, 0.939359,
		38.550762, 42.875237, 50.974430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376297, 43.186077, 50.178593>,  <38.776062, 42.792370, 50.316879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376297, 43.186077, 50.178593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246162, 43.507637, 49.979435>,  <39.168079, 43.700573, 49.859940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246162, 43.507637, 49.979435>,  <39.376297, 43.186077, 50.178593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246162, 43.507637, 49.979435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558145, -0.261778, -0.787367,
		-0.763301, -0.534061, -0.363525,
		-0.325339, 0.803898, -0.497899,
		39.148560, 43.748806, 49.830067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083778, 43.028889, 49.511559>,  <39.376297, 43.186077, 50.178593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083778, 43.028889, 49.511559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263821, 43.384838, 49.541290>,  <39.371845, 43.598408, 49.559132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.263821, 43.384838, 49.541290>,  <39.083778, 43.028889, 49.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263821, 43.384838, 49.541290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508612, -0.187057, -0.840431,
		-0.733975, 0.416090, -0.536797,
		0.450106, 0.889876, 0.074333,
		39.398853, 43.651802, 49.563591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067501, 43.568764, 48.774055>,  <39.083778, 43.028889, 49.511559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067501, 43.568764, 48.774055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377766, 43.667263, 49.006504>,  <39.563927, 43.726364, 49.145973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377766, 43.667263, 49.006504>,  <39.067501, 43.568764, 48.774055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377766, 43.667263, 49.006504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600565, -0.004838, -0.799561,
		-0.194081, 0.969194, -0.151643,
		0.775663, 0.246252, 0.581125,
		39.610466, 43.741138, 49.180843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336071, 44.074791, 48.413147>,  <39.067501, 43.568764, 48.774055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336071, 44.074791, 48.413147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614693, 43.925064, 48.657997>,  <39.781864, 43.835228, 48.804909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614693, 43.925064, 48.657997>,  <39.336071, 44.074791, 48.413147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614693, 43.925064, 48.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684016, 0.088814, -0.724040,
		0.216655, 0.923038, 0.317903,
		0.696551, -0.374318, 0.612130,
		39.823658, 43.812767, 48.841637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931805, 44.284916, 48.091801>,  <39.336071, 44.074791, 48.413147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931805, 44.284916, 48.091801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068115, 44.004883, 48.342800>,  <40.149902, 43.836861, 48.493401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068115, 44.004883, 48.342800>,  <39.931805, 44.284916, 48.091801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068115, 44.004883, 48.342800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622373, -0.332268, -0.708696,
		0.704646, 0.632041, 0.322487,
		0.340773, -0.700087, 0.627496,
		40.170345, 43.794857, 48.531048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669365, 44.269508, 48.066296>,  <39.931805, 44.284916, 48.091801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669365, 44.269508, 48.066296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604534, 43.906292, 48.220795>,  <40.565636, 43.688362, 48.313496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604534, 43.906292, 48.220795>,  <40.669365, 44.269508, 48.066296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604534, 43.906292, 48.220795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778102, -0.358330, -0.515903,
		0.606867, 0.216923, 0.764629,
		-0.162078, -0.908044, 0.386247,
		40.555912, 43.633881, 48.336670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318821, 44.032188, 48.052238>,  <40.669365, 44.269508, 48.066296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318821, 44.032188, 48.052238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112667, 43.696125, 48.119781>,  <40.988976, 43.494488, 48.160309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112667, 43.696125, 48.119781>,  <41.318821, 44.032188, 48.052238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112667, 43.696125, 48.119781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658115, -0.514244, -0.549943,
		0.548873, -0.172304, 0.817954,
		-0.515385, -0.840158, 0.168858,
		40.958050, 43.444077, 48.170441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719456, 43.441772, 48.221664>,  <41.318821, 44.032188, 48.052238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719456, 43.441772, 48.221664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392361, 43.270580, 48.067711>,  <41.196102, 43.167866, 47.975338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392361, 43.270580, 48.067711>,  <41.719456, 43.441772, 48.221664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392361, 43.270580, 48.067711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572749, -0.671413, -0.470279,
		-0.057145, -0.605007, 0.794167,
		-0.817736, -0.427985, -0.384885,
		41.147041, 43.142185, 47.952244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934792, 42.720577, 48.075592>,  <41.719456, 43.441772, 48.221664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934792, 42.720577, 48.075592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591515, 42.744068, 47.871609>,  <41.385548, 42.758163, 47.749218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591515, 42.744068, 47.871609>,  <41.934792, 42.720577, 48.075592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591515, 42.744068, 47.871609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367676, -0.622934, -0.690484,
		-0.358224, -0.780067, 0.513002,
		-0.858190, 0.058729, -0.509962,
		41.334057, 42.761688, 47.718620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848267, 42.082851, 47.950722>,  <41.934792, 42.720577, 48.075592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848267, 42.082851, 47.950722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619263, 42.257748, 47.673290>,  <41.481861, 42.362686, 47.506832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619263, 42.257748, 47.673290>,  <41.848267, 42.082851, 47.950722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619263, 42.257748, 47.673290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224335, -0.730115, -0.645450,
		-0.788615, -0.525117, 0.319904,
		-0.572504, 0.437246, -0.693582,
		41.447510, 42.388920, 47.465218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478199, 41.591530, 47.609303>,  <41.848267, 42.082851, 47.950722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478199, 41.591530, 47.609303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481449, 41.889683, 47.342667>,  <41.483398, 42.068573, 47.182686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481449, 41.889683, 47.342667>,  <41.478199, 41.591530, 47.609303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481449, 41.889683, 47.342667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121395, -0.662415, -0.739236,
		-0.992571, -0.074915, -0.095868,
		0.008125, 0.745382, -0.666588,
		41.483887, 42.113297, 47.142689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189041, 41.281963, 47.075592>,  <41.478199, 41.591530, 47.609303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189041, 41.281963, 47.075592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303810, 41.609989, 46.877533>,  <41.372673, 41.806805, 46.758698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303810, 41.609989, 46.877533>,  <41.189041, 41.281963, 47.075592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303810, 41.609989, 46.877533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065703, -0.532510, -0.843870,
		-0.955698, 0.209593, -0.206670,
		0.286923, 0.820064, -0.495147,
		41.389889, 41.856007, 46.728989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702461, 41.398647, 46.588039>,  <41.189041, 41.281963, 47.075592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702461, 41.398647, 46.588039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054836, 41.558762, 46.487076>,  <41.266262, 41.654831, 46.426498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054836, 41.558762, 46.487076>,  <40.702461, 41.398647, 46.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054836, 41.558762, 46.487076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014433, -0.510409, -0.859811,
		-0.473005, 0.761086, -0.443863,
		0.880942, 0.400289, -0.252410,
		41.319118, 41.678848, 46.411354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727360, 41.655930, 45.826511>,  <40.702461, 41.398647, 46.588039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727360, 41.655930, 45.826511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106728, 41.580418, 45.928391>,  <41.334347, 41.535110, 45.989517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106728, 41.580418, 45.928391>,  <40.727360, 41.655930, 45.826511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106728, 41.580418, 45.928391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086496, -0.618822, -0.780754,
		0.304999, 0.762511, -0.570573,
		0.948416, -0.188777, 0.254695,
		41.391254, 41.523785, 46.004799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028694, 41.835571, 45.242561>,  <40.727360, 41.655930, 45.826511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028694, 41.835571, 45.242561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267006, 41.586304, 45.445229>,  <41.409992, 41.436745, 45.566830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267006, 41.586304, 45.445229>,  <41.028694, 41.835571, 45.242561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267006, 41.586304, 45.445229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000709, -0.630444, -0.776234,
		0.803149, 0.462822, -0.375163,
		0.595778, -0.623166, 0.506669,
		41.445740, 41.399353, 45.597229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383682, 41.475513, 44.755070>,  <41.028694, 41.835571, 45.242561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383682, 41.475513, 44.755070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492908, 41.247734, 45.065208>,  <41.558445, 41.111065, 45.251293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492908, 41.247734, 45.065208>,  <41.383682, 41.475513, 44.755070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492908, 41.247734, 45.065208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056521, -0.814080, -0.577996,
		0.960334, 0.114005, -0.254481,
		0.273063, -0.569453, 0.775345,
		41.574829, 41.076897, 45.297813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940586, 40.949532, 44.559261>,  <41.383682, 41.475513, 44.755070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940586, 40.949532, 44.559261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738785, 40.790165, 44.865658>,  <41.617702, 40.694546, 45.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738785, 40.790165, 44.865658>,  <41.940586, 40.949532, 44.559261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738785, 40.790165, 44.865658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007262, -0.889095, -0.457665,
		0.863379, -0.225331, 0.451445,
		-0.504504, -0.398417, 0.765990,
		41.587433, 40.670639, 45.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278072, 40.364067, 44.758896>,  <41.940586, 40.949532, 44.559261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278072, 40.364067, 44.758896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911060, 40.310863, 44.908798>,  <41.690853, 40.278942, 44.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911060, 40.310863, 44.908798>,  <42.278072, 40.364067, 44.758896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911060, 40.310863, 44.908798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107779, -0.823950, -0.556318,
		0.382779, -0.550831, 0.741664,
		-0.917531, -0.133011, 0.374759,
		41.635799, 40.270962, 45.021225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264687, 39.666958, 44.990089>,  <42.278072, 40.364067, 44.758896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264687, 39.666958, 44.990089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880733, 39.772125, 44.951111>,  <41.650360, 39.835224, 44.927723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.880733, 39.772125, 44.951111>,  <42.264687, 39.666958, 44.990089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880733, 39.772125, 44.951111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187116, -0.859457, -0.475733,
		-0.208828, -0.438415, 0.874176,
		-0.959885, 0.262919, -0.097444,
		41.592770, 39.851002, 44.921879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868233, 39.076206, 45.111702>,  <42.264687, 39.666958, 44.990089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868233, 39.076206, 45.111702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576294, 39.283848, 44.933781>,  <41.401131, 39.408432, 44.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576294, 39.283848, 44.933781>,  <41.868233, 39.076206, 45.111702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576294, 39.283848, 44.933781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346599, -0.841835, -0.413743,
		-0.589227, -0.147801, 0.794334,
		-0.729849, 0.519104, -0.444804,
		41.357338, 39.439579, 44.800339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313690, 38.551155, 45.000385>,  <41.868233, 39.076206, 45.111702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313690, 38.551155, 45.000385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223206, 38.857265, 44.759327>,  <41.168915, 39.040932, 44.614693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223206, 38.857265, 44.759327>,  <41.313690, 38.551155, 45.000385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223206, 38.857265, 44.759327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427006, -0.633979, -0.644777,
		-0.875496, 0.111476, 0.470192,
		-0.226215, 0.765274, -0.602646,
		41.155342, 39.086849, 44.578533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735008, 38.427837, 44.827984>,  <41.313690, 38.551155, 45.000385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735008, 38.427837, 44.827984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822552, 38.680500, 44.530499>,  <40.875076, 38.832096, 44.352005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822552, 38.680500, 44.530499>,  <40.735008, 38.427837, 44.827984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822552, 38.680500, 44.530499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223501, -0.709480, -0.668345,
		-0.949815, 0.312494, -0.014100,
		0.218857, 0.631653, -0.743718,
		40.888210, 38.869995, 44.307384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188583, 38.356438, 44.300365>,  <40.735008, 38.427837, 44.827984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188583, 38.356438, 44.300365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542568, 38.453896, 44.141628>,  <40.754959, 38.512371, 44.046387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542568, 38.453896, 44.141628>,  <40.188583, 38.356438, 44.300365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542568, 38.453896, 44.141628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228122, -0.516110, -0.825585,
		-0.405960, 0.821140, -0.401157,
		0.884962, 0.243642, -0.396840,
		40.808056, 38.526989, 44.022575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934544, 38.491966, 43.634075>,  <40.188583, 38.356438, 44.300365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934544, 38.491966, 43.634075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330025, 38.439358, 43.605312>,  <40.567314, 38.407791, 43.588055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330025, 38.439358, 43.605312>,  <39.934544, 38.491966, 43.634075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330025, 38.439358, 43.605312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126861, -0.478675, -0.868779,
		0.079845, 0.868085, -0.489952,
		0.988702, -0.131524, -0.071906,
		40.626637, 38.399902, 43.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152180, 38.690964, 42.951302>,  <39.934544, 38.491966, 43.634075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152180, 38.690964, 42.951302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447636, 38.446396, 43.064846>,  <40.624908, 38.299656, 43.132973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447636, 38.446396, 43.064846>,  <40.152180, 38.690964, 42.951302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447636, 38.446396, 43.064846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074556, -0.492611, -0.867050,
		0.669965, 0.619274, -0.409447,
		0.738640, -0.611420, 0.283862,
		40.669228, 38.262970, 43.150005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607090, 38.719444, 42.392017>,  <40.152180, 38.690964, 42.951302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607090, 38.719444, 42.392017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688622, 38.386391, 42.598000>,  <40.737541, 38.186558, 42.721588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688622, 38.386391, 42.598000>,  <40.607090, 38.719444, 42.392017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688622, 38.386391, 42.598000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102981, -0.504841, -0.857047,
		0.973575, 0.227721, -0.017156,
		0.203829, -0.832633, 0.514952,
		40.749771, 38.136600, 42.752483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159657, 38.445438, 42.076660>,  <40.607090, 38.719444, 42.392017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159657, 38.445438, 42.076660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045769, 38.127567, 42.291107>,  <40.977436, 37.936844, 42.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045769, 38.127567, 42.291107>,  <41.159657, 38.445438, 42.076660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045769, 38.127567, 42.291107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206606, -0.596996, -0.775184,
		0.936081, -0.109945, 0.334162,
		-0.284721, -0.794675, 0.536121,
		40.960354, 37.889164, 42.451942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698971, 37.973396, 41.947781>,  <41.159657, 38.445438, 42.076660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698971, 37.973396, 41.947781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361080, 37.775276, 42.028881>,  <41.158344, 37.656403, 42.077541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.361080, 37.775276, 42.028881>,  <41.698971, 37.973396, 41.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361080, 37.775276, 42.028881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022191, -0.346097, -0.937936,
		0.534734, -0.796801, 0.281367,
		-0.844729, -0.495302, 0.202752,
		41.107662, 37.626686, 42.089706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855801, 37.260506, 41.806622>,  <41.698971, 37.973396, 41.947781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855801, 37.260506, 41.806622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458138, 37.296097, 41.831070>,  <41.219540, 37.317451, 41.845741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458138, 37.296097, 41.831070>,  <41.855801, 37.260506, 41.806622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458138, 37.296097, 41.831070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094254, -0.439412, -0.893327,
		-0.052630, -0.893868, 0.445231,
		-0.994156, 0.088981, 0.061124,
		41.159889, 37.322792, 41.849407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571835, 36.612598, 41.574234>,  <41.855801, 37.260506, 41.806622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571835, 36.612598, 41.574234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273926, 36.872986, 41.515518>,  <41.095181, 37.029221, 41.480289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273926, 36.872986, 41.515518>,  <41.571835, 36.612598, 41.574234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273926, 36.872986, 41.515518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126319, -0.353523, -0.926858,
		-0.655251, -0.671758, 0.345525,
		-0.744775, 0.650971, -0.146790,
		41.050495, 37.068275, 41.471481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979233, 36.271061, 41.258480>,  <41.571835, 36.612598, 41.574234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979233, 36.271061, 41.258480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966625, 36.659241, 41.162792>,  <40.959061, 36.892151, 41.105377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966625, 36.659241, 41.162792>,  <40.979233, 36.271061, 41.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966625, 36.659241, 41.162792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210659, -0.240415, -0.947535,
		-0.977051, 0.020532, 0.212012,
		-0.031516, 0.970453, -0.239223,
		40.957169, 36.950378, 41.091026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446857, 36.251453, 40.816940>,  <40.979233, 36.271061, 41.258480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446857, 36.251453, 40.816940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624989, 36.602207, 40.744549>,  <40.731865, 36.812660, 40.701115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624989, 36.602207, 40.744549>,  <40.446857, 36.251453, 40.816940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624989, 36.602207, 40.744549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134545, -0.134299, -0.981764,
		-0.885202, 0.461554, 0.058174,
		0.445325, 0.876887, -0.180982,
		40.758587, 36.865273, 40.690254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059151, 36.464497, 40.238842>,  <40.446857, 36.251453, 40.816940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059151, 36.464497, 40.238842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376389, 36.707966, 40.229683>,  <40.566730, 36.854046, 40.224186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376389, 36.707966, 40.229683>,  <40.059151, 36.464497, 40.238842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376389, 36.707966, 40.229683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024288, -0.069166, -0.997310,
		-0.608617, 0.790402, -0.069639,
		0.793092, 0.608671, -0.022899,
		40.614315, 36.890568, 40.222813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828339, 36.986439, 39.779148>,  <40.059151, 36.464497, 40.238842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828339, 36.986439, 39.779148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226715, 37.014275, 39.801983>,  <40.465740, 37.030975, 39.815681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226715, 37.014275, 39.801983>,  <39.828339, 36.986439, 39.779148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226715, 37.014275, 39.801983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051856, 0.074755, -0.995853,
		-0.073571, 0.994771, 0.070842,
		0.995941, 0.069592, 0.057085,
		40.525497, 37.035152, 39.819107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104362, 37.471260, 39.243580>,  <39.828339, 36.986439, 39.779148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104362, 37.471260, 39.243580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413727, 37.235634, 39.337254>,  <40.599346, 37.094257, 39.393456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413727, 37.235634, 39.337254>,  <40.104362, 37.471260, 39.243580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413727, 37.235634, 39.337254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220520, -0.096335, -0.970613,
		0.594311, 0.802325, 0.055393,
		0.773412, -0.589061, 0.234181,
		40.645752, 37.058914, 39.407509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595802, 37.598213, 38.665337>,  <40.104362, 37.471260, 39.243580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595802, 37.598213, 38.665337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747417, 37.261368, 38.818790>,  <40.838387, 37.059261, 38.910862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747417, 37.261368, 38.818790>,  <40.595802, 37.598213, 38.665337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747417, 37.261368, 38.818790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274591, -0.293550, -0.915657,
		0.883704, 0.452410, 0.119970,
		0.379035, -0.842112, 0.383639,
		40.861130, 37.008736, 38.933884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224998, 37.359219, 38.244926>,  <40.595802, 37.598213, 38.665337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224998, 37.359219, 38.244926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094898, 37.034260, 38.438515>,  <41.016838, 36.839287, 38.554668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094898, 37.034260, 38.438515>,  <41.224998, 37.359219, 38.244926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094898, 37.034260, 38.438515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011972, -0.515298, -0.856927,
		0.945553, -0.272921, 0.177326,
		-0.325249, -0.812393, 0.483974,
		40.997322, 36.790543, 38.583706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647156, 36.817219, 38.006355>,  <41.224998, 37.359219, 38.244926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647156, 36.817219, 38.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318409, 36.627567, 38.132679>,  <41.121159, 36.513779, 38.208473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318409, 36.627567, 38.132679>,  <41.647156, 36.817219, 38.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318409, 36.627567, 38.132679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022625, -0.526760, -0.849713,
		0.569227, -0.705498, 0.422200,
		-0.821869, -0.474127, 0.315808,
		41.071850, 36.485329, 38.227421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720249, 36.176937, 37.822620>,  <41.647156, 36.817219, 38.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720249, 36.176937, 37.822620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325317, 36.194431, 37.883625>,  <41.088356, 36.204929, 37.920227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325317, 36.194431, 37.883625>,  <41.720249, 36.176937, 37.822620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325317, 36.194431, 37.883625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152526, -0.526385, -0.836454,
		0.043696, -0.849120, 0.526389,
		-0.987333, 0.043738, 0.152514,
		41.029118, 36.207554, 37.929379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461502, 35.538826, 37.625366>,  <41.720249, 36.176937, 37.822620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461502, 35.538826, 37.625366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113941, 35.736057, 37.642693>,  <40.905403, 35.854397, 37.653088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113941, 35.736057, 37.642693>,  <41.461502, 35.538826, 37.625366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113941, 35.736057, 37.642693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212822, -0.293151, -0.932078,
		-0.446890, -0.819106, 0.359659,
		-0.868905, 0.493079, 0.043318,
		40.853268, 35.883980, 37.655689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015942, 35.084892, 37.484856>,  <41.461502, 35.538826, 37.625366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015942, 35.084892, 37.484856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872040, 35.442955, 37.379574>,  <40.785698, 35.657791, 37.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872040, 35.442955, 37.379574>,  <41.015942, 35.084892, 37.484856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872040, 35.442955, 37.379574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062631, -0.304619, -0.950413,
		-0.930944, -0.325426, 0.165652,
		-0.359750, 0.895156, -0.263201,
		40.764114, 35.711502, 37.300613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395657, 35.062386, 37.098186>,  <41.015942, 35.084892, 37.484856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395657, 35.062386, 37.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578041, 35.403236, 36.995438>,  <40.687473, 35.607746, 36.933788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578041, 35.403236, 36.995438>,  <40.395657, 35.062386, 37.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578041, 35.403236, 36.995438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012400, -0.294670, -0.955519,
		-0.889914, 0.432493, -0.144923,
		0.455960, 0.852127, -0.256868,
		40.714828, 35.658875, 36.918377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289886, 35.107708, 36.389038>,  <40.395657, 35.062386, 37.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289886, 35.107708, 36.389038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608154, 35.337318, 36.466396>,  <40.799114, 35.475086, 36.512814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608154, 35.337318, 36.466396>,  <40.289886, 35.107708, 36.389038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608154, 35.337318, 36.466396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403551, -0.264238, -0.875971,
		-0.451728, 0.775029, -0.441895,
		0.795669, 0.574028, 0.193400,
		40.846855, 35.509525, 36.524418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376492, 35.484291, 35.815079>,  <40.289886, 35.107708, 36.389038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376492, 35.484291, 35.815079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728168, 35.427917, 35.997135>,  <40.939175, 35.394093, 36.106369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728168, 35.427917, 35.997135>,  <40.376492, 35.484291, 35.815079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728168, 35.427917, 35.997135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411527, -0.256818, -0.874466,
		0.240130, 0.956129, -0.167796,
		0.879195, -0.140934, 0.455142,
		40.991928, 35.385639, 36.133678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047607, 35.797169, 35.340435>,  <40.376492, 35.484291, 35.815079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047607, 35.797169, 35.340435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133480, 35.497437, 35.591007>,  <41.185005, 35.317596, 35.741352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133480, 35.497437, 35.591007>,  <41.047607, 35.797169, 35.340435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133480, 35.497437, 35.591007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644595, -0.373155, -0.667273,
		0.733764, 0.547043, 0.402907,
		0.214680, -0.749332, 0.626429,
		41.197884, 35.272636, 35.778934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726818, 35.847454, 35.387646>,  <41.047607, 35.797169, 35.340435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726818, 35.847454, 35.387646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614090, 35.475433, 35.481945>,  <41.546452, 35.252220, 35.538525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614090, 35.475433, 35.481945>,  <41.726818, 35.847454, 35.387646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614090, 35.475433, 35.481945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859686, -0.353877, -0.368390,
		0.426048, 0.098848, 0.899284,
		-0.281821, -0.930054, 0.235747,
		41.529545, 35.196419, 35.552670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153454, 35.502338, 35.932018>,  <41.726818, 35.847454, 35.387646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153454, 35.502338, 35.932018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007088, 35.227245, 35.681221>,  <41.919266, 35.062187, 35.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007088, 35.227245, 35.681221>,  <42.153454, 35.502338, 35.932018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007088, 35.227245, 35.681221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930544, -0.260359, -0.257488,
		0.013839, -0.677667, 0.735238,
		-0.365917, -0.687735, -0.626997,
		41.897312, 35.020924, 35.493122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566021, 34.816509, 36.025223>,  <42.153454, 35.502338, 35.932018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566021, 34.816509, 36.025223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395210, 34.829655, 35.663765>,  <42.292725, 34.837543, 35.446892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395210, 34.829655, 35.663765>,  <42.566021, 34.816509, 36.025223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395210, 34.829655, 35.663765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865862, -0.273189, -0.419108,
		-0.260636, -0.961399, 0.088209,
		-0.427027, 0.032858, -0.903641,
		42.267101, 34.839512, 35.392673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327671, 34.430653, 35.907303>,  <42.566021, 34.816509, 36.025223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327671, 34.430653, 35.907303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641399, 34.661812, 35.997520>,  <43.829636, 34.800507, 36.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641399, 34.661812, 35.997520>,  <43.327671, 34.430653, 35.907303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641399, 34.661812, 35.997520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607153, 0.640508, 0.470228,
		0.127278, -0.505753, 0.853237,
		0.784325, 0.577895, 0.225547,
		43.876698, 34.835182, 36.065186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321529, 34.607555, 36.692410>,  <43.327671, 34.430653, 35.907303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321529, 34.607555, 36.692410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559456, 34.889347, 36.537540>,  <43.702213, 35.058422, 36.444618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559456, 34.889347, 36.537540>,  <43.321529, 34.607555, 36.692410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559456, 34.889347, 36.537540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500952, 0.701530, 0.506855,
		0.628680, -0.107534, 0.770193,
		0.594818, 0.704480, -0.387169,
		43.737900, 35.100693, 36.421391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600224, 35.133202, 37.307178>,  <43.321529, 34.607555, 36.692410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600224, 35.133202, 37.307178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606171, 35.291622, 36.939934>,  <43.609741, 35.386677, 36.719589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606171, 35.291622, 36.939934>,  <43.600224, 35.133202, 37.307178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606171, 35.291622, 36.939934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365336, 0.856876, 0.363721,
		0.930757, 0.330009, 0.157435,
		0.014871, 0.396053, -0.918107,
		43.610634, 35.410439, 36.664501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444744, 35.722141, 37.577984>,  <43.600224, 35.133202, 37.307178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444744, 35.722141, 37.577984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483982, 35.781811, 37.184410>,  <43.507526, 35.817612, 36.948265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483982, 35.781811, 37.184410>,  <43.444744, 35.722141, 37.577984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483982, 35.781811, 37.184410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249396, 0.960836, 0.120810,
		0.963420, 0.233538, 0.131462,
		0.098100, 0.149177, -0.983932,
		43.513412, 35.826565, 36.889229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076721, 36.222591, 37.315495>,  <43.444744, 35.722141, 37.577984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076721, 36.222591, 37.315495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766747, 36.224693, 37.062687>,  <43.580761, 36.225952, 36.911003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766747, 36.224693, 37.062687>,  <44.076721, 36.222591, 37.315495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766747, 36.224693, 37.062687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225270, 0.932000, 0.283952,
		0.590531, 0.362419, -0.721058,
		-0.774936, 0.005250, -0.632017,
		43.534267, 36.226269, 36.873081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081394, 36.894966, 37.063492>,  <44.076721, 36.222591, 37.315495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081394, 36.894966, 37.063492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706627, 36.782001, 36.981098>,  <43.481766, 36.714222, 36.931660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706627, 36.782001, 36.981098>,  <44.081394, 36.894966, 37.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706627, 36.782001, 36.981098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330405, 0.907844, 0.258170,
		0.114095, 0.309944, -0.943884,
		-0.936917, -0.282408, -0.205988,
		43.425552, 36.697281, 36.919300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734131, 37.545238, 36.799313>,  <44.081394, 36.894966, 37.063492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734131, 37.545238, 36.799313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422909, 37.313854, 36.897301>,  <43.236176, 37.175026, 36.956093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422909, 37.313854, 36.897301>,  <43.734131, 37.545238, 36.799313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422909, 37.313854, 36.897301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480141, 0.799070, 0.361873,
		-0.405079, 0.163937, -0.899464,
		-0.778059, -0.578457, 0.244974,
		43.189491, 37.140316, 36.970795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102997, 37.867714, 36.501484>,  <43.734131, 37.545238, 36.799313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102997, 37.867714, 36.501484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960079, 37.635361, 36.794037>,  <42.874329, 37.495949, 36.969570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960079, 37.635361, 36.794037>,  <43.102997, 37.867714, 36.501484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960079, 37.635361, 36.794037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709517, 0.678053, 0.191911,
		-0.607393, -0.450358, -0.654410,
		-0.357295, -0.580880, 0.731381,
		42.852890, 37.461098, 37.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461861, 37.963764, 36.435295>,  <43.102997, 37.867714, 36.501484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461861, 37.963764, 36.435295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491203, 37.815907, 36.805805>,  <42.508808, 37.727192, 37.028111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491203, 37.815907, 36.805805>,  <42.461861, 37.963764, 36.435295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491203, 37.815907, 36.805805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761635, 0.578837, 0.291309,
		-0.643842, -0.726850, -0.239075,
		0.073352, -0.369645, 0.926273,
		42.513210, 37.705013, 37.083687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807323, 37.819992, 36.627750>,  <42.461861, 37.963764, 36.435295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807323, 37.819992, 36.627750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991570, 37.855595, 36.981003>,  <42.102116, 37.876957, 37.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.991570, 37.855595, 36.981003>,  <41.807323, 37.819992, 36.627750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991570, 37.855595, 36.981003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668959, 0.688751, 0.279490,
		-0.583379, -0.719513, 0.376790,
		0.460611, 0.089009, 0.883128,
		42.129753, 37.882298, 37.245941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328556, 37.780182, 37.090893>,  <41.807323, 37.819992, 36.627750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328556, 37.780182, 37.090893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602821, 37.950634, 37.326950>,  <41.767380, 38.052906, 37.468586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602821, 37.950634, 37.326950>,  <41.328556, 37.780182, 37.090893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602821, 37.950634, 37.326950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726829, 0.445092, 0.523080,
		-0.039767, -0.787593, 0.614911,
		0.685667, 0.426134, 0.590145,
		41.808521, 38.078476, 37.503994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997570, 37.894222, 37.750366>,  <41.328556, 37.780182, 37.090893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997570, 37.894222, 37.750366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311424, 38.142071, 37.758568>,  <41.499737, 38.290779, 37.763489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311424, 38.142071, 37.758568>,  <40.997570, 37.894222, 37.750366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311424, 38.142071, 37.758568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592183, 0.739276, 0.320610,
		0.183501, -0.263702, 0.946989,
		0.784632, 0.619623, 0.020502,
		41.546814, 38.327957, 37.764717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995262, 38.333366, 38.412048>,  <40.997570, 37.894222, 37.750366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995262, 38.333366, 38.412048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241894, 38.543762, 38.177727>,  <41.389874, 38.669998, 38.037132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241894, 38.543762, 38.177727>,  <40.995262, 38.333366, 38.412048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241894, 38.543762, 38.177727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544041, 0.822495, 0.165895,
		0.569081, 0.216415, 0.793292,
		0.616576, 0.525991, -0.585805,
		41.426865, 38.701561, 38.001984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054028, 39.015110, 38.750385>,  <40.995262, 38.333366, 38.412048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054028, 39.015110, 38.750385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155067, 39.057365, 38.365669>,  <41.215691, 39.082718, 38.134842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155067, 39.057365, 38.365669>,  <41.054028, 39.015110, 38.750385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155067, 39.057365, 38.365669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492559, 0.869621, -0.033850,
		0.832815, 0.482287, 0.271696,
		0.252598, 0.105635, -0.961788,
		41.230846, 39.089054, 38.077133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121113, 39.714832, 38.682373>,  <41.054028, 39.015110, 38.750385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121113, 39.714832, 38.682373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118019, 39.603157, 38.298290>,  <41.116165, 39.536152, 38.067841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118019, 39.603157, 38.298290>,  <41.121113, 39.714832, 38.682373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118019, 39.603157, 38.298290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286348, 0.920640, -0.265380,
		0.958094, 0.272901, -0.087065,
		-0.007733, -0.279190, -0.960205,
		41.115700, 39.519402, 38.010227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704109, 40.129311, 38.295502>,  <41.121113, 39.714832, 38.682373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704109, 40.129311, 38.295502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392162, 40.016014, 38.072224>,  <41.204994, 39.948036, 37.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392162, 40.016014, 38.072224>,  <41.704109, 40.129311, 38.295502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392162, 40.016014, 38.072224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245065, 0.958737, -0.144107,
		0.575982, 0.024411, -0.817098,
		-0.779864, -0.283245, -0.558198,
		41.158203, 39.931042, 37.904766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688499, 40.519131, 37.811466>,  <41.704109, 40.129311, 38.295502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688499, 40.519131, 37.811466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316532, 40.387573, 37.745636>,  <41.093353, 40.308640, 37.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316532, 40.387573, 37.745636>,  <41.688499, 40.519131, 37.811466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316532, 40.387573, 37.745636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261488, 0.905949, -0.332989,
		0.258613, -0.266617, -0.928458,
		-0.929916, -0.328896, -0.164573,
		41.037556, 40.288906, 37.696262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463604, 40.740952, 37.131836>,  <41.688499, 40.519131, 37.811466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463604, 40.740952, 37.131836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135773, 40.670883, 37.350052>,  <40.939075, 40.628841, 37.480980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135773, 40.670883, 37.350052>,  <41.463604, 40.740952, 37.131836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135773, 40.670883, 37.350052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315820, 0.932536, -0.175028,
		-0.478072, -0.315740, -0.819607,
		-0.819576, -0.175172, 0.545536,
		40.889900, 40.618332, 37.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971733, 41.022961, 36.643131>,  <41.463604, 40.740952, 37.131836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971733, 41.022961, 36.643131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767452, 40.967304, 36.982498>,  <40.644882, 40.933910, 37.186119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767452, 40.967304, 36.982498>,  <40.971733, 41.022961, 36.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767452, 40.967304, 36.982498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483429, 0.862515, -0.149548,
		-0.710968, -0.486527, -0.507756,
		-0.510706, -0.139140, 0.848422,
		40.614239, 40.925564, 37.237026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344929, 41.219643, 36.466686>,  <40.971733, 41.022961, 36.643131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344929, 41.219643, 36.466686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356678, 41.224613, 36.866482>,  <40.363728, 41.227596, 37.106361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356678, 41.224613, 36.866482>,  <40.344929, 41.219643, 36.466686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356678, 41.224613, 36.866482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446342, 0.894861, 0.001989,
		-0.894381, -0.446173, 0.031835,
		0.029375, 0.012430, 0.999491,
		40.365490, 41.228344, 37.166328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620228, 41.270107, 36.738403>,  <40.344929, 41.219643, 36.466686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620228, 41.270107, 36.738403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880219, 41.400860, 37.012825>,  <40.036213, 41.479309, 37.177479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880219, 41.400860, 37.012825>,  <39.620228, 41.270107, 36.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880219, 41.400860, 37.012825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432802, 0.901281, -0.019383,
		-0.624667, -0.284329, 0.727288,
		0.649979, 0.326879, 0.686059,
		40.075211, 41.498924, 37.218643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370388, 41.586140, 37.376995>,  <39.620228, 41.270107, 36.738403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370388, 41.586140, 37.376995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715755, 41.769348, 37.292400>,  <39.922974, 41.879272, 37.241646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715755, 41.769348, 37.292400>,  <39.370388, 41.586140, 37.376995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715755, 41.769348, 37.292400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463205, 0.885828, 0.027388,
		0.199883, 0.074313, 0.976998,
		0.863417, 0.458025, -0.211484,
		39.974781, 41.906757, 37.228954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386925, 42.201885, 37.887829>,  <39.370388, 41.586140, 37.376995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386925, 42.201885, 37.887829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604317, 42.260639, 37.557240>,  <39.734753, 42.295891, 37.358887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604317, 42.260639, 37.557240>,  <39.386925, 42.201885, 37.887829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604317, 42.260639, 37.557240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217575, 0.975573, 0.030304,
		0.810737, 0.163351, 0.562159,
		0.543477, 0.146880, -0.826474,
		39.767361, 42.304703, 37.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046577, 42.727478, 37.926243>,  <39.386925, 42.201885, 37.887829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046577, 42.727478, 37.926243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831955, 42.681351, 37.591866>,  <39.703182, 42.653675, 37.391239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831955, 42.681351, 37.591866>,  <40.046577, 42.727478, 37.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831955, 42.681351, 37.591866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149743, 0.987909, -0.040173,
		0.830472, 0.103621, -0.547339,
		-0.536558, -0.115323, -0.835947,
		39.670986, 42.646755, 37.341080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758591, 42.963997, 37.848125>,  <40.046577, 42.727478, 37.926243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758591, 42.963997, 37.848125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016560, 43.015831, 37.546852>,  <41.171341, 43.046932, 37.366089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016560, 43.015831, 37.546852>,  <40.758591, 42.963997, 37.848125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016560, 43.015831, 37.546852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677467, 0.359191, 0.641888,
		0.353724, -0.924222, 0.143851,
		0.644917, 0.129597, -0.753184,
		41.210037, 43.054707, 37.320896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470207, 42.801991, 38.117584>,  <40.758591, 42.963997, 37.848125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470207, 42.801991, 38.117584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478683, 43.065754, 37.816990>,  <41.483768, 43.224010, 37.636631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478683, 43.065754, 37.816990>,  <41.470207, 42.801991, 38.117584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478683, 43.065754, 37.816990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777939, 0.461260, 0.426673,
		0.627982, -0.593652, -0.503205,
		0.021187, 0.659406, -0.751488,
		41.485039, 43.263577, 37.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128086, 42.830681, 37.910343>,  <41.470207, 42.801991, 38.117584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128086, 42.830681, 37.910343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973450, 43.195644, 37.856594>,  <41.880669, 43.414623, 37.824345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973450, 43.195644, 37.856594>,  <42.128086, 42.830681, 37.910343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973450, 43.195644, 37.856594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827349, 0.407483, 0.386589,
		0.407483, 0.038277, -0.912410,
		-0.386589, 0.912410, -0.134374,
		41.857471, 43.469368, 37.816280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652538, 43.313446, 37.550034>,  <42.128086, 42.830681, 37.910343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652538, 43.313446, 37.550034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384731, 43.531231, 37.752144>,  <42.224049, 43.661903, 37.873409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384731, 43.531231, 37.752144>,  <42.652538, 43.313446, 37.550034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384731, 43.531231, 37.752144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740572, 0.541877, 0.397394,
		-0.057431, 0.640256, -0.766011,
		-0.669519, 0.544464, 0.505277,
		42.183876, 43.694569, 37.903728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919575, 43.938354, 38.001213>,  <42.652538, 43.313446, 37.550034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919575, 43.938354, 38.001213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184887, 44.135975, 38.226059>,  <43.344074, 44.254547, 38.360966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184887, 44.135975, 38.226059>,  <42.919575, 43.938354, 38.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184887, 44.135975, 38.226059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412004, -0.868107, 0.276844,
		0.624749, 0.047967, -0.779351,
		0.663281, 0.494054, 0.562112,
		43.383873, 44.284191, 38.394691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573250, 43.866520, 37.698460>,  <42.919575, 43.938354, 38.001213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573250, 43.866520, 37.698460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595585, 43.893669, 38.096912>,  <43.608986, 43.909958, 38.335983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595585, 43.893669, 38.096912>,  <43.573250, 43.866520, 37.698460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595585, 43.893669, 38.096912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401622, -0.914939, 0.039828,
		0.914102, 0.397844, -0.078343,
		0.055833, 0.067871, 0.996131,
		43.612335, 43.914032, 38.395752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231888, 43.850479, 38.043125>,  <43.573250, 43.866520, 37.698460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231888, 43.850479, 38.043125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958664, 43.673046, 38.275219>,  <43.794731, 43.566586, 38.414474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958664, 43.673046, 38.275219>,  <44.231888, 43.850479, 38.043125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958664, 43.673046, 38.275219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575195, -0.816293, 0.053075,
		0.450095, 0.369999, 0.812721,
		-0.683056, -0.443584, 0.580231,
		43.753746, 43.539970, 38.449287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629555, 43.596916, 38.698376>,  <44.231888, 43.850479, 38.043125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629555, 43.596916, 38.698376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321217, 43.366020, 38.590611>,  <44.136211, 43.227482, 38.525951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321217, 43.366020, 38.590611>,  <44.629555, 43.596916, 38.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321217, 43.366020, 38.590611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541539, -0.816532, 0.200029,
		-0.335451, 0.008293, 0.942021,
		-0.770849, -0.577241, -0.269415,
		44.089962, 43.192848, 38.509785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648342, 42.977974, 39.132465>,  <44.629555, 43.596916, 38.698376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648342, 42.977974, 39.132465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396008, 42.872036, 38.840736>,  <44.244606, 42.808472, 38.665699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396008, 42.872036, 38.840736>,  <44.648342, 42.977974, 39.132465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396008, 42.872036, 38.840736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434295, -0.899436, -0.049024,
		-0.642991, -0.347665, 0.682416,
		-0.630833, -0.264848, -0.729318,
		44.206757, 42.792580, 38.621941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312374, 42.258446, 39.283195>,  <44.648342, 42.977974, 39.132465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312374, 42.258446, 39.283195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278282, 42.310841, 38.888111>,  <44.257828, 42.342278, 38.651058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.278282, 42.310841, 38.888111>,  <44.312374, 42.258446, 39.283195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278282, 42.310841, 38.888111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397298, -0.904632, -0.154255,
		-0.913723, -0.405563, 0.025058,
		-0.085229, 0.130991, -0.987713,
		44.252712, 42.350140, 38.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015526, 41.622345, 39.075539>,  <44.312374, 42.258446, 39.283195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015526, 41.622345, 39.075539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168373, 41.768559, 38.736042>,  <44.260082, 41.856285, 38.532345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168373, 41.768559, 38.736042>,  <44.015526, 41.622345, 39.075539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168373, 41.768559, 38.736042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333008, -0.911205, -0.242508,
		-0.862026, -0.189971, -0.469918,
		0.382122, 0.365535, -0.848745,
		44.283009, 41.878220, 38.481419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819649, 41.230141, 38.574360>,  <44.015526, 41.622345, 39.075539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819649, 41.230141, 38.574360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149437, 41.415291, 38.444138>,  <44.347309, 41.526382, 38.366005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149437, 41.415291, 38.444138>,  <43.819649, 41.230141, 38.574360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149437, 41.415291, 38.444138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354406, -0.870843, -0.340630,
		-0.441181, 0.165460, -0.882033,
		0.824473, 0.462877, -0.325559,
		44.396778, 41.554153, 38.346470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790276, 40.953579, 37.911823>,  <43.819649, 41.230141, 38.574360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790276, 40.953579, 37.911823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155735, 41.088268, 38.002918>,  <44.375011, 41.169083, 38.057575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155735, 41.088268, 38.002918>,  <43.790276, 40.953579, 37.911823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155735, 41.088268, 38.002918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405467, -0.714829, -0.569752,
		-0.029058, 0.612891, -0.789633,
		0.913648, 0.336726, 0.227735,
		44.429829, 41.189285, 38.071239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175476, 40.746815, 37.328327>,  <43.790276, 40.953579, 37.911823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175476, 40.746815, 37.328327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475998, 40.836823, 37.576488>,  <44.656311, 40.890827, 37.725388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475998, 40.836823, 37.576488>,  <44.175476, 40.746815, 37.328327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475998, 40.836823, 37.576488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493145, -0.816148, -0.301182,
		0.438571, 0.532231, -0.724145,
		0.751308, 0.225019, 0.620406,
		44.701389, 40.904327, 37.762611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774170, 40.633701, 36.927498>,  <44.175476, 40.746815, 37.328327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774170, 40.633701, 36.927498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892841, 40.636250, 37.309479>,  <44.964046, 40.637779, 37.538670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892841, 40.636250, 37.309479>,  <44.774170, 40.633701, 36.927498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892841, 40.636250, 37.309479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653076, -0.730944, -0.198021,
		0.696758, 0.682408, -0.221015,
		0.296681, 0.006367, 0.954955,
		44.981846, 40.638161, 37.595966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574211, 40.716850, 36.973587>,  <44.774170, 40.633701, 36.927498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574211, 40.716850, 36.973587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450573, 40.540386, 37.310593>,  <45.376389, 40.434509, 37.512798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450573, 40.540386, 37.310593>,  <45.574211, 40.716850, 36.973587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450573, 40.540386, 37.310593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642310, -0.750161, -0.157153,
		0.701354, 0.492582, 0.515234,
		-0.309097, -0.441160, 0.842518,
		45.357845, 40.408039, 37.563347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136471, 40.513374, 37.286034>,  <45.574211, 40.716850, 36.973587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136471, 40.513374, 37.286034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871601, 40.287594, 37.483181>,  <45.712677, 40.152126, 37.601471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871601, 40.287594, 37.483181>,  <46.136471, 40.513374, 37.286034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871601, 40.287594, 37.483181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559823, -0.809850, -0.175333,
		0.498118, 0.159819, 0.852254,
		-0.662176, -0.564448, 0.492871,
		45.672947, 40.118259, 37.631042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586445, 40.003197, 37.451519>,  <46.136471, 40.513374, 37.286034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586445, 40.003197, 37.451519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223652, 39.856884, 37.535027>,  <46.005978, 39.769096, 37.585129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223652, 39.856884, 37.535027>,  <46.586445, 40.003197, 37.451519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223652, 39.856884, 37.535027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306446, -0.913185, -0.268671,
		0.288917, -0.179705, 0.940337,
		-0.906983, -0.365786, 0.208765,
		45.951557, 39.747147, 37.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632622, 39.420013, 37.927696>,  <46.586445, 40.003197, 37.451519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632622, 39.420013, 37.927696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306988, 39.387020, 37.697754>,  <46.111607, 39.367226, 37.559788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.306988, 39.387020, 37.697754>,  <46.632622, 39.420013, 37.927696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.306988, 39.387020, 37.697754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343170, -0.866879, -0.361600,
		-0.468506, -0.491647, 0.734020,
		-0.814086, -0.082482, -0.574857,
		46.062763, 39.362274, 37.525295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398190, 38.696304, 37.980915>,  <46.632622, 39.420013, 37.927696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398190, 38.696304, 37.980915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172092, 38.821102, 37.675453>,  <46.036434, 38.895981, 37.492176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172092, 38.821102, 37.675453>,  <46.398190, 38.696304, 37.980915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172092, 38.821102, 37.675453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106511, -0.890370, -0.442602,
		-0.818019, -0.331515, 0.470045,
		-0.565243, 0.311993, -0.763650,
		46.002522, 38.914700, 37.446358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001610, 38.095768, 37.906685>,  <46.398190, 38.696304, 37.980915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001610, 38.095768, 37.906685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991470, 38.293041, 37.558861>,  <45.985386, 38.411404, 37.350166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.991470, 38.293041, 37.558861>,  <46.001610, 38.095768, 37.906685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991470, 38.293041, 37.558861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026443, -0.869201, -0.493751,
		-0.999329, -0.035511, 0.008994,
		-0.025352, 0.493182, -0.869557,
		45.983864, 38.440994, 37.297993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421200, 37.786919, 37.552326>,  <46.001610, 38.095768, 37.906685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421200, 37.786919, 37.552326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695339, 37.953918, 37.313667>,  <45.859821, 38.054119, 37.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695339, 37.953918, 37.313667>,  <45.421200, 37.786919, 37.552326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695339, 37.953918, 37.313667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066662, -0.779919, -0.622320,
		-0.725158, 0.466279, -0.506684,
		0.685348, 0.417504, -0.596648,
		45.900944, 38.079170, 37.134674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210487, 37.558674, 36.929806>,  <45.421200, 37.786919, 37.552326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210487, 37.558674, 36.929806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565464, 37.706188, 36.819210>,  <45.778450, 37.794697, 36.752853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565464, 37.706188, 36.819210>,  <45.210487, 37.558674, 36.929806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565464, 37.706188, 36.819210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117971, -0.761610, -0.637208,
		-0.445570, 0.532866, -0.719389,
		0.887440, 0.368788, -0.276487,
		45.831696, 37.816826, 36.736263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254105, 37.475849, 36.130863>,  <45.210487, 37.558674, 36.929806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254105, 37.475849, 36.130863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628902, 37.516689, 36.264500>,  <45.853783, 37.541191, 36.344681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628902, 37.516689, 36.264500>,  <45.254105, 37.475849, 36.130863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628902, 37.516689, 36.264500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285132, -0.776064, -0.562517,
		0.201847, 0.622335, -0.756278,
		0.936994, 0.102097, 0.334094,
		45.910000, 37.547318, 36.364727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656586, 37.368271, 35.559486>,  <45.254105, 37.475849, 36.130863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656586, 37.368271, 35.559486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887138, 37.277481, 35.873497>,  <46.025471, 37.223007, 36.061905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887138, 37.277481, 35.873497>,  <45.656586, 37.368271, 35.559486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887138, 37.277481, 35.873497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429070, -0.733519, -0.527114,
		0.695472, 0.640651, -0.325400,
		0.576383, -0.226974, 0.785026,
		46.060055, 37.209389, 36.109005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421638, 37.385071, 35.296978>,  <45.656586, 37.368271, 35.559486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421638, 37.385071, 35.296978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369469, 37.166275, 35.627743>,  <46.338169, 37.034996, 35.826202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369469, 37.166275, 35.627743>,  <46.421638, 37.385071, 35.296978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369469, 37.166275, 35.627743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483831, -0.763099, -0.428470,
		0.865389, 0.344207, 0.364175,
		-0.130420, -0.546993, 0.826916,
		46.330341, 37.002178, 35.875816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127895, 36.993542, 35.437138>,  <46.421638, 37.385071, 35.296978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127895, 36.993542, 35.437138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827538, 36.820972, 35.637154>,  <46.647324, 36.717430, 35.757164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.827538, 36.820972, 35.637154>,  <47.127895, 36.993542, 35.437138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.827538, 36.820972, 35.637154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318580, -0.899848, -0.297961,
		0.578504, -0.064435, 0.813131,
		-0.750893, -0.431419, 0.500037,
		46.602268, 36.691547, 35.787167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274704, 36.543457, 35.995789>,  <47.127895, 36.993542, 35.437138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274704, 36.543457, 35.995789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963047, 36.409046, 35.784119>,  <46.776054, 36.328400, 35.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.963047, 36.409046, 35.784119>,  <47.274704, 36.543457, 35.995789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.963047, 36.409046, 35.784119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571916, -0.726652, -0.380642,
		-0.256617, -0.599216, 0.758346,
		-0.779140, -0.336031, -0.529173,
		46.729305, 36.308235, 35.625366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.123169, 35.863678, 36.211319>,  <47.274704, 36.543457, 35.995789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.123169, 35.863678, 36.211319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066769, 35.941257, 35.822990>,  <47.032928, 35.987804, 35.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066769, 35.941257, 35.822990>,  <47.123169, 35.863678, 36.211319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066769, 35.941257, 35.822990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606184, -0.758390, -0.239551,
		-0.782726, -0.622275, -0.010639,
		-0.140998, 0.193952, -0.970825,
		47.024467, 35.999443, 35.531742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240337, 35.265781, 35.959618>,  <47.123169, 35.863678, 36.211319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240337, 35.265781, 35.959618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294758, 35.490646, 35.633312>,  <47.327412, 35.625565, 35.437531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.294758, 35.490646, 35.633312>,  <47.240337, 35.265781, 35.959618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.294758, 35.490646, 35.633312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774591, -0.573723, -0.266177,
		-0.617655, -0.595668, -0.513500,
		0.136054, 0.562158, -0.815762,
		47.335575, 35.659294, 35.388584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.334427, 34.925659, 35.311512>,  <47.240337, 35.265781, 35.959618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.334427, 34.925659, 35.311512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544399, 35.265320, 35.288219>,  <47.670383, 35.469116, 35.274242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544399, 35.265320, 35.288219>,  <47.334427, 34.925659, 35.311512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544399, 35.265320, 35.288219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770277, -0.503055, -0.391931,
		-0.362102, 0.160881, -0.918150,
		0.524934, 0.849148, -0.058234,
		47.701878, 35.520065, 35.270748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561394, 34.820175, 34.693611>,  <47.334427, 34.925659, 35.311512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561394, 34.820175, 34.693611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809349, 35.068707, 34.885311>,  <47.958122, 35.217827, 35.000332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809349, 35.068707, 34.885311>,  <47.561394, 34.820175, 34.693611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809349, 35.068707, 34.885311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782783, -0.447139, -0.432802,
		-0.054621, 0.643441, -0.763545,
		0.619892, 0.621330, 0.479251,
		47.995316, 35.255104, 35.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.286449, 41.445690, 43.466217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950729, 41.319160, 43.643085>,  <34.749298, 41.243244, 43.749207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.950729, 41.319160, 43.643085>,  <35.286449, 41.445690, 43.466217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950729, 41.319160, 43.643085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112779, -0.694326, -0.710769,
		0.531845, -0.646415, 0.547073,
		-0.839298, -0.316320, 0.442176,
		34.698940, 41.224266, 43.775738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329845, 40.740860, 43.455891>,  <35.286449, 41.445690, 43.466217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329845, 40.740860, 43.455891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944778, 40.823002, 43.526424>,  <34.713737, 40.872288, 43.568745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.944778, 40.823002, 43.526424>,  <35.329845, 40.740860, 43.455891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944778, 40.823002, 43.526424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269407, -0.663853, -0.697653,
		-0.026204, -0.719117, 0.694395,
		-0.962670, 0.205356, 0.176339,
		34.655979, 40.884609, 43.579327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036552, 40.159229, 43.616215>,  <35.329845, 40.740860, 43.455891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036552, 40.159229, 43.616215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.715824, 40.365055, 43.494686>,  <34.523388, 40.488548, 43.421768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.715824, 40.365055, 43.494686>,  <35.036552, 40.159229, 43.616215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715824, 40.365055, 43.494686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267857, -0.763989, -0.587004,
		-0.534169, -0.389290, 0.750411,
		-0.801820, 0.514562, -0.303825,
		34.475277, 40.519424, 43.403538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439869, 39.628296, 43.654480>,  <35.036552, 40.159229, 43.616215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439869, 39.628296, 43.654480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347809, 39.930279, 43.408855>,  <34.292572, 40.111469, 43.261482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.347809, 39.930279, 43.408855>,  <34.439869, 39.628296, 43.654480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347809, 39.930279, 43.408855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300926, -0.655282, -0.692856,
		-0.925459, 0.025327, 0.377999,
		-0.230148, 0.754960, -0.614058,
		34.278763, 40.156765, 43.224636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861328, 39.269932, 43.326637>,  <34.439869, 39.628296, 43.654480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861328, 39.269932, 43.326637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977894, 39.584003, 43.108070>,  <34.047832, 39.772446, 42.976933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.977894, 39.584003, 43.108070>,  <33.861328, 39.269932, 43.326637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977894, 39.584003, 43.108070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163297, -0.521988, -0.837175,
		-0.942557, 0.333189, -0.023894,
		0.291410, 0.785184, -0.546413,
		34.065315, 39.819557, 42.944145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454475, 39.121525, 42.697746>,  <33.861328, 39.269932, 43.326637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454475, 39.121525, 42.697746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734001, 39.389153, 42.596558>,  <33.901718, 39.549728, 42.535843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.734001, 39.389153, 42.596558>,  <33.454475, 39.121525, 42.697746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734001, 39.389153, 42.596558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115949, -0.454941, -0.882941,
		-0.705838, 0.587684, -0.395500,
		0.698819, 0.669071, -0.252973,
		33.943645, 39.589874, 42.520664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297485, 39.261669, 42.035740>,  <33.454475, 39.121525, 42.697746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297485, 39.261669, 42.035740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671944, 39.388287, 42.096958>,  <33.896618, 39.464256, 42.133690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671944, 39.388287, 42.096958>,  <33.297485, 39.261669, 42.035740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671944, 39.388287, 42.096958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285193, -0.429042, -0.857081,
		-0.205639, 0.846004, -0.491924,
		0.936150, 0.316543, 0.153047,
		33.952789, 39.483250, 42.142872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428848, 39.512257, 41.337475>,  <33.297485, 39.261669, 42.035740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428848, 39.512257, 41.337475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759689, 39.479622, 41.559910>,  <33.958195, 39.460041, 41.693371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759689, 39.479622, 41.559910>,  <33.428848, 39.512257, 41.337475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759689, 39.479622, 41.559910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326468, -0.735642, -0.593507,
		0.457509, 0.672439, -0.581817,
		0.827106, -0.081590, 0.556092,
		34.007820, 39.455143, 41.726738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057873, 39.766376, 40.944290>,  <33.428848, 39.512257, 41.337475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057873, 39.766376, 40.944290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166012, 39.492756, 41.215282>,  <34.230896, 39.328583, 41.377880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.166012, 39.492756, 41.215282>,  <34.057873, 39.766376, 40.944290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166012, 39.492756, 41.215282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231398, -0.636893, -0.735406,
		0.934540, 0.355586, -0.013897,
		0.270351, -0.684051, 0.677484,
		34.247116, 39.287540, 41.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693211, 39.423748, 40.652893>,  <34.057873, 39.766376, 40.944290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693211, 39.423748, 40.652893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.575890, 39.168270, 40.937439>,  <34.505497, 39.014984, 41.108166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.575890, 39.168270, 40.937439>,  <34.693211, 39.423748, 40.652893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575890, 39.168270, 40.937439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238477, -0.769446, -0.592521,
		0.925798, -0.004145, 0.377996,
		-0.293303, -0.638698, 0.711363,
		34.487900, 38.976662, 41.150848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247051, 38.998623, 40.819859>,  <34.693211, 39.423748, 40.652893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247051, 38.998623, 40.819859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906544, 38.800259, 40.888454>,  <34.702240, 38.681240, 40.929611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906544, 38.800259, 40.888454>,  <35.247051, 38.998623, 40.819859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906544, 38.800259, 40.888454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390766, -0.817249, -0.423563,
		0.350203, -0.293552, 0.889485,
		-0.851269, -0.495914, 0.171493,
		34.651161, 38.651485, 40.939903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456573, 38.294403, 41.057732>,  <35.247051, 38.998623, 40.819859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456573, 38.294403, 41.057732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078117, 38.243576, 40.938618>,  <34.851044, 38.213078, 40.867149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078117, 38.243576, 40.938618>,  <35.456573, 38.294403, 41.057732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078117, 38.243576, 40.938618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252686, -0.864847, -0.433809,
		-0.202411, -0.485689, 0.850374,
		-0.946139, -0.127070, -0.297781,
		34.794277, 38.205456, 40.849285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366417, 37.575409, 41.117901>,  <35.456573, 38.294403, 41.057732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366417, 37.575409, 41.117901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054340, 37.662544, 40.883350>,  <34.867092, 37.714825, 40.742619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054340, 37.662544, 40.883350>,  <35.366417, 37.575409, 41.117901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054340, 37.662544, 40.883350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241656, -0.759670, -0.603742,
		-0.576972, -0.612739, 0.540050,
		-0.780196, 0.217836, -0.586381,
		34.820282, 37.727894, 40.707436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114613, 36.991386, 40.827557>,  <35.366417, 37.575409, 41.117901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114613, 36.991386, 40.827557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974960, 37.264687, 40.571033>,  <34.891171, 37.428665, 40.417118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.974960, 37.264687, 40.571033>,  <35.114613, 36.991386, 40.827557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974960, 37.264687, 40.571033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220638, -0.605199, -0.764887,
		-0.910728, -0.408544, 0.060544,
		-0.349132, 0.683246, -0.641312,
		34.870220, 37.469662, 40.378639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789768, 36.632767, 40.281555>,  <35.114613, 36.991386, 40.827557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789768, 36.632767, 40.281555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853825, 36.986607, 40.106358>,  <34.892258, 37.198910, 40.001240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853825, 36.986607, 40.106358>,  <34.789768, 36.632767, 40.281555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853825, 36.986607, 40.106358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236684, -0.465193, -0.852981,
		-0.958298, 0.032934, -0.283868,
		0.160145, 0.884597, -0.437998,
		34.901867, 37.251984, 39.974957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357037, 36.707336, 39.621433>,  <34.789768, 36.632767, 40.281555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357037, 36.707336, 39.621433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691719, 36.925941, 39.607281>,  <34.892529, 37.057102, 39.598789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691719, 36.925941, 39.607281>,  <34.357037, 36.707336, 39.621433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691719, 36.925941, 39.607281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220866, -0.395845, -0.891361,
		-0.501142, 0.737993, -0.451911,
		0.836705, 0.546510, -0.035377,
		34.942730, 37.089893, 39.596668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371063, 36.696327, 38.968441>,  <34.357037, 36.707336, 39.621433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371063, 36.696327, 38.968441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733192, 36.838482, 39.061478>,  <34.950470, 36.923775, 39.117298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733192, 36.838482, 39.061478>,  <34.371063, 36.696327, 38.968441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733192, 36.838482, 39.061478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393561, -0.495994, -0.774016,
		-0.159708, 0.792271, -0.588898,
		0.905320, 0.355383, 0.232593,
		35.004787, 36.945095, 39.131256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627373, 36.676731, 38.344311>,  <34.371063, 36.696327, 38.968441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627373, 36.676731, 38.344311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943356, 36.711002, 38.587170>,  <35.132946, 36.731567, 38.732883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943356, 36.711002, 38.587170>,  <34.627373, 36.676731, 38.344311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943356, 36.711002, 38.587170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541392, -0.562332, -0.625042,
		0.287864, 0.822461, -0.490605,
		0.789955, 0.085683, 0.607148,
		35.180344, 36.736706, 38.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121246, 36.731346, 37.904877>,  <34.627373, 36.676731, 38.344311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121246, 36.731346, 37.904877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293659, 36.624325, 38.249580>,  <35.397106, 36.560112, 38.456402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293659, 36.624325, 38.249580>,  <35.121246, 36.731346, 37.904877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293659, 36.624325, 38.249580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548118, -0.681009, -0.485585,
		0.716786, 0.681648, -0.146885,
		0.431028, -0.267550, 0.861761,
		35.422966, 36.544060, 38.508110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842361, 36.622002, 37.726044>,  <35.121246, 36.731346, 37.904877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842361, 36.622002, 37.726044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816471, 36.454384, 38.088306>,  <35.800938, 36.353813, 38.305664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.816471, 36.454384, 38.088306>,  <35.842361, 36.622002, 37.726044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816471, 36.454384, 38.088306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704361, -0.662074, -0.255995,
		0.706885, 0.621339, 0.338012,
		-0.064729, -0.419041, 0.905657,
		35.797054, 36.328671, 38.360004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563812, 36.531441, 38.028938>,  <35.842361, 36.622002, 37.726044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563812, 36.531441, 38.028938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312263, 36.261173, 38.182816>,  <36.161335, 36.099014, 38.275143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312263, 36.261173, 38.182816>,  <36.563812, 36.531441, 38.028938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312263, 36.261173, 38.182816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603640, -0.736140, -0.306132,
		0.490034, 0.039700, 0.870799,
		-0.628876, -0.675664, 0.384698,
		36.123600, 36.058475, 38.298225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975639, 36.046776, 38.381973>,  <36.563812, 36.531441, 38.028938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975639, 36.046776, 38.381973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629513, 35.859077, 38.311508>,  <36.421837, 35.746460, 38.269230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629513, 35.859077, 38.311508>,  <36.975639, 36.046776, 38.381973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629513, 35.859077, 38.311508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500888, -0.822407, -0.269737,
		-0.018305, -0.321646, 0.946683,
		-0.865318, -0.469245, -0.176163,
		36.369919, 35.718304, 38.258659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691906, 36.101387, 38.259792>,  <36.975639, 36.046776, 38.381973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691906, 36.101387, 38.259792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946400, 36.228874, 37.978760>,  <38.099098, 36.305367, 37.810143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946400, 36.228874, 37.978760>,  <37.691906, 36.101387, 38.259792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946400, 36.228874, 37.978760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318297, 0.721113, 0.615372,
		0.702773, -0.615152, 0.357349,
		0.636236, 0.318724, -0.702580,
		38.137272, 36.324490, 37.767986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372124, 36.075504, 38.556549>,  <37.691906, 36.101387, 38.259792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372124, 36.075504, 38.556549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382473, 36.330292, 38.248367>,  <38.388683, 36.483162, 38.063457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382473, 36.330292, 38.248367>,  <38.372124, 36.075504, 38.556549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382473, 36.330292, 38.248367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321894, 0.724360, 0.609661,
		0.946422, -0.263777, -0.186297,
		0.025869, 0.636965, -0.770458,
		38.390232, 36.521381, 38.017231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100277, 36.302643, 38.524586>,  <38.372124, 36.075504, 38.556549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100277, 36.302643, 38.524586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851089, 36.579399, 38.378601>,  <38.701576, 36.745453, 38.291012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851089, 36.579399, 38.378601>,  <39.100277, 36.302643, 38.524586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851089, 36.579399, 38.378601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429849, 0.692590, 0.579266,
		0.653556, 0.203988, -0.728872,
		-0.622972, 0.691887, -0.364962,
		38.664196, 36.786964, 38.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469196, 36.995659, 38.615311>,  <39.100277, 36.302643, 38.524586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469196, 36.995659, 38.615311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096451, 37.108658, 38.524246>,  <38.872803, 37.176456, 38.469608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096451, 37.108658, 38.524246>,  <39.469196, 36.995659, 38.615311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096451, 37.108658, 38.524246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144823, 0.864955, 0.480499,
		0.332657, 0.414788, -0.846930,
		-0.931862, 0.282496, -0.227662,
		38.816891, 37.193405, 38.455948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547421, 37.608913, 38.682018>,  <39.469196, 36.995659, 38.615311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547421, 37.608913, 38.682018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147831, 37.593655, 38.672276>,  <38.908077, 37.584499, 38.666431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.147831, 37.593655, 38.672276>,  <39.547421, 37.608913, 38.682018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147831, 37.593655, 38.672276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044460, 0.726240, 0.686002,
		-0.008483, 0.686382, -0.727192,
		-0.998975, -0.038150, -0.024356,
		38.848137, 37.582211, 38.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384064, 38.238102, 38.557796>,  <39.547421, 37.608913, 38.682018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384064, 38.238102, 38.557796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052864, 38.073547, 38.710205>,  <38.854145, 37.974815, 38.801651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.052864, 38.073547, 38.710205>,  <39.384064, 38.238102, 38.557796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052864, 38.073547, 38.710205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182161, 0.840000, 0.511094,
		-0.530313, 0.353780, -0.770459,
		-0.828001, -0.411388, 0.381018,
		38.804462, 37.950130, 38.824509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702290, 38.724503, 38.522831>,  <39.384064, 38.238102, 38.557796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702290, 38.724503, 38.522831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686996, 38.473320, 38.833755>,  <38.677822, 38.322613, 39.020309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686996, 38.473320, 38.833755>,  <38.702290, 38.724503, 38.522831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686996, 38.473320, 38.833755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187557, 0.768565, 0.611662,
		-0.981510, -0.122407, -0.147158,
		-0.038229, -0.627953, 0.777312,
		38.675529, 38.284935, 39.066948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208710, 39.055656, 38.982666>,  <38.702290, 38.724503, 38.522831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208710, 39.055656, 38.982666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355209, 38.789444, 39.242802>,  <38.443108, 38.629715, 39.398880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.355209, 38.789444, 39.242802>,  <38.208710, 39.055656, 38.982666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355209, 38.789444, 39.242802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150324, 0.647397, 0.747181,
		-0.918296, -0.371412, 0.137060,
		0.366244, -0.665530, 0.650334,
		38.465084, 38.589787, 39.437901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773712, 39.035667, 39.597725>,  <38.208710, 39.055656, 38.982666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773712, 39.035667, 39.597725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129299, 38.902000, 39.722988>,  <38.342651, 38.821800, 39.798145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129299, 38.902000, 39.722988>,  <37.773712, 39.035667, 39.597725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129299, 38.902000, 39.722988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020485, 0.654091, 0.756139,
		-0.457513, -0.678598, 0.574619,
		0.888967, -0.334172, 0.313156,
		38.395988, 38.801750, 39.816936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663757, 38.926540, 40.345829>,  <37.773712, 39.035667, 39.597725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663757, 38.926540, 40.345829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059341, 38.966103, 40.301689>,  <38.296692, 38.989841, 40.275208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059341, 38.966103, 40.301689>,  <37.663757, 38.926540, 40.345829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059341, 38.966103, 40.301689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025350, 0.620750, 0.783599,
		0.146002, -0.777744, 0.611389,
		0.988960, 0.098908, -0.110347,
		38.356030, 38.995773, 40.268585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900665, 38.766430, 41.012474>,  <37.663757, 38.926540, 40.345829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900665, 38.766430, 41.012474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199589, 38.969395, 40.840866>,  <38.378944, 39.091171, 40.737900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.199589, 38.969395, 40.840866>,  <37.900665, 38.766430, 41.012474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199589, 38.969395, 40.840866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187366, 0.458541, 0.868697,
		0.637508, -0.729573, 0.247602,
		0.747313, 0.507409, -0.429021,
		38.423782, 39.121616, 40.712158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536858, 38.686543, 41.460308>,  <37.900665, 38.766430, 41.012474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536858, 38.686543, 41.460308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576088, 39.010139, 41.228474>,  <38.599625, 39.204296, 41.089375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576088, 39.010139, 41.228474>,  <38.536858, 38.686543, 41.460308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576088, 39.010139, 41.228474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145671, 0.564447, 0.812514,
		0.984460, -0.164113, -0.062490,
		0.098072, 0.808991, -0.579582,
		38.605511, 39.252838, 41.054600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016457, 38.984966, 41.890324>,  <38.536858, 38.686543, 41.460308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016457, 38.984966, 41.890324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890068, 39.268208, 41.637733>,  <38.814236, 39.438152, 41.486179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890068, 39.268208, 41.637733>,  <39.016457, 38.984966, 41.890324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890068, 39.268208, 41.637733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218471, 0.701987, 0.677853,
		0.923273, 0.076222, -0.376506,
		-0.315969, 0.708099, -0.631474,
		38.795277, 39.480637, 41.448292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519005, 39.447979, 41.905293>,  <39.016457, 38.984966, 41.890324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519005, 39.447979, 41.905293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189255, 39.639114, 41.783920>,  <38.991405, 39.753796, 41.711098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189255, 39.639114, 41.783920>,  <39.519005, 39.447979, 41.905293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189255, 39.639114, 41.783920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092693, 0.642787, 0.760417,
		0.558404, 0.598742, -0.574190,
		-0.824374, 0.477843, -0.303435,
		38.941944, 39.782467, 41.692890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580276, 40.124126, 42.153008>,  <39.519005, 39.447979, 41.905293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580276, 40.124126, 42.153008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189671, 40.141628, 42.068623>,  <38.955307, 40.152130, 42.017990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189671, 40.141628, 42.068623>,  <39.580276, 40.124126, 42.153008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189671, 40.141628, 42.068623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115603, 0.719886, 0.684397,
		0.181814, 0.692712, -0.697921,
		-0.976514, 0.043752, -0.210965,
		38.896717, 40.154755, 42.005333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393524, 40.840763, 41.975452>,  <39.580276, 40.124126, 42.153008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393524, 40.840763, 41.975452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065113, 40.635353, 42.075218>,  <38.868069, 40.512108, 42.135078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.065113, 40.635353, 42.075218>,  <39.393524, 40.840763, 41.975452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065113, 40.635353, 42.075218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165699, 0.632431, 0.756687,
		-0.546318, 0.579931, -0.604332,
		-0.821024, -0.513528, 0.249414,
		38.818806, 40.481293, 42.150043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957649, 41.332973, 42.156548>,  <39.393524, 40.840763, 41.975452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957649, 41.332973, 42.156548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766197, 41.018883, 42.313686>,  <38.651325, 40.830429, 42.407970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766197, 41.018883, 42.313686>,  <38.957649, 41.332973, 42.156548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766197, 41.018883, 42.313686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308635, 0.569336, 0.761972,
		-0.821985, 0.243456, -0.514850,
		-0.478629, -0.785230, 0.392846,
		38.622608, 40.783314, 42.431541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252663, 41.634033, 42.294899>,  <38.957649, 41.332973, 42.156548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252663, 41.634033, 42.294899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344997, 41.325317, 42.531895>,  <38.400398, 41.140087, 42.674091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344997, 41.325317, 42.531895>,  <38.252663, 41.634033, 42.294899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344997, 41.325317, 42.531895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410421, 0.474879, 0.778489,
		-0.882195, -0.422877, -0.207140,
		0.230839, -0.771793, 0.592494,
		38.414249, 41.093781, 42.709644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.676010, 41.606766, 42.783207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909794, 41.340485, 42.968788>,  <38.050064, 41.180717, 43.080135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909794, 41.340485, 42.968788>,  <37.676010, 41.606766, 42.783207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909794, 41.340485, 42.968788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329188, 0.328077, 0.885438,
		-0.741647, -0.670231, -0.027392,
		0.584462, -0.665699, 0.463950,
		38.085133, 41.140774, 43.107971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275639, 41.174473, 43.147148>,  <37.676010, 41.606766, 42.783207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275639, 41.174473, 43.147148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631096, 41.153629, 43.329403>,  <37.844368, 41.141121, 43.438755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631096, 41.153629, 43.329403>,  <37.275639, 41.174473, 43.147148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631096, 41.153629, 43.329403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371728, 0.500007, 0.782184,
		-0.268580, -0.864452, 0.424955,
		0.888641, -0.052111, 0.455633,
		37.897690, 41.137997, 43.466091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143661, 40.905148, 43.920349>,  <37.275639, 41.174473, 43.147148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143661, 40.905148, 43.920349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494854, 41.096256, 43.908463>,  <37.705570, 41.210922, 43.901333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494854, 41.096256, 43.908463>,  <37.143661, 40.905148, 43.920349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494854, 41.096256, 43.908463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178187, 0.383799, 0.906062,
		0.444297, -0.790209, 0.422101,
		0.877980, 0.477774, -0.029716,
		37.758247, 41.239586, 43.899548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352962, 40.899353, 44.583385>,  <37.143661, 40.905148, 43.920349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352962, 40.899353, 44.583385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598312, 41.186470, 44.451599>,  <37.745522, 41.358738, 44.372528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598312, 41.186470, 44.451599>,  <37.352962, 40.899353, 44.583385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598312, 41.186470, 44.451599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011954, 0.425550, 0.904856,
		0.789701, -0.551078, 0.269602,
		0.613376, 0.717789, -0.329470,
		37.782326, 41.401806, 44.352757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685032, 41.133415, 45.206909>,  <37.352962, 40.899353, 44.583385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685032, 41.133415, 45.206909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.752659, 41.430695, 44.947964>,  <37.793236, 41.609062, 44.792595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.752659, 41.430695, 44.947964>,  <37.685032, 41.133415, 45.206909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752659, 41.430695, 44.947964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136317, 0.668138, 0.731443,
		0.976132, -0.035415, 0.214269,
		0.169065, 0.743194, -0.647363,
		37.803379, 41.653652, 44.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099869, 41.514702, 45.497677>,  <37.685032, 41.133415, 45.206909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099869, 41.514702, 45.497677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881847, 41.721176, 45.233414>,  <37.751034, 41.845058, 45.074856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881847, 41.721176, 45.233414>,  <38.099869, 41.514702, 45.497677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881847, 41.721176, 45.233414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417844, 0.515919, 0.747819,
		0.726860, 0.683653, -0.065518,
		-0.545051, 0.516184, -0.660661,
		37.718330, 41.876030, 45.035213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005306, 42.075790, 45.737865>,  <38.099869, 41.514702, 45.497677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005306, 42.075790, 45.737865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720745, 42.135296, 45.463120>,  <37.550007, 42.170998, 45.298271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.720745, 42.135296, 45.463120>,  <38.005306, 42.075790, 45.737865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720745, 42.135296, 45.463120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429369, 0.681726, 0.592361,
		0.556372, 0.716323, -0.421107,
		-0.711402, 0.148763, -0.686860,
		37.507324, 42.179924, 45.257061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061432, 42.825272, 45.499043>,  <38.005306, 42.075790, 45.737865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061432, 42.825272, 45.499043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698116, 42.695988, 45.392803>,  <37.480125, 42.618416, 45.329060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698116, 42.695988, 45.392803>,  <38.061432, 42.825272, 45.499043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698116, 42.695988, 45.392803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417527, 0.739957, 0.527385,
		0.026075, 0.589913, -0.807045,
		-0.908290, -0.323212, -0.265599,
		37.425629, 42.599026, 45.313122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738899, 43.396038, 45.191792>,  <38.061432, 42.825272, 45.499043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738899, 43.396038, 45.191792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456516, 43.140713, 45.314548>,  <37.287086, 42.987518, 45.388203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.456516, 43.140713, 45.314548>,  <37.738899, 43.396038, 45.191792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456516, 43.140713, 45.314548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457385, 0.741712, 0.490573,
		-0.540764, 0.205956, -0.815571,
		-0.705956, -0.638314, 0.306890,
		37.244728, 42.949219, 45.406616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039188, 43.717606, 45.246571>,  <37.738899, 43.396038, 45.191792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039188, 43.717606, 45.246571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025288, 43.407837, 45.499260>,  <37.016949, 43.221977, 45.650871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.025288, 43.407837, 45.499260>,  <37.039188, 43.717606, 45.246571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025288, 43.407837, 45.499260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320225, 0.607404, 0.726991,
		-0.946704, -0.177028, -0.269097,
		-0.034753, -0.774417, 0.631720,
		37.014862, 43.175510, 45.688774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507381, 43.865658, 45.675823>,  <37.039188, 43.717606, 45.246571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507381, 43.865658, 45.675823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748497, 43.609459, 45.866154>,  <36.893166, 43.455738, 45.980354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748497, 43.609459, 45.866154>,  <36.507381, 43.865658, 45.675823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748497, 43.609459, 45.866154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098151, 0.532299, 0.840847,
		-0.791844, -0.553553, 0.257997,
		0.602785, -0.640497, 0.475829,
		36.929333, 43.417309, 46.008904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086525, 43.657368, 46.290989>,  <36.507381, 43.865658, 45.675823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086525, 43.657368, 46.290989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462624, 43.548439, 46.372746>,  <36.688282, 43.483082, 46.421799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462624, 43.548439, 46.372746>,  <36.086525, 43.657368, 46.290989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462624, 43.548439, 46.372746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000486, 0.599214, 0.800589,
		-0.340489, -0.752852, 0.563277,
		0.940248, -0.272318, 0.204392,
		36.744698, 43.466743, 46.434063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179314, 43.431549, 47.000774>,  <36.086525, 43.657368, 46.290989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179314, 43.431549, 47.000774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559475, 43.516975, 46.910336>,  <36.787571, 43.568230, 46.856071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.559475, 43.516975, 46.910336>,  <36.179314, 43.431549, 47.000774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559475, 43.516975, 46.910336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056605, 0.596051, 0.800949,
		0.305820, -0.774024, 0.554401,
		0.950405, 0.213564, -0.226098,
		36.844597, 43.581043, 46.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449059, 43.376072, 47.596424>,  <36.179314, 43.431549, 47.000774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449059, 43.376072, 47.596424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723980, 43.566692, 47.377144>,  <36.888931, 43.681065, 47.245575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.723980, 43.566692, 47.377144>,  <36.449059, 43.376072, 47.596424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723980, 43.566692, 47.377144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223240, 0.579599, 0.783728,
		0.691220, -0.661035, 0.291973,
		0.687299, 0.476548, -0.548200,
		36.930168, 43.709656, 47.212685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121193, 43.339909, 47.931274>,  <36.449059, 43.376072, 47.596424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121193, 43.339909, 47.931274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144279, 43.659744, 47.692169>,  <37.158131, 43.851646, 47.548706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144279, 43.659744, 47.692169>,  <37.121193, 43.339909, 47.931274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144279, 43.659744, 47.692169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177784, 0.580957, 0.794280,
		0.982375, -0.152118, -0.108622,
		0.057720, 0.799593, -0.597762,
		37.161594, 43.899624, 47.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657085, 43.688679, 48.203114>,  <37.121193, 43.339909, 47.931274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657085, 43.688679, 48.203114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506073, 43.964687, 47.956100>,  <37.415466, 44.130291, 47.807892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.506073, 43.964687, 47.956100>,  <37.657085, 43.688679, 48.203114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506073, 43.964687, 47.956100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373735, 0.723692, 0.580165,
		0.847227, -0.011762, -0.531100,
		-0.377529, 0.690022, -0.617528,
		37.392815, 44.171696, 47.770844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239197, 44.186535, 47.938618>,  <37.657085, 43.688679, 48.203114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239197, 44.186535, 47.938618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876743, 44.355515, 47.930088>,  <37.659271, 44.456902, 47.924973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876743, 44.355515, 47.930088>,  <38.239197, 44.186535, 47.938618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876743, 44.355515, 47.930088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318735, 0.715069, 0.622161,
		0.278078, 0.556966, -0.782599,
		-0.906135, 0.422451, -0.021320,
		37.604904, 44.482250, 47.923691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382660, 44.824734, 48.177551>,  <38.239197, 44.186535, 47.938618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382660, 44.824734, 48.177551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982994, 44.825188, 48.193913>,  <37.743195, 44.825459, 48.203728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982994, 44.825188, 48.193913>,  <38.382660, 44.824734, 48.177551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982994, 44.825188, 48.193913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032743, 0.621527, 0.782708,
		-0.024535, 0.783392, -0.621043,
		-0.999163, 0.001131, 0.040900,
		37.683247, 44.825527, 48.206181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018482, 45.624821, 48.125034>,  <38.382660, 44.824734, 48.177551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018482, 45.624821, 48.125034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774586, 45.372601, 48.317131>,  <37.628250, 45.221268, 48.432388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.774586, 45.372601, 48.317131>,  <38.018482, 45.624821, 48.125034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774586, 45.372601, 48.317131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176902, 0.698878, 0.693019,
		-0.772611, 0.337604, -0.537677,
		-0.609737, -0.630550, 0.480238,
		37.591663, 45.183437, 48.461201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434868, 46.012440, 48.320953>,  <38.018482, 45.624821, 48.125034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434868, 46.012440, 48.320953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428783, 45.702667, 48.573944>,  <37.425133, 45.516804, 48.725739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.428783, 45.702667, 48.573944>,  <37.434868, 46.012440, 48.320953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428783, 45.702667, 48.573944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162340, 0.626071, 0.762680,
		-0.986618, -0.091077, -0.135242,
		-0.015209, -0.774429, 0.632478,
		37.424221, 45.470337, 48.763687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847443, 46.081715, 48.675266>,  <37.434868, 46.012440, 48.320953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847443, 46.081715, 48.675266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069107, 45.829529, 48.892677>,  <37.202106, 45.678219, 49.023125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069107, 45.829529, 48.892677>,  <36.847443, 46.081715, 48.675266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069107, 45.829529, 48.892677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035697, 0.634356, 0.772217,
		-0.831646, -0.447331, 0.329027,
		0.554157, -0.630466, 0.543528,
		37.235355, 45.640388, 49.055737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527428, 45.943188, 49.257179>,  <36.847443, 46.081715, 48.675266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527428, 45.943188, 49.257179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911003, 45.856300, 49.330116>,  <37.141148, 45.804169, 49.373878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911003, 45.856300, 49.330116>,  <36.527428, 45.943188, 49.257179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911003, 45.856300, 49.330116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078878, 0.413297, 0.907173,
		-0.272418, -0.884308, 0.379193,
		0.958940, -0.217221, 0.182342,
		37.198685, 45.791134, 49.384819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688950, 45.516022, 49.862640>,  <36.527428, 45.943188, 49.257179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688950, 45.516022, 49.862640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995045, 45.773361, 49.853645>,  <37.178703, 45.927765, 49.848248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995045, 45.773361, 49.853645>,  <36.688950, 45.516022, 49.862640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995045, 45.773361, 49.853645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075183, 0.124005, 0.989429,
		0.639338, -0.755461, 0.143263,
		0.765241, 0.643351, -0.022483,
		37.224617, 45.966366, 49.846901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269123, 45.176495, 50.515312>,  <36.688950, 45.516022, 49.862640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269123, 45.176495, 50.515312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115883, 44.955799, 50.811638>,  <36.023937, 44.823380, 50.989433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115883, 44.955799, 50.811638>,  <36.269123, 45.176495, 50.515312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115883, 44.955799, 50.811638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607255, -0.453899, -0.652087,
		0.696040, -0.699683, -0.161157,
		-0.383105, -0.551742, 0.740818,
		36.000950, 44.790276, 51.033882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391869, 44.380249, 50.593285>,  <36.269123, 45.176495, 50.515312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391869, 44.380249, 50.593285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025421, 44.506721, 50.691872>,  <35.805553, 44.582603, 50.751026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.025421, 44.506721, 50.691872>,  <36.391869, 44.380249, 50.593285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025421, 44.506721, 50.691872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329735, -0.244591, -0.911839,
		-0.228015, -0.916629, 0.328329,
		-0.916125, 0.316174, 0.246474,
		35.750584, 44.601578, 50.765812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919819, 43.831150, 50.283680>,  <36.391869, 44.380249, 50.593285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919819, 43.831150, 50.283680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694546, 44.152119, 50.362621>,  <35.559383, 44.344700, 50.409985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.694546, 44.152119, 50.362621>,  <35.919819, 43.831150, 50.283680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694546, 44.152119, 50.362621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586989, -0.220386, -0.779021,
		-0.581609, -0.554573, 0.595130,
		-0.563182, 0.802421, 0.197350,
		35.525593, 44.392845, 50.421825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229534, 43.641136, 50.206451>,  <35.919819, 43.831150, 50.283680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229534, 43.641136, 50.206451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243843, 44.037762, 50.156631>,  <35.252430, 44.275738, 50.126740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243843, 44.037762, 50.156631>,  <35.229534, 43.641136, 50.206451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243843, 44.037762, 50.156631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494558, -0.090732, -0.864396,
		-0.868408, 0.092518, 0.487142,
		0.035773, 0.991569, -0.124548,
		35.254574, 44.335232, 50.119267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504539, 43.852467, 50.121704>,  <35.229534, 43.641136, 50.206451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504539, 43.852467, 50.121704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760368, 44.118843, 49.968098>,  <34.913868, 44.278667, 49.875935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760368, 44.118843, 49.968098>,  <34.504539, 43.852467, 50.121704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760368, 44.118843, 49.968098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409930, -0.127140, -0.903212,
		-0.650306, 0.735094, 0.191672,
		0.639577, 0.665937, -0.384017,
		34.952240, 44.318623, 49.852894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048157, 44.239216, 49.710793>,  <34.504539, 43.852467, 50.121704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048157, 44.239216, 49.710793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405804, 44.343395, 49.565067>,  <34.620392, 44.405903, 49.477634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405804, 44.343395, 49.565067>,  <34.048157, 44.239216, 49.710793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405804, 44.343395, 49.565067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320824, -0.195052, -0.926837,
		-0.312451, 0.945581, -0.090842,
		0.894118, 0.260446, -0.364309,
		34.674038, 44.421528, 49.455776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865055, 44.746014, 49.206554>,  <34.048157, 44.239216, 49.710793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865055, 44.746014, 49.206554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225414, 44.585808, 49.139648>,  <34.441628, 44.489685, 49.099506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225414, 44.585808, 49.139648>,  <33.865055, 44.746014, 49.206554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225414, 44.585808, 49.139648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223156, -0.096882, -0.969956,
		0.372275, 0.911155, -0.176657,
		0.900896, -0.400512, -0.167263,
		34.495682, 44.465652, 49.089470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990124, 44.792416, 48.490643>,  <33.865055, 44.746014, 49.206554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990124, 44.792416, 48.490643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267185, 44.522095, 48.591457>,  <34.433422, 44.359901, 48.651947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267185, 44.522095, 48.591457>,  <33.990124, 44.792416, 48.490643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267185, 44.522095, 48.591457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086407, -0.424670, -0.901215,
		0.716078, 0.602451, -0.352542,
		0.692652, -0.675802, 0.252041,
		34.474979, 44.319355, 48.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289131, 44.759907, 47.914421>,  <33.990124, 44.792416, 48.490643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289131, 44.759907, 47.914421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402298, 44.439655, 48.125687>,  <34.470200, 44.247505, 48.252445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402298, 44.439655, 48.125687>,  <34.289131, 44.759907, 47.914421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402298, 44.439655, 48.125687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067469, -0.532688, -0.843618,
		0.956769, 0.274308, -0.096688,
		0.282916, -0.800624, 0.528166,
		34.487171, 44.199467, 48.284138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764191, 44.400082, 47.447021>,  <34.289131, 44.759907, 47.914421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764191, 44.400082, 47.447021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652058, 44.137909, 47.727539>,  <34.584778, 43.980606, 47.895851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652058, 44.137909, 47.727539>,  <34.764191, 44.400082, 47.447021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652058, 44.137909, 47.727539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055476, -0.718309, -0.693509,
		0.958300, -0.233315, 0.165001,
		-0.280328, -0.655436, 0.701299,
		34.567959, 43.941277, 47.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272339, 43.829456, 47.604618>,  <34.764191, 44.400082, 47.447021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272339, 43.829456, 47.604618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040829, 43.525452, 47.722881>,  <34.901924, 43.343048, 47.793839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040829, 43.525452, 47.722881>,  <35.272339, 43.829456, 47.604618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040829, 43.525452, 47.722881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140392, -0.449996, -0.881926,
		0.803315, -0.468926, 0.367143,
		-0.578771, -0.760009, 0.295655,
		34.867199, 43.297451, 47.811577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646847, 43.294315, 47.445675>,  <35.272339, 43.829456, 47.604618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646847, 43.294315, 47.445675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262157, 43.185745, 47.460739>,  <35.031345, 43.120605, 47.469776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262157, 43.185745, 47.460739>,  <35.646847, 43.294315, 47.445675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262157, 43.185745, 47.460739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059852, -0.342185, -0.937725,
		0.267406, -0.899577, 0.345332,
		-0.961723, -0.271422, 0.037661,
		34.973640, 43.104317, 47.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627182, 42.578835, 47.238377>,  <35.646847, 43.294315, 47.445675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627182, 42.578835, 47.238377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256298, 42.704185, 47.156326>,  <35.033768, 42.779396, 47.107098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256298, 42.704185, 47.156326>,  <35.627182, 42.578835, 47.238377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256298, 42.704185, 47.156326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074307, -0.382863, -0.920812,
		-0.367099, -0.869027, 0.331708,
		-0.927209, 0.313381, -0.205123,
		34.978134, 42.798199, 47.094788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325790, 42.055485, 46.955208>,  <35.627182, 42.578835, 47.238377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325790, 42.055485, 46.955208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087330, 42.361172, 46.856766>,  <34.944252, 42.544586, 46.797703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.087330, 42.361172, 46.856766>,  <35.325790, 42.055485, 46.955208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087330, 42.361172, 46.856766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141485, -0.401730, -0.904762,
		-0.790305, -0.504558, 0.347619,
		-0.596154, 0.764221, -0.246102,
		34.908485, 42.590439, 46.782936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668552, 41.796299, 46.780319>,  <35.325790, 42.055485, 46.955208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668552, 41.796299, 46.780319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706921, 42.141296, 46.581562>,  <34.729942, 42.348297, 46.462307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706921, 42.141296, 46.581562>,  <34.668552, 41.796299, 46.780319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706921, 42.141296, 46.581562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152102, -0.480630, -0.863632,
		-0.983700, 0.158416, 0.085086,
		0.095918, 0.862496, -0.496891,
		34.735695, 42.400043, 46.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325886, 41.594078, 46.299850>,  <34.668552, 41.796299, 46.780319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325886, 41.594078, 46.299850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480270, 41.936127, 46.161400>,  <34.572903, 42.141357, 46.078331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480270, 41.936127, 46.161400>,  <34.325886, 41.594078, 46.299850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480270, 41.936127, 46.161400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012985, -0.370123, -0.928892,
		-0.922423, 0.363013, -0.131750,
		0.385963, 0.855120, -0.346124,
		34.596058, 42.192661, 46.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832584, 41.887150, 45.845512>,  <34.325886, 41.594078, 46.299850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832584, 41.887150, 45.845512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209190, 41.994743, 45.764320>,  <34.435154, 42.059299, 45.715603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.209190, 41.994743, 45.764320>,  <33.832584, 41.887150, 45.845512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209190, 41.994743, 45.764320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117255, -0.303214, -0.945681,
		-0.315923, 0.914171, -0.253940,
		0.941512, 0.268986, -0.202983,
		34.491642, 42.075439, 45.703426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640984, 41.953381, 45.212948>,  <33.832584, 41.887150, 45.845512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640984, 41.953381, 45.212948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037750, 41.994507, 45.242702>,  <34.275810, 42.019184, 45.260555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.037750, 41.994507, 45.242702>,  <33.640984, 41.953381, 45.212948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037750, 41.994507, 45.242702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092759, -0.187385, -0.977897,
		-0.086607, 0.976891, -0.195407,
		0.991915, 0.102818, 0.074387,
		34.335323, 42.025352, 45.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840752, 42.298203, 44.593521>,  <33.640984, 41.953381, 45.212948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840752, 42.298203, 44.593521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148998, 42.091370, 44.742535>,  <34.333946, 41.967270, 44.831944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148998, 42.091370, 44.742535>,  <33.840752, 42.298203, 44.593521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148998, 42.091370, 44.742535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091046, -0.489225, -0.867392,
		0.630765, 0.702342, -0.329925,
		0.770614, -0.517083, 0.372532,
		34.380184, 41.936245, 44.854294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492168, 42.497704, 44.192432>,  <33.840752, 42.298203, 44.593521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492168, 42.497704, 44.192432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600674, 42.134369, 44.319767>,  <34.665775, 41.916367, 44.396168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600674, 42.134369, 44.319767>,  <34.492168, 42.497704, 44.192432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600674, 42.134369, 44.319767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023704, -0.336942, -0.941227,
		0.962213, 0.247776, -0.112932,
		0.271265, -0.908338, 0.318337,
		34.682053, 41.861866, 44.415268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920425, 42.106541, 43.723682>,  <34.492168, 42.497704, 44.192432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920425, 42.106541, 43.723682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762173, 41.806976, 43.936329>,  <34.667221, 41.627239, 44.063915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762173, 41.806976, 43.936329>,  <34.920425, 42.106541, 43.723682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762173, 41.806976, 43.936329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218157, -0.485642, -0.846498,
		0.892124, -0.450875, 0.028755,
		-0.395630, -0.748908, 0.531615,
		34.643482, 41.582302, 44.095814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.120068, 41.635723, 38.038105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747795, 41.631573, 37.891834>,  <40.524429, 41.629082, 37.804073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747795, 41.631573, 37.891834>,  <41.120068, 41.635723, 38.038105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747795, 41.631573, 37.891834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073279, -0.984627, -0.158554,
		-0.358406, -0.174360, 0.917139,
		-0.930685, -0.010380, -0.365674,
		40.468590, 41.628460, 37.782131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621399, 41.236263, 38.456081>,  <41.120068, 41.635723, 38.038105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621399, 41.236263, 38.456081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.520935, 41.251495, 38.069202>,  <40.460655, 41.260635, 37.837074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.520935, 41.251495, 38.069202>,  <40.621399, 41.236263, 38.456081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520935, 41.251495, 38.069202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073146, -0.997115, -0.020262,
		-0.965178, 0.065658, 0.253220,
		-0.251159, 0.038078, -0.967197,
		40.445587, 41.262920, 37.779045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953205, 40.858807, 38.385548>,  <40.621399, 41.236263, 38.456081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953205, 40.858807, 38.385548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168507, 40.873707, 38.048763>,  <40.297688, 40.882648, 37.846691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168507, 40.873707, 38.048763>,  <39.953205, 40.858807, 38.385548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168507, 40.873707, 38.048763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137892, -0.989453, 0.044373,
		-0.831427, -0.139984, -0.537713,
		0.538253, 0.037253, -0.841960,
		40.329983, 40.884884, 37.796177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718998, 40.296356, 37.983887>,  <39.953205, 40.858807, 38.385548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718998, 40.296356, 37.983887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077129, 40.404469, 37.842274>,  <40.292007, 40.469337, 37.757305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077129, 40.404469, 37.842274>,  <39.718998, 40.296356, 37.983887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077129, 40.404469, 37.842274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272834, -0.961067, -0.043732,
		-0.352069, -0.057438, -0.934210,
		0.895326, 0.270281, -0.354032,
		40.345726, 40.485554, 37.736065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883755, 39.793068, 37.344204>,  <39.718998, 40.296356, 37.983887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883755, 39.793068, 37.344204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232254, 39.949387, 37.463001>,  <40.441353, 40.043179, 37.534279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232254, 39.949387, 37.463001>,  <39.883755, 39.793068, 37.344204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232254, 39.949387, 37.463001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429908, -0.899540, -0.077510,
		0.236871, 0.195212, -0.951727,
		0.871247, 0.390795, 0.296998,
		40.493629, 40.066624, 37.552101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324631, 39.388912, 36.991318>,  <39.883755, 39.793068, 37.344204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324631, 39.388912, 36.991318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.580193, 39.539677, 37.259571>,  <40.733528, 39.630135, 37.420521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.580193, 39.539677, 37.259571>,  <40.324631, 39.388912, 36.991318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580193, 39.539677, 37.259571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590497, -0.799020, -0.113489,
		0.493071, 0.468514, -0.733059,
		0.638900, 0.376911, 0.670630,
		40.771862, 39.652748, 37.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009434, 39.231667, 36.791672>,  <40.324631, 39.388912, 36.991318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009434, 39.231667, 36.791672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070591, 39.314087, 37.178280>,  <41.107285, 39.363541, 37.410244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070591, 39.314087, 37.178280>,  <41.009434, 39.231667, 36.791672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070591, 39.314087, 37.178280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708497, -0.704681, 0.038157,
		0.688953, 0.678944, -0.253729,
		0.152891, 0.206055, 0.966523,
		41.116459, 39.375904, 37.468235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743549, 39.322647, 36.818951>,  <41.009434, 39.231667, 36.791672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743549, 39.322647, 36.818951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.596352, 39.238373, 37.181210>,  <41.508034, 39.187809, 37.398563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.596352, 39.238373, 37.181210>,  <41.743549, 39.322647, 36.818951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596352, 39.238373, 37.181210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698974, -0.705007, 0.120006,
		0.613204, 0.677184, 0.406698,
		-0.367991, -0.210683, 0.905647,
		41.485954, 39.175167, 37.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241104, 39.227432, 37.216698>,  <41.743549, 39.322647, 36.818951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241104, 39.227432, 37.216698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973991, 39.059425, 37.462513>,  <41.813725, 38.958622, 37.610001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973991, 39.059425, 37.462513>,  <42.241104, 39.227432, 37.216698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973991, 39.059425, 37.462513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640381, -0.745032, 0.186654,
		0.379452, 0.518182, 0.766488,
		-0.667778, -0.420018, 0.614538,
		41.773659, 38.933418, 37.646873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603237, 39.061718, 37.803020>,  <42.241104, 39.227432, 37.216698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603237, 39.061718, 37.803020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278378, 38.828415, 37.809109>,  <42.083462, 38.688435, 37.812763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.278378, 38.828415, 37.809109>,  <42.603237, 39.061718, 37.803020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278378, 38.828415, 37.809109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583413, -0.812124, 0.009166,
		0.007018, 0.016326, 0.999842,
		-0.812145, -0.583257, 0.015224,
		42.034733, 38.653439, 37.813675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818592, 38.528088, 38.214542>,  <42.603237, 39.061718, 37.803020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818592, 38.528088, 38.214542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505283, 38.384098, 38.011799>,  <42.317299, 38.297707, 37.890152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505283, 38.384098, 38.011799>,  <42.818592, 38.528088, 38.214542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505283, 38.384098, 38.011799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437449, -0.898442, -0.037939,
		-0.441729, -0.251442, 0.861192,
		-0.783271, -0.359969, -0.506861,
		42.270302, 38.276108, 37.859741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635101, 37.925880, 38.442566>,  <42.818592, 38.528088, 38.214542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635101, 37.925880, 38.442566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493080, 37.899246, 38.069576>,  <42.407867, 37.883266, 37.845783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493080, 37.899246, 38.069576>,  <42.635101, 37.925880, 38.442566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493080, 37.899246, 38.069576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497609, -0.857874, -0.128211,
		-0.791407, -0.509528, 0.337720,
		-0.355048, -0.066586, -0.932474,
		42.386566, 37.879269, 37.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625980, 37.235268, 38.269966>,  <42.635101, 37.925880, 38.442566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625980, 37.235268, 38.269966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572182, 37.370319, 37.897320>,  <42.539902, 37.451351, 37.673733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.572182, 37.370319, 37.897320>,  <42.625980, 37.235268, 38.269966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572182, 37.370319, 37.897320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456632, -0.813271, -0.360663,
		-0.879430, -0.473915, -0.044792,
		-0.134496, 0.337631, -0.931620,
		42.531834, 37.471607, 37.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448269, 36.675156, 37.939316>,  <42.625980, 37.235268, 38.269966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448269, 36.675156, 37.939316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583073, 36.927635, 37.659885>,  <42.663956, 37.079121, 37.492226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583073, 36.927635, 37.659885>,  <42.448269, 36.675156, 37.939316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583073, 36.927635, 37.659885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557783, -0.731610, -0.391950,
		-0.758485, -0.257564, -0.598633,
		0.337014, 0.631195, -0.698580,
		42.684177, 37.116993, 37.450310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280567, 36.271442, 37.310364>,  <42.448269, 36.675156, 37.939316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280567, 36.271442, 37.310364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549801, 36.551929, 37.216335>,  <42.711342, 36.720222, 37.159920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549801, 36.551929, 37.216335>,  <42.280567, 36.271442, 37.310364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549801, 36.551929, 37.216335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469491, -0.650714, -0.596783,
		-0.571437, 0.291319, -0.767198,
		0.673081, 0.701216, -0.235070,
		42.751724, 36.762295, 37.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283237, 36.114807, 36.633739>,  <42.280567, 36.271442, 37.310364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283237, 36.114807, 36.633739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621304, 36.305817, 36.729797>,  <42.824142, 36.420422, 36.787430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621304, 36.305817, 36.729797>,  <42.283237, 36.114807, 36.633739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621304, 36.305817, 36.729797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526686, -0.667464, -0.526397,
		-0.091079, 0.571372, -0.815622,
		0.845166, 0.477520, 0.240142,
		42.874855, 36.449074, 36.801842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652386, 36.211143, 35.970497>,  <42.283237, 36.114807, 36.633739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652386, 36.211143, 35.970497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901390, 36.188957, 36.282757>,  <43.050793, 36.175648, 36.470112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.901390, 36.188957, 36.282757>,  <42.652386, 36.211143, 35.970497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901390, 36.188957, 36.282757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536859, -0.695525, -0.477522,
		0.569442, 0.716358, -0.403195,
		0.622509, -0.055463, 0.780645,
		43.088142, 36.172318, 36.516949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206188, 35.894142, 35.578587>,  <42.652386, 36.211143, 35.970497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206188, 35.894142, 35.578587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351810, 35.915058, 35.950550>,  <43.439186, 35.927608, 36.173729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.351810, 35.915058, 35.950550>,  <43.206188, 35.894142, 35.578587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351810, 35.915058, 35.950550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632405, -0.746859, -0.205588,
		0.683759, 0.662923, -0.304969,
		0.364058, 0.052291, 0.929907,
		43.461029, 35.930744, 36.229523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935085, 35.962757, 35.488850>,  <43.206188, 35.894142, 35.578587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935085, 35.962757, 35.488850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835045, 35.831394, 35.853176>,  <43.775021, 35.752575, 36.071774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835045, 35.831394, 35.853176>,  <43.935085, 35.962757, 35.488850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835045, 35.831394, 35.853176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676803, -0.732011, -0.078094,
		0.692377, 0.596914, 0.405349,
		-0.250104, -0.328411, 0.910820,
		43.760014, 35.732872, 36.126423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528675, 35.972851, 35.814243>,  <43.935085, 35.962757, 35.488850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528675, 35.972851, 35.814243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289543, 35.719845, 36.011230>,  <44.146065, 35.568043, 36.129421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.289543, 35.719845, 36.011230>,  <44.528675, 35.972851, 35.814243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289543, 35.719845, 36.011230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672351, -0.730173, -0.121621,
		0.436513, 0.258402, 0.861792,
		-0.597830, -0.632515, 0.492467,
		44.110195, 35.530090, 36.158970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936214, 35.597931, 36.259987>,  <44.528675, 35.972851, 35.814243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936214, 35.597931, 36.259987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.618687, 35.367138, 36.183113>,  <44.428169, 35.228661, 36.136990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.618687, 35.367138, 36.183113>,  <44.936214, 35.597931, 36.259987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618687, 35.367138, 36.183113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599341, -0.795825, -0.086332,
		-0.103130, -0.183714, 0.977555,
		-0.793823, -0.576985, -0.192181,
		44.380539, 35.194042, 36.125458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055992, 36.159138, 36.787586>,  <44.936214, 35.597931, 36.259987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055992, 36.159138, 36.787586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115097, 35.786179, 36.919529>,  <45.150558, 35.562405, 36.998695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.115097, 35.786179, 36.919529>,  <45.055992, 36.159138, 36.787586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115097, 35.786179, 36.919529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958057, 0.217742, 0.186321,
		-0.245548, 0.288487, 0.925463,
		0.147761, -0.932397, 0.329853,
		45.159424, 35.506458, 37.018486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777752, 36.183704, 36.601547>,  <45.055992, 36.159138, 36.787586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777752, 36.183704, 36.601547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.042774, 36.325752, 36.337757>,  <46.201786, 36.410980, 36.179482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.042774, 36.325752, 36.337757>,  <45.777752, 36.183704, 36.601547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042774, 36.325752, 36.337757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079721, 0.842029, 0.533509,
		0.744758, -0.406054, 0.529581,
		0.662556, 0.355116, -0.659479,
		46.241543, 36.432285, 36.139915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435436, 36.401909, 36.975941>,  <45.777752, 36.183704, 36.601547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435436, 36.401909, 36.975941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385159, 36.594357, 36.628902>,  <46.354992, 36.709827, 36.420681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.385159, 36.594357, 36.628902>,  <46.435436, 36.401909, 36.975941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.385159, 36.594357, 36.628902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068150, 0.876653, 0.476273,
		0.989725, 0.000740, -0.142981,
		-0.125697, 0.481124, -0.867595,
		46.347450, 36.738693, 36.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835400, 37.009995, 37.114212>,  <46.435436, 36.401909, 36.975941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835400, 37.009995, 37.114212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.607632, 37.075161, 36.791916>,  <46.470970, 37.114262, 36.598537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.607632, 37.075161, 36.791916>,  <46.835400, 37.009995, 37.114212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607632, 37.075161, 36.791916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058051, 0.969749, 0.237102,
		0.819991, 0.181785, -0.542742,
		-0.569425, 0.162915, -0.805738,
		46.436806, 37.124035, 36.550194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087608, 37.619614, 36.911884>,  <46.835400, 37.009995, 37.114212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087608, 37.619614, 36.911884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725964, 37.583241, 36.744881>,  <46.508976, 37.561417, 36.644680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.725964, 37.583241, 36.744881>,  <47.087608, 37.619614, 36.911884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725964, 37.583241, 36.744881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166857, 0.974651, 0.149043,
		0.393371, 0.204415, -0.896367,
		-0.904112, -0.090936, -0.417508,
		46.454731, 37.555962, 36.619629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038067, 38.216339, 36.521111>,  <47.087608, 37.619614, 36.911884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038067, 38.216339, 36.521111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665939, 38.090157, 36.595932>,  <46.442661, 38.014446, 36.640823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.665939, 38.090157, 36.595932>,  <47.038067, 38.216339, 36.521111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665939, 38.090157, 36.595932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223947, 0.892545, 0.391421,
		-0.290431, 0.322258, -0.900999,
		-0.930321, -0.315457, 0.187054,
		46.386845, 37.995518, 36.652050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586124, 38.716724, 36.272457>,  <47.038067, 38.216339, 36.521111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586124, 38.716724, 36.272457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.388729, 38.494930, 36.540493>,  <46.270294, 38.361855, 36.701313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.388729, 38.494930, 36.540493>,  <46.586124, 38.716724, 36.272457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388729, 38.494930, 36.540493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254718, 0.828793, 0.498217,
		-0.831619, 0.075179, -0.550235,
		-0.493486, -0.554481, 0.670091,
		46.240685, 38.328587, 36.741520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967434, 38.997292, 36.139450>,  <46.586124, 38.716724, 36.272457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967434, 38.997292, 36.139450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973965, 38.843910, 36.508816>,  <45.977882, 38.751881, 36.730434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973965, 38.843910, 36.508816>,  <45.967434, 38.997292, 36.139450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973965, 38.843910, 36.508816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220281, 0.899469, 0.377402,
		-0.975300, -0.209573, -0.069781,
		0.016328, -0.383451, 0.923417,
		45.978863, 38.728874, 36.785839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414242, 39.312859, 36.443153>,  <45.967434, 38.997292, 36.139450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414242, 39.312859, 36.443153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563187, 39.142738, 36.773117>,  <45.652554, 39.040668, 36.971096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.563187, 39.142738, 36.773117>,  <45.414242, 39.312859, 36.443153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563187, 39.142738, 36.773117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291595, 0.790201, 0.539031,
		-0.881089, -0.441254, 0.170228,
		0.372364, -0.425297, 0.824905,
		45.674896, 39.015148, 37.020588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887695, 39.252304, 36.919792>,  <45.414242, 39.312859, 36.443153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887695, 39.252304, 36.919792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232929, 39.274094, 37.120640>,  <45.440067, 39.287167, 37.241150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232929, 39.274094, 37.120640>,  <44.887695, 39.252304, 36.919792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232929, 39.274094, 37.120640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422940, 0.621361, 0.659570,
		-0.276068, -0.781628, 0.559324,
		0.863081, 0.054474, 0.502120,
		45.491852, 39.290436, 37.271275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841045, 39.051311, 37.685684>,  <44.887695, 39.252304, 36.919792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841045, 39.051311, 37.685684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164337, 39.284870, 37.655159>,  <45.358315, 39.425007, 37.636845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.164337, 39.284870, 37.655159>,  <44.841045, 39.051311, 37.685684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164337, 39.284870, 37.655159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400910, 0.640547, 0.654958,
		0.431310, -0.498764, 0.751802,
		0.808234, 0.583895, -0.076315,
		45.406807, 39.460037, 37.632263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902332, 39.388058, 38.374748>,  <44.841045, 39.051311, 37.685684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902332, 39.388058, 38.374748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138477, 39.617920, 38.148037>,  <45.280167, 39.755836, 38.012012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.138477, 39.617920, 38.148037>,  <44.902332, 39.388058, 38.374748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138477, 39.617920, 38.148037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439095, 0.817868, 0.371870,
		0.677245, 0.029329, 0.735172,
		0.590368, 0.574658, -0.566776,
		45.315586, 39.790318, 37.978004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275890, 39.859665, 38.770504>,  <44.902332, 39.388058, 38.374748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275890, 39.859665, 38.770504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281746, 40.041325, 38.414181>,  <45.285259, 40.150322, 38.200386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281746, 40.041325, 38.414181>,  <45.275890, 39.859665, 38.770504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281746, 40.041325, 38.414181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246679, 0.865004, 0.436940,
		0.968987, 0.213347, 0.124691,
		0.014638, 0.454148, -0.890806,
		45.286137, 40.177570, 38.146938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439495, 40.480297, 38.885715>,  <45.275890, 39.859665, 38.770504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439495, 40.480297, 38.885715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289738, 40.541538, 38.519897>,  <45.199883, 40.578281, 38.300407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289738, 40.541538, 38.519897>,  <45.439495, 40.480297, 38.885715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289738, 40.541538, 38.519897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256593, 0.930655, 0.260845,
		0.891060, 0.332325, -0.309147,
		-0.374394, 0.153104, -0.914543,
		45.177418, 40.587471, 38.245533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633259, 41.139774, 38.670181>,  <45.439495, 40.480297, 38.885715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633259, 41.139774, 38.670181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339554, 41.067051, 38.408554>,  <45.163330, 41.023418, 38.251575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339554, 41.067051, 38.408554>,  <45.633259, 41.139774, 38.670181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339554, 41.067051, 38.408554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302498, 0.950157, 0.075478,
		0.607748, 0.253276, -0.752657,
		-0.734259, -0.181806, -0.654072,
		45.119274, 41.012508, 38.212334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672901, 41.626640, 38.302578>,  <45.633259, 41.139774, 38.670181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672901, 41.626640, 38.302578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297371, 41.507767, 38.232967>,  <45.072052, 41.436443, 38.191200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.297371, 41.507767, 38.232967>,  <45.672901, 41.626640, 38.302578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297371, 41.507767, 38.232967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331587, 0.916519, 0.223702,
		0.093017, 0.267722, -0.958996,
		-0.938828, -0.297183, -0.174025,
		45.015724, 41.418613, 38.180759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381016, 42.104435, 37.716953>,  <45.672901, 41.626640, 38.302578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381016, 42.104435, 37.716953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076340, 41.934273, 37.912449>,  <44.893536, 41.832176, 38.029747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076340, 41.934273, 37.912449>,  <45.381016, 42.104435, 37.716953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076340, 41.934273, 37.912449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442651, 0.892468, 0.086954,
		-0.473174, -0.150109, -0.868086,
		-0.761687, -0.425404, 0.488739,
		44.847836, 41.806652, 38.059071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855961, 42.424618, 37.423862>,  <45.381016, 42.104435, 37.716953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855961, 42.424618, 37.423862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661896, 42.251068, 37.727539>,  <44.545456, 42.146938, 37.909744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661896, 42.251068, 37.727539>,  <44.855961, 42.424618, 37.423862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661896, 42.251068, 37.727539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487283, 0.855063, 0.177265,
		-0.726068, -0.283940, -0.626261,
		-0.485160, -0.433873, 0.759193,
		44.516346, 42.120907, 37.955296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171005, 42.356155, 37.320839>,  <44.855961, 42.424618, 37.423862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171005, 42.356155, 37.320839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208843, 42.381840, 37.718216>,  <44.231548, 42.397251, 37.956642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208843, 42.381840, 37.718216>,  <44.171005, 42.356155, 37.320839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208843, 42.381840, 37.718216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570458, 0.821326, 0.001237,
		-0.815861, -0.566834, 0.114324,
		0.094598, 0.064208, 0.993443,
		44.237225, 42.401104, 38.016251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541126, 42.247932, 37.619339>,  <44.171005, 42.356155, 37.320839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541126, 42.247932, 37.619339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740570, 42.436954, 37.910015>,  <43.860237, 42.550369, 38.084419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740570, 42.436954, 37.910015>,  <43.541126, 42.247932, 37.619339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740570, 42.436954, 37.910015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707234, 0.706507, 0.025832,
		-0.501206, -0.526821, 0.686478,
		0.498610, 0.472554, 0.726692,
		43.890152, 42.578720, 38.128021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083366, 42.476482, 38.085365>,  <43.541126, 42.247932, 37.619339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083366, 42.476482, 38.085365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378227, 42.742344, 38.134094>,  <43.555145, 42.901859, 38.163330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378227, 42.742344, 38.134094>,  <43.083366, 42.476482, 38.085365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378227, 42.742344, 38.134094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651727, 0.746943, -0.131632,
		-0.178485, 0.017637, 0.983784,
		0.737153, 0.664654, 0.121824,
		43.599373, 42.941738, 38.170643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.934586, 40.170891, 40.169964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864132, 39.899212, 40.454967>,  <38.821861, 39.736206, 40.625969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864132, 39.899212, 40.454967>,  <38.934586, 40.170891, 40.169964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864132, 39.899212, 40.454967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164046, -0.733956, -0.659088,
		0.970601, 0.000798, 0.240692,
		-0.176132, -0.679197, 0.712509,
		38.811291, 39.695454, 40.668720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425846, 39.712494, 40.097111>,  <38.934586, 40.170891, 40.169964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425846, 39.712494, 40.097111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135021, 39.524586, 40.297390>,  <38.960526, 39.411842, 40.417557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135021, 39.524586, 40.297390>,  <39.425846, 39.712494, 40.097111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135021, 39.524586, 40.297390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177628, -0.833148, -0.523749,
		0.663195, -0.291861, 0.689195,
		-0.727064, -0.469768, 0.500696,
		38.916901, 39.383656, 40.447598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648743, 38.988209, 40.219700>,  <39.425846, 39.712494, 40.097111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648743, 38.988209, 40.219700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250038, 38.985188, 40.251732>,  <39.010815, 38.983376, 40.270950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250038, 38.985188, 40.251732>,  <39.648743, 38.988209, 40.219700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250038, 38.985188, 40.251732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028267, -0.899176, -0.436673,
		0.075304, -0.437521, 0.896049,
		-0.996760, -0.007554, 0.080079,
		38.951012, 38.982922, 40.275757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494320, 38.345604, 40.342548>,  <39.648743, 38.988209, 40.219700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494320, 38.345604, 40.342548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142887, 38.464775, 40.193241>,  <38.932026, 38.536278, 40.103657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142887, 38.464775, 40.193241>,  <39.494320, 38.345604, 40.342548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142887, 38.464775, 40.193241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009402, -0.792200, -0.610190,
		-0.477494, -0.532594, 0.698815,
		-0.878584, 0.297932, -0.373263,
		38.879311, 38.554153, 40.081261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098087, 37.807072, 40.295822>,  <39.494320, 38.345604, 40.342548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098087, 37.807072, 40.295822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915997, 38.043301, 40.029289>,  <38.806744, 38.185036, 39.869370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915997, 38.043301, 40.029289>,  <39.098087, 37.807072, 40.295822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915997, 38.043301, 40.029289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223954, -0.800257, -0.556267,
		-0.861750, -0.104000, 0.496558,
		-0.455226, 0.590570, -0.666331,
		38.779427, 38.220470, 39.829391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423782, 37.370148, 39.933708>,  <39.098087, 37.807072, 40.295822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423782, 37.370148, 39.933708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500839, 37.671478, 39.682190>,  <38.547073, 37.852276, 39.531277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500839, 37.671478, 39.682190>,  <38.423782, 37.370148, 39.933708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500839, 37.671478, 39.682190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230983, -0.587984, -0.775192,
		-0.953695, 0.294579, 0.060733,
		0.192646, 0.753325, -0.628800,
		38.558632, 37.897476, 39.493549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782707, 37.501335, 39.485695>,  <38.423782, 37.370148, 39.933708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782707, 37.501335, 39.485695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108555, 37.619770, 39.286201>,  <38.304062, 37.690830, 39.166504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108555, 37.619770, 39.286201>,  <37.782707, 37.501335, 39.485695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108555, 37.619770, 39.286201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248388, -0.598951, -0.761289,
		-0.524123, 0.744038, -0.414371,
		0.814616, 0.296084, -0.498733,
		38.352940, 37.708595, 39.136581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555225, 37.402512, 38.777908>,  <37.782707, 37.501335, 39.485695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555225, 37.402512, 38.777908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948879, 37.466450, 38.747116>,  <38.185070, 37.504814, 38.728642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948879, 37.466450, 38.747116>,  <37.555225, 37.402512, 38.777908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948879, 37.466450, 38.747116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032148, -0.587390, -0.808665,
		-0.174483, 0.793361, -0.583210,
		0.984135, 0.159847, -0.076985,
		38.244122, 37.514404, 38.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682926, 37.680206, 38.149269>,  <37.555225, 37.402512, 38.777908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682926, 37.680206, 38.149269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029808, 37.508255, 38.249805>,  <38.237938, 37.405087, 38.310127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029808, 37.508255, 38.249805>,  <37.682926, 37.680206, 38.149269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029808, 37.508255, 38.249805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004726, -0.497609, -0.867389,
		0.497936, 0.753388, -0.429496,
		0.867201, -0.429874, 0.251337,
		38.289967, 37.379292, 38.325207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903885, 37.661770, 37.508587>,  <37.682926, 37.680206, 38.149269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903885, 37.661770, 37.508587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139091, 37.425274, 37.729378>,  <38.280216, 37.283379, 37.861855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139091, 37.425274, 37.729378>,  <37.903885, 37.661770, 37.508587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139091, 37.425274, 37.729378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092624, -0.727153, -0.680198,
		0.803531, 0.348839, -0.482337,
		0.588012, -0.591236, 0.551980,
		38.315495, 37.247902, 37.894970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500099, 37.486435, 37.131252>,  <37.903885, 37.661770, 37.508587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500099, 37.486435, 37.131252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435165, 37.199390, 37.402157>,  <38.396206, 37.027164, 37.564701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435165, 37.199390, 37.402157>,  <38.500099, 37.486435, 37.131252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435165, 37.199390, 37.402157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046909, -0.691200, -0.721139,
		0.985620, -0.085296, 0.145868,
		-0.162334, -0.717612, 0.677260,
		38.386467, 36.984108, 37.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938046, 36.870838, 36.916435>,  <38.500099, 37.486435, 37.131252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938046, 36.870838, 36.916435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666962, 36.712303, 37.164185>,  <38.504311, 36.617184, 37.312832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666962, 36.712303, 37.164185>,  <38.938046, 36.870838, 36.916435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666962, 36.712303, 37.164185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168746, -0.736002, -0.655611,
		0.715702, -0.548833, 0.431918,
		-0.677714, -0.396338, 0.619371,
		38.463646, 36.593403, 37.349995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832714, 36.202419, 36.594761>,  <38.938046, 36.870838, 36.916435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832714, 36.202419, 36.594761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521919, 36.241074, 36.843582>,  <38.335442, 36.264267, 36.992874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521919, 36.241074, 36.843582>,  <38.832714, 36.202419, 36.594761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521919, 36.241074, 36.843582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509932, -0.676048, -0.531910,
		0.369136, -0.730493, 0.574560,
		-0.776987, 0.096639, 0.622055,
		38.288822, 36.270065, 37.030197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476505, 36.547050, 36.418190>,  <38.832714, 36.202419, 36.594761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476505, 36.547050, 36.418190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327354, 36.334793, 36.113724>,  <39.237865, 36.207439, 35.931042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327354, 36.334793, 36.113724>,  <39.476505, 36.547050, 36.418190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327354, 36.334793, 36.113724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789480, -0.612456, 0.040230,
		-0.487532, -0.585928, 0.647303,
		-0.372873, -0.530647, -0.761170,
		39.215492, 36.175598, 35.885372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966862, 36.710442, 36.970985>,  <39.476505, 36.547050, 36.418190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966862, 36.710442, 36.970985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189678, 36.395081, 37.075382>,  <40.323368, 36.205864, 37.138020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189678, 36.395081, 37.075382>,  <39.966862, 36.710442, 36.970985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189678, 36.395081, 37.075382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007794, 0.309291, 0.950935,
		-0.830446, -0.531748, 0.166144,
		0.557045, -0.788406, 0.260994,
		40.356792, 36.158558, 37.153679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802975, 36.621674, 37.688332>,  <39.966862, 36.710442, 36.970985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802975, 36.621674, 37.688332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133156, 36.395943, 37.683216>,  <40.331264, 36.260502, 37.680149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133156, 36.395943, 37.683216>,  <39.802975, 36.621674, 37.688332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133156, 36.395943, 37.683216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119624, 0.152747, 0.980999,
		-0.551655, -0.811294, 0.193592,
		0.825449, -0.564331, -0.012787,
		40.380791, 36.226643, 37.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779789, 36.302544, 38.285278>,  <39.802975, 36.621674, 37.688332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779789, 36.302544, 38.285278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163128, 36.292751, 38.171455>,  <40.393131, 36.286877, 38.103161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163128, 36.292751, 38.171455>,  <39.779789, 36.302544, 38.285278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163128, 36.292751, 38.171455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279792, 0.280551, 0.918154,
		0.057359, -0.959527, 0.275714,
		0.958345, -0.024478, -0.284560,
		40.450630, 36.285408, 38.086086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013184, 35.821480, 38.691547>,  <39.779789, 36.302544, 38.285278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013184, 35.821480, 38.691547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297886, 36.060986, 38.544643>,  <40.468708, 36.204689, 38.456501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297886, 36.060986, 38.544643>,  <40.013184, 35.821480, 38.691547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297886, 36.060986, 38.544643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238336, 0.285965, 0.928127,
		0.660757, -0.748131, 0.060830,
		0.711756, 0.598769, -0.367260,
		40.511414, 36.240616, 38.434464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540428, 35.767220, 39.185135>,  <40.013184, 35.821480, 38.691547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540428, 35.767220, 39.185135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685745, 36.087513, 38.994625>,  <40.772938, 36.279690, 38.880318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685745, 36.087513, 38.994625>,  <40.540428, 35.767220, 39.185135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685745, 36.087513, 38.994625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305023, 0.380806, 0.872896,
		0.880328, -0.462393, -0.105898,
		0.363295, 0.800737, -0.476275,
		40.794735, 36.327736, 38.851742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202259, 35.794044, 39.367126>,  <40.540428, 35.767220, 39.185135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202259, 35.794044, 39.367126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098366, 36.164845, 39.258892>,  <41.036030, 36.387325, 39.193951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098366, 36.164845, 39.258892>,  <41.202259, 35.794044, 39.367126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098366, 36.164845, 39.258892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280662, 0.340569, 0.897352,
		0.923995, 0.157132, -0.348631,
		-0.259735, 0.926996, -0.270584,
		41.020447, 36.442944, 39.177715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740635, 36.325481, 39.619919>,  <41.202259, 35.794044, 39.367126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740635, 36.325481, 39.619919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421314, 36.554874, 39.546345>,  <41.229721, 36.692509, 39.502201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421314, 36.554874, 39.546345>,  <41.740635, 36.325481, 39.619919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421314, 36.554874, 39.546345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118371, 0.448854, 0.885730,
		0.590506, 0.685311, -0.426206,
		-0.798305, 0.573480, -0.183931,
		41.181824, 36.726917, 39.491165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834137, 37.041637, 39.765991>,  <41.740635, 36.325481, 39.619919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834137, 37.041637, 39.765991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436802, 37.016632, 39.804722>,  <41.198402, 37.001629, 39.827961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436802, 37.016632, 39.804722>,  <41.834137, 37.041637, 39.765991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436802, 37.016632, 39.804722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066522, 0.375093, 0.924597,
		-0.094117, 0.924877, -0.368436,
		-0.993336, -0.062511, 0.096827,
		41.138802, 36.997879, 39.833771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674408, 37.597664, 40.146801>,  <41.834137, 37.041637, 39.765991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674408, 37.597664, 40.146801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327065, 37.399574, 40.157406>,  <41.118660, 37.280720, 40.163769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327065, 37.399574, 40.157406>,  <41.674408, 37.597664, 40.146801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327065, 37.399574, 40.157406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176861, 0.359175, 0.916359,
		-0.463328, 0.791040, -0.399479,
		-0.868359, -0.495227, 0.026512,
		41.066555, 37.251007, 40.165359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042793, 38.018764, 40.243591>,  <41.674408, 37.597664, 40.146801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042793, 38.018764, 40.243591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970951, 37.661388, 40.408279>,  <40.927845, 37.446964, 40.507092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970951, 37.661388, 40.408279>,  <41.042793, 38.018764, 40.243591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970951, 37.661388, 40.408279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094507, 0.432258, 0.896784,
		-0.979188, 0.122159, -0.162074,
		-0.179608, -0.893437, 0.411717,
		40.917068, 37.393356, 40.531796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633671, 38.168636, 40.806286>,  <41.042793, 38.018764, 40.243591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633671, 38.168636, 40.806286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721806, 37.789337, 40.897751>,  <40.774685, 37.561760, 40.952629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721806, 37.789337, 40.897751>,  <40.633671, 38.168636, 40.806286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721806, 37.789337, 40.897751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135797, 0.202321, 0.969858,
		-0.965925, -0.244747, -0.084190,
		0.220336, -0.948243, 0.228663,
		40.787907, 37.504864, 40.966351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072300, 37.868591, 41.282021>,  <40.633671, 38.168636, 40.806286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072300, 37.868591, 41.282021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381516, 37.623543, 41.347874>,  <40.567043, 37.476513, 41.387386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381516, 37.623543, 41.347874>,  <40.072300, 37.868591, 41.282021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381516, 37.623543, 41.347874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104715, 0.132736, 0.985604,
		-0.625658, -0.779149, 0.038459,
		0.773038, -0.612624, 0.164636,
		40.613426, 37.439754, 41.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859344, 37.365295, 41.876041>,  <40.072300, 37.868591, 41.282021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859344, 37.365295, 41.876041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259190, 37.364433, 41.865013>,  <40.499096, 37.363914, 41.858395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259190, 37.364433, 41.865013>,  <39.859344, 37.365295, 41.876041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259190, 37.364433, 41.865013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027620, 0.130297, 0.991090,
		0.001452, -0.991473, 0.130307,
		0.999617, -0.002160, -0.027574,
		40.559074, 37.363785, 41.856739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073093, 36.958084, 42.441074>,  <39.859344, 37.365295, 41.876041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073093, 36.958084, 42.441074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371937, 37.197823, 42.326107>,  <40.551243, 37.341667, 42.257126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371937, 37.197823, 42.326107>,  <40.073093, 36.958084, 42.441074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371937, 37.197823, 42.326107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167321, 0.248900, 0.953967,
		0.643297, -0.760809, 0.085672,
		0.747110, 0.599349, -0.287416,
		40.596069, 37.377628, 42.239883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120071, 36.128742, 42.540676>,  <40.073093, 36.958084, 42.441074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120071, 36.128742, 42.540676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866104, 35.890560, 42.737576>,  <39.713722, 35.747650, 42.855717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866104, 35.890560, 42.737576>,  <40.120071, 36.128742, 42.540676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866104, 35.890560, 42.737576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345182, -0.351378, -0.870277,
		0.691175, -0.722474, 0.017558,
		-0.634922, -0.595454, 0.492249,
		39.675629, 35.711926, 42.885250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315643, 35.521175, 42.260788>,  <40.120071, 36.128742, 42.540676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315643, 35.521175, 42.260788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946346, 35.515564, 42.414375>,  <39.724770, 35.512196, 42.506527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946346, 35.515564, 42.414375>,  <40.315643, 35.521175, 42.260788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946346, 35.515564, 42.414375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359558, -0.320736, -0.876268,
		0.135445, -0.947065, 0.291072,
		-0.923240, -0.014029, 0.383967,
		39.669373, 35.511356, 42.529564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149910, 34.857773, 42.201866>,  <40.315643, 35.521175, 42.260788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149910, 34.857773, 42.201866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826843, 35.092579, 42.224117>,  <39.633003, 35.233463, 42.237469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826843, 35.092579, 42.224117>,  <40.149910, 34.857773, 42.201866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826843, 35.092579, 42.224117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350338, -0.401847, -0.846040,
		-0.474283, -0.702804, 0.530210,
		-0.807663, 0.587014, 0.055630,
		39.584545, 35.268684, 42.240807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554905, 34.342064, 42.065907>,  <40.149910, 34.857773, 42.201866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554905, 34.342064, 42.065907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433624, 34.716896, 41.996689>,  <39.360855, 34.941795, 41.955158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433624, 34.716896, 41.996689>,  <39.554905, 34.342064, 42.065907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433624, 34.716896, 41.996689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360846, -0.280970, -0.889295,
		-0.881964, -0.207191, 0.423333,
		-0.303198, 0.937084, -0.173042,
		39.342667, 34.998020, 41.944775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730942, 34.346870, 42.061012>,  <39.554905, 34.342064, 42.065907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730942, 34.346870, 42.061012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847588, 34.667820, 41.852718>,  <38.917576, 34.860390, 41.727741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847588, 34.667820, 41.852718>,  <38.730942, 34.346870, 42.061012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847588, 34.667820, 41.852718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542756, -0.309473, -0.780796,
		-0.787641, 0.510321, 0.345245,
		0.291613, 0.802371, -0.520733,
		38.935070, 34.908531, 41.696499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150463, 34.406067, 41.616161>,  <38.730942, 34.346870, 42.061012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150463, 34.406067, 41.616161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398254, 34.676994, 41.457424>,  <38.546928, 34.839550, 41.362183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398254, 34.676994, 41.457424>,  <38.150463, 34.406067, 41.616161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398254, 34.676994, 41.457424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362428, -0.201651, -0.909936,
		-0.696339, 0.707515, 0.120560,
		0.619482, 0.677318, -0.396841,
		38.584099, 34.880188, 41.338371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757053, 34.712112, 41.157349>,  <38.150463, 34.406067, 41.616161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757053, 34.712112, 41.157349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125652, 34.810627, 41.037224>,  <38.346813, 34.869736, 40.965149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125652, 34.810627, 41.037224>,  <37.757053, 34.712112, 41.157349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125652, 34.810627, 41.037224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268332, -0.155290, -0.950727,
		-0.280787, 0.956675, -0.077012,
		0.921497, 0.246287, -0.300310,
		38.402100, 34.884514, 40.947132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705498, 35.271038, 40.752728>,  <37.757053, 34.712112, 41.157349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705498, 35.271038, 40.752728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057003, 35.117279, 40.639580>,  <38.267906, 35.025024, 40.571690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057003, 35.117279, 40.639580>,  <37.705498, 35.271038, 40.752728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057003, 35.117279, 40.639580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366378, -0.163511, -0.915987,
		0.305851, 0.908572, -0.284522,
		0.878762, -0.384397, -0.282871,
		38.320633, 35.001961, 40.554718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786823, 35.491508, 40.115452>,  <37.705498, 35.271038, 40.752728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786823, 35.491508, 40.115452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035892, 35.180698, 40.152363>,  <38.185333, 34.994213, 40.174511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035892, 35.180698, 40.152363>,  <37.786823, 35.491508, 40.115452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035892, 35.180698, 40.152363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312671, -0.355183, -0.880955,
		0.717301, 0.519689, -0.464114,
		0.622668, -0.777025, 0.092281,
		38.222694, 34.947590, 40.180046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010750, 35.372704, 39.379910>,  <37.786823, 35.491508, 40.115452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010750, 35.372704, 39.379910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096165, 35.050758, 39.601395>,  <38.147411, 34.857590, 39.734287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096165, 35.050758, 39.601395>,  <38.010750, 35.372704, 39.379910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096165, 35.050758, 39.601395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320382, -0.593134, -0.738611,
		0.922907, -0.019681, -0.384519,
		0.213535, -0.804863, 0.553713,
		38.160225, 34.809299, 39.767509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520531, 34.952709, 38.985535>,  <38.010750, 35.372704, 39.379910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520531, 34.952709, 38.985535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292461, 34.716934, 39.214436>,  <38.155621, 34.575470, 39.351776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292461, 34.716934, 39.214436>,  <38.520531, 34.952709, 38.985535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292461, 34.716934, 39.214436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095509, -0.739404, -0.666453,
		0.815957, -0.325335, 0.477882,
		-0.570169, -0.589439, 0.572249,
		38.121410, 34.540104, 39.386112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840919, 34.278236, 39.075275>,  <38.520531, 34.952709, 38.985535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840919, 34.278236, 39.075275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446697, 34.240093, 39.131256>,  <38.210163, 34.217209, 39.164845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446697, 34.240093, 39.131256>,  <38.840919, 34.278236, 39.075275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446697, 34.240093, 39.131256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042537, -0.660504, -0.749617,
		0.163919, -0.744742, 0.646908,
		-0.985556, -0.095359, 0.139949,
		38.151031, 34.211487, 39.173241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.811371, 37.547279, 45.721054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444237, 37.430508, 45.828648>,  <40.223957, 37.360443, 45.893204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.444237, 37.430508, 45.828648>,  <40.811371, 37.547279, 45.721054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444237, 37.430508, 45.828648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072225, -0.789113, -0.609986,
		0.390335, -0.540440, 0.745361,
		-0.917836, -0.291933, 0.268985,
		40.168884, 37.342926, 45.909344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761269, 36.674702, 45.915993>,  <40.811371, 37.547279, 45.721054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761269, 36.674702, 45.915993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411068, 36.835609, 45.808895>,  <40.200947, 36.932152, 45.744637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.411068, 36.835609, 45.808895>,  <40.761269, 36.674702, 45.915993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411068, 36.835609, 45.808895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080565, -0.667837, -0.739934,
		-0.476459, -0.626240, 0.617099,
		-0.875498, 0.402265, -0.267744,
		40.148418, 36.956287, 45.728573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230881, 36.111992, 46.053516>,  <40.761269, 36.674702, 45.915993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230881, 36.111992, 46.053516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.092995, 36.385399, 45.796150>,  <40.010262, 36.549442, 45.641731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.092995, 36.385399, 45.796150>,  <40.230881, 36.111992, 46.053516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092995, 36.385399, 45.796150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251027, -0.727584, -0.638442,
		-0.904520, -0.058568, 0.422390,
		-0.344716, 0.683515, -0.643412,
		39.989578, 36.590454, 45.603127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765957, 35.755333, 45.643692>,  <40.230881, 36.111992, 46.053516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765957, 35.755333, 45.643692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818687, 36.088890, 45.429314>,  <39.850327, 36.289024, 45.300686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818687, 36.088890, 45.429314>,  <39.765957, 35.755333, 45.643692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818687, 36.088890, 45.429314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240406, -0.497628, -0.833409,
		-0.961679, 0.238709, 0.134874,
		0.131826, 0.833897, -0.535945,
		39.858234, 36.339058, 45.268532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186974, 35.878197, 45.310448>,  <39.765957, 35.755333, 45.643692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186974, 35.878197, 45.310448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472706, 36.050411, 45.089767>,  <39.644146, 36.153740, 44.957359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.472706, 36.050411, 45.089767>,  <39.186974, 35.878197, 45.310448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472706, 36.050411, 45.089767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295756, -0.528767, -0.795571,
		-0.634242, 0.731469, -0.250380,
		0.714329, 0.430533, -0.551703,
		39.687004, 36.179573, 44.924255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897877, 36.201313, 44.724548>,  <39.186974, 35.878197, 45.310448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897877, 36.201313, 44.724548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272667, 36.141598, 44.598190>,  <39.497540, 36.105770, 44.522377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272667, 36.141598, 44.598190>,  <38.897877, 36.201313, 44.724548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272667, 36.141598, 44.598190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348799, -0.452421, -0.820765,
		-0.020389, 0.879221, -0.475978,
		0.936976, -0.149286, -0.315895,
		39.553761, 36.096813, 44.503422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872738, 36.427589, 44.011364>,  <38.897877, 36.201313, 44.724548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872738, 36.427589, 44.011364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206940, 36.208508, 44.029041>,  <39.407459, 36.077061, 44.039646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.206940, 36.208508, 44.029041>,  <38.872738, 36.427589, 44.011364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206940, 36.208508, 44.029041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093722, -0.221287, -0.970695,
		0.541431, 0.806879, -0.236218,
		0.835505, -0.547703, 0.044189,
		39.457592, 36.044197, 44.042297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246845, 36.638355, 43.466862>,  <38.872738, 36.427589, 44.011364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246845, 36.638355, 43.466862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406422, 36.286037, 43.568874>,  <39.502167, 36.074646, 43.630081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406422, 36.286037, 43.568874>,  <39.246845, 36.638355, 43.466862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406422, 36.286037, 43.568874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043149, -0.295850, -0.954259,
		0.915962, 0.369685, -0.156032,
		0.398938, -0.880798, 0.255036,
		39.526104, 36.021797, 43.645386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843605, 36.553455, 43.063374>,  <39.246845, 36.638355, 43.466862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843605, 36.553455, 43.063374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737621, 36.187050, 43.183853>,  <39.674030, 35.967209, 43.256142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.737621, 36.187050, 43.183853>,  <39.843605, 36.553455, 43.063374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737621, 36.187050, 43.183853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252855, -0.235429, -0.938423,
		0.930516, -0.324804, -0.169238,
		-0.264960, -0.916011, 0.301199,
		39.658134, 35.912247, 43.274212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459454, 36.867023, 43.059425>,  <39.843605, 36.553455, 43.063374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459454, 36.867023, 43.059425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630363, 37.179913, 42.878067>,  <40.732910, 37.367645, 42.769253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630363, 37.179913, 42.878067>,  <40.459454, 36.867023, 43.059425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630363, 37.179913, 42.878067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332243, 0.330545, 0.883377,
		0.840866, -0.528077, -0.118657,
		0.427270, 0.782224, -0.453394,
		40.758545, 37.414581, 42.742050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076645, 37.075989, 43.441597>,  <40.459454, 36.867023, 43.059425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076645, 37.075989, 43.441597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993797, 37.398899, 43.220543>,  <40.944088, 37.592644, 43.087910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.993797, 37.398899, 43.220543>,  <41.076645, 37.075989, 43.441597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993797, 37.398899, 43.220543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352851, 0.588508, 0.727430,
		0.912467, -0.044332, -0.406740,
		-0.207122, 0.807275, -0.552637,
		40.931660, 37.641083, 43.054752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754738, 37.534492, 43.399017>,  <41.076645, 37.075989, 43.441597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754738, 37.534492, 43.399017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434784, 37.763828, 43.328072>,  <41.242809, 37.901432, 43.285503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.434784, 37.763828, 43.328072>,  <41.754738, 37.534492, 43.399017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434784, 37.763828, 43.328072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293401, 0.631388, 0.717820,
		0.523541, 0.522137, -0.673259,
		-0.799888, 0.573343, -0.177362,
		41.194817, 37.935833, 43.274864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935219, 38.246983, 43.417267>,  <41.754738, 37.534492, 43.399017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935219, 38.246983, 43.417267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539852, 38.279354, 43.468624>,  <41.302631, 38.298779, 43.499439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539852, 38.279354, 43.468624>,  <41.935219, 38.246983, 43.417267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539852, 38.279354, 43.468624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148439, 0.691777, 0.706689,
		-0.031625, 0.717561, -0.695777,
		-0.988416, 0.080931, 0.128391,
		41.243328, 38.303635, 43.507141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733814, 39.029358, 43.366623>,  <41.935219, 38.246983, 43.417267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733814, 39.029358, 43.366623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.429306, 38.857441, 43.560837>,  <41.246601, 38.754292, 43.677364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.429306, 38.857441, 43.560837>,  <41.733814, 39.029358, 43.366623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429306, 38.857441, 43.560837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044593, 0.781708, 0.622048,
		-0.646896, 0.451898, -0.614259,
		-0.761274, -0.429792, 0.485532,
		41.200924, 38.728504, 43.706497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372185, 39.651543, 43.384052>,  <41.733814, 39.029358, 43.366623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372185, 39.651543, 43.384052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227055, 39.390224, 43.649853>,  <41.139977, 39.233433, 43.809334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.227055, 39.390224, 43.649853>,  <41.372185, 39.651543, 43.384052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227055, 39.390224, 43.649853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037787, 0.722822, 0.690001,
		-0.931089, 0.225243, -0.286946,
		-0.362829, -0.653295, 0.664500,
		41.118206, 39.194237, 43.849201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921753, 40.021179, 43.714890>,  <41.372185, 39.651543, 43.384052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921753, 40.021179, 43.714890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.990013, 39.733421, 43.984215>,  <41.030972, 39.560768, 44.145809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.990013, 39.733421, 43.984215>,  <40.921753, 40.021179, 43.714890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990013, 39.733421, 43.984215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045727, 0.688380, 0.723908,
		-0.984269, -0.092750, 0.150371,
		0.170654, -0.719396, 0.673310,
		41.041210, 39.517601, 44.186207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408264, 40.152046, 44.337399>,  <40.921753, 40.021179, 43.714890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408264, 40.152046, 44.337399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726154, 39.937904, 44.451805>,  <40.916889, 39.809418, 44.520451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726154, 39.937904, 44.451805>,  <40.408264, 40.152046, 44.337399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726154, 39.937904, 44.451805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119991, 0.600494, 0.790575,
		-0.594995, -0.593968, 0.541464,
		0.794722, -0.535359, 0.286020,
		40.964569, 39.777298, 44.537613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336105, 40.194485, 44.994926>,  <40.408264, 40.152046, 44.337399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336105, 40.194485, 44.994926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719234, 40.085522, 44.958347>,  <40.949112, 40.020145, 44.936401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.719234, 40.085522, 44.958347>,  <40.336105, 40.194485, 44.994926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719234, 40.085522, 44.958347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254057, 0.654133, 0.712436,
		-0.134256, -0.705623, 0.695753,
		0.957826, -0.272409, -0.091447,
		41.006584, 40.003799, 44.930912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539597, 40.026649, 45.654781>,  <40.336105, 40.194485, 44.994926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539597, 40.026649, 45.654781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.873318, 40.110291, 45.450737>,  <41.073551, 40.160477, 45.328312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.873318, 40.110291, 45.450737>,  <40.539597, 40.026649, 45.654781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873318, 40.110291, 45.450737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332450, 0.547295, 0.768079,
		0.439790, -0.810397, 0.387093,
		0.834303, 0.209105, -0.510112,
		41.123608, 40.173023, 45.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061657, 40.100327, 46.151062>,  <40.539597, 40.026649, 45.654781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061657, 40.100327, 46.151062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212193, 40.267345, 45.820240>,  <41.302513, 40.367558, 45.621746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212193, 40.267345, 45.820240>,  <41.061657, 40.100327, 46.151062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212193, 40.267345, 45.820240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451251, 0.697035, 0.557238,
		0.809159, -0.582923, 0.073907,
		0.376343, 0.417544, -0.827057,
		41.325096, 40.392609, 45.572124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764080, 40.371731, 46.345943>,  <41.061657, 40.100327, 46.151062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764080, 40.371731, 46.345943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714439, 40.594715, 46.017593>,  <41.684654, 40.728504, 45.820583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.714439, 40.594715, 46.017593>,  <41.764080, 40.371731, 46.345943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714439, 40.594715, 46.017593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187110, 0.825579, 0.532361,
		0.974469, -0.087529, -0.206760,
		-0.124099, 0.557456, -0.820879,
		41.677208, 40.761951, 45.771328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432308, 40.769569, 46.274963>,  <41.764080, 40.371731, 46.345943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432308, 40.769569, 46.274963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123470, 40.941952, 46.088142>,  <41.938168, 41.045380, 45.976048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.123470, 40.941952, 46.088142>,  <42.432308, 40.769569, 46.274963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123470, 40.941952, 46.088142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196742, 0.860929, 0.469141,
		0.604281, 0.270334, -0.749509,
		-0.772099, 0.430953, -0.467057,
		41.891842, 41.071239, 45.948025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620087, 41.452030, 46.335278>,  <42.432308, 40.769569, 46.274963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620087, 41.452030, 46.335278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236759, 41.482239, 46.225067>,  <42.006760, 41.500362, 46.158943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.236759, 41.482239, 46.225067>,  <42.620087, 41.452030, 46.335278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236759, 41.482239, 46.225067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095174, 0.824946, 0.557141,
		0.269366, 0.560144, -0.783378,
		-0.958323, 0.075517, -0.275524,
		41.949261, 41.504894, 46.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.084660, 39.926533, 46.381927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433758, 39.801586, 46.531990>,  <32.643215, 39.726616, 46.622028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.433758, 39.801586, 46.531990>,  <32.084660, 39.926533, 46.381927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433758, 39.801586, 46.531990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083667, -0.661403, -0.745350,
		0.480955, 0.681888, -0.551100,
		0.872744, -0.312371, 0.375157,
		32.695580, 39.707874, 46.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579708, 39.861881, 45.805618>,  <32.084660, 39.926533, 46.381927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579708, 39.861881, 45.805618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733803, 39.625473, 46.089108>,  <32.826260, 39.483627, 46.259201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733803, 39.625473, 46.089108>,  <32.579708, 39.861881, 45.805618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733803, 39.625473, 46.089108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006625, -0.769747, -0.638315,
		0.922796, 0.241205, -0.300447,
		0.385233, -0.591025, 0.708721,
		32.849373, 39.448166, 46.301723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113705, 39.496830, 45.506321>,  <32.579708, 39.861881, 45.805618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113705, 39.496830, 45.506321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056084, 39.281837, 45.838673>,  <33.021511, 39.152840, 46.038082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.056084, 39.281837, 45.838673>,  <33.113705, 39.496830, 45.506321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056084, 39.281837, 45.838673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157247, -0.841401, -0.517028,
		0.976996, 0.056174, 0.205724,
		-0.144053, -0.537484, 0.830879,
		33.012867, 39.120594, 46.087936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600777, 38.997387, 45.518089>,  <33.113705, 39.496830, 45.506321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600777, 38.997387, 45.518089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299774, 38.847630, 45.734818>,  <33.119175, 38.757774, 45.864853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299774, 38.847630, 45.734818>,  <33.600777, 38.997387, 45.518089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299774, 38.847630, 45.734818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041056, -0.847762, -0.528786,
		0.657309, -0.375668, 0.653314,
		-0.752502, -0.374398, 0.541818,
		33.074024, 38.735310, 45.897362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835831, 38.330021, 45.828831>,  <33.600777, 38.997387, 45.518089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835831, 38.330021, 45.828831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440651, 38.342926, 45.768269>,  <33.203545, 38.350670, 45.731930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.440651, 38.342926, 45.768269>,  <33.835831, 38.330021, 45.828831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440651, 38.342926, 45.768269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063849, -0.806067, -0.588370,
		-0.141022, -0.590944, 0.794290,
		-0.987945, 0.032258, -0.151404,
		33.144268, 38.352604, 45.722847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756401, 37.629150, 45.688778>,  <33.835831, 38.330021, 45.828831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756401, 37.629150, 45.688778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395668, 37.779293, 45.603165>,  <33.179230, 37.869381, 45.551796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395668, 37.779293, 45.603165>,  <33.756401, 37.629150, 45.688778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395668, 37.779293, 45.603165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116469, -0.688172, -0.716138,
		-0.416102, -0.620905, 0.664331,
		-0.901828, 0.375360, -0.214034,
		33.125118, 37.891903, 45.538956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432159, 37.047535, 45.657600>,  <33.756401, 37.629150, 45.688778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432159, 37.047535, 45.657600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226734, 37.334110, 45.468723>,  <33.103477, 37.506058, 45.355396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.226734, 37.334110, 45.468723>,  <33.432159, 37.047535, 45.657600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226734, 37.334110, 45.468723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111245, -0.601254, -0.791276,
		-0.850807, -0.353846, 0.388485,
		-0.513568, 0.716440, -0.472188,
		33.072662, 37.549042, 45.327068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097755, 36.688950, 45.165531>,  <33.432159, 37.047535, 45.657600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097755, 36.688950, 45.165531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028412, 37.057480, 45.026329>,  <32.986805, 37.278599, 44.942806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028412, 37.057480, 45.026329>,  <33.097755, 36.688950, 45.165531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028412, 37.057480, 45.026329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033466, -0.358667, -0.932865,
		-0.984289, -0.150078, 0.093013,
		-0.173363, 0.921322, -0.348010,
		32.976402, 37.333878, 44.921925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532085, 36.705532, 44.647572>,  <33.097755, 36.688950, 45.165531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532085, 36.705532, 44.647572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733723, 37.038723, 44.556324>,  <32.854706, 37.238636, 44.501575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733723, 37.038723, 44.556324>,  <32.532085, 36.705532, 44.647572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733723, 37.038723, 44.556324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050607, -0.235194, -0.970630,
		-0.862163, 0.500836, -0.076407,
		0.504097, 0.832975, -0.228121,
		32.884953, 37.288616, 44.487888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149899, 37.070881, 44.125565>,  <32.532085, 36.705532, 44.647572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149899, 37.070881, 44.125565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506371, 37.241592, 44.064041>,  <32.720253, 37.344017, 44.027126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506371, 37.241592, 44.064041>,  <32.149899, 37.070881, 44.125565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506371, 37.241592, 44.064041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136378, -0.071324, -0.988086,
		-0.432661, 0.901541, -0.005360,
		0.891182, 0.426776, -0.153809,
		32.773724, 37.369625, 44.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014812, 37.561035, 43.536991>,  <32.149899, 37.070881, 44.125565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014812, 37.561035, 43.536991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412384, 37.532906, 43.570839>,  <32.650928, 37.516029, 43.591148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.412384, 37.532906, 43.570839>,  <32.014812, 37.561035, 43.536991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412384, 37.532906, 43.570839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085231, 0.005754, -0.996345,
		0.069579, 0.997508, 0.011713,
		0.993929, -0.070323, 0.084618,
		32.710564, 37.511810, 43.596226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342319, 38.115864, 43.136303>,  <32.014812, 37.561035, 43.536991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342319, 38.115864, 43.136303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626286, 37.834778, 43.155087>,  <32.796665, 37.666126, 43.166355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626286, 37.834778, 43.155087>,  <32.342319, 38.115864, 43.136303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626286, 37.834778, 43.155087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054645, -0.011515, -0.998439,
		0.702162, 0.711375, 0.030225,
		0.709917, -0.702718, 0.046958,
		32.839260, 37.623962, 43.169174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754730, 38.250999, 42.557644>,  <32.342319, 38.115864, 43.136303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754730, 38.250999, 42.557644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833008, 37.869057, 42.647045>,  <32.879974, 37.639893, 42.700687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833008, 37.869057, 42.647045>,  <32.754730, 38.250999, 42.557644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833008, 37.869057, 42.647045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101791, -0.246460, -0.963792,
		0.975367, 0.165858, -0.145427,
		0.195695, -0.954855, 0.223506,
		32.891716, 37.582600, 42.714096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294472, 37.959671, 42.120789>,  <32.754730, 38.250999, 42.557644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294472, 37.959671, 42.120789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108467, 37.631409, 42.253624>,  <32.996864, 37.434452, 42.333324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108467, 37.631409, 42.253624>,  <33.294472, 37.959671, 42.120789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108467, 37.631409, 42.253624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012331, -0.369073, -0.929319,
		0.885218, -0.436240, 0.161504,
		-0.465012, -0.820658, 0.332089,
		32.968964, 37.385212, 42.353252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951069, 38.148014, 41.967987>,  <33.294472, 37.959671, 42.120789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951069, 38.148014, 41.967987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145103, 38.390770, 41.716152>,  <34.261524, 38.536423, 41.565052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145103, 38.390770, 41.716152>,  <33.951069, 38.148014, 41.967987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145103, 38.390770, 41.716152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, 0.735360, 0.676364,
		0.873450, -0.301548, 0.382301,
		0.485084, 0.606889, -0.629586,
		34.290630, 38.572838, 41.527275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556511, 38.449741, 42.419170>,  <33.951069, 38.148014, 41.967987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556511, 38.449741, 42.419170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466133, 38.709633, 42.128845>,  <34.411907, 38.865566, 41.954651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466133, 38.709633, 42.128845>,  <34.556511, 38.449741, 42.419170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466133, 38.709633, 42.128845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033811, 0.749864, 0.660727,
		0.973554, 0.124746, -0.191394,
		-0.225942, 0.649724, -0.725816,
		34.398350, 38.904549, 41.911102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986343, 39.092968, 42.517284>,  <34.556511, 38.449741, 42.419170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986343, 39.092968, 42.517284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704563, 39.216423, 42.261631>,  <34.535496, 39.290497, 42.108238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.704563, 39.216423, 42.261631>,  <34.986343, 39.092968, 42.517284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704563, 39.216423, 42.261631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281504, 0.705150, 0.650783,
		0.651542, 0.638364, -0.409860,
		-0.704449, 0.308635, -0.639137,
		34.493229, 39.309013, 42.069889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215343, 39.751087, 42.401192>,  <34.986343, 39.092968, 42.517284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215343, 39.751087, 42.401192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834221, 39.707310, 42.287930>,  <34.605545, 39.681042, 42.219971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.834221, 39.707310, 42.287930>,  <35.215343, 39.751087, 42.401192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834221, 39.707310, 42.287930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258170, 0.782818, 0.566166,
		0.159696, 0.612551, -0.774131,
		-0.952809, -0.109443, -0.283155,
		34.548378, 39.674477, 42.202984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966797, 40.357998, 42.279690>,  <35.215343, 39.751087, 42.401192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966797, 40.357998, 42.279690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640667, 40.136021, 42.345760>,  <34.444988, 40.002834, 42.385403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.640667, 40.136021, 42.345760>,  <34.966797, 40.357998, 42.279690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640667, 40.136021, 42.345760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312996, 0.662431, 0.680601,
		-0.487110, 0.503214, -0.713792,
		-0.815327, -0.554941, 0.165173,
		34.396069, 39.969540, 42.395313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419533, 40.858250, 42.150921>,  <34.966797, 40.357998, 42.279690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419533, 40.858250, 42.150921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 40.557098, 42.400352>,  <34.284794, 40.376408, 42.550011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335320, 40.557098, 42.400352>,  <34.419533, 40.858250, 42.150921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335320, 40.557098, 42.400352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205693, 0.657711, 0.724642,
		-0.955703, 0.024292, -0.293329,
		-0.210528, -0.752878, 0.623580,
		34.272160, 40.331234, 42.587425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802914, 41.099323, 42.435043>,  <34.419533, 40.858250, 42.150921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802914, 41.099323, 42.435043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948391, 40.823132, 42.685150>,  <34.035675, 40.657417, 42.835217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948391, 40.823132, 42.685150>,  <33.802914, 41.099323, 42.435043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948391, 40.823132, 42.685150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047472, 0.684103, 0.727839,
		-0.930309, -0.235026, 0.281581,
		0.363691, -0.690482, 0.625270,
		34.057499, 40.615986, 42.872730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480061, 41.256882, 43.044548>,  <33.802914, 41.099323, 42.435043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480061, 41.256882, 43.044548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778782, 41.016186, 43.157829>,  <33.958015, 40.871769, 43.225800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778782, 41.016186, 43.157829>,  <33.480061, 41.256882, 43.044548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778782, 41.016186, 43.157829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144623, 0.562588, 0.813989,
		-0.649133, -0.566929, 0.507166,
		0.746800, -0.601735, 0.283203,
		34.002823, 40.835667, 43.242790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371849, 41.051517, 43.761559>,  <33.480061, 41.256882, 43.044548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371849, 41.051517, 43.761559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767654, 41.029610, 43.708092>,  <34.005138, 41.016464, 43.676010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767654, 41.029610, 43.708092>,  <33.371849, 41.051517, 43.761559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767654, 41.029610, 43.708092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142559, 0.519510, 0.842488,
		0.023301, -0.852708, 0.521869,
		0.989512, -0.054767, -0.133667,
		34.064507, 41.013180, 43.667992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613064, 40.947788, 44.461231>,  <33.371849, 41.051517, 43.761559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613064, 40.947788, 44.461231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940327, 41.021778, 44.243458>,  <34.136684, 41.066170, 44.112793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940327, 41.021778, 44.243458>,  <33.613064, 40.947788, 44.461231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940327, 41.021778, 44.243458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463557, 0.348022, 0.814859,
		0.340181, -0.919061, 0.199003,
		0.818163, 0.184950, -0.544428,
		34.185772, 41.077271, 44.080128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236332, 40.569866, 44.779362>,  <33.613064, 40.947788, 44.461231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236332, 40.569866, 44.779362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360153, 40.892811, 44.578426>,  <34.434448, 41.086578, 44.457867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360153, 40.892811, 44.578426>,  <34.236332, 40.569866, 44.779362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360153, 40.892811, 44.578426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387039, 0.375559, 0.842114,
		0.868548, -0.455104, -0.196225,
		0.309556, 0.807363, -0.502335,
		34.453018, 41.135021, 44.427727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903023, 40.678665, 45.086067>,  <34.236332, 40.569866, 44.779362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903023, 40.678665, 45.086067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808525, 41.021908, 44.903709>,  <34.751827, 41.227856, 44.794296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808525, 41.021908, 44.903709>,  <34.903023, 40.678665, 45.086067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808525, 41.021908, 44.903709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365623, 0.513192, 0.776501,
		0.900283, 0.016760, -0.434983,
		-0.236245, 0.858110, -0.455890,
		34.737652, 41.279343, 44.766941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268787, 41.174332, 45.408577>,  <34.903023, 40.678665, 45.086067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268787, 41.174332, 45.408577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016415, 41.423107, 45.223053>,  <34.864990, 41.572372, 45.111740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016415, 41.423107, 45.223053>,  <35.268787, 41.174332, 45.408577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016415, 41.423107, 45.223053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176259, 0.697087, 0.694983,
		0.755555, 0.356734, -0.549434,
		-0.630927, 0.621941, -0.463811,
		34.827137, 41.609688, 45.083908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620674, 41.790775, 45.153088>,  <35.268787, 41.174332, 45.408577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620674, 41.790775, 45.153088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233086, 41.878750, 45.198193>,  <35.000530, 41.931534, 45.225258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233086, 41.878750, 45.198193>,  <35.620674, 41.790775, 45.153088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233086, 41.878750, 45.198193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211195, 0.499778, 0.840011,
		0.128388, 0.837766, -0.530721,
		-0.968975, 0.219933, 0.112766,
		34.942394, 41.944729, 45.232021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281528, 42.155079, 45.001255>,  <35.620674, 41.790775, 45.153088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281528, 42.155079, 45.001255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644268, 42.287376, 45.105743>,  <36.861912, 42.366756, 45.168438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644268, 42.287376, 45.105743>,  <36.281528, 42.155079, 45.001255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644268, 42.287376, 45.105743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421223, -0.690321, -0.588242,
		-0.014232, 0.643477, -0.765333,
		0.906846, 0.330748, 0.261223,
		36.916321, 42.386600, 45.184109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573502, 42.372429, 44.361275>,  <36.281528, 42.155079, 45.001255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573502, 42.372429, 44.361275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849091, 42.300503, 44.642124>,  <37.014446, 42.257347, 44.810635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849091, 42.300503, 44.642124>,  <36.573502, 42.372429, 44.361275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849091, 42.300503, 44.642124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583662, -0.436690, -0.684573,
		0.429709, 0.881457, -0.195915,
		0.688976, -0.179819, 0.702123,
		37.055782, 42.246555, 44.852760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131557, 42.534897, 44.024570>,  <36.573502, 42.372429, 44.361275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131557, 42.534897, 44.024570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287113, 42.331802, 44.332069>,  <37.380447, 42.209946, 44.516567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.287113, 42.331802, 44.332069>,  <37.131557, 42.534897, 44.024570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287113, 42.331802, 44.332069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689909, -0.392509, -0.608245,
		0.610568, 0.766903, 0.197651,
		0.388885, -0.507736, 0.768747,
		37.403778, 42.179482, 44.562695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878918, 42.683842, 43.972412>,  <37.131557, 42.534897, 44.024570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878918, 42.683842, 43.972412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847946, 42.348969, 44.188976>,  <37.829365, 42.148045, 44.318916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847946, 42.348969, 44.188976>,  <37.878918, 42.683842, 43.972412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847946, 42.348969, 44.188976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808564, -0.370431, -0.457170,
		0.583292, 0.402368, 0.705600,
		-0.077426, -0.837186, 0.541410,
		37.824718, 42.097813, 44.351398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565144, 42.356304, 44.080463>,  <37.878918, 42.683842, 43.972412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565144, 42.356304, 44.080463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311428, 42.054558, 44.148136>,  <38.159199, 41.873512, 44.188740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311428, 42.054558, 44.148136>,  <38.565144, 42.356304, 44.080463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311428, 42.054558, 44.148136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523591, -0.580170, -0.623904,
		0.568803, -0.307151, 0.762969,
		-0.634284, -0.754362, 0.169181,
		38.121143, 41.828251, 44.198891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869534, 41.772518, 43.798500>,  <38.565144, 42.356304, 44.080463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869534, 41.772518, 43.798500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.530315, 41.580116, 43.887455>,  <38.326786, 41.464676, 43.940830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.530315, 41.580116, 43.887455>,  <38.869534, 41.772518, 43.798500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530315, 41.580116, 43.887455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255427, -0.738714, -0.623746,
		0.464309, -0.472158, 0.749322,
		-0.848041, -0.481008, 0.222390,
		38.275902, 41.435814, 43.954170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069664, 41.087112, 44.066692>,  <38.869534, 41.772518, 43.798500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069664, 41.087112, 44.066692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711571, 41.080120, 43.888596>,  <38.496716, 41.075924, 43.781738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.711571, 41.080120, 43.888596>,  <39.069664, 41.087112, 44.066692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711571, 41.080120, 43.888596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374167, -0.572106, -0.729859,
		-0.241968, -0.819994, 0.518712,
		-0.895238, -0.017483, -0.445246,
		38.443001, 41.074875, 43.755020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965034, 40.433178, 43.793530>,  <39.069664, 41.087112, 44.066692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965034, 40.433178, 43.793530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717331, 40.670425, 43.587723>,  <38.568707, 40.812775, 43.464241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717331, 40.670425, 43.587723>,  <38.965034, 40.433178, 43.793530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717331, 40.670425, 43.587723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222942, -0.495486, -0.839518,
		-0.752869, -0.634588, 0.174604,
		-0.619262, 0.593120, -0.514512,
		38.531551, 40.848362, 43.433369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749023, 39.973751, 43.364998>,  <38.965034, 40.433178, 43.793530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749023, 39.973751, 43.364998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610497, 40.304256, 43.187302>,  <38.527378, 40.502560, 43.080685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610497, 40.304256, 43.187302>,  <38.749023, 39.973751, 43.364998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610497, 40.304256, 43.187302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054226, -0.490388, -0.869816,
		-0.936548, -0.277146, 0.214636,
		-0.346321, 0.826262, -0.444243,
		38.506599, 40.552135, 43.054028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086342, 39.797676, 43.004189>,  <38.749023, 39.973751, 43.364998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086342, 39.797676, 43.004189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245857, 40.110676, 42.812916>,  <38.341568, 40.298477, 42.698154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245857, 40.110676, 42.812916>,  <38.086342, 39.797676, 43.004189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245857, 40.110676, 42.812916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083465, -0.488302, -0.868674,
		-0.913235, 0.386332, -0.129419,
		0.398792, 0.782502, -0.478180,
		38.365494, 40.345425, 42.669460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711700, 39.862988, 42.481247>,  <38.086342, 39.797676, 43.004189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711700, 39.862988, 42.481247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045002, 40.057758, 42.376488>,  <38.244984, 40.174622, 42.313633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045002, 40.057758, 42.376488>,  <37.711700, 39.862988, 42.481247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045002, 40.057758, 42.376488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098403, -0.335516, -0.936881,
		-0.544068, 0.806428, -0.231653,
		0.833251, 0.486932, -0.261898,
		38.294979, 40.203838, 42.297916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592831, 40.103333, 41.849594>,  <37.711700, 39.862988, 42.481247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592831, 40.103333, 41.849594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990902, 40.128838, 41.879398>,  <38.229744, 40.144142, 41.897282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.990902, 40.128838, 41.879398>,  <37.592831, 40.103333, 41.849594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990902, 40.128838, 41.879398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092999, -0.372343, -0.923424,
		-0.031139, 0.925902, -0.376478,
		0.995179, 0.063766, 0.074513,
		38.289455, 40.147968, 41.901752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868031, 40.430817, 41.282997>,  <37.592831, 40.103333, 41.849594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868031, 40.430817, 41.282997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165894, 40.204239, 41.424206>,  <38.344612, 40.068291, 41.508930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165894, 40.204239, 41.424206>,  <37.868031, 40.430817, 41.282997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165894, 40.204239, 41.424206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125068, -0.401119, -0.907448,
		0.655621, 0.719891, -0.227853,
		0.744660, -0.566445, 0.353017,
		38.389290, 40.034306, 41.530109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288960, 40.539394, 40.799999>,  <37.868031, 40.430817, 41.282997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288960, 40.539394, 40.799999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422890, 40.207611, 40.978840>,  <38.503246, 40.008541, 41.086143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422890, 40.207611, 40.978840>,  <38.288960, 40.539394, 40.799999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422890, 40.207611, 40.978840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045512, -0.488167, -0.871562,
		0.941181, 0.271472, -0.201201,
		0.334824, -0.829455, 0.447098,
		38.523338, 39.958775, 41.112968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.104681, 34.087727, 44.003712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778193, 34.317101, 43.975555>,  <25.582300, 34.454723, 43.958664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778193, 34.317101, 43.975555>,  <26.104681, 34.087727, 44.003712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778193, 34.317101, 43.975555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038697, -0.175821, -0.983661,
		-0.576442, -0.800161, 0.165699,
		-0.816221, 0.573436, -0.070387,
		25.533325, 34.489132, 43.954441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554750, 33.708370, 43.618507>,  <26.104681, 34.087727, 44.003712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554750, 33.708370, 43.618507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487614, 34.102478, 43.605457>,  <25.447332, 34.338943, 43.597626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.487614, 34.102478, 43.605457>,  <25.554750, 33.708370, 43.618507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487614, 34.102478, 43.605457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059989, -0.043240, -0.997262,
		-0.983987, -0.165425, 0.066364,
		-0.167841, 0.985274, -0.032624,
		25.437262, 34.398060, 43.595669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918812, 33.822166, 43.099930>,  <25.554750, 33.708370, 43.618507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918812, 33.822166, 43.099930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.108307, 34.174095, 43.115372>,  <25.222004, 34.385250, 43.124638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.108307, 34.174095, 43.115372>,  <24.918812, 33.822166, 43.099930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.108307, 34.174095, 43.115372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092789, 0.093460, -0.991290,
		-0.875763, 0.466031, 0.125913,
		0.473740, 0.879818, 0.038606,
		25.250429, 34.438042, 43.126953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508032, 34.238750, 42.789051>,  <24.918812, 33.822166, 43.099930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508032, 34.238750, 42.789051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.860722, 34.427166, 42.778603>,  <25.072336, 34.540215, 42.772335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.860722, 34.427166, 42.778603>,  <24.508032, 34.238750, 42.789051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860722, 34.427166, 42.778603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093036, 0.119342, -0.988485,
		-0.462500, 0.874001, 0.149051,
		0.881725, 0.471041, -0.026118,
		25.125238, 34.568478, 42.770767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456068, 34.844925, 42.250652>,  <24.508032, 34.238750, 42.789051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456068, 34.844925, 42.250652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.852596, 34.804234, 42.283955>,  <25.090513, 34.779819, 42.303936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.852596, 34.804234, 42.283955>,  <24.456068, 34.844925, 42.250652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852596, 34.804234, 42.283955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104275, 0.222859, -0.969258,
		0.080047, 0.969528, 0.231533,
		0.991322, -0.101729, 0.083258,
		25.149992, 34.773716, 42.308933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695923, 35.445591, 41.860672>,  <24.456068, 34.844925, 42.250652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695923, 35.445591, 41.860672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.998394, 35.184891, 41.884041>,  <25.179876, 35.028469, 41.898064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.998394, 35.184891, 41.884041>,  <24.695923, 35.445591, 41.860672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998394, 35.184891, 41.884041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146431, 0.081517, -0.985856,
		0.637773, 0.754037, 0.157078,
		0.756177, -0.651754, 0.058425,
		25.225246, 34.989365, 41.901569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236666, 35.711460, 41.492550>,  <24.695923, 35.445591, 41.860672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236666, 35.711460, 41.492550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.317808, 35.320557, 41.517250>,  <25.366493, 35.086014, 41.532070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.317808, 35.320557, 41.517250>,  <25.236666, 35.711460, 41.492550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.317808, 35.320557, 41.517250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404533, 0.026211, -0.914148,
		0.891741, 0.210422, 0.400650,
		0.202858, -0.977259, 0.061749,
		25.378666, 35.027378, 41.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922794, 35.697941, 41.222534>,  <25.236666, 35.711460, 41.492550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922794, 35.697941, 41.222534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755915, 35.335003, 41.201878>,  <25.655787, 35.117241, 41.189484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.755915, 35.335003, 41.201878>,  <25.922794, 35.697941, 41.222534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755915, 35.335003, 41.201878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250600, -0.060234, -0.966215,
		0.873581, -0.416045, 0.252510,
		-0.417199, -0.907347, -0.051641,
		25.630754, 35.062798, 41.186386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363499, 35.273777, 40.835133>,  <25.922794, 35.697941, 41.222534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363499, 35.273777, 40.835133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030680, 35.056194, 40.791660>,  <25.830988, 34.925644, 40.765575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030680, 35.056194, 40.791660>,  <26.363499, 35.273777, 40.835133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030680, 35.056194, 40.791660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237081, -0.171587, -0.956217,
		0.501489, -0.821384, 0.271730,
		-0.832047, -0.543954, -0.108685,
		25.781065, 34.893009, 40.759056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535532, 34.571407, 40.681393>,  <26.363499, 35.273777, 40.835133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535532, 34.571407, 40.681393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.164444, 34.640381, 40.548969>,  <25.941792, 34.681767, 40.469517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.164444, 34.640381, 40.548969>,  <26.535532, 34.571407, 40.681393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164444, 34.640381, 40.548969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263966, -0.324025, -0.908477,
		-0.263922, -0.930202, 0.255088,
		-0.927722, 0.172433, -0.331059,
		25.886127, 34.692112, 40.449650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190811, 33.894325, 40.255886>,  <26.535532, 34.571407, 40.681393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190811, 33.894325, 40.255886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014910, 34.237251, 40.148830>,  <25.909369, 34.443005, 40.084599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014910, 34.237251, 40.148830>,  <26.190811, 33.894325, 40.255886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014910, 34.237251, 40.148830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058296, -0.270125, -0.961059,
		-0.896224, -0.438232, 0.068811,
		-0.439754, 0.857313, -0.267640,
		25.882984, 34.494446, 40.068539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139927, 33.850143, 39.581749>,  <26.190811, 33.894325, 40.255886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139927, 33.850143, 39.581749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.981491, 34.216747, 39.604130>,  <25.886429, 34.436710, 39.617558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.981491, 34.216747, 39.604130>,  <26.139927, 33.850143, 39.581749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981491, 34.216747, 39.604130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101584, 0.016824, -0.994685,
		-0.912575, -0.399669, 0.086439,
		-0.396090, 0.916505, 0.055953,
		25.862663, 34.491699, 39.620914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654984, 33.829643, 39.063797>,  <26.139927, 33.850143, 39.581749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654984, 33.829643, 39.063797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.757866, 34.210640, 39.129044>,  <25.819595, 34.439236, 39.168194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.757866, 34.210640, 39.129044>,  <25.654984, 33.829643, 39.063797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757866, 34.210640, 39.129044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041147, 0.157851, -0.986605,
		-0.965480, 0.260475, 0.001409,
		0.257208, 0.952489, 0.163120,
		25.835028, 34.496387, 39.177979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119478, 34.322807, 38.756111>,  <25.654984, 33.829643, 39.063797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119478, 34.322807, 38.756111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.450777, 34.540665, 38.808830>,  <25.649555, 34.671379, 38.840462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.450777, 34.540665, 38.808830>,  <25.119478, 34.322807, 38.756111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450777, 34.540665, 38.808830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064132, 0.325778, -0.943269,
		-0.556684, 0.772806, 0.304753,
		0.828245, 0.544647, 0.131794,
		25.699251, 34.704060, 38.848370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075037, 34.786652, 38.242786>,  <25.119478, 34.322807, 38.756111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075037, 34.786652, 38.242786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.457384, 34.833958, 38.350365>,  <25.686792, 34.862339, 38.414909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.457384, 34.833958, 38.350365>,  <25.075037, 34.786652, 38.242786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457384, 34.833958, 38.350365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187862, 0.457781, -0.868991,
		-0.225885, 0.881165, 0.415361,
		0.955868, 0.118261, 0.268943,
		25.744144, 34.869434, 38.431049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.318062, 35.465595, 38.014351>,  <25.075037, 34.786652, 38.242786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.318062, 35.465595, 38.014351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633677, 35.221844, 38.045540>,  <25.823046, 35.075592, 38.064255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633677, 35.221844, 38.045540>,  <25.318062, 35.465595, 38.014351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633677, 35.221844, 38.045540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263866, 0.221533, -0.938775,
		0.554793, 0.761303, 0.335592,
		0.789037, -0.609377, 0.077977,
		25.870388, 35.039032, 38.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910378, 35.858185, 37.963974>,  <25.318062, 35.465595, 38.014351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910378, 35.858185, 37.963974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.976803, 35.483147, 37.841766>,  <26.016657, 35.258125, 37.768440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.976803, 35.483147, 37.841766>,  <25.910378, 35.858185, 37.963974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976803, 35.483147, 37.841766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503770, 0.347003, -0.791078,
		0.847726, -0.022544, 0.529955,
		0.166062, -0.937593, -0.305521,
		26.026621, 35.201870, 37.750111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476851, 36.003197, 37.584057>,  <25.910378, 35.858185, 37.963974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476851, 36.003197, 37.584057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397161, 35.622944, 37.488884>,  <26.349348, 35.394794, 37.431782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.397161, 35.622944, 37.488884>,  <26.476851, 36.003197, 37.584057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397161, 35.622944, 37.488884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597005, 0.074803, -0.798742,
		0.777107, -0.301176, 0.552628,
		-0.199224, -0.950630, -0.237934,
		26.337395, 35.337753, 37.417503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090733, 35.731342, 37.549374>,  <26.476851, 36.003197, 37.584057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090733, 35.731342, 37.549374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854391, 35.487629, 37.337837>,  <26.712585, 35.341400, 37.210915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854391, 35.487629, 37.337837>,  <27.090733, 35.731342, 37.549374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854391, 35.487629, 37.337837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647496, 0.032925, -0.761357,
		0.481291, -0.792272, 0.375052,
		-0.590853, -0.609279, -0.528839,
		26.677135, 35.304844, 37.179184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580244, 36.239311, 37.815701>,  <27.090733, 35.731342, 37.549374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580244, 36.239311, 37.815701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966547, 36.188896, 37.724991>,  <28.198330, 36.158646, 37.670567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966547, 36.188896, 37.724991>,  <27.580244, 36.239311, 37.815701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966547, 36.188896, 37.724991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055789, -0.752733, 0.655958,
		-0.253374, -0.646148, -0.719926,
		0.965758, -0.126038, -0.226771,
		28.256275, 36.151085, 37.656960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708591, 35.470165, 37.795307>,  <27.580244, 36.239311, 37.815701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708591, 35.470165, 37.795307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048576, 35.670135, 37.861813>,  <28.252567, 35.790115, 37.901714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048576, 35.670135, 37.861813>,  <27.708591, 35.470165, 37.795307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048576, 35.670135, 37.861813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206848, -0.606894, 0.767394,
		0.484540, -0.617864, -0.619245,
		0.849962, 0.499922, 0.166261,
		28.303564, 35.820114, 37.911690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245174, 34.969845, 37.673260>,  <27.708591, 35.470165, 37.795307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245174, 34.969845, 37.673260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378370, 35.259048, 37.915379>,  <28.458288, 35.432571, 38.060650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.378370, 35.259048, 37.915379>,  <28.245174, 34.969845, 37.673260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378370, 35.259048, 37.915379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221384, -0.683931, 0.695145,
		0.916574, -0.097472, -0.387803,
		0.332988, 0.723005, 0.605295,
		28.478266, 35.475948, 38.096966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763346, 34.681171, 37.990864>,  <28.245174, 34.969845, 37.673260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763346, 34.681171, 37.990864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683910, 34.987484, 38.235535>,  <28.636250, 35.171272, 38.382336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.683910, 34.987484, 38.235535>,  <28.763346, 34.681171, 37.990864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683910, 34.987484, 38.235535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231288, -0.569860, 0.788521,
		0.952402, 0.298063, -0.063949,
		-0.198587, 0.765780, 0.611674,
		28.624334, 35.217216, 38.419037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426853, 34.858303, 38.434044>,  <28.763346, 34.681171, 37.990864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426853, 34.858303, 38.434044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104149, 34.985054, 38.633533>,  <28.910526, 35.061104, 38.753227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104149, 34.985054, 38.633533>,  <29.426853, 34.858303, 38.434044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104149, 34.985054, 38.633533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314515, -0.484240, 0.816451,
		0.500218, 0.815537, 0.291002,
		-0.806760, 0.316878, 0.498724,
		28.862122, 35.080116, 38.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659313, 35.072830, 39.167171>,  <29.426853, 34.858303, 38.434044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659313, 35.072830, 39.167171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266191, 35.005898, 39.198391>,  <29.030317, 34.965736, 39.217125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266191, 35.005898, 39.198391>,  <29.659313, 35.072830, 39.167171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266191, 35.005898, 39.198391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145947, -0.445092, 0.883511,
		-0.113101, 0.879711, 0.461861,
		-0.982806, -0.167333, 0.078051,
		28.971350, 34.955696, 39.221806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463837, 35.352451, 39.795837>,  <29.659313, 35.072830, 39.167171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463837, 35.352451, 39.795837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162119, 35.106689, 39.703278>,  <28.981089, 34.959232, 39.647743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162119, 35.106689, 39.703278>,  <29.463837, 35.352451, 39.795837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162119, 35.106689, 39.703278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020944, -0.374793, 0.926872,
		-0.656200, 0.694290, 0.295573,
		-0.754297, -0.614404, -0.231397,
		28.935829, 34.922367, 39.633858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906775, 35.480167, 40.310165>,  <29.463837, 35.352451, 39.795837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906775, 35.480167, 40.310165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871321, 35.112995, 40.155476>,  <28.850048, 34.892693, 40.062664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.871321, 35.112995, 40.155476>,  <28.906775, 35.480167, 40.310165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871321, 35.112995, 40.155476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085582, -0.379795, 0.921103,
		-0.992380, 0.114740, -0.044894,
		-0.088636, -0.917927, -0.386721,
		28.844730, 34.837616, 40.039459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298418, 35.173958, 40.670456>,  <28.906775, 35.480167, 40.310165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298418, 35.173958, 40.670456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518646, 34.864395, 40.545273>,  <28.650784, 34.678658, 40.470161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.518646, 34.864395, 40.545273>,  <28.298418, 35.173958, 40.670456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518646, 34.864395, 40.545273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082768, -0.423655, 0.902034,
		-0.830675, -0.470732, -0.297307,
		0.550572, -0.773904, -0.312958,
		28.683817, 34.632225, 40.451385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028053, 34.715775, 41.060642>,  <28.298418, 35.173958, 40.670456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028053, 34.715775, 41.060642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.377615, 34.563801, 40.939354>,  <28.587353, 34.472618, 40.866581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.377615, 34.563801, 40.939354>,  <28.028053, 34.715775, 41.060642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377615, 34.563801, 40.939354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014027, -0.643235, 0.765541,
		-0.485897, -0.664755, -0.567454,
		0.873904, -0.379934, -0.303221,
		28.639786, 34.449821, 40.848389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960220, 33.990879, 41.031090>,  <28.028053, 34.715775, 41.060642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960220, 33.990879, 41.031090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352156, 34.056335, 41.076942>,  <28.587317, 34.095608, 41.104454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352156, 34.056335, 41.076942>,  <27.960220, 33.990879, 41.031090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352156, 34.056335, 41.076942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004754, -0.554468, 0.832192,
		0.199737, -0.815958, -0.542510,
		0.979838, 0.163640, 0.114627,
		28.646107, 34.105427, 41.111332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267834, 33.280720, 41.142639>,  <27.960220, 33.990879, 41.031090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267834, 33.280720, 41.142639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524122, 33.559235, 41.272045>,  <28.677896, 33.726341, 41.349689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524122, 33.559235, 41.272045>,  <28.267834, 33.280720, 41.142639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524122, 33.559235, 41.272045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094308, -0.489552, 0.866859,
		0.761958, -0.524907, -0.379333,
		0.640724, 0.696284, 0.323515,
		28.716339, 33.768120, 41.369099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823250, 32.875168, 41.374821>,  <28.267834, 33.280720, 41.142639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823250, 32.875168, 41.374821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849922, 33.235924, 41.545536>,  <28.865925, 33.452377, 41.647964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849922, 33.235924, 41.545536>,  <28.823250, 32.875168, 41.374821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849922, 33.235924, 41.545536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021725, -0.428952, 0.903066,
		0.997538, -0.050945, -0.048197,
		0.066681, 0.901890, 0.426789,
		28.869926, 33.506493, 41.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430130, 32.861988, 41.846706>,  <28.823250, 32.875168, 41.374821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430130, 32.861988, 41.846706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224684, 33.182564, 41.969280>,  <29.101416, 33.374908, 42.042824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224684, 33.182564, 41.969280>,  <29.430130, 32.861988, 41.846706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224684, 33.182564, 41.969280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053809, -0.326348, 0.943717,
		0.856331, 0.501196, 0.124493,
		-0.513616, 0.801436, 0.306431,
		29.070599, 33.422993, 42.061211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749041, 32.983505, 42.538345>,  <29.430130, 32.861988, 41.846706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749041, 32.983505, 42.538345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393023, 33.164989, 42.520607>,  <29.179411, 33.273880, 42.509964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.393023, 33.164989, 42.520607>,  <29.749041, 32.983505, 42.538345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393023, 33.164989, 42.520607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196739, -0.294532, 0.935171,
		0.411235, 0.841069, 0.351409,
		-0.890045, 0.453711, -0.044349,
		29.126009, 33.301102, 42.507301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510460, 33.183136, 43.170918>,  <29.749041, 32.983505, 42.538345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510460, 33.183136, 43.170918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140858, 33.210827, 43.020496>,  <28.919096, 33.227444, 42.930244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140858, 33.210827, 43.020496>,  <29.510460, 33.183136, 43.170918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140858, 33.210827, 43.020496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380352, -0.267452, 0.885326,
		-0.039286, 0.961081, 0.273459,
		-0.924007, 0.069229, -0.376057,
		28.863655, 33.231594, 42.907681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123592, 33.731903, 43.489841>,  <29.510460, 33.183136, 43.170918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123592, 33.731903, 43.489841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853508, 33.483326, 43.330894>,  <28.691458, 33.334179, 43.235527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853508, 33.483326, 43.330894>,  <29.123592, 33.731903, 43.489841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853508, 33.483326, 43.330894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443660, -0.088227, 0.891842,
		-0.589287, 0.778476, -0.216137,
		-0.675209, -0.621442, -0.397370,
		28.650946, 33.296894, 43.211685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523087, 33.905457, 43.930122>,  <29.123592, 33.731903, 43.489841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523087, 33.905457, 43.930122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416178, 33.581413, 43.721397>,  <28.352034, 33.386986, 43.596161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416178, 33.581413, 43.721397>,  <28.523087, 33.905457, 43.930122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416178, 33.581413, 43.721397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600379, -0.283571, 0.747752,
		-0.753731, 0.513138, -0.410583,
		-0.267271, -0.810109, -0.521814,
		28.335997, 33.338379, 43.564854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845217, 33.897728, 43.857021>,  <28.523087, 33.905457, 43.930122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845217, 33.897728, 43.857021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918171, 33.509636, 43.793297>,  <27.961943, 33.276779, 43.755062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.918171, 33.509636, 43.793297>,  <27.845217, 33.897728, 43.857021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918171, 33.509636, 43.793297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653353, -0.240676, 0.717778,
		-0.734756, -0.026825, -0.677801,
		0.182385, -0.970235, -0.159312,
		27.972887, 33.218567, 43.745502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206791, 33.442760, 43.975372>,  <27.845217, 33.897728, 43.857021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206791, 33.442760, 43.975372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496943, 33.172306, 44.027012>,  <27.671034, 33.010033, 44.057995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496943, 33.172306, 44.027012>,  <27.206791, 33.442760, 43.975372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496943, 33.172306, 44.027012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497970, -0.385956, 0.776572,
		-0.475241, -0.627596, -0.616659,
		0.725377, -0.676136, 0.129102,
		27.714556, 32.969463, 44.065742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909607, 32.826305, 43.988377>,  <27.206791, 33.442760, 43.975372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909607, 32.826305, 43.988377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254347, 32.769192, 44.183037>,  <27.461191, 32.734924, 44.299831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254347, 32.769192, 44.183037>,  <26.909607, 32.826305, 43.988377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254347, 32.769192, 44.183037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500618, -0.393175, 0.771230,
		0.081221, -0.908310, -0.410336,
		0.861850, -0.142781, 0.486650,
		27.512901, 32.726357, 44.329033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712049, 32.323009, 44.427773>,  <26.909607, 32.826305, 43.988377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712049, 32.323009, 44.427773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077606, 32.438946, 44.541470>,  <27.296940, 32.508507, 44.609688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.077606, 32.438946, 44.541470>,  <26.712049, 32.323009, 44.427773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077606, 32.438946, 44.541470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187598, -0.319403, 0.928864,
		0.360011, -0.902205, -0.237526,
		0.913892, 0.289842, 0.284240,
		27.351774, 32.525898, 44.626743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051771, 31.728876, 44.720032>,  <26.712049, 32.323009, 44.427773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051771, 31.728876, 44.720032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220989, 32.058434, 44.870888>,  <27.322519, 32.256168, 44.961399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220989, 32.058434, 44.870888>,  <27.051771, 31.728876, 44.720032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220989, 32.058434, 44.870888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199574, -0.321274, 0.925718,
		0.883857, -0.466887, 0.028515,
		0.423044, 0.823893, 0.377138,
		27.347902, 32.305603, 44.984028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.460407, 42.256748, 46.127312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.098709, 42.103691, 46.203125>,  <41.881691, 42.011856, 46.248611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.098709, 42.103691, 46.203125>,  <42.460407, 42.256748, 46.127312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098709, 42.103691, 46.203125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172190, 0.732925, 0.658158,
		-0.390751, 0.562502, -0.728632,
		-0.904248, -0.382639, 0.189534,
		41.827435, 41.988899, 46.259987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955223, 42.790764, 46.074574>,  <42.460407, 42.256748, 46.127312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955223, 42.790764, 46.074574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.802811, 42.491520, 46.291885>,  <41.711365, 42.311974, 46.422272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.802811, 42.491520, 46.291885>,  <41.955223, 42.790764, 46.074574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802811, 42.491520, 46.291885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234449, 0.646578, 0.725927,
		-0.894344, 0.149227, -0.421758,
		-0.381027, -0.748110, 0.543277,
		41.688503, 42.267086, 46.454868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273582, 42.945938, 46.198574>,  <41.955223, 42.790764, 46.074574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273582, 42.945938, 46.198574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340439, 42.691353, 46.499767>,  <41.380550, 42.538601, 46.680481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.340439, 42.691353, 46.499767>,  <41.273582, 42.945938, 46.198574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340439, 42.691353, 46.499767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410453, 0.649479, 0.640083,
		-0.896434, -0.416045, -0.152685,
		0.167138, -0.636462, 0.752981,
		41.390579, 42.500416, 46.725662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751228, 43.213268, 46.644035>,  <41.273582, 42.945938, 46.198574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751228, 43.213268, 46.644035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.928669, 42.940033, 46.876106>,  <41.035133, 42.776093, 47.015347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.928669, 42.940033, 46.876106>,  <40.751228, 43.213268, 46.644035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928669, 42.940033, 46.876106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520758, 0.330396, 0.787178,
		-0.729401, -0.651327, -0.209159,
		0.443605, -0.683090, 0.580175,
		41.061752, 42.735107, 47.050159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271137, 42.860714, 46.977116>,  <40.751228, 43.213268, 46.644035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271137, 42.860714, 46.977116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593216, 42.835953, 47.213024>,  <40.786465, 42.821095, 47.354568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593216, 42.835953, 47.213024>,  <40.271137, 42.860714, 46.977116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593216, 42.835953, 47.213024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521247, 0.400356, 0.753669,
		-0.282771, -0.914266, 0.290099,
		0.805197, -0.061903, 0.589768,
		40.834774, 42.817383, 47.389954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096924, 42.480373, 47.671124>,  <40.271137, 42.860714, 46.977116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096924, 42.480373, 47.671124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.424351, 42.697632, 47.745884>,  <40.620808, 42.827988, 47.790741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.424351, 42.697632, 47.745884>,  <40.096924, 42.480373, 47.671124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424351, 42.697632, 47.745884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373488, 0.256073, 0.891590,
		0.436406, -0.799635, 0.412473,
		0.818570, 0.543149, 0.186902,
		40.669922, 42.860577, 47.801956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017803, 42.552490, 48.313297>,  <40.096924, 42.480373, 47.671124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017803, 42.552490, 48.313297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321007, 42.810638, 48.275517>,  <40.502930, 42.965527, 48.252850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321007, 42.810638, 48.275517>,  <40.017803, 42.552490, 48.313297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321007, 42.810638, 48.275517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273949, 0.446424, 0.851855,
		0.591929, -0.619837, 0.515191,
		0.758005, 0.645374, -0.094447,
		40.548409, 43.004250, 48.247181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466682, 42.467068, 48.925800>,  <40.017803, 42.552490, 48.313297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466682, 42.467068, 48.925800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497780, 42.820389, 48.740879>,  <40.516438, 43.032383, 48.629925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.497780, 42.820389, 48.740879>,  <40.466682, 42.467068, 48.925800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497780, 42.820389, 48.740879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353468, 0.458008, 0.815652,
		0.932210, 0.099996, 0.347829,
		0.077746, 0.883306, -0.462305,
		40.521103, 43.085381, 48.602188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660320, 42.869350, 49.447033>,  <40.466682, 42.467068, 48.925800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660320, 42.869350, 49.447033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511482, 43.132561, 49.185177>,  <40.422180, 43.290485, 49.028065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511482, 43.132561, 49.185177>,  <40.660320, 42.869350, 49.447033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511482, 43.132561, 49.185177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229041, 0.618380, 0.751762,
		0.899492, 0.429667, -0.079382,
		-0.372095, 0.658022, -0.654639,
		40.399853, 43.329967, 48.988785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760288, 43.462189, 49.703808>,  <40.660320, 42.869350, 49.447033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760288, 43.462189, 49.703808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482029, 43.555553, 49.432049>,  <40.315071, 43.611572, 49.268993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.482029, 43.555553, 49.432049>,  <40.760288, 43.462189, 49.703808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482029, 43.555553, 49.432049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484323, 0.546100, 0.683525,
		0.530566, 0.804545, -0.266847,
		-0.695652, 0.233415, -0.679401,
		40.273335, 43.625576, 49.228230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621510, 44.101818, 49.887016>,  <40.760288, 43.462189, 49.703808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621510, 44.101818, 49.887016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309906, 43.994045, 49.660549>,  <40.122944, 43.929382, 49.524670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309906, 43.994045, 49.660549>,  <40.621510, 44.101818, 49.887016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309906, 43.994045, 49.660549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627008, 0.338067, 0.701834,
		0.002308, 0.901730, -0.432294,
		-0.779009, -0.269432, -0.566172,
		40.076202, 43.913216, 49.490696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094872, 44.691238, 49.997887>,  <40.621510, 44.101818, 49.887016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094872, 44.691238, 49.997887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.889587, 44.384705, 49.843304>,  <39.766418, 44.200787, 49.750553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.889587, 44.384705, 49.843304>,  <40.094872, 44.691238, 49.997887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889587, 44.384705, 49.843304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740548, 0.167782, 0.650721,
		-0.433827, 0.620149, -0.653613,
		-0.513208, -0.766332, -0.386462,
		39.735626, 44.154804, 49.727364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542648, 44.870396, 49.646893>,  <40.094872, 44.691238, 49.997887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542648, 44.870396, 49.646893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474075, 44.518288, 49.823864>,  <39.432930, 44.307022, 49.930046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474075, 44.518288, 49.823864>,  <39.542648, 44.870396, 49.646893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474075, 44.518288, 49.823864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491034, 0.465666, 0.736234,
		-0.854106, -0.091032, -0.512071,
		-0.171433, -0.880266, 0.442428,
		39.422646, 44.254208, 49.956593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807404, 44.792793, 49.673702>,  <39.542648, 44.870396, 49.646893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807404, 44.792793, 49.673702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025131, 44.604324, 49.951324>,  <39.155769, 44.491241, 50.117897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.025131, 44.604324, 49.951324>,  <38.807404, 44.792793, 49.673702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025131, 44.604324, 49.951324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402429, 0.579275, 0.708867,
		-0.736048, -0.665157, 0.125695,
		0.544320, -0.471177, 0.694053,
		39.188427, 44.462971, 50.159542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322414, 45.390148, 49.593372>,  <38.807404, 44.792793, 49.673702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322414, 45.390148, 49.593372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926666, 45.446762, 49.606777>,  <37.689217, 45.480728, 49.614822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926666, 45.446762, 49.606777>,  <38.322414, 45.390148, 49.593372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926666, 45.446762, 49.606777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122133, -0.683295, -0.719856,
		-0.078980, -0.716294, 0.693314,
		-0.989366, 0.141531, 0.033517,
		37.629856, 45.489220, 49.616833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952625, 44.713005, 49.671722>,  <38.322414, 45.390148, 49.593372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952625, 44.713005, 49.671722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.716152, 44.999153, 49.522732>,  <37.574268, 45.170841, 49.433334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.716152, 44.999153, 49.522732>,  <37.952625, 44.713005, 49.671722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716152, 44.999153, 49.522732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330821, -0.636269, -0.696936,
		-0.735569, -0.288791, 0.612812,
		-0.591182, 0.715375, -0.372482,
		37.538799, 45.213764, 49.410988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320461, 44.356815, 49.407097>,  <37.952625, 44.713005, 49.671722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320461, 44.356815, 49.407097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341270, 44.709351, 49.219254>,  <37.353756, 44.920872, 49.106548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341270, 44.709351, 49.219254>,  <37.320461, 44.356815, 49.407097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341270, 44.709351, 49.219254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193627, -0.452424, -0.870529,
		-0.979695, 0.136215, 0.147116,
		0.052021, 0.881339, -0.469613,
		37.356876, 44.973751, 49.078369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734184, 44.396450, 49.021080>,  <37.320461, 44.356815, 49.407097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734184, 44.396450, 49.021080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004551, 44.641178, 48.856735>,  <37.166771, 44.788013, 48.758129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.004551, 44.641178, 48.856735>,  <36.734184, 44.396450, 49.021080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004551, 44.641178, 48.856735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216648, -0.367915, -0.904269,
		-0.704412, 0.700226, -0.116132,
		0.675919, 0.611818, -0.410867,
		37.207325, 44.824722, 48.733475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408199, 44.765018, 48.498138>,  <36.734184, 44.396450, 49.021080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408199, 44.765018, 48.498138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793148, 44.777702, 48.390194>,  <37.024117, 44.785313, 48.325428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793148, 44.777702, 48.390194>,  <36.408199, 44.765018, 48.498138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793148, 44.777702, 48.390194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248674, -0.297512, -0.921763,
		-0.109516, 0.954191, -0.278433,
		0.962376, 0.031709, -0.269865,
		37.081860, 44.787216, 48.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433155, 45.074436, 47.867813>,  <36.408199, 44.765018, 48.498138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433155, 45.074436, 47.867813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767292, 44.860325, 47.917908>,  <36.967773, 44.731857, 47.947964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.767292, 44.860325, 47.917908>,  <36.433155, 45.074436, 47.867813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767292, 44.860325, 47.917908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110768, -0.387035, -0.915388,
		0.538454, 0.750791, -0.382598,
		0.835343, -0.535274, 0.125236,
		37.017895, 44.699741, 47.955479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759132, 45.147362, 47.162613>,  <36.433155, 45.074436, 47.867813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759132, 45.147362, 47.162613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927517, 44.845894, 47.364513>,  <37.028549, 44.665012, 47.485653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927517, 44.845894, 47.364513>,  <36.759132, 45.147362, 47.162613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927517, 44.845894, 47.364513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131206, -0.500017, -0.856019,
		0.897538, 0.426579, -0.111604,
		0.420963, -0.753667, 0.504754,
		37.053806, 44.619793, 47.515938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258984, 44.951031, 46.722298>,  <36.759132, 45.147362, 47.162613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258984, 44.951031, 46.722298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230499, 44.629047, 46.957916>,  <37.213409, 44.435856, 47.099285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230499, 44.629047, 46.957916>,  <37.258984, 44.951031, 46.722298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230499, 44.629047, 46.957916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121491, -0.593145, -0.795876,
		0.990035, 0.014887, 0.140034,
		-0.071212, -0.804958, 0.589043,
		37.209137, 44.387562, 47.134628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682785, 44.421230, 46.390778>,  <37.258984, 44.951031, 46.722298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682785, 44.421230, 46.390778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444271, 44.216579, 46.638222>,  <37.301163, 44.093788, 46.786690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444271, 44.216579, 46.638222>,  <37.682785, 44.421230, 46.390778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444271, 44.216579, 46.638222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074045, -0.802361, -0.592228,
		0.799353, -0.307329, 0.516317,
		-0.596282, -0.511630, 0.618614,
		37.265388, 44.063091, 46.823807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062038, 43.765175, 46.571079>,  <37.682785, 44.421230, 46.390778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062038, 43.765175, 46.571079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.673157, 43.710571, 46.647163>,  <37.439827, 43.677807, 46.692814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.673157, 43.710571, 46.647163>,  <38.062038, 43.765175, 46.571079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673157, 43.710571, 46.647163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002425, -0.806507, -0.591219,
		0.234114, -0.575248, 0.783760,
		-0.972206, -0.136512, 0.190210,
		37.381496, 43.669617, 46.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922306, 42.977859, 46.669521>,  <38.062038, 43.765175, 46.571079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922306, 42.977859, 46.669521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577019, 43.157051, 46.576427>,  <37.369846, 43.264565, 46.520573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.577019, 43.157051, 46.576427>,  <37.922306, 42.977859, 46.669521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577019, 43.157051, 46.576427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173080, -0.695708, -0.697161,
		-0.474225, -0.561524, 0.678086,
		-0.863223, 0.447975, -0.232734,
		37.318050, 43.291443, 46.506607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430031, 42.422695, 46.641163>,  <37.922306, 42.977859, 46.669521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430031, 42.422695, 46.641163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279522, 42.728451, 46.431732>,  <37.189217, 42.911903, 46.306076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.279522, 42.728451, 46.431732>,  <37.430031, 42.422695, 46.641163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279522, 42.728451, 46.431732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325144, -0.638104, -0.697930,
		-0.867585, -0.092371, 0.488634,
		-0.376268, 0.764390, -0.523575,
		37.166641, 42.957767, 46.274658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661163, 42.179531, 46.405590>,  <37.430031, 42.422695, 46.641163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661163, 42.179531, 46.405590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759930, 42.485458, 46.167572>,  <36.819191, 42.669014, 46.024761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759930, 42.485458, 46.167572>,  <36.661163, 42.179531, 46.405590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759930, 42.485458, 46.167572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017943, -0.617565, -0.786316,
		-0.968870, 0.183478, -0.166211,
		0.246918, 0.764820, -0.595048,
		36.834003, 42.714905, 45.989059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211777, 42.299049, 45.803246>,  <36.661163, 42.179531, 46.405590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211777, 42.299049, 45.803246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561951, 42.457886, 45.693024>,  <36.772053, 42.553188, 45.626888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561951, 42.457886, 45.693024>,  <36.211777, 42.299049, 45.803246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561951, 42.457886, 45.693024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036064, -0.622189, -0.782036,
		-0.481992, 0.674683, -0.559006,
		0.875433, 0.397095, -0.275559,
		36.824581, 42.577015, 45.610355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646397, 42.610886, 45.467937>,  <36.211777, 42.299049, 45.803246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646397, 42.610886, 45.467937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283958, 42.448078, 45.514103>,  <35.066494, 42.350395, 45.541801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283958, 42.448078, 45.514103>,  <35.646397, 42.610886, 45.467937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283958, 42.448078, 45.514103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115341, 0.500127, 0.858236,
		-0.407037, 0.764336, -0.500111,
		-0.906100, -0.407017, 0.115411,
		35.012127, 42.325974, 45.548725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166431, 43.233589, 45.477970>,  <35.646397, 42.610886, 45.467937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166431, 43.233589, 45.477970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998814, 42.913860, 45.650242>,  <34.898243, 42.722023, 45.753605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998814, 42.913860, 45.650242>,  <35.166431, 43.233589, 45.477970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998814, 42.913860, 45.650242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076801, 0.441434, 0.894001,
		-0.904713, 0.407700, -0.123590,
		-0.419041, -0.799323, 0.430683,
		34.873100, 42.674065, 45.779446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722225, 43.550484, 45.866669>,  <35.166431, 43.233589, 45.477970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722225, 43.550484, 45.866669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739090, 43.187435, 46.033737>,  <34.749207, 42.969608, 46.133980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739090, 43.187435, 46.033737>,  <34.722225, 43.550484, 45.866669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739090, 43.187435, 46.033737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041796, 0.416077, 0.908368,
		-0.998236, -0.055751, -0.020394,
		0.042157, -0.907619, 0.417673,
		34.751736, 42.915150, 46.159039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090706, 43.465092, 46.256413>,  <34.722225, 43.550484, 45.866669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090706, 43.465092, 46.256413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372532, 43.233978, 46.421215>,  <34.541630, 43.095310, 46.520096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.372532, 43.233978, 46.421215>,  <34.090706, 43.465092, 46.256413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372532, 43.233978, 46.421215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227126, 0.366440, 0.902295,
		-0.672307, -0.729305, 0.126952,
		0.704569, -0.577785, 0.412004,
		34.583904, 43.060642, 46.544815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780529, 43.192867, 46.877399>,  <34.090706, 43.465092, 46.256413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780529, 43.192867, 46.877399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158794, 43.080441, 46.942787>,  <34.385754, 43.012985, 46.982021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158794, 43.080441, 46.942787>,  <33.780529, 43.192867, 46.877399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158794, 43.080441, 46.942787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151785, 0.063003, 0.986404,
		-0.287543, -0.957618, 0.016918,
		0.945664, -0.281066, 0.163468,
		34.442493, 42.996120, 46.991829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772987, 42.699974, 47.485332>,  <33.780529, 43.192867, 46.877399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772987, 42.699974, 47.485332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159538, 42.802738, 47.489601>,  <34.391468, 42.864395, 47.492161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159538, 42.802738, 47.489601>,  <33.772987, 42.699974, 47.485332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159538, 42.802738, 47.489601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019310, 0.031125, 0.999329,
		0.256403, -0.965935, 0.035040,
		0.966377, 0.256908, 0.010672,
		34.449451, 42.879810, 47.492802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138779, 42.302074, 47.970310>,  <33.772987, 42.699974, 47.485332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138779, 42.302074, 47.970310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380341, 42.619560, 47.941128>,  <34.525276, 42.810051, 47.923618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380341, 42.619560, 47.941128>,  <34.138779, 42.302074, 47.970310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380341, 42.619560, 47.941128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000483, 0.091895, 0.995768,
		0.797059, -0.601311, 0.055879,
		0.603901, 0.793713, -0.072955,
		34.561512, 42.857674, 47.919243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313869, 41.672379, 48.445625>,  <34.138779, 42.302074, 47.970310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313869, 41.672379, 48.445625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011162, 41.473080, 48.614880>,  <33.829536, 41.353500, 48.716431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.011162, 41.473080, 48.614880>,  <34.313869, 41.672379, 48.445625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011162, 41.473080, 48.614880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165099, -0.480636, -0.861238,
		0.632487, -0.721619, 0.281471,
		-0.756771, -0.498251, 0.423135,
		33.784130, 41.323605, 48.741821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385674, 40.978828, 48.245930>,  <34.313869, 41.672379, 48.445625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385674, 40.978828, 48.245930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008045, 40.983688, 48.377739>,  <33.781467, 40.986607, 48.456825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.008045, 40.983688, 48.377739>,  <34.385674, 40.978828, 48.245930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008045, 40.983688, 48.377739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269918, -0.602521, -0.751074,
		0.189418, -0.798010, 0.572102,
		-0.944068, 0.012154, 0.329526,
		33.724823, 40.987335, 48.476597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097111, 40.262062, 48.212646>,  <34.385674, 40.978828, 48.245930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097111, 40.262062, 48.212646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777210, 40.502159, 48.208374>,  <33.585270, 40.646217, 48.205811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777210, 40.502159, 48.208374>,  <34.097111, 40.262062, 48.212646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777210, 40.502159, 48.208374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400280, -0.546422, -0.735662,
		-0.447408, -0.584071, 0.677265,
		-0.799751, 0.600237, -0.010682,
		33.537285, 40.682232, 48.205170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539185, 39.826050, 48.308895>,  <34.097111, 40.262062, 48.212646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539185, 39.826050, 48.308895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372498, 40.151367, 48.146465>,  <33.272484, 40.346558, 48.049007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372498, 40.151367, 48.146465>,  <33.539185, 39.826050, 48.308895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372498, 40.151367, 48.146465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489168, -0.577144, -0.653927,
		-0.766199, -0.073864, 0.638344,
		-0.416718, 0.813295, -0.406075,
		33.247482, 40.395355, 48.024643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797173, 39.810745, 48.314274>,  <33.539185, 39.826050, 48.308895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797173, 39.810745, 48.314274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918209, 40.038776, 48.008739>,  <32.990829, 40.175594, 47.825420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918209, 40.038776, 48.008739>,  <32.797173, 39.810745, 48.314274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918209, 40.038776, 48.008739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467251, -0.609773, -0.640198,
		-0.830732, 0.550620, 0.081861,
		0.302589, 0.570082, -0.763836,
		33.008987, 40.209801, 47.779587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224094, 39.881115, 47.887211>,  <32.797173, 39.810745, 48.314274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224094, 39.881115, 47.887211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540462, 39.976055, 47.661610>,  <32.730286, 40.033020, 47.526249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.540462, 39.976055, 47.661610>,  <32.224094, 39.881115, 47.887211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540462, 39.976055, 47.661610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414121, -0.470935, -0.778925,
		-0.450491, 0.849637, -0.274180,
		0.790925, 0.237355, -0.564004,
		32.777740, 40.047260, 47.492409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950224, 40.040596, 47.225498>,  <32.224094, 39.881115, 47.887211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950224, 40.040596, 47.225498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340836, 39.969936, 47.176205>,  <32.575203, 39.927540, 47.146629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.340836, 39.969936, 47.176205>,  <31.950224, 40.040596, 47.225498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340836, 39.969936, 47.176205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202105, -0.553705, -0.807814,
		0.074468, 0.813760, -0.576411,
		0.976529, -0.176652, -0.123232,
		32.633793, 39.916943, 47.139236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.429760, 41.197090, 50.175507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527069, 41.378872, 50.518269>,  <37.585453, 41.487942, 50.723927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527069, 41.378872, 50.518269>,  <37.429760, 41.197090, 50.175507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527069, 41.378872, 50.518269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096170, -0.890395, 0.444912,
		0.965179, -0.025825, -0.260310,
		0.243269, 0.454454, 0.856908,
		37.600048, 41.515209, 50.775341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034096, 41.711334, 50.116180>,  <37.429760, 41.197090, 50.175507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034096, 41.711334, 50.116180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322891, 41.905708, 49.919159>,  <37.496166, 42.022331, 49.800945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.322891, 41.905708, 49.919159>,  <37.034096, 41.711334, 50.116180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322891, 41.905708, 49.919159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442752, -0.871511, -0.210808,
		-0.531703, -0.065878, -0.844365,
		0.721985, 0.485932, -0.492552,
		37.539486, 42.051487, 49.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133949, 41.380180, 49.502754>,  <37.034096, 41.711334, 50.116180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133949, 41.380180, 49.502754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.474754, 41.585522, 49.543831>,  <37.679237, 41.708725, 49.568478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.474754, 41.585522, 49.543831>,  <37.133949, 41.380180, 49.502754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474754, 41.585522, 49.543831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513188, -0.780188, -0.357692,
		-0.103507, 0.357456, -0.928176,
		0.852012, 0.513353, 0.102687,
		37.730358, 41.739529, 49.574638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378868, 41.666737, 48.874691>,  <37.133949, 41.380180, 49.502754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378868, 41.666737, 48.874691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697369, 41.616009, 49.111301>,  <37.888470, 41.585571, 49.253265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.697369, 41.616009, 49.111301>,  <37.378868, 41.666737, 48.874691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697369, 41.616009, 49.111301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289880, -0.778241, -0.557055,
		0.530991, 0.615027, -0.582915,
		0.796252, -0.126816, 0.591524,
		37.936245, 41.577965, 49.288757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774929, 41.511719, 48.386295>,  <37.378868, 41.666737, 48.874691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774929, 41.511719, 48.386295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.972984, 41.410473, 48.718746>,  <38.091816, 41.349724, 48.918217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.972984, 41.410473, 48.718746>,  <37.774929, 41.511719, 48.386295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972984, 41.410473, 48.718746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324888, -0.833277, -0.447321,
		0.805782, 0.491509, -0.330354,
		0.495139, -0.253115, 0.831126,
		38.121525, 41.334538, 48.968082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485252, 41.458210, 48.244396>,  <37.774929, 41.511719, 48.386295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485252, 41.458210, 48.244396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.402023, 41.236320, 48.566635>,  <38.352085, 41.103188, 48.759979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.402023, 41.236320, 48.566635>,  <38.485252, 41.458210, 48.244396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402023, 41.236320, 48.566635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523955, -0.758698, -0.387102,
		0.825939, 0.341549, 0.448518,
		-0.208075, -0.554726, 0.805595,
		38.339600, 41.069904, 48.808315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004379, 41.102173, 48.242931>,  <38.485252, 41.458210, 48.244396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004379, 41.102173, 48.242931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.798325, 40.870872, 48.495995>,  <38.674690, 40.732090, 48.647831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.798325, 40.870872, 48.495995>,  <39.004379, 41.102173, 48.242931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798325, 40.870872, 48.495995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549547, -0.789275, -0.273939,
		0.657749, 0.206560, 0.724361,
		-0.515136, -0.578254, 0.632659,
		38.643784, 40.697395, 48.685791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489159, 40.625526, 48.568558>,  <39.004379, 41.102173, 48.242931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489159, 40.625526, 48.568558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.121811, 40.472713, 48.609825>,  <38.901402, 40.381023, 48.634586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.121811, 40.472713, 48.609825>,  <39.489159, 40.625526, 48.568558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121811, 40.472713, 48.609825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304519, -0.848767, -0.432276,
		0.252708, -0.365574, 0.895820,
		-0.918371, -0.382034, 0.103166,
		38.846298, 40.358105, 48.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607891, 39.944065, 48.748791>,  <39.489159, 40.625526, 48.568558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607891, 39.944065, 48.748791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231693, 39.946857, 48.612896>,  <39.005974, 39.948532, 48.531361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231693, 39.946857, 48.612896>,  <39.607891, 39.944065, 48.748791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231693, 39.946857, 48.612896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222784, -0.742260, -0.631995,
		-0.256586, -0.670076, 0.696536,
		-0.940495, 0.006984, -0.339736,
		38.949543, 39.948952, 48.510975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422131, 39.379002, 48.970562>,  <39.607891, 39.944065, 48.748791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422131, 39.379002, 48.970562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.190636, 39.474483, 48.658642>,  <39.051739, 39.531773, 48.471489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.190636, 39.474483, 48.658642>,  <39.422131, 39.379002, 48.970562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190636, 39.474483, 48.658642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312369, -0.818393, -0.482347,
		-0.753320, -0.522736, 0.399069,
		-0.578735, 0.238705, -0.779798,
		39.017014, 39.546097, 48.424702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110622, 38.677311, 48.747471>,  <39.422131, 39.379002, 48.970562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110622, 38.677311, 48.747471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.083767, 38.942593, 48.449303>,  <39.067654, 39.101761, 48.270401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.083767, 38.942593, 48.449303>,  <39.110622, 38.677311, 48.747471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083767, 38.942593, 48.449303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056124, -0.743414, -0.666472,
		-0.996164, -0.086580, 0.012687,
		-0.067135, 0.663204, -0.745422,
		39.063625, 39.141552, 48.225677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720016, 38.376926, 48.354977>,  <39.110622, 38.677311, 48.747471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720016, 38.376926, 48.354977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.918446, 38.639263, 48.127369>,  <39.037502, 38.796665, 47.990807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.918446, 38.639263, 48.127369>,  <38.720016, 38.376926, 48.354977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918446, 38.639263, 48.127369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129957, -0.704038, -0.698170,
		-0.858500, 0.272395, -0.434485,
		0.496072, 0.655844, -0.569017,
		39.067268, 38.836018, 47.956665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988777, 38.278332, 48.148201>,  <38.720016, 38.376926, 48.354977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988777, 38.278332, 48.148201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.641125, 38.113472, 48.038845>,  <37.432533, 38.014557, 47.973232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.641125, 38.113472, 48.038845>,  <37.988777, 38.278332, 48.148201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641125, 38.113472, 48.038845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435835, 0.376951, 0.817286,
		-0.233787, 0.829483, -0.507248,
		-0.869133, -0.412147, -0.273391,
		37.380386, 37.989826, 47.956829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606606, 38.754917, 48.569454>,  <37.988777, 38.278332, 48.148201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606606, 38.754917, 48.569454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.318382, 38.517521, 48.426033>,  <37.145447, 38.375084, 48.339981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.318382, 38.517521, 48.426033>,  <37.606606, 38.754917, 48.569454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318382, 38.517521, 48.426033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637794, 0.364411, 0.678545,
		-0.272045, 0.717620, -0.641103,
		-0.720563, -0.593486, -0.358557,
		37.102215, 38.339474, 48.318466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068451, 39.216400, 48.460217>,  <37.606606, 38.754917, 48.569454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068451, 39.216400, 48.460217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906406, 38.854572, 48.513344>,  <36.809181, 38.637474, 48.545219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906406, 38.854572, 48.513344>,  <37.068451, 39.216400, 48.460217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906406, 38.854572, 48.513344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618563, 0.378155, 0.688751,
		-0.673249, 0.196862, -0.712728,
		-0.405111, -0.904569, 0.132822,
		36.784874, 38.583202, 48.553192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314957, 39.278351, 48.410412>,  <37.068451, 39.216400, 48.460217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314957, 39.278351, 48.410412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.382778, 38.950718, 48.629631>,  <36.423473, 38.754139, 48.761162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.382778, 38.950718, 48.629631>,  <36.314957, 39.278351, 48.410412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382778, 38.950718, 48.629631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576484, 0.368601, 0.729246,
		-0.799322, -0.439590, -0.409688,
		0.169558, -0.819081, 0.548047,
		36.433647, 38.704994, 48.794044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662224, 39.015972, 48.650543>,  <36.314957, 39.278351, 48.410412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662224, 39.015972, 48.650543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943512, 38.887634, 48.904331>,  <36.112282, 38.810631, 49.056602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.943512, 38.887634, 48.904331>,  <35.662224, 39.015972, 48.650543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943512, 38.887634, 48.904331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583572, 0.249270, 0.772857,
		-0.406117, -0.913743, -0.011943,
		0.703216, -0.320840, 0.634468,
		36.154476, 38.791382, 49.094673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283092, 38.755947, 49.112152>,  <35.662224, 39.015972, 48.650543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283092, 38.755947, 49.112152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.642681, 38.798618, 49.282074>,  <35.858437, 38.824223, 49.384029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.642681, 38.798618, 49.282074>,  <35.283092, 38.755947, 49.112152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642681, 38.798618, 49.282074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428384, 0.416255, 0.802009,
		-0.091270, -0.902968, 0.419903,
		0.898975, 0.106681, 0.424809,
		35.912373, 38.830624, 49.409515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195045, 38.507103, 49.788788>,  <35.283092, 38.755947, 49.112152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195045, 38.507103, 49.788788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532398, 38.720264, 49.816288>,  <35.734810, 38.848160, 49.832790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.532398, 38.720264, 49.816288>,  <35.195045, 38.507103, 49.788788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532398, 38.720264, 49.816288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270172, 0.309973, 0.911550,
		0.464455, -0.787358, 0.405400,
		0.843379, 0.532902, 0.068754,
		35.785412, 38.880135, 49.836914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437458, 38.366634, 50.457088>,  <35.195045, 38.507103, 49.788788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437458, 38.366634, 50.457088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.613457, 38.712612, 50.360531>,  <35.719055, 38.920200, 50.302597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.613457, 38.712612, 50.360531>,  <35.437458, 38.366634, 50.457088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613457, 38.712612, 50.360531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395858, 0.428101, 0.812420,
		0.806040, -0.261905, 0.530759,
		0.439995, 0.864948, -0.241390,
		35.745457, 38.972095, 50.288113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834225, 38.569675, 50.998062>,  <35.437458, 38.366634, 50.457088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834225, 38.569675, 50.998062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.813068, 38.921753, 50.809399>,  <35.800377, 39.132999, 50.696201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.813068, 38.921753, 50.809399>,  <35.834225, 38.569675, 50.998062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813068, 38.921753, 50.809399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116046, 0.463702, 0.878358,
		0.991835, 0.101188, 0.077620,
		-0.052887, 0.880194, -0.471659,
		35.797203, 39.185810, 50.667900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262672, 38.942307, 51.361992>,  <35.834225, 38.569675, 50.998062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262672, 38.942307, 51.361992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023510, 39.214481, 51.192516>,  <35.880013, 39.377785, 51.090832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.023510, 39.214481, 51.192516>,  <36.262672, 38.942307, 51.361992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023510, 39.214481, 51.192516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105069, 0.457488, 0.882986,
		0.794651, 0.572459, -0.202042,
		-0.597905, 0.680437, -0.423691,
		35.844139, 39.418613, 51.065411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431732, 39.558945, 51.769424>,  <36.262672, 38.942307, 51.361992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431732, 39.558945, 51.769424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090015, 39.642757, 51.579151>,  <35.884983, 39.693043, 51.464989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090015, 39.642757, 51.579151>,  <36.431732, 39.558945, 51.769424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090015, 39.642757, 51.579151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285972, 0.574738, 0.766744,
		0.434048, 0.791059, -0.431077,
		-0.854296, 0.209528, -0.475685,
		35.833725, 39.705616, 51.436447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331894, 40.280777, 51.855076>,  <36.431732, 39.558945, 51.769424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331894, 40.280777, 51.855076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966393, 40.131023, 51.791965>,  <35.747093, 40.041172, 51.754101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966393, 40.131023, 51.791965>,  <36.331894, 40.280777, 51.855076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966393, 40.131023, 51.791965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321249, 0.428092, 0.844711,
		-0.248706, 0.822541, -0.511441,
		-0.913753, -0.374384, -0.157771,
		35.692268, 40.018707, 51.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919868, 40.898361, 51.803905>,  <36.331894, 40.280777, 51.855076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919868, 40.898361, 51.803905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693596, 40.582584, 51.899216>,  <35.557831, 40.393116, 51.956402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.693596, 40.582584, 51.899216>,  <35.919868, 40.898361, 51.803905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693596, 40.582584, 51.899216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275879, 0.453485, 0.847492,
		-0.777104, 0.413677, -0.474321,
		-0.565686, -0.789444, 0.238280,
		35.523891, 40.345753, 51.970699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323448, 41.149853, 52.045715>,  <35.919868, 40.898361, 51.803905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323448, 41.149853, 52.045715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322956, 40.773964, 52.182491>,  <35.322662, 40.548431, 52.264557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322956, 40.773964, 52.182491>,  <35.323448, 41.149853, 52.045715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322956, 40.773964, 52.182491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219757, 0.333831, 0.916659,
		-0.975554, -0.074014, -0.206922,
		-0.001231, -0.939723, 0.341936,
		35.322586, 40.492046, 52.285072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672806, 41.372425, 51.571930>,  <35.323448, 41.149853, 52.045715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672806, 41.372425, 51.571930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.475143, 41.717060, 51.525478>,  <34.356548, 41.923840, 51.497608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.475143, 41.717060, 51.525478>,  <34.672806, 41.372425, 51.571930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475143, 41.717060, 51.525478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467655, -0.376033, -0.799936,
		-0.732880, -0.340983, 0.588742,
		-0.494151, 0.861585, -0.116125,
		34.326897, 41.975536, 51.490643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978348, 41.210655, 51.414028>,  <34.672806, 41.372425, 51.571930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978348, 41.210655, 51.414028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096409, 41.563782, 51.267868>,  <34.167244, 41.775658, 51.180172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.096409, 41.563782, 51.267868>,  <33.978348, 41.210655, 51.414028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096409, 41.563782, 51.267868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317212, -0.270200, -0.909048,
		-0.901256, 0.384216, 0.200290,
		0.295153, 0.882819, -0.365397,
		34.184956, 41.828629, 51.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379337, 41.680923, 51.254162>,  <33.978348, 41.210655, 51.414028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379337, 41.680923, 51.254162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.664398, 41.833450, 51.018627>,  <33.835434, 41.924965, 50.877308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.664398, 41.833450, 51.018627>,  <33.379337, 41.680923, 51.254162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664398, 41.833450, 51.018627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574653, -0.164130, -0.801770,
		-0.402373, 0.909758, 0.102157,
		0.712650, 0.381316, -0.588837,
		33.878193, 41.947845, 50.841976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042007, 41.878746, 50.607903>,  <33.379337, 41.680923, 51.254162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042007, 41.878746, 50.607903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413223, 41.890541, 50.459377>,  <33.635952, 41.897617, 50.370262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413223, 41.890541, 50.459377>,  <33.042007, 41.878746, 50.607903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413223, 41.890541, 50.459377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323431, -0.430676, -0.842562,
		-0.184758, 0.902025, -0.390149,
		0.928039, 0.029483, -0.371314,
		33.691635, 41.899387, 50.347984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999912, 42.191257, 49.991798>,  <33.042007, 41.878746, 50.607903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999912, 42.191257, 49.991798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344818, 41.988968, 49.980938>,  <33.551762, 41.867592, 49.974422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.344818, 41.988968, 49.980938>,  <32.999912, 42.191257, 49.991798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344818, 41.988968, 49.980938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194565, -0.281289, -0.939692,
		0.467592, 0.815546, -0.340943,
		0.862266, -0.505728, -0.027148,
		33.603497, 41.837250, 49.972794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323368, 42.540947, 49.483578>,  <32.999912, 42.191257, 49.991798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323368, 42.540947, 49.483578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428535, 42.156425, 49.516506>,  <33.491634, 41.925713, 49.536263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.428535, 42.156425, 49.516506>,  <33.323368, 42.540947, 49.483578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428535, 42.156425, 49.516506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296774, -0.161762, -0.941147,
		0.918042, 0.223013, -0.327818,
		0.262916, -0.961300, 0.082320,
		33.507412, 41.868034, 49.541203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855293, 42.357212, 48.919258>,  <33.323368, 42.540947, 49.483578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855293, 42.357212, 48.919258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602150, 42.086586, 49.069862>,  <33.450264, 41.924210, 49.160225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.602150, 42.086586, 49.069862>,  <33.855293, 42.357212, 48.919258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602150, 42.086586, 49.069862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480859, -0.037690, -0.875987,
		0.606850, -0.735421, -0.301478,
		-0.632857, -0.676562, 0.376506,
		33.412292, 41.883617, 49.182816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136662, 42.977024, 48.754093>,  <33.855293, 42.357212, 48.919258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136662, 42.977024, 48.754093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274052, 43.272438, 48.522026>,  <34.356483, 43.449684, 48.382786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.274052, 43.272438, 48.522026>,  <34.136662, 42.977024, 48.754093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274052, 43.272438, 48.522026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370380, 0.461167, 0.806315,
		0.863045, -0.491829, -0.115140,
		0.343470, 0.738532, -0.580172,
		34.377094, 43.493996, 48.347973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712669, 43.241798, 49.105347>,  <34.136662, 42.977024, 48.754093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712669, 43.241798, 49.105347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706551, 43.520741, 48.818722>,  <34.702881, 43.688107, 48.646748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706551, 43.520741, 48.818722>,  <34.712669, 43.241798, 49.105347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706551, 43.520741, 48.818722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464015, 0.639758, 0.612698,
		0.885695, -0.323128, -0.333366,
		-0.015293, 0.697351, -0.716567,
		34.701962, 43.729946, 48.603752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481789, 43.520149, 48.929596>,  <34.712669, 43.241798, 49.105347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481789, 43.520149, 48.929596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195908, 43.779373, 48.824360>,  <35.024380, 43.934910, 48.761219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195908, 43.779373, 48.824360>,  <35.481789, 43.520149, 48.929596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195908, 43.779373, 48.824360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402359, 0.688628, 0.603240,
		0.572109, 0.325280, -0.752917,
		-0.714702, 0.648062, -0.263091,
		34.981499, 43.973793, 48.745434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761826, 44.173996, 48.800423>,  <35.481789, 43.520149, 48.929596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761826, 44.173996, 48.800423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379379, 44.265823, 48.873238>,  <35.149910, 44.320919, 48.916927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379379, 44.265823, 48.873238>,  <35.761826, 44.173996, 48.800423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379379, 44.265823, 48.873238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271742, 0.462581, 0.843905,
		0.109523, 0.856340, -0.504664,
		-0.956118, 0.229566, 0.182040,
		35.092545, 44.334694, 48.927849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820221, 44.865528, 48.954247>,  <35.761826, 44.173996, 48.800423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820221, 44.865528, 48.954247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474426, 44.742977, 49.113644>,  <35.266949, 44.669445, 49.209282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.474426, 44.742977, 49.113644>,  <35.820221, 44.865528, 48.954247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474426, 44.742977, 49.113644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263719, 0.398462, 0.878453,
		-0.427923, 0.864501, -0.263667,
		-0.864485, -0.306377, 0.398497,
		35.215080, 44.651066, 49.233192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700626, 45.313164, 49.398991>,  <35.820221, 44.865528, 48.954247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700626, 45.313164, 49.398991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.440495, 45.045277, 49.542404>,  <35.284416, 44.884544, 49.628452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.440495, 45.045277, 49.542404>,  <35.700626, 45.313164, 49.398991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440495, 45.045277, 49.542404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105040, 0.388160, 0.915587,
		-0.752354, 0.633094, -0.182085,
		-0.650331, -0.669719, 0.358533,
		35.245396, 44.844360, 49.649963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259109, 45.631329, 49.831516>,  <35.700626, 45.313164, 49.398991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259109, 45.631329, 49.831516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265316, 45.246300, 49.939743>,  <35.269039, 45.015282, 50.004677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.265316, 45.246300, 49.939743>,  <35.259109, 45.631329, 49.831516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265316, 45.246300, 49.939743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155910, 0.269616, 0.950263,
		-0.987650, 0.027442, 0.154258,
		0.015513, -0.962577, 0.270565,
		35.269970, 44.957527, 50.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810123, 45.490540, 50.416790>,  <35.259109, 45.631329, 49.831516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810123, 45.490540, 50.416790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.040173, 45.164001, 50.437996>,  <35.178200, 44.968079, 50.450718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.040173, 45.164001, 50.437996>,  <34.810123, 45.490540, 50.416790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040173, 45.164001, 50.437996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007177, 0.059764, 0.998187,
		-0.818038, -0.574457, 0.028512,
		0.575120, -0.816350, 0.053012,
		35.212708, 44.919098, 50.453899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603539, 45.237148, 51.037018>,  <34.810123, 45.490540, 50.416790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603539, 45.237148, 51.037018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932449, 45.022503, 50.961227>,  <35.129795, 44.893715, 50.915752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932449, 45.022503, 50.961227>,  <34.603539, 45.237148, 51.037018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932449, 45.022503, 50.961227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234443, 0.016040, 0.971997,
		-0.518548, -0.843675, 0.138995,
		0.822280, -0.536614, -0.189476,
		35.179134, 44.861519, 50.904385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.296856, 35.003521, 38.206654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632904, 35.219234, 38.229851>,  <35.834534, 35.348663, 38.243767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632904, 35.219234, 38.229851>,  <35.296856, 35.003521, 38.206654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632904, 35.219234, 38.229851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441076, 0.617052, 0.651689,
		0.315662, -0.573078, 0.756266,
		0.840125, 0.539284, 0.057992,
		35.884941, 35.381020, 38.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283939, 35.303288, 38.849876>,  <35.296856, 35.003521, 38.206654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283939, 35.303288, 38.849876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569855, 35.538071, 38.697792>,  <35.741405, 35.678940, 38.606541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569855, 35.538071, 38.697792>,  <35.283939, 35.303288, 38.849876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569855, 35.538071, 38.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321642, 0.758675, 0.566533,
		0.620982, -0.282663, 0.731084,
		0.714792, 0.586953, -0.380207,
		35.784290, 35.714157, 38.583729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595577, 35.639290, 39.420464>,  <35.283939, 35.303288, 38.849876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595577, 35.639290, 39.420464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677856, 35.852184, 39.091972>,  <35.727226, 35.979919, 38.894878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677856, 35.852184, 39.091972>,  <35.595577, 35.639290, 39.420464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677856, 35.852184, 39.091972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358731, 0.821767, 0.442730,
		0.910494, 0.203529, 0.359968,
		0.205702, 0.532235, -0.821227,
		35.739567, 36.011856, 38.845604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031754, 36.164886, 39.574188>,  <35.595577, 35.639290, 39.420464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031754, 36.164886, 39.574188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868839, 36.300110, 39.234818>,  <35.771091, 36.381245, 39.031193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868839, 36.300110, 39.234818>,  <36.031754, 36.164886, 39.574188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868839, 36.300110, 39.234818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329737, 0.811883, 0.481788,
		0.851701, 0.475982, -0.219193,
		-0.407281, 0.338063, -0.848431,
		35.746655, 36.401527, 38.980289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240524, 36.801376, 39.541107>,  <36.031754, 36.164886, 39.574188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240524, 36.801376, 39.541107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914833, 36.780941, 39.309788>,  <35.719418, 36.768681, 39.170998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914833, 36.780941, 39.309788>,  <36.240524, 36.801376, 39.541107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914833, 36.780941, 39.309788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289759, 0.898936, 0.328564,
		0.503069, 0.435092, -0.746738,
		-0.814224, -0.051084, -0.578298,
		35.670567, 36.765617, 39.136299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159920, 37.418114, 39.255726>,  <36.240524, 36.801376, 39.541107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159920, 37.418114, 39.255726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792477, 37.262157, 39.229977>,  <35.572010, 37.168583, 39.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792477, 37.262157, 39.229977>,  <36.159920, 37.418114, 39.255726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792477, 37.262157, 39.229977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375429, 0.810230, 0.450090,
		-0.123331, 0.437623, -0.890660,
		-0.918609, -0.389889, -0.064370,
		35.516895, 37.145191, 39.210667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714767, 37.971909, 39.173161>,  <36.159920, 37.418114, 39.255726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714767, 37.971909, 39.173161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500706, 37.675556, 39.335499>,  <35.372269, 37.497746, 39.432899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500706, 37.675556, 39.335499>,  <35.714767, 37.971909, 39.173161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500706, 37.675556, 39.335499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288336, 0.611775, 0.736610,
		-0.794023, 0.277181, -0.541016,
		-0.535154, -0.740880, 0.405842,
		35.340160, 37.453293, 39.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335659, 38.386917, 39.573158>,  <35.714767, 37.971909, 39.173161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335659, 38.386917, 39.573158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156178, 38.043655, 39.672943>,  <35.048489, 37.837700, 39.732815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156178, 38.043655, 39.672943>,  <35.335659, 38.386917, 39.573158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156178, 38.043655, 39.672943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418507, 0.448419, 0.789793,
		-0.789629, 0.249983, -0.560352,
		-0.448707, -0.858154, 0.249465,
		35.021564, 37.786209, 39.747784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578339, 38.477581, 39.628166>,  <35.335659, 38.386917, 39.573158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578339, 38.477581, 39.628166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655819, 38.144783, 39.836113>,  <34.702305, 37.945103, 39.960880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655819, 38.144783, 39.836113>,  <34.578339, 38.477581, 39.628166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655819, 38.144783, 39.836113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405730, 0.414527, 0.814586,
		-0.893233, -0.368707, -0.257275,
		0.193696, -0.831999, 0.519865,
		34.713928, 37.895184, 39.992073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902382, 38.148640, 39.898506>,  <34.578339, 38.477581, 39.628166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902382, 38.148640, 39.898506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191593, 38.028519, 40.147358>,  <34.365120, 37.956448, 40.296669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191593, 38.028519, 40.147358>,  <33.902382, 38.148640, 39.898506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191593, 38.028519, 40.147358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435497, 0.500947, 0.747927,
		-0.536258, -0.811710, 0.231419,
		0.723028, -0.300299, 0.622134,
		34.408501, 37.938431, 40.334000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585949, 37.925949, 40.602516>,  <33.902382, 38.148640, 39.898506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585949, 37.925949, 40.602516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969440, 38.005066, 40.684219>,  <34.199535, 38.052536, 40.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969440, 38.005066, 40.684219>,  <33.585949, 37.925949, 40.602516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969440, 38.005066, 40.684219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284323, 0.661504, 0.693955,
		0.002144, -0.723387, 0.690439,
		0.958726, 0.197796, 0.204257,
		34.257057, 38.064404, 40.745495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571430, 37.940296, 41.352379>,  <33.585949, 37.925949, 40.602516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571430, 37.940296, 41.352379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890293, 38.138233, 41.214008>,  <34.081612, 38.256996, 41.130985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890293, 38.138233, 41.214008>,  <33.571430, 37.940296, 41.352379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890293, 38.138233, 41.214008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263959, 0.800930, 0.537435,
		0.543009, -0.337112, 0.769088,
		0.797162, 0.494840, -0.345928,
		34.129440, 38.286686, 41.110229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798771, 37.351719, 41.855972>,  <33.571430, 37.940296, 41.352379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798771, 37.351719, 41.855972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431892, 37.219131, 41.944416>,  <33.211765, 37.139580, 41.997482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431892, 37.219131, 41.944416>,  <33.798771, 37.351719, 41.855972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431892, 37.219131, 41.944416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072854, -0.406057, -0.910939,
		0.391727, -0.851615, 0.348284,
		-0.917193, -0.331465, 0.221108,
		33.156734, 37.119694, 42.010750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749966, 36.664516, 41.603649>,  <33.798771, 37.351719, 41.855972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749966, 36.664516, 41.603649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378536, 36.811192, 41.626610>,  <33.155678, 36.899197, 41.640385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378536, 36.811192, 41.626610>,  <33.749966, 36.664516, 41.603649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378536, 36.811192, 41.626610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207022, -0.383343, -0.900106,
		-0.308053, -0.847696, 0.431874,
		-0.928571, 0.366687, 0.057402,
		33.099964, 36.921200, 41.643829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438667, 36.169109, 41.416164>,  <33.749966, 36.664516, 41.603649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438667, 36.169109, 41.416164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182999, 36.474125, 41.376163>,  <33.029598, 36.657135, 41.352165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182999, 36.474125, 41.376163>,  <33.438667, 36.169109, 41.416164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182999, 36.474125, 41.376163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327036, -0.387174, -0.862058,
		-0.696068, -0.518297, 0.496847,
		-0.639169, 0.762538, -0.099998,
		32.991249, 36.702885, 41.346165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698780, 35.815987, 41.427597>,  <33.438667, 36.169109, 41.416164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698780, 35.815987, 41.427597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665573, 36.172573, 41.249432>,  <32.645649, 36.386524, 41.142532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665573, 36.172573, 41.249432>,  <32.698780, 35.815987, 41.427597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665573, 36.172573, 41.249432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445298, -0.433039, -0.783701,
		-0.891525, 0.133278, 0.432920,
		-0.083021, 0.891467, -0.445414,
		32.640667, 36.440014, 41.115807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982658, 35.980453, 41.217617>,  <32.698780, 35.815987, 41.427597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982658, 35.980453, 41.217617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230961, 36.185879, 40.980663>,  <32.379944, 36.309132, 40.838493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230961, 36.185879, 40.980663>,  <31.982658, 35.980453, 41.217617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230961, 36.185879, 40.980663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524686, -0.289305, -0.800630,
		-0.582550, 0.807812, 0.089869,
		0.620758, 0.513559, -0.592382,
		32.417187, 36.339947, 40.802948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595886, 36.046547, 40.683964>,  <31.982658, 35.980453, 41.217617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595886, 36.046547, 40.683964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944063, 36.169395, 40.530079>,  <32.152969, 36.243107, 40.437748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944063, 36.169395, 40.530079>,  <31.595886, 36.046547, 40.683964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944063, 36.169395, 40.530079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226154, -0.444656, -0.866681,
		-0.437242, 0.841401, -0.317591,
		0.870445, 0.307125, -0.384709,
		32.205196, 36.261532, 40.414665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447504, 36.334663, 40.018131>,  <31.595886, 36.046547, 40.683964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447504, 36.334663, 40.018131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844294, 36.286400, 40.002983>,  <32.082367, 36.257442, 39.993896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844294, 36.286400, 40.002983>,  <31.447504, 36.334663, 40.018131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844294, 36.286400, 40.002983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081312, -0.379221, -0.921726,
		0.096851, 0.917406, -0.385987,
		0.991972, -0.120656, -0.037868,
		32.141884, 36.250202, 39.991623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722612, 36.772243, 39.432800>,  <31.447504, 36.334663, 40.018131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722612, 36.772243, 39.432800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959553, 36.457611, 39.502560>,  <32.101715, 36.268833, 39.544415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959553, 36.457611, 39.502560>,  <31.722612, 36.772243, 39.432800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959553, 36.457611, 39.502560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196232, -0.350790, -0.915664,
		0.781418, 0.508172, -0.362143,
		0.592350, -0.786580, 0.174394,
		32.137257, 36.221638, 39.554878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039886, 36.709274, 38.865925>,  <31.722612, 36.772243, 39.432800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039886, 36.709274, 38.865925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140480, 36.358860, 39.030518>,  <32.200836, 36.148609, 39.129272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140480, 36.358860, 39.030518>,  <32.039886, 36.709274, 38.865925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140480, 36.358860, 39.030518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163044, -0.457410, -0.874181,
		0.954031, 0.152751, -0.257862,
		0.251481, -0.876039, 0.411478,
		32.215923, 36.096050, 39.153961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374718, 36.416195, 38.346855>,  <32.039886, 36.709274, 38.865925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374718, 36.416195, 38.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271381, 36.108086, 38.580074>,  <32.209381, 35.923222, 38.720005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271381, 36.108086, 38.580074>,  <32.374718, 36.416195, 38.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271381, 36.108086, 38.580074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150649, -0.564029, -0.811897,
		0.954235, -0.297582, 0.029672,
		-0.258342, -0.770270, 0.583047,
		32.193878, 35.877007, 38.754990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860222, 35.879505, 38.232285>,  <32.374718, 36.416195, 38.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860222, 35.879505, 38.232285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534367, 35.694168, 38.371819>,  <32.338856, 35.582966, 38.455540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534367, 35.694168, 38.371819>,  <32.860222, 35.879505, 38.232285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534367, 35.694168, 38.371819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061320, -0.529290, -0.846222,
		0.576724, -0.710752, 0.402766,
		-0.814635, -0.463339, 0.348837,
		32.289978, 35.555168, 38.476471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041870, 35.200089, 38.148487>,  <32.860222, 35.879505, 38.232285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041870, 35.200089, 38.148487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643631, 35.198933, 38.185955>,  <32.404686, 35.198238, 38.208435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643631, 35.198933, 38.185955>,  <33.041870, 35.200089, 38.148487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643631, 35.198933, 38.185955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066617, -0.681187, -0.729072,
		0.065919, -0.732103, 0.677997,
		-0.995599, -0.002894, 0.093674,
		32.344952, 35.198063, 38.214058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827927, 34.431431, 38.195332>,  <33.041870, 35.200089, 38.148487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827927, 34.431431, 38.195332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511429, 34.655960, 38.098297>,  <32.321529, 34.790676, 38.040077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511429, 34.655960, 38.098297>,  <32.827927, 34.431431, 38.195332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511429, 34.655960, 38.098297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205040, -0.617279, -0.759556,
		-0.576096, -0.551257, 0.603513,
		-0.791247, 0.561322, -0.242582,
		32.274055, 34.824356, 38.025520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565041, 34.331699, 38.402496>,  <32.827927, 34.431431, 38.195332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565041, 34.331699, 38.402496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748371, 34.303398, 38.048111>,  <33.858372, 34.286419, 37.835480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748371, 34.303398, 38.048111>,  <33.565041, 34.331699, 38.402496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748371, 34.303398, 38.048111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682291, -0.610802, 0.401745,
		-0.569571, -0.788616, -0.231676,
		0.458331, -0.070752, -0.885961,
		33.885872, 34.282173, 37.782322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159077, 33.999039, 38.518177>,  <33.565041, 34.331699, 38.402496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159077, 33.999039, 38.518177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223324, 34.029549, 38.124550>,  <34.261871, 34.047855, 37.888374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223324, 34.029549, 38.124550>,  <34.159077, 33.999039, 38.518177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223324, 34.029549, 38.124550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876433, -0.469563, 0.106656,
		-0.453946, -0.879598, -0.142269,
		0.160619, 0.076273, -0.984065,
		34.271511, 34.052429, 37.829330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735924, 33.489212, 38.486145>,  <34.159077, 33.999039, 38.518177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735924, 33.489212, 38.486145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886372, 33.189026, 38.703522>,  <34.976643, 33.008915, 38.833946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886372, 33.189026, 38.703522>,  <34.735924, 33.489212, 38.486145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886372, 33.189026, 38.703522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015266, 0.581411, 0.813467,
		-0.926444, -0.314260, 0.207226,
		0.376123, -0.750468, 0.543442,
		34.999210, 32.963886, 38.866554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403301, 33.493942, 39.169655>,  <34.735924, 33.489212, 38.486145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403301, 33.493942, 39.169655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746487, 33.290394, 39.197784>,  <34.952396, 33.168262, 39.214661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746487, 33.290394, 39.197784>,  <34.403301, 33.493942, 39.169655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746487, 33.290394, 39.197784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187302, 0.437346, 0.879572,
		-0.478347, -0.741469, 0.470540,
		0.857964, -0.508874, 0.070325,
		35.003876, 33.137733, 39.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412037, 33.070068, 39.812374>,  <34.403301, 33.493942, 39.169655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412037, 33.070068, 39.812374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765911, 33.196877, 39.675648>,  <34.978233, 33.272961, 39.593613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765911, 33.196877, 39.675648>,  <34.412037, 33.070068, 39.812374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765911, 33.196877, 39.675648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112474, 0.566404, 0.816417,
		0.452421, -0.760715, 0.465432,
		0.884684, 0.317015, -0.341814,
		35.031315, 33.291981, 39.573105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838383, 33.091812, 40.398590>,  <34.412037, 33.070068, 39.812374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838383, 33.091812, 40.398590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039364, 33.321320, 40.139877>,  <35.159954, 33.459026, 39.984650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039364, 33.321320, 40.139877>,  <34.838383, 33.091812, 40.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039364, 33.321320, 40.139877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261022, 0.612496, 0.746134,
		0.824262, -0.543721, 0.157983,
		0.502453, 0.573774, -0.646780,
		35.190102, 33.493450, 39.945843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412971, 33.199581, 40.771439>,  <34.838383, 33.091812, 40.398590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412971, 33.199581, 40.771439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417015, 33.500267, 40.507675>,  <35.419441, 33.680679, 40.349415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417015, 33.500267, 40.507675>,  <35.412971, 33.199581, 40.771439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417015, 33.500267, 40.507675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339630, 0.617661, 0.709328,
		0.940505, -0.231127, -0.249060,
		0.010111, 0.751715, -0.659411,
		35.420048, 33.725780, 40.309853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120178, 33.457134, 40.734684>,  <35.412971, 33.199581, 40.771439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120178, 33.457134, 40.734684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893124, 33.765415, 40.618881>,  <35.756893, 33.950382, 40.549400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893124, 33.765415, 40.618881>,  <36.120178, 33.457134, 40.734684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893124, 33.765415, 40.618881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419786, 0.573452, 0.703514,
		0.708218, 0.277806, -0.649039,
		-0.567633, 0.770699, -0.289510,
		35.722836, 33.996624, 40.532028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582642, 33.988091, 40.789017>,  <36.120178, 33.457134, 40.734684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582642, 33.988091, 40.789017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224468, 34.163288, 40.757114>,  <36.009563, 34.268406, 40.737972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224468, 34.163288, 40.757114>,  <36.582642, 33.988091, 40.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224468, 34.163288, 40.757114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280224, 0.693715, 0.663501,
		0.345939, 0.571770, -0.743911,
		-0.895433, 0.437993, -0.079760,
		35.955837, 34.294685, 40.733185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704647, 34.762245, 40.652718>,  <36.582642, 33.988091, 40.789017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704647, 34.762245, 40.652718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337688, 34.712929, 40.804077>,  <36.117516, 34.683338, 40.894894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337688, 34.712929, 40.804077>,  <36.704647, 34.762245, 40.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337688, 34.712929, 40.804077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203597, 0.671585, 0.712406,
		-0.341960, 0.730598, -0.591007,
		-0.917394, -0.123287, 0.378403,
		36.062469, 34.675941, 40.917599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412903, 35.396473, 40.754593>,  <36.704647, 34.762245, 40.652718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412903, 35.396473, 40.754593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183472, 35.155251, 40.976341>,  <36.045811, 35.010517, 41.109390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183472, 35.155251, 40.976341>,  <36.412903, 35.396473, 40.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183472, 35.155251, 40.976341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010951, 0.671058, 0.741324,
		-0.819075, 0.431281, -0.378303,
		-0.573582, -0.603057, 0.554370,
		36.011398, 34.974335, 41.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936127, 35.831917, 40.995499>,  <36.412903, 35.396473, 40.754593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936127, 35.831917, 40.995499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954540, 35.517429, 41.241989>,  <35.965588, 35.328735, 41.389885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954540, 35.517429, 41.241989>,  <35.936127, 35.831917, 40.995499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954540, 35.517429, 41.241989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153226, 0.615141, 0.773385,
		-0.987118, 0.058819, 0.148788,
		0.046036, -0.786220, 0.616229,
		35.968349, 35.281563, 41.426857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418350, 36.020519, 41.484104>,  <35.936127, 35.831917, 40.995499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418350, 36.020519, 41.484104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672718, 35.747742, 41.628635>,  <35.825336, 35.584076, 41.715355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672718, 35.747742, 41.628635>,  <35.418350, 36.020519, 41.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672718, 35.747742, 41.628635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063744, 0.513006, 0.856015,
		-0.769121, -0.521321, 0.369699,
		0.635917, -0.681945, 0.361332,
		35.863495, 35.543159, 41.737034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300030, 36.014957, 42.166786>,  <35.418350, 36.020519, 41.484104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300030, 36.014957, 42.166786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648533, 35.818794, 42.174877>,  <35.857635, 35.701096, 42.179733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648533, 35.818794, 42.174877>,  <35.300030, 36.014957, 42.166786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648533, 35.818794, 42.174877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218402, 0.424263, 0.878807,
		-0.439554, -0.761251, 0.476749,
		0.871259, -0.490406, 0.020227,
		35.909912, 35.671673, 42.180946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404819, 35.773285, 42.829445>,  <35.300030, 36.014957, 42.166786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404819, 35.773285, 42.829445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787491, 35.778011, 42.713078>,  <36.017094, 35.780846, 42.643257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787491, 35.778011, 42.713078>,  <35.404819, 35.773285, 42.829445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787491, 35.778011, 42.713078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259037, 0.421682, 0.868956,
		0.132941, -0.906667, 0.400352,
		0.956674, 0.011814, -0.290919,
		36.074493, 35.781555, 42.625801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824802, 35.586796, 43.447529>,  <35.404819, 35.773285, 42.829445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824802, 35.586796, 43.447529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067886, 35.773754, 43.190708>,  <36.213737, 35.885929, 43.036617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067886, 35.773754, 43.190708>,  <35.824802, 35.586796, 43.447529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067886, 35.773754, 43.190708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349931, 0.568153, 0.744815,
		0.712903, -0.677308, 0.181720,
		0.607714, 0.467392, -0.642050,
		36.250202, 35.913971, 42.998093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621948, 35.313576, 43.505989>,  <35.824802, 35.586796, 43.447529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621948, 35.313576, 43.505989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626591, 35.693924, 43.382236>,  <36.629375, 35.922131, 43.307983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626591, 35.693924, 43.382236>,  <36.621948, 35.313576, 43.505989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626591, 35.693924, 43.382236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355774, 0.285233, 0.889982,
		0.934500, -0.120401, -0.334982,
		0.011607, 0.950866, -0.309386,
		36.630074, 35.979183, 43.289421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195831, 35.604633, 43.745110>,  <36.621948, 35.313576, 43.505989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195831, 35.604633, 43.745110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008595, 35.948975, 43.665295>,  <36.896252, 36.155579, 43.617405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008595, 35.948975, 43.665295>,  <37.195831, 35.604633, 43.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008595, 35.948975, 43.665295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360275, 0.392099, 0.846440,
		0.806903, 0.324322, -0.493683,
		-0.468092, 0.860857, -0.199540,
		36.868168, 36.207233, 43.605434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682026, 36.111835, 43.893917>,  <37.195831, 35.604633, 43.745110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682026, 36.111835, 43.893917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329895, 36.301170, 43.906376>,  <37.118614, 36.414772, 43.913853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329895, 36.301170, 43.906376>,  <37.682026, 36.111835, 43.893917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329895, 36.301170, 43.906376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284852, 0.474989, 0.832613,
		0.379310, 0.741848, -0.552979,
		-0.880331, 0.473336, 0.031149,
		37.065796, 36.443172, 43.915722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902340, 36.825714, 43.982716>,  <37.682026, 36.111835, 43.893917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902340, 36.825714, 43.982716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508778, 36.831738, 44.053940>,  <37.272640, 36.835350, 44.096676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508778, 36.831738, 44.053940>,  <37.902340, 36.825714, 43.982716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508778, 36.831738, 44.053940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145085, 0.649035, 0.746795,
		-0.104326, 0.760609, -0.640773,
		-0.983904, 0.015057, 0.178064,
		37.213608, 36.836254, 44.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646809, 37.536415, 44.058136>,  <37.902340, 36.825714, 43.982716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646809, 37.536415, 44.058136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389130, 37.312771, 44.266903>,  <37.234520, 37.178585, 44.392162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389130, 37.312771, 44.266903>,  <37.646809, 37.536415, 44.058136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389130, 37.312771, 44.266903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202150, 0.533650, 0.821190,
		-0.737659, 0.634518, -0.230754,
		-0.644201, -0.559111, 0.521919,
		37.195869, 37.145039, 44.423477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353268, 38.084862, 44.499893>,  <37.646809, 37.536415, 44.058136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353268, 38.084862, 44.499893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244331, 37.726994, 44.641537>,  <37.178970, 37.512272, 44.726524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244331, 37.726994, 44.641537>,  <37.353268, 38.084862, 44.499893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244331, 37.726994, 44.641537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082051, 0.345087, 0.934977,
		-0.958695, 0.283690, -0.020573,
		-0.272343, -0.894670, 0.354111,
		37.162628, 37.458591, 44.747768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722244, 38.121235, 44.972496>,  <37.353268, 38.084862, 44.499893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722244, 38.121235, 44.972496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932014, 37.796700, 45.075809>,  <37.057877, 37.601978, 45.137798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932014, 37.796700, 45.075809>,  <36.722244, 38.121235, 44.972496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932014, 37.796700, 45.075809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128419, 0.375236, 0.917990,
		-0.841719, -0.448245, 0.300974,
		0.524421, -0.811341, 0.258280,
		37.089340, 37.553299, 45.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351330, 37.832027, 45.496464>,  <36.722244, 38.121235, 44.972496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351330, 37.832027, 45.496464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724174, 37.696156, 45.546715>,  <36.947880, 37.614632, 45.576866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724174, 37.696156, 45.546715>,  <36.351330, 37.832027, 45.496464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724174, 37.696156, 45.546715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034515, 0.261972, 0.964458,
		-0.360520, -0.903319, 0.232463,
		0.932113, -0.339683, 0.125624,
		37.003807, 37.594250, 45.584400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361179, 37.426220, 46.142670>,  <36.351330, 37.832027, 45.496464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361179, 37.426220, 46.142670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 37.466587, 46.096233>,  <36.993565, 37.490807, 46.068371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756420, 37.466587, 46.096233>,  <36.361179, 37.426220, 46.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756420, 37.466587, 46.096233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098247, 0.166645, 0.981110,
		0.118351, -0.980840, 0.154747,
		0.988100, 0.100912, -0.116087,
		37.052849, 37.496861, 46.061409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600037, 36.980881, 46.577927>,  <36.361179, 37.426220, 46.142670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600037, 36.980881, 46.577927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915222, 37.220028, 46.519054>,  <37.104336, 37.363518, 46.483730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915222, 37.220028, 46.519054>,  <36.600037, 36.980881, 46.577927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915222, 37.220028, 46.519054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106527, 0.103051, 0.988955,
		0.606432, -0.794942, 0.017511,
		0.787967, 0.597869, -0.147177,
		37.151611, 37.399387, 46.474903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085159, 36.708412, 47.034378>,  <36.600037, 36.980881, 46.577927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085159, 36.708412, 47.034378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174683, 37.088795, 46.948967>,  <37.228397, 37.317024, 46.897720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174683, 37.088795, 46.948967>,  <37.085159, 36.708412, 47.034378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174683, 37.088795, 46.948967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029819, 0.212300, 0.976750,
		0.974178, -0.224967, 0.019157,
		0.223804, 0.950957, -0.213526,
		37.241825, 37.374081, 46.884911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618530, 36.947941, 47.619190>,  <37.085159, 36.708412, 47.034378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618530, 36.947941, 47.619190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471462, 37.269588, 47.432339>,  <37.383221, 37.462578, 47.320229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471462, 37.269588, 47.432339>,  <37.618530, 36.947941, 47.619190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471462, 37.269588, 47.432339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045718, 0.486081, 0.872717,
		0.928831, 0.342230, -0.141956,
		-0.367672, 0.804117, -0.467133,
		37.361160, 37.510822, 47.292198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050785, 37.557510, 47.798901>,  <37.618530, 36.947941, 47.619190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050785, 37.557510, 47.798901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681068, 37.672935, 47.698971>,  <37.459236, 37.742191, 47.639011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681068, 37.672935, 47.698971>,  <38.050785, 37.557510, 47.798901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681068, 37.672935, 47.698971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122539, 0.395548, 0.910234,
		0.361475, 0.871938, -0.330243,
		-0.924294, 0.288559, -0.249827,
		37.403782, 37.759502, 47.624023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621265, 38.129517, 47.591255>,  <38.050785, 37.557510, 47.798901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621265, 38.129517, 47.591255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912659, 38.398262, 47.537724>,  <39.087494, 38.559509, 47.505604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912659, 38.398262, 47.537724>,  <38.621265, 38.129517, 47.591255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912659, 38.398262, 47.537724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395876, -0.572289, -0.718170,
		-0.559107, 0.470190, -0.682877,
		0.728479, 0.671868, -0.133834,
		39.131203, 38.599823, 47.497574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540054, 38.452148, 46.977684>,  <38.621265, 38.129517, 47.591255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540054, 38.452148, 46.977684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935265, 38.469452, 47.036911>,  <39.172390, 38.479836, 47.072449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935265, 38.469452, 47.036911>,  <38.540054, 38.452148, 46.977684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935265, 38.469452, 47.036911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144635, -0.593528, -0.791710,
		0.053637, 0.803650, -0.592680,
		0.988030, 0.043257, 0.148071,
		39.231674, 38.482430, 47.081333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819809, 38.571198, 46.359329>,  <38.540054, 38.452148, 46.977684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819809, 38.571198, 46.359329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147167, 38.448303, 46.553577>,  <39.343582, 38.374565, 46.670128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147167, 38.448303, 46.553577>,  <38.819809, 38.571198, 46.359329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147167, 38.448303, 46.553577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288258, -0.511577, -0.809443,
		0.497128, 0.802429, -0.330108,
		0.818396, -0.307240, 0.485625,
		39.392685, 38.356133, 46.699265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358624, 38.629471, 45.868656>,  <38.819809, 38.571198, 46.359329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358624, 38.629471, 45.868656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 38.358109, 46.141533>,  <39.533176, 38.195293, 46.305260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 38.358109, 46.141533>,  <39.358624, 38.629471, 45.868656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467720, 38.358109, 46.141533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097944, -0.685808, -0.721161,
		0.957089, 0.263505, -0.120602,
		0.272740, -0.678404, 0.682189,
		39.549541, 38.154587, 46.346191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155151, 38.483337, 45.745354>,  <39.358624, 38.629471, 45.868656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155151, 38.483337, 45.745354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972145, 38.171993, 45.917320>,  <39.862343, 37.985188, 46.020500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972145, 38.171993, 45.917320>,  <40.155151, 38.483337, 45.745354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972145, 38.171993, 45.917320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387615, -0.609709, -0.691383,
		0.800271, -0.149678, 0.580658,
		-0.457517, -0.778365, 0.429915,
		39.834888, 37.938484, 46.046295>
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
